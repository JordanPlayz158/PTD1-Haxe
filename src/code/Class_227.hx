package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_227 extends Class_16 {


    @:allow(code) var var_17:GfxMovieClip;

    @:allow(code) var var_657:Poke;

    @:allow(code) var var_4:Int = 30;

    @:allow(code) var var_10:Int = 0;

    @:allow(code) var var_9:Int = 0;

    @:allow(code) var var_20:Int = 0;

    @:allow(code) var var_471:Int = 0;

    @:allow(code) var var_122:Int = 0;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        this.var_657 = param2;
        this.var_20 = param3;
        super(param1);
    }

    @:allow(code) override function init() {
        this.var_17 = Class_21.method_9(var_1.myProfile.num, var_1.myProfile.shiny);
        this.var_17.gotoAndStop("back");
        var_1.gfx.alpha = 0.2;
        var_1.addChild(this.var_17);
        this.do_At_Beginning();
    }

    @:allow(code) override function run() {
        if (this.var_17.y <= -200) {
            this.remove_Me();
            return;
        }
        this.var_17.y -= 30;
        this.var_17.alpha -= 0.1;
    }

    @:allow(code) override function remove_Me() {
        var_1.gfx.alpha = 1;
        var_1.removeChild(this.var_17);
        this.var_17 = null;
        var_1.remove_Effect(this);
        this.do_At_End();
        this.var_657.add_Effect(new Class_389(this.var_657, var_1, this.var_20));
        var_1 = null;
    }

    @:allow(code) function do_At_End() {
    }

    @:allow(code) function do_At_Beginning() {
    }
}

