package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_524 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Uproar";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 90;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        this.method_153(this.method_208());
        this.method_153(cast(var_2.my_Parent, Class_875).var_79);
        super.do_Attack(param1);
    }

    @:allow(code) function method_153(param1:Vector<Poke>) {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        while (_loc4_ < param1.length) {
            _loc2_ = param1[_loc4_];
            if (_loc2_) {
                _loc3_ = _loc2_.check_Effects(Class_791);
                if (_loc3_) {
                    _loc3_.remove_Me();
                }
            }
            _loc4_++;
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

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_1;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Do_Sing());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        var _loc2_:GfxMovieClip = new Do_Sing();
        param1.add_Effect(new Class_197(param1, _loc2_));
        return new Class_197(param1, new Gfx_Hit());
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

