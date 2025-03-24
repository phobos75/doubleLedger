<div class="row mt-1">
  <div class="col-3 border"><b>id</b></div>
  <div class="col-1 border"><b>event</b></div>
  <div class="col-1 border"><b>cause</b></div>
  <div class="col-1 border"><b>codLedger</b></div>
  <div class="col-4 border"><b>account description</b></div>
  <div class="col-2 border"><b>IBAN</b></div>
</div>
%for x in coa :
<div class="row mt-1 coalist" onclick="location.href='/home'">
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
%end