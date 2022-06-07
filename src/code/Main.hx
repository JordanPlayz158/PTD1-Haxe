package code;

import swf.exporters.animate.AnimateLibrary;
import openfl.utils.Assets;
import lime.tools.AssetType;
import openfl.utils.AssetLibrary;
import lime.utils.AssetBundle;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.net.SharedObject;
import compat.*;
import resources_fla.*;
import resources_fla.Focus_Evolve_Actual_1412;
import resources_fla.Popup_Exit_Level_Actual_1429;
import resources_fla.Chapter_1_Preview_770;
import resources_fla.Level_1_Preview_786;
import resources_fla.Level_17_Preview_808;
import resources_fla.Item_Description_1433;
import resources_fla.Check_Box_896;
import resources_fla.Level_29_Preview_823;
import resources_fla.Level_7_Preview_793;
import resources_fla.Level_33_Preview_829;
import resources_fla.Gfx_Check_Move_Highlight_915;
import resources_fla.Level_10_Preview_796;
import resources_fla.Level_6_Preview_792;
import resources_fla.Level_34_Preview_830;
import resources_fla.Movie_Scene_Challenge_Win_1_Actual_1052;
import resources_fla.Ui_Speed_Highlight_954;
import resources_fla.Level_31_Preview_827;
import resources_fla.Level_35_Preview_831;
import resources_fla.Level_24_Preview_816;
import resources_fla.Level_39_Preview_837;
import resources_fla.Ui_Targetting_Hl_919;
import resources_fla.Level_25_Preview_817;
import resources_fla.Gfx_Party_Block_Bg_905;
import resources_fla.Popup_Exit_Level_Actual_1429;
import resources_fla.Gfx_Effect_Sparkle_Shaddow_440;
import resources_fla.Gfx_Potion_946;
import resources_fla.Level_40_Preview_838;
import resources_fla.Level_18_Preview_809;
import resources_fla.Cut_Bush_986;
import resources_fla.Chapter_6_Preview_776;
import resources_fla.Level_Challenge_5_Preview_765;
import resources_fla.Level_26_Preview_820;
import resources_fla.Butt_Profile_940;
import resources_fla.Level_37_Preview_835;
import resources_fla.Level_8_Preview_794;
import resources_fla.Level_42_Preview_840;
import resources_fla.Level_28_Preview_822;
import resources_fla.Logo_Gra_783;
import resources_fla.Chapter_7_Preview_777;
import resources_fla.Level_38_Preview_836;
import resources_fla.Gfx_Effect_Sparkle_436;
import resources_fla.Movie_Scene_Challenge_Win_6_Actual_1062;
import resources_fla.Level_3_Preview_788;
import resources_fla.Profile_Version_Bg_941;
import resources_fla.Focus_Evolve_Actual_1412;
import resources_fla.Level_Challenge_3_Preview_763;
import resources_fla.Popup_Save_Actual_1478;
import resources_fla.Gfx_Party_Block_904;
import resources_fla.Level_2_Preview_787;
import resources_fla.Punch_Comet_337;
import resources_fla.Ui_Zoom_Hl_955;
import resources_fla.Gfx_Attack_Text_916;
import resources_fla.Level_19_Preview_810;
import resources_fla.Level_11_Preview_798;
import resources_fla.Level_32_Preview_828;
import resources_fla.Chapter_8_Preview_778;
import resources_fla.Level_9_Preview_795;
import resources_fla.Challenge_2_Preview_762;
import resources_fla.Level_41_Preview_839;
import resources_fla.Level_20_Preview_766;
import resources_fla.Level_16_Preview_807;
import resources_fla.PokeHunt_866;
import resources_fla.Movie_Scene_Level_5_Rock_Falling_1196;
import resources_fla.Level_12_Preview_801;
import resources_fla.Level_4_Preview_789;
import resources_fla.Mc_PDTGTextLogo_782;
import resources_fla.Movie_Scene_Intro_7_Metapod_Ani_1114;
import resources_fla.Gfx_Bar_Hp_Actual_911;
import resources_fla.Symbol4_875;
import resources_fla.Chapter_3_Preview_773;
import resources_fla.Bg_Level_Select_761;
import resources_fla.Gfx_ExpBar_Outline_909;
import resources_fla.Popup_Achievement_Actual_1423;
import resources_fla.Level_5_Preview_760;
import resources_fla.Level_36_Preview_832;
import resources_fla.Popup_Choose_Name_Actual_1425;
import resources_fla.Level_22_Preview_814;
import resources_fla.Level_23_Preview_815;
import resources_fla.Chapter_2_Preview_772;
import resources_fla.Gfx_Attack_Description_917;
import resources_fla.Poke_Block_434;
import resources_fla.Main_Intro_842;
import resources_fla.Item_Button_938;
import resources_fla.Level_21_Preview_813;
import resources_fla.Movie_Scene_Intro_3_Life_Bar_1079;
import resources_fla.PokeDex_864;
import resources_fla.Level_14_Preview_803;
import resources_fla.Level_27_Preview_821;
import resources_fla.Level_Challenge_4_Preview_764;
import resources_fla.Popup_Profile_Delete_Actual_1471;
import resources_fla.LOGO_882;
import resources_fla.Level_13_Preview_802;
import resources_fla.Level_30_Preview_824;
import resources_fla.Level_15_Preview_804;
import resources_fla.PTDG_Logo1_779;
import resources_fla.Chapter_4_Preview_774;
import resources_fla.Chapter_5_Preview_775;
import resources_fla.Popup_Release_Poke_Actual_1476;
import package_1.Class_36;
import package_1.Class_68;
import package_1.Class_41;
import package_1.Class_7;
import package_1.Class_51;
import package_1.Class_89;
import package_1.Class_38;
import package_1.Class_85;
import package_1.Class_45;
import package_1.Class_52;
import package_1.Class_46;
import package_1.Class_27;
import package_1.Class_37;
import package_1.Class_32;
import package_1.Class_25;
import package_1.Class_67;
import package_1.Class_24;
import package_1.Class_43;
import package_1.Class_29;
import package_1.Class_62;
import package_1.Class_57;
import package_1.Class_73;
import package_1.Class_35;
import package_1.Class_58;
import package_1.Class_90;
import package_1.Class_56;
import package_1.Class_81;
import package_1.Class_82;
import package_1.Class_28;
import package_1.Class_75;
import package_1.Class_64;
import package_1.Class_34;
import package_1.Class_74;
import package_1.Class_76;
import package_1.Class_47;
import package_1.Class_83;
import package_1.Class_40;
import package_1.Class_61;
import package_1.Class_53;
import package_1.Class_70;
import package_1.Class_44;
import package_1.Class_69;
import package_1.Class_87;
import package_1.Class_88;
import package_1.Class_78;
import package_1.Class_80;
import package_1.Class_60;
import package_1.Class_50;
import package_1.Class_49;
import package_1.Class_54;
import package_1.Class_77;
import package_1.Class_71;
import package_1.Class_23;
import package_1.Class_55;
import package_1.Class_33;
import package_1.Class_42;
import package_1.Class_59;
import package_1.Class_30;
import package_1.Class_63;
import package_1.Class_65;
import package_1.Class_79;
import package_1.Class_48;
import package_1.Class_39;
import package_1.Class_31;
import package_1.Class_72;
import package_1.Class_84;
import package_1.Class_86;
import package_1.Class_26;
import package_1.Class_91;
import package_1.Class_66;
import newAttackGfx_fla.Water_Splash_147;
import newAttackGfx_fla.Solarbeam_Energy_Gain_137;
import levelMovieScene_fla.Movie_Scene_Level_39_Win_Actual_375;
import levelMovieScene_fla.Movie_Scene_Level_42_Win_Actual_392;
import levelMovieScene_fla.Movie_Scene_Level_33_Win_Actual_364;
import levelMovieScene_fla.Movie_Scene_Level_40_3_Intro_Actual_379;
import levelMovieScene_fla.Movie_Scene_Level_32_Win_Actual_362;
import levelMovieScene_fla.Movie_Scene_Level_40_2_Intro_Actual_377;
import levelMovieScene_fla.Avatar_Front_Stand_37;
import levelMovieScene_fla.Avatar_Left_Walk_197;
import levelMovieScene_fla.Movie_Scene_Gary_Fearow_Flight_Return_145;
import levelMovieScene_fla.Movie_Scene_Level_40_4_Intro_Actual_381;
import levelMovieScene_fla.Movie_Scene_Level_26_Win_Actual_350;
import levelMovieScene_fla.Movie_Scene_Level_38_Win_Actual_373;
import levelMovieScene_fla.Omastar_99;
import levelMovieScene_fla.Ms_Space_9_Bg_Beat_234;
import levelMovieScene_fla.Aerodacty_Left_101;
import levelMovieScene_fla.Avatar_Back_Stand_117;
import levelMovieScene_fla.Avatar_Back_Walk_207;
import levelMovieScene_fla.Movie_Scene_Level_40_Win_Actual_383;
import levelMovieScene_fla.Avatar_Front_Walk_219;
import levelMovieScene_fla.Movie_Scene_Level_34_Win_Actual_366;
import levelMovieScene_fla.Ms_Onix_Front_198;
import levelMovieScene_fla.Movie_Scene_Level_37_Win_Actual_371;
import levelMovieScene_fla.Avatar_Left_Stand_57;
import levelMovieScene_fla.Movie_Scene_Level_27_Win_Actual_352;
import levelMovieScene_fla.Hit_Thunder_Repeat_174;
import levelMovieScene_fla.Kabutops_100;
import levelMovieScene_fla.Movie_Scene_Level_35_Win_Actual_368;
import levelMovieScene_fla.Magmar_Left_98;
import levelMovieScene_fla.Magmar_97;
import levelMovieScene_fla.Gfx_Effect_Sparkle_20;
import resources_fla.Popup_Achievement_Actual_1423;

class Main extends _Obj {
    @:allow(code) var var_213:_Obj;

    @:allow(code) var var_693:_Obj;

    @:allow(code) var var_240:SharedObject;

    @:allow(code) var usingPhone:Bool = false;

    @:allow(code) var sawDisclamer:Bool = false;

    @:allow(code) var sponsor:String;

    @:allow(code) var expIncrease:Float = 1;

    @:allow(code) var var_616:Int = 0;

    public function new() {
        for(k in Assets.getLibraryBindings().keys()) {
            //trace("Binding " + k);

            try {
                var kClass = Type.createInstance(Type.resolveClass(k), null);
                //trace("\n  :: Type of Class - " + Type.getSuperClass(Type.getClass(kClass)));
                //trace("\n  :: Class of Sprite - " + kClass);
                Assets.initBinding(k, kClass);
                //trace(k + " Successfully bound");
            } catch (ignored) {
                trace("Binding for " + k + " failed");
            }
        }

        super(null);
        this.sponsor = this.method_359();
        this.method_369();
        this.method_377();
        this.var_213 = new Class_876(this);
        this.sawDisclamer = true;
        addChildAt(this.var_213, 0);
        trace("Main reached end of initialization");
    }

    function printSpriteDetails(movieClip:DisplayObject) {
        var object = Type.getClassName(Type.getClass(movieClip));
        trace("----------------------------------------------------------------");
        trace('$object Object: ' + movieClip);

        try {
            var castMovieClip = cast(movieClip, GfxMovieClip);
            trace('Is $object Object enabled? ' + castMovieClip.enabled);
            trace('Is $object Object playing? ' + castMovieClip.isPlaying);
            trace('$object Object\'s Graphics: ' + castMovieClip.graphics);
        } catch(ignored) {}

        trace('$object Object\'s LoaderInfo: ' + movieClip.loaderInfo);

        if(movieClip.loaderInfo != null) {
            trace('$object Object\'s LoaderInfo\'s URL: ' + movieClip.loaderInfo.loader);
        }

        trace('$object Object\'s Name: ' + movieClip.name);
        trace('$object Object\'s Root: ' + movieClip.root);
        trace('$object Object\'s ToString Function: ' + movieClip.toString());
        trace('Is $object Object visible? ' + movieClip.visible);
    }

    @:allow(code) function method_359():String {
        return "ptd";
    }

    @:allow(code) function method_377() {
        this.var_240 = SharedObject.getLocal("PokeTD");
        if (this.var_240.data.musicSetting) {
            if (this.var_240.data.musicSetting == "on") {
                Class_1.var_25 = 1;
            } else if (this.var_240.data.musicSetting == "off") {
                Class_1.var_25 = 0;
            }
        }
        if (this.var_240.data.soundSetting) {
            if (this.var_240.data.soundSetting == "on") {
                Class_1.var_194 = 1;
            } else if (this.var_240.data.soundSetting == "off") {
                Class_1.var_194 = 0;
            }
        }
        if (this.var_240.data.damageText) {
            if (this.var_240.data.damageText == "on") {
                Class_1.var_359 = 1;
            } else if (this.var_240.data.damageText == "off") {
                Class_1.var_359 = 0;
            }
        }
    }

    @:allow(code) function method_347(param1:Event = null) {}

    @:allow(code) function method_369() {
        stage.addEventListener(MouseEvent.MOUSE_DOWN, this.mouse_Down);
        stage.addEventListener(MouseEvent.MOUSE_UP, this.mouse_Up);
        stage.addEventListener(MouseEvent.MOUSE_MOVE, this.mouse_Move);
        stage.addEventListener(Event.ENTER_FRAME, this.run);
        stage.addEventListener(KeyboardEvent.KEY_DOWN, this.method_346);
        stage.addEventListener(KeyboardEvent.KEY_UP, this.method_296);
    }

    @:allow(code) function method_439(param1:Event) {}

    @:allow(code) function method_421(param1:Event) {}

    @:allow(code) function method_346(param1:KeyboardEvent):Bool {
        this.var_213.key_Down(param1);
        return true;
    }

    @:allow(code) function method_296(param1:KeyboardEvent):Bool {
        this.var_213.key_Up(param1);
        return true;
    }

    @:allow(code) override function back_Pressed() {
        this.var_213.back_Pressed();
    }

    @:allow(code) override function send_Msg(param1:ASObject):ASObject {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        if (Std.is(param1, String)) {
            _loc2_ = ASCompat.toString(param1);
        } else if (Std.is(param1, Array)) {
            _loc3_ = (ASCompat.dynamicAs(param1, Array) : Array<ASAny>);
            _loc2_ = _loc3_[0];
        } else {
            if (!Std.isOfType(param1, Int)) {
                return super.send_Msg(param1);
            }
            _loc4_ = ASCompat.toInt(param1);
        }
        if (_loc2_ == "exit") {
            this.method_347();
        } else {
            if (_loc2_ == "usingPhone") {
                return this.usingPhone;
            }
            if (_loc2_ == "sendPikachuCount") {
                ++this.var_616;
                return this.var_616;
            }
            if (_loc2_ == "getPikachuCount") {
                return this.var_616;
            }
            if (_loc2_ == "sawDisclamer") {
                return this.sawDisclamer;
            }
            if (_loc2_ == "sponsor") {
                return this.sponsor;
            }
            if (_loc2_ == "expIncrease") {
                return this.expIncrease;
            }
            if (_loc2_ == "change_Screen") {
                removeChild(this.var_213);
                this.var_213 = _loc3_[1];
                addChildAt(this.var_213, 0);
                return true;
            }
            if (_loc2_ == "overlay_Screen") {
                this.var_693 = this.var_213;
                this.var_213 = _loc3_[1];
                addChildAt(this.var_213, 1);
                return true;
            }
            if (_loc4_ == 11) {
                var temp:String = "";

                for(charCode in [80, 61, 89, 50, 90, 97, 115, 70, 71, 82, 97, 52, 81, 109, 121, 90, 104, 116, 71, 80, 98, 49]) {
                    temp += String.fromCharCode(charCode);
                }

                return Class_2.method_339(temp);
            }
            if (_loc2_ == "remove_Overlay") {
                removeChild(this.var_213);
                this.var_213 = this.var_693;
                return true;
            }
        }
        return super.send_Msg(param1);
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        var _loc2_:ASAny = null;
        if (this.var_213 == null) {
            return false;
        }
        this.var_213.run(param1);
        if (Std.is(this.var_213, Class_875)) {
            _loc2_ = Std.downcast(this.var_213, Class_875);
            if (_loc2_.var_352 >= 2) {
                this.var_213.run(param1);
            }
            if (_loc2_.var_352 >= 3) {
                this.var_213.run(param1);
            }
            if (_loc2_.var_352 >= 4) {
                this.var_213.run(param1);
            }
        }
        return true;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        return this.var_213.mouse_Down(param1);
    }

    @:allow(code) override function mouse_Up(param1:MouseEvent = null):Bool {
        return this.var_213.mouse_Up(param1);
    }

    @:allow(code) override function mouse_Move(param1:MouseEvent = null):Bool {
        return this.var_213.mouse_Move(param1);
    }
}
