package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_18 {

    @:allow(code) function method_137(param1:String, param2:Int):String {
        var _loc8_ = 0;
        var _loc9_:ASAny = null;
        var _loc3_ = this.method_150(param1);
        if (param1.length != 14) {
            return this.method_118();
        }
        if (_loc3_ == 0) {
            return this.method_118();
        }
        if (param2 < 333 || param2 > 99999) {
            return this.method_118();
        }
        var _loc4_ = 0;
        _loc4_ = (_loc4_ = param2 * _loc3_) * 14;
        var _loc5_ = "" + _loc4_;
        var _loc6_ = ASCompat.toInt(_loc5_.charAt(0));
        var _loc7_ = "";
        var _loc10_ = 0;
        while (_loc10_ < _loc5_.length) {
            _loc8_ = ASCompat.toInt(_loc5_.charAt(_loc10_)) + _loc6_;
            _loc9_ = this.method_68(_loc8_ + "");
            _loc7_ += _loc9_;
            _loc10_++;
        }
        return _loc7_;
    }

    @:allow(code) function method_118():String {
        var _loc1_ = 0;
        var _loc2_:ASAny = null;
        var _loc3_ = "";
        var _loc4_ = 0;
        while (_loc4_ <= 7) {
            _loc1_ = Std.int(Math.random() * 26);
            _loc2_ = this.method_68(_loc1_ + "");
            _loc3_ += _loc2_;
            _loc3_ += Std.int(Math.random() * 10);
            _loc4_++;
        }
        return _loc3_;
    }

    @:allow(code) function method_435(param1:String, param2:Int, param3:Int, param4:Int, param5:Int, param6:Int, param7:Int, param8:Int, param9:Int):String {
        return "&valCode=" + this.method_368(param1, param2, param3, param4, param5, param6, param7, param8, param9);
    }

    @:allow(code) function method_368(param1:String, param2:Int, param3:Int, param4:Int, param5:Int, param6:Int, param7:Int, param8:Int, param9:Int):String {
        var _loc12_:ASAny = null;
        var _loc14_ = 0;
        var _loc10_:Int;
        var _loc11_:Float = 0;
        _loc11_ = (_loc11_ = (_loc11_ = (_loc11_ = (_loc11_ = (_loc11_ = (_loc11_ = (_loc11_ = (_loc11_ = (_loc11_ = (_loc10_ = this.method_150(param1)) * 2) * param2) + param3) + param4) + param5) + param6) * param8) + param9) + param7) * _loc10_;
        var _loc13_ = "";
        var _loc15_ = "" + _loc11_;
        var _loc16_ = ASCompat.toInt(_loc15_.charAt(0));
        var _loc17_ = 0;
        while (_loc17_ < _loc15_.length) {
            _loc14_ = ASCompat.toInt(_loc15_.charAt(_loc17_)) + _loc16_;
            _loc12_ = this.method_68(_loc14_ + "");
            _loc13_ += _loc12_;
            _loc17_++;
        }
        return _loc13_;
    }

    function method_430(param1:Int):String {
        var _loc2_ = "" + param1;
        var _loc3_ = "";
        var _loc4_ = 0;
        while (_loc4_ < _loc2_.length) {
            _loc3_ += this.method_68(_loc2_.charAt(_loc4_));
            _loc4_++;
        }
        return _loc3_;
    }

    function method_150(param1:String):Int {
        var _loc2_ = 0;
        var _loc3_ = 0;
        while (_loc3_ < param1.length) {
            _loc2_ += this.method_332(param1.charAt(_loc3_));
            _loc3_++;
        }
        return _loc2_;
    }

    @:allow(code) function method_332(param1:String):Int {
        var _loc2_ = 0;
        if (param1 == "a" || param1 == "1") {
            _loc2_ = 1;
        }
        else if (param1 == "b" || param1 == "2") {
            _loc2_ = 2;
        }
        else if (param1 == "c" || param1 == "3") {
            _loc2_ = 3;
        }
        else if (param1 == "d" || param1 == "4") {
            _loc2_ = 4;
        }
        else if (param1 == "e" || param1 == "5") {
            _loc2_ = 5;
        }
        else if (param1 == "f" || param1 == "6") {
            _loc2_ = 6;
        }
        else if (param1 == "g" || param1 == "7") {
            _loc2_ = 7;
        }
        else if (param1 == "h" || param1 == "8") {
            _loc2_ = 8;
        }
        else if (param1 == "i" || param1 == "9") {
            _loc2_ = 9;
        }
        else if (param1 == "j") {
            _loc2_ = 10;
        }
        else if (param1 == "k") {
            _loc2_ = 11;
        }
        else if (param1 == "l") {
            _loc2_ = 12;
        }
        else if (param1 == "m") {
            _loc2_ = 13;
        }
        else if (param1 == "n") {
            _loc2_ = 14;
        }
        else if (param1 == "o") {
            _loc2_ = 15;
        }
        else if (param1 == "p") {
            _loc2_ = 16;
        }
        else if (param1 == "q") {
            _loc2_ = 17;
        }
        else if (param1 == "r") {
            _loc2_ = 18;
        }
        else if (param1 == "s") {
            _loc2_ = 19;
        }
        else if (param1 == "t") {
            _loc2_ = 20;
        }
        else if (param1 == "u") {
            _loc2_ = 21;
        }
        else if (param1 == "v") {
            _loc2_ = 22;
        }
        else if (param1 == "w") {
            _loc2_ = 23;
        }
        else if (param1 == "x") {
            _loc2_ = 24;
        }
        else if (param1 == "y") {
            _loc2_ = 25;
        }
        else if (param1 == "z") {
            _loc2_ = 26;
        }
        return _loc2_;
    }

    @:allow(code) function method_68(param1:String):String {
        var _loc2_ = "";
        if (param1 == "0") {
            _loc2_ = "a";
        }
        else if (param1 == "1") {
            _loc2_ = "b";
        }
        else if (param1 == "2") {
            _loc2_ = "c";
        }
        else if (param1 == "3") {
            _loc2_ = "d";
        }
        else if (param1 == "4") {
            _loc2_ = "e";
        }
        else if (param1 == "5") {
            _loc2_ = "f";
        }
        else if (param1 == "6") {
            _loc2_ = "g";
        }
        else if (param1 == "7") {
            _loc2_ = "h";
        }
        else if (param1 == "8") {
            _loc2_ = "i";
        }
        else if (param1 == "9") {
            _loc2_ = "j";
        }
        else if (param1 == "10") {
            _loc2_ = "k";
        }
        else if (param1 == "11") {
            _loc2_ = "l";
        }
        else if (param1 == "12") {
            _loc2_ = "m";
        }
        else if (param1 == "13") {
            _loc2_ = "n";
        }
        else if (param1 == "14") {
            _loc2_ = "o";
        }
        else if (param1 == "15") {
            _loc2_ = "p";
        }
        else if (param1 == "16") {
            _loc2_ = "q";
        }
        else if (param1 == "17") {
            _loc2_ = "r";
        }
        else if (param1 == "18") {
            _loc2_ = "s";
        }
        else if (param1 == "19") {
            _loc2_ = "t";
        }
        else if (param1 == "20") {
            _loc2_ = "u";
        }
        else if (param1 == "21") {
            _loc2_ = "v";
        }
        else if (param1 == "22") {
            _loc2_ = "w";
        }
        else if (param1 == "23") {
            _loc2_ = "x";
        }
        else if (param1 == "24") {
            _loc2_ = "y";
        }
        else if (param1 == "25") {
            _loc2_ = "z";
        }
        return _loc2_;
    }

    public function new() {}
}

