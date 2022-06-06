package package_1
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import code.Class_13;
import code.Class_6;
import code.Class_875;
import code.Class_9;

class Class_63 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_235 = 1;

    static inline final const_226 = 100;

    static inline final const_252 = 2;

    static inline final const_323 = 1;

    static inline final const_324 = 3;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 6;
    }

    override public function do_Wave() {
        if (var_6 == 1) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52, Class_63.const_235));
                var_11 = 18;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52));
                method_4(++var_6);
                var_5 = 0;
                var_11 = 180;
                return;
            }
        }
        else if (var_6 == 2) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_323));
                var_11 = 18;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52, Class_63.const_235));
                var_11 = 18;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52));
                method_4(++var_6);
                var_5 = 0;
                var_11 = 180;
                return;
            }
        }
        else if (var_6 == 3) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52, Class_63.const_226));
                var_11 = 18;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52));
                var_11 = 18;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_252));
                method_4(++var_6);
                var_5 = 0;
                var_11 = 180;
                return;
            }
        }
        else if (var_6 == 4) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52, Class_63.const_226));
                var_11 = 18;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52));
                var_11 = 18;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52));
                var_11 = 18;
            }
            else if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52));
                var_11 = 18;
            }
            else if (var_5 == 4) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_252));
                method_4(++var_6);
                var_5 = 0;
                var_11 = 180;
                return;
            }
        }
        else if (var_6 == 5) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52, Class_63.const_226));
                var_11 = 18;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52, Class_63.const_235));
                var_11 = 18;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52));
                var_11 = 18;
            }
            else if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52));
                var_11 = 18;
            }
            else if (var_5 == 4) {
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_52));
                var_5 = 20;
                var_11 = -1;
                return;
            }
        }
        else if (var_6 == 6) {
            if (var_5 == 0) {
                my_Parent.move_Screen(0, 0, 1);
                var_11 = 30;
            }
            else if (var_5 == 1) {
                my_Parent.gfx_BG.addChild(new Movie_Scene_Level_2_Youngster());
                var_11 = 240;
            }
            else if (var_5 == 2) {
                my_Parent.gfx_UI.visible = true;
                my_Parent.add_Enemy_Poke(method_1(Class_63.const_324));
                var_6 = 7;
                wave_Finished();
            }
        }
        ++var_5;
    }

    override public function wave_Gone() {
        if (var_6 == 5) {
            my_Parent.gfx_UI.visible = false;
            method_4(++var_6);
            var_5 = 0;
            var_11 = 1;
        }
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        if (param1 == Class_63.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            method_11(_loc4_);
            if (param2 <= 50) {
                _loc4_.num = Class_13.const_28;
                Class_13.method_2(_loc4_);
                _loc4_.level = Std.int(2 + Math.random() * 4);
                _loc4_.move1 = Class_9.var_45;
                _loc4_.var_13 = 1;
                if (_loc4_.level == 5) {
                    _loc4_.move2 = Class_9.var_102;
                    _loc4_.var_13 = 2;
                }
                _loc4_.var_19 = "ew";
                if (_loc4_.name != "Pidgey") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else {
                _loc4_.num = Class_13.const_29;
                Class_13.method_2(_loc4_);
                _loc4_.level = Std.int(2 + Math.random() * 3);
                _loc4_.move1 = Class_9.var_45;
                _loc4_.move2 = Class_9.var_70;
                _loc4_.var_13 = 2;
                if (_loc4_.level == 4) {
                    _loc4_.move3 = Class_9.var_96;
                    _loc4_.var_13 = 3;
                }
                _loc4_.var_19 = "ep";
                if (_loc4_.name != "Rattata") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
        else if (param1 == Class_63.const_323) {
            _loc4_.num = Class_13.const_29;
            Class_13.method_2(_loc4_);
            _loc4_.level = 4;
            _loc4_.move1 = Class_9.var_45;
            _loc4_.move2 = Class_9.var_70;
            _loc4_.move3 = Class_9.var_96;
            _loc4_.var_13 = 3;
            if (_loc4_.name != "Rattata") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_63.const_252) {
            _loc4_.num = Class_13.const_28;
            Class_13.method_2(_loc4_);
            _loc4_.level = 5;
            _loc4_.move1 = Class_9.var_45;
            _loc4_.move2 = Class_9.var_102;
            _loc4_.var_13 = 2;
            if (_loc4_.name != "Pidgey") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_63.const_324) {
            _loc4_.num = Class_13.const_28;
            Class_13.method_2(_loc4_);
            _loc4_.level = 15;
            _loc4_.move1 = Class_9.var_45;
            _loc4_.move2 = Class_9.var_102;
            _loc4_.var_13 = 2;
            _loc4_.var_19 = "pje";
            _loc4_.var_39 = false;
            _loc4_.var_48 = false;
            if (_loc4_.name != "Pidgey") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.speed = Std.int(_loc4_.speed / 2);
        _loc4_.var_16 *= 5;
        _loc4_.var_40 = 0;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

