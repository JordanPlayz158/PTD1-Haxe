package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_389 extends Class_16 {


    @:allow(code) var var_17:GfxMovieClip;

    @:allow(code) var var_8:Poke;

    @:allow(code) var var_4:Int = 30;

    @:allow(code) var var_10:Int = 0;

    @:allow(code) var var_9:Int = 0;

    @:allow(code) var var_20:Int = 0;

    @:allow(code) var var_471:Int = 0;

    @:allow(code) var var_122:Int = 0;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        this.var_8 = param2;
        this.var_20 = param3;
        super(param1);
    }

    @:allow(code) override function init() {
        this.var_17 = Class_21.method_9(this.var_8.myProfile.num, this.var_8.myProfile.shiny);
        this.var_17.gotoAndStop("front");
        this.var_8.gfx.alpha = 0.2;
        var_1.addChild(this.var_17);
        this.var_17.y = -200;
        this.var_17.alpha = 0;
        this.do_At_Beginning();
    }

    @:allow(code) override function run() {
        if (this.var_17.y >= 0) {
            this.remove_Me();
            return;
        }
        this.var_17.y += 30;
        this.var_17.alpha += 0.1;
    }

    @:allow(code) override function remove_Me() {
        this.var_8.gfx.alpha = 1;
        var_1.removeChild(this.var_17);
        this.var_17 = null;
        var_1.remove_Effect(this);
        this.do_At_End();
        var_1.take_Damage(this.var_20, new Class_197(var_1, new Gfx_Hit()), var_12);
        var_1 = null;
    }

    @:allow(code) function do_At_End() {
    }

    @:allow(code) function do_At_Beginning() {
    }
}

