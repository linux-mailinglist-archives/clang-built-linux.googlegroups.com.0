Return-Path: <clang-built-linux+bncBC2ORX645YPRB2EYQL6AKGQEECRRYCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 10589288E1E
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:34 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id e21sf6586574ioe.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260073; cv=pass;
        d=google.com; s=arc-20160816;
        b=mgrXYxq/Wtadz40+Ki60GmuVNp6pFlyKPC2/0/RI1cLS+TffprSWb2GPQ6RFIljEBe
         ixUfK/HGf9heBsjUugWIs/dY6mktZAhxiQYK21SLD9u6fcMUYrtvLIHUduG0X3CyimTC
         lWK9KmY+eJVA/4mOXMOYEaKDLX8Nqzn3Ps84KqmOzuEKyjvR00/cVl760woerFvs0Cd9
         hZ7h7NrC5uq1b4oTQicLSm1cq/SA4W8pB4TE2LMA4adygGLCzLZrsFNHiQfSe93T1moT
         VLN6IOyG7MXo4ESkbqo37+TwxnyfsbsKd0gkFOhwbrQtBSCK1B0vHomcakVR1x9gxdbf
         8wdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=SAz1nJM3HFYxv9Ik5a49HBqZn8mcVWp+5otcvg2aGm8=;
        b=DMPJrbHmcc4kf+FPD0yGkJ8+UofK0gAi/N4gxG9st529ShuF+Ijdo7JSsF91zYtLz3
         LO+qrCuSz4P73SvUp1pBgbdEqkMq3gZiaApKNbk9PPlTyd/Bq1RmNJQ0FROK5hXXPxh8
         iRb9c6uVNNNfA7Ek2IaM2DDYHzAhMKNWbQxcIe6Eh9TCdjxJTQMCzza6RdCDwMTdShay
         p9GmoThkRNMczGPtkjHGRtyPfrlC7lQggiOyCE4of+Z0b5Lq+Fsobld6enEOYkXTeGZi
         erMsW7PAsZ3soIrdY7fF2s/zDdkRLvuw4goocrCb61BCEQTTYawr+2egJJNJKyoxt3KT
         La/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Plxh6rO8;
       spf=pass (google.com: domain of 3aiyaxwwkaiu1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3aIyAXwwKAIU1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SAz1nJM3HFYxv9Ik5a49HBqZn8mcVWp+5otcvg2aGm8=;
        b=g2EbYRgLEq+OLAGeBruDfFNcTD5Oc2zBb0GyZNcjFQzniM3frhVSRBivFcjIysMv4p
         Ed+lD3YsKrCoszrJNG+PYotQ+5+cBmQ1nvt7q0WhhpFR0E9gaMxVe23qGrZD0EjMtGgx
         dnJFE3jAGEodAMg5VHX+njMWOijWOyD+hIVikZCOzWewovrJKCW7gNzOccyPLLwLZCUO
         xvmSHt+GtAP2zd2XLPQOjbFTuBDG7rUGVuE7IgNmRU6/Uv2VE9irgWXeOnrz6/XKomIE
         sYAAlp1WwnayFSSbBWu9BGZWf3Ub5pRlMMC7Rq+PAZ4OfgZgVR/yv7mGCwSk1isEr6+E
         L2Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SAz1nJM3HFYxv9Ik5a49HBqZn8mcVWp+5otcvg2aGm8=;
        b=EZ3rpoNpP0ntB9RnQJv0cNkOcE7n5Bi9d7n8P2ewKPb/3eNKs2A9twTq3BYFiHKzjG
         oWou5WxZGNsBZXT+FntD03/seCA0X7ZgRcHVCwn6C/emNFPKmR87AK8H0s9XhlTkHviQ
         Yxa33vrc0yJX6112yTlKloO41sUNikcfh5dY6VYatoyrPH7FR+VMK5A/dOvVzSDHvb8k
         6LSIzCDEGbcsBXZI4fH8XnpYWhBcWepNUMiAeXJrmuKkw6cFridxuMq3DxcqintvlUwS
         WJmNkuOLW/4YeqLxvAoIlQzy798lXikU8IAqa6NnKY2Rcb6Usm/ETLtdcBwykLrHgVuA
         k46w==
X-Gm-Message-State: AOAM533PNAH7fK21sXbUGuHJUYp2kKc4OlttL+rYsQQAEyjVLLLGmE7C
	kz6wpflEjR8MkRTu0ImBDh0=
X-Google-Smtp-Source: ABdhPJxa3JLa8NHRjKqA09bpRLLtmOR1PXTb/PtQmHHm1XVQx80MDcH0MfKYcDK+2EBNyfldvmH/Tg==
X-Received: by 2002:a92:15d0:: with SMTP id 77mr10867576ilv.98.1602260073076;
        Fri, 09 Oct 2020 09:14:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1b42:: with SMTP id b63ls2269785ilb.6.gmail; Fri, 09 Oct
 2020 09:14:32 -0700 (PDT)
X-Received: by 2002:a05:6e02:ca3:: with SMTP id 3mr5224868ilg.95.1602260072683;
        Fri, 09 Oct 2020 09:14:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260072; cv=none;
        d=google.com; s=arc-20160816;
        b=btcG/oaqFdZD9ehETfKEi4q1rcnWi/X47PvkFa6iPTPXju/v4K7brFsAWZfXFiyLOQ
         AvZWlIB4kFLzhXgbRUhBsn/bATfzVx1/l+u8/ZHir7HVxTXC6n9lsz3hUgq3gPUnVNiu
         Tg78daR7psiif+VMzZxJLS5k3d4n8Kp8nBHhpkMCQPtYNVDwsgIF+B6jXf5O0zEPrAHy
         AxnWTU5Be9nyyUwP75bnEz3F7A7Wwzy2630C/lvOWMj9UPDRJxNOwBMsqO2iu8V542ES
         sdoxkzRxpJP/jmbbugndFaaNz5sVdyH4THgO/coxC45GxV6x+6oLQZCVAb78nNDJ99xN
         D7gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=eOx9MhffeJ9wDXWdE5ocpTXQ8u7ymKHm7bpeM0Lggio=;
        b=mQJfe2Lq6oR8y5GiRxSDWUX7zebnfFzwC8tT8h/KEwsj3OxHYPXu303cUOrLX66K3G
         GOD0APLXJFz6aU0OF/ypubnc/vszq91Z/lQILlEhdjiIXJaw8VJHROFCC4dujudSf01n
         soT91VeoQymwcvUbtfTLqQnaSyEM+aj/MmKx88txmziCHcl7yJSZN7A+XysaiaX+BYJE
         +fMIwm8njSJj5XX8fYgmnbfIqZqf+TwzSiJVwwsVDfr6oetORf+i8MqsAFw8cy3BjcbQ
         8+triPFrpR4oD1rGZWox7ioevqeCSCy9qAkT6J6lZ/moxdSnLLndo3S/ZcLiQ14ZaBN3
         WPKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Plxh6rO8;
       spf=pass (google.com: domain of 3aiyaxwwkaiu1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3aIyAXwwKAIU1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id e1si473800ilm.0.2020.10.09.09.14.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3aiyaxwwkaiu1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id b3so9385319ybg.23
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:32 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:8209:: with SMTP id
 q9mr19033461ybk.353.1602260072154; Fri, 09 Oct 2020 09:14:32 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:35 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-27-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 26/29] x86/asm: annotate indirect jumps
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
 header.i=@google.com header.s=20161025 header.b=Plxh6rO8;       spf=pass
 (google.com: domain of 3aiyaxwwkaiu1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3aIyAXwwKAIU1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-27-samitolvanen%40google.com.
