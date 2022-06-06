package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_137 extends Attack {


    static inline final name_1 = 18;

    public function new(param1:Poke) {
        super(param1);
        var_7 = "FeatherDance";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_:Class_16 = new Class_210(var_2, param1, 0);
        var_2.add_Effect(_loc2_);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_137.name_1;
    }

    @:allow(code) override function one_Per_Target():Class<Dynamic> {
        return Class_802;
    }
}

