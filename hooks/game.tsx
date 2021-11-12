import { useState } from "react";

interface GameState {
  timestamp: Date;
  turnOf: number;
  turnState: "draw" | "put" | "wait" | "action";
  hasFinished: boolean;
  cardCount: number;
}

export interface Game {
  id: string;
  playerCount: number;
  state: GameState;
}

export default function useGame() {
  const [activeGame, setActiveGame] = useState<Game | null>(null);
}
