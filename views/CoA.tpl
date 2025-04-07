
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
  %include('frag_coa_result.tpl')

%elif "find" == value :
  %include('frag_coa_find.tpl')

%elif "modify" == value :
  %include('frag_coa_modify.tpl')

%elif "new" == value :
  %include('frag_coa_new.tpl')

%elif "result" == value :
  %include('frag_coa_result.tpl')

%elif "modify" == value :
  %include('frag_coa_modify.tpl')

%else :
  %include('not_allowed.tpl')

%end

% include('footer.tpl')