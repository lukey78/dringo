[Uno.Compiler.UxGenerated]
public partial class DashboardItem: Fuse.Controls.Panel
{
    string _field_Icon;
    [global::Uno.UX.UXOriginSetter("SetIcon")]
    public string Icon
    {
        get { return _field_Icon; }
        set { SetIcon(value, null); }
    }
    public void SetIcon(string value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_Icon)
        {
            _field_Icon = value;
            OnPropertyChanged("Icon", origin);
        }
    }
    string _field_Text;
    [global::Uno.UX.UXOriginSetter("SetText")]
    public string Text
    {
        get { return _field_Text; }
        set { SetText(value, null); }
    }
    public void SetText(string value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_Text)
        {
            _field_Text = value;
            OnPropertyChanged("Text", origin);
        }
    }
    string _field_File;
    [global::Uno.UX.UXOriginSetter("SetFile")]
    public string File
    {
        get { return _field_File; }
        set { SetFile(value, null); }
    }
    public void SetFile(string value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_File)
        {
            _field_File = value;
            OnPropertyChanged("File", origin);
        }
    }
    global::Uno.UX.Property<Uno.UX.FileSource> temp_File_inst;
    global::Uno.UX.Property<string> temp1_Value_inst;
    global::Uno.UX.Property<string> temp2_Value_inst;
    global::Uno.UX.Property<float4> dashboardRectangle_Color_inst;
    global::Uno.UX.Property<string> this_Icon_inst;
    global::Uno.UX.Property<string> this_Text_inst;
    global::Uno.UX.Property<string> this_File_inst;
    internal global::Fuse.Controls.Rectangle dashboardRectangle;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "dashboardRectangle"
    };
    static DashboardItem()
    {
    }
    [global::Uno.UX.UXConstructor]
    public DashboardItem()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp3 = new global::Fuse.Reactive.This();
        var temp = new global::Fuse.Controls.Image();
        temp_File_inst = new dringo_FuseControlsImage_File_Property(temp, __selector0);
        var temp4 = new global::Fuse.Reactive.Property(temp3, dringo_accessor_DashboardItem_File.Singleton);
        this_Icon_inst = new dringo_DashboardItem_Icon_Property(this, __selector1);
        this_Text_inst = new dringo_DashboardItem_Text_Property(this, __selector2);
        this_File_inst = new dringo_DashboardItem_File_Property(this, __selector0);
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp5 = new global::Fuse.Reactive.This();
        var temp1 = new global::FAText();
        temp1_Value_inst = new dringo_FuseControlsTextControl_Value_Property(temp1, __selector3);
        var temp6 = new global::Fuse.Reactive.Property(temp5, dringo_accessor_DashboardItem_Icon.Singleton);
        var temp7 = new global::Fuse.Reactive.This();
        var temp2 = new global::app.Text();
        temp2_Value_inst = new dringo_FuseControlsTextControl_Value_Property(temp2, __selector3);
        var temp8 = new global::Fuse.Reactive.Property(temp7, dringo_accessor_DashboardItem_Text.Singleton);
        dashboardRectangle = new global::Fuse.Controls.Rectangle();
        dashboardRectangle_Color_inst = new dringo_FuseControlsShape_Color_Property(dashboardRectangle, __selector4);
        var temp9 = new global::Fuse.Drawing.Stroke();
        var temp10 = new global::Fuse.Controls.Panel();
        var temp11 = new global::Fuse.Layouts.ColumnLayout();
        var temp12 = new global::Fuse.Controls.Panel();
        var temp13 = new global::Fuse.Reactive.DataBinding(temp_File_inst, temp4, __g_nametable, Fuse.Reactive.BindingMode.Read);
        var temp14 = new global::Fuse.Reactive.DataBinding(temp1_Value_inst, temp6, __g_nametable, Fuse.Reactive.BindingMode.Read);
        var temp15 = new global::Fuse.Reactive.DataBinding(temp2_Value_inst, temp8, __g_nametable, Fuse.Reactive.BindingMode.Read);
        var temp16 = new global::Fuse.Gestures.WhilePressed();
        var temp17 = new global::Fuse.Animations.Scale();
        var temp18 = new global::Fuse.Animations.Change<float4>(dashboardRectangle_Color_inst);
        dashboardRectangle.CornerRadius = float4(0f, 0f, 0f, 0f);
        dashboardRectangle.Color = float4(0.1333333f, 0.6f, 0.1333333f, 1f);
        dashboardRectangle.Width = new Uno.UX.Size(80f, Uno.UX.Unit.Percent);
        dashboardRectangle.Height = new Uno.UX.Size(80f, Uno.UX.Unit.Unspecified);
        dashboardRectangle.MaxWidth = new Uno.UX.Size(300f, Uno.UX.Unit.Unspecified);
        dashboardRectangle.Name = __selector5;
        dashboardRectangle.Strokes.Add(temp9);
        dashboardRectangle.Children.Add(temp10);
        temp9.Color = float4(0.06666667f, 0.5333334f, 0.06666667f, 1f);
        temp10.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp10.Layout = temp11;
        temp10.Children.Add(temp12);
        temp10.Children.Add(temp2);
        temp11.Orientation = Fuse.Layouts.Orientation.Vertical;
        temp11.ColumnCount = 2;
        temp12.Children.Add(temp);
        temp12.Children.Add(temp1);
        temp.Color = Fuse.Drawing.Colors.White;
        temp.Width = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp.Alignment = Fuse.Elements.Alignment.Center;
        temp.Bindings.Add(temp13);
        temp1.FontSize = 50f;
        temp1.Alignment = Fuse.Elements.Alignment.Center;
        temp1.Margin = float4(0f, 0f, 0f, 0f);
        temp1.Bindings.Add(temp14);
        temp2.Alignment = Fuse.Elements.Alignment.Left;
        temp2.Bindings.Add(temp15);
        temp16.Animators.Add(temp17);
        temp16.Animators.Add(temp18);
        temp17.Factor = 0.98f;
        temp17.Duration = 0.08;
        temp17.Easing = Fuse.Animations.Easing.QuadraticOut;
        temp18.Value = float4(0.3333333f, 0.7333333f, 0.3333333f, 1f);
        temp18.Duration = 0.2;
        __g_nametable.This = this;
        __g_nametable.Objects.Add(dashboardRectangle);
        __g_nametable.Properties.Add(this_Icon_inst);
        __g_nametable.Properties.Add(this_Text_inst);
        __g_nametable.Properties.Add(this_File_inst);
        this.Children.Add(dashboardRectangle);
        this.Children.Add(temp16);
    }
    static global::Uno.UX.Selector __selector0 = "File";
    static global::Uno.UX.Selector __selector1 = "Icon";
    static global::Uno.UX.Selector __selector2 = "Text";
    static global::Uno.UX.Selector __selector3 = "Value";
    static global::Uno.UX.Selector __selector4 = "Color";
    static global::Uno.UX.Selector __selector5 = "dashboardRectangle";
}
