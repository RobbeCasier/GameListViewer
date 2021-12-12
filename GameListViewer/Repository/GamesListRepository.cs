using GameListViewer.Model;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Configuration;
using System.IO;

namespace GameListViewer.Repository
{
    class GamesListRepository
    {
        public bool HasVallidList()
        {
            string filePath = ConfigurationManager.AppSettings["FilePath"].ToString();
            return File.Exists(filePath);
        }

        public List<Game> GetList()
        {
            List<Game> gameList;
            string filePath = ConfigurationManager.AppSettings["FilePath"].ToString();
            using (StreamReader reader = new StreamReader(filePath))
            {
                string list = reader.ReadToEnd();
                gameList = JsonConvert.DeserializeObject<List<Game>>(list);
                return gameList;
            }
        }
    }
}
