package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_212 extends Class_16 {


    @:allow(code) var var_526:String;

    public function new(param1:Poke) {
        super(param1);
    }

    @:allow(code) override function init() {
        this.method_142();
        var_1.gfx.x += speed;
        speed = -speed;
    }

    @:allow(code) override function run() {
        if (var_15 == 10) {
            this.remove_Me();
            return;
        }
        var_1.gfx.x += speed;
        speed = -speed;
        var_15 += method_6();
    }

    @:allow(code) override function remove_Me() {
        var_1.set_Direction(this.var_526);
        var_1.gfx.x = 0;
        var_1.remove_Effect(this);
    }

    @:allow(code) function method_142() {
        var _loc1_:ASAny = null;
        this.var_526 = var_1.dir;
        if (this.var_526 == "left") {
            _loc1_ = "right";
        }
        else if (this.var_526 == "right") {
            _loc1_ = "left";
        }
        else if (this.var_526 == "front") {
            _loc1_ = "back";
        }
        else if (this.var_526 == "back") {
            _loc1_ = "front";
        }
        var_1.set_Direction(_loc1_);
    }
}

