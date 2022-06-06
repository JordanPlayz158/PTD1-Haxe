package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_140 extends Attack {


    static inline final name_2 = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Synthesis";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = 0;
        var _loc3_ = Std.downcast(var_2.my_Parent, Class_875);
        var _loc4_ = _loc3_.get_Total_Candy();
        var _loc5_:Int;
        if ((_loc5_ = this.method_107(_loc3_)) == _loc4_) {
            _loc2_ = 0;
        }
        else if (_loc5_ != 1) {
            _loc2_ = 0;
        }
        else {
            _loc2_ = 0;
        }
        if (_loc2_ < 1) {
            _loc2_ = 1;
        }
        var_2.take_Healing(_loc2_);
        var _loc6_:GfxMovieClip = new Do_Mega_Drain();
        var_2.add_Effect(new Class_205(var_2, 16777164, 0.5, _loc6_.totalFrames));
        var_2.add_Effect(new Class_197(var_2, _loc6_));
    }

    @:allow(code) function method_107(param1:Class_875):Int {
        var _loc2_ = 0;
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        while (_loc4_ < param1.var_168.length) {
            _loc3_ = param1.var_168[_loc4_];
            if (!_loc3_.var_265) {
                _loc2_++;
            }
            _loc4_++;
        }
        return _loc2_;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_140.name_2;
    }
}

