Return-Path: <clang-built-linux+bncBC2ORX645YPRBQVKST5QKGQEBCSWQHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A07270627
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:00 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id j6sf67461pjy.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460099; cv=pass;
        d=google.com; s=arc-20160816;
        b=fF+97wwGvMYGGUhlJE44uJX1G0d/nP4lc+KRg5d4oQcPZ7VQ7UFtJExzihyFksZDxD
         DJ+icfqvQcr9xZur4igJuDsvX05pY+jWZjZgNKgrXPxdTh4aU9QuH6B6ffXrM4ZBHSEM
         uADotPvE2T01KyvPourRTA/vw96yO7tbbvQOWdXHW+VPU1VgNqnjbKfZdXdaRVl0woCY
         qz+S/Zgib7lj4Uw1MUAEuUCflxqRfhSqnFC9/q0/a57TOrAOWYCr/KjeIE7m6A5qORm5
         9psrxmbgFcfopkk9a6HEPdcOXimeFwQPjSz1i6saDQ4SW4WPmE4JSUulz7xpd2T+1ZBx
         Cgrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=IOyNx/sIlW22LP9yHVYkiYcdDLLiYdAgv4C04IjR7PE=;
        b=AMYqT5Pqf5MIi0SVwVjlP0w30wMrTtiNx5BQde2MnS30nCO2aMeyyMY40DLmIXYwOb
         M8OVtnQAIf+vghLvY3TDQA0/ZF9d2byU9i1ab70DdX4G1i2+ejC2x8j/BjWK56cADhsJ
         HGj4yzZmcMj0jmaEW/+zIK7gFvErEFxPZI7uyRZ3fi7mYXLiJngo55pz+nNYLz/ug3dn
         b1oBP8Bb7wvV+oi89216ktcBgI5meI/OR7+l6ZSW6tAOo0Ly2TvPL6JJfJM8RBzSNLS+
         L7+4e6oztiSIsHIDFqqDZ0qNua9hr81jUzKs4JGfLLyyic1yuYGANfyiv3gcCWuMgTjO
         PQyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BHDVtSDH;
       spf=pass (google.com: domain of 3qrvlxwwkaaiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3QRVlXwwKAAIucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IOyNx/sIlW22LP9yHVYkiYcdDLLiYdAgv4C04IjR7PE=;
        b=VUjSwYQyWuUyRmYP2OSiJqACKLJ3D7YngLfZmLt/kOOsM/DRwjiYOSqJprP7Gauveg
         AJpbIYFCeDGxmDQ1y+zBB5GkVWNGtHNdOclbpw9unizL/NJpSiFYijvPxGU2VIbSpmWp
         sMeyS0XBvBylGPUhCLKNqgMsYf23N0Rv8Q45bFA3SExByHx/7uT9b2huObXeg3Pj4M5e
         JLfFMNjczlcshr+6POoiUpC1JQC51yFyJVTKKb+Mq1Tep+un0ZDAnWuJ/8fI44fL3O5x
         9t0HtY2omPG4h11bziblrdRI9/DhaCgCnOLqubd2ojWqTLfW+URIrPKwx5EpagR3y3lv
         94gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IOyNx/sIlW22LP9yHVYkiYcdDLLiYdAgv4C04IjR7PE=;
        b=cSajuMxekQFdKUdWwOlcdBSlTpG44B5nInlQJ4gZgARXl0XxlVE6Rooxl8jcvwlYyn
         qRPSQR0e/vpeW/1Jn2h1+8OK4fHeDVdKeQw+L8RE6lb+OLpQRndBEMwTJFvFBSvKr/t6
         4aZGIDdHdjX2zaOryRXojWYX9KfeR2Fx6WrkJVKyJapwoN9BII0q6rNunlC/ERCr420Y
         qpWIwGR6LMqbDx+i1yBnFq+YiCu0mAi7T49+7zBmxyPKkiFPH52xpb+2OAMejeYDq1mu
         XxN0jDjllry2c4o+LgPYEVGKZli6B8xVfULkegj8ABi2I8OFyhmitkIzcB8+b+NW0vgj
         8cuA==
X-Gm-Message-State: AOAM533Bj6XizGqIjctu5dM19qeMGUxK9fQnMUJPOI7E1ayWBhlTcuA6
	pwUAk6M4HDuwLwcQ1WEwAXc=
X-Google-Smtp-Source: ABdhPJx0krb/Qc3dvTxM4rWB+7kdAgE+GRQbYspk4jrwxx+yPOCRE8iuCsfFCe3F4ninG/BRVGT51g==
X-Received: by 2002:a63:4a43:: with SMTP id j3mr29026058pgl.42.1600460098846;
        Fri, 18 Sep 2020 13:14:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d09:: with SMTP id y9ls2385576pgc.3.gmail; Fri, 18 Sep
 2020 13:14:58 -0700 (PDT)
X-Received: by 2002:a63:43c6:: with SMTP id q189mr112098pga.63.1600460098156;
        Fri, 18 Sep 2020 13:14:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460098; cv=none;
        d=google.com; s=arc-20160816;
        b=smmrAU7vrYriDeceGwmgkAYfdP+CtK62lh4NdQXymv621aJk4XLu3fhEJWNEV3vzM8
         fUu6c978itdakSdX/A0P/YoVuu9SK5Jb6KAcldmAITz7eSdrErrx6Mlwc1bR35vGfAjI
         obRrC6zBIdXvKf+ESD8H7AWH1j7BT17BEX1FP215OkLqfnuLzvU861utn/CNd2J9BHgL
         AWZtlddrEUbAXbH/zifAn0ER64AHs6B8L99sXNhe00k+zVJq0F1XVLpdn8t2Q4nk65+8
         WGUVTXP5/YmdW2g27+amwRNmkf14DrgJBrdvbn6ZWz7kui8fEkxDU6wvwVi/5ny3uDa/
         m6Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=0FkP4B0/Lnp0DM8m5kyaL0nHymB5hvp+911UgypF4fg=;
        b=QznbjAkIYpwkMAAxzvWSifd791Sgf9ntUA9kanpmmR+404Xcglt9+P/gQZcTZ962sM
         uQV4FiULuwgDHTzJUGxaoGafNjJiNM05C8cLfVdrvm19A5mxFZozU0a90JsIv3mxSK9C
         NebT8Z8TznAmNaQJDN7aHeLTVSd7WJk6QcnnkENg9MrbCf/f8fvp+uLV9NT8+6yfv1yi
         Wd/Z/5mXAfIxJZUFxemB+N/Ky0y6sO+0EeL91/Z6HaFtRxfKYhwZ1vdBn+m5bug8zJtU
         QRtKgw5IDlBNfmT5psQrp6sSmEzJxAbT/jujivGGW/19tHuhjbkP5+etWd2OIS3icTWW
         UJ2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BHDVtSDH;
       spf=pass (google.com: domain of 3qrvlxwwkaaiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3QRVlXwwKAAIucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id w136si373519pff.3.2020.09.18.13.14.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:14:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qrvlxwwkaaiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id l67so6662479ybb.7
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:14:58 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:cf15:: with SMTP id
 f21mr5192645ybg.408.1600460097335; Fri, 18 Sep 2020 13:14:57 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:14 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 08/30] kbuild: add support for objtool mcount
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
 header.i=@google.com header.s=20161025 header.b=BHDVtSDH;       spf=pass
 (google.com: domain of 3qrvlxwwkaaiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3QRVlXwwKAAIucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
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
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 Makefile               | 38 ++++++++++++++++++++++++++++++--------
 kernel/trace/Kconfig   |  5 +++++
 scripts/Makefile.build |  9 +++++----
 3 files changed, 40 insertions(+), 12 deletions(-)

diff --git a/Makefile b/Makefile
index 24fd733c142e..d2fb3cd0f506 100644
--- a/Makefile
+++ b/Makefile
@@ -858,17 +858,34 @@ ifdef CONFIG_HAVE_FENTRY
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
@@ -1213,11 +1230,16 @@ uapi-asm-generic:
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
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-9-samitolvanen%40google.com.
