package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_207 extends Class_16 {


    @:allow(code) var gfx:GfxMovieClip;

    @:allow(code) var var_5:Int = 0;

    public function new(param1:Poke, param2:GfxMovieClip) {
        this.gfx = param2;
        super(param1);
    }

    @:allow(code) override function init() {
        if (this.gfx != null) {
            var_1.addChild(this.gfx);
        }
    }

    @:allow(code) override function remove_Me() {
        if (this.gfx != null) {
            var_1.removeChild(this.gfx);
            this.gfx = null;
        }
        var_1.remove_Effect(this);
    }

    @:allow(code) override function run() {
        var _loc1_ = 0;
        ++this.var_5;
        if (this.var_5 == 2) {
            _loc1_ = 0;
            var_1.take_Healing(_loc1_);
        }
        else if (this.var_5 == 36) {
            this.var_5 = 0;
        }
    }
}

