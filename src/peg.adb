with Gtk.Button;
with Gtk.Main;
with Gtk.Application;

with Gtk.Label;   use Gtk.Label;
with Gtk.Window;  use Gtk.Window;
with Gtk.Widget;  use Gtk.Widget;
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
          Width => Window_Width,
          Height => Window_Height);

   end Pegui_Begin;

   ---------------
   -- Pegui_End --
   ---------------

   procedure Pegui_End is
   begin
      --Gtk.Window.Show (Main_Window);
      Main_Window.Show_All;
      Gtk.Main.Main;
   end Pegui_End;

end Peg;
