pragma SPARK_Mode (On);
with AS_IO_Wrapper, coursework_1_a;
use AS_IO_Wrapper, coursework_1_a;

procedure Main is
   hr1, hr2, min1, min2, sec1, sec2 : Integer;
   time1, time2, finaltime : Time;
   User_Input : String(1 .. 20);
   User_Input2 : String(1 .. 20);
   Last : Integer;
begin
   AS_Init_Standard_Output;
   AS_Init_Standard_Input;
   loop
      AS_Put_Line("First Time Input: ");
      loop
         AS_Put("Enter a number in hour from 0 .. 23: ");
         AS_Get(hr1);
         exit when hr1 in 0 .. 23;
         AS_Put_Line("Please Enter a number between 0 and 23");
      end loop;
      loop
         AS_Put("Enter a number in minutes from 0 .. 59: ");
         AS_Get(min1);
         exit when min1 in 0 .. 59;
         AS_Put_Line("Please Enter a number between 0 and 59");
      end loop;
      loop
         AS_Put("Enter a number in seconds from 0 .. 59: ");
         AS_Get(sec1);
         exit when sec1 in 0 .. 59;
         AS_Put_Line("Please Enter a number between 0 and 59");
      end loop;
      AS_Put_Line("Second Time Input: ");
      loop
         AS_Put("Enter a number in hour from 0 .. 23: ");
         AS_Get(hr2);
         exit when hr2 in 0 .. 23;
         AS_Put_Line("Please Enter a number between 0 and 23");
      end loop;
      loop
         AS_Put("Enter a number in minutes from 0 .. 59: ");
         AS_Get(min2);
         exit when min2 in 0 .. 59;
         AS_Put_Line("Please Enter a number between 0 and 59");
      end loop;
      loop
         AS_Put("Enter a number in seconds from 0 .. 59: ");
         AS_Get(sec2);
         exit when sec2 in 0 .. 59;
         AS_Put_Line("Please Enter a number between 0 and 59");
      end loop;

      AS_Put_Line("Procedure or Function? (p/f): ");
      loop
         AS_Get_Line(User_Input2, Last);
         exit when Last > 0;
         AS_Put_Line("Please enter a non-empty string");
      end loop;
      time1 := Time'(Hours => Hour(hr1), Minutes => Minute(min1), Seconds => Second(sec1));
      time2 := Time'(Hours => Hour(hr2), Minutes => Minute(min2), Seconds => Second(sec2));
      if User_Input2(1 .. 1) = "p" then
         AddTimes(time1, time2, finaltime);
      else
         finaltime := f(time1,time2);
      end if;
      AS_Put_Line("Resulting time: ");
      AS_Put(Integer(finaltime.Hours));
      AS_Put(":");
      AS_Put(Integer(finaltime.Minutes));
      AS_Put(":");
      AS_Put(Integer(finaltime.Seconds));
      AS_Put_Line("");
      AS_Put_Line("Would you like to continue with another example? (y/n): ");
      loop
         AS_Get_Line(User_Input, Last);
         exit when Last > 0;
         AS_Put_Line("Please enter a non-empty string");
      end loop;
      exit when User_Input(1 .. 1) = "n";
   end loop;
end Main;
