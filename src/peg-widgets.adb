package body Peg.Widgets is

   --  TODO : Finish implementing specifications file first!

   function Test_Pegui_Widgets return Boolean is
   begin
      return True;
   end Test_Pegui_Widgets;

   function Widgets_Render_Button_Bar return Widget_Button_Bar_Response is
   begin
      return Options;
   end Widgets_Render_Button_Bar;

end Peg.Widgets;
