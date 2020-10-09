Return-Path: <clang-built-linux+bncBC2ORX645YPRBQEYQL6AKGQEDBFTEBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6FB288DE8
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:13:55 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id x11sf1136355plo.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:13:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260034; cv=pass;
        d=google.com; s=arc-20160816;
        b=PY4Z2Zc7tTOadZ7pP1Tq36IubAs6GAg9dSmo+g1NPM6dKmCAxJHYPbnFUQ3I3/AVnw
         KkO/NvJ63YJBv+g9km/4Njl34UZ/q6qdECddIk1Xi7ZEYLyW/o2drGFJC9TTOp4wCdJX
         3ZtCL8T2EGnOdEJgisCWAPeN1qbLr81rDEVYTjRrhYnBq24lUGw2ew51dJkVbUe+hnCs
         e8YcVwB8wxB0PBE5xBZVgUnXXJtrQSGnoHz5/cv+ZJo5SVG1xc4xhB+GmGhbg0pYaG1N
         1k6Oo87C3S4uwDUYr+GqHH/P7oFKBm9NNIgkv/EBjedD3126vFoo0Hr7JwAEuFqNuWJR
         4IUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=eW8p1hkmjwgDIN/9sbLnJ0SQob5aPJbGBaoEth7zC98=;
        b=MaxcNTXWRnW68jl/wCjIMezBZlFL2v69BifGEm8NAOv2HGujYwLS+WtXyeBpLYzFVN
         hF+upGfuwvNEpIfpRxawhCMsdaiZluYJkLWH2NWezxMg032g8ZMilQdgcqf4QH5exhKA
         EllSaNDuWkL33eII1QpYrV71wyeTsZ6YAsA7tuCtX5WfVMqy4u9qij3+t0lC0BMG3hrn
         dWwNnlAUiaEBoSYw+Zj11vFiZO+LSb34ZQwZcSQSpRec7/EUp1l986LIg9htcwo4iMFX
         ruIdM3gWRfDvqKE08eXerdwGWBAqhdqbp57IjTRg2Gs7RqbVeKCMD7avjf6KdQcEMJAB
         P6Lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h0+iMSN9;
       spf=pass (google.com: domain of 3p4yaxwwkafwm4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3P4yAXwwKAFwM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eW8p1hkmjwgDIN/9sbLnJ0SQob5aPJbGBaoEth7zC98=;
        b=S/CtMcCaHvsFucJ3J7yN/KudWXrr/w8d2RaWQ2uY8zgF4+kX2Ruj59s+kXeRJnVVuE
         b1xkIpHlyrMCnQEQAztdmtaCz+E9E6/iW6TDA7k/JANfziIgVnyGoaabGtP+5fhdR6Q8
         75kR+i+E4F8j+LAyaQkGQmfMmPjiN47TKZ9+bEsjRy93Z/21NyEdMeaLN3vpfYPz9j5t
         vFwh2Xl6tQ90tRttNbFwbjc2fhqr8OnaufIn0/x9lUs5/wT5bvkmCIJBxexJSoTtBNoJ
         U1tbG1QV15eXG5INBZEgPV5J8rvnJEjTLlTs/e8eq7WXugUBJ0BQjiYrbeQYhhhK7Dpi
         DqSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eW8p1hkmjwgDIN/9sbLnJ0SQob5aPJbGBaoEth7zC98=;
        b=CAuJ0d67Fb0tF9cjt2h4mfw2QUYnEzHfUTDo0ICrnniVqEgsAn1vzt2P61jh/vUOb+
         0AsLjbUlH4J+DwH8rqFNqyT1biNvFS1ypX8xY1YA0As9G/emuxQUdfSrT+W2dM4kT0x0
         VkAuUN4gncqDSvvfWGF+PlDa6xdLFa0KCl/NjOYyw9MrQbhQBWjeqfG/jTt6TvIqlgqy
         qbDLqPI/ND8l+AqZZkIYkgiC6HIHVu0A1eTfqEAng+HdLzKFv/B317N7ffrOXOEOXe94
         cXSu6QxraZOL0V4Miv9gDJZnfFYJ1dcXbovrQu753raPPj71Z5V/hzf0XdxwqlS6lWhS
         X/Rg==
X-Gm-Message-State: AOAM532Ets5lEDa0W+IJW9EhSwzty9XxMKOlgbEDeS7fXL5IxfEll+N5
	VUFa+nCRKUbZZVqBQHp/vwQ=
X-Google-Smtp-Source: ABdhPJyGEIO/vQ1HcHlSc7y8WhJOdwVKqnG+ez/tg6hQuSOk2beqUpNngKk9VmBZUa0nqpkIeEK3xQ==
X-Received: by 2002:a17:90a:3fcb:: with SMTP id u11mr5352279pjm.128.1602260032593;
        Fri, 09 Oct 2020 09:13:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2292:: with SMTP id f18ls3408803pfe.6.gmail; Fri,
 09 Oct 2020 09:13:52 -0700 (PDT)
X-Received: by 2002:a63:1d26:: with SMTP id d38mr4130894pgd.0.1602260031943;
        Fri, 09 Oct 2020 09:13:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260031; cv=none;
        d=google.com; s=arc-20160816;
        b=WRJrV1Ajr1GUtJdZ1reh5CKRyPUcdCdqMv/X4bDYa5prC9dSsZXAP9B2zupciNzUXb
         ltgDmXC+do4iNe6NUrVQLRYCEWRUmj7GMyZmXvNc6sbr7G00+MxLy8YfnwPg8LirX511
         P319uGW6NP11xomGswmU0UNt57QQO2TyRO+TbQRk3MZOEgfRBD7vr8wJQfmk66gikrRY
         XW96ROj7O/gcX2EznwVbXOOucgWxx1qGrT+jZmRjONTq2+VA1Mj57C7w9VVcrU4eMyON
         oPzILbfJjiRYSv0DoVYmLnm/hV2L4Z33uioped/1rURV4jaG/LCszNoOHk8Pk92tuOfm
         hyWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=fZ3RySPWXLEyLlwdfUBpRpGrz5rbV/kevtEX3k0sv+Y=;
        b=R0E7NYUkbqDPr/lycI4HyWjhGeb829Mv8tM8lr18IXIqR7+EF6zdrzCR53/ZRiE3qV
         m4Q1MafmkQmTDWZZegeRrpSzJ7xdp+4ioOrtD3n4MdEohM8atSy7tsPozxP6ApH3Oa75
         fX2zim5WjMXYE2z6Cenu3qOinXrhQflorvMvFzG9G+2lYLvClWb/1vWdcd4eLX7infPf
         EKkluYdkCBlY9Iu9WV2+iagGZ3ZXW3vzTEb7vFfBDo49vmklYz37QYgN+7GuFu2W1XTZ
         yO9LJVAzZCkjchSmknJR87kB5TwV+u/lO0xsd1/lnARZbS6FjWn/O1lByFjyRxb3UsjA
         fUow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h0+iMSN9;
       spf=pass (google.com: domain of 3p4yaxwwkafwm4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3P4yAXwwKAFwM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id t15si622052pjq.1.2020.10.09.09.13.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:13:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3p4yaxwwkafwm4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id c3so7039033pgj.5
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:13:51 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a63:160b:: with SMTP id
 w11mr3996703pgl.110.1602260031610; Fri, 09 Oct 2020 09:13:51 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:14 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 05/29] tracing: add support for objtool mcount
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
 header.i=@google.com header.s=20161025 header.b=h0+iMSN9;       spf=pass
 (google.com: domain of 3p4yaxwwkafwm4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3P4yAXwwKAFwM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
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
 Makefile             | 12 ++++++++++--
 kernel/trace/Kconfig | 13 +++++++++++++
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 434da9fcbf3c..fb2cf557d3ca 100644
--- a/Makefile
+++ b/Makefile
@@ -850,6 +850,9 @@ ifdef CONFIG_FTRACE_MCOUNT_USE_CC
     endif
   endif
 endif
+ifdef CONFIG_FTRACE_MCOUNT_USE_OBJTOOL
+  CC_FLAGS_USING	+= -DCC_USING_NOP_MCOUNT
+endif
 ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
   ifdef CONFIG_HAVE_C_RECORDMCOUNT
     BUILD_C_RECORDMCOUNT := y
@@ -1209,11 +1212,16 @@ uapi-asm-generic:
 PHONY += prepare-objtool prepare-resolve_btfids
 prepare-objtool: $(objtool_target)
 ifeq ($(SKIP_STACK_VALIDATION),1)
+objtool-lib-prompt := "please install libelf-dev, libelf-devel or elfutils-libelf-devel"
+ifdef CONFIG_FTRACE_MCOUNT_USE_OBJTOOL
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
index 927ad004888a..89263210ab26 100644
--- a/kernel/trace/Kconfig
+++ b/kernel/trace/Kconfig
@@ -51,6 +51,11 @@ config HAVE_NOP_MCOUNT
 	help
 	  Arch supports the gcc options -pg with -mrecord-mcount and -nop-mcount
 
+config HAVE_OBJTOOL_MCOUNT
+	bool
+	help
+	  Arch supports objtool --mcount
+
 config HAVE_C_RECORDMCOUNT
 	bool
 	help
@@ -605,10 +610,18 @@ config FTRACE_MCOUNT_USE_CC
 	depends on !FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
 	depends on FTRACE_MCOUNT_RECORD
 
+config FTRACE_MCOUNT_USE_OBJTOOL
+	def_bool y
+	depends on HAVE_OBJTOOL_MCOUNT
+	depends on !FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
+	depends on !FTRACE_MCOUNT_USE_CC
+	depends on FTRACE_MCOUNT_RECORD
+
 config FTRACE_MCOUNT_USE_RECORDMCOUNT
 	def_bool y
 	depends on !FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
 	depends on !FTRACE_MCOUNT_USE_CC
+	depends on !FTRACE_MCOUNT_USE_OBJTOOL
 	depends on FTRACE_MCOUNT_RECORD
 
 config TRACING_MAP
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-6-samitolvanen%40google.com.
