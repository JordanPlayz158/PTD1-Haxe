package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_550 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Heart Stamp";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 60;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        super.do_Attack(param1);
        Attack.do_Flinch(param1, 30, Attack.ATTACK_TIME, var_2, this, var_12, true);
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_14;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Do_Heart_Stamp());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Do_Heart_Stamp());
    }
}

