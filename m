Return-Path: <clang-built-linux+bncBDTI55WH24IRBQ5OTDVQKGQEWX6JBFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0DE9FA07
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 07:55:16 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id o123sf1077644ybo.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:55:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566971715; cv=pass;
        d=google.com; s=arc-20160816;
        b=QBr2pbH7t1dBCppLQ/NnQrEzxIfMFPgo7d68VOyX5rZWZgvuGPCb0OepOzd1iMP58s
         HXuubS5I7T4lEvPeROOPG4Ix7+kzdYBqO5Bbfps3mvl5LdVpaMyPMfTJ6GBBwKswy66E
         EfHg99UK2spuw/s2zWmwNUl3D2HMfY437OJa1QoyooO1jXw6ybANypNKxdCS7QlkC/y6
         AWUctwVMFBGeMu4t52cyV+4zsWaGJTGhOhuhYfnf0mTISAmSl3kQR0KkTCAVVhPuvh4S
         a3tT6a3TJdZFgxpLhIfUcKg7jZNhWrn1xD1Tc93PjebMWenGEm7lRK1L3lTtdi7EyxOA
         a6tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=9JppYkuzu4Qlbk0RQkNyuccNv/Xw97zBLdI1JSC11Tw=;
        b=efYURb0k9BX2g11EW6CLLmbLijHKjgdqjGb4RvFbjlt3oaVVhMw3lXAKMgmsmFEVQb
         8Quth9oCJTY1Wn4HHUmFP2iKig+aB2dV+ow65zBhJDbHa73PJlSnXuBnkfS6Y80rrdkj
         d7NkC5eFdyUnTwrhTHVdmz05q6SJorFIeWrMQvEOTUX7zYgDyN+H5v/7CQKgq9f5b4Ju
         QgULihChetdVvAjjhi+zJk7/uYZJLOwQEcNI1M6YWmLqCkW23Yf6VmogeIxNwxL3j1dO
         BIkBUu/k2t0d2YVP8T0XcsnkJa3FDTAeraxKcFS40C6UdzQM7/E4ZSqT/KpIC5EQb6IC
         mrNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QWFfx4Yq;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9JppYkuzu4Qlbk0RQkNyuccNv/Xw97zBLdI1JSC11Tw=;
        b=l51juMlRUPe60IrWy/5Gl4MkRB9XH3pTc7THSRzT/W148Zm/04827Uv1ZWMa8kaNhj
         IcRdnQj0Rh/ZDYnTI94PU1kwPwJUXL4LbojYHEY15PNUwXU/mrpyBLjCwR4bgKYnwaRO
         bJ7U42b7kxPKLBJDmbHZehX2hPlTKV1HP6j4XBzxx4XQ3/WUJ3qhpxmjoYpytWSM5+L5
         n2UdS1diHt7eEl2HpiGMcb5FwscPMZXiS2ebeL+LKOxlTswlL4nnvXY3XSvc3lxruegJ
         7l8gwbPscNXcP9KI4L97vhaY9SYxi80lFQSvG9RaGRSOCxqsiOMtC7AMj08Y1m3fVby6
         K/mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9JppYkuzu4Qlbk0RQkNyuccNv/Xw97zBLdI1JSC11Tw=;
        b=nzwzFgZRxux8s15+z2rWr2E02lIgK108Toxziwd2T8rs4TzBj6z+ws4XvRaIpf9Igg
         Qzam9kmGa3JIRjgjdIUkMYt0clQROQFUOqsgwXx9lWQV7QlDLpWBuwXI7wyQD6LWTRBV
         ROi//u6IoxBZMiSjwxMaug1AEjUakjn5eXm75Fhgn41gH2IaoOvR4W+73vPxbgTqbcV9
         CM6gEBpyHgzjj6MOL0FSvZV/Wj7b70GP0eZa3Ir5ld93KveA6qJho4HLMdkDl30CWJAh
         9jTaYv2r6SQSrfmrtR0uC6QFW+5ckaGxi+HhEto5t+vCya7gNU92oqKxl8wTpQijnNWA
         tkrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXXyN5IMSYmKHCD1jyHfNWpq4l2cIaU+ldHOe2Y5SMe780/ZYJm
	q/tijg2n9H6++Ey1yysZcUI=
X-Google-Smtp-Source: APXvYqy2MrPFN5KyUGdj2GUF0E8/1eFukLVWrDzS0gCNho7DY1ojxdbleFzDi3d9yRzl34+NK9knYQ==
X-Received: by 2002:a81:11d5:: with SMTP id 204mr1778384ywr.506.1566971715092;
        Tue, 27 Aug 2019 22:55:15 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:d994:: with SMTP id b142ls235508ywe.2.gmail; Tue, 27 Aug
 2019 22:55:14 -0700 (PDT)
X-Received: by 2002:a81:2893:: with SMTP id o141mr1795270ywo.488.1566971714782;
        Tue, 27 Aug 2019 22:55:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566971714; cv=none;
        d=google.com; s=arc-20160816;
        b=Gyuapu1iqFhvwFzvUxqQoyhUFQobkREg8vVqTOrX1evCAsWH3InApq60qKS96smIzj
         HfZCPQVtnV72YbAt7JZxjt+1pIuQBueGf0b86XntR/YUF/skSKoA+P4rwz6R37v4esCd
         qz8xUHJ/PmS5aPvmVWCYiOqgcG1Q6hqcsawvP0Tb37o7oYEO0xoAqHPoyfT+UCN+2l0c
         b2Rl0PZr+LTtlgPULPgAGM68lhPaemzD7m0FoYdLZ1bQWaWAQRAz8taSQ+aUND+Z9d9w
         OlXOiSJ/i5oYdARtW/sizCbE/+0q9DY5AbJ2r1KC4q73oR841Hn5Byv6d1lgDvjS8BeF
         vvQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=1ulsOyalAvz8imh5AvDLy9mR+uGhKRhvRPZqusNGPNY=;
        b=iFMa6THL5ak426fi3Xwj81UjLI12iAbZ65rF+sa22nMqCh/GymN0uYIO/Giel2Ptra
         HQoPM3G67wE/P9ur6EalISfxNgVr15MopRttSIFzl1KcnE0zQFFyFDIH2U1gcR5wTaGb
         GKTy7OiSTGYwobwSKelG5iFDYvN88x0/0expa2fbQ+fB6ddLncNyxJGnAaM3YNPX05EW
         0twaSjh1l6+yWBLmn+dXEm7L7VO7fRsa7rNIzeBhTSZZVmj0WSv7txKga0Mse4cJ7Oa5
         QPt++s5MyvBCimhn0ZNpcca+22xgkSg5AihToLgYPYUoEBt2j0yF4skW1fAy8CzZ12Kc
         9WDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QWFfx4Yq;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conuserg-07.nifty.com (conuserg-07.nifty.com. [210.131.2.74])
        by gmr-mx.google.com with ESMTPS id j72si105024ybg.0.2019.08.27.22.55.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 22:55:14 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.74 as permitted sender) client-ip=210.131.2.74;
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-07.nifty.com with ESMTP id x7S5sQl1027215;
	Wed, 28 Aug 2019 14:54:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com x7S5sQl1027215
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] kbuild: refactor scripts/Makefile.extrawarn
Date: Wed, 28 Aug 2019 14:54:24 +0900
Message-Id: <20190828055425.24765-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=QWFfx4Yq;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.74 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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
    to only one warning level.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 scripts/Makefile.extrawarn | 104 +++++++++++++++++++------------------
 1 file changed, 53 insertions(+), 51 deletions(-)

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index a74ce2e3c33e..1fa53968e292 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -1,14 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 # ==========================================================================
-#
 # make W=... settings
-#
-# W=1 - warnings that may be relevant and does not occur too often
-# W=2 - warnings that occur quite often but may still be relevant
-# W=3 - the more obscure warnings, can most likely be ignored
-#
-# $(call cc-option, -W...) handles gcc -W.. options which
-# are not supported by all versions of the compiler
 # ==========================================================================
 
 KBUILD_CFLAGS += $(call cc-disable-warning, packed-not-aligned)
@@ -17,58 +9,68 @@ ifeq ("$(origin W)", "command line")
   export KBUILD_ENABLE_EXTRA_GCC_CHECKS := $(W)
 endif
 
-ifdef KBUILD_ENABLE_EXTRA_GCC_CHECKS
-warning-  := $(empty)
+#
+# W=1 - warnings that may be relevant and does not occur too often
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
 
+# W=1 also stops suppressing some warnings
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
+# W=2 - warnings that occur quite often but may still be relevant
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
+# W=3 - the more obscure warnings, can most likely be ignored
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828055425.24765-1-yamada.masahiro%40socionext.com.
