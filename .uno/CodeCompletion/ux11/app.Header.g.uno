namespace app
{
    [Uno.Compiler.UxGenerated]
    public partial class Header: Fuse.Controls.StackPanel
    {
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
        global::Uno.UX.Property<string> temp_Value_inst;
        global::Uno.UX.Property<string> this_Text_inst;
        global::Uno.UX.NameTable __g_nametable;
        static string[] __g_static_nametable = new string[] {
        };
        static Header()
        {
        }
        [global::Uno.UX.UXConstructor]
        public Header()
        {
            InitializeUX();
        }
        void InitializeUX()
        {
            var temp1 = new global::Fuse.Reactive.This();
            var temp = new global::app.Text();
            temp_Value_inst = new dringo_FuseControlsTextControl_Value_Property(temp, __selector0);
            var temp2 = new global::Fuse.Reactive.Property(temp1, dringo_accessor_app_Header_Text.Singleton);
            this_Text_inst = new dringo_appHeader_Text_Property(this, __selector1);
            __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
            var temp3 = new global::Fuse.Controls.Image();
            var temp4 = new global::app.Text();
            var temp5 = new global::Fuse.Reactive.DataBinding(temp_Value_inst, temp2, __g_nametable, Fuse.Reactive.BindingMode.Read);
            this.Alignment = Fuse.Elements.Alignment.VerticalCenter;
            this.Padding = float4(0f, 50f, 0f, 0f);
            global::Fuse.Controls.DockPanel.SetDock(this, Fuse.Layouts.Dock.Top);
            temp3.Color = Fuse.Drawing.Colors.White;
            temp3.Width = new Uno.UX.Size(30f, Uno.UX.Unit.Unspecified);
            temp3.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Assets/climber.png"));
            temp4.Value = "dringo";
            temp4.FontSize = 30f;
            temp4.Alignment = Fuse.Elements.Alignment.HorizontalCenter;
            temp.FontSize = 15f;
            temp.Alignment = Fuse.Elements.Alignment.HorizontalCenter;
            temp.Margin = float4(0f, 5f, 0f, 0f);
            temp.Bindings.Add(temp5);
            __g_nametable.This = this;
            __g_nametable.Properties.Add(this_Text_inst);
            this.Children.Add(temp3);
            this.Children.Add(temp4);
            this.Children.Add(temp);
        }
        static global::Uno.UX.Selector __selector0 = "Value";
        static global::Uno.UX.Selector __selector1 = "Text";
    }
}
