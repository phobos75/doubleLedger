from bottle import route, run, template, view, get, post, request, static_file, redirect, response
import json as jj
import pymongo as pym


@route('/js/<filename>')
def send_static(filename) :
    return static_file(filename, root='C:/tmp/projects/doubleLedger/js/')

@route('/img/<filename>')
def send_static(filename) :
    return static_file(filename, root='C:/tmp/projects/doubleLedger/img/')

@route('/')
@route('/home')
@view('home')
def home(pName ='Home') -> dict :
    return dict(pName = pName)

#@route('/coa')
#@view('coa')
#def coa(pName = 'CoA') -> dict :
#    file = open('./cfg/coaConfig.json', 'rt')
#    coaconfig = jj.load(file)
#    file.close()
#    return dict(pName = pName, coa = coaconfig, value = None)

@route('/coa')
@view('coa')
def coa(pName = 'CoA') -> dict :
    db = pym.MongoClient('mongodb://localhost:27017/')['TallerContable']
    coaconfig = db['coaConfig'].find()
    #for x in coaconfig : 
    #    for y in x["accounts"] :
    #        print()
    #        print( y['debit'] )
    #        if 'credit' in y :
    #            print( y['credit'] )
    return dict(pName = pName, coa = coaconfig, value = None)

@route('/coa/<value>')
@view('coa')
def coa_do(pName = 'CoA', value = '') -> dict :
    if value :
        pName = pName + '/' + value
    return dict(pName = pName, value = value)

if __name__ == '__main__' :
    run(host='localhost', port=8080, debug=True, reloader=True)
    #run(host='localhost', port=8080)

################
#dp  ()_()     #
#    (°.°)     #
#    (>=<)     #
#  Follow The  #
# White_Rabbit #
