package body coursework_1_a is
pragma SPARK_Mode;
      
   Procedure AddTimes(time1, time2 : in Time; finaltime : out Time) is
      carry : Integer;
      hr1, min1, sec1, hr2, min2, sec2, tmp : Integer;
      sec3 : Second;
      min3 : Minute;
      hr3 : Hour;
   begin
      hr1 := Integer(time1.Hours);
        min1 := Integer(time1.Minutes);
        sec1 := Integer(time1.Seconds);
        hr2 := Integer(time2.Hours);
        min2 := Integer(time2.Minutes);
        sec2 := Integer(time2.Seconds);
        
      if sec1 + sec2 < 60 then
         tmp := sec1 + sec2;
         sec3 := Second(tmp);
         carry := 0;
      else
         tmp := sec1 + sec2 - 60;
         sec3 := Second(tmp);
         carry := 1;
      end if;
         tmp := min1 + min2 + carry;
      if tmp < 60 then
         min3 := Minute(tmp);
         carry := 0;
      else
         min3 := Minute(tmp - 60);
         carry := 1;
      end if;
      tmp := hr1 + hr2 + carry;
      if tmp < 24 then
         hr3 := Hour(tmp);
      else
         hr3 := Hour(tmp - 24);
      end if;
      finaltime := Time'(Hours => hr3, Minutes => min3, Seconds => sec3);
   end AddTimes;
          
  

   
   function f(time1, time2 : in Time) return Time is
      carry : Integer;
      hr1, min1, sec1, hr2, min2, sec2, tmp : Integer;
      sec3 : Second;
      min3 : Minute;
      hr3 : Hour;
      finaltime : Time;
   begin
      hr1 := Integer(time1.Hours);
        min1 := Integer(time1.Minutes);
        sec1 := Integer(time1.Seconds);
        hr2 := Integer(time2.Hours);
        min2 := Integer(time2.Minutes);
        sec2 := Integer(time2.Seconds);
        
      if sec1 + sec2 < 60 then
         tmp := sec1 + sec2;
         sec3 := Second(tmp);
         carry := 0;
      else
         tmp := sec1 + sec2 - 60;
         sec3 := Second(tmp);
         carry := 1;
      end if;
         tmp := min1 + min2 + carry;
      if tmp < 60 then
         min3 := Minute(tmp);
         carry := 0;
      else
         min3 := Minute(tmp - 60);
         carry := 1;
      end if;
      tmp := hr1 + hr2 + carry;
      if tmp < 24 then
         hr3 := Hour(tmp);
      else
         hr3 := Hour(tmp - 24);
      end if;
      finaltime := Time'(Hours => hr3, Minutes => min3, Seconds => sec3);
      return finaltime;
   end f;          
        

end coursework_1_a;
