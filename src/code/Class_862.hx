package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_862 extends Class_853 {


    static inline final name_1 = 18;

    public function new(param1:Class_875, param2:Poke) {
        super(param1, new Do_Haze(), Class_862.name_1, param2);
        var_234 = true;
    }

    @:allow(code) override function isCollision(param1:GfxMovieClip):Bool {
        return true;
    }

    @:allow(code) override function onCollision(param1:Poke) {
        var _loc2_:ASAny = null;
        if (var_15 == 1) {
            if (false) {
                gfx.gotoAndPlay("storm");
            }
            if (Std.is(var_65, Class_1104)) {
                param1.method_18(cast(var_65, Class_1104));
            }
            _loc2_ = param1.check_Effects(Class_807);
            this.method_26(_loc2_);
            _loc2_ = param1.check_Effects(Class_810);
            this.method_26(_loc2_);
            _loc2_ = param1.check_Effects(Class_802);
            this.method_26(_loc2_);
            _loc2_ = param1.check_Effects(Class_800);
            this.method_26(_loc2_);
            _loc2_ = param1.check_Effects(Class_808);
            this.method_26(_loc2_);
            _loc2_ = param1.check_Effects(Class_803);
            this.method_26(_loc2_);
            _loc2_ = param1.check_Effects(Class_805);
            this.method_26(_loc2_);
            _loc2_ = param1.check_Effects(Class_801);
            this.method_26(_loc2_);
            _loc2_ = param1.check_Effects(Class_804);
            this.method_26(_loc2_);
            _loc2_ = param1.check_Effects(Class_798);
            this.method_26(_loc2_);
        }
    }

    @:allow(code) function method_26(param1:Class_16) {
        if (param1 != null) {
            param1.remove_Me();
        }
    }
}

