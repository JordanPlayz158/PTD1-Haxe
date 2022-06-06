package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_392 extends Class_17 {


    public function new(param1:Poke) {
        super(param1);
    }

    @:allow(code) override function on_Lower_Accuracy(param1:Poke):Bool {
        if (param1 != var_1) {
            var_1.add_Effect(new Class_737(var_1, "Keen Eye"));
            return false;
        }
        return true;
    }
}

