package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_833 extends Class_732 {


    static inline final name_1 = Std.int(1800.0);

    @:allow(code) var var_17:GfxMovieClip;

    @:allow(code) var var_9:Float = 0.5;

    var var_120:Int = 0;

    public function new(param1:Poke) {
        super(param1, null, Class_833.name_1);
    }

    @:allow(code) override function init() {
        this.var_17 = Class_21.method_9(var_1.myProfile.num, var_1.myProfile.shiny);
        this.var_17.gotoAndPlay(var_1.dir);
        var_1.gfx.alpha = 0.2;
        var_1.addChild(this.var_17);
        this.var_120 = 1;
    }

    @:allow(code) override function run() {
        if (this.var_120 <= 5) {
            this.var_17.y -= this.var_9;
        }
        else if (this.var_120 <= 10) {
            this.var_17.y += this.var_9;
        }
        if (this.var_120 == 10) {
            var_15 = 1;
        }
        ++this.var_120;
        super.run();
    }

    @:allow(code) override function remove_Me() {
        var_1.gfx.alpha = 1;
        var_1.removeChild(this.var_17);
        this.var_17 = null;
        var_1.remove_Effect(this);
        var_1 = null;
    }
}

