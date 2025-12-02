with Gtk.Button;  use Gtk.Button;
with Gtk.Grid;    use Gtk.Grid;

with Peg;         use Peg;

package body Peg.UI is

   --  TODO : Finish implementing specifications file first!

   --------------------
   -- UI_Main_Screen --
   --------------------

   function UI_Main_Screen return UI_Screen_State is
      Button : Gtk_Button;
   begin
      Button := Gtk.Button.Gtk_Button_New_With_Mnemonic ("Main");
      Set_Halign (Button, Align_Center);
      Set_Valign (Button, Align_Center);

      Gtk.Grid.Attach
         (Self   => Peg.Main_Grid,
          Child  => Button,
          Left   => 0,
          Top    => 0,
          Width  => 15,
          Height => 15);

      return Main;
   end UI_Main_Screen;

   ---------------------
   -- UI_Video_Screen --
   ---------------------

   function UI_Video_Screen return UI_Screen_State is
      Button : Gtk_Button;
   begin
      Button := Gtk.Button.Gtk_Button_New_With_Mnemonic ("Video");

      Gtk.Grid.Attach
         (Self   => Peg.Main_Grid,
          Child  => Button,
          Left   => 0,
          Top    => -10,
          Width  => 50,
          Height => 1);

      return Video;
   end UI_Video_Screen;

   ---------------------
   -- UI_Audio_Screen --
   ---------------------

   function UI_Audio_Screen return UI_Screen_State is
      Button : Gtk_Button;
   begin
      Button := Gtk.Button.Gtk_Button_New_With_Mnemonic ("Audio");

      Gtk.Grid.Attach
         (Self   => Peg.Main_Grid,
          Child  => Button,
          Left   => 0,
          Top    => -10,
          Width  => 50,
          Height => 1);

      return Audio;
   end UI_Audio_Screen;

end Peg.UI;
