Return-Path: <clang-built-linux+bncBC2ORX645YPRBPUYQL6AKGQEQRCJDBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id BB970288DE4
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:13:51 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id x10sf7290620ilm.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:13:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260030; cv=pass;
        d=google.com; s=arc-20160816;
        b=qw+EbqNJ+x3pm3YeNYrr/x7F2Dyz1rzBTA9xX20Jp/ZmeQCSbeUPSuVTvIRN4OSI4R
         SM0YI6x9RWeUgoLbmUSK1bQkLyul8JJWD8DOM6haNK4WfrScDW9z1Ci8m0JqLva8WEgP
         IDV1hyC1POO1J86LpCvQd6alScesAgH2eU/LGwkMq7YwJEorlccxhMUQMC99twjNnQ24
         GukBMkRs+7gMjTYzYwrlvwDwnv31Y1yQvW//Samssx2BpE5wZ9upPiNy7S41M8xDd6Me
         xYNHTCCPhOIBSSRADt7GdqBpct40Qxq93GzSdCTz8fgg3qS0caLJTD/UzoA4Yjz17+Xq
         /c3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=A40PHSC0GDtg21/CyitRnQl9xu/4rheVT8oc4oOOhAo=;
        b=VlC9GUr4PkDlIBk3/SFZZuTswTkNEsIkyHqEFZI/3Fll9BhvMYjTbyXA/bw7mGk+qK
         XgqnfaiHbn62E0nzhZ1zXTxKwwtZ2JyGDetK1x/G32uB2kTBXF+NqjOLbriFs4qmfA8k
         G8yxmOIgaUknMKD+V6FFA+FUhFhLP01OeVQIibYuyiiEPFmL4JaN6K/BmQ40GM95d+pP
         +jw+9Z/EpHw51C76J33/laqyDLNH6fWMWXXWo3ExdRR2E/ePuR0K81pqNQbZ+qZk9t5H
         cWSWRZhis7+JbDsaPT7D7iaDUa46d9nhexd8tNnAf32fWkw4o+Se3CGCo6AUAOuzKC9e
         8efw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DN2nbIA+;
       spf=pass (google.com: domain of 3pyyaxwwkafok2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3PYyAXwwKAFoK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A40PHSC0GDtg21/CyitRnQl9xu/4rheVT8oc4oOOhAo=;
        b=E6n71JUBxi/02GyVtfrYMoZu8bLnPzQY+5OIQ0lv8+TKqXB1iJjmbFkH5vS3en6oKn
         nGLHp/R4lL55OF8kd4csvl10Di1snsfP3xMOdL5oaia2YMR3cBAwehXFdu+SgrogluYs
         zYeC7BmYJmAhoppI5ojSfdysveF7cFxhGOrTYAZyyWrGawj++ZKyLvyzgHBj87C4eUio
         +xx4sMjrq66Izi9qS+WjTVqaqrHO8VayEK7+lx/pi0DhIvmccVK/jM/INbpOFswloF8B
         UiA/e3ewfXefsVtGTc1+zIVxlvGWpvvQh4+evfVdWl3SaZOX0V4shCLvMfi9EFfaausp
         2qyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A40PHSC0GDtg21/CyitRnQl9xu/4rheVT8oc4oOOhAo=;
        b=DtQGjGio8bSX4awK84jQ7i8LBAzacOxlKcr++X1UF4wA3kaGSJzUioTl+JChlJdKlx
         O27Jf7fV0x/4GyoJh+sfsf77xltu5K261W96U/TCPw3HsaNQehV5IpoSsTO4EjIEeLWO
         sX9R52G/LxU1pOOHBPrj1Pg/qCiEDnFHmDWmdVq1bR0sevuKf+3B3buTntzug47i7IaM
         iQZTpncmfZuMffKYe99jH7vce0jfL3JdjAcIOQ7TmLuCYLGbQs2gPS4b/fEABGTC4rGz
         sKt3AqzIMsXLlhhVOB29/gdW5pqHwWOigPVqqT7bgDX+w9rJ880eUOy5uq0BbEPRne9Q
         VHwg==
X-Gm-Message-State: AOAM531KoHR8TviN03q4ERsqxiGV4qomWOcGBMJOkeokqt8tiC8mkypt
	p5rfi01d+c+C9zEOAF5wa2k=
X-Google-Smtp-Source: ABdhPJx58UOihgWsVjQv9qYbMEvKJCXOKxHu8XrQGAP1qzKaniEnmW+46KbdVO7mkvcYNBOn6G60eQ==
X-Received: by 2002:a6b:bbc6:: with SMTP id l189mr9902244iof.145.1602260030752;
        Fri, 09 Oct 2020 09:13:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:8d06:: with SMTP id m6ls1445409ioj.8.gmail; Fri, 09 Oct
 2020 09:13:50 -0700 (PDT)
X-Received: by 2002:a05:6602:2d0c:: with SMTP id c12mr9810230iow.117.1602260030347;
        Fri, 09 Oct 2020 09:13:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260030; cv=none;
        d=google.com; s=arc-20160816;
        b=t36t9ZOVkTEfYjYwUnguUyaWOpDfyTxTnnywZzCJJbdq0o3PxUtTt7RBXBjPUaak14
         Xnz3tuoAmyLpixX16fgw4c4RWwzAVdwezsBEphOibIU/g0UHXIS9NgxKyfEZF7pUGRZQ
         owGgtsqqWgzydfBHmduqmAttG7ndTj0AaBx03JFu2LsNVT7qTTkZtS0mYTI5TaPxTzy8
         uo+1KrWcuVTwYwe2bcUqWJfFKYi+TaPGgD3beEvPA8r+9hWHUh1HXwQmpXcMyoWaz/CP
         +jKrYjN3lIzK3gmAGqiMnjOqyOtSNO7SowCZc6w8KknzXXodqLgOxpi9ZqaFOrpvNH+9
         0+AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=7nDmrXZCx73dwVoWaBJWws0sco61U1uoy5jdWelG6WI=;
        b=u2iP/teB2bkcM0OSZ1tKd80PEVGc76W2lMJxCJHGe0nUu+0S2+z8rrtjaS8EKiZVP1
         KQiNiAVOnN316rSAMWoC9HyOzrZoFbzMYtAKYxjA+9leqMNVCMzsH1E3o94TmmDiUQYK
         tODkVlkNFu8iL+vgpWvxULKeNc9U30YtZ9a23vflv36J9LTdGSPgyrhL5UAu2X2qK/Xg
         HABLoS+It1jgyRbS+Mol1UtzDSg1ghtmwNc9y3apk//BfGBKNjgI3nZq8dm/q4+Nt834
         vhMQBwNg5UQkeIChDiFUB1niSDE+PdcpUEPGc3/3yK0AM9lGP+N9Rky0CP9RcrsXBMYT
         1cjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DN2nbIA+;
       spf=pass (google.com: domain of 3pyyaxwwkafok2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3PYyAXwwKAFoK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id n14si647934ilt.3.2020.10.09.09.13.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:13:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pyyaxwwkafok2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id a27so7049903pfl.17
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:13:50 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90a:e00f:: with SMTP id
 u15mr5630295pjy.87.1602260029576; Fri, 09 Oct 2020 09:13:49 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:13 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 04/29] tracing: move function tracer options to Kconfig
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
 header.i=@google.com header.s=20161025 header.b=DN2nbIA+;       spf=pass
 (google.com: domain of 3pyyaxwwkafok2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3PYyAXwwKAFoK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
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
index a913a6829754..434da9fcbf3c 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-5-samitolvanen%40google.com.
