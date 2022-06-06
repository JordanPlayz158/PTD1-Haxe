package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_110 extends Attack {


    static inline final name_2 = Std.int(90.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Gary\'s Potion";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        var _loc5_:ASAny = null;
        _loc2_ = this.method_208();
        _loc3_ = this.method_209(_loc2_);
        if (_loc3_) {
            _loc4_ = _loc3_.totalLife;
            (_loc5_ = new Class_206(_loc3_, var_2, _loc4_)).var_12 = 1;
            _loc3_.add_Effect(_loc5_);
        }
    }

    @:allow(code) function method_209(param1:Vector<Poke>):Poke {
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        var _loc2_:ASAny = 2;
        var _loc5_ = 0;
        while (_loc5_ < param1.length) {
            _loc3_ = param1[_loc5_];
            if (_loc3_.currentSpot && (_loc3_.currentSpot.gfx.name == "spot_2" || _loc3_.currentSpot.gfx.name == "spot_4" || _loc3_.currentSpot.gfx.name == "spot_5")) {
                if (_loc3_.var_166.scaleX < _loc2_) {
                    _loc2_ = ASCompat.toNumber(_loc3_.var_166.scaleX);
                    _loc4_ = _loc3_;
                }
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

    @:allow(code) override function get_coolDown():Int {
        return Class_110.name_2;
    }
}

