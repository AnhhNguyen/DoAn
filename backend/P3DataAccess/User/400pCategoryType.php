<?php                                                                                      
	class CategoryTypeDA{				
		public function CategoryTypeDataAccess($what, $param){ 			
            switch ($what) {                                                                 
                //******************p400CategoryType************************             
                // p400CategoryType(id,name,status,description,createdAt,updatedAt)
                // Get all data from p400CategoryType
                case 400: {                                                                        
                    return "SELECT * FROM p400CategoryType";
                }                                                                                  
                                                                                                   
                // Insert data to p400CategoryType
                case 401: {                                                                        
                    return "INSERT INTO p400CategoryType(name,status,description,createdAt,updatedAt)
                            VALUES('$param->name','$param->status','$param->description','$param->createdAt','$param->updatedAt')";                               
                }                                                                                  
                                                                                                   
                // Update data p400CategoryType
                case 402: {
                    return "UPDATE p400CategoryType SET name='$param->name',status='$param->status',description='$param->description',createdAt='$param->createdAt',updatedAt='$param->updatedAt'
                            WHERE id='$param->id'";                                                 
                }                                                                                  
                                                                                                   
                // Delete data of p400CategoryType
                case 403: {                                                                        
                    return "DELETE FROM p400CategoryType
                            WHERE id IN($param->listid)";                                           
                }                                                                                  
                                                                                                   
                // Find data with id p400CategoryType
                case 404: {                                                                        
                    return "SELECT * FROM p400CategoryType
                            WHERE id='$param->id'";                                                 
                }                                                                                  
                                                                                                   
                // Select with pagination(offset, number-item-in-page) p400CategoryType
                case 405: {                                                                        
                    return "SELECT *                                                                              
                            FROM (SELECT id FROM p400CategoryType $param->condition ORDER BY id LIMIT $param->offset, $param->limit) T1     
                            INNER JOIN p400CategoryType T2 ON T1.id = T2.id";                                     
                }                                                                                                 
                                                                                                   
                // Count number item of p400CategoryType
                case 406: {                                                                        
                    return "SELECT COUNT(1) FROM p400CategoryType $param->condition";
                }                                                                                  
            }                                                                                      
		}                                                                                      
	}                                                                                      
?>                                                                                         
