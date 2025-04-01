
<div class="row mt-2">
  <div class="col-3 border"><b>id</b></div>
  <div class="col-1 border"><b>event</b></div>
  <div class="col-1 border"><b>cause</b></div>
  <div class="col-1 border"><b>codLedger</b></div>
  <div class="col-4 border"><b>account description</b></div>
  <div class="col-2 border"><b>IBAN</b></div>
</div>
%for x in coa :
<!-- <div class="row mt-1 coalist" onclick="location.href='/home'"> -->
<div class="row mt-3 coalist" onclick="coaList_switch_visibility(this)">
  <div class="col-3 border">{{ x['_id'] }}</div>
  <div class="col-1 border">{{ x['event'] }}</div>
  <div class="col-1 border">{{ x['cause'] }}</div>
  <div class="col-1 border">{{ x['codLedger'] }}</div>
  <div class="col-4">
  %for y in x['accounts'] :
    <div class="row border">{{ y['debit']['descr'] }}</div>
    %if 'credit' in y :
      <div class="row border">{{ y['credit']['descr'] }}</div>
    %end
  %end
  </div>
  <div class="col-2">
  %for y in x['accounts'] :
    <div class="row border">{{ y['debit']['iban'] }}</div>
    %if 'credit' in y :
      <div class="row border">{{ y['credit']['iban'] }}</div>
    %end
  %end
  </div>
</div>
<div hidden> <!-- details container -->
  <div class="row border mt-1 text-center">
    <div class="col-12"><b>routes detail</b></div>
  </div>
  <div class="row">
    <div class="col-1 border"><b>cclassmin</b></div>
    <div class="col-1 border"><b>etypepaym</b></div>
    <div class="col-1 border"><b>brev</b></div>
    <div class="col-1 border"><b>bcommission</b></div>
    <div class="col-1 border"><b>isres</b></div>
    <div class="col-1 border"><b>etyperes</b></div>
  </div>
  <div class="row">
    <div class="col-1 border">
      %if 'cclassmin' in x :
        {{ x['cclassmin'] }}
      %end
    </div>
    <div class="col-1 border">
      %if 'etypepaym' in x :
        {{ x['etypepaym'] }}
      %end
    </div>
    <div class="col-1 border">
      %if 'brev' in x :
        {{ x['brev'] }}
      %end
    </div>
    <div class="col-1 border">
      %if 'bcommission' in x :
        {{ x['bcommission'] }}
      %end
    </div>
    <div class="col-1 border">
      %if 'isres' in x :
        {{ x['isres'] }}
      %end
    </div>
    <div class="col-1 border">
      %if 'etyperes' in x :
        {{ x['etyperes'] }}
      %end
    </div>
    <div class="col-2"><button class="ttn" type="submit" onclick="$(location).attr('href', '/coa/modify/' + get_id(this))">modify</button></div>
  </div>
</div> <!-- details container -->
%end