$(document).ready(function(){

    $(document).ready(function(){

        // Get all cars on page load
        searchCarsApi();
       
    
        // Prevent form from being submitted the default way.
        $('#search-form').submit(function(event){
            event.preventDefault();
    
        });
    
    
        // Get car data on keyup event
        $('#search-form').keyup(function(){
            searchCarsApi();
        });
    
    
    
    
    
    
    }); // END DOCUMENT READY
    
    
    
    function searchCarsApi(){
    
        var formData = $('#search-form').serialize();
    
        $.post('/api/get-cars.php', formData, function(apiData){
    
            var cars = JSON.parse(apiData);
    
            $('#search-results').html('');
    
            $.each(cars, function(index, car){
    
                $('#search-results').append(`
    
                <tr>
                
                <td>${car.year}</td>
                <td>${car.make}</td>
                <td>${car.model}</td>
                <td>${car.nickname}</td>
                <td><i class="fas fa-minus-circle text-danger delete-car-btn" data-id="${car.id}"></i></td>
                
            
            
                </tr>
            `);
    
            });
    
        });
    
    }
    
    // D.R.Y. DON'T REPEAT YOURESELF 

   
    


    
    $('#search-results').on('click', '.delete-car-btn', function(){
        


        
        
        var $delete_btn = $(this);
    
        var car_id = $delete_btn.attr('data-id');
    
        if(confirm('Are you sure you want to delete this?')){
            $.post('/api/delete-car.php', {"car_id":car_id}, function(apiData){
    
                var successArr = JSON.parse(apiData);
        
                if( successArr.success == true ) {
                    $delete_btn.closest('tr').remove();
                }
                
            });
        }
    
    });
    

}); // END DOCUMENT READY
