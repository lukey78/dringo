[Uno.Compiler.UxGenerated]
public partial class FAText: app.Text
{
    global::Uno.UX.Property<string> this_Value_inst;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
    };
    static FAText()
    {
    }
    [global::Uno.UX.UXConstructor]
    public FAText()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        this_Value_inst = new dringo_FuseControlsTextControl_Value_Property(this, __selector0);
        var temp = new global::Fuse.Reactive.Data("value");
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp1 = new global::Fuse.Reactive.DataBinding(this_Value_inst, temp, __g_nametable, Fuse.Reactive.BindingMode.Default);
        __g_nametable.This = this;
        this.Font = global::MainView.FontAwesome;
        this.Bindings.Add(temp1);
    }
    static global::Uno.UX.Selector __selector0 = "Value";
}
