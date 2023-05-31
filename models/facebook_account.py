from db import Model
from orator.orm import has_many, belongs_to,belongs_to_many


class FacebookAccount(Model):

    pass
    # @has_many('account_id', 'id')
    # def fbengagement(self):
    #     from .fb_engagement import FbEngagement

    #     return FbEngagement
    
    # @belongs_to('id', 'account_id')
    # def fbengagement(self):
    #     from .fb_engagement import FbEngagement
    #     return FbEngagement
