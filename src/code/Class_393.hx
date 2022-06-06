package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_393 extends Class_17 {


    @:allow(code) var var_702:Bool = false;

    public function new(param1:Poke) {
        super(param1);
    }

    @:allow(code) override function on_Run() {
        if (!this.var_702) {
            this.var_702 = true;
            var_1.add_Effect(new Class_737(var_1, "Compoundeyes"));
        }
    }

    @:allow(code) override function on_Move_Accuracy():Float {
        return 1.3;
    }
}

