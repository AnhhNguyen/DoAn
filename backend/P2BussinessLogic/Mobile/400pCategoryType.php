<?php                                                                            
// learn php basic: https://www.w3schools.com/php/default.asp                    
                                                                                 
switch ($param->what) {                                                          
        //******************p400CategoryType************************             
        // p400CategoryType(name,status,description,createdAt,updatedAt)
                                                                                 
        // Get all data from p400CategoryType                                      
        case 400: {                                                              
                $CategoryType = new CategoryTypeDA();
                $sql = $CategoryType->CategoryTypeDataAccess("400", $param);               
                $result = $baseQuery->execSQL($sql);                             
                                                                                 
                echo json_encode($result);                                       
                break;                                                           
        }                                                                        
                                                                                 
        // Insert data to p400CategoryType                                         
        case 401: {                                                              
                $CategoryType = new CategoryTypeDA();
                $sql = $CategoryType->CategoryTypeDataAccess("401", $param);               
                $result = $baseQuery->execSQL($sql);                             
                                                                                 
                echo json_encode($result);                                       
                break;                                                           
        }                                                                        
                                                                                 
        // Update data p400CategoryType                                            
        case 402: {                                                              
                $CategoryType = new CategoryTypeDA();
                $sql = $CategoryType->CategoryTypeDataAccess("402", $param);               
                $result = $baseQuery->execSQL($sql);                             
                                                                                 
                echo json_encode($result);                                       
                break;                                                           
        }                                                                        
                                                                                 
        // Delete data of p400CategoryType                                         
        case 403: {                                                              
                $CategoryType = new CategoryTypeDA();
                $sql = $CategoryType->CategoryTypeDataAccess("403", $param);               
                                                                                 
                $result = $baseQuery->execSQL($sql);                             
                                                                                 
                echo json_encode($result);                                       
                break;                                                           
        }                                                                        
                                                                                 
        // Find data with id p400CategoryType                                      
        case 404: {                                                              
                $CategoryType = new CategoryTypeDA();
                $sql = $CategoryType->CategoryTypeDataAccess("404", $param);               
                                                                                 
                $result = $baseQuery->execSQL($sql);                             
                                                                                 
                echo json_encode($result);                                       
                break;                                                           
        }                                                                        
                                                                                 
        // Select with pagination(offset, number-item-in-page) p400CategoryType    
        case 405: {                                                              
                $CategoryType = new CategoryTypeDA();
                $sql = $CategoryType->CategoryTypeDataAccess("405", $param);               
                                                                                 
                $result = $baseQuery->execSQL($sql);                             
                                                                                 
                echo json_encode($result);                                       
                break;                                                           
        }                                                                        
                                                                                 
        // Count number item of p400CategoryType                                   
        case 406: {                                                              
                $CategoryType = new CategoryTypeDA();
                $sql = $CategoryType->CategoryTypeDataAccess("406", $param);               
                                                                                 
                $result = $baseQuery->execSQL($sql);                             
                                                                                 
                echo json_encode($result);                                       
                break;                                                           
        }                                                                        
                                                                                 
}                                                                                
