# -*- coding: utf-8 -*-

import re
from xkeysnail.transform import *

# [Global modemap] Change modifier keys as in xmodmap
define_modmap({
    # CapsLock을 한영키로
    Key.CAPSLOCK : Key.HANGEUL,

    #Key.LEFT_CTRL: Key.LEFT_META,
    Key.LEFT_META: Key.LEFT_ALT,
    Key.LEFT_ALT: Key.LEFT_CTRL,

    Key.RIGHT_ALT: Key.RIGHT_CTRL,
    Key.SYSRQ: Key.RIGHT_ALT,
    Key.RIGHT_CTRL: Key.RIGHT_META,
})
