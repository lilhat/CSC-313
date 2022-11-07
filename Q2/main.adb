pragma SPARK_Mode;

with AS_IO_Wrapper; use AS_IO_Wrapper;
with coursework_2_a; use coursework_2_a;


procedure Main is
   X, Y, Z : Integer;
   User_Input : String(1 .. 20);
   Last : Integer;
begin
   AS_Init_Standard_Output;
   AS_Init_Standard_Input;
   loop
      AS_Put_Line("Enter a value for X: ");
      loop
         AS_Get(X,"Please type in an integer; try again");
         exit when X in 0 .. 1000;
      end loop;
      AS_Put_Line("Enter a value for Y: ");
      loop
         AS_Get(Y,"Please type in an integer; try again");
         exit when Y in 0 .. 1000;
      end loop;
      Computation(X,Y,Z);
      AS_Put_Line(Z);
      AS_Put_Line("Would you like to continue with another example? (y/n): ");
      loop
         AS_Get_Line(User_Input, Last);
         exit when Last > 0;
         AS_Put_Line("Please enter a non-empty string");
      end loop;
      exit when User_Input(1 .. 1) = "n";
   end loop;


end Main;
