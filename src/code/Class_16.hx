package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_16 {


    @:allow(code) var var_1:Poke;

    @:allow(code) var var_715:Float = Math.NaN;

    @:allow(code) var var_712:Float = Math.NaN;

    @:allow(code) var speed:Int = 6;

    @:allow(code) var var_15:Int = 0;

    @:allow(code) var var_12:Float = Math.NaN;

    public function new(param1:Poke) {
        this.var_1 = param1;
        this.var_715 = this.var_1.gfx.x;
        this.var_712 = this.var_1.gfx.y;
        this.init();
    }

    @:allow(code) function init() {
        this.var_1.gfx.x += this.speed;
    }

    @:allow(code) function run() {
        if (this.var_15 != 0) {
            this.remove_Me();
        }
        this.var_15 += this.method_6();
    }

    @:allow(code) function method_6():Int {
        return 1;
    }

    @:allow(code) function remove_Me() {
        this.var_1.gfx.x = 0;
        this.var_1.remove_Effect(this);
    }

    @:allow(code) function method_13(param1:Poke, param2:Int, param3:Class_16) {
        param1.take_Damage(param2, param3, this.var_12);
    }
}

