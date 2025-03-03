class Key :
    def __init__(self) :
        self.data = {
            'idstaging' : 0,
            'fkflow'    : 0,
            'competence': 0,
            'daccount'  : '',
            'nsupplier' : 0,
            'estatus'   : '',
            'dins'      : '',
            'dlastupd'  : ''
        }

class Event :
    event = 0
    def __init__(self, event=0) -> None :
        self.event = event

class Router :
    def __init__(self) -> None :
        self.data = {}

class Staging :
    def __init__(self) -> None :
        self.data = {}

class Article :
    pass

class Solar :
    key      = None
    router   = None
    staging  = None
    accounts = None

    def __init__(self, key, router, staging) -> None:
        self.key        = key.data
        self.router     = router.data
        self.staging    = staging.data
        self.accounts   = []

    def rifle_routes(self) -> None :
        self.staging.update(self.router)
        del( self.router )
