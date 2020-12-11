Return-Path: <clang-built-linux+bncBC2ORX645YPRBDP5Z37AKGQEAVAZPJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 044662D7E50
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:46:39 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id p5sf112310otf.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:46:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712398; cv=pass;
        d=google.com; s=arc-20160816;
        b=sMVw06adF6dderHaIXvifLJn4GX/8W64E4Bp+mTO9ZBEqXtY2/0xm1qdim2Gvo57un
         nzCMprfr8iNjdPq2ObIzmzSOmXTB/UgyBRBVainDSir+YEtxYHIqNGWMh7zQzelunBB3
         8HGpHFqfge6B+7zn3MXYA+RD8ilWM9gO7+EK0km0/Cxbfpq1XsJE0jSS6oDs5XxGEIXs
         lRXJ2F/JRxBDagwv281CWMyhPaZ//J3JNsRULhJmVk4/Ct2mrHt3QbkYf0JtX521cm0p
         ZYwYekgHy+kQuzi7NZjU3lXT0yf/rraP83cwasmA/rRYjCy7egKE3calmqZBmqMcI33q
         rm3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=qUDDXCl4l42/O8VzkxCcJ96K+xiNTLvYVkX4/XcccPY=;
        b=dLp5ryHkWM2Jq34eGXjTGgE8s2FtokHmoWgh7LoF+E/UZkKdO775zCqFFvcDNRK0i0
         6kIPbNXTgvpJ0fQaKXaPClwyy2rX4nAR0H1sZM3ZcByvYj4WI9VqQ0AMkNW7PbzlYe53
         Way/P9o90Lv8QPJFgMBGKPAzSnioVLr1DNbWiP/Z9nmfNcs16tCjSeUGFNl/13QrHNjf
         Z57F7NHWPspWWe+XxW7ghdJ1+EeHw1Ll4PGpYqa0Uko4+O5bnlEhu052TDoTv2iW/zJy
         3ORMi3gBMtWtadt81uSbWlwv5CS8OvEOxBCqXaUHWoCn36COSsBPmbZ8JDTH+VS0IJT4
         YWkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s5AvzOna;
       spf=pass (google.com: domain of 3jl7txwwkaf0n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3jL7TXwwKAF0N5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qUDDXCl4l42/O8VzkxCcJ96K+xiNTLvYVkX4/XcccPY=;
        b=VwTL9qOlGHbQTFscPc+gFKcD/3aZz6HynRQM4vXAmL7meiUaLxQgnRY3bIK1bqT/vH
         tuZjHH9j/+HTaR+vC5Oz8JXSua1i+/xO57T8GhAenzGNSjZ3aEurpm8IhNJyRM+wQ9jh
         uMORyo9AXv49x+WqvmkoONDp15reWkpIaiz4VMlc5jksTErDIl3gqNHRoBQPsQ0N6EzU
         c8/awaqlD3FfeFOMMOkF1zO6xY77zHpsQU9BXKguISD3junWBoZs6vDD7JaZfY0rlbja
         A+QyMv5AYmtzmhe5vM/fEHXEGf3IZ+FIlGAIlQRJVi5vi+URt3W0H+RB6ZLuUmM9C3Fr
         XjjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qUDDXCl4l42/O8VzkxCcJ96K+xiNTLvYVkX4/XcccPY=;
        b=il3sCgQ69A+4znvnxruGxENForElKxqCc0XMGUi6V7yAtD9RFYa1YZZIp5qFDXTV2b
         XFQbrlAHakqGe0Dq9kULEH0RD/+rvnHLFV97mxfA0466O2VtNCDr7TSxwPIH3rncIA8A
         LLs7OA+4RFDkNQKj7B65kVmrmgqYGdecGsZ+mJNlqoCa9vGyah8BZfsVMy39mYT43R4Q
         rx3W5yLDX2o+o9m7RIygAQRcl2rgeiXjhV7aTe7KuZsnAigmj3l7tcghfvA/tg/YcF7J
         we3w72K/0TRMN0GxaxWiKIX1m0R8amI7kDCThGdZmU5W/AOV78gMJ/Ua+1WzYWXCJHWE
         d89A==
X-Gm-Message-State: AOAM533qElp9MBnK7mh9XmgOfmrlwJsdGUdWQanQDGUbkmgKIaEuskGv
	0IYvVgtTB3xAqhqZUdrDEWI=
X-Google-Smtp-Source: ABdhPJz9z5SvzcakvUyFT72EWJznaWeEJoPBEr739brWh+pkJKsrrqNhqlQFP9ElDNhD6RUTHKxxYg==
X-Received: by 2002:a9d:57c8:: with SMTP id q8mr9781262oti.168.1607712397988;
        Fri, 11 Dec 2020 10:46:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e382:: with SMTP id l2ls681552oov.10.gmail; Fri, 11 Dec
 2020 10:46:37 -0800 (PST)
X-Received: by 2002:a4a:ded4:: with SMTP id w20mr11127361oou.49.1607712397534;
        Fri, 11 Dec 2020 10:46:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712397; cv=none;
        d=google.com; s=arc-20160816;
        b=K1ecuhqTD6p99K97gkDZtcRK5IC59TYptskvLSSZb7krAGgxCyh2lKZr8aabJMAq/c
         ADJ4EPMie94jWWl10W50EsB02vV8n1vVvNALHgF9xIfDOkQzsMmltTNEcJutl7LRAuup
         /33bqZebRrtK1H2qFdxRKu3v7ZjqhrePhuXyoWkTUjxGWgoPfYRpLHSoTwImIhyr6z7S
         WIREWCym2CCvmwcdUTnNk2QqZjCstzCA/ZoN+0oZeILwcd/5zyXSO6NTGoB9h3pbrr4G
         yg7kwcutWjvx/OuLPqpGw4y2fqbC8c0um/FJm81F5aZ83XIdXisbJ7CuLoIhi01XQRod
         TF2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=4hlH/IsPuMfvFfvGu7uc1ib2zS05zZu47wk1UBR5mgY=;
        b=m//JmdDom7XgcCfX5uiOCYzRp6RraL3+sK1g4P5JumLNQ0Bgh6VXfvToeTFnD566be
         4SRo2LKN2RO1AMpq02wS4bHegRS2yaBATkHXLDcOHEZ3QiwuELS23xSczBaL6f68RBbc
         l/xV60PPdQr818U5+pinz4CnnHq7XeAhPKfIQrUE+rW4DBLocTiiJd9hVEyD4lWf2btF
         XIO/jKTv1XxoI/vlTNG38+6j8+e1IO76l/ivzotdDn11otZimwnHWyRddjmQS0pzGMbo
         hyQyYKGLYDVl2JR5nODq+Tx7WAMknP9Ju0ZRCw09eGiuqoZsCpIC0GpUiKGAYdGrvzHv
         Rmig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s5AvzOna;
       spf=pass (google.com: domain of 3jl7txwwkaf0n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3jL7TXwwKAF0N5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id t20si793999oth.4.2020.12.11.10.46.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:46:37 -0800 (PST)
Received-SPF: pass (google.com: domain of 3jl7txwwkaf0n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id c14so7170803qtn.5
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:46:37 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:114f:: with SMTP id
 b15mr17365133qvt.34.1607712396933; Fri, 11 Dec 2020 10:46:36 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:18 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 01/16] tracing: move function tracer options to Kconfig
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s5AvzOna;       spf=pass
 (google.com: domain of 3jl7txwwkaf0n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3jL7TXwwKAF0N5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
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
Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
---
 Makefile               | 20 ++++++++------------
 kernel/trace/Kconfig   | 16 ++++++++++++++++
 scripts/Makefile.build |  6 ++----
 3 files changed, 26 insertions(+), 16 deletions(-)

diff --git a/Makefile b/Makefile
index 9ec53d947628..94549264dd5c 100644
--- a/Makefile
+++ b/Makefile
@@ -851,12 +851,8 @@ KBUILD_CFLAGS += $(DEBUG_CFLAGS)
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
@@ -864,6 +860,12 @@ ifdef CONFIG_FTRACE_MCOUNT_RECORD
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
@@ -873,12 +875,6 @@ endif
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
index e1bf5228fb69..616a198661d6 100644
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
index 4c058f12dd73..22654a463ad8 100644
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
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-2-samitolvanen%40google.com.
