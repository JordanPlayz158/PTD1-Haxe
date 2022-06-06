package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_532 extends Class_194 {


    static inline final name_1 = Std.int(1800.0);

    var name_2:Int = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Curse";
        if (var_2 != null) {
            if (!var_2.myProfile.is_Type(Class_13.const_24)) {
                onSelf = true;
            }
            else {
                this.name_2 = Attack.ATTACK_TIME;
            }
        }
    }

    @:allow(code) override function get_Move_Power():Int {
        return 20;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_24;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = 0;
        var _loc3_ = 0;
        var _loc4_:ASAny = null;
        var _loc5_:ASAny = null;
        var _loc6_:ASAny = null;
        var _loc7_:ASAny = null;
        var _loc8_:ASAny = null;
        var _loc9_:ASAny = null;
        if (var_2.myProfile.is_Type(Class_13.const_24)) {
            _loc2_ = Std.int(param1.totalLife / 4);
            _loc3_ = 0;
            if (_loc2_ > _loc3_) {
                _loc2_ = _loc3_;
            }
            param1.take_Damage(_loc2_, new Class_197(param1, new Gfx_Hit()), 1, true);
            var_2.take_Damage(0, new Class_197(var_2, new Gfx_Hit()), 1, false);
        }
        else {
            _loc4_ = var_2.check_Effects(Class_802);
            _loc5_ = var_2.check_Effects(Class_809);
            _loc6_ = var_2.check_Effects(Class_806);
            _loc7_ = var_2.check_Effects(Class_805);
            _loc8_ = var_2.check_Effects(Class_808);
            _loc9_ = var_2.check_Effects(Class_807);
            if (_loc4_) {
                _loc4_.remove_Me();
            }
            else if (!_loc7_) {
                var_2.add_Effect(new Class_805(var_2, Class_532.name_1));
            }
            if (_loc6_) {
                _loc6_.remove_Me();
            }
            else if (!_loc5_) {
                var_2.add_Effect(new Class_809(var_2, Class_532.name_1));
            }
            if (_loc9_) {
                _loc9_.remove_Me();
            }
            else if (!_loc8_) {
                var_2.add_Effect(new Class_808(var_2, Class_532.name_1));
            }
        }
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
        return this.name_2;
    }
}

