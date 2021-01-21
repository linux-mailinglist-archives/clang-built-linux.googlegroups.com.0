Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB3HEU6AAMGQEMJCLTPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A032FF743
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:21 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id h129sf2599152qke.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264620; cv=pass;
        d=google.com; s=arc-20160816;
        b=a8PO0blCbhMyAr9xipmpISNs/GcLJIoBpcYVX+yGwVTNh2VDlM+A3QerUrAkr2sB+E
         eqTZZJX2v6FGZEBjJTtIYIGU5/KP8Yb9aEKTRXQTImQnlA1N6gTQI/HuXsAQXHGTRWK5
         3Z+7QQCwYgUaYFImE/GyIK/pZQCqzp02i87EuJggrr3C6NWwDV1Vfde1UQEmLe8r7L5Q
         gI+mCuHta8MCAinNBnKhOkT7p2tR4+mhXrg9b9y1bsr01ssnXb9wuIP8R8BV4+Fs77sv
         5blvttYR/9NpUc2X7pnGKnVhXF7nXYgr48ELBhcsIUJUHDAOUjTo7TK/h0Cqw6C1jSkc
         c7ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+bmhZVG4i5FwvjGF3MQ7Q0Sv4yxYkUx529V02uaBeoc=;
        b=IYE8eX+znUqK229FdiIbMEZqVjazMGbcU5gwM6Tz9LNrShm7yyH7nSE7uxQiGLbB22
         7qNEnJIrskjGGhZhQWUfxRfqJwDNQa7x0tqSJyjjLxz7Q3ZgFfUCIyJqqbFTyoE/bjVA
         oeys+M1y09dj2wNhzmsdN79AygED5hhUB58E7hTyAaa9MYdOSgCvXZTejUiRNJwFBteN
         7/fqcbSC9DFPrCgUUNChgUDNT/0gKn8I8n7xt8cpATIS9bPRZ7hLfEF0f8GOvvBwZyRd
         5tzgJXrmctFBBnsURG57PYRnHxReogOMrIq3PFzBB/+QYjOh49EoAXmDHrQzrvKm36oE
         aoiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dmEEcUZQ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+bmhZVG4i5FwvjGF3MQ7Q0Sv4yxYkUx529V02uaBeoc=;
        b=fp20z9gqfb/gRQ1MkrAFpA2SnBVMSbalLSfYJaOzCtRxxMCNlIUYayT8SQXhDWYbsT
         Y6SvbX5kLZHRovS8k2rLhJrO6xTJtfhpefkMGBdP6bk1pEbOxpkSSrGefBdio/K3R8yW
         u3Yf6lvyIxYM00dpvCQILy9GZcgjf7zP68CpAoRUJlIN2Ptd9wo64n7BJCUOpGD9hr2a
         cbeVr12OdyuKBKphPAbMIVv/pj7qH+9OYXA+hbpjnbWrcr78OJl/hXCUMMeQcAG9tYWU
         ha+BEru68QcgDZ+3bQAk+siJMWhcf+sdXxt18j2z2v8VGoIKIwSv0iyhXha67zQklK8l
         bWmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+bmhZVG4i5FwvjGF3MQ7Q0Sv4yxYkUx529V02uaBeoc=;
        b=QeOY42MpBPYcD1IEZ9W7aEvciTmPSnWd37ZkHG3UWetnj1+sfr71al+grDJ+oc/l1W
         vj8/0IqgkmjwUYCdWZLjgdvZiNaBeIAyx93HI+zEPlrgDgNxnwQzKwXI0mWoJnZEpoA3
         qplFX7VS3oYvOS2e2x426VlTmFf/c6/Ko1N/RIa4XKKRH+f5qlQCEQdp1gOjc3cdDDZB
         JwNcAJvU7/N27VNHbjKPaS9vxHTFdxjeZJpKreFQ82NbO17aHnukAqvQgpjzGYuq+Kr3
         QXWyuup8mucGBMFF6/K4lLMKGZ+bimotk5f3s6ULrI7tWqn+uPq6QzvkgnnFffVdh1Ng
         JWKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SzK6faGxIZfnJpXJoaf9+PSo/e9V/PKT7vtiU3a/ZQZ974bLQ
	XmfeCEsUSKvmc8gKrrpP5yc=
X-Google-Smtp-Source: ABdhPJwdQtcWuxBtVkX1nnyM954uWBkFj06XOwpE8rpuXAx7FdJuFAGfGvmFTG71Wy6RlHjW/5MmTQ==
X-Received: by 2002:a0c:f38d:: with SMTP id i13mr1527052qvk.33.1611264620833;
        Thu, 21 Jan 2021 13:30:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:205e:: with SMTP id d30ls1787917qka.3.gmail; Thu,
 21 Jan 2021 13:30:20 -0800 (PST)
X-Received: by 2002:a05:620a:95e:: with SMTP id w30mr1854088qkw.97.1611264620514;
        Thu, 21 Jan 2021 13:30:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264620; cv=none;
        d=google.com; s=arc-20160816;
        b=FLb8ahQjHxeJX0SxV4QnSd2l92q4xBEvfyymhGtUnVDk3Wv1bfeESpoOakMgigA1Ci
         tgQDF5QK2zY+EQvRcppop39ZXOIG78Yrvw+qwOpbDcgbcF/sbDFn9x3OOBzEBrpyqyrs
         I58r6Q/GKptfJuxyUqKn3GgFqDisZRegyvusOC7b+ZokohKUrSQGKyhQ0+9F2IxgB8SW
         xaDpXDlnBtnPZgVD6QnnVOJzJ8y6/YmJbVaV90Uiph671hRL71XYFFCE1u8xfNFFkDjy
         OKAdlveiPCL0qu2jwtklS6Oh4o7R2g40zjT3Tw8LtOOFHG4QkamDoRPQukK5nKuJmWX1
         izEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1j9FCObNnzT+7dQqGeu7CZnMn7yEU2Jc3x2oWWCHzac=;
        b=AlzfTDj0sCVa52w9SoEpANtZ3HqprsFi9lRjIdzZyLwVTpg9rW/FIBsk3TvENPcRYJ
         kTrhSo/EZsTzy+uNxsmFWGscNWurvhhaklqCSCs5irnze+ZLxNAL4BSsBTiIzHn8kbdD
         eMEheOhTh2B7u/0NN1XqcFb4NtI1KakoYAFtsgurU9meGXfr6zLAYnCmH3fSDVnrUXE/
         DsArO1cdDHQW8666CiJ9U1yqJysqWjZgzGZvtckXitUm+FVLhtJi8N898noP+ypOX/Qo
         6E8KwjrwndW5h67hiJb60db4LP0AcwuA6LyHlutmwAiA+HE7z+Pcu38Yr6vJWeTOSGp+
         SphQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dmEEcUZQ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id g51si603168qtc.4.2021.01.21.13.30.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:20 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-534-RYZkcDLiMnmQ7XJKIwJRrw-1; Thu, 21 Jan 2021 16:30:15 -0500
X-MC-Unique: RYZkcDLiMnmQ7XJKIwJRrw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5DA61806661;
	Thu, 21 Jan 2021 21:30:13 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3857B19C59;
	Thu, 21 Jan 2021 21:30:12 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>,
	Juergen Gross <jgross@suse.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>
Subject: [PATCH v2 12/20] x86/xen: Support objtool validation in xen-asm.S
Date: Thu, 21 Jan 2021 15:29:28 -0600
Message-Id: <8b042a09c69e8645f3b133ef6653ba28f896807d.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=dmEEcUZQ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Content-Type: text/plain; charset="UTF-8"
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

The OBJECT_FILES_NON_STANDARD annotation is used to tell objtool to
ignore a file.  File-level ignores won't work when validating vmlinux.o.

Tweak the ELF metadata and unwind hints to allow objtool to follow the
code.

Cc: Juergen Gross <jgross@suse.com>
Reviewed-by: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/xen/Makefile  |  1 -
 arch/x86/xen/xen-asm.S | 29 +++++++++++++++++++----------
 2 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/arch/x86/xen/Makefile b/arch/x86/xen/Makefile
index fc5c5ba4aacb..40b5779fce21 100644
--- a/arch/x86/xen/Makefile
+++ b/arch/x86/xen/Makefile
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-OBJECT_FILES_NON_STANDARD_xen-asm.o := y
 
 ifdef CONFIG_FUNCTION_TRACER
 # Do not profile debug and lowlevel utilities
diff --git a/arch/x86/xen/xen-asm.S b/arch/x86/xen/xen-asm.S
index 1cb0e84b9161..a05e80b552c0 100644
--- a/arch/x86/xen/xen-asm.S
+++ b/arch/x86/xen/xen-asm.S
@@ -14,6 +14,7 @@
 #include <asm/thread_info.h>
 #include <asm/asm.h>
 #include <asm/frame.h>
+#include <asm/unwind_hints.h>
 
 #include <xen/interface/xen.h>
 
@@ -146,6 +147,7 @@ SYM_FUNC_END(xen_read_cr2_direct);
 
 .macro xen_pv_trap name
 SYM_CODE_START(xen_\name)
+	UNWIND_HINT_EMPTY
 	pop %rcx
 	pop %r11
 	jmp  \name
@@ -184,6 +186,7 @@ xen_pv_trap asm_exc_xen_hypervisor_callback
 SYM_CODE_START(xen_early_idt_handler_array)
 	i = 0
 	.rept NUM_EXCEPTION_VECTORS
+	UNWIND_HINT_EMPTY
 	pop %rcx
 	pop %r11
 	jmp early_idt_handler_array + i*EARLY_IDT_HANDLER_SIZE
@@ -210,11 +213,13 @@ hypercall_iret = hypercall_page + __HYPERVISOR_iret * 32
  * rsp->rax		}
  */
 SYM_CODE_START(xen_iret)
+	UNWIND_HINT_EMPTY
 	pushq $0
 	jmp hypercall_iret
 SYM_CODE_END(xen_iret)
 
 SYM_CODE_START(xen_sysret64)
+	UNWIND_HINT_EMPTY
 	/*
 	 * We're already on the usermode stack at this point, but
 	 * still with the kernel gs, so we can easily switch back.
@@ -250,7 +255,8 @@ SYM_CODE_END(xen_sysret64)
  */
 
 /* Normal 64-bit system call target */
-SYM_FUNC_START(xen_syscall_target)
+SYM_CODE_START(xen_syscall_target)
+	UNWIND_HINT_EMPTY
 	popq %rcx
 	popq %r11
 
@@ -263,12 +269,13 @@ SYM_FUNC_START(xen_syscall_target)
 	movq $__USER_CS, 1*8(%rsp)
 
 	jmp entry_SYSCALL_64_after_hwframe
-SYM_FUNC_END(xen_syscall_target)
+SYM_CODE_END(xen_syscall_target)
 
 #ifdef CONFIG_IA32_EMULATION
 
 /* 32-bit compat syscall target */
-SYM_FUNC_START(xen_syscall32_target)
+SYM_CODE_START(xen_syscall32_target)
+	UNWIND_HINT_EMPTY
 	popq %rcx
 	popq %r11
 
@@ -281,10 +288,11 @@ SYM_FUNC_START(xen_syscall32_target)
 	movq $__USER32_CS, 1*8(%rsp)
 
 	jmp entry_SYSCALL_compat_after_hwframe
-SYM_FUNC_END(xen_syscall32_target)
+SYM_CODE_END(xen_syscall32_target)
 
 /* 32-bit compat sysenter target */
-SYM_FUNC_START(xen_sysenter_target)
+SYM_CODE_START(xen_sysenter_target)
+	UNWIND_HINT_EMPTY
 	/*
 	 * NB: Xen is polite and clears TF from EFLAGS for us.  This means
 	 * that we don't need to guard against single step exceptions here.
@@ -301,17 +309,18 @@ SYM_FUNC_START(xen_sysenter_target)
 	movq $__USER32_CS, 1*8(%rsp)
 
 	jmp entry_SYSENTER_compat_after_hwframe
-SYM_FUNC_END(xen_sysenter_target)
+SYM_CODE_END(xen_sysenter_target)
 
 #else /* !CONFIG_IA32_EMULATION */
 
-SYM_FUNC_START_ALIAS(xen_syscall32_target)
-SYM_FUNC_START(xen_sysenter_target)
+SYM_CODE_START(xen_syscall32_target)
+SYM_CODE_START(xen_sysenter_target)
+	UNWIND_HINT_EMPTY
 	lea 16(%rsp), %rsp	/* strip %rcx, %r11 */
 	mov $-ENOSYS, %rax
 	pushq $0
 	jmp hypercall_iret
-SYM_FUNC_END(xen_sysenter_target)
-SYM_FUNC_END_ALIAS(xen_syscall32_target)
+SYM_CODE_END(xen_sysenter_target)
+SYM_CODE_END(xen_syscall32_target)
 
 #endif	/* CONFIG_IA32_EMULATION */
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8b042a09c69e8645f3b133ef6653ba28f896807d.1611263462.git.jpoimboe%40redhat.com.
