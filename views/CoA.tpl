
% include('header.tpl', pName='CoA')
<!-- close the header menu!!! -->
      </div>
    </div>
  </div>
<!-- close the header container!!! -->

<!-- </div>

<div class="container-fluid">
-->

%if not value :

<!-- CoA header -->
<div class="row mt-2" id="coaHeader">
  <div class="col-1 border"><b>event</b></div>
  <div class="col-1 border"><b>cause</b></div>
  <div class="col-1 border"><b>codLedger</b></div>
  <div class="col-7 border"><b>account descr</b></div>
  <div class="col-2 border"><b>iban</b></div>
</div>


<!-- body -->
%for i in range( len( coa )) :
%for j in range( len( coa[i]['accounts'] )) :
<div class="row" id="coa_{{i}}">
  <div class="col-1 border">{{ coa[i]['event'] }}</div>
  <div class="col-1 border">{{ coa[i]['cause'] }}</div>
  <div class="col-1 border">{{ coa[i]['codLedger'] }}</div>
  <div class="col-7">
    <div class="row border">{{ coa[i]['accounts'][j]['debit']['descr'] }}</div>
%if 'credit' in coa[i]['accounts'][j] :
    <div class="row border">{{ coa[i]['accounts'][j]['credit']['descr'] }}</div>
%end
  </div>
  <div class="col-2">
    <div class="row border">{{ coa[i]['accounts'][j]['debit']['iban'] }}</div>
%if 'credit' in coa[i]['accounts'][j] :
    <div class="row border">{{ coa[i]['accounts'][j]['credit']['iban'] }}</div>
%end
  </div>
</div>
%end
%end
%else :
<div style="border:1px solid red; margin-top:10px">{{ value }}</div>
%end



% include('footer.tpl')