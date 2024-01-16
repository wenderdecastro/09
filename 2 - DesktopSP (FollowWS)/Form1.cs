using _2___DesktopSP__FollowWS_.Properties;
using AxWMPLib;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace _2___DesktopSP__FollowWS_
{
    public partial class Form1 : parent
    {
        Settings settings = Settings.Default;
        public Form1()
        {
            InitializeComponent();
            FormBorderStyle = FormBorderStyle.None;
            WindowState = FormWindowState.Normal;
            //configuração da janela 
        }
        private void Form1_Load(object sender, EventArgs e)
        {

            axWindowsMediaPlayer1.enableContextMenu = false;

            var pasta = AppDomain.CurrentDomain.BaseDirectory + "Videos";
            var videos = Directory.GetFiles(pasta).ToList();
            //localiza e lista os videos em seu diretório

            var video = videos[0];

            if (video == null)
            {
                MessageBox.Show("Nenhum vídeo encontrado");
            }

            axWindowsMediaPlayer1.URL = video;
            
            axWindowsMediaPlayer1.PlayStateChange += axWindowsMediaPlayer1_PlayStateChange;
            //captura a mudança do estado
            
        }

        private void axWindowsMediaPlayer1_PlayStateChange( object sender, _WMPOCXEvents_PlayStateChangeEvent e)
        {
            if(axWindowsMediaPlayer1.playState == WMPLib.WMPPlayState.wmppsMediaEnded)
            {
                this.Hide();
                new LoginPage().ShowDialog();
                this.Close();
            }
        }

        private void axWindowsMediaPlayer1_Enter(object sender, EventArgs e)
        {

        }

    }
}
