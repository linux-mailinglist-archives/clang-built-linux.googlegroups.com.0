Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLEU5OEAMGQEMB4JTYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id B67423EDEA6
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 22:27:25 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id y6-20020a0568302a0600b00518b08df4d2sf2244979otu.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 13:27:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629145644; cv=pass;
        d=google.com; s=arc-20160816;
        b=nPCMhqGogEZQW2oESneJxLD6MrZXUMyBO1/h2imtz0jsS+fyniy466eMdRwi6TnPMt
         ElgsYdozCwyK6Sf08gase2sb1hAKhKLnrLtvteCFvD8MeCFJkqCplscVLxJO0CtOyO3S
         43EyixR56CNlq0jqQerSC0tnhQh4TPO/fYpUqPKYWqanMp8ReYoGbw+LZ9RJyLwUt4/S
         IvJluCkI34vnfaPjnRnSMXyXkCYQeUQqgPgZMKHbrMr7zO4gha14vrAFGh8kfSKTHkIP
         nmgAEvgclMDHzSgDwy6NK49/L1QkYBV7SCa+30Rof+R+RSY4ArIdE7gD2jNqIefQvlVQ
         I0AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=WQi4jFcgTCanFF/n0RibA0hx+Axx4dhJC9EfCo6ybD4=;
        b=sttvNdJZLseXhat9s91zCYVPdLjzRTgC2gnawmcFcIB8MUNG/vuN3bf0ENj7AoVl0n
         cOrNuZUWx6+c8FlTrjrPuIiG6idYkKDtlOzSrB2NGsnVCs0PNXA0as9O6BnSMD89yzrI
         wm3MxuLvKUylJZG3OmTLKnPVvVvBbeM0pplABIRXSVB7iYP3ApoX/sRzA1dSdcCrC5rw
         bsbInjWZZezUBetS8G3UbbeJDfAv361OO2B1b9u7xPhvW/5NJUFimhRUBo450wSY8Vgx
         4VH3RNXwi6LwlsUDIq3JWCaovZvtuulVCdBG4UPIEJkda2BCNhtkdCoX49B2qBiQ29l/
         HUIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ka7J9qkV;
       spf=pass (google.com: domain of 3k8oayqwkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3K8oaYQwKADojZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=WQi4jFcgTCanFF/n0RibA0hx+Axx4dhJC9EfCo6ybD4=;
        b=QlaR+YRuuePlP5UbeUA1JXrTP07cMuvMA3PRLPMvw35QZVj6F9ps4F35BhDKpYlgiZ
         3rXZjMD7CGq9G85aeZrg416vw84zEvxN2bsAahVTeGCvSrFtU5HZzUAchL6AXzqESaMq
         En9u8JrzjwLIqiZ6f3pUfnkUZNtyUY6rCM+z64QToCtebg6rjSzufEp/SUsMI4ameRXN
         IDbYR91EXtteWqISQ1kce1hXowNJlKzIsIH597xgJXP+NK/bBubXMrmK0wuUPxA7Rz1X
         s8YODOV7+N7/kJNNY91w6iKJL44d4wiqBEcqS48uYKYLBk0TT5ZQFU9m0q9wrCZtnE01
         86lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WQi4jFcgTCanFF/n0RibA0hx+Axx4dhJC9EfCo6ybD4=;
        b=DK4nsOUT8iAIzfnDMNn+ed1NyRE6v5F8/BWeT5tLS3cwIBwqwPn6MvV+Lpy4xOVFpY
         9N1iIr20MN2mxmWbesUIrANfe8FykBws8ds+8Qnl1stLnMuMpm9Qgypt2yzEls6Lgli1
         aJUWNkR8y2J5iszFBZKeVyONU44EFgTi23eCBbtGSMtv0/DxfQtZLnGEZsaCy2dY5cF3
         Rs3W+PFe924EbxUcKqUG0rLOJFYmI7p8ikLmt0hrimokDKu6OEGvgSfKeLn2Cz7vllPs
         Tk3GsCae2TJKJJWB1Kfb3WQVrHsfovy3eoNO6C8gq+xRqSy9STM+JesuG9RwyDpQICHB
         MavA==
X-Gm-Message-State: AOAM532RE/aNtgTLNz1LkuZqyxIcUUkAmFsLWDBJg9vmbSLRonUZ799T
	/r5GG9vYsXOSlJWUTkipa7U=
X-Google-Smtp-Source: ABdhPJxJuyd/zIywjEuxFsSbfbMKmuykJC7SmM2GGEg8Xvbns4PJGYtIHPtR0aDmfQ69usl5osr0JA==
X-Received: by 2002:a54:4189:: with SMTP id 9mr484329oiy.45.1629145644365;
        Mon, 16 Aug 2021 13:27:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:18a5:: with SMTP id bi37ls108886oib.9.gmail; Mon,
 16 Aug 2021 13:27:24 -0700 (PDT)
X-Received: by 2002:a54:4789:: with SMTP id o9mr460385oic.50.1629145643966;
        Mon, 16 Aug 2021 13:27:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629145643; cv=none;
        d=google.com; s=arc-20160816;
        b=ig6Q+Wp/P4sfTiCsQ51t69IA/wA0B2oevfahgwPNznEQvEeBkh3I9Hh7eQDYioB3Sn
         DdU7ORNmwoz7ljdIFTizfuc6beniQj6hPz7hke8YolQCvqlA3YwyuO6QlQoPJq8CKTTG
         VgVbAqsjPKKIiVeccIZrNoD/OGLSFWYRPvom54nLqnwGuM2etqtC2bcbK+QCr93uf6hg
         /7r3EdVYr9bqq75dLgZDe6Qd01gZjQlnb4EwlJh/iMxzoG0bYJsbjAq0+onfIydS9o1K
         jfWgWaKIlRwTnugBumAAL+J0uPB2Eefzs2+2txSbCevj8Pixz4ZPve9mYKghNqd8dOvk
         viYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=8uTPw/oT5qHAdMdt5boTQuI0c3E5jP6CvarW8rtmPjg=;
        b=Ejbsuref/brdV6wS7CTnN+9sSr6L3bqlQH9mE4sl4zyQaGHT5VKABnmxiGDHcUvHMx
         J+pBDL19dMo+UyxGs/WG9h8VoUWIS2BxKfCReu/+RFXVv3/hzoOqS9x07wcIhcTaNqKS
         IY8shyvg+BHFtqmOqz+iZ4KzTCER2kpY2miCRPJvu6sJoD+GN0RI/uYcSO7noSS6Ykva
         Fb7vs8KFwn3qgjes8FSuYjEBWa7k/R53qcBlFbGOC0U75eYuv0LhuHI/goXjMj/wIqyN
         BJcKgpAMxUlzpiUCCpZnOu3nXksTzS5CoYPkjCPXL6mMjAZg384Ewr2K3E/MNleIPOCU
         QZ2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ka7J9qkV;
       spf=pass (google.com: domain of 3k8oayqwkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3K8oaYQwKADojZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id bg37si2658oib.5.2021.08.16.13.27.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 13:27:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3k8oayqwkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id x11-20020ac86b4b000000b00299d7592d31so344482qts.0
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 13:27:23 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:478:6e44:5cf7:fcde])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:4b2:: with SMTP id
 w18mr534035qvz.47.1629145643423; Mon, 16 Aug 2021 13:27:23 -0700 (PDT)
Date: Mon, 16 Aug 2021 13:25:01 -0700
Message-Id: <20210816202504.2228283-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH v2] Makefile: remove stale cc-option checks
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Functional Testing <lkft@linaro.org>, kernel test robot <lkp@intel.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Vitor Massaru Iha <vitor@massaru.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Zhen Lei <thunder.leizhen@huawei.com>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ka7J9qkV;       spf=pass
 (google.com: domain of 3k8oayqwkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3K8oaYQwKADojZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

cc-option, cc-option-yn, and cc-disable-warning all invoke the compiler
during build time, and can slow down the build when these checks become
stale for our supported compilers, whose minimally supported versions
increases over time. See Documentation/process/changes.rst for the
current supported minimal versions (GCC 4.9+, clang 10.0.1+). Compiler
version support for these flags may be verified on godbolt.org.

The following flags are GCC only and supported since at least GCC 4.9.
Remove cc-option and cc-disable-warning tests.
* -fno-tree-loop-im
* -Wno-maybe-uninitialized
* -fno-reorder-blocks
* -fno-ipa-cp-clone
* -fno-partial-inlining
* -femit-struct-debug-baseonly
* -fno-inline-functions-called-once
* -fconserve-stack

The following flags are supported by all supported versions of GCC and
Clang. Remove their cc-option, cc-option-yn, and cc-disable-warning tests.
* -fno-delete-null-pointer-checks
* -fno-var-tracking
* -Wno-array-bounds

The following configs are made dependent on GCC, since they use GCC
specific flags.
* READABLE_ASM
* DEBUG_SECTION_MISMATCH

-mfentry was not supported by s390-linux-gnu-gcc until gcc-9+, add a
comment.

--param=allow-store-data-races=0 was renamed to -fno-allow-store-data-races
in the GCC 10 release; add a comment.

-Wmaybe-uninitialized (GCC specific) was being added for CONFIG_GCOV,
then again unconditionally; add it only once.

Also, base RETPOLINE_CFLAGS and RETPOLINE_VDSO_CFLAGS on CONFIC_CC_IS_*
then remove cc-option tests for Clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/1436
Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
Reported-by: kernel test robot <lkp@intel.com>
Acked-by: Miguel Ojeda <ojeda@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v1 -> v2:
* rebase on linux-kbuild/for-next from linux-next/master; patch was
  dropped from linux-mm:
  https://lore.kernel.org/mm-commits/20210814215814.W_qqW%25akpm@linux-foundation.org/.
* Pick up Miguel & Nathan's AB/RB tags.
* Pick up reports from LKFT/KTR.
* Note in commit message about -Wmaybe-uninitialized as per Masahiro.
* Undo changes to to -mfentry due to LKFT report:
  https://lore.kernel.org/lkml/CA+G9fYtPBp_-Ko_P7NuOX6vN9-66rjJuBt21h3arrLqEaQQn6w@mail.gmail.com/.
* Undo changes to --param=allow-store-data-races=0 &
  -fno-allow-store-data-races due to KTR report:
  https://lore.kernel.org/linux-mm/202108160729.Lx0IJzq3-lkp@intel.com/.
* Add comments to Makefile about -mfentry, -fno-allow-store-data-races,
  note in commit message.

 Makefile          | 50 +++++++++++++++++++++++++++++------------------
 lib/Kconfig.debug |  2 ++
 2 files changed, 33 insertions(+), 19 deletions(-)

diff --git a/Makefile b/Makefile
index 891866af0787..ce5a297ecd7c 100644
--- a/Makefile
+++ b/Makefile
@@ -669,9 +669,10 @@ endif # KBUILD_EXTMOD
 # Defaults to vmlinux, but the arch makefile usually adds further targets
 all: vmlinux
 
-CFLAGS_GCOV	:= -fprofile-arcs -ftest-coverage \
-	$(call cc-option,-fno-tree-loop-im) \
-	$(call cc-disable-warning,maybe-uninitialized,)
+CFLAGS_GCOV	:= -fprofile-arcs -ftest-coverage
+ifdef CONFIG_CC_IS_GCC
+CFLAGS_GCOV	+= -fno-tree-loop-im
+endif
 export CFLAGS_GCOV
 
 # The arch Makefiles can override CC_FLAGS_FTRACE. We may also append it later.
@@ -679,12 +680,14 @@ ifdef CONFIG_FUNCTION_TRACER
   CC_FLAGS_FTRACE := -pg
 endif
 
-RETPOLINE_CFLAGS_GCC := -mindirect-branch=thunk-extern -mindirect-branch-register
-RETPOLINE_VDSO_CFLAGS_GCC := -mindirect-branch=thunk-inline -mindirect-branch-register
-RETPOLINE_CFLAGS_CLANG := -mretpoline-external-thunk
-RETPOLINE_VDSO_CFLAGS_CLANG := -mretpoline
-RETPOLINE_CFLAGS := $(call cc-option,$(RETPOLINE_CFLAGS_GCC),$(call cc-option,$(RETPOLINE_CFLAGS_CLANG)))
-RETPOLINE_VDSO_CFLAGS := $(call cc-option,$(RETPOLINE_VDSO_CFLAGS_GCC),$(call cc-option,$(RETPOLINE_VDSO_CFLAGS_CLANG)))
+ifdef CONFIG_CC_IS_GCC
+RETPOLINE_CFLAGS	:= $(call cc-option,-mindirect-branch=thunk-extern -mindirect-branch-register)
+RETPOLINE_VDSO_CFLAGS	:= $(call cc-option,-mindirect-branch=thunk-inline -mindirect-branch-register)
+endif
+ifdef CONFIG_CC_IS_CLANG
+RETPOLINE_CFLAGS	:= -mretpoline-external-thunk
+RETPOLINE_VDSO_CFLAGS	:= -mretpoline
+endif
 export RETPOLINE_CFLAGS
 export RETPOLINE_VDSO_CFLAGS
 
@@ -737,7 +740,7 @@ include/config/auto.conf:
 endif # may-sync-config
 endif # need-config
 
-KBUILD_CFLAGS	+= $(call cc-option,-fno-delete-null-pointer-checks,)
+KBUILD_CFLAGS	+= -fno-delete-null-pointer-checks
 KBUILD_CFLAGS	+= $(call cc-disable-warning,frame-address,)
 KBUILD_CFLAGS	+= $(call cc-disable-warning, format-truncation)
 KBUILD_CFLAGS	+= $(call cc-disable-warning, format-overflow)
@@ -752,17 +755,19 @@ KBUILD_CFLAGS += -Os
 endif
 
 # Tell gcc to never replace conditional load with a non-conditional one
+ifdef CONFIG_CC_IS_GCC
+# gcc-10 renamed --param=allow-store-data-races=0 to
+# -fno-allow-store-data-races.
 KBUILD_CFLAGS	+= $(call cc-option,--param=allow-store-data-races=0)
 KBUILD_CFLAGS	+= $(call cc-option,-fno-allow-store-data-races)
+endif
 
 ifdef CONFIG_READABLE_ASM
 # Disable optimizations that make assembler listings hard to read.
 # reorder blocks reorders the control in the function
 # ipa clone creates specialized cloned functions
 # partial inlining inlines only parts of functions
-KBUILD_CFLAGS += $(call cc-option,-fno-reorder-blocks,) \
-                 $(call cc-option,-fno-ipa-cp-clone,) \
-                 $(call cc-option,-fno-partial-inlining)
+KBUILD_CFLAGS += -fno-reorder-blocks -fno-ipa-cp-clone -fno-partial-inlining
 endif
 
 ifneq ($(CONFIG_FRAME_WARN),0)
@@ -854,8 +859,10 @@ DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
 endif
 
 ifdef CONFIG_DEBUG_INFO_REDUCED
-DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
-		   $(call cc-option,-fno-var-tracking)
+DEBUG_CFLAGS	+= -fno-var-tracking
+ifdef CONFIG_CC_IS_GCC
+DEBUG_CFLAGS	+= -femit-struct-debug-baseonly
+endif
 endif
 
 ifdef CONFIG_DEBUG_INFO_COMPRESSED
@@ -889,6 +896,7 @@ ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
   endif
 endif
 ifdef CONFIG_HAVE_FENTRY
+  # s390-linux-gnu-gcc did not support -mfentry until gcc-9.
   ifeq ($(call cc-option-yn, -mfentry),y)
     CC_FLAGS_FTRACE	+= -mfentry
     CC_FLAGS_USING	+= -DCC_USING_FENTRY
@@ -901,7 +909,7 @@ endif
 
 # We trigger additional mismatches with less inlining
 ifdef CONFIG_DEBUG_SECTION_MISMATCH
-KBUILD_CFLAGS += $(call cc-option, -fno-inline-functions-called-once)
+KBUILD_CFLAGS += -fno-inline-functions-called-once
 endif
 
 ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
@@ -980,14 +988,16 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
 
 # We'll want to enable this eventually, but it's not going away for 5.7 at least
 KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
-KBUILD_CFLAGS += $(call cc-disable-warning, array-bounds)
+KBUILD_CFLAGS += -Wno-array-bounds
 KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
 
 # Another good warning that we'll want to enable eventually
 KBUILD_CFLAGS += $(call cc-disable-warning, restrict)
 
 # Enabled with W=2, disabled by default as noisy
-KBUILD_CFLAGS += $(call cc-disable-warning, maybe-uninitialized)
+ifdef CONFIG_CC_IS_GCC
+KBUILD_CFLAGS += -Wno-maybe-uninitialized
+endif
 
 # disable invalid "can't wrap" optimizations for signed / pointers
 KBUILD_CFLAGS	+= -fno-strict-overflow
@@ -996,7 +1006,9 @@ KBUILD_CFLAGS	+= -fno-strict-overflow
 KBUILD_CFLAGS  += -fno-stack-check
 
 # conserve stack if available
-KBUILD_CFLAGS   += $(call cc-option,-fconserve-stack)
+ifdef CONFIG_CC_IS_GCC
+KBUILD_CFLAGS   += -fconserve-stack
+endif
 
 # Prohibit date/time macros, which would make the build non-deterministic
 KBUILD_CFLAGS   += -Werror=date-time
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 5ddd575159fb..7d3d29203a72 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -365,6 +365,7 @@ config STRIP_ASM_SYMS
 config READABLE_ASM
 	bool "Generate readable assembler code"
 	depends on DEBUG_KERNEL
+	depends on CC_IS_GCC
 	help
 	  Disable some compiler optimizations that tend to generate human unreadable
 	  assembler output. This may make the kernel slightly slower, but it helps
@@ -383,6 +384,7 @@ config HEADERS_INSTALL
 
 config DEBUG_SECTION_MISMATCH
 	bool "Enable full Section mismatch analysis"
+	depends on CC_IS_GCC
 	help
 	  The section mismatch analysis checks if there are illegal
 	  references from one section to another section.

base-commit: f12b034afeb3a977bbb1c6584dedc0f3dc666f14
-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816202504.2228283-1-ndesaulniers%40google.com.
