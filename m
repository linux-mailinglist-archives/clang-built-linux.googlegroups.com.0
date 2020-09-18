Return-Path: <clang-built-linux+bncBC2ORX645YPRBTVKST5QKGQE5WG5XYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id AC782270638
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:11 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id r1sf3995601pls.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460110; cv=pass;
        d=google.com; s=arc-20160816;
        b=L0Im9iA6+fQwcMn9rKuDSyt+1OIfiJHETwivVuPPg5hpa+Aigae0upDoBsgVr/0kR/
         iwtpQps9Wy/vmFzejh0JEZEJAfcSc+6XYLCHFbn50Ec099b5kYaBbMLl6Y5oKfaoF+6t
         U+KdQq3rjZbN1efmPTA4vjtXsPxAz1ewwlOOvDqAaP92kxk8yuyf8dh3metpKpL2zeC4
         tLEkuKPO5zFCixQ1HMuY+tE1nb1DYHKsKaCbnRy4VD+8tWi0o0jOJyzVOWeUa2lDCTke
         COhKG3kANY4ZMofMlQqUNXOPgTgpbb5G2To3e1gZfjjF5oSOHEI2Zhwd3yzIMzYAGVrV
         csHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=jt2UWy4iECydph++RV4EDOwgy+pr/xRidVy+lct8ixY=;
        b=ZKrG167R2AHFgluUSB13Lqo/pvFpw38sYT9+y9KVyoifHE+pZMhjJvNUpGgnKVR6Tq
         AQlBPDnYO576RtDw+Ymy1ydRnfaaoYhpK6mcSM8RRRw1phfglCNpIwIhi96fMJERoIdE
         fQU5M4iNMrMOR8iPw1v54jt+UpLnXM1u/1Wf+0/d+3i1no1PgMEC3cQmG8usINY+STXT
         y1C7/H1bnvsmgyD4+TFrVkgLByNA25yoGMCV4qaLaNxwDyN28qYhFHGq8D3hNCHxer2l
         x7rxjXWRxyHPEZJ1/8yGyxRVQlVO9c74RWOX7pRB3BHkoF954RtGEnSCMYHfgfPI7Co8
         25gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O4aL90Tv;
       spf=pass (google.com: domain of 3trvlxwwkaa46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3TRVlXwwKAA46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jt2UWy4iECydph++RV4EDOwgy+pr/xRidVy+lct8ixY=;
        b=DOd3x5R+WLgLKVAvqENma7ru39BggZDCnv4vlcC6j9DuZOhtpbNgaB+72cumg18sbK
         FR2qcWaldrhLQTDYbxpsiuuAJdOecvM30xdNIzMQoazyAOaH3kImX428CKspH9YquYiT
         RgBtRJJUm5NOSgJuIDtmKxVSZDs9HoHbUWxo3M+sJ18LSWt+xUuyE2YBvDR9DqE0cukg
         nunx45u0HwBa9ylTxuJyceQwn9WlroiAYglCI3tVFzfEcUqDIJ9ukkmWGWxBpNRWL8M4
         XVfF3RrAVAFUPHQidbpgXd1FNRMrfW/qJ1upvNPeApQ2mqyCXD0AdkOyIb9o41NdSveT
         aCgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jt2UWy4iECydph++RV4EDOwgy+pr/xRidVy+lct8ixY=;
        b=nGJrnwHz6PqdMAdzF/ssRHGsuNJheKvYVoGpGoroCtWYZnIUwyikVkJNiIWLiY/u1n
         WBfLXbRr6ZHgu1nvUwStMynTBAP1oaVFUiFvyd55ewxDFGl5ElwDh+NjpHkuGGbqBV9k
         ksByXPjxjXaIFdXGTIV14Xzosf/HWx6ygOILv4ayDNGl+0blIWjrT9gx3eEXS5saLib2
         lG5cmwyLpGvqk21nHpkEln/cUA2eazKAZD0RRqE7XWcqn9s1JvR/wZH8KBXDYy5kq/bX
         ZtU2tWvaFB3UrgHK9Ns8ssIc68XOqInOzR/iouohgCcBQkl0wwH0mukm9OPrz5QUkY40
         Wxtg==
X-Gm-Message-State: AOAM530uEQG45Uu3vDWf+Cwnym90vjf9YGggdgkj9X1F/7ZU1WS/Pfje
	aebCEJam1Fq4TtfTKHYh3Rc=
X-Google-Smtp-Source: ABdhPJwcXQ3d9kVUDb1mcC3i4QdEEjxQP3fatK3x5dcpQvqtVSxUPChGFs9MdmJySUcNcgano0DYQA==
X-Received: by 2002:a17:90a:e38a:: with SMTP id b10mr14200946pjz.17.1600460110331;
        Fri, 18 Sep 2020 13:15:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7612:: with SMTP id k18ls3163987pll.8.gmail; Fri, 18
 Sep 2020 13:15:09 -0700 (PDT)
X-Received: by 2002:a17:90a:6a0d:: with SMTP id t13mr15762166pjj.208.1600460109569;
        Fri, 18 Sep 2020 13:15:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460109; cv=none;
        d=google.com; s=arc-20160816;
        b=fo6XmGCkZH4bkYBgFG5CASR20cwU5X07ZxtQIsNAq8uEPX2Dd4NneQuDYgZE39D6zM
         cHE+zjnkvIwUWJFSmWHa8RXpXyqM+zrl2RWPgEXrHlF9Bsj0EKcGuPugHdlUcqa/jnkF
         WzYbHSKNC1Yykn06A0FbSrkSfdw3uiSfWaB8cgLHgZenZFUwpYPU4BowUiJCV+WswcuP
         HGEIVLvlxmkdjAUWg2l613k9ZEEQmKIuUvyr+kRkB/uP5TyHgcRlChghFFP/Dy4Z+vEq
         4MbT+E/7sN2e6AHLPBWSV1bNYQBpbEgfr05yMdKTGGlok365kghUh9cFXBcEnw3U4qjw
         yBMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=K8zImTLReF05TErj4+HOAXGu6YGSM1wWftERjd6zSXY=;
        b=EYRPaiTkL+YR2Jy5CcBT34QjMIk3mypNDSuySwtXYeHuJjoBkiBxv7rPPi8VGpGZIO
         GX0vXP29Oa4ghhJFyOHV34DywwisbDducohZjzXoKSYWnUg+mJw+q0ErN3u0DNE01cy/
         Cm2C+V+xOeBa38yutcPxNvsHe/4zmH/skcv0mSzTkn08MrJfrQsi0gUx0R/BG8jJVtXd
         8O+sqctQuAxuN4xC3Ukjwr94UvFaBktpXcmPiKrYMdIDOd6xQ8b4Nkx+/KbE4ZGCsUpp
         lqsbtndsNiEcSJcNly/kDUrk8ZiB1/1QApCFBvuw+b/p4Bv7lUpmKt65SPBte89xs5al
         Pklg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O4aL90Tv;
       spf=pass (google.com: domain of 3trvlxwwkaa46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3TRVlXwwKAA46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id y1si271353pjv.0.2020.09.18.13.15.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3trvlxwwkaa46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id y7so3730542pjt.1
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:09 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90a:cb0f:: with SMTP id
 z15mr13951080pjt.76.1600460109195; Fri, 18 Sep 2020 13:15:09 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:19 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 13/30] kbuild: lto: postpone objtool
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O4aL90Tv;       spf=pass
 (google.com: domain of 3trvlxwwkaa46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3TRVlXwwKAA46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With LTO, LLVM bitcode won't be compiled into native code until
modpost_link, or modfinal for modules. This change postpones calls
to objtool until after these steps, and moves objtool_args to
Makefile.lib, so the arguments can be reused in Makefile.modfinal.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/Kconfig              |  2 +-
 scripts/Makefile.build    | 22 ++--------------------
 scripts/Makefile.lib      | 11 +++++++++++
 scripts/Makefile.modfinal | 19 ++++++++++++++++---
 scripts/link-vmlinux.sh   | 23 ++++++++++++++++++++++-
 5 files changed, 52 insertions(+), 25 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 520e900efc75..727be15ba19e 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -600,7 +600,7 @@ config LTO_CLANG
 	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
 	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
 	depends on ARCH_SUPPORTS_LTO_CLANG
-	depends on !FTRACE_MCOUNT_RECORD
+	depends on HAVE_OBJTOOL_MCOUNT || !(X86_64 && DYNAMIC_FTRACE)
 	depends on !KASAN
 	depends on !GCOV_KERNEL
 	select LTO
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 44b6d964bcad..541dbe791743 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -218,30 +218,11 @@ cmd_record_mcount = $(if $(findstring $(strip $(CC_FLAGS_FTRACE)),$(_c_flags)),
 endif # USE_RECORDMCOUNT
 
 ifdef CONFIG_STACK_VALIDATION
+ifndef CONFIG_LTO_CLANG
 ifneq ($(SKIP_STACK_VALIDATION),1)
 
 __objtool_obj := $(objtree)/tools/objtool/objtool
 
-objtool_args = $(if $(CONFIG_UNWINDER_ORC),orc generate,check)
-
-objtool_args += $(if $(part-of-module), --module,)
-
-ifndef CONFIG_FRAME_POINTER
-objtool_args += --no-fp
-endif
-ifdef CONFIG_GCOV_KERNEL
-objtool_args += --no-unreachable
-endif
-ifdef CONFIG_RETPOLINE
-  objtool_args += --retpoline
-endif
-ifdef CONFIG_X86_SMAP
-  objtool_args += --uaccess
-endif
-ifdef USE_OBJTOOL_MCOUNT
-  objtool_args += --mcount
-endif
-
 # 'OBJECT_FILES_NON_STANDARD := y': skip objtool checking for a directory
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'y': skip objtool checking for a file
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'n': override directory skip for a file
@@ -253,6 +234,7 @@ objtool_obj = $(if $(patsubst y%,, \
 	$(__objtool_obj))
 
 endif # SKIP_STACK_VALIDATION
+endif # CONFIG_LTO_CLANG
 endif # CONFIG_STACK_VALIDATION
 
 # Rebuild all objects when objtool changes, or is enabled/disabled.
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 3d599716940c..745d88172bc7 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -216,6 +216,17 @@ dtc_cpp_flags  = -Wp,-MMD,$(depfile).pre.tmp -nostdinc                    \
 		 $(addprefix -I,$(DTC_INCLUDE))                          \
 		 -undef -D__DTS__
 
+# Objtool arguments are also needed for modfinal with LTO, so we define
+# then here to avoid duplication.
+objtool_args =								\
+	$(if $(CONFIG_UNWINDER_ORC),orc generate,check)			\
+	$(if $(part-of-module), --module,)				\
+	$(if $(CONFIG_FRAME_POINTER), --no-fp,)				\
+	$(if $(CONFIG_GCOV_KERNEL), --no-unreachable,)			\
+	$(if $(CONFIG_RETPOLINE), --retpoline,)				\
+	$(if $(CONFIG_X86_SMAP), --uaccess,)				\
+	$(if $(USE_OBJTOOL_MCOUNT), --mcount,)
+
 # Useful for describing the dependency of composite objects
 # Usage:
 #   $(call multi_depend, multi_used_targets, suffix_to_remove, suffix_to_add)
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index 2cb9a1d88434..1bd2953b11c4 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -9,7 +9,7 @@ __modfinal:
 include $(objtree)/include/config/auto.conf
 include $(srctree)/scripts/Kbuild.include
 
-# for c_flags
+# for c_flags and objtool_args
 include $(srctree)/scripts/Makefile.lib
 
 # find all modules listed in modules.order
@@ -34,10 +34,23 @@ ifdef CONFIG_LTO_CLANG
 # With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
 # avoid a second slow LTO link
 prelink-ext := .lto
-endif
+
+# ELF processing was skipped earlier because we didn't have native code,
+# so let's now process the prelinked binary before we link the module.
+
+ifdef CONFIG_STACK_VALIDATION
+ifneq ($(SKIP_STACK_VALIDATION),1)
+cmd_ld_ko_o +=								\
+	$(objtree)/tools/objtool/objtool $(objtool_args)		\
+		$(@:.ko=$(prelink-ext).o);
+
+endif # SKIP_STACK_VALIDATION
+endif # CONFIG_STACK_VALIDATION
+
+endif # CONFIG_LTO_CLANG
 
 quiet_cmd_ld_ko_o = LD [M]  $@
-      cmd_ld_ko_o =                                                     \
+      cmd_ld_ko_o +=							\
 	$(LD) -r $(KBUILD_LDFLAGS)					\
 		$(KBUILD_LDFLAGS_MODULE) $(LDFLAGS_MODULE)		\
 		-T scripts/module.lds -o $@ $(filter %.o, $^);		\
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 3e99a19b9195..a352a5ad9ef7 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -93,8 +93,29 @@ objtool_link()
 {
 	local objtoolopt;
 
+	if [ "${CONFIG_LTO_CLANG} ${CONFIG_STACK_VALIDATION}" = "y y" ]; then
+		# Don't perform vmlinux validation unless explicitly requested,
+		# but run objtool on vmlinux.o now that we have an object file.
+		if [ -n "${CONFIG_UNWINDER_ORC}" ]; then
+			objtoolopt="orc generate"
+		else
+			objtoolopt="check"
+		fi
+
+		if [ -n ${USE_OBJTOOL_MCOUNT} ]; then
+			objtoolopt="${objtoolopt} --mcount"
+		fi
+	fi
+
 	if [ -n "${CONFIG_VMLINUX_VALIDATION}" ]; then
-		objtoolopt="check --vmlinux"
+		if [ -z "${objtoolopt}" ]; then
+			objtoolopt="check --vmlinux"
+		else
+			objtoolopt="${objtoolopt} --vmlinux"
+		fi
+	fi
+
+	if [ -n "${objtoolopt}" ]; then
 		if [ -z "${CONFIG_FRAME_POINTER}" ]; then
 			objtoolopt="${objtoolopt} --no-fp"
 		fi
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-14-samitolvanen%40google.com.
