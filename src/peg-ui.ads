package Peg.UI is

   --  This package implements an abstraction layer for the GUI of the app.
   --  It must be responsible for all of the window functionalities,
   --  elements and characteristics, uniting all the elements from the Peg-UI
   --  package, with the functionalities of Peg.Wrapper package. In general,
   --  it will just wrap up the functionalities with the widgets and organize
   --  each state of the application's state machine. Then it will be up to the
   --  main procedure to manage each state generated here.

   function Test_Pegui_UI return Boolean;
   --  Merely here to test if the package would work. Remove soon.

end Peg.UI;
