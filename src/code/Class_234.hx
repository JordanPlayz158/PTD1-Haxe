package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_234 extends Class_16 {


    @:allow(code) var gfx:GfxMovieClip;

    @:allow(code) var var_43:GfxMovieClip;

    @:allow(code) var var_8:Poke;

    @:allow(code) var var_4:Int = 20;

    @:allow(code) var var_20:Int = 0;

    @:allow(code) var var_122:Int = 0;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        this.var_8 = param2;
        this.var_20 = param3;
        super(param1);
    }

    @:allow(code) override function init() {
        this.gfx = Class_21.method_9(this.var_8.myProfile.num, this.var_8.myProfile.shiny);
        this.var_43 = Class_21.method_9(var_1.myProfile.num, var_1.myProfile.shiny);
        this.gfx.gotoAndStop("left");
        this.var_43.gotoAndStop("right");
        this.var_8.gfx.alpha = 0.2;
        var_1.gfx.alpha = 0.2;
        var_1.addChild(this.var_43);
        var_1.addChild(this.gfx);
        this.gfx.x = 10;
        this.gfx.y = 0;
        this.var_43.x = -10;
        this.var_43.y = 0;
    }

    @:allow(code) override function run() {
        if (this.var_122 <= 3) {
            this.gfx.y -= this.var_4;
            this.var_43.y -= this.var_4;
            this.var_4 -= 5;
        }
        else if (this.var_122 <= 7) {
            this.var_4 += 5;
            this.gfx.y += this.var_4;
            this.var_43.y += this.var_4;
        }
        else if (this.var_122 == 8) {
            this.remove_Me();
        }
        ++this.var_122;
    }

    @:allow(code) override function remove_Me() {
        this.var_8.gfx.alpha = 1;
        var_1.gfx.alpha = 1;
        var_1.removeChild(this.gfx);
        var_1.removeChild(this.var_43);
        this.gfx = null;
        this.var_43 = null;
        var_1.remove_Effect(this);
        var_1.take_Damage(this.var_20, new Class_197(var_1, new Gfx_Hit()), var_12);
        var_1 = null;
    }
}

