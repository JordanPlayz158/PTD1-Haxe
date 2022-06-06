package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_108 extends Attack {


    static inline final name_2 = Std.int(108.0);

    static inline final name_1 = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Roost";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = 0;
        var_2.take_Healing(_loc2_);
        var _loc3_:GfxMovieClip = new Do_Mega_Drain();
        var_2.add_Effect(new Class_197(var_2, _loc3_));

        //var clazz = new Class_811(var_2,this.name_1);
        //if(var_2.check_Effects(clazz as Class))
        //{
        //   return;
        //}
        var_2.add_Effect(new Class_205(var_2, 16777215, 0.4, Class_108.name_1));
        //var_2.add_Effect(clazz);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_108.name_2;
    }
}

