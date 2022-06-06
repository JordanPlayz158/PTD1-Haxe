package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_197 extends Class_16 {


    @:allow(code) var gfx:GfxMovieClip;

    public function new(param1:Poke, param2:GfxMovieClip) {
        this.gfx = param2;
        super(param1);
    }

    @:allow(code) override function init() {
        if (this.gfx != null) {
            var_1.addChild(this.gfx);
            this.gfx.gotoAndStop(1);
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
        if (this.gfx.currentLabel == "end") {
            this.remove_Me();
            this.do_Before_End();
        }
        else {
            this.gfx.nextFrame();
        }
    }

    @:allow(code) function do_Before_End() {
    }
}

