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

package body Pegui is

   -----------------------
   -- Pegui_Window_Init --
   -----------------------

   procedure Pegui_Window_Init is
   begin
      Gtk.Main.Init;

      Gtk.Window.Gtk_New (Main_Window);
      Gtk.Window.Set_Title (Main_Window, "PegUI");
      Gtk.Window.Set_Default_Size
         (Window => Main_Window,
          Width => Window_Width,
          Height => Window_Height);

   end Pegui_Window_Init;

   -------------------------
   -- Pegui_Window_Finish --
   -------------------------

   procedure Pegui_Window_Finish is
   begin
      Main_Window.Show_All;
      Gtk.Main.Main;
   end Pegui_Window_Finish;

end Pegui;
