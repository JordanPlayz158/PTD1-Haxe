package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_141 extends Attack {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Memento";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        if (Std.is(var_2, Class_1104)) {
            _loc2_ = cast(var_2.my_Parent, Class_875).var_79;
        }
        else {
            _loc2_ = this.method_208();
        }
        var _loc5_ = 0;
        var _loc6_ = 0;
        while (_loc6_ < _loc2_.length) {
            _loc3_ = _loc2_[_loc6_];
            Attack.lower_Attack(_loc3_, _loc5_);
            Attack.lower_Special_Attack(_loc3_, _loc5_);
            _loc6_++;
        }
        var_2.take_Damage(var_2.totalLife, null, 1);
    }

    function method_208():Vector<Poke> {
        var _loc2_:ASAny = null;
        var _loc1_ = new Vector<Poke>();
        var _loc3_ = cast(var_2.my_Parent, Class_875).towerList;
        var _loc4_ = 0;
        while (_loc4_ < _loc3_.length) {
            _loc2_ = _loc3_[_loc4_];
            _loc1_.push(_loc2_);
            _loc4_++;
        }
        return _loc1_;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

