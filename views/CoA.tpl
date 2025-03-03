
% include('header.tpl', pName='CoA')

<div class="row mt-1">
%for item in list(coa[0].keys()) :
  <div class="col-1">{{ item }}</div>
%end
</div>

% include('footer.tpl')