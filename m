Return-Path: <clang-built-linux+bncBDTI55WH24IRBRF7VLVQKGQESDJ6RXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 870DAA4544
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Aug 2019 18:26:46 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id d23sf494343pll.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Aug 2019 09:26:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567268804; cv=pass;
        d=google.com; s=arc-20160816;
        b=BnopJgpK+axcvNwcLmLAJHchm7sBzZWuUuobr4PA/4w6FSy67Ptp8g4kvz1ur75xbl
         x2rpgx43iBmq2wDJJLX20HYuVPxkoMRhXmyp6+eARykDdotEi2kF45fm+nzII4J7EK4G
         9/IwSocsiRnxQrhSs1RjS7t4UhWaIXrB4+20bDrSUR2lLYNQDg+7UeQhs1ZfOuTqfy5t
         NRPOgJgk400FFwwT3KJr64V+WiPcdKEdw+m5qQNbwz/8xW5LUqgzm9Xl7K+AdjuHTxZs
         BEW7Md6zvRFJKTXRnBIfm4HbW9u+t4H548lLH0VFbqjyQIdKR6m0heZakbg0VGPcEl2I
         17og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=u1yj6EAp8i0HJAi7WW6iIwFcmX1ggsIAFKHbEgnqPd4=;
        b=tuflfgD6JLuZEKEPPiXBMWVBX4g60Hj/eIiu8i+okAnSimQB12d1WCoymV48JTNQtN
         wjB4Bo4Ghkv7EKdVxdaOe4dUBR9VWqk2Ob7CzEevZ7nKBkzPeq8GD2Qw9Z0ZyMsYxEGH
         YngWsjlKhVMU3IM+GtekL+k+/H8Ymjg+tfc7XOp7gtEHHcUc5749eqI9RGi/wJXACBTU
         78pVToAcDpy+vaqXD1Tqk/L9M+0x+ZzbDDXMGBLOzONTx18Z7qXDe/eLq4hKXKx/GcmH
         OiQm7ZycIkz2yEfit7/8B02ISKk+WhIELVPDTIGXvTuRJ3CJzR4mU0hCOP47RCr/7tUS
         M25Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=nxBWCbZc;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u1yj6EAp8i0HJAi7WW6iIwFcmX1ggsIAFKHbEgnqPd4=;
        b=dbP6O+sqxhPaWVQMkpdmPV3CMJWmkb0QtFkvzdTZW5Dt7UDWusg3U3frr3tUg8QJLI
         vuZdwnn72BqR37JEuH9nXjrb0cM7M0Qyq7URCfm0aQIpain+uhd3LZjcmFdFWXKU2MBn
         kzTc7Mrh7H3fk51q+VJZUOyK/W5fus966beM6yp5NNS04zGhBlrlxIfucOMDkXOLWM8h
         dS1q1WGvONCD0Qqpcavs1tvtmq+kHvNUNLrQRZoHE52zpT6byUfYpBkpMb6GxOcaZOiB
         nLdiVZZxmdbzFP5SobQyiVgGh1HhLMdQjrZGE7OeMfPkjFJ4nkhQFkt3x9VO1ISN/c1K
         rSKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u1yj6EAp8i0HJAi7WW6iIwFcmX1ggsIAFKHbEgnqPd4=;
        b=a3eBPLr5Odw6fxce3C/ppL5fb3bbPEdVFmO3PFa+6BJOT/i0MH7MtOZx8NUFQiE3UN
         4UcZRenGUwBT8FsNnVfA1yDJzYg0DuciCw8FEtGqS2QCwQbeR57OQrYsTj4U54O480V2
         ym6qOSaJZzs3PlldHoDUWws6j5wlEeAOTOlsy/137eg5WsXgzZZS13aTR8+y8Z29viJi
         Uqfr8ZzDDrKna4hn814zewOsutIbs8+yUnu/OP7fGprpEKnXdFXhpA2rNH843YX0FQNl
         pxDKlfk1QjzxOgAIz05ziFBUZxRFgHcErIZ1cRY3UnXYJq2Pad/dSiTms1XQlLrjz3Ll
         8IWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVGgUjlMN7mNv7LlQSm7TUGmhUXPYHxlLjq4KYGqTQorcmpXrDm
	bUtzq+jgzlOjPwKDJYgX4Rw=
X-Google-Smtp-Source: APXvYqy0Pf2t+2lBsNYU6VF2ESxHSc5JApjMwkOdpDpbUml/tMhDmrzHkOTTZlxvnowxhvGJbwRLvQ==
X-Received: by 2002:a63:c118:: with SMTP id w24mr18102067pgf.347.1567268804515;
        Sat, 31 Aug 2019 09:26:44 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fc86:: with SMTP id ci6ls2630543pjb.2.canary-gmail;
 Sat, 31 Aug 2019 09:26:44 -0700 (PDT)
X-Received: by 2002:a17:90a:e2d2:: with SMTP id fr18mr4545398pjb.98.1567268804188;
        Sat, 31 Aug 2019 09:26:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567268804; cv=none;
        d=google.com; s=arc-20160816;
        b=e0JUbRUHU7AKttsqnbCt+Iq1e7jk0ll4hkPi1U1xMU5z6kYdFQXyjBIIUT2Owl9lQ7
         Mq0XNoLJNGAlIoYB5XP5waSby4Nilubm2tAmuKRROcQY/AqmJM58Zi7sJ3wVuIxXo7iN
         xXsTTq2sMuuyfL/UqXfYgEKdDaC8kt0ijahdHE+9VMfdR26Hdz/Kbc5GRS+esRD5WcJq
         ef9gK6u26AnzOwVqzbuKllRQ8ZA0KwzCzDgDFzMW/lzIpXrGuMp5tgIg6e1sz2GsqaE6
         O5ZSfjFugGuKe/J7kc/8jWeGdNIXJtiYQXi4n1AHvVyZAXAOouzCjo5COhP3Vp9ufzrU
         bVfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=SLmzLQSSgz61XqmfX34aySvXBG0lEPr1RYwtTQ3yRZs=;
        b=Tip0q+aIRhDHWOSiHrfwornwXGcVnfOltDdIEXwaFoOxa3sVt7YgPcg2CvkXCgJF5q
         usV+r0T3K1ZeGxOLc/YiFPBTlSEL2ukC8x2gya+uDZdcD+epb+KWejcMTgxgtUCEx6Bg
         4emLaMQc2im+gAwKQnwPJ+F2O8Gn+3iByLiZZMWeW1zHNDfP4nS4TDDQlDwo15DIdTNJ
         TftHvSSqN23kEHaWxPKm6lFMEIfm1WnzxALXpbMaNKjV2pGyYqMT2/qgdnPW3eAHbA/6
         C2CEkEPHD3UmoKHbal39NF7ZyUdM5nr6ezcRsyxlJgSdaduR1A5bTt/YgC32O6owHsAZ
         MZyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=nxBWCbZc;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id z9si1111436pjp.0.2019.08.31.09.26.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Aug 2019 09:26:44 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.flets-west.jp (softbank126125143222.bbtec.net [126.125.143.222]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id x7VGQ14v028152;
	Sun, 1 Sep 2019 01:26:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x7VGQ14v028152
X-Nifty-SrcIP: [126.125.143.222]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] kbuild: refactor scripts/Makefile.extrawarn
Date: Sun,  1 Sep 2019 01:25:54 +0900
Message-Id: <20190831162555.31887-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=nxBWCbZc;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.79 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Instead of the warning-[123] magic, let's accumulate compiler options
to KBUILD_CFLAGS directly as the top Makefile does. I think this makes
easier to understand what is going on in this file.

This commit slightly changes the behavior, I think all of which are OK.

[1] Currently, cc-option calls are needlessly evaluated. For example,
      warning-3 += $(call cc-option, -Wpacked-bitfield-compat)
    needs evaluating only when W=3, but it is actually evaluated for
    W=1, W=2 as well. With this commit, only relevant cc-option calls
    will be evaluated. This is a slight optimization.

[2] Currently, unsupported level like W=4 is checked by:
      $(error W=$(KBUILD_ENABLE_EXTRA_GCC_CHECKS) is unknown)
    This will no longer be checked, but I do not think it is a big
    deal.

[3] Currently, 4 Clang warnings (Winitializer-overrides, Wformat,
    Wsign-compare, Wformat-zero-length) are shown by any of W=1, W=2,
    and W=3. With this commit, they will be warned only by W=1. I
    think this is a more correct behavior since each warning belongs
    to only one group.

For understanding this commit correctly:

We have 3 warning groups, W=1, W=2, and W=3. You may think W=3 has a
higher level than W=1, but they are actually independent. If you like,
you can combine them like W=13. To enable all the warnings, you can
pass W=123. It is shown by 'make help', but not noticed much. Since we
support W= combination, there should not exist intersection among the
three groups. If we enable Winitializer-overrides for W=1, we do not
need to for W=2 or W=3. This is the reason why I think the change [3]
makes sense.

The documentation says -Winitializer-overrides is enabled by default.
(https://clang.llvm.org/docs/DiagnosticsReference.html#winitializer-overrides)
We negate it by passing -Wno-initializer-overrides for the normal
build, but we do not do that for W=1. This means, W=1 effectively
enables -Winitializer-overrides by the clang's default. The same for
the other three.

Add comments in case people are confused with the code.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
---

Changes in v3:
  - Added yet more comments.
    Fix grammatical mistake 'does' -> 'do'.

Changes in v2:
  - Added comments and more commit log

 scripts/Makefile.extrawarn | 106 ++++++++++++++++++++-----------------
 1 file changed, 56 insertions(+), 50 deletions(-)

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index a74ce2e3c33e..d226c5fb13e2 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -1,14 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0
 # ==========================================================================
-#
 # make W=... settings
 #
-# W=1 - warnings that may be relevant and does not occur too often
-# W=2 - warnings that occur quite often but may still be relevant
-# W=3 - the more obscure warnings, can most likely be ignored
-#
-# $(call cc-option, -W...) handles gcc -W.. options which
-# are not supported by all versions of the compiler
+# There are three warning groups enabled by W=1, W=2, W=3.
+# They are independent, and can be combined like W=12 or W=123.
 # ==========================================================================
 
 KBUILD_CFLAGS += $(call cc-disable-warning, packed-not-aligned)
@@ -17,58 +12,69 @@ ifeq ("$(origin W)", "command line")
   export KBUILD_ENABLE_EXTRA_GCC_CHECKS := $(W)
 endif
 
-ifdef KBUILD_ENABLE_EXTRA_GCC_CHECKS
-warning-  := $(empty)
+#
+# W=1 - warnings which may be relevant and do not occur too often
+#
+ifneq ($(findstring 1, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
 
-warning-1 := -Wextra -Wunused -Wno-unused-parameter
-warning-1 += -Wmissing-declarations
-warning-1 += -Wmissing-format-attribute
-warning-1 += -Wmissing-prototypes
-warning-1 += -Wold-style-definition
-warning-1 += -Wmissing-include-dirs
-warning-1 += $(call cc-option, -Wunused-but-set-variable)
-warning-1 += $(call cc-option, -Wunused-const-variable)
-warning-1 += $(call cc-option, -Wpacked-not-aligned)
-warning-1 += $(call cc-option, -Wstringop-truncation)
+KBUILD_CFLAGS += -Wextra -Wunused -Wno-unused-parameter
+KBUILD_CFLAGS += -Wmissing-declarations
+KBUILD_CFLAGS += -Wmissing-format-attribute
+KBUILD_CFLAGS += -Wmissing-prototypes
+KBUILD_CFLAGS += -Wold-style-definition
+KBUILD_CFLAGS += -Wmissing-include-dirs
+KBUILD_CFLAGS += $(call cc-option, -Wunused-but-set-variable)
+KBUILD_CFLAGS += $(call cc-option, -Wunused-const-variable)
+KBUILD_CFLAGS += $(call cc-option, -Wpacked-not-aligned)
+KBUILD_CFLAGS += $(call cc-option, -Wstringop-truncation)
 # The following turn off the warnings enabled by -Wextra
-warning-1 += -Wno-missing-field-initializers
-warning-1 += -Wno-sign-compare
-
-warning-2 += -Wcast-align
-warning-2 += -Wdisabled-optimization
-warning-2 += -Wnested-externs
-warning-2 += -Wshadow
-warning-2 += $(call cc-option, -Wlogical-op)
-warning-2 += -Wmissing-field-initializers
-warning-2 += -Wsign-compare
-warning-2 += $(call cc-option, -Wmaybe-uninitialized)
-warning-2 += $(call cc-option, -Wunused-macros)
-
-warning-3 := -Wbad-function-cast
-warning-3 += -Wcast-qual
-warning-3 += -Wconversion
-warning-3 += -Wpacked
-warning-3 += -Wpadded
-warning-3 += -Wpointer-arith
-warning-3 += -Wredundant-decls
-warning-3 += -Wswitch-default
-warning-3 += $(call cc-option, -Wpacked-bitfield-compat)
-
-warning := $(warning-$(findstring 1, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)))
-warning += $(warning-$(findstring 2, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)))
-warning += $(warning-$(findstring 3, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)))
-
-ifeq ("$(strip $(warning))","")
-        $(error W=$(KBUILD_ENABLE_EXTRA_GCC_CHECKS) is unknown)
-endif
+KBUILD_CFLAGS += -Wno-missing-field-initializers
+KBUILD_CFLAGS += -Wno-sign-compare
 
-KBUILD_CFLAGS += $(warning)
 else
 
+# Some diagnostics enabled by default are noisy.
+# Suppress them by using -Wno... except for W=1.
+
 ifdef CONFIG_CC_IS_CLANG
 KBUILD_CFLAGS += -Wno-initializer-overrides
 KBUILD_CFLAGS += -Wno-format
 KBUILD_CFLAGS += -Wno-sign-compare
 KBUILD_CFLAGS += -Wno-format-zero-length
 endif
+
+endif
+
+#
+# W=2 - warnings which occur quite often but may still be relevant
+#
+ifneq ($(findstring 2, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
+
+KBUILD_CFLAGS += -Wcast-align
+KBUILD_CFLAGS += -Wdisabled-optimization
+KBUILD_CFLAGS += -Wnested-externs
+KBUILD_CFLAGS += -Wshadow
+KBUILD_CFLAGS += $(call cc-option, -Wlogical-op)
+KBUILD_CFLAGS += -Wmissing-field-initializers
+KBUILD_CFLAGS += -Wsign-compare
+KBUILD_CFLAGS += $(call cc-option, -Wmaybe-uninitialized)
+KBUILD_CFLAGS += $(call cc-option, -Wunused-macros)
+
+endif
+
+#
+# W=3 - more obscure warnings, can most likely be ignored
+#
+ifneq ($(findstring 3, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
+
+KBUILD_CFLAGS += -Wbad-function-cast
+KBUILD_CFLAGS += -Wcast-qual
+KBUILD_CFLAGS += -Wconversion
+KBUILD_CFLAGS += -Wpacked
+KBUILD_CFLAGS += -Wpadded
+KBUILD_CFLAGS += -Wpointer-arith
+KBUILD_CFLAGS += -Wredundant-decls
+KBUILD_CFLAGS += -Wswitch-default
+KBUILD_CFLAGS += $(call cc-option, -Wpacked-bitfield-compat)
+
 endif
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190831162555.31887-1-yamada.masahiro%40socionext.com.
