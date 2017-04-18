[Uno.Compiler.UxGenerated]
public partial class LocationListPage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly LocationListPage __parent;
        [Uno.WeakReference] internal readonly LocationListPage __parentInstance;
        public Template(LocationListPage parent, LocationListPage parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        global::Uno.UX.Property<string> __self_Locname_inst;
        global::Uno.UX.Property<string> __self_City_inst;
        global::Uno.UX.Property<int> __self_Indoor_inst;
        global::Uno.UX.NameTable __g_nametable;
        static string[] __g_static_nametable = new string[] {
        };
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::LocationListItem();
            __self_Locname_inst = new dringo_LocationListItem_Locname_Property(__self, __selector0);
            var temp = new global::Fuse.Reactive.Data("name");
            __g_nametable = new global::Uno.UX.NameTable(__parent.__g_nametable, __g_static_nametable);
            __self_City_inst = new dringo_LocationListItem_City_Property(__self, __selector1);
            var temp1 = new global::Fuse.Reactive.Data("city");
            __self_Indoor_inst = new dringo_LocationListItem_Indoor_Property(__self, __selector2);
            var temp2 = new global::Fuse.Reactive.Data("indoor");
            var temp3 = new global::Fuse.Reactive.DataBinding(__self_Locname_inst, temp, __g_nametable, Fuse.Reactive.BindingMode.Default);
            var temp4 = new global::Fuse.Reactive.DataBinding(__self_City_inst, temp1, __g_nametable, Fuse.Reactive.BindingMode.Default);
            var temp5 = new global::Fuse.Reactive.DataBinding(__self_Indoor_inst, temp2, __g_nametable, Fuse.Reactive.BindingMode.Default);
            __self.Bindings.Add(temp3);
            __self.Bindings.Add(temp4);
            __self.Bindings.Add(temp5);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "Locname";
        static global::Uno.UX.Selector __selector1 = "City";
        static global::Uno.UX.Selector __selector2 = "Indoor";
    }
    global::Uno.UX.Property<object> temp_Items_inst;
    internal global::Fuse.Reactive.EventBinding temp_eb4;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb4"
    };
    static LocationListPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public LocationListPage(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp1 = new global::Fuse.Reactive.Data("goBack");
        var temp = new global::Fuse.Reactive.Each();
        temp_Items_inst = new dringo_FuseReactiveEach_Items_Property(temp, __selector0);
        var temp2 = new global::Fuse.Reactive.Data("locations");
        var temp3 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp4 = new global::Fuse.Controls.DockPanel();
        var temp5 = new global::app.Header();
        var temp6 = new global::Fuse.Controls.Grid();
        var temp7 = new global::app.Button();
        var temp8 = new global::app.Button();
        temp_eb4 = new global::Fuse.Reactive.EventBinding(temp1, __g_nametable);
        var temp9 = new global::Fuse.Controls.ScrollView();
        var temp10 = new global::Fuse.Controls.StackPanel();
        var temp11 = new Template(this, this);
        var temp12 = new global::Fuse.Reactive.DataBinding(temp_Items_inst, temp2, __g_nametable, Fuse.Reactive.BindingMode.Default);
        temp3.LineNumber = 3;
        temp3.FileName = "Pages/Location/LocationListPage.ux";
        temp3.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Pages/Location/LocationListPage.js"));
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp6);
        temp4.Children.Add(temp9);
        temp5.Text = "Ort auswählen oder erstellen";
        global::Fuse.Controls.DockPanel.SetDock(temp6, Fuse.Layouts.Dock.Bottom);
        temp6.Children.Add(temp7);
        temp6.Children.Add(temp8);
        temp7.Color = float4(0.1333333f, 0.6f, 0.1333333f, 1f);
        temp7.Text = "Neuen Ort hinzufügen";
        temp8.Text = "Zurück";
        global::Fuse.Gestures.Clicked.AddHandler(temp8, temp_eb4.OnEvent);
        temp8.Bindings.Add(temp_eb4);
        temp9.Children.Add(temp10);
        temp10.Children.Add(temp);
        temp.Templates.Add(temp11);
        temp.Bindings.Add(temp12);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb4);
        this.Children.Add(temp3);
        this.Children.Add(temp4);
    }
    static global::Uno.UX.Selector __selector0 = "Items";
}
