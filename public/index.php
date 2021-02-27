<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <title></title>

        <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="/assets/css/fontawesome.min.css">
        <link rel="stylesheet" href="/assets/css/style.css">
    </head>
    <body>

        <!---Search Form--->
        <div class="container mt-5">
        
            <div class="row">
                <div class="col-sm-3">

                    <form id="search-form">
                    <label>Search:</label>
                    <input class="form-control" type="search" name="search" placeholder="Enter Car Name:">
                    
                    </form>
                
                </div><!---.col-sm-3--->
            </div>


            <!---Search Results Table--->

            <table class="table table-dark mt-5">
                <thead>
                    <tr>
                        
                        <th>Year</th>
                        <th>Make</th>
                        <th>Model</th>
                        <th>Nickname</th>
                        
                    </tr>

                    


                   
    

               
                </thead>
                

                <tbody id="search-results">
                  
                    <div class="search-results-loading-gif" role="status">
                    <span class="sr-only">Loading...</span>
                    </div>
                    
                </tbody>
            
            </table>


        </div><!---.container--->









        <script src="/assets/js/jquery.min.js"></script>
        <script src="/assets/js/popper.min.js"></script>
        <script src="/assets/js/bootstrap.min.js"></script>
        <script src="/assets/js/script.js"></script>
    </body>
</html>
