with Ada.Text_IO; use Ada.Text_IO;
with Gtk.Button;  use Gtk.Button;
with Gtk.Grid;    use Gtk.Grid;
with Peg;         use Peg;

package body Peg.UI is

   --  TODO : Finish implementing specifications file first!

   --------------------
   -- UI_Main_Screen --
   --------------------

   function UI_Main_Screen return UI_Screen_State is
      Btn : Gtk_Button;
   begin
      Btn := Gtk.Button.Gtk_Button_New_With_Mnemonic ("Main");
      Set_Halign (Btn, Align_Center);
      Set_Valign (Btn, Align_Center);

      Gtk.Grid.Attach
         (Self   => Peg.Main_Grid,
          Child  => Btn,
          Left   => 0,
          Top    => 0,
          Width  => 5,
          Height => 5);

      return Main;
   end UI_Main_Screen;

   ---------------------
   -- UI_Video_Screen --
   ---------------------

   function UI_Video_Screen return UI_Screen_State is
      Btn : Gtk_Button;
   begin
      Btn := Gtk.Button.Gtk_Button_New_With_Mnemonic ("Video");
      Set_Halign (Btn, Align_Center);
      Set_Valign (Btn, Align_Center);

      Gtk.Grid.Attach
         (Self   => Peg.Main_Grid,
          Child  => Btn,
          Left   => 0,
          Top    => 0,
          Width  => 5,
          Height => 5);

      return Video;
   end UI_Video_Screen;

   ---------------------
   -- UI_Audio_Screen --
   ---------------------

   function UI_Audio_Screen return UI_Screen_State is
      Btn : Gtk_Button;
   begin
      Btn := Gtk.Button.Gtk_Button_New_With_Mnemonic ("Audio");
      Set_Halign (Btn, Align_Center);
      Set_Valign (Btn, Align_Center);

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
