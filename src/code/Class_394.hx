package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_394 extends Class_17 {


    public function new(param1:Poke) {
        super(param1);
    }

    @:allow(code) override function on_Run() {
    }

    @:allow(code) override function on_Sandstorm(param1:Poke):Bool {
        var_1.add_Effect(new Class_737(var_1, "Sand Veil"));
        Attack.increase_Evasion(var_1, 0);
        return true;
    }
}

