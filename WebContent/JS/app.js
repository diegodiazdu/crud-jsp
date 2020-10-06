function validaBlancos(){

    if(($('#fruta_nombre').val().length == 0)||($('#fruta_procedencia').val().length == 0)||($('#fruta_temporada').val().length == 0)||($('#fruta_precio').val().length == 0)||($('#fruta_stock').val().length == 0)){
        
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'No puedes dejar campos en blanco !'
          })

    }else{
        
        var form = $('#miForm');

        form.submit();

    }

}

function Ingresar(){

    Swal.fire({
        icon: 'success',
        title: 'Correcto!',
        text: 'Fruta registrada correctamente'
      })
}

	 