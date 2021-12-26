using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using GameListViewer.Model;
using GameListViewer.Windows;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Configuration;
using Newtonsoft.Json;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameListViewer.Repository;
using System.IO;
using GameListViewer.Sorting;
using System.Windows;

namespace GameListViewer.ViewModel
{
    class MainVM : ViewModelBase
    {
        private Game _newGame;
        public Game NewGame
        {
            get
            {
                return _newGame;
            }
            set
            {
                _newGame = value;
            }
        }

        public Game UpdateGame { get; set; }
        public int UpdateIndex { get; set; }

        EntryWindow _Ew;
        UpdateWindow _Uw;
        GamesListRepository _repo = new GamesListRepository();
        public ObservableCollection<Game> Games { get; set; } = new ObservableCollection<Game>();
        public ObservableCollection<Game> AllGames { get; set; } = new ObservableCollection<Game>();

        public int CompletedGames { get; set; }
        public int EndlessGames { get; set; }
        public int NotCompletedGames { get; set; }

        private Platform _searchPlatform = Platform.Steam;
        public Platform SearchPlatform
        {
            get
            {
                return _searchPlatform;
            }
            set
            {
                _searchPlatform = value;
                UpdatePlatformCounter();
            }
        }
        public int PlatformCounter { get; set; } = 0;

        public Visibility FullList { get; set; } = Visibility.Visible;

        public MainVM()
        {
            if (_repo.HasVallidList())
            {
                Games = AllGames = new ObservableCollection<Game>(_repo.GetList());
                UpdateStats();
                UpdatePlatformCounter();
            }
        }

        #region Commands
        public RelayCommand New
        {
            get
            {
                return new RelayCommand(NewFile);
            }
        }

        public RelayCommand Open
        {
            get
            {
                return new RelayCommand(OpenFile);
            }
        }

        public RelayCommand Save
        {
            get
            {
                return new RelayCommand(SaveFile);
            }
        }

        public RelayCommand SaveAs
        {
            get
            {
                return new RelayCommand(SaveFileAs);
            }
        }

        public RelayCommand AddGame
        {
            get
            {
                return new RelayCommand(AddNewGame);
            }
        }

        public RelayCommand AddGameToList
        {
            get
            {
                return new RelayCommand(AddNewGameToList);
            }
        }

        public RelayCommand<object> Edit
        {
            get
            {
                return new RelayCommand<object>(EditItem);
            }
        }

        public RelayCommand EditEntry
        {
            get
            {
                return new RelayCommand(EditItemEntry);
            }
        }

        public RelayCommand CompletedGamesCMD
        {
            get
            {
                return new RelayCommand(GetCompletedGames);
            }
        }
        public RelayCommand NotCompletedGamesCMD
        {
            get
            {
                return new RelayCommand(GetNotCompletedGames);
            }
        }
        public RelayCommand EndlessGamesCMD
        {
            get
            {
                return new RelayCommand(GetEndlessGames);
            }
        }
        public RelayCommand AllGamesCMD
        {
            get
            {
                return new RelayCommand(GetAllGames);
            }
        }
        #endregion

        #region CommandFunctions
        private void NewFile()
        {
            ChangeStandardPath();
            AllGames = new ObservableCollection<Game>();
            RaisePropertyChanged("AllGames");
        }

        private void OpenFile()
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            openFileDialog.DefaultExt = ".json";
            openFileDialog.Filter = "Json File (*.json)|*.json";

            bool? result = openFileDialog.ShowDialog();

            if ((bool)result)
            {
                ChangeStandardPath(openFileDialog.FileName.ToString());
                AllGames = new ObservableCollection<Game>(_repo.GetList());
                RaisePropertyChanged("AllGames");
            }
        }

        private void SaveFile()
        {
            if (_repo.HasVallidList())
            {
                string json = JsonConvert.SerializeObject(AllGames.ToArray());
                File.WriteAllText(ConfigurationManager.AppSettings["FilePath"].ToString(), json);
            }
            else
                SaveFileAs();
        }

        private void SaveFileAs()
        {
            //setup savefiledialog
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            saveFileDialog.FileName = "MyGameList";
            saveFileDialog.DefaultExt = ".json";
            saveFileDialog.Filter = "Json File (*.json)|*.json";
            saveFileDialog.OverwritePrompt = true;

            //open savefiledialog
            //https://stackoverflow.com/questions/23539219/dialogresult-ok-on-savefiledialog-not-work
            bool? result = saveFileDialog.ShowDialog();

            //if person clicked save
            if ((bool)result)
            {
                string json = JsonConvert.SerializeObject(AllGames.ToArray());
                File.WriteAllText(saveFileDialog.FileName, json);
                ChangeStandardPath(saveFileDialog.FileName.ToString());
            }
        }

        private void AddNewGame()
        {
            NewGame = new Game();
            _Ew = new EntryWindow();
            _Ew.DataContext = this;
            _Ew.Show();
        }

        private void AddNewGameToList()
        {
            AllGames.Add(NewGame);
            UpdateStats();
            Sort();
            if (_Ew != null)
            {
                _Ew.Close();
                _Ew = null;
            }
        }

        private void EditItem(object item)
        {
            _Uw = new UpdateWindow();
            UpdateGame = (Game)item;
            _Uw.DataContext = this;
            _Uw.Show();
        }

        private void EditItemEntry()
        {
            UpdateStats();
            Sort();
            SaveFile();
            if (_Uw != null)
            {
                _Uw.Close();
                _Uw = null;
            }
        }
        private void GetCompletedGames()
        {
            Games = new ObservableCollection<Game>(_repo.GetStateList(CompletionState.Completed));
            FullList = Visibility.Collapsed;
            RaisePropertyChanged("FullList");
            RaisePropertyChanged("Games");
        }

        private void GetNotCompletedGames()
        {
            Games = new ObservableCollection<Game>(_repo.GetStateList(CompletionState.NotCompleted));
            FullList = Visibility.Collapsed;
            RaisePropertyChanged("FullList");
            RaisePropertyChanged("Games");
        }

        private void GetEndlessGames()
        {
            Games = new ObservableCollection<Game>(_repo.GetStateList(CompletionState.Endless));
            FullList = Visibility.Collapsed;
            RaisePropertyChanged("FullList");
            RaisePropertyChanged("Games");
        }
        private void GetAllGames()
        {
            Games = new ObservableCollection<Game>(_repo.GetList());
            FullList = Visibility.Visible;
            RaisePropertyChanged("FullList");
            RaisePropertyChanged("Games");
        }
        #endregion
        private void ChangeStandardPath(string newPath = "")
        {
            Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            config.AppSettings.Settings["FilePath"].Value = newPath;
            config.Save(ConfigurationSaveMode.Full, true);
            ConfigurationManager.RefreshSection("appSettings");
        }

        private void UpdateStats()
        {
            UpdateCompletedGames();
            UpdateEndlessGames();
            UpdateNotCompletedGamesGames();
        }

        private void UpdateCompletedGames()
        {
            CompletedGames = 0;
            foreach (Game game in AllGames)
            {
                if (game._State == CompletionState.Completed)
                    CompletedGames++;
            }
            RaisePropertyChanged("CompletedGames");
        }

        private void UpdateEndlessGames()
        {
            EndlessGames = 0;
            foreach (Game game in AllGames)
            {
                if (game._State == CompletionState.Endless)
                    EndlessGames++;
            }
            RaisePropertyChanged("EndlessGames");
        }

        private void UpdateNotCompletedGamesGames()
        {
            NotCompletedGames = 0;
            foreach (Game game in AllGames)
            {
                if (game._State == CompletionState.NotCompleted)
                    NotCompletedGames++;
            }
            RaisePropertyChanged("NotCompletedGames");
        }

        private void UpdatePlatformCounter()
        {
            PlatformCounter = 0;
            foreach (var item in AllGames)
            {
                if (item._Platform == _searchPlatform)
                    PlatformCounter++;
            }
            RaisePropertyChanged("PlatformCounter");
        }

        private void Sort()
        {
            var entries = AllGames.ToList();
            entries.Sort(new AlphanumericalAscending());
            AllGames = new ObservableCollection<Game>(entries);
            RaisePropertyChanged("AllGames");
        }
    }
}
