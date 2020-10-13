Return-Path: <clang-built-linux+bncBC2ORX645YPRBEHLSP6AKGQEQ5KKALI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF9028C5C7
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:17 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id e10sf11569490ioq.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549136; cv=pass;
        d=google.com; s=arc-20160816;
        b=p7eiSoau6TNkDRsesk/Hxsj8R/uAYDhtlHT4ahJLaOlew5eEYO4s5T0PVgqvHBa83o
         i7k4HkrpAj5ELN2rvBw7xU5mAw81f9Ub8RwD5CXs0nDOu7m1V2Xy0G2PE+HJCMVc9NUJ
         FbipPcEkBVmJCpSwSby7K7o4qRQ8V7hKn/xXuuzxcjeZVTDLpJiqf8h+DdsjOnfplSPS
         TNwAQ/7Rdoalsbk/yJOKkw/5wULrEKnhUSc/izOmdxjbrwtLob0iuFcW4i5/XIeFwdEU
         /IQ0VWFjN4+AoOQPutN1qJDgwFYWK7SsoJy1WGf1D17AER5a64WzlLGoCWTruqgQF7Eo
         g48A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=4AeqOHs4OspCma9r2H10zblx/5bk5BB7RaB9f/ZP570=;
        b=yl5I//Y0yXS5erNzn+0L4dHW8A3a2axy6k4QDGgVSJwLowDWCxCfyzdkOVGlobfP+/
         1i6VFisz4fYxboPS5C1qYPKxsPlaj+VBmkOOkMYtYFd8Xo4B7Mbq2xYgnPNm/4IV7Fmv
         cu5XxN5GI+y0zzVK5xrlHuISaJ+IdmERFY5HIuUPmxpyoX0wG8aLztCKb5Jf59je5q0e
         oP2BZ0EDQ6rcLqB6bqB61ji2o8/NvnCQ3udWgFHI6gA0w7t/xciQsF3yl6NmJ7VIKkQf
         niuaQH37xMyrcTVUpnANusRN/6z/Juw6BVbSeFz/crcbABk1GLPffYZqIA5nMAkL8RcF
         27JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iWb8IMXO;
       spf=pass (google.com: domain of 3j_wexwwkajacu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3j_WEXwwKAJACu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4AeqOHs4OspCma9r2H10zblx/5bk5BB7RaB9f/ZP570=;
        b=J5L+x9dZdjFkzACqHG6m3sWhYI6zznDs+SU1b+ak/Vus1qr1KXZkDFcTZkV0568n/d
         p4aSCwicmEnIcGAfZrJrVWCz87do1tkJcDs+06LCodBwhbIxJA/WS8Mfmd61QnqVJCXB
         NPfDX3eeaxM9NeUFLqqQwy/rMiOtI19JX0W/MYMupdg7T0YAK8pAqag54nUOqLNvePM4
         LxwrX24imB+Fq+5fGdR0qrVExVJDEKL1ZE93HT5yJ9/mLo9rjRccugKb7bGDvTHzq7W5
         3RxxXJl9st6i6KjZptKCyX7dQLk0AzcOq4FWNjjtiViwBEN3DIxxVdLT1VF1qPvgDjC8
         WzHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4AeqOHs4OspCma9r2H10zblx/5bk5BB7RaB9f/ZP570=;
        b=K1kxyHXHAXfedf0xGNJ6Z4mnUSfqPKYlg2HPdmbKECJG7o8aAmP3OCMBew3E5A2Q5s
         w1C1D758albD2vzKJJ1D5/cb4mpGNfcjaOZwHJx4FosgXROmeh1KJksLgeqwgynPzQjm
         qVVL55i3CxnRpFsyeJpcN5MlX5T2kHbxIfYdg5fcUh1sIRUWyO3a3glSqXyhju1pGqmy
         UwtF1mjaGZ2d7u8PzRM9c1AoqFAphI5mvPIMYkcojskQQrhaLgaBYM73tEkQ/EkL1kJQ
         VbP86hUaFh7RgX500zzCIkvIyhNkamtw+rw1N1QcxFBy7ke2SRHeBhVcqM1V30u93FT0
         FPag==
X-Gm-Message-State: AOAM530ToBJ5E2xakWzAFurb/UUKxLvCnc2Ik/crgiGYIktdBfTvf109
	akFMlleN/PV07qQ2r/0xpwM=
X-Google-Smtp-Source: ABdhPJxvANIcbiCKzYqoSjsSggXYM5Foxt9akW4FuhSXCoEzFtQVUiNg6071v7A85WI5lvrMmlFmYg==
X-Received: by 2002:a05:6638:974:: with SMTP id o20mr1910931jaj.37.1602549136087;
        Mon, 12 Oct 2020 17:32:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:890a:: with SMTP id k10ls2286567ioj.4.gmail; Mon, 12 Oct
 2020 17:32:15 -0700 (PDT)
X-Received: by 2002:a05:6602:224a:: with SMTP id o10mr17754141ioo.168.1602549135707;
        Mon, 12 Oct 2020 17:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549135; cv=none;
        d=google.com; s=arc-20160816;
        b=bZdPNWdOH97HULNKiU0cFj2cG44TAJMRG4mTpGg4JPrnMm5FfLfvlcKDvWyBJ02ieh
         l/6bQSAcc5IEpBE7CeOjKUKiAHNJuqcXQVqlfnxoyeX+HJfj85dMNu8T7tlHNJnl8808
         5xNRsXcMhtheBdKI4l03kP2p3VWmQ8yQK8aFmB/Q7w85iyCZKkYAnxQcyHJloyMCM1bO
         mYeazf8je33J2keIw+rVRStn3Psrhn2QrEUkvxEVtun76JSA37tsxDaI3fHawqgyt+3N
         U4B96VHcwnzuixungj7a3IMn+/11CzPi0s0lx47rSGyZM2DdRMn8sSgXqdlsWXBW+hYE
         pTgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=oNoCiComLTOHVg2bP6STufgWA9yaYfJ6ObCLDl+jrho=;
        b=sFFXzAobph07CsNkgL5iXinfkwWo3bcDU+3GP0BBOGLKbsqkMs99T+yo3gpz1Y/OT7
         otvqi2CtKdJi6MaeAXRNDCFxZPBAhAuWoJCwLqdAXUzdwkd2Slf+oxQ8uyNjqSKKoETd
         pLd/n7lkI/RF0ZF1O6+mN/WjCxxII18umH+IbHUH5f34yQKUZMZYGb7H+Az1Hh1eVnPn
         vArEG3E/XZ2MCJLcg5HbHucs3p6QyzwQ/ARqgNP9yle0p/uNTFzo3p8PnCjIqF7Xxqrn
         X/SeOZtzpc+6++g3W8wTmSoIS4Tx8ORVOIZMcF400Crm1SI910mLqKb/kMxH3qAg6kc5
         7AhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iWb8IMXO;
       spf=pass (google.com: domain of 3j_wexwwkajacu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3j_WEXwwKAJACu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id k6si416205iow.4.2020.10.12.17.32.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3j_wexwwkajacu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id s14so19099653ybl.10
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:15 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:a4e1:: with SMTP id
 g88mr11556641ybi.267.1602549135037; Mon, 12 Oct 2020 17:32:15 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:43 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 05/25] tracing: add support for objtool mcount
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
 header.i=@google.com header.s=20161025 header.b=iWb8IMXO;       spf=pass
 (google.com: domain of 3j_wexwwkajacu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3j_WEXwwKAJACu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
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
 Makefile               | 12 ++++++++++--
 kernel/trace/Kconfig   | 13 +++++++++++++
 scripts/Makefile.build |  3 +++
 3 files changed, 26 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 129001b38357..fda1f8a0b1c7 100644
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
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index a4634aae1506..cd4294435fef 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -228,6 +228,9 @@ endif
 ifdef CONFIG_X86_SMAP
   objtool_args += --uaccess
 endif
+ifdef CONFIG_FTRACE_MCOUNT_USE_OBJTOOL
+  objtool_args += --mcount
+endif
 
 # 'OBJECT_FILES_NON_STANDARD := y': skip objtool checking for a directory
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'y': skip objtool checking for a file
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-6-samitolvanen%40google.com.
