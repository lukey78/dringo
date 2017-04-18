[Uno.Compiler.UxGenerated]
public partial class LocationListItem: Fuse.Controls.Panel
{
    string _field_Locname;
    [global::Uno.UX.UXOriginSetter("SetLocname")]
    public string Locname
    {
        get { return _field_Locname; }
        set { SetLocname(value, null); }
    }
    public void SetLocname(string value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_Locname)
        {
            _field_Locname = value;
            OnPropertyChanged("Locname", origin);
        }
    }
    string _field_City;
    [global::Uno.UX.UXOriginSetter("SetCity")]
    public string City
    {
        get { return _field_City; }
        set { SetCity(value, null); }
    }
    public void SetCity(string value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_City)
        {
            _field_City = value;
            OnPropertyChanged("City", origin);
        }
    }
    int _field_Indoor;
    [global::Uno.UX.UXOriginSetter("SetIndoor")]
    public int Indoor
    {
        get { return _field_Indoor; }
        set { SetIndoor(value, null); }
    }
    public void SetIndoor(int value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_Indoor)
        {
            _field_Indoor = value;
            OnPropertyChanged("Indoor", origin);
        }
    }
    global::Uno.UX.Property<string> temp_Value_inst;
    global::Uno.UX.Property<string> temp1_Value_inst;
    global::Uno.UX.Property<float4> dashboardRectangle_Color_inst;
    global::Uno.UX.Property<string> this_Locname_inst;
    global::Uno.UX.Property<string> this_City_inst;
    global::Uno.UX.Property<int> this_Indoor_inst;
    internal global::Fuse.Controls.Rectangle dashboardRectangle;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "dashboardRectangle"
    };
    static LocationListItem()
    {
    }
    [global::Uno.UX.UXConstructor]
    public LocationListItem()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp2 = new global::Fuse.Reactive.This();
        var temp = new global::app.Text();
        temp_Value_inst = new dringo_FuseControlsTextControl_Value_Property(temp, __selector0);
        var temp3 = new global::Fuse.Reactive.Property(temp2, dringo_accessor_LocationListItem_Locname.Singleton);
        this_Locname_inst = new dringo_LocationListItem_Locname_Property(this, __selector1);
        this_City_inst = new dringo_LocationListItem_City_Property(this, __selector2);
        this_Indoor_inst = new dringo_LocationListItem_Indoor_Property(this, __selector3);
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp4 = new global::Fuse.Reactive.This();
        var temp1 = new global::app.Text();
        temp1_Value_inst = new dringo_FuseControlsTextControl_Value_Property(temp1, __selector0);
        var temp5 = new global::Fuse.Reactive.Property(temp4, dringo_accessor_LocationListItem_City.Singleton);
        dashboardRectangle = new global::Fuse.Controls.Rectangle();
        dashboardRectangle_Color_inst = new dringo_FuseControlsShape_Color_Property(dashboardRectangle, __selector4);
        var temp6 = new global::Fuse.Drawing.Stroke();
        var temp7 = new global::Fuse.Controls.Grid();
        var temp8 = new global::Fuse.Controls.StackPanel();
        var temp9 = new global::FAText();
        var temp10 = new global::FAText();
        var temp11 = new global::Fuse.Controls.StackPanel();
        var temp12 = new global::Fuse.Reactive.DataBinding(temp_Value_inst, temp3, __g_nametable, Fuse.Reactive.BindingMode.Read);
        var temp13 = new global::Fuse.Reactive.DataBinding(temp1_Value_inst, temp5, __g_nametable, Fuse.Reactive.BindingMode.Read);
        var temp14 = new global::Fuse.Gestures.WhilePressed();
        var temp15 = new global::Fuse.Animations.Scale();
        var temp16 = new global::Fuse.Animations.Change<float4>(dashboardRectangle_Color_inst);
        this.Margin = float4(0f, 10f, 0f, 0f);
        dashboardRectangle.CornerRadius = float4(0f, 0f, 0f, 0f);
        dashboardRectangle.Color = float4(0.1333333f, 0.6f, 0.1333333f, 1f);
        dashboardRectangle.Width = new Uno.UX.Size(80f, Uno.UX.Unit.Percent);
        dashboardRectangle.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        dashboardRectangle.MaxWidth = new Uno.UX.Size(300f, Uno.UX.Unit.Unspecified);
        dashboardRectangle.Name = __selector5;
        dashboardRectangle.Strokes.Add(temp6);
        dashboardRectangle.Children.Add(temp7);
        temp6.Color = float4(0.06666667f, 0.5333334f, 0.06666667f, 1f);
        temp7.ColumnCount = 6;
        temp7.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp7.Children.Add(temp8);
        temp7.Children.Add(temp11);
        temp8.Orientation = Fuse.Layouts.Orientation.Horizontal;
        global::Fuse.Controls.Grid.SetColumnSpan(temp8, 2);
        temp8.Children.Add(temp9);
        temp8.Children.Add(temp10);
        temp9.Value = "\uF041";
        temp9.FontSize = 30f;
        temp9.Alignment = Fuse.Elements.Alignment.CenterLeft;
        temp9.Margin = float4(20f, 5f, 0f, 0f);
        temp10.Value = "\uF015";
        temp10.FontSize = 30f;
        temp10.Alignment = Fuse.Elements.Alignment.CenterLeft;
        temp10.Margin = float4(5f, 5f, 0f, 0f);
        temp11.Alignment = Fuse.Elements.Alignment.Left;
        global::Fuse.Controls.Grid.SetColumnSpan(temp11, 4);
        temp11.Children.Add(temp);
        temp11.Children.Add(temp1);
        temp.FontSize = 20f;
        temp.Alignment = Fuse.Elements.Alignment.Left;
        temp.Bindings.Add(temp12);
        temp1.FontSize = 10f;
        temp1.Alignment = Fuse.Elements.Alignment.Left;
        temp1.Bindings.Add(temp13);
        temp14.Animators.Add(temp15);
        temp14.Animators.Add(temp16);
        temp15.Factor = 0.98f;
        temp15.Duration = 0.08;
        temp15.Easing = Fuse.Animations.Easing.QuadraticOut;
        temp16.Value = float4(0.3333333f, 0.7333333f, 0.3333333f, 1f);
        temp16.Duration = 0.2;
        __g_nametable.This = this;
        __g_nametable.Objects.Add(dashboardRectangle);
        __g_nametable.Properties.Add(this_Locname_inst);
        __g_nametable.Properties.Add(this_City_inst);
        __g_nametable.Properties.Add(this_Indoor_inst);
        this.Children.Add(dashboardRectangle);
        this.Children.Add(temp14);
    }
    static global::Uno.UX.Selector __selector0 = "Value";
    static global::Uno.UX.Selector __selector1 = "Locname";
    static global::Uno.UX.Selector __selector2 = "City";
    static global::Uno.UX.Selector __selector3 = "Indoor";
    static global::Uno.UX.Selector __selector4 = "Color";
    static global::Uno.UX.Selector __selector5 = "dashboardRectangle";
}
