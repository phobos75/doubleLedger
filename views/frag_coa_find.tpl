

<form method="GET" action="/coa/result">
  <div class="row mt-2">
    <div class="col-2">
      <label class="form-label" for="event"><b>event</b></label>
    </div>
    <div class="col-2">
      <label class="form-label" for="cause"><b>cause</b></label>
    </div>
    <div class="col-2">
      <label class="form-label" for="codLedger"><b>cod Ledger</b></label>
    </div>
  </div>
  <div class="row mt-2">
    <div class="col-2 pt-1">
      <input class="form-control" id="event" name="event" type="text" onblur="checkNumeric()" />
    </div>
    <div class="col-2 pt-1">
      <input class="form-control" id="cause" name="cause" type="text" onblur="checkNumeric()" />
    </div>
    <div class="col-2 pt-1">
      <input class="form-control" id="codLedger" name="codLedger" type="text" />
    </div>
    <div class="col-2">
      <button class="ttn" id="findSubmit" type="submit" value="submit" disabled>find</button>
    </div>
  </div>
  <div class="row mt-2" id="alert" hidden>
    <div class="col-6">
      <div class="alert alert-warning"><strong>Warning!</strong> You should input a numerical <span id="sp"></span></div>
    </div>
  </div>
</form>