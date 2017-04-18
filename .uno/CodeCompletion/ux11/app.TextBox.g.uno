namespace app
{
    [Uno.Compiler.UxGenerated]
    public partial class TextBox: Fuse.Controls.TextBox
    {
        static TextBox()
        {
        }
        [global::Uno.UX.UXConstructor]
        public TextBox()
        {
            InitializeUX();
        }
        void InitializeUX()
        {
            this.PlaceholderColor = float4(0.6666667f, 0.6666667f, 0.6666667f, 1f);
            this.TextColor = Fuse.Drawing.Colors.White;
            this.CaretColor = Fuse.Drawing.Colors.White;
            this.Padding = float4(10f, 10f, 0f, 10f);
        }
    }
}
