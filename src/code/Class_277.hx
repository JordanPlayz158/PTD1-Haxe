package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.motion.Color;


class Class_277 extends Class_16 {


    static inline final name_1 = Std.int(180.0);

    @:allow(code) var gfx:GfxMovieClip;

    @:allow(code) var var_43:GfxMovieClip;

    @:allow(code) var var_4:Int = 20;

    @:allow(code) var var_20:Int = 0;

    @:allow(code) var var_122:Int = 0;

    public function new(param1:Poke, param2:Int) {
        this.var_20 = param2;
        super(param1);
    }

    @:allow(code) override function init() {
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
            this.var_4 -= 5;
        }
        else if (this.var_122 <= 7) {
            this.var_4 += 5;
            this.var_43.y += this.var_4;
        }
        else if (this.var_122 == 8) {
            this.remove_Me();
        }
        ++this.var_122;
    }

    @:allow(code) override function remove_Me() {
        var _loc1_ = 0;
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var_1.gfx.alpha = 1;
        var_1.removeChild(this.var_43);
        this.var_43 = null;
        var_1.remove_Effect(this);
        if (var_1.check_Effects(Class_810) == null) {
            _loc1_ = Std.int(Math.random() * 100 + 1);
            if (_loc1_ <= 10) {
                _loc2_ = var_1.check_Effects(Class_803);
                if (_loc2_) {
                    _loc3_ = new Class_22(Class_22.const_11);
                    _loc2_.remove_Me();
                }
                else {
                    var_1.add_Effect(new Class_810(var_1, Class_277.name_1));
                }
            }
        }
        var_1.take_Damage(this.var_20, new Class_197(var_1, new Gfx_Hit()), var_12);
        var_1 = null;
    }
}

