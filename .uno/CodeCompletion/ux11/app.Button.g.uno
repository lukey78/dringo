namespace app
{
    [Uno.Compiler.UxGenerated]
    public partial class Button: Fuse.Controls.Panel
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
        float4 _field_FontSize;
        [global::Uno.UX.UXOriginSetter("SetFontSize")]
        public float4 FontSize
        {
            get { return _field_FontSize; }
            set { SetFontSize(value, null); }
        }
        public void SetFontSize(float4 value, global::Uno.UX.IPropertyListener origin)
        {
            if (value != _field_FontSize)
            {
                _field_FontSize = value;
                OnPropertyChanged("FontSize", origin);
            }
        }
        float4 _field_Color;
        [global::Uno.UX.UXOriginSetter("SetColor")]
        public float4 Color
        {
            get { return _field_Color; }
            set { SetColor(value, null); }
        }
        public void SetColor(float4 value, global::Uno.UX.IPropertyListener origin)
        {
            if (value != _field_Color)
            {
                _field_Color = value;
                OnPropertyChanged("Color", origin);
            }
        }
        global::Uno.UX.Property<float4> buttonRectangle_Color_inst;
        global::Uno.UX.Property<string> temp_Value_inst;
        global::Uno.UX.Property<float> temp_FontSize_inst;
        global::Uno.UX.Property<string> this_Text_inst;
        global::Uno.UX.Property<float4> this_FontSize_inst;
        global::Uno.UX.Property<float4> this_Color_inst;
        internal global::Fuse.Controls.Rectangle buttonRectangle;
        internal global::Fuse.Reactive.EventBinding temp_eb0;
        global::Uno.UX.NameTable __g_nametable;
        static string[] __g_static_nametable = new string[] {
            "buttonRectangle",
            "temp_eb0"
        };
        static Button()
        {
        }
        [global::Uno.UX.UXConstructor]
        public Button()
        {
            InitializeUX();
        }
        void InitializeUX()
        {
            var temp1 = new global::Fuse.Reactive.This();
            buttonRectangle = new global::Fuse.Controls.Rectangle();
            buttonRectangle_Color_inst = new dringo_FuseControlsShape_Color_Property(buttonRectangle, __selector0);
            var temp2 = new global::Fuse.Reactive.Property(temp1, dringo_accessor_Fuse_Controls_Panel_Color.Singleton);
            this_Text_inst = new dringo_appButton_Text_Property(this, __selector1);
            this_FontSize_inst = new dringo_appButton_FontSize_Property(this, __selector2);
            this_Color_inst = new dringo_FuseControlsPanel_Color_Property(this, __selector0);
            __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
            var temp3 = new global::Fuse.Reactive.This();
            var temp = new global::app.Text();
            temp_Value_inst = new dringo_FuseControlsTextControl_Value_Property(temp, __selector3);
            var temp4 = new global::Fuse.Reactive.Property(temp3, dringo_accessor_app_Button_Text.Singleton);
            var temp5 = new global::Fuse.Reactive.This();
            temp_FontSize_inst = new dringo_FuseControlsTextControl_FontSize_Property(temp, __selector2);
            var temp6 = new global::Fuse.Reactive.Property(temp5, dringo_accessor_app_Button_FontSize.Singleton);
            var temp7 = new global::Fuse.Reactive.Data("clickHandler");
            var temp8 = new global::Fuse.Reactive.DataBinding(buttonRectangle_Color_inst, temp2, __g_nametable, Fuse.Reactive.BindingMode.Read);
            var temp9 = new global::Fuse.Reactive.DataBinding(temp_Value_inst, temp4, __g_nametable, Fuse.Reactive.BindingMode.Read);
            var temp10 = new global::Fuse.Reactive.DataBinding(temp_FontSize_inst, temp6, __g_nametable, Fuse.Reactive.BindingMode.Read);
            var temp11 = new global::Fuse.Gestures.WhilePressed();
            var temp12 = new global::Fuse.Animations.Scale();
            var temp13 = new global::Fuse.Animations.Change<float4>(buttonRectangle_Color_inst);
            temp_eb0 = new global::Fuse.Reactive.EventBinding(temp7, __g_nametable);
            this.Color = float4(0.07058824f, 0.372549f, 0.3882353f, 1f);
            this.Width = new Uno.UX.Size(80f, Uno.UX.Unit.Percent);
            this.MaxWidth = new Uno.UX.Size(300f, Uno.UX.Unit.Unspecified);
            this.Margin = float4(5f, 5f, 5f, 5f);
            this.Padding = float4(10f, 10f, 10f, 10f);
            this.FontSize = float4(16f, 16f, 16f, 16f);
            global::Fuse.Gestures.Clicked.AddHandler(this, temp_eb0.OnEvent);
            buttonRectangle.CornerRadius = float4(4f, 4f, 4f, 4f);
            buttonRectangle.Layer = Fuse.Layer.Background;
            buttonRectangle.Name = __selector4;
            buttonRectangle.Bindings.Add(temp8);
            temp.TextAlignment = Fuse.Controls.TextAlignment.Center;
            temp.Bindings.Add(temp9);
            temp.Bindings.Add(temp10);
            temp11.Animators.Add(temp12);
            temp11.Animators.Add(temp13);
            temp12.Factor = 0.95f;
            temp12.Duration = 0.08;
            temp12.Easing = Fuse.Animations.Easing.QuadraticOut;
            temp13.Value = float4(0.3333333f, 0.7333333f, 0.3333333f, 1f);
            temp13.Duration = 0.2;
            __g_nametable.This = this;
            __g_nametable.Objects.Add(buttonRectangle);
            __g_nametable.Objects.Add(temp_eb0);
            __g_nametable.Properties.Add(this_Text_inst);
            __g_nametable.Properties.Add(this_FontSize_inst);
            __g_nametable.Properties.Add(this_Color_inst);
            this.Children.Add(buttonRectangle);
            this.Children.Add(temp);
            this.Children.Add(temp11);
            this.Bindings.Add(temp_eb0);
        }
        static global::Uno.UX.Selector __selector0 = "Color";
        static global::Uno.UX.Selector __selector1 = "Text";
        static global::Uno.UX.Selector __selector2 = "FontSize";
        static global::Uno.UX.Selector __selector3 = "Value";
        static global::Uno.UX.Selector __selector4 = "buttonRectangle";
    }
}
