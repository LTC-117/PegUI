with Gtk.Window;  use Gtk.Window;
with Gtk.Main;    use Gtk.Main;
with Glib;        use Glib;

procedure Pegui is
   Window : Gtk_Window;
   W_Width : Gint := 800;
   W_Height : Gint := 600;
begin

   Gtk.Main.Init;

   Gtk.Window.Gtk_New (Window);

   Set_Default_Size (Window => Window, Width => W_Width, Height => W_Height);

   Gtk.Window.Show (Window);

   Gtk.Main.Main;

end Pegui;
