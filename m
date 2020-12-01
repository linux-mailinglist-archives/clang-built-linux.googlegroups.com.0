Return-Path: <clang-built-linux+bncBC2ORX645YPRBCPPTL7AKGQE5PX6NNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 25ED72CAE82
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:15 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id d7sf1880336pjr.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858633; cv=pass;
        d=google.com; s=arc-20160816;
        b=H11Ar/sFbHcixSuDB4qSrjoMDwWriVQ0Pwwr+M852RrjkmVbzqmflhND2Sx3gGXuqk
         9SLI9Hh4SHnDSnZ5min9zULIsyRw6QUvvTTFvU7sGROBViGYW2RTkGmStc2E2T5QY/ij
         BYpUlcPHFSSGBo78TVyofzf6nlqfvWzcl3Cd7Bidfmxo5i0bmyHCmnJ9x+REUw0dxO2Z
         MUVmRuwvh2HIWmCxL6nz4NbVOQufmT7ngOgUBFlxQigb6K1R4mXeSq76dPERSYTVXpjy
         v5TiAPXhpZLimGj/kZY0T9elNMIUDZRx2UMkIWwuLNblLEaJLB1KipHWLbA37wKCsTMP
         mY4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=RYZQscFaYvhUSF9XWAa0x1R1PwyOvFV7msE/ctdOo0M=;
        b=pf1PpXFRwr37cJeE8xbO5YtDmsO97TnsXYyo5Xm10GPSZCyFQyPzqywigF+fQ3v5dD
         ui7s5s9ri4J5shOI2bY/yucowSnuW/e0GgnhsEVU1AAnIiqQwkaF5RI8sXfgKPgsnrrq
         lL9Kk1emYag/MsP4TeC0U9fDmaLtVYLNgvVp/bZeB7cyyELsKPCq6GnmvUQ4iar3xIr+
         Nf9xklMO2e/jIJ0FryW3RYgxLK3yixyp+CcdUKMJHboZhxJiK1vPH1DTkLh3L7P8rTxF
         97wy4YsaEmU/9CMP201lJ8u2pyTb5Ne6+nNeEnQtG0y+UwpjLtL8n4YL5sA4otXM4Fk4
         wuYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dodU69bM;
       spf=pass (google.com: domain of 3ilfgxwwkabcfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3iLfGXwwKABcFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RYZQscFaYvhUSF9XWAa0x1R1PwyOvFV7msE/ctdOo0M=;
        b=iWEgj6ud3/DaozBLp/bY03u5Pe3XXgra17hDLHvB02fO4yFXgTib/h3NyGVXcjfxou
         2DdgjTXZKhPLYZoeHQXnUiS4Y5RvgKdr69WzPETLclojgoYCKDTb0FVePMKO5xuoQC4d
         HlSrcMdI6qXPgvh2+q8GQlDL5hA9gwKsBDCYYMxOrNgcF1+4BAHO/DjDO7bRnb9Irx0q
         lxhS2f0YMU6tMQCT3yI8b0TEhQKctz3+F1eoBiaPVJImryMgKyDpZ6qticaxtyEsSzjw
         +Qq7MduPCshFG6G0oeGP0r91JwE/YxsVi5+zezaETwW0oSlVvL6R4qe4BcHRMy9lm89K
         vhZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RYZQscFaYvhUSF9XWAa0x1R1PwyOvFV7msE/ctdOo0M=;
        b=Tlw5MAiGljNUknUOzH7o5P+tHumr4m2pGQ8IZ0bdDx1b7Ct2jcAs3yRcucfpXzwMmN
         QKLjv9UkHxdLCuM4a3h+0OWDcxcrftb9zzj64t8jtietQ38NJOGw4+hlIaqjffAZcE/u
         e4wUoMg8RIOlIK/BMkrXfnhEnQVWygIvPHq+8CoD8eptAv7iSRzexjSF8C/AMYoKLbCE
         UyVG5jCulb0xtiOiVs6paVlQX+YOy15pEvOEuAHf9BzJAmDxX+zS+pOjuVNcsusR61Ok
         Rc72tvUOj/Ysw43F+KMU7XiYXiaFk9jpSNoLw6qHRzVBpnNZbq9vcVsqTzWfMmivdbDw
         PgDA==
X-Gm-Message-State: AOAM53135UuIFBN6S1RWoJ9Uu3KcIE/jjx7hrwFme2hxQCMX/9/CqwmS
	xM1yBfiEP/w8GHUCXNnd5/I=
X-Google-Smtp-Source: ABdhPJyd7s8xM0430ODtqrWE74jaOyGPDfVStvJSHVvmhWH2sd/3Fe7NVyOe14sM0pSOCwdJyt2pJQ==
X-Received: by 2002:a17:902:9b8c:b029:da:1469:891d with SMTP id y12-20020a1709029b8cb02900da1469891dmr4591876plp.84.1606858633753;
        Tue, 01 Dec 2020 13:37:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e905:: with SMTP id k5ls47955pld.4.gmail; Tue, 01
 Dec 2020 13:37:13 -0800 (PST)
X-Received: by 2002:a17:90a:eb90:: with SMTP id o16mr4693471pjy.45.1606858633068;
        Tue, 01 Dec 2020 13:37:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858633; cv=none;
        d=google.com; s=arc-20160816;
        b=h9RCchn8Oxjk+kam957xyJ8msz5RiyhBLRpetdS0CO2xTx8VTnyK8uPCp3pBrN8jt0
         EHwlRl1HoL5iH88Ptfe1FHS6he+wmKPaICxt+v/btR000AqoAl9oDXAmZL0x6PB3Jca9
         QNGWVqN7uIKwp7sHjjHDbTcGfgduPiqLZt++tkU3X7stkX5bYqT7Iw5+mUKwuYdTS7o8
         cAvyvCpbkMdeIGbHL2zMCRIWSfkzVjTZ/rrFGqPWLdOEZQ31VrmYvjUBD+I4AgD7Htge
         QTB7L/DK0LbDrtwFRVmGavrSUFVIfE+oBzZLiEd5Dcc+LY6SdwIQaIB2mkwAhbu3UeU9
         LBnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=VOfy7I+JfJNFr5nKa99p/PnWq1cmu5wGQSaePmGF9lo=;
        b=ixqa1y7hLMf0t1WSuDKG6yk/fZ+5FLO6OySBWiiKd9tihgNR7Sgw0aMhdOCiBctQq9
         c9pUNInAUjKg/Xqszgs1wB2v78RtD9HGGCVil+CRqLCydbJOuXePq/S9Qew4Ypg2x9I1
         M9C25HxHqR6+nqCKrTnRtij0jzlR6zQfgJsRhQDXLw6aJMWn8RTVmsO1JFN5BFU3Nxpz
         DTWl9q7mk9/udEwIYQK5R75aot4plh63gw8umeN8wu8EYy0Ofe9doF9SQzLs2AykExGV
         3FX9eHon19ZKgCBXS+xDCibfU5nD7gG7wm/BpwrRdiY8IHyrvEf9tBzuMSkjkIM9m0A1
         ZQ0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dodU69bM;
       spf=pass (google.com: domain of 3ilfgxwwkabcfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3iLfGXwwKABcFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id l192si95043pfd.6.2020.12.01.13.37.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:13 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ilfgxwwkabcfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id g17so2289316qtr.8
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:13 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:bd10:: with SMTP id
 m16mr5440647qvg.15.1606858632172; Tue, 01 Dec 2020 13:37:12 -0800 (PST)
Date: Tue,  1 Dec 2020 13:36:52 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 01/16] tracing: move function tracer options to Kconfig
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
 header.i=@google.com header.s=20161025 header.b=dodU69bM;       spf=pass
 (google.com: domain of 3ilfgxwwkabcfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3iLfGXwwKABcFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
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
index 43ecedeb3f02..16b7f0890e75 100644
--- a/Makefile
+++ b/Makefile
@@ -849,12 +849,8 @@ KBUILD_CFLAGS += $(DEBUG_CFLAGS)
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
@@ -862,6 +858,12 @@ ifdef CONFIG_FTRACE_MCOUNT_RECORD
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
@@ -871,12 +873,6 @@ endif
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
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-2-samitolvanen%40google.com.
