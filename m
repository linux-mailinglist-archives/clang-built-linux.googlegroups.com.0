Return-Path: <clang-built-linux+bncBDTI55WH24IRBQFLUDVQKGQEB7BBEFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 47783A2314
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 20:13:22 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id g9sf2425274plo.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 11:13:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567102401; cv=pass;
        d=google.com; s=arc-20160816;
        b=ltLMaFuM0EfB2/3wpJIIgPJUm1WBfU/q2ZQQFeDsKepKNUaR2DxX9/n0vvYV6Rvmjr
         9+TvpfS5roFB6jTgV40g1m80BRGg7s+cAHWjJ7V9SzBF6Nz8AwAcRZry7NArqtEf80H/
         4mBF+evdS0KqBxB4/14HcWZOe+8P8y0WIPL/yr2qKgIMJSDmrKI0WrOsab1+8Tbj/tNX
         lGIBXeW/RproVHEtPCBRXQ7pmI8TlGIFZsb1yZxuTWdqW2SkjW1UGnkX0PoKMBduDDdg
         adf8GxsWlnozbLrismWhhtK5r32zK9R7DUFHjEaRnGevY81hZLl/uEL7kuXITijT9q59
         jIkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=Y/iO9/80f/FSOA7lDnvaTj7QZK8E8o2CYkttfMjlhIQ=;
        b=F+KcSrk6XB8dim7EzOBOEfmRLfYLuKcyXe5OfC59IRpH+pU8NPmh5cIn8HWjbrzBHx
         wPqDm4K+SacsMDRyp/bL8Zr6ItoYeVN2FqIyPb3YwdV1N3j34fpuB1LEEFy4VK7+LJQ1
         kdDfhi9E5yfSBvAuu/PVVPPGBnKOdCQOGMTxjBe8+yM5OTcDCYMZ1EK+hfbNqnthIrzE
         exHOXcdA7wMUA+liv3pqytUGHfeoSEJWTIgBqSn4jtytkAloRDAK81s4gNou0vEIx3fM
         yM9ln53AVU7nT/IA7CqfPs2l1SbQUX9nZGE66SRlhOBzwJ3eHLjXlIVIqcwSjOLPXRBW
         nIQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EocEaH2Y;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y/iO9/80f/FSOA7lDnvaTj7QZK8E8o2CYkttfMjlhIQ=;
        b=ltDxbDvpWM4+Ng4TNZOiNkgtwa80XoDMjvo4yesHotvn18X6giTvs0OPGl4Oe0i84l
         c8nI5yFj10gWureFASOnZ6xI30UnxSpUJmR6T5Oydvp10K070x3oVTnkl5lI0Xpa/5j5
         n2Mf7akmLtxoSFx4M5NCHvQ4aZmY27rn2z//dqeHoOo1ycxqcV6wKdF7+rj+pmgE4d8t
         AfutQyHB5F0vJUxfrt8xct+lVpfdlBi+/n02yX22F1785OxmMnTypzCERKKLCjF0vNPG
         b2H/Pw/Tj92hwNTtOj658Dfot5GwBSOhRPE91IEmb6xBjvuMUTxMUU79PnqWMuJXUGcH
         +rGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y/iO9/80f/FSOA7lDnvaTj7QZK8E8o2CYkttfMjlhIQ=;
        b=rPPbHX+Sbi9Nns3WuJTrEIw473ha8i+6kd/j0WvEUEPNI2D+f2SeR9nbLCgtfxcKNf
         QcBvhtDn2FxR0V8mvEUrnYVaKnFuX1iVjh3Tv1UY8KqD8W9DeYIsz76epINjwcNBKWrg
         L63+uZ/3TsIsJQXXBP5/xq87jw4ewVvbNIp/F3KVP3OioNGMoeDSb0BbpqxmxZYXisUR
         PtyKJlMhY8OJD3Ind/3WHAJoSOGtqTTfWMpSnlTwdTtRjOP/yNHnWs/KO2AcEKv0gWsY
         AE8dmbw3mLG+ZJB6WB3dP98Seoz7Notm1utqvhfIFeeGh80onoXbEgxDa2no2DSlrqpY
         KyDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWi9x8OawA4cEDmThSt5pI1WVMsnEDx2MHhhlNkZwlx6gf6cpQ4
	WetG+x1bf2trQBlg8CguaQg=
X-Google-Smtp-Source: APXvYqxL9vnvoXHMhbCBqP5tUHFUFFQmODZLymXz6jUaX4VTLR/xs9ku2prLrAqIEvJ24PQcd8UIoA==
X-Received: by 2002:a17:90a:b00a:: with SMTP id x10mr11688726pjq.113.1567102400915;
        Thu, 29 Aug 2019 11:13:20 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:2ba9:: with SMTP id l38ls998166plb.9.gmail; Thu, 29
 Aug 2019 11:13:20 -0700 (PDT)
X-Received: by 2002:a17:90a:b016:: with SMTP id x22mr11688747pjq.116.1567102400494;
        Thu, 29 Aug 2019 11:13:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567102400; cv=none;
        d=google.com; s=arc-20160816;
        b=MJzuGDUNIPP4RuH/zQ9rNMJ9ww5FCYr7xo2bW2MGOcusUCCTXjwhZTwGEcWcIahXhg
         rexG/3cgCQg6UsYv9nK8L1umlUsXAcDQqNgkttQkN5j7tHtVn5maOTAc9dVVmWlXYXjo
         C6sKbbZS8me8oXTh8ZpYdL73gZZnuT8XIxpFRr/eR6HXf0sO7U9uI1ukHZGEaddUHV9a
         bNYs2vGlkhbsokHKzaUOPh0fEZU7ID7WdGB3U0O8Xvd1sdoVZ3Lus/VTI1UGdkg4ol3k
         RFdMPntQqI4kVDBa+yKAyDCHWFMRn77B7JpvtcmFujqYAGbO8NQkcfAW0IQuOo4RXZBF
         D+yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=Vwg+U6w4Ii1pxbM6Y26D6NAkhEdABFM43gdRvX4UWfQ=;
        b=vEGxxQGiKLLGff75TGr8T/HG2Le1yM0OpGtTKgJBSjSyqux/Hx4kTsE6XZlykfGV7I
         b77XCGmvC0VNtXTrq60yZHllhPjfdwUPv8WJwh5YynRJmIxlpzNRqU79glgTao+JIa6k
         afK1K50alLM8LTri0LhwS1674PG3U51Olb4bV2SzVdJPn8mvSyQuLmWRCzkIYLtgFH5x
         nC4/fAZsYdlRS7jU0AHKufxIGMD34rYyjvKIhkfSrmT8qPrRq4wOJhaPGYp/mSXOG3uA
         ctMG1PFSqLmy6ksTTWYKkJV/8AdZaxnM23xMVUJQjn/4/HBcC3R5PYMn+zhJC+AtnnhE
         2URg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EocEaH2Y;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id y6si155919pjv.2.2019.08.29.11.13.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 11:13:20 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.flets-west.jp (softbank126125143222.bbtec.net [126.125.143.222]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id x7TICXKJ032077;
	Fri, 30 Aug 2019 03:12:34 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x7TICXKJ032077
X-Nifty-SrcIP: [126.125.143.222]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH v2] kbuild: refactor scripts/Makefile.extrawarn
Date: Fri, 30 Aug 2019 03:12:31 +0900
Message-Id: <20190829181231.5920-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=EocEaH2Y;       spf=softfail
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
pass W=123. This is shown by 'make help', but it is often missed
unfortunately. Since we support W= combination, there should not exist
intersection among the three groups. If we enable Winitializer-overrides
for W=1, we do not need to for W=2 or W=3. This is why I believe the
change [3] makes sense.

The documentation says -Winitializer-overrides is enabled by default.
(https://clang.llvm.org/docs/DiagnosticsReference.html#winitializer-overrides)
We negate it by passing -Wno-initializer-overrides for the normal
build, but we do not do that for W=1. This means, W=1 effectively
enables -Winitializer-overrides by the clang's default. The same for
the other three. I wonder if this logic needs detailed commenting,
but I do not want to be bothered any more. I added comments.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---

Changes in v2:
  - Added comments and more commit log

 scripts/Makefile.extrawarn | 105 +++++++++++++++++++------------------
 1 file changed, 54 insertions(+), 51 deletions(-)

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index a74ce2e3c33e..3680445823b7 100644
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
@@ -17,58 +9,69 @@ ifeq ("$(origin W)", "command line")
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
 
+# Some diagnostics such as -Winitializer-overrides are enabled by default.
+# We suppress them by using -Wno... except for W=1.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829181231.5920-1-yamada.masahiro%40socionext.com.
