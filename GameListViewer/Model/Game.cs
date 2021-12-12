using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameListViewer.Model
{
    public enum CompletionState
    {
        Completed,
        NotCompleted,
        Endless
    }

    public enum Platform
    {
        Steam,
        Epic
    }

    public enum AchievementsState
    {
        None,
        Completed,
        NotCompleted
    }

    class Game
    {
        public string _Name { get; set; }
        public CompletionState _State { get; set; }
        public AchievementsState _AchievementState { get; set; }
        public Platform _Platform { get; set; }
    }
}
