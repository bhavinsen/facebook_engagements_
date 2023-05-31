from db import Model
from orator.orm import has_many
from orator.orm import belongs_to



class FbEngagement(Model):

    # pass
    @has_many('id', 'account_id')
    def facebookaccount(self):
        from .facebook_account import FacebookAccount

        return FacebookAccount
    
    # @belongs_to
    # def facebookaccount(self):
    #     from .facebook_account import FacebookAccount
    #     return FacebookAccount
