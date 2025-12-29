with Ada.Text_IO;    use Ada.Text_IO;
with Gtk.Button;     use Gtk.Button;
with Gtk.Grid;       use Gtk.Grid;
with Gtk.Handlers;   use Gtk.Handlers;
with Peg;            use Peg;

package body Peg.UI is

   --  TODO : Finish implementing specifications file first!

   ---------------
   -- Render_UI --
   ---------------

   procedure Render_UI is

      procedure Clear_Grid is
         Child : Gtk.Widget.Gtk_Widget;
      begin
         loop
            Child := Peg.Main_Grid.Get_Child_At (0, 0);
            exit when Child = null;
            Main_Grid.Remove (Child);
         end loop;
      end Clear_Grid;

   begin
      Clear_Grid;

      case UI_Pegui_State is
         when Main  => UI_Pegui_State := UI_Main_Screen;
         when Video => UI_Pegui_State := UI_Video_Screen;
         when Audio => UI_Pegui_State := UI_Audio_Screen;
      end case;

      Peg.Main_Grid.Show_All;
   end Render_UI;

   ---------------------
   -- On_Main_Clicked --
   ---------------------

   procedure On_Main_Clicked (Button : access Gtk_Button_Record'Class) is
   begin
      Peg.UI.UI_Pegui_State := Video;
      Put_Line ("Botão Clicado");
      Render_UI;
   end On_Main_Clicked;

   --------------------
   -- UI_Main_Screen --
   --------------------

   function UI_Main_Screen return UI_Screen_State is
      Btn : Gtk_Button;
   begin
      Btn := Gtk.Button.Gtk_Button_New_With_Mnemonic ("Main");
      Set_Halign (Btn, Align_Center);
      Set_Valign (Btn, Align_Center);

      Gtk.Button.On_Clicked
         (Self => Btn,
          Call => On_Main_Clicked'Access);

      Gtk.Grid.Attach
         (Self   => Peg.Main_Grid,
          Child  => Btn,
          Left   => 0,
          Top    => 0,
          Width  => 5,
          Height => 5);

      return Peg.UI.UI_Pegui_State;
   end UI_Main_Screen;

   ----------------------
   -- On_Video_Clicked --
   ----------------------

   procedure On_Video_Clicked (Button : access Gtk_Button_Record'Class) is
   begin
      Peg.UI.UI_Pegui_State := Audio;
      Put_Line ("Botão Clicado");
      Render_UI;
   end On_Video_Clicked;

   ---------------------
   -- UI_Video_Screen --
   ---------------------

   function UI_Video_Screen return UI_Screen_State is
      Btn : Gtk_Button;
   begin
      Btn := Gtk.Button.Gtk_Button_New_With_Mnemonic ("Video");
      Set_Halign (Btn, Align_Center);
      Set_Valign (Btn, Align_Center);

      Gtk.Button.On_Clicked
         (Self => Btn,
          Call => On_Video_Clicked'Access);

      Gtk.Grid.Attach
         (Self   => Peg.Main_Grid,
          Child  => Btn,
          Left   => 0,
          Top    => 0,
          Width  => 5,
          Height => 5);

      return Video;
   end UI_Video_Screen;

   ----------------------
   -- On_Audio_Clicked --
   ----------------------

   procedure On_Audio_Clicked (Button : access Gtk_Button_Record'Class) is
   begin
      Peg.UI.UI_Pegui_State := Main;
      Put_Line ("Botão Clicado");
      Render_UI;
   end On_Audio_Clicked;

   ---------------------
   -- UI_Audio_Screen --
   ---------------------

   function UI_Audio_Screen return UI_Screen_State is
      Btn : Gtk_Button;
   begin
      Btn := Gtk.Button.Gtk_Button_New_With_Mnemonic ("Audio");
      Set_Halign (Btn, Align_Center);
      Set_Valign (Btn, Align_Center);

      Gtk.Button.On_Clicked
         (Self => Btn,
          Call => On_Audio_Clicked'Access);

      Gtk.Grid.Attach
         (Self   => Peg.Main_Grid,
          Child  => Btn,
          Left   => 0,
          Top    => 0,
          Width  => 5,
          Height => 5);

      return Audio;
   end UI_Audio_Screen;

end Peg.UI;
