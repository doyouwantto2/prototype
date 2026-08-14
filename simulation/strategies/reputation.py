from strategies.strategy import Strategy;
from contexts.context import Context
from agents.agent import Agent

class ReputationOriented(Strategy):
    def __init__(self, agent: Agent, context: Context) -> None:
        super().__init__(agent, context)
