package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_116 extends Attack {


    static inline final name_1 = Std.int(72.0);

    static inline final name_2 = Std.int(720.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Disable";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_ = false;
        if (Std.is(var_2, Class_1104)) {
            _loc2_ = cast(var_2.my_Parent, Class_875).var_79;
        }
        else {
            _loc2_ = this.method_208();
        }
        var _loc5_ = 0;
        while (_loc5_ < _loc2_.length) {
            _loc3_ = _loc2_[_loc5_];
            if (!_loc3_.check_Effects(Class_814)) {
                _loc4_ = true;
                _loc3_.add_Effect(new Class_814(_loc3_, Class_116.name_1));
            }
            _loc5_++;
        }
        if (!_loc4_) {
            var_2.currentCoolDown = 0;
        }
        else {
            var_2.add_Effect(new Class_197(var_2, new Do_Disable()));
        }
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

    @:allow(code) override function get_Initial_CoolDown():Int {
        return Attack.ATTACK_TIME;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_116.name_2;
    }
}

