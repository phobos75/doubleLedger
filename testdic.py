from itertools import count
import json


cst = '''[
    {"nome":"darno","cognome":"peru"},{"nome":"paolo","cognome":"appo"}]'''


cstr = '''
[
    {
        "event" : "0",
        "cause" : "0",
        "codLedger" : "s0",
        "cclassmin" : "AU10",
        "etypepaym" : "0",
        "accounts" : [
            {
                "debit" :{"descr" : "account debit for accounter","iban" : "998877"},
                "credit" :{"descr" : "account credit for accounter","iban" : "89556ss"}
            },
            {
                "debit" :{"descr" : "account debit for user","iban" : "589123"},
                "credit" :{"descr" : "account credit for user","iban" : "589124"}
            }
        ]
    },
    {
        "event" : "0",
        "cause" : "1",
        "codLedger" : "s0",
        "cclassmin" : "AU10",
        "etypepaym" : "1",
        "accounts" : [
            {
                "debit" :{"descr" : "account debit xyz","iban" : "990077"},
                "credit" :{"descr" : "account credit xyz","iban" : "TT556ss"}
            },
            {
                "debit" :{"descr" : "account debit ACME","iban" : "999123"},
                "credit" :{"descr" : "account credit ACME","iban" : "QQ589124"}
            }
        ]
    },
    {
        "event" : "0",
        "cause" : "2",
        "codLedger" : "s0",
        "cclassmin" : "AU10",
        "etypepaym" : "2",
        "accounts" : [
            {
                "debit" :{"descr" : "account debit QQ7","iban" : "QQ77-1234"},
                "credit" :{"descr" : "account credit QQ7","iban" : "QQ78-1235"}
            }
        ]
    },
    {
        "event" : "0",
        "cause" : "3",
        "codLedger" : "DHL",
        "accounts" : [
            {
                "debit" :{"descr" : "account debit dh7","iban" : "dh77-1234888"}
            }
        ]
    },
    {
        "event" : "1",
        "cause" : "0",
        "codLedger" : "s0",
        "cclassmin" : "AU10",
        "brev" : "0",
        "accounts" : [
            {
                "debit" : {"descr":"revertable account debit","iban":"123456789"},
                "credit": {"descr":"revertable account credit","iban":"987654321"}
            }
        ]
    },
    {
        "event" : "1",
        "cause" : "1",
        "codLedger" : "s0",
        "cclassmin" : "AU10",
        "brev" : "1",
        "accounts" : [
            {
                "debit" : {"descr":"reverted account debit","iban":"987654321"},
                "credit": {"descr":"reverted account credit","iban":"123456789"}
            }
        ]
    },
    {
        "event" : "2",
        "cause" : "0",
        "codLedger" : "s0",
        "cclassmin" : "AU10",
        "brev" : "0",
        "bcommission" : "0",
        "accounts" : [
            {
                "debit" : {"descr":"bing bong debit account","iban":"654789321"},
                "credit": {"descr":"bing bong credit account","iban":"123654789"}
            }
        ]
    },
    {
        "event" : "2",
        "cause" : "1",
        "codLedger" : "s0",
        "cclassmin" : "AU10",
        "brev" : "1",
        "bcommission" : "0",
        "accounts" : [
            {
                "debit" : {"descr":"ding dong debit account","iban":"6547pp321"},
                "credit": {"descr":"ding dong credit account","iban":"1234qq789"}
            }
        ]
    },
    {
        "event" : "2",
        "cause" : "1",
        "codLedger" : "s0",
        "cclassmin" : "AU10",
        "brev" : "0",
        "bcommission" : "1",
        "accounts" : [
            {
                "debit" : {"descr":"king kong debit account","iban":"9997pp321"},
                "credit": {"descr":"king kong credit account","iban":"8884qq789"}
            },
            {
                "debit" : {"descr":"ting tong debit account","iban":"7777pp321"},
                "credit": {"descr":"ting tong credit account","iban":"6664qq789"}
            }
        ]
    },
    {
        "event" : "2",
        "cause" : "1",
        "codLedger" : "s0",
        "cclassmin" : "AU10",
        "brev" : "1",
        "bcommission" : "1",
        "accounts" : [
            {
                "debit" : {"descr":"ping pong debit account","iban":"1117pp321"},
                "credit": {"descr":"ping pong credit account","iban":"2224qq789"}
            }
        ]
    },
    {
        "event"         : "3",
        "cause"         : "0",
        "isres"         : "1",
        "etyperes"      : "0",
        "accounts"      : [
            {
                "debit" : {"descr":"reserve c debit account","iban":"1117abc321"},
                "credit": {"descr":"reserve c credit account","iban":"222cde4qq789"}
            }
        ]
    },
    {
        "event"         : "3",
        "cause"         : "1",
        "isres"         : "1",
        "etyperes"      : "1",
        "accounts"      : [
            {
                "debit" : {"descr":"reserve cr debit account","iban":"ab554554"},
                "credit": {"descr":"reserve cr credit account","iban":"bc3363336"}
            }
        ]
    },
    {
        "event"         : "3",
        "cause"         : "2",
        "isres"         : "1",
        "etyperes"      : "2",
        "accounts"      : [
            {
                "debit" : {"descr":"reserve cq debit account","iban":"98aa455sd"},
                "credit": {"descr":"reserve cq credit account","iban":"693sd25sd"}
            }
        ]
    }
]
'''

coa = json.loads(cstr)
print()
for i in range( len(coa)) :
    for j in range( len(coa[i]['accounts'] )) :
        print( coa[i]['event'], coa[i]['cause'], coa[i]['accounts'][j]['debit']['descr'], coa[i]['accounts'][j]['debit']['iban'] )
        if 'credit' in coa[i]['accounts'][j] :
            print( coa[i]['event'], coa[i]['cause'], coa[i]['accounts'][j]['credit']['descr'], coa[i]['accounts'][j]['credit']['iban'] )

