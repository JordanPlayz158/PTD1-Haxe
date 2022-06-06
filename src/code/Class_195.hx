package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_195 extends Class_16 {


    @:allow(code) var var_643:Int = 0;

    @:allow(code) var var_612:Int = 0;

    @:allow(code) var gfx:GfxMovieClip;

    public function new(param1:Poke) {
        super(param1);
    }

    @:allow(code) override function init() {
        var _loc1_ = 0;
        if (var_1.life < _loc1_) {
            _loc1_ = -1;
        }
        this.var_612 = var_1.life;
        this.var_643 = 0 - _loc1_;
        var_1.take_Damage(_loc1_, null, 1, true);
        var_1.gfx.alpha = 0.2;
        this.gfx = new Do_Substitute();
        var_1.addChild(this.gfx);
    }

    @:allow(code) override function run() {
    }

    @:allow(code) override function remove_Me() {
        var_1.gfx.alpha = 1;
        var_1.removeChild(this.gfx);
        this.gfx = null;
        var_1.remove_Effect(this);
        var_1 = null;
    }
}

