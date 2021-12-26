using GameListViewer.Model;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Configuration;
using System.IO;

namespace GameListViewer.Repository
{
    class GamesListRepository
    {
        private List<Game> standardList;
        public bool HasVallidList()
        {
            string filePath = ConfigurationManager.AppSettings["FilePath"].ToString();
            return File.Exists(filePath);
        }

        public List<Game> GetList()
        {
            if (standardList != null)
                return standardList;
            List<Game> gameList;
            string filePath = ConfigurationManager.AppSettings["FilePath"].ToString();
            using (StreamReader reader = new StreamReader(filePath))
            {
                string list = reader.ReadToEnd();
                gameList = JsonConvert.DeserializeObject<List<Game>>(list);
                standardList = gameList;
                return gameList;
            }
        }

        public List<Game> GetStateList(CompletionState state)
        {
            if (standardList == null)
                GetList();

            List<Game> stateList = new List<Game>();
            foreach (var item in standardList)
            {
                if (item._State == state)
                {
                    stateList.Add(item);
                }
            }
            return stateList;
        }
    }
}
