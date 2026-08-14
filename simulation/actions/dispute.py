from actions.action import Action;

class DisputeAction(Action):
    def __init__(self, id: int, asset_id: int, counter_bond: int, status: str) -> None:
        super().__init__(id)
        self.couter_bond = counter_bond
        self.status = status;
        self.asset_id = asset_id
