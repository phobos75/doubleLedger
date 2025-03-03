from bottle import route, run, template, view, get, post, request, static_file, redirect, response
import json as jj

@route('/js/<filename>')
def send_static(filename) :
    return static_file(filename, root='./js/')

@route('/img/<filename>')
def send_static(filename) :
    return static_file(filename, root='./img/')

@route('/')
@route('/home')
@view('home')
def home(pName ='Home') -> dict :
    return dict(pName = pName)

@route('/coa')
@view('coa')
def coa(pName = 'CoA') -> dict :
    file = open('./cfg/coaConfig.json', 'rt')
    coaconfig = jj.load(file)
    file.close()
    return dict(pName = pName, coa = coaconfig)

if __name__ == '__main__' :
    #run(host='localhost', port=8080)
    run(host='localhost', port=8080, debug=True, reloader=True)

################
#dp  ()_()     #
#    (°.°)     #
#    (>=<)     #
#  Follow The  #
# White_Rabbit #
