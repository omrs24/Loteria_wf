using Loteria_wf.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Loteria_wf.Classes
{
    public class LotteryTableGenerator
    {
        private List<LotteryCards> _allCards;
        private List<LotteryTables> _existingTables;

        public LotteryTableGenerator()
        {
            // Obtener todas las cartas de la base de datos
            using (var db = new LotteryDBContext())
            {
                _allCards = db.LotteryCards.ToList();
            }

            // Obtener todas las tablas de la base de datos
            using (var db = new LotteryDBContext())
            {
                _existingTables = db.LotteryTables.ToList();
            }
        }

        public List<LotteryTables> GenerateTables(int numTables)
        {
            var tables = new List<LotteryTables>();

            for (int i = 0; i < numTables; i++)
            {
                var tableCards = new List<LotteryCards>();

                while (tableCards.Count < 16)
                {
                    var randomCard = _allCards.OrderBy(c => Guid.NewGuid()).FirstOrDefault(c => !tableCards.Contains(c));

                    if (randomCard != null)
                    {
                        tableCards.Add(randomCard);
                    }
                }

                // Comprobar si la tabla ya existe en la base de datos
                bool tableExists = _existingTables.Any(t => t.Cards.SequenceEqual(tableCards));

                if (!tableExists)
                {
                    var newTable = new LotteryTables()
                    {
                        Cards = tableCards
                    };

                    // Añadir la tabla a la base de datos
                    using (var db = new LotteryDBContext())
                    {
                        db.LotteryTables.Add(newTable);
                        db.SaveChanges();
                    }

                    // Actualizar la lista de tablas existentes
                    _existingTables.Add(newTable);

                    tables.Add(newTable);
                }

                // Eliminar las cartas usadas de la lista de cartas disponibles
                foreach (var card in tableCards)
                {
                    _allCards.Remove(card);
                }
            }

            return tables;
        }
    }
}