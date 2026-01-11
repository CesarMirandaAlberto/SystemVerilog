/*
							**** ASERTIONS ****
			
	El presente código implementa el uso de asertions a fin de analizar 
	si la generación de valores aleatorios se realizo con éxito, esto 
	a su vez implementando constraint interno.
			
*/

//Definición de clase
class Asertion;

  //Definición de variabl y constraint
  randc bit [3:0] X;
  constraint X_Constraint {X > 11;};
endclass

//Definición del módulo
module Testbench;
  
  // Manejador y tipo de clase
  Asertion AT;
  integer i;
  
  initial begin
  	
	//Inicialización
    AT = new();
    
    for(i=0; i<10; i++)begin
      assert(AT.randomize()) // generación de valores, dentro del asertion
        else $error("Fallo la aleatoriedad de los numeros"); //Si falla mensaje de erro
      $display("X: %d", AT.X); // Valores generados
      #10; // Retardos
    end
    
  end
  
endmodule // Fin del módulo