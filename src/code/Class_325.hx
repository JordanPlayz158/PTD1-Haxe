package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_325 extends Class_16 {


    var var_120:Int = 0;

    var var_242:Int = 0;

    var var_249:Int = 0;

    var gfx:GfxMovieClip;

    var var_433:Int = 0;

    var var_8:Poke;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        this.var_433 = param3;
        this.var_8 = param2;
        super(param1);
    }

    @:allow(code) override function init() {
        this.gfx = new Gfx_Hit_Leech_Seed();
        var_1.addChild(this.gfx);
        this.gfx.y -= var_1.gfx.height / 4;
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
            this.var_8.take_Healing(this.var_433);
            var_1.take_Damage(this.var_433, new Class_197(var_1, new Hit_Seed()), var_12);
        }
    }

    @:allow(code) override function remove_Me() {
        var_1.removeChild(this.gfx);
        this.gfx = null;
        var_1.remove_Effect(this);
        var_1 = null;
    }
}

