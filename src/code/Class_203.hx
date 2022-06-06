package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_203 extends Class_16 {


    static inline final const_369 = Std.int(90.0);

    static inline final const_342 = 18;

    var var_120:Int = 0;

    var gfx:GfxMovieClip;

    var var_433:Int = 0;

    public function new(param1:Poke, param2:Int) {
        this.var_433 = param2;
        super(param1);
    }

    @:allow(code) override function init() {
        var _loc1_ = var_1.gfx.height / 2;
        this.gfx = new Confused();
        this.gfx.y -= _loc1_;
        var_1.addChild(this.gfx);
    }

    @:allow(code) override function run() {
        var _loc1_ = 0;
        if (var_15 == Class_203.const_369) {
            this.remove_Me();
            return;
        }
        var_15 += method_6();
        this.var_120 += method_6();
        if (this.var_120 == Class_203.const_342) {
            this.var_120 = 0;
            _loc1_ = Std.int(Math.random() * 2);
            if (_loc1_ == 0) {
                trace("confusion hit for " + this.var_433);
                var_1.take_Damage(this.var_433, new Class_197(var_1, new Gfx_Hit()), var_12);
            }
        }
    }

    @:allow(code) override function remove_Me() {
        var_1.removeChild(this.gfx);
        this.gfx = null;
        var_1.remove_Effect(this);
        var_1 = null;
    }
}

