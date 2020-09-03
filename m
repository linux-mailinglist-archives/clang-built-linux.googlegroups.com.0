Return-Path: <clang-built-linux+bncBC2ORX645YPRBDVFYX5AKGQEID4U7YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1469E25CA49
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:11 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id m10sf3235979ild.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165070; cv=pass;
        d=google.com; s=arc-20160816;
        b=087gQM5Qru+x8vowaVxx0D3Tc0mARp+GTYnFpLhU7ZqDgaUnFkFCkBqStEOjTIg734
         B9R9mtGs5vIjUyUvJqY+mWf4KOzVUwDG1m6gjmuvWNKnyjyhmcK3kUm2zk3TS0WSGLrL
         9A3SL50QgH8U2otqNXjLbjE7ZYSlNOqVXSnMOCkyCPYvMSXWUoKTcs3GvDN915cTf23l
         nRBTuntxX8Y1EqDw6wGjzaA0N5GaZZZPEyPUSzdxISjYx9LN/a/2UhWKmtWqLxt2YckM
         tSspfMTbLKFRsJglnWJOxiuGWM/4g5Q8Lp7EaABD5CdgQB88v869SM7HyrTcqQbZu0xm
         Jjxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=ZfoRMf3pS+0+5GbUSzeXYZ7pLKCVpzQNNsNtsWsKy9w=;
        b=AkGa3++Wngun7DL3otMcaPTRxoFhcdP0tAMHx5Z+j+XbTO/ojTnaIQ/Yh4y47WDuyW
         JgGsdJXWRpVdsUzjhoGYk9fGVa+oz99jNA7F46XOUzqKM08IjBGcVCRAv/5rysrq67dB
         /eh7LHtNQn5iyrLpmK/yAkLCzpx6G2zzoQErH4OW8PLoh5CHiAmglyV9VhaqVyuBObi+
         93+2Xj8wE6suDk0pSgl7FrYfIxxSsYRrX4psEwQ+bU+Kthjx/jRPaVNAVq6OPDQbIIfG
         V/R0iLBX39EEdrCjX35n44/DUvOa9XRkxm87KKwju4EAxrRr9SXmuplT6WLxcC9ifg/P
         np7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Zsq/hG7X";
       spf=pass (google.com: domain of 3jvjrxwwkahgowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3jVJRXwwKAHgoWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZfoRMf3pS+0+5GbUSzeXYZ7pLKCVpzQNNsNtsWsKy9w=;
        b=RBY6TcAg6i3C/kgCbWAl3SjIEDyrdSkJ5p8tRJkgx8EGsDxJLb+0853Qg+BzeWJvAF
         0CvrVkFu//1sPKAWXtprFwLytcxmMbpbiKfhasDuAfB6gy1KPlPKNK78zdu9X7KyV8Qq
         pNEnOBucoqSKlTvbY4x1iNbEJG/ifp7GsR/0BpA/WBlmoctK6ZiijbEsXYsEf9JRBYGz
         aKb8pkr0d7E61f0fTXFBvbei9+A3BYMJg+GswruXwJuI6kRbv/gG2vnhTns93SYPR0mV
         1aEXU67e1FZ6DSkCFIRy0nURpJbl8lWrotqNpapQt5zOW+jmImvkSnLr4abSHoB/96NB
         COTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZfoRMf3pS+0+5GbUSzeXYZ7pLKCVpzQNNsNtsWsKy9w=;
        b=HLfLJXlEvt/lZOm8YxOtk2MzLyTAuvJgaj/K24NNs3hsUdIf8Skw6dF8ol47+D/RgM
         48ESAvrkjoMpB60FIuKFbvmvrhEr992rV0lSaCEYUm8Uk6XIbq/pDUFIIt/9M2zhVDQJ
         9hUiqRQc3mHQ+mtQeErf6nlqUlnIx76AR57b8G+PPRI5M6P3JBLZSi2pIgOqs5qLtqiP
         pY6iUI6CmKN+Hmosl+n2lHF7V6bcszzfclcwDDC4TncMwMayLzyo5ZsY4GjuDDkgETJj
         fAuIy7AixPV7eB86Eva6mT4KMGyUWtIjMCSwh0DTxLrTKvo8/MuFJKXApjiBGIPKDoUV
         73cA==
X-Gm-Message-State: AOAM532FyWdro+QVP9s1BKMxuLPHg3xm5cy6KXas1O8KQLD9jwMwR3cX
	hlhKYVIqDiAtmd/sJ7k8Cdo=
X-Google-Smtp-Source: ABdhPJwal3/+E3j2Dq8hIr5aqWj9PcVTSKPPBdTjo6rtYZmkp8J4Z9Wl3NiTa/tn/Gu2lU2eILut3A==
X-Received: by 2002:a02:a498:: with SMTP id d24mr5102828jam.137.1599165070098;
        Thu, 03 Sep 2020 13:31:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:290a:: with SMTP id l10ls1779242ilg.6.gmail; Thu, 03 Sep
 2020 13:31:09 -0700 (PDT)
X-Received: by 2002:a92:189:: with SMTP id 131mr5085197ilb.40.1599165069788;
        Thu, 03 Sep 2020 13:31:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165069; cv=none;
        d=google.com; s=arc-20160816;
        b=ZbfjSEoxUWvJJ8VSjw/iSKEFaHbJxMLN+HjKggcJFDK7yScswJejjOSLIUSCPXtoih
         SeK3VnwdtmfCiRzHxw38S2EK49PTnFGa4BDc+JVwiXhL2kgcuBNlhw3CDyYz9BcGg1Jk
         MzlHB3TYkSNNSV2fz2TJ5RGBnE3AtgvXsSr0St9zr1nGa1FkJnk3/KVrtgf1F3dpWG6A
         61+A4IUo+OmFAGK9DbOWiWeRn4J4Pcgu+J76qH9hAdjrBwUK++7xM/DYEDDEY4R9fRWr
         kXFzYJZO801dZmAnGsbYtvReLz91Az1o/SWMgSB598ZEbpqO8BqzI1XGgidPSklbljSn
         Gv9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=/qNzjrcyr5XKcvklD+GZQa7NZ7u6sAXpUN3H65DCv0U=;
        b=PhTu4RKb60NxC87sd3k7gmg6cn/b5lQg+/fyogSQyCogILv55RxrddbeP6QPI2n+5W
         sw04+mmn2J/+xnwX588yn8uc/Zr6TQM7H3JFseHBLoDiSDvwNZMQJWts5fiuNz/GajQP
         44SJKVDe6gL6zVgLUdn8aTH0TbYK8qTxcGkmhK7h6Loy4KLsTl/zJMaZO9KnMqTrSl1s
         mEP8EQZD+Ln6Ujb0I3dEZvR92175AOqPnL6s9lykpSdDZT3Ff8A8j2DKPWUso+MuSv/M
         Kch70KuSLhuh4bo6rYJhBlE4l43B6uQXfVpd2Vin1GQ1TjDytS+YxtX0M4HgVDdAfxUg
         PNvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Zsq/hG7X";
       spf=pass (google.com: domain of 3jvjrxwwkahgowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3jVJRXwwKAHgoWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id v15si51112iow.1.2020.09.03.13.31.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jvjrxwwkahgowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id u23so2291960qku.17
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:09 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:ca87:: with SMTP id
 a7mr4619179qvk.17.1599165069140; Thu, 03 Sep 2020 13:31:09 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:32 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 07/28] kbuild: add support for objtool mcount
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
 header.i=@google.com header.s=20161025 header.b="Zsq/hG7X";       spf=pass
 (google.com: domain of 3jvjrxwwkahgowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3jVJRXwwKAHgoWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
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

This change adds build support for using objtool to generate
__mcount_loc sections.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 Makefile               | 38 ++++++++++++++++++++++++++++++--------
 kernel/trace/Kconfig   |  5 +++++
 scripts/Makefile.build |  9 +++++----
 3 files changed, 40 insertions(+), 12 deletions(-)

diff --git a/Makefile b/Makefile
index ff5e0731d26d..a9dae26c93b5 100644
--- a/Makefile
+++ b/Makefile
@@ -859,17 +859,34 @@ ifdef CONFIG_HAVE_FENTRY
   ifeq ($(call cc-option-yn, -mfentry),y)
     CC_FLAGS_FTRACE	+= -mfentry
     CC_FLAGS_USING	+= -DCC_USING_FENTRY
+    export CC_USING_FENTRY := 1
   endif
 endif
 export CC_FLAGS_FTRACE
-KBUILD_CFLAGS	+= $(CC_FLAGS_FTRACE) $(CC_FLAGS_USING)
-KBUILD_AFLAGS	+= $(CC_FLAGS_USING)
 ifdef CONFIG_DYNAMIC_FTRACE
-	ifdef CONFIG_HAVE_C_RECORDMCOUNT
-		BUILD_C_RECORDMCOUNT := y
-		export BUILD_C_RECORDMCOUNT
-	endif
+  ifndef CC_USING_RECORD_MCOUNT
+  ifndef CC_USING_PATCHABLE_FUNCTION_ENTRY
+    # use objtool or recordmcount to generate mcount tables
+    ifdef CONFIG_HAVE_OBJTOOL_MCOUNT
+      ifdef CC_USING_FENTRY
+        USE_OBJTOOL_MCOUNT := y
+        CC_FLAGS_USING += -DCC_USING_NOP_MCOUNT
+        export USE_OBJTOOL_MCOUNT
+      endif
+    endif
+    ifndef USE_OBJTOOL_MCOUNT
+      USE_RECORDMCOUNT := y
+      export USE_RECORDMCOUNT
+      ifdef CONFIG_HAVE_C_RECORDMCOUNT
+        BUILD_C_RECORDMCOUNT := y
+        export BUILD_C_RECORDMCOUNT
+      endif
+    endif
+  endif
+  endif
 endif
+KBUILD_CFLAGS	+= $(CC_FLAGS_FTRACE) $(CC_FLAGS_USING)
+KBUILD_AFLAGS	+= $(CC_FLAGS_USING)
 endif
 
 # We trigger additional mismatches with less inlining
@@ -1218,11 +1235,16 @@ uapi-asm-generic:
 PHONY += prepare-objtool prepare-resolve_btfids
 prepare-objtool: $(objtool_target)
 ifeq ($(SKIP_STACK_VALIDATION),1)
+objtool-lib-prompt := "please install libelf-dev, libelf-devel or elfutils-libelf-devel"
+ifdef USE_OBJTOOL_MCOUNT
+	@echo "error: Cannot generate __mcount_loc for CONFIG_DYNAMIC_FTRACE=y, $(objtool-lib-prompt)" >&2
+	@false
+endif
 ifdef CONFIG_UNWINDER_ORC
-	@echo "error: Cannot generate ORC metadata for CONFIG_UNWINDER_ORC=y, please install libelf-dev, libelf-devel or elfutils-libelf-devel" >&2
+	@echo "error: Cannot generate ORC metadata for CONFIG_UNWINDER_ORC=y, $(objtool-lib-prompt)" >&2
 	@false
 else
-	@echo "warning: Cannot use CONFIG_STACK_VALIDATION=y, please install libelf-dev, libelf-devel or elfutils-libelf-devel" >&2
+	@echo "warning: Cannot use CONFIG_STACK_VALIDATION=y, $(objtool-lib-prompt)" >&2
 endif
 endif
 
diff --git a/kernel/trace/Kconfig b/kernel/trace/Kconfig
index a4020c0b4508..b510af5b216c 100644
--- a/kernel/trace/Kconfig
+++ b/kernel/trace/Kconfig
@@ -56,6 +56,11 @@ config HAVE_C_RECORDMCOUNT
 	help
 	  C version of recordmcount available?
 
+config HAVE_OBJTOOL_MCOUNT
+	bool
+	help
+	  Arch supports objtool --mcount
+
 config TRACER_MAX_TRACE
 	bool
 
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index a467b9323442..6ecf30c70ced 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -178,8 +178,7 @@ cmd_modversions_c =								\
 	fi
 endif
 
-ifdef CONFIG_FTRACE_MCOUNT_RECORD
-ifndef CC_USING_RECORD_MCOUNT
+ifdef USE_RECORDMCOUNT
 # compiler will not generate __mcount_loc use recordmcount or recordmcount.pl
 ifdef BUILD_C_RECORDMCOUNT
 ifeq ("$(origin RECORDMCOUNT_WARN)", "command line")
@@ -206,8 +205,7 @@ recordmcount_source := $(srctree)/scripts/recordmcount.pl
 endif # BUILD_C_RECORDMCOUNT
 cmd_record_mcount = $(if $(findstring $(strip $(CC_FLAGS_FTRACE)),$(_c_flags)),	\
 	$(sub_cmd_record_mcount))
-endif # CC_USING_RECORD_MCOUNT
-endif # CONFIG_FTRACE_MCOUNT_RECORD
+endif # USE_RECORDMCOUNT
 
 ifdef CONFIG_STACK_VALIDATION
 ifneq ($(SKIP_STACK_VALIDATION),1)
@@ -230,6 +228,9 @@ endif
 ifdef CONFIG_X86_SMAP
   objtool_args += --uaccess
 endif
+ifdef USE_OBJTOOL_MCOUNT
+  objtool_args += --mcount
+endif
 
 # 'OBJECT_FILES_NON_STANDARD := y': skip objtool checking for a directory
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'y': skip objtool checking for a file
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-8-samitolvanen%40google.com.
