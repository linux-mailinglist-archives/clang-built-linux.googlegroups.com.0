Return-Path: <clang-built-linux+bncBC2ORX645YPRBDXLSP6AKGQEXIP4HPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D5528C5C6
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:15 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id t26sf3382371pfl.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549134; cv=pass;
        d=google.com; s=arc-20160816;
        b=xg/dgt8kz9SmYtCFJmibmqN8aDRGprRfqcy1WlwvJA1uoOY1/y3rDja362AyEdG59E
         oUD1QcEHAcNpoJECbvfaLnVfXpgtdFmtH7QmcoIONyjW2oERdOX3Y1aEKC1DC1yqzzBS
         YJkrMq4NeW8WnQeS3wzx+TBYD7ClxmeNVCOSePpI8xkjgXwMzlm5L51WMXFcutLfMZBv
         PpHFuA0+c5W/lyTu9SKQ+u/bNukdmvijoiD30dzvflmSj29SE81xnXMfyf2xlYd9R8yd
         qIb0AsKesKSfcSpiv0uU3rmAQUqwQ3isGAse547eAlUQCQpM8bW8cqO+V9JRwR+eEMCu
         lO9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=s+rZZfB1sNRIybs8dsSXezhsWMEFB2VzG+5Wx4fgtcc=;
        b=n6PzL1ASmUBHxzXvYCU0l6DlADK5nfhdzd586B8UaUDo2+ojQlThC9yuQmjrKmslrS
         xIAAOeMwQD0g/UtAAZvaVfeYe5nmL7nlFMETtbmyub17lEqSd12cRvuNtOLr3vbrScTa
         2N98gELcM35D1snh8LUd0jc0m0qIALNahuchVPXd0JhztGCH/q4E13QyO76ujc+78zq3
         phZ1fZ3f6VUrLw5Wl+DYGQf4KBjr6tshFerlR3IPcZiyj9z/IqXvnf1m9QdyEQrrB9k6
         FFj7a5zLOaPoo7qN8secrb3dU5f7vsd6orFIxRMp0dkPcTKyyKpFFCqm7Gg/zKLrljrC
         CxOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qUGfJyLp;
       spf=pass (google.com: domain of 3jfwexwwkai4as40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3jfWEXwwKAI4As40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s+rZZfB1sNRIybs8dsSXezhsWMEFB2VzG+5Wx4fgtcc=;
        b=LiPmbGv908fTJ6cIRF89olAA3IjR3H6/hKu7PgL6Vi24rI7+nUzrJVF8AUO68YM5xd
         9TMmjG73UJAIGvPKvLwze1D7ntSGdqJ1b7IkxAh0pDs5+wI/rr4U5S9L5UegBf1+7NKl
         XSBRDbsLtZ9hkiK2fcpYKdO335xO6OQovjpfwQsU9ty1MQ2jWnsybyzYZAJ0eDNhYxNX
         w8XRCb/yG33Xi2Dgiapf3S3LX5Z0Bo4KwF1UDfvt3W/67g3AVaL6VKY2CuQGltVDpcIv
         RrKLdbHHH6jPjzDxIONvaw3/bY8IZIwmzCsNbQSbBhDZB2RMOD95CX3LQ354BU4jUuUW
         emJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s+rZZfB1sNRIybs8dsSXezhsWMEFB2VzG+5Wx4fgtcc=;
        b=nSxAss4sqFGawWzyqmO+yo56Xj6D4CbbNP34mn+UbHy6GMNq/Q+hLDD+kgeQitGV4C
         bKr2NbeWyum1GmuxKhlgEnihitlDqwnletbnEcN06G3duKMT7ui/T2hr5KxfW/7ONDJI
         aYXvlk3fiHcZShQijj2V0V/TQriKafQcDCASmkeu3oXxFb75P3NLNj1W5gBkRtYVXMZy
         9yL6pqL4cLWRZ2MWRJbDRPcZKUsE7ek1hGco2aLxQzAnH7FowLrDW6I+OVyIUbdKlm73
         F2kUNl12dwQzTcy2LE/ErqZQU2Q/jWKR35ccJO38ozbn5lPuaWMjYVvjq8Hy1RUqFgym
         DaDA==
X-Gm-Message-State: AOAM531Z7O6wTVYcDwOAGMzVCFkyDm6hxpMZWFP83UX62YuJJpnYzUrX
	RcuqHe493/k6++7kG87RVG8=
X-Google-Smtp-Source: ABdhPJzAqp+L9hO5FucE6UJauspedEYrPFHy877WAALFimptqiDWnzJBtWF0zx2CRjM7M4xmv/G2Ig==
X-Received: by 2002:aa7:9dc9:0:b029:155:209a:1004 with SMTP id g9-20020aa79dc90000b0290155209a1004mr24278737pfq.23.1602549134564;
        Mon, 12 Oct 2020 17:32:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9045:: with SMTP id w5ls8300631plz.9.gmail; Mon, 12
 Oct 2020 17:32:14 -0700 (PDT)
X-Received: by 2002:a17:90a:cc0f:: with SMTP id b15mr1798692pju.202.1602549133999;
        Mon, 12 Oct 2020 17:32:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549133; cv=none;
        d=google.com; s=arc-20160816;
        b=GTR56e8/4hMo8IQbrwoGg3hGpTjFiQRQFwP55QHFKkhMEC2gKvOWBCfZ46AlI/2SKe
         TutSc/dc7hGYLPFrJGf6k9XntA4E7JDxintEtqumm0iiZiljXila1lrMkygVVeNfk2+Q
         Fh+bvcIFiE8vqnWVOKqDWr+BxmU3gz/nS9p7LHUetaDOpTGxjrfoFU25Bb0Vxc9FyJ+l
         FbDIyiOoHqpmp0QM3jb1TxUGlE+YjSPhkh8CReQmM6urqBbb5R9/JZ3TKsgeNYIc7GpU
         SQ4RphEVZwZ47W/pUiOPd/AhTcXYgq5Hjid6cloaMMe+HQfM1KB8as5wIra6kXzTkxpy
         P17Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=f2KSu+z7jDKn/rdJa/Ip0wrfAi6otBE8x5RUzQIqnlQ=;
        b=VL+0/J9weh1umtPPxL6vmLDrCtQOb4DUifsWYIW2rqp9Juk8tWeVzrYx9HeHtN8zFH
         46i+SJ+6e0+HwdyTXRf8PdnfM+Fn/8DBQ2rgpHzIGZY6hTY6EjVV8fTbra7y2HhgKsuV
         RvbsFVsRV96eIoIB2+XruJE5W0qXegrMftR8hit3duHDtME9LaZutOy40cQ6Rl0lezYw
         k2b8xrot1llcA/RW4ymx/XzotHSRzGo4Ro1SoUMdY1qXoFhndZE5J5gWacTLBa/VLHAF
         cLo6+X2zfdLrxh4cmBBLM8cbWyzhL+/wClgOl5QkpuG4IDQHRNJgsXevWm6eTAjN0mGZ
         Wk7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qUGfJyLp;
       spf=pass (google.com: domain of 3jfwexwwkai4as40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3jfWEXwwKAI4As40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id 191si1309919pfu.3.2020.10.12.17.32.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jfwexwwkai4as40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id l8so6568550qvz.2
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:13 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e5cf:: with SMTP id
 u15mr27081552qvm.24.1602549133091; Mon, 12 Oct 2020 17:32:13 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:42 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 04/25] tracing: move function tracer options to Kconfig
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
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
 header.i=@google.com header.s=20161025 header.b=qUGfJyLp;       spf=pass
 (google.com: domain of 3jfwexwwkai4as40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3jfWEXwwKAI4As40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
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

Move function tracer options to Kconfig to make it easier to add
new methods for generating __mcount_loc, and to make the options
available also when building kernel modules.

Note that FTRACE_MCOUNT_USE_* options are updated on rebuild and
therefore, work even if the .config was generated in a different
environment.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 Makefile               | 20 ++++++++------------
 kernel/trace/Kconfig   | 16 ++++++++++++++++
 scripts/Makefile.build |  6 ++----
 3 files changed, 26 insertions(+), 16 deletions(-)

diff --git a/Makefile b/Makefile
index 0dcf302fe2da..129001b38357 100644
--- a/Makefile
+++ b/Makefile
@@ -841,12 +841,8 @@ KBUILD_CFLAGS += $(DEBUG_CFLAGS)
 export DEBUG_CFLAGS
 
 ifdef CONFIG_FUNCTION_TRACER
-ifdef CONFIG_FTRACE_MCOUNT_RECORD
-  # gcc 5 supports generating the mcount tables directly
-  ifeq ($(call cc-option-yn,-mrecord-mcount),y)
-    CC_FLAGS_FTRACE	+= -mrecord-mcount
-    export CC_USING_RECORD_MCOUNT := 1
-  endif
+ifdef CONFIG_FTRACE_MCOUNT_USE_CC
+  CC_FLAGS_FTRACE	+= -mrecord-mcount
   ifdef CONFIG_HAVE_NOP_MCOUNT
     ifeq ($(call cc-option-yn, -mnop-mcount),y)
       CC_FLAGS_FTRACE	+= -mnop-mcount
@@ -854,6 +850,12 @@ ifdef CONFIG_FTRACE_MCOUNT_RECORD
     endif
   endif
 endif
+ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
+  ifdef CONFIG_HAVE_C_RECORDMCOUNT
+    BUILD_C_RECORDMCOUNT := y
+    export BUILD_C_RECORDMCOUNT
+  endif
+endif
 ifdef CONFIG_HAVE_FENTRY
   ifeq ($(call cc-option-yn, -mfentry),y)
     CC_FLAGS_FTRACE	+= -mfentry
@@ -863,12 +865,6 @@ endif
 export CC_FLAGS_FTRACE
 KBUILD_CFLAGS	+= $(CC_FLAGS_FTRACE) $(CC_FLAGS_USING)
 KBUILD_AFLAGS	+= $(CC_FLAGS_USING)
-ifdef CONFIG_DYNAMIC_FTRACE
-	ifdef CONFIG_HAVE_C_RECORDMCOUNT
-		BUILD_C_RECORDMCOUNT := y
-		export BUILD_C_RECORDMCOUNT
-	endif
-endif
 endif
 
 # We trigger additional mismatches with less inlining
diff --git a/kernel/trace/Kconfig b/kernel/trace/Kconfig
index a4020c0b4508..927ad004888a 100644
--- a/kernel/trace/Kconfig
+++ b/kernel/trace/Kconfig
@@ -595,6 +595,22 @@ config FTRACE_MCOUNT_RECORD
 	depends on DYNAMIC_FTRACE
 	depends on HAVE_FTRACE_MCOUNT_RECORD
 
+config FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
+	bool
+	depends on FTRACE_MCOUNT_RECORD
+
+config FTRACE_MCOUNT_USE_CC
+	def_bool y
+	depends on $(cc-option,-mrecord-mcount)
+	depends on !FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
+	depends on FTRACE_MCOUNT_RECORD
+
+config FTRACE_MCOUNT_USE_RECORDMCOUNT
+	def_bool y
+	depends on !FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
+	depends on !FTRACE_MCOUNT_USE_CC
+	depends on FTRACE_MCOUNT_RECORD
+
 config TRACING_MAP
 	bool
 	depends on ARCH_HAVE_NMI_SAFE_CMPXCHG
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index a467b9323442..a4634aae1506 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -178,8 +178,7 @@ cmd_modversions_c =								\
 	fi
 endif
 
-ifdef CONFIG_FTRACE_MCOUNT_RECORD
-ifndef CC_USING_RECORD_MCOUNT
+ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
 # compiler will not generate __mcount_loc use recordmcount or recordmcount.pl
 ifdef BUILD_C_RECORDMCOUNT
 ifeq ("$(origin RECORDMCOUNT_WARN)", "command line")
@@ -206,8 +205,7 @@ recordmcount_source := $(srctree)/scripts/recordmcount.pl
 endif # BUILD_C_RECORDMCOUNT
 cmd_record_mcount = $(if $(findstring $(strip $(CC_FLAGS_FTRACE)),$(_c_flags)),	\
 	$(sub_cmd_record_mcount))
-endif # CC_USING_RECORD_MCOUNT
-endif # CONFIG_FTRACE_MCOUNT_RECORD
+endif # CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
 
 ifdef CONFIG_STACK_VALIDATION
 ifneq ($(SKIP_STACK_VALIDATION),1)
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-5-samitolvanen%40google.com.
