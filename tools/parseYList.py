# !!!!Need to install ParsePy first
# https://github.com/dgrtwo/ParsePy

import datetime
import time
import parse_rest
from parse_rest.connection import register
from parse_rest.datatypes import Object

# Keys for YList app.
register("PRlCTmsvTNBeypIrP63NBkJBGxG8e84yzqX7FEdj", "I9h1MW4N3Ntq4bpNjcTZCWLa3ay7xlLO0VMnVWLE")

# ORM for YList object.
class YList(Object):
    pass

# Sample Data
comments=[{ "creator": "rjerry@yahoo-inc.com", "up": 0, "down": 0, "message": "1 reply message","postedAt": time.strftime('%Y-%m-%dT%H:%M:%S.%f%Z') }]

# Sample code to populate data.
item = YList(
    topic="Topic",  \
    up=0,  \
    down=0,  \
    message="message",  \
    creator="thanawat@yahoo-inc.com",  \
    postedAt=parse_rest.datatypes.Date(datetime.datetime.now()),  \
    comments=comments
)

# Save to Parse server.
item.save()
