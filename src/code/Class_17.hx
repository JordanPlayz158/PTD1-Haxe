package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_17 {


    @:allow(code) var var_1:Poke;

    @:allow(code) var var_511:Int = 0;

    public function new(param1:Poke) {
        this.var_1 = param1;
    }

    @:allow(code) function on_Do_Damage(param1:Poke, param2:Int, param3:Attack):Int {
        return param2;
    }

    @:allow(code) function on_Run() {
    }

    @:allow(code) function on_Move_Accuracy():Float {
        return 1;
    }

    @:allow(code) function on_Lower_Accuracy(param1:Poke):Bool {
        return true;
    }

    @:allow(code) function on_Flinch(param1:Poke):Bool {
        return true;
    }

    @:allow(code) function on_Sandstorm(param1:Poke):Bool {
        return false;
    }
}

