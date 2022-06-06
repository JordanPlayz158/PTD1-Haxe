package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_327 extends Class_16 {


    @:allow(code) var var_120:Int = 0;

    @:allow(code) var var_242:Int = 0;

    @:allow(code) var var_249:Int = 0;

    var var_433:Int = 0;

    public function new(param1:Poke, param2:Int) {
        this.var_433 = param2;
        super(param1);
    }

    @:allow(code) override function init() {
        this.var_242 = 0;
        this.var_249 = 0;
    }

    @:allow(code) override function run() {
        if (var_15 == this.var_242) {
            this.remove_Me();
            return;
        }
        var_15 += method_6();
        this.var_120 += method_6();
        if (this.var_120 == this.var_249) {
            this.var_120 = 0;
            var_1.take_Damage(this.var_433, new Class_197(var_1, new Do_Future_Sight()), var_12);
        }
    }

    @:allow(code) override function remove_Me() {
        var_1.remove_Effect(this);
        var_1 = null;
    }
}

