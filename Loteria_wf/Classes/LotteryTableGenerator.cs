using Loteria_wf.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Loteria_wf.Classes
{
    public class LotteryTableGenerator
    {
        // Para tablas de la base de datos
        private List<AspNetLotteryCards> _allCards;
        private List<AspNetLotteryTables> _allTables;

        // Constructor
        public LotteryTableGenerator()
        {
            // Obtener todas las cartas de la base de datos
            using (var db = new LotteryDBContext())
            {
                _allCards = db.Cards.ToList();
            }

            // Obtener todas las tablas de la base de datos
            using (var db = new LotteryDBContext())
            {
                _allTables = db.Tables.ToList();
            }
        }

        public List<AspNetLotteryTables> GenerateTables(int numTables)
        {
            var tables = new List<AspNetLotteryTables>();

            // Loop para crear el numero de tablas asignado por el usuario
            for (int i = 0; i < numTables; i++)
            {
                var tableCards = new List<AspNetLotteryCards>();

                // La tabla de loteria consta de 16 cartas 4x4 
                while (tableCards.Count < 16)
                {
                    var randomCard = _allCards.OrderBy(c => Guid.NewGuid()).FirstOrDefault(c => !tableCards.Contains(c));

                    if (randomCard != null)
                    {
                        tableCards.Add(randomCard);
                    }
                }

                // Comprobar si la tabla ya existe en la base de datos
                bool tableExists = _allTables.Any(t => t.Cards.SequenceEqual(tableCards));

                if (!tableExists)
                {
                    // Añadir la tabla a la base de datos
                    using (var db = new LotteryDBContext())
                    {
                        /*var newTable = new AspNetLotteryTables()
                        {
                            // Convertir Explicitamente a una lista de AspNetLotteryCards
                            Cards = tableCards.Select(a => (AspNetLotteryCards)a).ToList(),
                        };*/

                        var newTable = new AspNetLotteryTables()
                        {
                            // Convertir Explicitamente a una lista de AspNetLotteryCards
                            Cards = tableCards,
                        };

                        db.Tables.Add(newTable);
                        db.SaveChanges();

                        // Actualizar la lista de tablas existentes
                        _allTables.Add(newTable);

                        tables.Add(newTable);
                    }

                    
                }

            }

            return tables;
        }
    }
}