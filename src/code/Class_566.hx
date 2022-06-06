package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

class Class_566 extends Class_194 {


    static inline final name_2 = Std.int(180.0);

    @:allow(code) var var_237:String = "None";

    @:allow(code) var var_682:Int = 0;

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Zapdos\' Thunder";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        var _loc6_ = 0;
        var _loc7_:ASAny = null;
        if (Std.is(var_2, Class_1104)) {
            return;
        }
        if (this.var_237 == "pending") {
            this.var_682 = var_2.myProfile.speed;
            var_2.myProfile.speed = 0;
            var_2.set_Speed();
            return;
        }
        if (this.var_237 == "waiting") {
            _loc2_ = this.method_208();
            _loc3_ = this.method_102(_loc2_);
            if (_loc3_) {
                _loc4_ = _loc3_.totalLife;
                _loc6_ = 0;
                while (_loc6_ < _loc2_.length) {
                    _loc3_ = _loc2_[_loc6_];
                    method_13(_loc3_, Std.int(_loc4_ / _loc2_.length), new Class_197(_loc3_, new Hit_Thunder()));
                    _loc6_++;
                }
                _loc7_ = new Do_Thunder();
                var_2.add_Effect(new Class_205(var_2, 16776960, 0.7, _loc7_.totalFrames));
                var_2.add_Effect(new Class_197(var_2, _loc7_));
                if (var_2.myProfile.speed == 0) {
                    var_2.myProfile.speed = this.var_682;
                    var_2.set_Speed();
                }
                this.var_237 = "end";
            }
        }
    }

    @:allow(code) function method_102(param1:Vector<Poke>):Poke {
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        var _loc2_:ASAny = 0;
        var _loc5_ = 0;
        while (_loc5_ < param1.length) {
            _loc3_ = param1[_loc5_];
            if (_loc3_.var_166.scaleX > _loc2_) {
                _loc2_ = ASCompat.toNumber(_loc3_.var_166.scaleX);
                _loc4_ = _loc3_;
            }
            _loc5_++;
        }
        return _loc4_;
    }

    function method_208():Vector<Poke> {
        return cast(var_2.my_Parent, Class_875).method_79();
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_Initial_CoolDown():Int {
        return 18;
    }

    @:allow(code) override function get_coolDown():Int {
        if (this.var_237 == "None") {
            this.var_237 = "pending";
            return 90;
        }
        if (this.var_237 == "pending") {
            this.var_237 = "waiting";
            return 90;
        }
        if (this.var_237 == "waiting") {
            return 5;
        }
        return 90;
    }
}

