Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBAHFU6AAMGQETF6DFKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 219052FF74E
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:42 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id t17sf2050993pgu.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264641; cv=pass;
        d=google.com; s=arc-20160816;
        b=L2OHNsFrQ17kLsKJrQbs4KB6amhErByR3QRIJ1uVadi1sBbsoqH9A9voKNhTY9w0cM
         tHz5+13P+o+rDxMUqdhn9HNhuEREYodaE75T88XcSaxg6/q50kDDA8omMY1FmhvOZUsz
         OQpalUbHT2U+KA6+eg0OSfZ82h/XyQdhAVR06O50k7mpvA7StJgUbdAYZmouBV06QkMA
         9l21w5OTIU7MqXydukF9MUvMP9jrdbCht8ErurKn8XTiGifuAqTqMhaZ1Rv3DNJrkCcf
         4jbxh4qy9hAogROuZpsvBIrlLbKErXzauxtnUHR6jLdLOgPuWIuVrw4HqUBx2FYyEnDl
         hdsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=o4fJu1szYiFFAF3vQesiF4VTwX9VOQqLLrQhKGSE6n0=;
        b=SW/gVWnu88sqW6GnnNmqwqgg4dF8pSzs8KZgX4HG9lf2oN0vkn6Xt1HTV8uRqxPgiR
         BnY+OtZOSgT/MgE56taIyNRdGAQ43iKLfgYCUWtxV+WfMBzMnDKH+f53CMyCRu9TxBJ+
         yQz33IlTvfyETwvoDSL+jr3WLQU4XtrxcwrSyHIV7pJlAgJ4HxzRHoTzI3ZcRkNwuyGN
         N7E0kR6BDnJOG4oR9V1Dm8jI26zf4VAIPTeY70bfllaQMXwb1Q7SseZ8aQVrs2KdpY+a
         Dacyk3YixGC5ryn7/acB1FB0D0y+d4J5Y4OqYpmDH5j2PQQ8zr83LtYvjEqWDCSC3uhQ
         oZHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="FP283ZF/";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o4fJu1szYiFFAF3vQesiF4VTwX9VOQqLLrQhKGSE6n0=;
        b=YbMLje5cmymM0xs4DbIGRh9G72mLbFJigZubn8TjQeGrKbKzcN5/5H/y90K6fDiTR+
         f93sALXzszFgruPjZC4pra+tvmNfLkgD5DTA/ETjh6Zgi7u/SkD5Pi2sHDoWIjT98zBk
         VZr4gfAPWic1IZW1g6Q7vdtm46gJnavTUWUbmLLM7I/cmNBbGSObAPAUDKmgWo6lhc9q
         hu6nc4b6acjGainy+lFbepWaufAl7sGLmFAWlmfs7vhnr+GedpxVK6K8UEMdyCO6azC7
         kE1y4P9y+VbcGYVw9SRKgRIyMoD4G9PEOjdLfsdK1jvI5rDUi38+9GEqojbFxzwjBOzN
         Olbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o4fJu1szYiFFAF3vQesiF4VTwX9VOQqLLrQhKGSE6n0=;
        b=HMCVsbuR/aoRMPDwVPpxGo0AUEAQ1wrDrE7eHRUpIBjpn7V0hoV7zCf4wMUnvgRrI+
         5Y+rvyi32+2dBk3nkqs2e1JkOys6yZ0fizBOrNM2Vfw1ImnjGq8X650CyWfVlAhXX2n8
         aRPevCogxVvLbyu0C6u6/H08bdQTt0fnqz6k6JomD+BuE7qn51pQ2ljhdSP2Xnaegq3W
         yrfKdwnMZG7qTgPISnfbqC5u4JHQiyNtDyPMMTP705Xzf1IeMc09p77aXIy8rSP+D5/a
         nmPW9CZRPMy8GM56DWWh09TOyuyYg5RK2aJzmI4mFbOWKEZHEpqSgw85NK3811vvn3O8
         kTTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325Vt542h/cAwzO8UDh51S0umlZL1UVV8P0d7Gke3pFlPGzoPFc
	pQU+VB4/v3+MJgc27COpPbo=
X-Google-Smtp-Source: ABdhPJwqJMrca5iPLkWQBiMDPWP6wnNC5/E1hMl4Y+sjFGFvC032vAJlG5eLQ3m48px7VOaTzw2ypw==
X-Received: by 2002:a17:90a:1a10:: with SMTP id 16mr1502764pjk.42.1611264640898;
        Thu, 21 Jan 2021 13:30:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:378a:: with SMTP id mz10ls1929490pjb.2.gmail; Thu,
 21 Jan 2021 13:30:40 -0800 (PST)
X-Received: by 2002:a17:902:8643:b029:da:d5f9:28f6 with SMTP id y3-20020a1709028643b02900dad5f928f6mr1702964plt.8.1611264640300;
        Thu, 21 Jan 2021 13:30:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264640; cv=none;
        d=google.com; s=arc-20160816;
        b=vvPIrYeCdIrjsJhBRF+M9D3IcgcOPXTfitjv+ULea3NgYtVuabu2BuEhREYLfbuZXy
         UXC8GDnHnajzY37hEhk3n4RCbDkxoXYLC4M4HEHWH+plolDEEbSXrQIV1z1/DB/INTIv
         0x+2JL0ioGamZ/4LJTMwz/7LVLGaXJ4+Wn217y29uCHqJ/17SGkpavIkxDOt4RKcp+mQ
         uAVKlHa4RXeItrZegTSBguaBwJtO+OzKW+uEELpOiy3DgixXh5duLifvzwShRFFfXyH3
         mwwmXSSqKA9FS7CnhM2b4UH4uT3NdBgg+dvZzDWCv1pB+hcO7isWrHfRo33tPhieJnFH
         93PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+p8P2DTHRbkVLpPLGQBG59BZIX2VMhiBD+mRgRYmlFk=;
        b=EFFgsBf6PzWuCO8QrjvVAd77MEReu2PHJopAnW48FMb54yRgs+xUsf0u1VmYKpGo3V
         Vwp8PomYOC5X970l8tAWI6awdOfHHYjTWVNYunraKci2AYqpRAhVATvCi4HhFb5z5b7h
         OfwomAnzSN/ptAl/lUiNvYrBaCRTiq7G+p4g1gGvWQDQfsp1BKFMtty0xf+7CWMddNpJ
         WqhoULEKqdhC6efAA/IPQ31ideEmehplD5QACPmyCXJM6mW4ThYIRDMCvJfFEkJFzLJK
         Gtn7HYUvAetdtxTgT+Fl/BI8Zs1umCDg9eXQS1SizyejqVH55d3SJdfqnpaI8Bvn9AYd
         TG2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="FP283ZF/";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id a1si338294pga.1.2021.01.21.13.30.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:40 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-66-K1buBGpePFeVOWImmcFRnQ-1; Thu, 21 Jan 2021 16:30:35 -0500
X-MC-Unique: K1buBGpePFeVOWImmcFRnQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A6D66107ACE3;
	Thu, 21 Jan 2021 21:30:33 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7DA8E19C59;
	Thu, 21 Jan 2021 21:30:31 +0000 (UTC)
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
Subject: [PATCH v2 19/20] x86/power: Move restore_registers() to top of the file
Date: Thu, 21 Jan 2021 15:29:35 -0600
Message-Id: <8c7f634201d26453d73fe55032cbbdc05d004387.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="FP283ZF/";
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
index 715509d94fa3..91c4602d2b5d 100644
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
@@ -102,49 +148,3 @@ SYM_CODE_START(core_restore_code)
 	ANNOTATE_RETPOLINE_SAFE
 	jmpq	*%r8
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8c7f634201d26453d73fe55032cbbdc05d004387.1611263462.git.jpoimboe%40redhat.com.
