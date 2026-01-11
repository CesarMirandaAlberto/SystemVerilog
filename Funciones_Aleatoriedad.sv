/*
							**** FUNCIONES ALEATORIEDAS ****
			
	El presente código implementa el uso de las funciones que utiliza la función randomize(); 
	pre_randomize y post_randomize.
	
	pre_randomize : se ejecuta antes de generar los valores aleatorios randomize();
	post_randomize : se ejecuta despues de generar los valores 
	
	En la funcion pre_randomize se muestra texto en consola mientras que la post_randomize
	muestra el valor despues de. 
	
*/

//Creación de clase
class Funciones_Aleatoriedad;

  randc bit[3:0] X;
	
 //Definición de las funciones
  function void pre_randomize();
    $display("Antes de generar el valor");
  endfunction
  
  function void post_randomize();
    $display("X: %d", X);
  endfunction
  
endclass

//Modulo principal
module Testbench;
  
  //Manejador de tipo de clase
  Funciones_Aleatoriedad FA;
  
  //Para el ciclo for
  integer i;
  
  
  initial begin
    FA = new(); //Inicialización
    
    for(i=0; i<5; i++)begin
      FA.randomize(); // Generación de valores aleatorios
    end
  end
  
endmodule // Fin del módulo