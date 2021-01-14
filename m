Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBBN5QKAAMGQEISSOAHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 030A42F6B54
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:59 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id ba10sf3813914plb.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653317; cv=pass;
        d=google.com; s=arc-20160816;
        b=pzmdtrVktpuATJELfQZYdN8dNlI5CE6ymZd29FavqK8g/WWDx2EIZyGRUvMx/rz1Hp
         PSES5SKB2I+k849B0OS+4+jllYBNFdzhB9dU5t2GhArwnc2ej2sBrTXlWO3+PbQvNIzB
         CFCXeSMMCxH/d1vRPJBkqKvZatK20FI1DLByBlT9cz2U1QZx8bT8RI9+32ztGtVDQWTy
         9Q2IWAR/7ATtL2o3mYmXZ9QL7u6k6Q42omtnT83mSBraznpYrbcVobLrgKVhrGLDs6Kj
         qoeY+fLMJmz6vRQTTnCr0x+99vZ7gEiwygTChcFBB8uuZ3b+++wECVpLTfcLMYAYAhB9
         S/5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TWgJWLVzIGmzJLbDy3zMd9VUQwoOnmTNSU3M9x1arUU=;
        b=X9rmsZc3Pk0DF/vbj9mfctTVtpUZdaW5Td4wGp45TPAyUZNNY6b1Dhdktl0hR+Fm4y
         /8ckHY44O6L8QaToLLnAeWbeqnHoTu61OTOLQn2Qo2qJl9n/vrUbZWrMd9xoQlFcvvi+
         /pgg9IcFd6cHpDI6ICVdsYLh8Wyo6XykaOvu5lopsMh3bETBfn0FIVOsZTDsw+DyXM5E
         MbX5pcKwh4j+YhupId4gpMYP3DeIh/Trb0A4kgvynoKM7J5EUXoJJ6GW7kKEhM4DIWL6
         A5+14prFenghesasaBau5tH7s5Km5BTa6aljVuGzRqpirDlUiz37gIBZk17X1h/vJplR
         JmkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KDc0mkOQ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TWgJWLVzIGmzJLbDy3zMd9VUQwoOnmTNSU3M9x1arUU=;
        b=gl8xEzBe6YamcKvecKPFsGOJYVeJK+VtV/LpiVH41rxGsXz9LvMlNCNYjQaiApUh/a
         V/STnn5dgmuvG01a9+i+6ym1cZHnVuoJD6pUbKZCGUpvCasDRgEE1RHysSbHresusc7p
         pjIX/5GidDcXqd1AQNeo4CKzgXV8rBSun/KC9V+E5VLfacJhB+3yuvSp4VdGiSJXsGqA
         IK+tMODmsWAH9haJEeIF01THzhzjlO2kdj/e8CBfLx1BzZc8Z1QTBEnAD5DOIJGKezpn
         PXUF7vql316p8DsKcFebVib9Mp/3UurSOwj/JzEL7EUw7yiWZmoDQMpHpF4+x0qls6Rh
         y2Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TWgJWLVzIGmzJLbDy3zMd9VUQwoOnmTNSU3M9x1arUU=;
        b=hBW6B/9Je8w+qlFxII33pskmInKBHvI94XsKmMVica64TqCWpujTmal9SWNkrwM/on
         SuuUvESgtLh/rpAeGL5w4gLaWU2nmNCiT0QcJ+3MnkRGwPpNRIZfwwGZY9DauvDaEYOn
         Db6rWD5tR6py6uwosedMkYZ6+xQw3kf2epq8FafRIgfo4Rf5yeJMlqBtMeg/5A7gil6W
         0385gS22AqlGVLkJ/y18eDlNgsLtvbIFIogSZtgc8foAuMaOjsysupbpnaZL4SYei1Kg
         W5wMCUkswS3mwVf3eFzeDmqqS2MTwOtlwvb2y3/VF9ngTcs1Et9z4TV8M0U0jLsS6FQ8
         ZHsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HVTG38gohzqsHU3uWnwwanx7xwusuuEHd3q+j3Fg3x4sQQnIL
	W87mX+T+yvri9q7PvkhYCLg=
X-Google-Smtp-Source: ABdhPJxD4CZcmQJrHPMCe4VnWSNnSlgdaG/yE7+QlQ/BnU7uP/OMZRxfkcjbXPqFDUJrDclscGV3LQ==
X-Received: by 2002:a17:90a:5298:: with SMTP id w24mr6456804pjh.182.1610653317638;
        Thu, 14 Jan 2021 11:41:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6d0e:: with SMTP id i14ls2595199pgc.8.gmail; Thu, 14 Jan
 2021 11:41:57 -0800 (PST)
X-Received: by 2002:a63:700c:: with SMTP id l12mr9092120pgc.137.1610653316916;
        Thu, 14 Jan 2021 11:41:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653316; cv=none;
        d=google.com; s=arc-20160816;
        b=YwUDkubgGKk3c7D9tsEcScUZbjJlOtI/5Zh5bv8Fb0JBueHymik2r8q561tRohAj+5
         WeO4t9qvA6coxOUrPGCV3TjehVv+dYnpuwndmB57RPJZGUShlaytrTEsiLTAtkzvIAnd
         je2+fTyFl7TYkHQg+N52VTXukqdVUvKoDOPQs5HHqBfV+u0qG7IW/Yo+eWeDA3G4YKNN
         D+wJFS4c3imLaszoyjkvaYFsRgWbcvhaStfpxfpkPuQrl314DVjuADEWgPrcYHxhsUh3
         N+aeoLlUwMfHR14SxA3YL7ZT5Hy4I7u5voBFnmIp7qJKTNyXqu8OO43MkHomu1FnNeC1
         ilFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=360o/x4ZqeVu5+7Na9DmtSZt0qDu3O3xdQF63jJIqdA=;
        b=YxthMmFGSkJ4Sjpw3mLQJ0g3q8g0/1VXZRo0sd7xVSnlX9dAKXPE+m6hJO2u++3ZJS
         WTH0bEBp2UZ4Hf42k/equEgCZRqgNKrsT30ejnhsqrlwIl5W24epDwRdstuqN7IFSHda
         MKzxtGSuPGRKiAnadFs7BQNrHsVFF0/fBoje6twy1SBKX7zwWX8nJLljl8GlNovPwTlP
         pG6duGfyADd8AMCoFWbZeOX5vli0I2DI0RVpR1iZ8NvG601hobcelM1+sKkng6KdN8Z2
         Cd7M6NIQN4cQ656vrukLfwYX05dISarJJLRVMEkqkBv4ylwhtJVBdcZ1jpCyiDpfYaUJ
         hErg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KDc0mkOQ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id e193si331221pfh.2.2021.01.14.11.41.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:56 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-21-U7vjDBHAN9mB124vVQYirw-1; Thu, 14 Jan 2021 14:41:51 -0500
X-MC-Unique: U7vjDBHAN9mB124vVQYirw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7628A107ACF8;
	Thu, 14 Jan 2021 19:41:49 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C1E9210023B4;
	Thu, 14 Jan 2021 19:41:46 +0000 (UTC)
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
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Pavel Machek <pavel@ucw.cz>
Subject: [PATCH 20/21] x86/power: Move restore_registers() to top of the file
Date: Thu, 14 Jan 2021 13:40:16 -0600
Message-Id: <66baa19ceda840fc89a3bed8e0549db1184685a5.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KDc0mkOQ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

Because restore_registers() is page-aligned, the assembler inexplicably
adds an unreachable jump from after the end of the previous function to
the beginning of restore_registers().

That confuses objtool, understandably.  It also creates significant text
fragmentation.  As a result, most of the object file is wasted text
(nops).

Move restore_registers() to the beginning of the file to both prevent
the text fragmentation and avoid the dead jump instruction.

$ size /tmp/hibernate_asm_64.before.o /tmp/hibernate_asm_64.after.o
   text	   data	    bss	    dec	    hex	filename
   4415	      0	      0	   4415	   113f	/tmp/hibernate_asm_64.before.o
    524	      0	      0	    524	    20c	/tmp/hibernate_asm_64.after.o

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/power/hibernate_asm_64.S | 92 +++++++++++++++----------------
 1 file changed, 46 insertions(+), 46 deletions(-)

diff --git a/arch/x86/power/hibernate_asm_64.S b/arch/x86/power/hibernate_asm_64.S
index 24d971911c9d..4ca6d68b0293 100644
--- a/arch/x86/power/hibernate_asm_64.S
+++ b/arch/x86/power/hibernate_asm_64.S
@@ -23,6 +23,52 @@
 #include <asm/frame.h>
 #include <asm/nospec-branch.h>
 
+	 /* code below belongs to the image kernel */
+	.align PAGE_SIZE
+SYM_FUNC_START(restore_registers)
+	/* go back to the original page tables */
+	movq    %r9, %cr3
+
+	/* Flush TLB, including "global" things (vmalloc) */
+	movq	mmu_cr4_features(%rip), %rax
+	movq	%rax, %rdx
+	andq	$~(X86_CR4_PGE), %rdx
+	movq	%rdx, %cr4;  # turn off PGE
+	movq	%cr3, %rcx;  # flush TLB
+	movq	%rcx, %cr3
+	movq	%rax, %cr4;  # turn PGE back on
+
+	/* We don't restore %rax, it must be 0 anyway */
+	movq	$saved_context, %rax
+	movq	pt_regs_sp(%rax), %rsp
+	movq	pt_regs_bp(%rax), %rbp
+	movq	pt_regs_si(%rax), %rsi
+	movq	pt_regs_di(%rax), %rdi
+	movq	pt_regs_bx(%rax), %rbx
+	movq	pt_regs_cx(%rax), %rcx
+	movq	pt_regs_dx(%rax), %rdx
+	movq	pt_regs_r8(%rax), %r8
+	movq	pt_regs_r9(%rax), %r9
+	movq	pt_regs_r10(%rax), %r10
+	movq	pt_regs_r11(%rax), %r11
+	movq	pt_regs_r12(%rax), %r12
+	movq	pt_regs_r13(%rax), %r13
+	movq	pt_regs_r14(%rax), %r14
+	movq	pt_regs_r15(%rax), %r15
+	pushq	pt_regs_flags(%rax)
+	popfq
+
+	/* Saved in save_processor_state. */
+	lgdt	saved_context_gdt_desc(%rax)
+
+	xorl	%eax, %eax
+
+	/* tell the hibernation core that we've just restored the memory */
+	movq	%rax, in_suspend(%rip)
+
+	ret
+SYM_FUNC_END(restore_registers)
+
 SYM_FUNC_START(swsusp_arch_suspend)
 	movq	$saved_context, %rax
 	movq	%rsp, pt_regs_sp(%rax)
@@ -100,49 +146,3 @@ SYM_CODE_START(core_restore_code)
 	/* jump to the restore_registers address from the image header */
 	JMP_NOSPEC r8
 SYM_CODE_END(core_restore_code)
-
-	 /* code below belongs to the image kernel */
-	.align PAGE_SIZE
-SYM_FUNC_START(restore_registers)
-	/* go back to the original page tables */
-	movq    %r9, %cr3
-
-	/* Flush TLB, including "global" things (vmalloc) */
-	movq	mmu_cr4_features(%rip), %rax
-	movq	%rax, %rdx
-	andq	$~(X86_CR4_PGE), %rdx
-	movq	%rdx, %cr4;  # turn off PGE
-	movq	%cr3, %rcx;  # flush TLB
-	movq	%rcx, %cr3
-	movq	%rax, %cr4;  # turn PGE back on
-
-	/* We don't restore %rax, it must be 0 anyway */
-	movq	$saved_context, %rax
-	movq	pt_regs_sp(%rax), %rsp
-	movq	pt_regs_bp(%rax), %rbp
-	movq	pt_regs_si(%rax), %rsi
-	movq	pt_regs_di(%rax), %rdi
-	movq	pt_regs_bx(%rax), %rbx
-	movq	pt_regs_cx(%rax), %rcx
-	movq	pt_regs_dx(%rax), %rdx
-	movq	pt_regs_r8(%rax), %r8
-	movq	pt_regs_r9(%rax), %r9
-	movq	pt_regs_r10(%rax), %r10
-	movq	pt_regs_r11(%rax), %r11
-	movq	pt_regs_r12(%rax), %r12
-	movq	pt_regs_r13(%rax), %r13
-	movq	pt_regs_r14(%rax), %r14
-	movq	pt_regs_r15(%rax), %r15
-	pushq	pt_regs_flags(%rax)
-	popfq
-
-	/* Saved in save_processor_state. */
-	lgdt	saved_context_gdt_desc(%rax)
-
-	xorl	%eax, %eax
-
-	/* tell the hibernation core that we've just restored the memory */
-	movq	%rax, in_suspend(%rip)
-
-	ret
-SYM_FUNC_END(restore_registers)
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/66baa19ceda840fc89a3bed8e0549db1184685a5.1610652862.git.jpoimboe%40redhat.com.
