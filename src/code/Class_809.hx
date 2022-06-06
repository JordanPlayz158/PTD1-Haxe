package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
    class Class_809 extends Class_732
   {
       
      
      public function new(param1:Poke, param2:Int)
      {
         super(param1,new Hit_Decrease_Speed(),param2);
      }
      
      @:allow(code) override function init() 
      {
         super.init();
         var _loc1_= new Class_22(Class_22.const_11);
         var_1.myProfile.mod_Speed *= 0.5;
         var_1.set_Speed();
      }
      
      @:allow(code) override function remove_Me() 
      {
         var_1.myProfile.mod_Speed *= 2;
         var_1.set_Speed();
         super.remove_Me();
      }
   }

