package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_595 extends Class_194 {


    @:allow(code) static inline final name_1 = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Icy Wind";
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 55;
    }

    @:allow(code) override function get_Accurary():Int {
        return 95;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        Attack.lower_Speed(param1, Class_595.name_1);
        var _loc2_ = method_3(param1);
        param1.add_Effect(new Class_16(param1));
        method_13(param1, _loc2_, this.get_Target_Hit_Animation(param1));
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_733(var_2, new Do_Icy_Wind());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Gfx_Hit());
    }

    @:allow(code) override function get_coolDown():Int {
        return 24;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_18;
    }
}

