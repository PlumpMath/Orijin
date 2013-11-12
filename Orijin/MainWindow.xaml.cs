namespace Orijin
{
    using Awesomium.Core;
    using System.Windows;

    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void webControl_DocumentReady(object sender, UrlEventArgs e)
        {
            using (dynamic app = (JSObject)webControl.CreateGlobalJavascriptObject("app"))
            {
                app.minimize = (JavascriptAsynchMethodEventHandler)minimize;
                app.maximize = (JavascriptAsynchMethodEventHandler)maximize;
                app.close = (JavascriptAsynchMethodEventHandler)close;
            }
        }

        private void webControl_PreviewMouseDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            var pos = e.GetPosition(this);
            var menuLeft = (int)webControl.ExecuteJavascriptWithResult("$('#menuLeft').width()");
            var menuRight = (int)webControl.ExecuteJavascriptWithResult("$('#menuRight').width()");
            var toolbar = (int)webControl.ExecuteJavascriptWithResult("$('#toolbar').height()");
            if (pos.X >= menuLeft && pos.X <= Width - menuRight && pos.Y < toolbar)
            {
                DragMove();
                e.Handled = true;
            }
        }

        private void minimize(object sender, JavascriptMethodEventArgs e)
        {
            WindowState = System.Windows.WindowState.Minimized;
        }

        private void maximize(object sender, JavascriptMethodEventArgs e)
        {
            webControl.ExecuteJavascript("$('#maximize').toggleClass('fa-expand fa-compress')");
            WindowState = WindowState == System.Windows.WindowState.Maximized ? System.Windows.WindowState.Normal : System.Windows.WindowState.Maximized;
        }

        private void close(object sender, JavascriptMethodEventArgs e)
        {
            Close();
        }
    }
}
