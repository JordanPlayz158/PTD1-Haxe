package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_300 extends Class_16 {


    @:allow(code) var gfx:GfxMovieClip;

    @:allow(code) var var_8:Poke;

    @:allow(code) var var_4:Int = 20;

    @:allow(code) var var_122:Int = 0;

    public function new(param1:Poke) {
        super(param1);
    }

    @:allow(code) override function init() {
        this.gfx = Class_21.method_9(var_1.myProfile.num, var_1.myProfile.shiny);
        this.gfx.gotoAndStop(var_1.dir);
        var_1.gfx.alpha = 0.2;
        var_1.addChild(this.gfx);
    }

    @:allow(code) override function run() {
        if (this.var_122 <= 3) {
            this.gfx.y -= this.var_4;
            this.var_4 -= 5;
        }
        else if (this.var_122 <= 7) {
            this.var_4 += 5;
            this.gfx.y += this.var_4;
        }
        else if (this.var_122 == 8) {
            this.remove_Me();
        }
        ++this.var_122;
    }

    @:allow(code) override function remove_Me() {
        var_1.gfx.alpha = 1;
        var_1.removeChild(this.gfx);
        this.gfx = null;
        var_1.remove_Effect(this);
        var_1.add_Effect(new Class_197(var_1, new Magnetude_Crack()));
        var_1 = null;
    }
}

