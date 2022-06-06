package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.motion.Color;


class Class_834 extends Class_732 {


    @:allow(code) var var_43:GfxMovieClip;

    @:allow(code) var var_4:Int = 12;

    @:allow(code) var var_122:Int = 0;

    public function new(param1:Poke, param2:Int) {
        super(param1, new Hit_Telekinesis(), param2);
    }

    @:allow(code) override function init() {
        super.init();
        this.var_43 = Class_21.method_9(var_1.myProfile.num, var_1.myProfile.shiny);
        this.var_43.gotoAndStop(var_1.dir);
        var_1.gfx.alpha = 0.2;
        var_1.addChild(this.var_43);
        var _loc1_ = new Color();
        _loc1_.setTint(255, 0.8);
        this.var_43.transform.colorTransform = _loc1_;
    }

    @:allow(code) override function run() {
        if (this.var_122 <= 3) {
            this.var_43.y -= this.var_4;
            this.var_4 -= 3;
        }
        ++this.var_122;
        super.run();
    }

    @:allow(code) override function remove_Me() {
        var_1.gfx.alpha = 1;
        var_1.removeChild(this.var_43);
        this.var_43 = null;
        super.remove_Me();
    }
}

