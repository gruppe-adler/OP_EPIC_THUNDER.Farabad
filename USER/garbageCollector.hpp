/*
*   Legt Einstellungen für die automatische Leichen- und Wrack-Müllabfuhr fest.
*/

corpseManagerMode = 0;                                                          // Leichen aufräumen (0/1)
corpseLimit = 50;                                                               // Schwellenwert an Leichen, ab dem die corpseRemovalMinTime benutzt wird
corpseRemovalMinTime = 300;                                                     // Mindestdauer bevor eine Leiche gelöscht wird
corpseRemovalMaxTime = 500;                                                     // Maximaldauer nach der eine Leiche gelöscht wird

wreckManagerMode = 0;                                                           // Wracks aufräumen (0/1)
wreckLimit = 90;                                                                // Schwellenwert an Wracks, ab dem die wreckRemovalMinTime benutzt wird
wreckRemovalMinTime = 50000;                                                      // Mindestdauer bevor ein Wrack gelöscht wird
wreckRemovalMaxTime = 12000;                                                     // Maximaldauer nach der ein Wrack gelöscht wird

minPlayerDistance = 15000;                                                         // Mindestabstand zu allen Spielern, ab der Leichen oder Wracks gelöscht werden dürfen
