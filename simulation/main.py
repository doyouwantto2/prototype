from typing import List
from agents.agent import Agent
from actions.action import Action
from strategies.balance import BalanceOriented
from strategies.collusion import CollusionOriented
from strategies.neutral import NeutralOriented
from strategies.reputation import ReputationOriented
import random

participant: List[Agent] = []

total_neutral_numbers = random.randint(0, 2000)
total_balance_numbers = random.randint(0, 2000)
total_collusion_numbers = random.randint(0, 2000)
total_reputation_numbers = random.randint(0, 2000)

for id in range(0, total_neutral_numbers):
    balance = random.randint(0, 2000)
    reputation = 0;
    action: List[Action] = []
    strategy = NeutralOriented()
    participant.append(Agent(id, strategy, reputation, balance, action))

for id in range(0, total_balance_numbers):
    balance = random.randint(0, 2000)
    reputation = 0;
    action: List[Action] = []
    strategy = BalanceOriented()
    participant.append(Agent(id, strategy, reputation, balance, action))

for id in range(0, total_collusion_numbers):
    balance = random.randint(0, 2000)
    reputation = 0;
    action: List[Action] = []
    strategy = CollusionOriented()
    participant.append(Agent(id, strategy, reputation, balance, action))

for id in range(0, total_reputation_numbers):
    balance = random.randint(0, 2000)
    reputation = 0;
    action: List[Action] = []
    strategy = ReputationOriented()
    participant.append(Agent(id, strategy, reputation, balance, action))

print(total_reputation_numbers)
print(total_balance_numbers)
print(total_collusion_numbers)
print(total_neutral_numbers)
