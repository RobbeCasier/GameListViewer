using GameListViewer.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameListViewer.Sorting
{
    internal class AlphanumericalAscending : IComparer<Game>
    {
        public int Compare(Game x, Game y)
        {
            return x == null || y == null ? 0 : x._Name.CompareTo(y._Name);
        }
    }

    internal class AlpanumericalDescending : IComparer<Game>
    {
        public int Compare(Game x, Game y)
        {
            return x == null || y == null ? 0 : y._Name.CompareTo(x._Name);
        }
    }
}
