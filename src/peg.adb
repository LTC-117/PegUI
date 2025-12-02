with Gtk.Widget;  use Gtk.Widget;
with Gtk.Button;  use Gtk.Button;
with Gtk.Main;    use Gtk.Main;
with Gtk.Application;
with Gtk.Container;

with Gtk.Label;   use Gtk.Label;
with Gtk.Window;  use Gtk.Window;
with Gtk.Table;   use Gtk.Table;
with Gtk.Button;  use Gtk.Button;
with Glib;        use Glib;

with Ada.Unchecked_Conversion;
with Gdk.Event;

package body Peg is

   -----------------
   -- Pegui_Begin --
   -----------------

   procedure Pegui_Begin is
   begin
      Gtk.Main.Init;

      Gtk.Window.Gtk_New (Main_Window);
      Gtk.Window.Set_Title (Main_Window, "PegUI");
      Gtk.Window.Set_Default_Size
         (Window => Main_Window,
          Width  => Window_Width,
          Height => Window_Height);

      Gtk_New_Vbox (Box => Main_Box, Homogeneous => True, Spacing => 0);
      Set_Hexpand (Main_Box, True);
      Set_Vexpand (Main_Box, True);
      Add (Main_Window, Main_Box);

      Main_Grid := Gtk.Grid.Gtk_Grid_New;
      Set_Hexpand (Main_Grid, True);
      Set_Vexpand (Main_Grid, True);
      Pack_Start
         (In_Box  => Main_Box,
          Child   => Main_Grid,
          Expand  => True,
          Fill    => True,
          Padding => 0);
   end Pegui_Begin;

   ---------------
   -- Pegui_End --
   ---------------

   procedure Pegui_End is
   begin
      Main_Window.Show_All;
      Gtk.Main.Main;
   end Pegui_End;

end Peg;
