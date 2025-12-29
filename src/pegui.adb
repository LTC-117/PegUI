with Peg;          use Peg;
with Peg.UI;       use Peg.UI;
with Peg.Widgets;  use Peg.Widgets;
with Peg.Wrapper;  use Peg.Wrapper;

procedure Pegui is
begin
   -- Peg.UI.UI_Pegui_State := Peg.UI.Main;

   Pegui_Begin;

      Peg.UI.Render_UI;

   Pegui_End;
end Pegui;
