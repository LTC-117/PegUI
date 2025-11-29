with Gtk.Grid; use Gtk.Grid;

package Peg.Widgets is

   --  This package implements types and fundamental functionalities for the
   --  elements of the application's window (widgets like buttons and text).
   --  It's purpose is simple : abstract most of the native gtk elements
   --  implementation, aiming to standardize them through the application.
   --  For example : Create standards for buttons and text sizes, formats,
   --  fonts, colors and positions. It should standardize video and audio
   --  rendering types and functionalities as well.

   --  TODO : Implement button creation types, variables and methods.

   type Widget_Button_Bar_Response is
      (Options, Configurations, Help);

   function Widgets_Render_Button_Bar return Gtk_Grid;
   --  Function to render the button bar at the top of the window.
   --  Bar must have options like 'Configurations', 'Help' and ''

end Peg.Widgets;
