package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_126 extends Attack {


    static inline final name_2 = Std.int(360.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Aromatherapy";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_:Class_875;
        if ((_loc4_ = cast(var_2.my_Parent, Class_875)).method_23(Class_858) != null) {
            return;
        }
        var _loc5_:Class_853 = new Class_858(_loc4_, var_2);
        _loc4_.add_path_effect(_loc5_, true);
        if (Std.is(var_2, Class_1104)) {
            _loc2_ = this.method_208();
        }
        else {
            _loc2_ = cast(var_2.my_Parent, Class_875).var_79;
        }
        var _loc6_ = 0;
        while (_loc6_ < _loc2_.length) {
            _loc3_ = _loc2_[_loc6_];
            this.method_295(_loc3_);
            _loc3_.add_Effect(new Class_197(_loc3_, new Hit_Aromatherapy()));
            _loc6_++;
        }
    }

    @:allow(code) function method_295(param1:Poke) {
        var _loc2_ = param1.check_Effects(Class_791);
        var _loc3_ = param1.check_Effects(Class_200);
        var _loc4_ = param1.check_Effects(Class_201);
        var _loc5_ = param1.check_Effects(Class_796);
        var _loc6_ = param1.check_Effects(Class_202);
        if (_loc2_ != null) {
            _loc2_.remove_Me();
        }
        if (_loc3_ != null) {
            _loc3_.remove_Me();
        }
        if (_loc4_ != null) {
            _loc4_.remove_Me();
        }
        if (_loc5_ != null) {
            _loc5_.remove_Me();
        }
        if (_loc6_ != null) {
            _loc6_.remove_Me();
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
        return Class_126.name_2;
    }
}

