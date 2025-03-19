<!DOCTYPE html>
<html style="background-color: #eee;">
<head>
<title>{{ pName }}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- <script src="https://code.jquery.com/jquery-3.7.1.slim.min.js" integrity="sha256-kmHvs0B+OpCW5GVHUNjv9rOmY0IvSIRcf7zGUDTDQM8=" crossorigin="anonymous"></script> --> 
<script src="https://code.jquery.com/jquery-3.7.1.slim.min.js"></script>
<!--
<link rel="stylesheet" href="js/jquery-ui.min.css">
<link rel="stylesheet" href="js/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
-->
<script src="/js/ledger.js"></script>

<style>
.ttn {
  background-color: #a03;
  color: white;
  width: 6.5em;
  height: 2.4em;
  border-radius: .5em;
  border-color: black;
  border-width: .1em;
  box-shadow: 2px 3px #666;
  margin-left: .2em;
  margin-bottom: .1em;
}
.ttn:hover {
  background-color: #f00;
  font-weight: bold;
}
.ttn:active {
  background-color: #f00;
  color:#000;
  font-weight: bold;
  box-shadow: -2px -2px #666;
}
.ttn:disabled {
  background-color: #666;
  box-shadow: 2px 3px black;
  /*box-shadow: none;*/
}
.ttn:disabled:hover {
  font-weight: normal;
}
.ttn:disabled:active {
  color:white;
}
.dropdown-item {
  background-color: #def;
}

.dropdown-item:hover {
  background-color: #d00;
  font-weight: bold;
  color:white;
}

</style>


</head>
<body>

<div class="container">
<!-- HEADER -->
<div class="row mt-3 pt-1" style="background-color:#a03">
  <div class="col-1"><img src="/img/logo.png" class="img-fluid" /></div>
  <div class="col-10 pt-2 text-white text-center">
    <h1><b>Taller Contable</b></h1>
  </div>
</div>
<div class="row mt-2">
  <div class="col-2 border text-white text-center pt-2" style="background-color:#a03"><b>{{ pName.upper() }}</b></div>
  <div class="col-10 border pt-1 pb-1" style="background-color: #def;">
    <div class="btn-group">
      <button type="button" class="ttn" name="home" onclick="location.href='/home'">Home</button>
        <button type="button" class="ttn ms-2 dropdown-toggle" data-bs-toggle="dropdown" name="coa">CoA</button>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="/coa/find">Find</a>
          <a class="dropdown-item" href="/coa/new">New account</a>
          <a class="dropdown-item" href="/coa/modify">Modify</a>
          <a class="dropdown-item" href="/coa">View all</a>
        </div>
