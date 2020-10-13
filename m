Return-Path: <clang-built-linux+bncBC2ORX645YPRBOHLSP6AKGQEM3VQPJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F2B28C5FE
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:57 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id q16sf13742179pfj.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549176; cv=pass;
        d=google.com; s=arc-20160816;
        b=OMXQ6O3yc343223WxK77LIyp/a1nSGMqqVkh7GedKGRbKWPfw8wtNb3Rnq62mfiyvk
         /xueiiArqjjOTZ4k6rjnQRUm4eXBLusMTM5Aoce9r3BvSU/hUbjUT209D1+H5HZtYa0n
         h0Fmuoac+zKERhZ4wLikn8qXt6VaiHlFI5BnT0o1+2WLBG2qncXPP1GyfmRrb8fIqhdO
         UYKCZLlNc4LEXfjf3di5ukUHVQuVBDs9f2Xs+vAitcJFZ4GevZwEsQnGRPtmw9hc7W/v
         UjOTMelf+YeRif3cGLRRC6fTVJySrqUfT37sxZWczACWpcFo/rx7PxDICsyc/YFhl64A
         ZcUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=JURfbq5d0+fASibsutdHeK2bJkirGAqgiEtPPJONB74=;
        b=bKUN9wFw738Z/6tG4LD5wAfegTdMb7qg0ZijZCx+HWIuGcym5LTi7Pmf7nR+1WkgtP
         +Z7Oms78ce9cTNJYOE47VnSDiUPwdOgvwTG+XFMdS/TEFVgVYqBZBuuFZd+1oCFKSDqJ
         UsfP3bEv1xXkB8hm4SaGNfNnZCt/KTcLKzKP/p03hO83Bu+UvpLo1hETFh6UVU1G94GH
         4AvTBb+WGdE0kZNBeXufh9UG3mfAFYoT03QzEZPjudPtWL8IYNlS39Zoq3EQ6eBNfPml
         rU8/Ser+Aod5o2KPNrw7yCYBnFZ7v0n+ZwjuaL9namZzqjCw2Ol/Lc9PW62neHMjH6/E
         Ruew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lfisHSpM;
       spf=pass (google.com: domain of 3t_wexwwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3t_WEXwwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JURfbq5d0+fASibsutdHeK2bJkirGAqgiEtPPJONB74=;
        b=PtCdVmzkNKiRICDqjVSemVRSxEnna0I/PIdvoyz9bgW/QrR/TJ0qa+JtcHkD1ecaM6
         IOpi6E83Lnm9e4LHw30R3xc3R32hS3XsB+OIgkEys8uHtexUFYdvKM5UF1C5VWmlB4bx
         1h/scnzZ+MAwsTjo+OF4utB+1jjDdQV9Sbo3Aa2/7TllkiHlU8rVGx3Yo9kUSHLRLDob
         hJOA0nloKpEWDyBYhwKF0fOEb58E/G0KLUQtb276qcLUBdNQABQcuNyRr2DvcFkt1PS3
         JMf98K0siUKoW0iSzhYJBpZvQSYqJhbiHPBrgpuSuME2F9HerynNv43gXMeCIFdApByc
         FdmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JURfbq5d0+fASibsutdHeK2bJkirGAqgiEtPPJONB74=;
        b=f203aBn5seYFWEcfCVpapyyYCJ7DdX1fr/OnSPJf6k+RH6cb4vi2SIfyKj7sSJZf8O
         CsZoyuuF4VNAiilURHbGnkZuhau+j59qQ9EBTt80GDhuwVUJYhBWL6QBQLkCsTlYKzyh
         /SIt1g5vjQQm44B13P+2dFk/ckVejWAsSuRqI3CwdalvnsBXrxT6/sS/1wfuWAK/VhYI
         qKZY7ojhFJWMN5K6MnqXeWGIE4iLBJTxRWBFeBbsLDZAt0F5VCl+yZuOtRktvqH1VTLO
         cKTU7F5TjirdScEr/mEBcTZ7Lz2sk0IFP2YHTgFVH6cFwqzyRhR4RQXIG/GfzIon4XHj
         vWmw==
X-Gm-Message-State: AOAM530hqgdRanH3NXQtIQ3YwPTOK2rutGyK3ZL40K3f0JSwwSaCWaCf
	VSQNszolHYrQ2flM1LFyaXs=
X-Google-Smtp-Source: ABdhPJy4zHz6eJyRoYptaetF8YpSpwQRecZUrwvJ5SYkhEIqqW6zmtGdNFwak4VK7oKavEcxGrxUpA==
X-Received: by 2002:a05:6a00:44:b029:152:8967:1b2a with SMTP id i4-20020a056a000044b029015289671b2amr25186297pfk.48.1602549176576;
        Mon, 12 Oct 2020 17:32:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2292:: with SMTP id f18ls6183030pfe.6.gmail; Mon,
 12 Oct 2020 17:32:56 -0700 (PDT)
X-Received: by 2002:a65:6559:: with SMTP id a25mr9208540pgw.406.1602549176010;
        Mon, 12 Oct 2020 17:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549176; cv=none;
        d=google.com; s=arc-20160816;
        b=WlOxurkDdLtNDG1m/3etynEtOJ9sCM7paoSZFn44kVnhwYRIuIq57h08B1xn5D1kct
         N9S4nTZEYjiWWMb5QSSU8CTPnLuxRB0b5NSyfGa0tD1F5rx1+O63TOcfZNsct4vwQOGy
         kOOj0LJF3Jy096v1OQl0iAVLX4Ki0PNTU2yAfeo/6JfMHbFofEcWpuTHbxI0NYkXhs1C
         b7htVdejjF3ApJienbyvfWM98ImYB1AZsX54jSEhb8RfMJiFjl0MEejT92WdsqGyXiXa
         k5j+Za9SunToTj8vd80ji6iMpHvJhVsjqhfy/hDz8G/9KJLGKVSp1pTOlE79JKn9JcIJ
         msIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=eOx9MhffeJ9wDXWdE5ocpTXQ8u7ymKHm7bpeM0Lggio=;
        b=Pf6T2bh7FH7o0MKj+Pm53YeMfHmZZ81F8rk+Ef/Gw0d85lwhNksmdBkXCEqs0tDBAG
         D7RTsW7dq435Ytd/m3+Gtg8HNSIua/TxQrZf6DwH7Vf09KSpu2Xd16dNm7JU2ZcI/xhC
         whjd6zEZGZIDMCejsUSaZu10CAk3Nme2I8nVz1+sYxJIUZSUJrPk6mvitS+b8NCrL28w
         gnRjslxJEl2BYW7v8SM713dmdEZhyzhDLCOJpgkQv7j/uSwt53nCDq70js9va9BJbQ1O
         SPItcdF8kcxjYhppfnS3Y1v7Y7KJmzJlRhrJrxo3UHZ50PWIPkgcFIA0YkM67egmO9XC
         vrbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lfisHSpM;
       spf=pass (google.com: domain of 3t_wexwwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3t_WEXwwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id np11si754607pjb.1.2020.10.12.17.32.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3t_wexwwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id d5so13002110qkg.16
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:55 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:4eaf:: with SMTP id
 ed15mr7416748qvb.40.1602549175140; Mon, 12 Oct 2020 17:32:55 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:32:00 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-23-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 22/25] x86/asm: annotate indirect jumps
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
 header.i=@google.com header.s=20161025 header.b=lfisHSpM;       spf=pass
 (google.com: domain of 3t_wexwwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3t_WEXwwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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

Running objtool --vmlinux --duplicate on vmlinux.o produces a few
warnings about indirect jumps with retpoline:

  vmlinux.o: warning: objtool: wakeup_long64()+0x61: indirect jump
  found in RETPOLINE build
  ...

This change adds ANNOTATE_RETPOLINE_SAFE annotations to the jumps
in assembly code to stop the warnings.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/kernel/acpi/wakeup_64.S  | 2 ++
 arch/x86/platform/pvh/head.S      | 2 ++
 arch/x86/power/hibernate_asm_64.S | 3 +++
 3 files changed, 7 insertions(+)

diff --git a/arch/x86/kernel/acpi/wakeup_64.S b/arch/x86/kernel/acpi/wakeup_64.S
index c8daa92f38dc..041e79c4e195 100644
--- a/arch/x86/kernel/acpi/wakeup_64.S
+++ b/arch/x86/kernel/acpi/wakeup_64.S
@@ -7,6 +7,7 @@
 #include <asm/msr.h>
 #include <asm/asm-offsets.h>
 #include <asm/frame.h>
+#include <asm/nospec-branch.h>
 
 # Copyright 2003 Pavel Machek <pavel@suse.cz
 
@@ -39,6 +40,7 @@ SYM_FUNC_START(wakeup_long64)
 	movq	saved_rbp, %rbp
 
 	movq	saved_rip, %rax
+	ANNOTATE_RETPOLINE_SAFE
 	jmp	*%rax
 SYM_FUNC_END(wakeup_long64)
 
diff --git a/arch/x86/platform/pvh/head.S b/arch/x86/platform/pvh/head.S
index 43b4d864817e..640b79cc64b8 100644
--- a/arch/x86/platform/pvh/head.S
+++ b/arch/x86/platform/pvh/head.S
@@ -15,6 +15,7 @@
 #include <asm/asm.h>
 #include <asm/boot.h>
 #include <asm/processor-flags.h>
+#include <asm/nospec-branch.h>
 #include <asm/msr.h>
 #include <xen/interface/elfnote.h>
 
@@ -105,6 +106,7 @@ SYM_CODE_START_LOCAL(pvh_start_xen)
 	/* startup_64 expects boot_params in %rsi. */
 	mov $_pa(pvh_bootparams), %rsi
 	mov $_pa(startup_64), %rax
+	ANNOTATE_RETPOLINE_SAFE
 	jmp *%rax
 
 #else /* CONFIG_X86_64 */
diff --git a/arch/x86/power/hibernate_asm_64.S b/arch/x86/power/hibernate_asm_64.S
index 7918b8415f13..715509d94fa3 100644
--- a/arch/x86/power/hibernate_asm_64.S
+++ b/arch/x86/power/hibernate_asm_64.S
@@ -21,6 +21,7 @@
 #include <asm/asm-offsets.h>
 #include <asm/processor-flags.h>
 #include <asm/frame.h>
+#include <asm/nospec-branch.h>
 
 SYM_FUNC_START(swsusp_arch_suspend)
 	movq	$saved_context, %rax
@@ -66,6 +67,7 @@ SYM_CODE_START(restore_image)
 
 	/* jump to relocated restore code */
 	movq	relocated_restore_code(%rip), %rcx
+	ANNOTATE_RETPOLINE_SAFE
 	jmpq	*%rcx
 SYM_CODE_END(restore_image)
 
@@ -97,6 +99,7 @@ SYM_CODE_START(core_restore_code)
 
 .Ldone:
 	/* jump to the restore_registers address from the image header */
+	ANNOTATE_RETPOLINE_SAFE
 	jmpq	*%r8
 SYM_CODE_END(core_restore_code)
 
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-23-samitolvanen%40google.com.
