<!DOCTYPE html>
<html style="background-color: #eee;">
<head>
<title>{{ pName }}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="/img/ledger.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.1.slim.min.js"></script>
<script src="/js/ledger.js"></script>

<style>
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
