Return-Path: <clang-built-linux+bncBC2ORX645YPRBKFW236QKGQEIOG6QFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3162B8723
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:07:38 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id k10sf2078840pfh.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:07:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737256; cv=pass;
        d=google.com; s=arc-20160816;
        b=EAtC3ZcZ9Z5Rq6OAyU3OnWGO3XSalIUQgxZpg5ilKbF1EHJQHODbkpHgg7rCbHArqQ
         5H7c1la5tLotMkUhVxAKf8f4iApOe51IMsBzRLlqPjSv3UwxUPyVCYQHdOTtUBKI8inj
         ZwvEJ+NufN4h+kZ3Tq4fRDdb3IVYxtPs2UUAyUvefjhMZV4B8lguLykTK5AgM5imgodW
         l+L7+WKMbb/DpA985IYXFXECaHzP8UJtawJTSCI87DUffj5LNDlWb43z921mGmhXqE90
         K45tRHO8BzMaZZ3CI+8B5wa4kqi2ax1rjwzvsd5ruV4iVvkiPMn1GerFUDBrV1N3lKnu
         f5JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=XtsQ+1s4P7J7Dy3l0dLFwVsdsUeE6XFdsUf4o+htXnE=;
        b=Lsq0CZEMz8qzUdYNlOuIxUe1BY/24lVBXtaS7k746WDjImc4vHoCFUkKZPWG5KmTrN
         +Mcf0+Fzzez7TEicUCMuujOMBhSnAlxx1UsfCLI8uoUdYqnzgDVNzZ6nxb9XxkPHMEi0
         ahExZC7T1072T9GKFog1Y88bnDVDG0IOyb05qrWG2IrKZeNZfJM5rL3GMyPAkmxiT3VX
         wzoFl6l8vBF/PzsHSTlf/WhvhAlyodP8fNiC6l8Z2PGat1Bg/sdlulcNZv95CQrunXLx
         6InVMCySlWsXHNW7rYkaVezK4Mlj/Ust7CljjX2tLsSN9vKFL1c5As5VUnEXR8ZwJKnk
         Y+hA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Oq8r6SCN;
       spf=pass (google.com: domain of 3jpu1xwwkadcltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Jpu1XwwKADclTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XtsQ+1s4P7J7Dy3l0dLFwVsdsUeE6XFdsUf4o+htXnE=;
        b=c0PAdN+QnPGMKzsXFUJcTkvy4xTSeUAhGShFmbsiB0XWW7mhMMltDkf6NOTVvolxbo
         d+ba2JQahq3nKRuxGHalJvb9Y7PxZju8/gSCeyicSKQRlQBlNiseIrmoBlUBMg8KMqJi
         k+wvNfs9cKDQp3cfFNYjhc8AI5IRxncCS6aAJhMtesJa+ee6tJtwgAve3tNSM8UeOswa
         3jUMDHVoL19GPRjoIr0/x0NbU9TiAxpiuMkZ+/4K0y7Yo3nD3iBFyPpPycR6++i1Nu4j
         O0sfUsc2UWkHM1m+xsSFcDqcWBGcBivKHBYTaNp9u7a/RSzsNBQXWFJtsg0psPlXqAqk
         J9iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XtsQ+1s4P7J7Dy3l0dLFwVsdsUeE6XFdsUf4o+htXnE=;
        b=EKNJQuFtQlF+JH4UDg0xuaTQafTk/zwS4vMGe/RliflxHg4ltbWwxbfGc2GyrYyTis
         /xhLJ+HcBWIJIYuXu2DttsW6363ikDDSdRt6g2vUTQ6ShicYLeiuaVBPXCz4xpO0/S3c
         rrJWOCcKRYJMjBrmIqhLpwLlgcFX7Vfm7sFbgwrhI8dq0CbAEsMJ9QYG1YReTMTOYPGS
         ZQ1/O1WxRzYptB6uyz2HWD79MVo0XNXMU6Dq56rGlSZzdiUFNvs3uyO7IBE0/f5jpSPx
         PEhB3lYumzPQ5QnJ8MpsK/Q0WILzBJKZo0p+D0MsbKI03a/a6oudI/41/0+esZjZz6O5
         HrkA==
X-Gm-Message-State: AOAM532pmivgD4wo1g357wtFPHak0zPhl7LAPIgn0ZQMshG2BtC64CBq
	wWhWzTUximMRYa7PkFumxZ0=
X-Google-Smtp-Source: ABdhPJzGqzIr5qmdyuqRdJP7v26g53zUQ4DWBAvQ711yhp5m/QapVkfzTpb06m1SfhL9rtRkcdiK6g==
X-Received: by 2002:a17:902:6909:b029:d6:6ec4:e1f7 with SMTP id j9-20020a1709026909b02900d66ec4e1f7mr6468837plk.40.1605737256514;
        Wed, 18 Nov 2020 14:07:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c111:: with SMTP id w17ls267491pgf.1.gmail; Wed, 18 Nov
 2020 14:07:35 -0800 (PST)
X-Received: by 2002:a63:2945:: with SMTP id p66mr10284875pgp.419.1605737255772;
        Wed, 18 Nov 2020 14:07:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737255; cv=none;
        d=google.com; s=arc-20160816;
        b=HefB/YleXAl7FvR7jJtWmW8rcjNGFPV7wxYbK5YK5z2PP8ip6ggR2wu7Lkzt1FVqdu
         Z9vx3dZKYZmLsfL1XT3i4YqsnTk4Q8z2EPvG+30CKkXuZmNizOPRgVvk2MQ7XggF/Zxm
         mlgBxItFUNMDOLO3zKxzc7Snzt9OKf3Txy+hbTFwS7mX+ifx/rqmZ0Qeb8G8RE+LMFdn
         dBnR9Ej2+XyvqJUQw5ANerMSzBduIxUxV9v/3WiJAdGjlcG91iL/JKVJCCiUu4xoQRR+
         5r+1/vlMraX0AZOrK35lLi2aGU62oRRciS3SAmxcRxcdCd3iCF8CS0OZKJ1kIxn/SXP8
         ThYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=kod53Z9Bn/oLp+88TnQNrWTDZiAkcCd5b++0bm6KqDA=;
        b=LAWiXAtvVhdiJDBRq80mm6e+tP0LQ04ZKVy8mBEPRgEfp5RuBJXHpcvk+24NdeF+jI
         nlTyGdWTQkINYdiBTtiViqfSUb2fKJ4c/NlMzCR360VXcjogoCcT9A9ofFo1BJTIu1wE
         3003rhvolAiU9xO3NG/aj6ikmspCveeg8VEuH6Z7OkJFOZxRFifBEyyfhU2MqM8YM/NC
         EIKQOQ4/HrXKCI9BgF9I3v28H0MDiD+519xj3FiSw8pIR65nlG74PQvBFNOxz89u0AKy
         iTN18df6TcAD5E3wGqQsnjF/WoOS5lo7fKFk4sW3sXaZqJQhdOj3Dk6tCmBVc09dKQ0P
         xojw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Oq8r6SCN;
       spf=pass (google.com: domain of 3jpu1xwwkadcltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Jpu1XwwKADclTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id i22si159624pjx.1.2020.11.18.14.07.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:07:35 -0800 (PST)
Received-SPF: pass (google.com: domain of 3jpu1xwwkadcltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id w8so4619535ybq.4
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:07:35 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:830e:: with SMTP id
 s14mr10156827ybk.213.1605737254956; Wed, 18 Nov 2020 14:07:34 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:15 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 01/17] tracing: move function tracer options to Kconfig
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
 header.i=@google.com header.s=20161025 header.b=Oq8r6SCN;       spf=pass
 (google.com: domain of 3jpu1xwwkadcltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Jpu1XwwKADclTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
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
index e2c3f65c4721..8c8feb4245a6 100644
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
index ae647379b579..2175ddb1ee0c 100644
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
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-2-samitolvanen%40google.com.
