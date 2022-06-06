package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_133 extends Attack {


    static inline final name_1 = Std.int(1800.0);

    static inline final name_2 = Std.int(72.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Baton Pass";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc11_:ASAny = null;
        var _loc16_:ASAny = null;
        var _loc17_:ASAny = null;
        var _loc18_:ASAny = null;
        var _loc19_:ASAny = null;
        var _loc20_:ASAny = null;
        var _loc21_:ASAny = null;
        var _loc22_:ASAny = null;
        var _loc23_:ASAny = null;
        var _loc2_ = var_2.check_Effects(Class_802);
        var _loc3_ = var_2.check_Effects(Class_805);
        var _loc4_ = var_2.check_Effects(Class_800);
        var _loc5_ = var_2.check_Effects(Class_801);
        var _loc6_ = var_2.check_Effects(Class_807);
        var _loc7_ = var_2.check_Effects(Class_808);
        var _loc8_ = var_2.check_Effects(Class_810);
        var _loc9_ = var_2.check_Effects(Class_803);
        var _loc10_ = cast(var_2.my_Parent, Class_875).towerList;
        var _loc12_ = "None";
        if (_loc6_ != null) {
            _loc12_ = "lower";
            _loc6_.remove_Me();
        }
        else if (_loc7_ != null) {
            _loc12_ = "increased";
            _loc7_.remove_Me();
        }
        var _loc13_ = "None";
        if (_loc8_ != null) {
            _loc13_ = "lower";
            _loc8_.remove_Me();
        }
        else if (_loc9_ != null) {
            _loc13_ = "increased";
            _loc9_.remove_Me();
        }
        var _loc14_ = "None";
        if (_loc2_ != null) {
            _loc14_ = "lower";
            _loc2_.remove_Me();
        }
        else if (_loc3_ != null) {
            _loc14_ = "increased";
            _loc3_.remove_Me();
        }
        var _loc15_ = "None";
        if (_loc4_ != null) {
            _loc15_ = "lower";
            _loc4_.remove_Me();
        }
        else if (_loc5_ != null) {
            _loc15_ = "increased";
            _loc5_.remove_Me();
        }
        var _loc24_ = 0;
        while (_loc24_ < _loc10_.length) {
            _loc11_ = _loc10_[_loc24_];
            if (_loc15_ != "None") {
                _loc16_ = _loc11_.check_Effects(Class_801);
                _loc20_ = _loc11_.check_Effects(Class_800);
                if (_loc15_ == "lower") {
                    if (!_loc20_) {
                        if (_loc16_) {
                            _loc16_.remove_Me();
                        }
                        _loc11_.add_Effect(new Class_800(_loc11_, Class_133.name_1));
                    }
                }
                else if (_loc15_ == "increased") {
                    if (!_loc16_) {
                        if (_loc20_) {
                            _loc20_.remove_Me();
                        }
                        _loc11_.add_Effect(new Class_801(_loc11_, Class_133.name_1));
                    }
                }
            }
            if (_loc14_ != "None") {
                _loc17_ = _loc11_.check_Effects(Class_805);
                _loc21_ = _loc11_.check_Effects(Class_802);
                if (_loc14_ == "lower") {
                    if (!_loc21_) {
                        if (_loc17_) {
                            _loc17_.remove_Me();
                        }
                        _loc11_.add_Effect(new Class_802(_loc11_, Class_133.name_1));
                    }
                }
                else if (_loc14_ == "increased") {
                    if (!_loc17_) {
                        if (_loc21_) {
                            _loc21_.remove_Me();
                        }
                        _loc11_.add_Effect(new Class_805(_loc11_, Class_133.name_1));
                    }
                }
            }
            if (_loc12_ != "None") {
                _loc19_ = _loc11_.check_Effects(Class_808);
                _loc23_ = _loc11_.check_Effects(Class_807);
                if (_loc12_ == "lower") {
                    if (!_loc23_) {
                        if (_loc19_) {
                            _loc19_.remove_Me();
                        }
                        _loc11_.add_Effect(new Class_807(_loc11_, Class_133.name_1));
                    }
                }
                else if (_loc12_ == "increased") {
                    if (!_loc19_) {
                        if (_loc23_) {
                            _loc23_.remove_Me();
                        }
                        _loc11_.add_Effect(new Class_808(_loc11_, Class_133.name_1));
                    }
                }
            }
            if (_loc13_ != "None") {
                _loc18_ = _loc11_.check_Effects(Class_803);
                _loc22_ = _loc11_.check_Effects(Class_810);
                if (_loc13_ == "lower") {
                    if (!_loc22_) {
                        if (_loc18_) {
                            _loc18_.remove_Me();
                        }
                        _loc11_.add_Effect(new Class_810(_loc11_, Class_133.name_1));
                    }
                }
                else if (_loc13_ == "increased") {
                    if (!_loc18_) {
                        if (_loc22_) {
                            _loc22_.remove_Me();
                        }
                        _loc11_.add_Effect(new Class_803(_loc11_, Class_133.name_1));
                    }
                }
            }
            _loc24_++;
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
        return Class_133.name_2;
    }
}

