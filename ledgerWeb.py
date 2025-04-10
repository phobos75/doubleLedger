from bottle import route, run, template, view, get, post, request, static_file, redirect, response
from bson import ObjectId
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
    return dict(pName = pName, coa = coaconfig, value = None)

@route('/coa/<value>')
@view('coa')
def coa_do(pName = 'CoA', value = '') -> dict :
    if value :
        pName = pName + '/' + value
    return dict(pName = pName, value = value)

@route('/coa/result')
@view('coa')
def coa_do(pName = 'CoA', value = 'result') -> dict :
    dict_coa = request.query.decode()
    db = pym.MongoClient('mongodb://localhost:27017/')['TallerContable']
    coaFound = db.coaConfig.find(dict_coa)
    return dict(pName = 'coa/result', coa = coaFound, value = value)

@route('/coa/modify/<value>')
@view('coa')
def coa_modify(pName = 'CoA', value = '') -> dict :
    db = pym.MongoClient('mongodb://localhost:27017/')['TallerContable']
    coaFound = db.coaConfig.find_one({"_id": ObjectId(value)})
    return dict(pName = 'coa/modify', coa = coaFound, value = 'modify')

@post('/coa/modisave')
@view('coa')
def coa_modisave(pName="CoA", value='') -> dict :
    db = pym.MongoClient('mongodb://localhost:27017/')['TallerContable']
    coaFound = db.coaConfig.find_one({"_id": ObjectId(request.forms.frm_id)})
    coaNew = {"$set":dict(request.forms)}
    if coaFound :
        print('record found !!!!!!', 'Happy')
        db.coaConfig.update_one( coaFound, coaNew )

    return dict(pName = 'coa/save', coa = None, value='modisave')

if __name__ == '__main__' :
    run(host='localhost', port=8080, debug=True, reloader=True)
    #run(host='localhost', port=8080)

################
#dp  ()_()     #
#    (°.°)     #
#    (>=<)     #
#  Follow The  #
# White_Rabbit #
