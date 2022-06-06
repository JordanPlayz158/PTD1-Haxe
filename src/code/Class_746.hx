package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_746 extends Class_231 {


    public function new(param1:Poke, param2:Poke, param3:Int, param4:Class_194) {
        super(param1, param2, param3, new Hit_Dark_Pulse(), param4);
    }

    @:allow(code) override function do_On_Hit(param1:Poke) {
        Attack.do_Flinch(param1, 20, Attack.ATTACK_TIME, var_1, null, var_12, true);
    }
}

