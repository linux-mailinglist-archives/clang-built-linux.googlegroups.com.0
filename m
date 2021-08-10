Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSOJZOEAMGQE5PD62QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id C143D3E8482
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 22:42:50 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id z10-20020a056602080ab02905a113250a04sf343337iow.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 13:42:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628628169; cv=pass;
        d=google.com; s=arc-20160816;
        b=tFGD49m+AjTgWX95iCd8IUcoC4UGlHi1DMjeNiCqIPzZZ7i/aQJBr0YEhBYxp1q4h2
         E0Eyr+naGBTQ47EOptI5n7/YLruoY44n6zDbqjvuv0r/wBbi49lOFMLWBb3Ku8Kps6Qi
         DZ40EAOluu4H/DNyQcnXgr+snx+4P99e6EYr5heW+fdpudWrrQfP+Iykfd6POpOFDV4b
         aza0INciBQ+sut1KWlRyxyJq59gUbbRPmqs3LrRP4YmXkJ1FDTA2suw9ogiLJsJ6yjrL
         +QnCJPwNVxw+ogeCjwMZ/Af85Be1IvARki6+wkLkLrTcGt5sSjYnPgxV3XK3kbZ9Kf7k
         Zuag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=Ad8GyyGilQzJvluDkmXSJoLDkJX6me2cL5FM++JpH8o=;
        b=f78EuusvLANovK6hijyiLYob5AnnOLFyCZcQu6SZieS7k9RcHRdfdfGg+dAQYUMU9a
         5i51YbcHJebhQqdoRiRapoKlgePoj0FQ5X6n1RFIb1sB+s4KsLIZbu7201ZAAE+Fzzel
         Af7OhCBzMCWUFiNf2Rp1mBUy/dE1puuQLBpVCvc2+Gx0THkOBiUquuKLbWsQBtBvBps7
         Xdo4Ql1j34p6OagOgFYMudCEa0R4uW2QCYyQXyplMDdd3V5iho6Fg30fJoESL+jvyFFb
         r6BY9gIdcqPYb6l/cO6ywRZ9FE0LoTvIBFLEFkTz33XP2uA1fkZxhCxdwIxns/uic6cy
         vTHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="FIdq2p/h";
       spf=pass (google.com: domain of 3yoqsyqwkaosaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3yOQSYQwKAOsaQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Ad8GyyGilQzJvluDkmXSJoLDkJX6me2cL5FM++JpH8o=;
        b=ruzywYvVyFkYiP+hRirhr31wW2dKNCpVdNqCHHBk0RNdmEyaGfJkN7prz/uJ/F+vAl
         Ht1t4cIS4bLnpNv2UhKdy6AO41cfvVp/fxRigd1PL6PxVaoehkG0fssI4/r8eRyiJOpJ
         ykmpizSsYziRuSOCkJA9pPlcmCpitFBdqaHa43tPNF6/y+to/E3PF62jkdW0ADNx4B2K
         dn5FIokC/TkHa5dYevMBPfsJC+pcFjNtJHv1X0z+tkK7195qmmYAwUSsu5ojquxbNKwx
         jLVh++zKa9xmYEv8QZemqDGyTX9B3MHB23e4DDLDC946Ndi17nWemEdpYDPyUGpK2Slz
         UqEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ad8GyyGilQzJvluDkmXSJoLDkJX6me2cL5FM++JpH8o=;
        b=V8pefR+QE/C6GcY3LjKawkn3NhQTZ78bY9Iddo5/rqJan4XAjoX+H46Xdsju+EP9Dm
         Xzx8JZwbotLpu/1bu9XArandxc5MJgMLJ26T4ANW4Qf1CrId184j3Yz2m0iBmmXWIOlp
         pAdV+sSi5R2NJGrwPXsdy+ofcGLWNpCmlEWppx2LeXRntYT0qKRrI8R1LF2hXFjmCr4L
         elDlTwsdKFwq5UnKoSKQLjHaE0Ne5K1v1iGtgQcywPO90K6TRL4E7WkL/YkpzS52Yl8b
         rY0O6nKQDZwIpxBaMNgndNkfKsKeNHagk92a3r1umNuBdvp87rTOIjKupvlLsQCWZZF4
         jWVg==
X-Gm-Message-State: AOAM531T5U6J8lHY+14AA1sxGKsHH5WPhfXjHhBsQJaFfcOnuVtMYVod
	QPD/m8vXi5KOEtrviU9aGl8=
X-Google-Smtp-Source: ABdhPJzwsZM2DDAq/k7Oqb2WPqL6yTxZ6Yt7IeIaIBbs4qJGwjr5rnK0q9vx/xhVn7PRrBd/UkiVfQ==
X-Received: by 2002:a05:6638:1b6:: with SMTP id b22mr28679405jaq.122.1628628169357;
        Tue, 10 Aug 2021 13:42:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1c83:: with SMTP id w3ls7078ill.9.gmail; Tue, 10
 Aug 2021 13:42:49 -0700 (PDT)
X-Received: by 2002:a05:6e02:528:: with SMTP id h8mr358199ils.223.1628628168990;
        Tue, 10 Aug 2021 13:42:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628628168; cv=none;
        d=google.com; s=arc-20160816;
        b=tjYbiE3PX0g3egSoc1qk2MaPCIVvovDBnbE7Jy+ckx9TmVMLTgvSeXMDioDRBEXUJ3
         KYIQF1VEIOEyFS+uUqNaRK9IYpBk2tQ4tb3dA9/08tdxiaxHwLNNXrDfDmekZx/2RxUa
         lW0C3QK9peniRhz0VMWOVEZfCDK4d7XillmNgGLoi8No0wyy56gFxeGfgVNCf6dCLygh
         MAESQDRcSh7fFBU4uLNQMsCxfmDuY4+b7UIidwtwFqxqv1bLyBHZa8pcKP9zbyundD/2
         sG/XFyPYQRPYFOzJPKER2kLkqqblT487Kyk447p04kvX/OrxzN4CvizS+KlJvcQz5dIT
         9ZGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=EW6Q5CaUpfH7HbowLAZVGbAcLqxCVj49fYmRM95UtZI=;
        b=jMAf/67mUYI6A+HFqaeUxbWw+G4SByMQA48AE0eQvQW4cofJR6eP0B+xMNFWSZEItE
         KOlN/UUApp3BSBVNqVbFzSLrjz4PcCY2mXAynmPX8eYc5R6SVoMDQ1kQYQBLSaZGkAYs
         aV6v5H3+H13SMKjzDiXIW/y2MCI710oqf2KeLpM0X1OKP9A+N0ApGvEPZZUVP1a7FYgz
         huc+BAS/Xw/FhHu8kgtbV+SkAPXTnwKABRr1n/x8+LYwzNjeVzW5XRLkyaJwBVEA+hzG
         PEuAH26urd6d/F9lh60md/yOWZNS8iEydo8MHB57iMKeEVefW3ikDvODP+n4kb8V3nPr
         t0ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="FIdq2p/h";
       spf=pass (google.com: domain of 3yoqsyqwkaosaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3yOQSYQwKAOsaQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id y1si325740iol.2.2021.08.10.13.42.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Aug 2021 13:42:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yoqsyqwkaosaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id n71-20020a37274a0000b02903d24fa436e2so3474091qkn.3
        for <clang-built-linux@googlegroups.com>; Tue, 10 Aug 2021 13:42:48 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f3a2:624c:cdb9:1ee9])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:ff48:: with SMTP id
 y8mr19877957qvt.29.1628628168407; Tue, 10 Aug 2021 13:42:48 -0700 (PDT)
Date: Tue, 10 Aug 2021 13:42:37 -0700
Message-Id: <20210810204240.4008685-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.605.g8dce9f2422-goog
Subject: [PATCH] Makefile: remove stale cc-option checks
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>, 
	Vitor Massaru Iha <vitor@massaru.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Daniel Latypov <dlatypov@google.com>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="FIdq2p/h";       spf=pass
 (google.com: domain of 3yoqsyqwkaosaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3yOQSYQwKAOsaQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
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
* -mfentry
* -Wno-array-bounds

The following configs are made dependent on GCC, since they use GCC
specific flags.
* READABLE_ASM
* DEBUG_SECTION_MISMATCH

--param=allow-store-data-races=0 was renamed to --allow-store-data-races
in the GCC 10 release.

Also, base RETPOLINE_CFLAGS and RETPOLINE_VDSO_CFLAGS on CONFIC_CC_IS_*
then remove cc-option tests for Clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/1436
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Note: It may be preferred to move the test for
-fno-inline-functions-called-once for DEBUG_SECTION_MISMATCH into
Kconfig. That one does seem relatively more reasonable to implement in
Clang.

 Makefile          | 55 ++++++++++++++++++++++++++---------------------
 lib/Kconfig.debug |  2 ++
 2 files changed, 33 insertions(+), 24 deletions(-)

diff --git a/Makefile b/Makefile
index 027fdf2a14fe..3e3fb4affba1 100644
--- a/Makefile
+++ b/Makefile
@@ -730,9 +730,10 @@ endif # KBUILD_EXTMOD
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
@@ -740,12 +741,14 @@ ifdef CONFIG_FUNCTION_TRACER
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
 
@@ -798,7 +801,7 @@ include/config/auto.conf:
 endif # may-sync-config
 endif # need-config
 
-KBUILD_CFLAGS	+= $(call cc-option,-fno-delete-null-pointer-checks,)
+KBUILD_CFLAGS	+= -fno-delete-null-pointer-checks
 KBUILD_CFLAGS	+= $(call cc-disable-warning,frame-address,)
 KBUILD_CFLAGS	+= $(call cc-disable-warning, format-truncation)
 KBUILD_CFLAGS	+= $(call cc-disable-warning, format-overflow)
@@ -844,17 +847,17 @@ KBUILD_RUSTFLAGS += -Copt-level=z
 endif
 
 # Tell gcc to never replace conditional load with a non-conditional one
-KBUILD_CFLAGS	+= $(call cc-option,--param=allow-store-data-races=0)
+ifdef CONFIG_CC_IS_GCC
+KBUILD_CFLAGS	+= $(call cc-option,--allow-store-data-races,--param=allow-store-data-races=0)
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
@@ -959,8 +962,10 @@ DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
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
@@ -997,10 +1002,8 @@ ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
   endif
 endif
 ifdef CONFIG_HAVE_FENTRY
-  ifeq ($(call cc-option-yn, -mfentry),y)
-    CC_FLAGS_FTRACE	+= -mfentry
-    CC_FLAGS_USING	+= -DCC_USING_FENTRY
-  endif
+  CC_FLAGS_FTRACE	+= -mfentry
+  CC_FLAGS_USING	+= -DCC_USING_FENTRY
 endif
 export CC_FLAGS_FTRACE
 KBUILD_CFLAGS	+= $(CC_FLAGS_FTRACE) $(CC_FLAGS_USING)
@@ -1009,7 +1012,7 @@ endif
 
 # We trigger additional mismatches with less inlining
 ifdef CONFIG_DEBUG_SECTION_MISMATCH
-KBUILD_CFLAGS += $(call cc-option, -fno-inline-functions-called-once)
+KBUILD_CFLAGS += -fno-inline-functions-called-once
 endif
 
 ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
@@ -1088,14 +1091,16 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
 
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
@@ -1104,7 +1109,9 @@ KBUILD_CFLAGS	+= -fno-strict-overflow
 KBUILD_CFLAGS  += -fno-stack-check
 
 # conserve stack if available
-KBUILD_CFLAGS   += $(call cc-option,-fconserve-stack)
+ifdef CONFIG_CC_IS_GCC
+KBUILD_CFLAGS   += -fconserve-stack
+endif
 
 # Prohibit date/time macros, which would make the build non-deterministic
 KBUILD_CFLAGS   += -Werror=date-time
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index b6b951b0ed46..a4a431606be2 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -364,6 +364,7 @@ config STRIP_ASM_SYMS
 config READABLE_ASM
 	bool "Generate readable assembler code"
 	depends on DEBUG_KERNEL
+	depends on CC_IS_GCC
 	help
 	  Disable some compiler optimizations that tend to generate human unreadable
 	  assembler output. This may make the kernel slightly slower, but it helps
@@ -382,6 +383,7 @@ config HEADERS_INSTALL
 
 config DEBUG_SECTION_MISMATCH
 	bool "Enable full Section mismatch analysis"
+	depends on CC_IS_GCC
 	help
 	  The section mismatch analysis checks if there are illegal
 	  references from one section to another section.
-- 
2.32.0.605.g8dce9f2422-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210810204240.4008685-1-ndesaulniers%40google.com.
