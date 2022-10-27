$(document).ready(function () {
    $("tr #deleteUser").click (function()e{
    e.preventDefault();
    var = idpro=$(this).parent().find('#codigo').val();

    swal({
        title: '¡Precaucion!',
        text: "La informacion se borrara del sistema, ¿desea cuntinuar?",
        type: 'question',
        width: '35%',
        showCancelButton: true,
        confirmButtonColor: '#03A9F4',
        cancelButtonColor: '#F44336',
        confirmButtonText: '<i class="zmdi zmdi-cuentas"></i> Si, Borrar!',
        cancelButtonText: '<i class="zmdi zmdi-menos-círculo"></i> No, Cancelar!',
        closeOnConfirm: false,
        closeOnCancel: false,
    },
        function(isConfirm){
            if (isConfirm){
              eliminarUsuario(idpro);  
            }
                swal("Eliminado", "se eliminara del sistema", "succes");
            }else{
                swal("canceled", "ok", "error");
            }
          });
            
    });
        function eliminar(idPro){
            var url= "ProductoControlador?accion=eliminar&idPro=<%= pro.getIdPro()%>";
            console.log("Eliminado");
            $.ajax({
                type:'POST',
                url: url,
                async: true,
                secces: function(r){
            })
        }
      
              
});