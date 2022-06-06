package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_733 extends Class_197 {


    @:allow(code) var var_95:String;

    @:allow(code) var var_241:GfxMovieClip;

    public function new(param1:Poke, param2:GfxMovieClip) {
        super(param1, param2);
    }

    @:allow(code) override function init() {
        this.var_95 = var_1.dir;
        this.var_241 = Class_21.method_9(var_1.myProfile.num, var_1.myProfile.shiny);
        this.var_241.gotoAndPlay(var_1.dir);
        var_1.gfx.alpha = 0.2;
        var_1.addChild(this.var_241);
        super.init();
    }

    @:allow(code) override function run() {
        if (var_15 == 0) {
            this.method_42();
            var_15 = 1;
        }
        else {
            var_15 = 0;
        }
        super.run();
    }

    @:allow(code) function method_42(param1:String = "cw") {
        if (param1 == "cw") {
            if (this.var_95 == "left") {
                this.var_95 = "back";
            }
            else if (this.var_95 == "back") {
                this.var_95 = "right";
            }
            else if (this.var_95 == "right") {
                this.var_95 = "front";
            }
            else if (this.var_95 == "front") {
                this.var_95 = "left";
            }
        }
        else if (this.var_95 == "left") {
            this.var_95 = "front";
        }
        else if (this.var_95 == "back") {
            this.var_95 = "left";
        }
        else if (this.var_95 == "right") {
            this.var_95 = "back";
        }
        else if (this.var_95 == "front") {
            this.var_95 = "right";
        }
        this.var_241.gotoAndStop(this.var_95);
    }

    @:allow(code) override function remove_Me() {
        var_1.gfx.alpha = 1;
        var_1.removeChild(this.var_241);
        this.var_241 = null;
        super.remove_Me();
    }
}

