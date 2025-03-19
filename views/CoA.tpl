
% include('header.tpl', pName=pName)
<!-- close the header menu!!! -->
      </div>
    </div>
  </div>
<!-- close the header container!!! -->

<!-- </div>

<div class="container-fluid">
-->

%if not value :
  %include('frag_coa.tpl')

%elif "find" == value :
  %include('frag_coa_find.tpl')

%elif "modify" == value :
  %include('frag_coa_modify.tpl')

%elif "new" == value :
  %include('frag_coa_new.tpl')

%elif "result" == value :
  %include('frag_coa_result.tpl')

%else :
  %include('not_allowed.tpl')
  <!-- <div style="border:1px solid red; margin-top:10px">{{ value }}</div> -->

%end

% include('footer.tpl')