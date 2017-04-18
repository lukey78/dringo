[Uno.Compiler.UxGenerated]
public partial class DashboardPage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    global::Uno.UX.Property<string> temp_Text_inst;
    internal global::Fuse.Reactive.EventBinding temp_eb1;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb1"
    };
    static DashboardPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public DashboardPage(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::DashboardItem();
        temp_Text_inst = new dringo_DashboardItem_Text_Property(temp, __selector0);
        var temp1 = new global::Fuse.Reactive.Data("username");
        var temp2 = new global::Fuse.Reactive.Data("gotoLocationList");
        var temp3 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp4 = new global::Fuse.Controls.DockPanel();
        var temp5 = new global::app.Header();
        var temp6 = new global::Fuse.Controls.ScrollView();
        var temp7 = new global::Fuse.Controls.Grid();
        var temp8 = new global::Fuse.Reactive.DataBinding(temp_Text_inst, temp1, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp9 = new global::DashboardItem();
        temp_eb1 = new global::Fuse.Reactive.EventBinding(temp2, __g_nametable);
        var temp10 = new global::DashboardItem();
        var temp11 = new global::DashboardItem();
        temp3.LineNumber = 3;
        temp3.FileName = "Pages/DashboardPage.ux";
        temp3.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Pages/DashboardPage.js"));
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp6);
        temp5.Text = "";
        temp6.Children.Add(temp7);
        temp7.RowCount = 4;
        temp7.CellSpacing = 10f;
        temp7.ContentAlignment = Fuse.Elements.Alignment.Center;
        temp7.Margin = float4(0f, 50f, 0f, 50f);
        temp7.Children.Add(temp);
        temp7.Children.Add(temp9);
        temp7.Children.Add(temp10);
        temp7.Children.Add(temp11);
        temp.Icon = "\uF007";
        temp.Bindings.Add(temp8);
        temp9.Icon = "\uF041";
        temp9.Text = "Ort auswählen";
        global::Fuse.Gestures.Clicked.AddHandler(temp9, temp_eb1.OnEvent);
        temp9.Bindings.Add(temp_eb1);
        temp10.Icon = "";
        temp10.Text = "Klettern";
        temp10.File = "Assets/climber.png";
        temp11.Icon = "\uF080";
        temp11.Text = "Auswerten";
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb1);
        this.Children.Add(temp3);
        this.Children.Add(temp4);
    }
    static global::Uno.UX.Selector __selector0 = "Text";
}
