package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_177 extends Attack {


    static inline final name_2 = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Teleport";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc4_:ASAny = null;
        var _loc2_ = cast(var_2.my_Parent, Class_875);
        var _loc3_ = new Vector<Class_4>();
        var _loc5_ = 0;
        while (_loc5_ < _loc2_.var_300.length) {
            if (!(_loc4_ = _loc2_.var_300[_loc5_]).full) {
                _loc3_.push(_loc4_);
            }
            _loc5_++;
        }
        if (_loc3_.length == 0) {
            return;
        }
        var _loc6_ = Std.int(Math.random() * _loc3_.length);
        (_loc4_ = _loc3_[_loc6_]).full = true;
        var_2.currentSpot.full = false;
        var_2.currentSpot = _loc4_;
        var_2.x = _loc4_.gfx.x;
        var_2.y = _loc4_.gfx.y;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_177.name_2;
    }
}

