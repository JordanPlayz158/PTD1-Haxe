package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_232 extends Class_16 {


    @:allow(code) var var_120:Int = 0;

    @:allow(code) var var_242:Int = 0;

    @:allow(code) var var_249:Int = 0;

    @:allow(code) var gfx:GfxMovieClip;

    var var_433:Int = 0;

    public function new(param1:Poke, param2:Int) {
        this.var_433 = param2;
        super(param1);
    }

    @:allow(code) override function init() {
        var _loc1_ = 0;
        this.gfx = new Hit_Fire_Spin();
        var_1.addChild(this.gfx);
        var _loc2_ = Math.random() * 100 + 1;
        if (_loc2_ <= 37.5) {
            _loc1_ = 2;
        }
        else if (_loc2_ <= 75) {
            _loc1_ = 3;
        }
        else if (_loc2_ <= 87.5) {
            _loc1_ = 4;
        }
        else {
            _loc1_ = 5;
        }
        this.var_242 = 0 * _loc1_;
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
            var_1.take_Damage(this.var_433, new Class_197(var_1, new Gfx_Hit()), var_12);
        }
    }

    @:allow(code) override function remove_Me() {
        var_1.removeChild(this.gfx);
        var_1.remove_Effect(this);
        var_1 = null;
    }
}

