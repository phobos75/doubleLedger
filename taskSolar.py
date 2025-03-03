import module.solar as so
import datetime as dd
import json as jj
import pymongo as pym

def main() -> None :
    db = pym.MongoClient('mongodb://localhost:27017/')['TallerContable']
    clt = db['cfgAccounts']

    f = open('./input/staginglit.csv', 'r')
    o = open('./output/staging.json', 'wt')
    out = open('./output/entry.json', 'wt')
    jconfig = open('./config.json', 'rt')

    cfg = jj.load( jconfig )
    jconfig.close()
    print( cfg['events'][0] )

    key     = so.Key()
    router  = so.Router()
    staging = so.Staging()

    head = f.readline().replace('\n', '').split(';')
    line = f.readline()

    output = []

    o.write("[")
    while line != "" :
        line = line.replace('\n', '').split(';')
        #evt = so.Event(int(line[0]))
        evt = line[0]
        router.data['event'] = line[0]
        for i in range(1, len( head )) :
            if head[i] in cfg['key'] :
                key.data[head[i]] = line[i]
            elif head[i] in cfg['events'][int(evt)]['routes'] :
                router.data[head[i]] = line[i]
            else :
                staging.data[head[i]] = line[i]
        solar = so.Solar(key=key, router=router, staging=staging)
        line = f.readline()
        #print(f" ----- { solar.key['idstaging'] } -----\n ", vars( solar ))
        print(f"find({ router.data })")
        o.write( jj.dumps( vars( solar )))
        res = clt.find( router.data )
        #res = clt.find({ 'event':'0', 'cclassmin' : 'AU10', 'etypepaym' : '0' })
        print( vars( res ))
        for act in res :
            print( f"idstaging -> { solar.key['idstaging'] }")
            #print( f"{ act['debit']['iban'] } - { act['credit']['iban'] }" )
            for acc in act['accounts'] :
                print( f"{ acc['debit']['iban'] } - { acc['credit']['iban'] }" )
                solar.accounts.append(acc)
        solar.rifle_routes()
        output.append(solar)

        if line != "" :
            key = so.Key()
            router = so.Router()
            staging = so.Staging()
            o.write(',\n')
    #endWhile

    out.write('[')
    out.write( jj.dumps( vars( output[0] )))
    for idx in range(1, len(output))  :
        out.write(',\n')
        out.write( jj.dumps( vars( output[idx] )))
    out.write(']')

    o.write("]")
    o.close()
    f.close()

if __name__ == "__main__" :
    main()


################
#dp  ()_()     #
#    (°.°)     #
#    (>=<)     #
#  Follow The  #
# White Rabbit #
