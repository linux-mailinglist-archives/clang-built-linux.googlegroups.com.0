Return-Path: <clang-built-linux+bncBC2ORX645YPRBRWWZ35QKGQEWFP7UYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2173A27DA72
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:46:47 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id h191sf3697088qke.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:46:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416006; cv=pass;
        d=google.com; s=arc-20160816;
        b=kxIF1yx6IT58ZcOZnURAtQhI3ZrlTFS/i2DJ/XkLkqCoYkDkejJ9DZ/NSlgn3MddRa
         6VyHy+Vso76uApeoD+Y9iRz2cTgmLOuXTKkmcziDXI4ElMXp8Fkmz7e0trDcfTSNmt6Z
         5gm6S01UmHONdVhEVLlJqv57BuO99CF2/P5qao/MSDbKGHH3okRQ3jWzOdtnk9Hh82Pd
         Kd+LjddhlxYi2Pe6e8Ejfr3IJsE85fqrx5uMhdTSbR89vlVsUXZGXQHb+8xFTKI61Vh+
         et2dylTDVfAstQsLmgLwbpYJkAYrLljn8aFX+/wpCKxC2ml4M7TBLYgXHKwR8ItVVWqZ
         GW3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=7HAHGYxj/l3hHE1nvLIYbqjsCG4nmfsb9Lsaa47lPeo=;
        b=EBYSUBr40icnsdKX5CMB239RRPnhYzSWu2fXS14xBbLbYjex9gmuR08r6AFLZKoK6A
         WPkvUFjAOBKALjPAGCQMDkHjtaGwRSbOSVqqnAUmbWizG608sX/2tjE847CND+AA34MC
         9t9I8p+TaxVJBhxbyamofOznQtdec0BloMwSY559CYu0Qu6Mnx4rCICVExeyFilLViyn
         6taDV/d61paLw4/fERWXOl0tYd8Y8OTtxvXqqpJoT8xQnf/APM34lhNe0ryRR698NYEM
         eQbkubhjq8JMjFDwkMgMkKpbChge9SlB5dvsEd8HLpDt6yq+fhHSOb8e4c1E6GypyOJv
         9yWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hJ2k1cYf;
       spf=pass (google.com: domain of 3rktzxwwkagsbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3RKtzXwwKAGsbJVRcXUeJWNWPXXPUN.LXV@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7HAHGYxj/l3hHE1nvLIYbqjsCG4nmfsb9Lsaa47lPeo=;
        b=mtudT06HEppT4G/l5FTcjx+OeuJnnNlga5g1hRofsTm3ZmW6t/enzaES6h0fqc10/0
         1Luw+N6gohUzXwJPp2O8TtKwUQancZ5xtKmYhTbelyBKg9AcwuwvtP79mg371stiAPta
         vShG4mPbudM6Zr7hVrFCBugOuUbUjvn3jqGyUL5KsqmN3eNRqgREpO8sriNz5y+KPlSu
         FLTpesn4lOAoZ42dW6NseZPyWf3H4h+bbb1XL4xmg3SWgQlCrAEkC0CpcaJqhjoTUaxN
         HO9fBgyb+hhm41ehtodLn4t2RnRqzZYEgPo7FW5GdndSHsB08ShT7goPUWpY4cx2+axy
         UZyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7HAHGYxj/l3hHE1nvLIYbqjsCG4nmfsb9Lsaa47lPeo=;
        b=rZ+GEZfm9f5YwVE3iXnmxFp9xis3MquxwHvzeLVmVuNBI5fQOQ6eBHLIIq5afHyxn0
         6EFpsamqXhZAQ3doqZu5EZ8VIwhg92Q8UVXJV4bt7QekXsUoeKe6ckpoOxCJhwAKhKKs
         ivBAljjraT8Ga9q4s9XMPccpRBMemmQNjtuxONq1mb0K9BibafjzjdsWIivUFbqsVvdB
         qZAIQ+9o2nOBqVMeq0GVmSjNX5MYRZDRrxt6dvsDbjqwYeKtPR5ETogv8hzS86XY3poO
         vmcHnDQrSI8uCXaMUugk4J7otwYRw6jG6mtpMKxBHJFRF3iKyF66fopj1kqnd2Vtwimh
         9Uug==
X-Gm-Message-State: AOAM530PSBtzX3wD88Odc1yOaOrJo7RKsqdGAcuRD7q66nJQw8Ml5IWz
	w8JbudOIbvuyY8xKIA2akjg=
X-Google-Smtp-Source: ABdhPJw/1KMTZ+yVmwUCAupf73gmziebboUcPMwRdHqaSQ6s0xt5AfJLy3C6GrOjGPyxBpAnIq/g/w==
X-Received: by 2002:a37:4c8d:: with SMTP id z135mr6454071qka.331.1601416006138;
        Tue, 29 Sep 2020 14:46:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:24ba:: with SMTP id t55ls112631qtc.8.gmail; Tue, 29 Sep
 2020 14:46:45 -0700 (PDT)
X-Received: by 2002:ac8:31d4:: with SMTP id i20mr5682495qte.179.1601416005694;
        Tue, 29 Sep 2020 14:46:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416005; cv=none;
        d=google.com; s=arc-20160816;
        b=gUjvP7e/YxYunsPU2kwq8h1DkHS0GquGiecKXNWE1f/QIWrLpINPVWEisHr5g8mZ91
         ecPNDgTzt1hC+iJmwD69maaO854WWFpwgPCEjxW6s2yYQKEGNH7ZxzrKgwWRB4J2E1nE
         l6Le2MuW2ZcaKBuzPuTN2RbKjdSdyZ5P8Mh3dzHcZJDyfOphgsnx78QnXg6ipaNgUTKA
         CeEYsBsSOUoRJwfZaryIo5ObJ5T2adNko+yIucjeYf91Uhz6W0+4Ur8c8ey5X+hl1iJD
         fhuMogHQ6rA5j26vJrpK5N216XSmSApDlrYEGhSZyjVnbRs7tv+Y9nqqzGMkF+Bhzs2R
         2Aog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=8Ng/zcoyfJ13YZKcoMDN8gZ1Jwe/pnq5fe0Ym5zenVI=;
        b=MyqMIBxW9mxv9jNkDMujizLrssLBL+YIatkwnwMUY5yP+/qAsiWuBTPI+3MngvjmMh
         a3okJh3e0FrD9xnj1Tt1KR9oM2xD0KK//SUaBD7sga54LtrfsBrKc2Daj5dUe2hk6HRb
         T7s2pDPIHm2Rl9sKvPZmX4YaulcEfTCOCTO78A6SoIEg2oZSxrldLntjDkNCI3PxbXdL
         GVddhDzXvh9hnJ6hyZ5qo7ZrDc25EYzu7Kdy5oG8pqSSb4paW5eLMq92ZN/LemCJm0FN
         3A8ThqQcB/+RQTXXsAZl4oKAK6mBqhsyqDpsM80Tel7xddB9t0EQRm4wBqJzQgkCiUjp
         7MEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hJ2k1cYf;
       spf=pass (google.com: domain of 3rktzxwwkagsbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3RKtzXwwKAGsbJVRcXUeJWNWPXXPUN.LXV@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id a2si334133qkl.4.2020.09.29.14.46.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:46:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rktzxwwkagsbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id gc24so4547411pjb.4
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:46:45 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a62:8607:0:b029:13f:b379:480a with
 SMTP id x7-20020a6286070000b029013fb379480amr5736037pfd.5.1601416004713; Tue,
 29 Sep 2020 14:46:44 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:08 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 06/29] tracing: move function tracer options to Kconfig
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hJ2k1cYf;       spf=pass
 (google.com: domain of 3rktzxwwkagsbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3RKtzXwwKAGsbJVRcXUeJWNWPXXPUN.LXV@flex--samitolvanen.bounces.google.com;
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

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 Makefile               | 20 ++++++++------------
 kernel/trace/Kconfig   | 16 ++++++++++++++++
 scripts/Makefile.build |  6 ++----
 3 files changed, 26 insertions(+), 16 deletions(-)

diff --git a/Makefile b/Makefile
index 476f19ccac17..77e4f0a9495e 100644
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
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-7-samitolvanen%40google.com.
