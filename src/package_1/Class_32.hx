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

class Class_32 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_192 = 1;

    static inline final const_322 = 2;

    static inline final const_306 = 3;

    static inline final const_387 = 4;

    static inline final const_345 = 5;

    static inline final const_302 = 6;

    static inline final const_392 = 7;

    static inline final const_328 = 8;

    static inline final const_207 = 9;

    static inline final const_223 = 10;

    static inline final const_283 = 11;

    static inline final const_415 = 12;

    static inline final const_315 = 13;

    static inline final const_331 = 14;

    static inline final const_346 = 15;

    static inline final const_318 = 16;

    static inline final const_294 = 17;

    static inline final const_265 = 18;

    static inline final const_277 = 19;

    static inline final const_229 = 20;

    static inline final const_278 = 21;

    static inline final const_296 = 22;

    static inline final const_321 = 23;

    static inline final const_390 = 24;

    static inline final const_316 = 25;

    static inline final const_237 = 26;

    static inline final const_386 = 27;

    static inline final const_263 = 28;

    static inline final const_245 = 29;

    static inline final const_194 = 30;

    static inline final const_368 = 31;

    static inline final const_406 = 32;

    static inline final const_293 = 33;

    static inline final const_305 = 34;

    static inline final const_401 = 35;

    static inline final const_359 = 36;

    static inline final const_248 = 37;

    static inline final const_259 = 38;

    static inline final const_411 = 39;

    static inline final const_326 = 40;

    static inline final const_398 = 41;

    static inline final const_313 = 42;

    static inline final const_344 = 43;

    static inline final const_400 = 44;

    static inline final const_370 = 45;

    static inline final const_414 = 46;

    static inline final const_362 = 47;

    static inline final const_340 = 6;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 47;
    }

    override public function do_Wave() {
        if (var_5 <= 1) {
            my_Parent.add_Enemy_Poke(method_1(var_6));
        }
        if (var_5 < 1) {
            var_11 = 150;
            var_142 = 0;
            ++var_5;
            return;
        }
        if (var_6 == 47) {
            var_6 = 48;
            wave_Finished();
            return;
        }
        method_4(++var_6);
        var_11 = 180;
        var_142 = 0;
        var_5 = 0;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).level = 53;
        if (param1 == Class_32.const_192) {
            _loc4_.num = Class_13.const_69;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_366;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_322) {
            _loc4_.num = Class_13.const_57;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_133;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_306) {
            _loc4_.num = Class_13.const_66;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_271;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_387) {
            _loc4_.num = Class_13.const_65;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_174;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_345) {
            _loc4_.num = Class_13.const_123;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_519;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_302) {
            _loc4_.num = Class_13.const_37;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_226;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_392) {
            _loc4_.num = Class_13.const_135;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_112;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_328) {
            _loc4_.num = Class_13.const_96;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_281;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_207) {
            _loc4_.num = Class_13.const_97;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_82;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_223) {
            _loc4_.num = Class_13.const_53;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_67;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_283) {
            _loc4_.num = Class_13.const_89;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_88;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_415) {
            _loc4_.num = Class_13.const_156;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_100;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_315) {
            _loc4_.num = Class_13.const_139;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_104;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_331) {
            _loc4_.num = Class_13.const_136;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_222;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_346) {
            _loc4_.num = Class_13.const_128;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_290;
        }
        else if (param1 == Class_32.const_318) {
            _loc4_.num = Class_13.const_114;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_206;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_294) {
            _loc4_.num = Class_13.const_70;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_261;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_265) {
            _loc4_.num = Class_13.const_54;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_259;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_277) {
            _loc4_.num = Class_13.const_101;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_187;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_229) {
            _loc4_.num = Class_13.const_58;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_146;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_278) {
            _loc4_.num = Class_13.const_131;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_162;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_296) {
            _loc4_.num = Class_13.const_38;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_257;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_321) {
            _loc4_.num = Class_13.const_76;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_71;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_390) {
            _loc4_.num = Class_13.const_80;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_364;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_316) {
            _loc4_.num = Class_13.const_119;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_173;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_237) {
            _loc4_.num = Class_13.const_49;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_216;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_386) {
            _loc4_.num = Class_13.const_79;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_329;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_263) {
            _loc4_.num = Class_13.const_106;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_192;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_245) {
            _loc4_.num = Class_13.const_125;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_305;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_194) {
            _loc4_.num = Class_13.const_51;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_266;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_368) {
            _loc4_.num = Class_13.const_113;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_382;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_406) {
            _loc4_.num = Class_13.const_149;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_184;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_293) {
            _loc4_.num = Class_13.const_16;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_124;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_305) {
            _loc4_.num = Class_13.const_55;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_207;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_401) {
            _loc4_.num = Class_13.const_73;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_135;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_359) {
            _loc4_.num = Class_13.const_110;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_208;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_248) {
            _loc4_.num = Class_13.const_111;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_51;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_259) {
            _loc4_.num = Class_13.const_121;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_244;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_411) {
            _loc4_.num = Class_13.const_151;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_223;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_326) {
            _loc4_.num = Class_13.const_117;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_537;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_398) {
            _loc4_.num = Class_13.const_146;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_330;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_313) {
            _loc4_.num = Class_13.const_103;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_47;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_344) {
            _loc4_.num = Class_13.const_90;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_60;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_400) {
            _loc4_.num = Class_13.const_41;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_151;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_370) {
            _loc4_.num = Class_13.const_72;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_62;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_414) {
            _loc4_.num = Class_13.const_172;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_575;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_32.const_362) {
            _loc4_.num = Class_13.const_108;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_387;
            _loc4_.var_13 = 1;
        }
        _loc4_.var_39 = false;
        _loc4_.var_19 = "pje";
        _loc4_.shiny = 1;
        _loc4_.var_107 = true;
        _loc4_.var_27 *= 2;
        _loc4_.speed = Std.int(_loc4_.speed / 2);
        _loc4_.var_26 *= 2;
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 = Std.int(_loc4_.var_16 * 1.5);
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_30 = Std.int(_loc4_.var_30 / 4);
        _loc4_.var_28 = Std.int(_loc4_.var_28 / 4);
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

