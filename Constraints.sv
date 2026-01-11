/*
				**** CONSTRAINT INTERNO Y EXTERNO ****
			
	El presente código implementa el uso de los constraints internos y externos
	internos : se declaran dentro de la clase
	externos : se declaran fuera de la clase.
	en es te ejemplo se implementan los constraints aplicados a la generación de
	valores aleatorios.
	
			
*/

//Clase para constraint interno
class Constraint_Interno;

  // Definición de variabl y constraint
  rand bit [3:0] X;
  
  constraint Para_X {X>5; X<11;};
  
endclass

//Clase para constraint externo
class Constraint_Externo;

  //Definición de variable y constraint externo
  randc bit [3:0] Y;
  extern constraint Para_Y;
endclass

//Constraint creado fuera de la clase
constraint Constraint_Externo::Para_Y {Y>0; Y<6;};

//Definición del módulo
module Testbench;
  
  //Manejadores y tipos de clase
  Constraint_Interno CI;
  Constraint_Externo CE;
  
  integer i;
  
  
  initial begin
	
	//Inicialización
    CI = new();
    CE = new();
    
	//generación de valores
    $display("Constraint Interno");
      for(i=0; i<16; i++) begin
        CI.randomize();
        $display(" X: %d", CI.X);
      	#10;	
      end
      
      $display("---------------------");
      $display("Constraint Externo");
      $display("---------------------");
      
      for(i=0; i<16; i++) begin
        CE.randomize();
        $display(" Y: %d", CE.Y);
      	#10;	
      end
    
  end
  
endmodule // FIn del módulo