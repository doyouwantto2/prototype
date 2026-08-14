from actions.action import Action;

class PublishAction(Action):
    def __init__(self, id: int, status: str, ipfs: str, bond: int) -> None:
        super().__init__(id)
        self.bond = bond
        self.ipfs = ipfs
        self.status = status;
