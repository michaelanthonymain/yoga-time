$(document).ready(function() {

  $(function(){
      $("button[name='doModify']").click(function(){
        // disable our modify button
        $(this).attr("disabled","disabled");
        // enable our save button
        $("button[name='save']").removeAttr("disabled");
        // cycle through each row having marked for modification
        $(":checkbox[name='modify']:checked").each(function(){
          $(this).closest("tr").find("td:gt(0)").each(function(){
            // convert each cell into an editable region
            $(this).wrapInner("<textarea name='"+$(this).attr("rel")+"'></textarea>");
          });
        });
      });
    });

});
