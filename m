Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBZV4QKAAMGQEPBTZULA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 580412F6B4D
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:28 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id n8sf3986972pfa.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653287; cv=pass;
        d=google.com; s=arc-20160816;
        b=J351P8uBe39l/DF+V+GYTytkB1I7+iOiGDK3owRynhpjTjhBTfc2XM2OJfXcg6HWYn
         uU7afiUrhO/r8sdXAs4D3Jr1VHXXCQYw26r3MfPEzBpZVC+ogFmHjlbW7pgUWj5Ovaxl
         BBU12uWuEId+wMv/hFmCA0QtsMXh3qpcFBx8qfldd/BpRWT04CE6ReIDbZCuxIxUEyvZ
         mshGmfGUwjYPkweqFQCkjuCIDrd5bhmx9T0iQyczkOxteR/k+Xsa+kiX4+66/1yyBxCW
         eLGQWPI4lDyBufzQwqVopwjX+KZDS8h0Sl+vv9ehem3SXhtSL0XW8R7U2b0Psai/DrDA
         J60w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XbURsqu7ahGQA8VXbv3lHAfEgUhLalTEQp5tkdlrZ1k=;
        b=kgw4+irqcUhIKlLOZsXh/t3IKbKxAyOUYzcQnMNtbBKeD1MWKsAgaC4C1VfUNz/8GR
         CLWKjrC1LB1ul5WlkEvbnwyZdkU3qTCBf3fW+QP+bj2M2PtNiSAKfSmtCFUm0XMmnTTk
         J9ObMq1Pkru/yUc10BFvH6X8pXgVQ7I5GwhM66LEzlZCubi7LPAKoJNv2NJI/AMqigun
         jukTctLXN/SpUEwhm3QZ30jd/N7WDn+clQcCHO+Bk0UcpYVg014Sc1ThDC4qPkggjGWa
         Bh+mcJx79mtTJO3ZBKdntJqWSjLsWwiUN/ve/E6ke+cFJpYk4nbkQk9Q/gaKgrg/SA94
         NtkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Z07WNvcQ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XbURsqu7ahGQA8VXbv3lHAfEgUhLalTEQp5tkdlrZ1k=;
        b=sLbW03YXWc5d8Bki6Oh7TqcXK0Xke82+jWzQ5aL1boc1boH1rHFnylPESsDGku+LVC
         bC/+OFnbW3PlCx0YgqF9av6Bb4xznIRJL9/rZPrOAeiS7jtLx/JeCRNLzDnq48KladsK
         fs2ibHpvDl95X+PNDmrdIgHD2cI6b3OklIFA5bNnhOf5V/QhKMfP/5abDbWsf9cXHevz
         1l/upX12YAHqhmt+Ww/7xoUQMJGjrJVWElLCcBN4ZoVTgO501qCVcgMoZiW7BQHHXjlw
         MsRk4Pb6vlHDR/McpZNbjLMjRExJsvaCxhccpRLLPUPIB/4DbfF60QFkqFXlmv94dR0L
         7sQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XbURsqu7ahGQA8VXbv3lHAfEgUhLalTEQp5tkdlrZ1k=;
        b=ZZQGdWccBUlEkl00JY774SJF9dQnWwzO4G4EpqcpeRIYDhXqZ1Agjfbx2sSnp61P3k
         2wwaC10SmQduWKCxSHL9VBtU2LkOxikcS5jAuRpLMABOnHlPPsDVqVXyLbmro/EbX8Kb
         2E3wUCRQbvDSAtGCbRfvjiAgzJo3W5Csj8GX2mB61YPuIREV/9zU/dB+JixH+szD5bz4
         D0cbHmx1UlCUQcSKBXKFxLVNB9kaQjX5zVUifY3CSfFTU/NUmn/SwL8uqhWej4WIgLvk
         LWrsqZO8PlxXN8XaUth2kjEEudx9MCuAR1j14fzqqO9XjirVdjh87ge9n6ELeNR8kGmb
         oaeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ilzVWOE0cKLFIyc2avBrTfEEMVlrZqWh/z1tDxK1Cmm9XQONe
	iRh30CVSLQIRT2MGkBOLfmw=
X-Google-Smtp-Source: ABdhPJyohkOzvG7tRJWL3lfj/sZbrJcSDBniM7zojZh7MJmsQkRX2tyIt3IQjmchXLv8mo7cQwWIbQ==
X-Received: by 2002:a63:1524:: with SMTP id v36mr9082617pgl.383.1610653287027;
        Thu, 14 Jan 2021 11:41:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7f0e:: with SMTP id a14ls2515469pfd.1.gmail; Thu, 14 Jan
 2021 11:41:26 -0800 (PST)
X-Received: by 2002:a63:5c18:: with SMTP id q24mr8894251pgb.411.1610653286377;
        Thu, 14 Jan 2021 11:41:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653286; cv=none;
        d=google.com; s=arc-20160816;
        b=sOuWu11Y5vdoq4OIWRi0EDo0mqbRQTXh34fFnzwACGlNg3VLHMH5CyInGKvOxShTFl
         7RmStUCWDqEglo8t6iD+hUMdfr7L6b8SmbH06e2a+AljhDqRiFXU5rDHakSMMa9yxjus
         s19yA558SOHYEWfdywKx1zGJbDSmJRqG7H0fuFlHCRGfj/EcOAfoaUcvG8grN1+bAnDw
         FyTGNkm12k1I3kwPr4wKKmDDlCwOBWfK9wA7M00Xj7qqePQHtFSMxiWghTdXekG1lIPr
         fnrcga0qPmm5ip6VNtuEwvJUakVa0jCN6uwDwFkyEXkHhfE9V4gkdB8PTTSoO4e1VCW7
         xR9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=t21cAnb3L3Z7NhjIc+d58UvtfFBdyFuHHVl8QbIF49E=;
        b=Y1nch9IyPoacP4Zu8bW2dN3onzSl5ijAFwoqbBhMl+rtLUJTYHm/tqmRPgQHTqHnNb
         jPgjX7jQlCBtQFqen7d8C7NKumEdbnoNPScs2xfkgbVp3YXP8z5FCw32PMJux4xzAVy5
         Shb9WeJCut5VZI5h5AsLwxqZ+YJcF+0TRP3WyBmIn06qcgoRQcSCy1q+XXTuh7ePWn0H
         f20j0us5tG4R/g/3CbHxJVwkp66YeLwx8HQU2jc9b8M6xf74SqRzz9O1TY2tfX4IhVRq
         8IopzgUnzitVRh9mJgGsnn3tcJkcttolL8eu/1VxLNsW/rEdu1Wlu8hiKkuNXZzQ4PKe
         6S8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Z07WNvcQ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id t9si110865pjv.2.2021.01.14.11.41.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:26 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-580-R5C5sLJ4Ph-ofH3mVLmZ0w-1; Thu, 14 Jan 2021 14:41:23 -0500
X-MC-Unique: R5C5sLJ4Ph-ofH3mVLmZ0w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8329B806661;
	Thu, 14 Jan 2021 19:41:21 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E77B01001E73;
	Thu, 14 Jan 2021 19:41:18 +0000 (UTC)
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
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Juergen Gross <jgross@suse.com>
Subject: [PATCH 13/21] x86/xen: Support objtool validation in xen-asm.S
Date: Thu, 14 Jan 2021 13:40:09 -0600
Message-Id: <77629463ea258e47d8d53bc8947da24dd2923931.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Z07WNvcQ;
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

Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Juergen Gross <jgross@suse.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/77629463ea258e47d8d53bc8947da24dd2923931.1610652862.git.jpoimboe%40redhat.com.
