with Peg;          use Peg;
with Peg.UI;       use Peg.UI;
with Peg.Widgets;  use Peg.Widgets;
with Peg.Wrapper;  use Peg.Wrapper;

procedure Pegui is

   Pegui_State : UI_Screen_State := Peg.UI.Main;

begin
   Pegui_Begin;

      case Pegui_State is
         when Main  => Pegui_State := Peg.UI.UI_Main_Screen;
         when Video => Pegui_State := Peg.UI.UI_Video_Screen;
         when Audio => Pegui_State := Peg.UI.UI_Audio_Screen;
      end case;

   Pegui_End;
end Pegui;
