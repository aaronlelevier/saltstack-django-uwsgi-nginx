#!/usr/bin/env python
import socket

def minion_ip():
    return {
        'minion_ip': socket.gethostbyname(socket.getfqdn())
    }