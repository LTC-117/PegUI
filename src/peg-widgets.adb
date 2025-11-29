with Ada.Text_IO; use Ada.Text_IO;
with Gtk.Grid;    use Gtk.Grid;
with Gtk.Button;  use Gtk.Button;
with Glib.Object; use Glib.Object;

with Gtk.Enums;

package body Peg.Widgets is

   --  TODO : Finish implementing specifications file first!

   -------------------------------
   -- Widgets_Render_Button_Bar --
   -------------------------------

   function Widgets_Render_Button_Bar return Gtk_Grid is

      Button_Bar     : Gtk_Grid;
      Button_Options : Gtk_Button;
      Button_Configs : Gtk_Button;
      Button_Help    : Gtk_Button;
      Button_Buffer  : GObject;

   begin

      Button_Bar := Gtk.Grid.Gtk_Grid_New;

      Button_Options := Gtk.Button.Gtk_Button_New_With_Mnemonic ("Options");
      Button_Configs := Gtk.Button.Gtk_Button_New_With_Mnemonic ("Configs");
      Button_Help    := Gtk.Button.Gtk_Button_New_With_Mnemonic ("Help");

      Gtk.Grid.Attach
         (Self   => Button_Bar,
          Child  => Button_Options,
          Left   => 0,
          Top    => 0,
          Width  => 5,
          Height => 1);

      Gtk.Grid.Attach
         (Self   => Button_Bar,
          Child  => Button_Configs,
          Left   => 6,
          Top    => 0,
          Width  => 5,
          Height => 1);

      Gtk.Grid.Attach
         (Self   => Button_Bar,
          Child  => Button_Help,
          Left   => 11,
          Top    => 0,
          Width  => 5,
          Height => 1);

      return Button_Bar;
   end Widgets_Render_Button_Bar;

end Peg.Widgets;
