[Uno.Compiler.UxGenerated]
public partial class WelcomePage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    global::Uno.UX.Property<Fuse.Elements.Visibility> temp_Visibility_inst;
    global::Uno.UX.Property<string> temp1_Value_inst;
    global::Uno.UX.Property<Fuse.Elements.Visibility> temp1_Visibility_inst;
    global::Uno.UX.Property<Fuse.Elements.Visibility> temp2_Visibility_inst;
    global::Uno.UX.Property<Fuse.Elements.Visibility> temp3_Visibility_inst;
    global::Uno.UX.Property<string> temp4_Value_inst;
    global::Uno.UX.Property<Fuse.Elements.Visibility> temp5_Visibility_inst;
    global::Uno.UX.Property<Fuse.Elements.Visibility> temp6_Visibility_inst;
    internal global::Fuse.Reactive.EventBinding temp_eb2;
    internal global::Fuse.Reactive.EventBinding temp_eb3;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb2",
        "temp_eb3"
    };
    static WelcomePage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public WelcomePage(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::app.Text();
        temp_Visibility_inst = new dringo_FuseElementsElement_Visibility_Property(temp, __selector0);
        var temp7 = new global::Fuse.Reactive.Data("visibilityOfRegisterControls");
        var temp8 = "Hallo ";
        var temp9 = new global::Fuse.Reactive.Constant(temp8);
        var temp10 = new global::Fuse.Reactive.Data("username");
        var temp1 = new global::app.Text();
        temp1_Value_inst = new dringo_FuseControlsTextControl_Value_Property(temp1, __selector1);
        var temp11 = new global::Fuse.Reactive.Add(temp9, temp10);
        temp1_Visibility_inst = new dringo_FuseElementsElement_Visibility_Property(temp1, __selector0);
        var temp12 = new global::Fuse.Reactive.Data("visibilityOfStartControls");
        var temp2 = new global::app.Text();
        temp2_Visibility_inst = new dringo_FuseElementsElement_Visibility_Property(temp2, __selector0);
        var temp13 = new global::Fuse.Reactive.Data("visibilityOfStartControls");
        var temp14 = new global::Fuse.Reactive.Data("start");
        var temp3 = new global::Fuse.Controls.StackPanel();
        temp3_Visibility_inst = new dringo_FuseElementsElement_Visibility_Property(temp3, __selector0);
        var temp15 = new global::Fuse.Reactive.Data("visibilityOfStartControls");
        var temp4 = new global::app.TextBox();
        temp4_Value_inst = new dringo_FuseControlsTextInputControl_Value_Property(temp4, __selector1);
        var temp16 = new global::Fuse.Reactive.Data("username");
        var temp17 = new global::Fuse.Reactive.Data("register");
        var temp5 = new global::app.Button();
        temp5_Visibility_inst = new dringo_FuseElementsElement_Visibility_Property(temp5, __selector0);
        var temp18 = new global::Fuse.Reactive.Data("visibilityOfRegisterButton");
        var temp6 = new global::Fuse.Controls.StackPanel();
        temp6_Visibility_inst = new dringo_FuseElementsElement_Visibility_Property(temp6, __selector0);
        var temp19 = new global::Fuse.Reactive.Data("visibilityOfRegisterControls");
        var temp20 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp21 = new global::Fuse.Controls.DockPanel();
        var temp22 = new global::Fuse.Controls.Grid();
        var temp23 = new global::Fuse.Controls.StackPanel();
        var temp24 = new global::Fuse.Controls.Image();
        var temp25 = new global::app.Text();
        var temp26 = new global::app.Text();
        var temp27 = new global::Fuse.Controls.StackPanel();
        var temp28 = new global::Fuse.Reactive.DataBinding(temp_Visibility_inst, temp7, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp29 = new global::Fuse.Reactive.DataBinding(temp1_Value_inst, temp11, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp30 = new global::Fuse.Reactive.DataBinding(temp1_Visibility_inst, temp12, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp31 = new global::Fuse.Reactive.DataBinding(temp2_Visibility_inst, temp13, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp32 = new global::Fuse.Controls.StackPanel();
        var temp33 = new global::app.Button();
        temp_eb2 = new global::Fuse.Reactive.EventBinding(temp14, __g_nametable);
        var temp34 = new global::Fuse.Reactive.DataBinding(temp3_Visibility_inst, temp15, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp35 = new global::Fuse.Controls.StackPanel();
        var temp36 = new global::Fuse.Reactive.DataBinding(temp4_Value_inst, temp16, __g_nametable, Fuse.Reactive.BindingMode.Default);
        temp_eb3 = new global::Fuse.Reactive.EventBinding(temp17, __g_nametable);
        var temp37 = new global::Fuse.Reactive.DataBinding(temp5_Visibility_inst, temp18, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp38 = new global::Fuse.Reactive.DataBinding(temp6_Visibility_inst, temp19, __g_nametable, Fuse.Reactive.BindingMode.Default);
        temp20.LineNumber = 3;
        temp20.FileName = "Pages/WelcomePage.ux";
        temp20.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Pages/WelcomePage.js"));
        temp21.Margin = float4(30f, 0f, 30f, 0f);
        temp21.ClipToBounds = true;
        temp21.Children.Add(temp22);
        temp22.RowCount = 3;
        temp22.Children.Add(temp23);
        temp22.Children.Add(temp27);
        temp22.Children.Add(temp32);
        temp23.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp23.Padding = float4(0f, 100f, 0f, 0f);
        temp23.Children.Add(temp24);
        temp23.Children.Add(temp25);
        temp23.Children.Add(temp26);
        temp24.Color = Fuse.Drawing.Colors.White;
        temp24.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Unspecified);
        temp24.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Assets/climber.png"));
        temp25.Value = "dringo";
        temp25.FontSize = 70f;
        temp25.Alignment = Fuse.Elements.Alignment.HorizontalCenter;
        temp26.Value = "die Kletter-App";
        temp26.Alignment = Fuse.Elements.Alignment.HorizontalCenter;
        temp26.Opacity = 0.5f;
        temp27.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp27.Children.Add(temp);
        temp27.Children.Add(temp1);
        temp27.Children.Add(temp2);
        temp.Value = "Hallo! Du benutzt dringo zum ersten Mal. Bitte sag mir deinen Namen, damit ich Dein Profil erstellen kann. Deine Daten werden nur lokal gespeichert.";
        temp.TextWrapping = Fuse.Controls.TextWrapping.Wrap;
        temp.Alignment = Fuse.Elements.Alignment.HorizontalCenter;
        temp.Bindings.Add(temp28);
        temp1.Alignment = Fuse.Elements.Alignment.HorizontalCenter;
        temp1.Bindings.Add(temp29);
        temp1.Bindings.Add(temp30);
        temp2.Value = "Schön dass du zurück bist.";
        temp2.Alignment = Fuse.Elements.Alignment.HorizontalCenter;
        temp2.Bindings.Add(temp31);
        temp32.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp32.Children.Add(temp3);
        temp32.Children.Add(temp6);
        temp3.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp3.Children.Add(temp33);
        temp3.Bindings.Add(temp34);
        temp33.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp33.Margin = float4(50f, 0f, 50f, 0f);
        temp33.Text = "Los geht's";
        temp33.FontSize = float4(18f, 18f, 18f, 18f);
        global::Fuse.Gestures.Clicked.AddHandler(temp33, temp_eb2.OnEvent);
        temp33.Bindings.Add(temp_eb2);
        temp6.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp6.Children.Add(temp35);
        temp6.Children.Add(temp5);
        temp6.Bindings.Add(temp38);
        temp35.Children.Add(temp4);
        temp4.PlaceholderText = "Dein Name (min. 3 Buchstaben)";
        temp4.Bindings.Add(temp36);
        temp5.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp5.Text = "Registrieren";
        temp5.FontSize = float4(18f, 18f, 18f, 18f);
        global::Fuse.Gestures.Clicked.AddHandler(temp5, temp_eb3.OnEvent);
        temp5.Bindings.Add(temp_eb3);
        temp5.Bindings.Add(temp37);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb2);
        __g_nametable.Objects.Add(temp_eb3);
        this.Children.Add(temp20);
        this.Children.Add(temp21);
    }
    static global::Uno.UX.Selector __selector0 = "Visibility";
    static global::Uno.UX.Selector __selector1 = "Value";
}
