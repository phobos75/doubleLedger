

<div class="row mt-3">
  <div class="col-1"><b>id:</b></div>
  <div class="col-2" id="id"><input class="form-control" id="form_id" type="text" value="{{ coa['_id'] }}" disabled /></div>
  <div class="col-1"><b>event:</b></div>
  <div class="col-2"><input class="form-control" id="form_event" type="text" value="{{ coa['event'] }}" /></div>
  <div class="col-1"><b>cause:</b></div>
  <div class="col-2"><input class="form-control" id="form-cause" type="text" value="{{ coa['cause'] }}" /></div>
  <div class="col-1"><b>codLedger:</b></div>
  <div class="col-2"><input class="form-control" id="form-codLedger" type="text" value="{{ coa['codLedger'] }}" /></div>
</div>

<div class="row mt-2">
  <div class="col-1"><b>cclassmin:</b></div>
  <div class="col-2"><input class="form-control" id="form-cclassmin" type="text" value="{{ coa['cclassmin'] }}" /></div>
  <div class="col-1"><b>etypepaym:</b></div>
  <div class="col-2"><input class="form-control" id="form-etypepaym" type="text" value="{{ coa['etypepaym'] }}" /></div>
  <div class="col-1"><b>brev:</b></div>
  %if "brev" in coa :
  <div class="col-2"><input class="form-control" id="form-brev" type="text" value="{{ coa['brev'] }}" /></div>
  %else :
  <div class="col-2"><input class="form-control" id="form-brev" type="text" value="" /></div>
  %end
  <div class="col-1"><b>bcommission:</b></div>
  %if "bcommission" in coa :
  <div class="col-2"><input class="form-control" id="form-bcommission" type="text" value="{{ coa['bcommission'] }}" /></div>
  %else :
  <div class="col-2"><input class="form-control" id="form-bcommission" type="text" value="" /></div>
  %end
</div>

<div class="row mt-2">
  <div class="col-1"><b>isres:</b></div>
  %if "isres" in coa :
  <div class="col-2"><input class="form-control" id="form-isres" type="text" value="{{ coa['isres'] }}" /></div>
  %else :
  <div class="col-2"><input class="form-control" id="form-isres" type="text" value="" /></div>
  %end
  <div class="col-1"><b>etyperes:</b></div>
  %if "etyperes" in coa :
  <div class="col-2"><input class="form-control" id="form-etyperes" type="text" value="{{ coa['etyperes'] }}" /></div>
  %else :
  <div class="col-2"><input class="form-control" id="form-etyperes" type="text" value="" /></div>
  %end
</div>

<div class="row mt-2">

</div>
