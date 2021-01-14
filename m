Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBCF5QKAAMGQE2DIQBIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F162F6B55
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:42:02 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id m7sf4021023pjr.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:42:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653320; cv=pass;
        d=google.com; s=arc-20160816;
        b=WHz66NKAzKRSdHyaOiGdeShY3I6YaOW8GMTgrG2mxdhZQzjqUhc+5dUCzMQky2l1AG
         VABgNqU494ZXm7tZ3OGTFUwu/Hmf3foS/XWltImUaKPTLC59rsbbP6Ftcf4AR6cSqk+u
         n22N4jlND/MlExzwvqzQh1Cig4ZDeogq9tgNMP+Z09DBefBHebmTTf1I4F7UFxatXd6/
         fC7dJNzWteuGziqVitgD/gIHUi+Lk6Zcay8BlaTTnc+MAf/ZT7BNz5HNVPyF1kPn0rbP
         evgY1UTSDfrjNVH5vEavD5Gz7nAxyYxfl5Xga59WXZxv8qSJuM+DQA/urlgpOB5cLofZ
         aOhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6ZmNpP6JhBH/B3yvWnJb2NxUqdX1W6TbqD+nCJFbruw=;
        b=GHpjqbaF3/f8JBn8kgDsx9VYOxUSTYuyLAfmhD7NeqtmDK5Odz+ggzCMHlbsH9cXOJ
         Ja8cTfn7VI0Vp4/WzCFsk5xfN90/ER6YMNLltNGdfYSdRfAAQMJKl54yiGT9gdc5oF3c
         Yh8x8Mzt06eUiytwmFz2aHguNpIXQJQVuKr2uaT7hc7YWJldLbCnZkbnp/dZlyH+tC0G
         iJ1/r/imOGVD9+em3vwbuFIvGD5SewetNGEIl26RERaCjaU9+gqt0mYBJDx+Yno8Wnpj
         6slI6PjUMsJ/H8rTxGev07+8Otg4l2eDHAwLb9Y+vk2xa7gCTqSTKL6fh9SxepL17QCP
         o0uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NP2Vwcl1;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6ZmNpP6JhBH/B3yvWnJb2NxUqdX1W6TbqD+nCJFbruw=;
        b=Hf9OXAOO0vKSr2XKVDdTLrJ0/mHaNNx0G5sqxMT8Tdu9+0sp6tu+fgO7WNtthiM+nR
         FpYHbg6AONVz2oQkSCa5dS77Ftgi252P5rDC7nvGYDmuLViaT9YTueGT46JrrqK6GUzZ
         OD6IgZikAg53jzFFQYZ7m5C0J4P6l2RkDnC5oHaEMKV75v+LgGKYMr8iDbPfPuy3bN7O
         6C7H6DzuycDJ18oi9KOGXqzXG4UepRiaSeNKt6mA9ye0NP4zpTgCa9DduTCaj8NeAKxj
         tv5/kaCfHQzF7l142mtMolXB3+DHzuHlJ2ETIkbJkmD8kf8Djzfk317752eq3ydDs4cm
         CJGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6ZmNpP6JhBH/B3yvWnJb2NxUqdX1W6TbqD+nCJFbruw=;
        b=izbn+3wPE7my58h/vOKSePcRoTY/TmSxbloDWoP60+xdIW/N8RXcHu9MkbEqzOOt0x
         Cw3WnqiZMPFvXAKpmD6pVJgy0VvRl8mJbcYlCPCbX9SRlOI6WTLoS7oPMn7zT9yFABME
         sqSntlxBEY/WxcOSA4+XVpvilhuID5RcGLXgTbITzr+sj4BsXJddbcoSinekI6hgQK3y
         fTQN0ZzB1PaZwf6xgbEL+rLcnpE1bnT1UcCs1MFEO6btQ+YhwyaMU7zrIlF+QKfQZ+/8
         lBYPGd6yv5Uvr8z+7FQ2XGPxDc+VDjfq63isf1kzSqZe4L5K/9j9uOiaqZu5lUG//zzY
         lK3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331Ks3pps8EOxuo84mQDrjXwVBRctdxI2DyEoM5md9/FP+n0edY
	ZO2fDy5LMMiIg53jBrteO1k=
X-Google-Smtp-Source: ABdhPJwEhryCpy5zTWOrFQsyCV2Ga+37FqQ7o2Xx7T5QYlaBAkxGNM3v5yj1kaY3Cy/5CGVS/HXz2g==
X-Received: by 2002:a63:db08:: with SMTP id e8mr3488517pgg.261.1610653320731;
        Thu, 14 Jan 2021 11:42:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5c85:: with SMTP id q127ls2501084pfb.11.gmail; Thu, 14
 Jan 2021 11:42:00 -0800 (PST)
X-Received: by 2002:a62:aa06:0:b029:19d:f4d3:335e with SMTP id e6-20020a62aa060000b029019df4d3335emr8891444pff.60.1610653320065;
        Thu, 14 Jan 2021 11:42:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653320; cv=none;
        d=google.com; s=arc-20160816;
        b=gg9KiECuEawFVfpPIAZaWcKKF7ZyvF3mGa8i6v7O8D+Mo4If7I2ZAKEo9fnVEkXY90
         onIoMf6z7KKPxzyrTCiga5N1YwUI1uux1pw+HR8nX/dcFbqrX9mxnGjG1uCBs+f6cVtZ
         rSovOEw+fY74PoF0dPja+1B3a2cbDsWLVtgZ0WbWSPd0iaNjUUILNxwSkeOG7rSUsWUe
         VNu7nVcBGqtBNdnsX94auFpY22x1/M+8N5pwI0Jz6tmXw68+dy9Eh7m7niLH1lQcbqx5
         ioGBpB1FqYHX7sgsPIXFvWCL+JWZp7U7g1PveXoRCLudkt7XNaae65LFHkWDUgYoktKl
         jzOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0vEE4omOoEVIIrSo277ugwb7AgXeFGkOd1dV5Hy4GDU=;
        b=YL0SFMT8hGbv27+UNc+jsPGmkNdPfnLB5KZthtfkMJ0V3OXhN4U2nsf4+scsoKAJh6
         9VGYOjlA21+QZ0xO76jPojTPVPlHzUjX75TNB0+hngXtSelXyLVbVHCSZnvYR/ksnEh3
         b+4Q9+MpJk3Gk1AVU16F2v43NCPq7xjPf5bM318e0BZfD7bNVGDivgHYrXO0SxvnZAeg
         jNGy+I4GlDGxVNjRos/OtxDd6YH+cDFX/ToJZbbYcs8JEWf3y2kaUV82ct8kpwcWbz2C
         3COIbnM25hKe+6WI65O8UWn21U3rsc1v5nPKhSREFbKgmwetV9qPC831vdSiPpAxC7Pw
         mXmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NP2Vwcl1;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id q15si468515pfs.1.2021.01.14.11.41.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:42:00 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-561-Ku4PqDyfMuSj9BmsnWN6Gw-1; Thu, 14 Jan 2021 14:41:54 -0500
X-MC-Unique: Ku4PqDyfMuSj9BmsnWN6Gw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A2D7107ACF8;
	Thu, 14 Jan 2021 19:41:53 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A76341001E73;
	Thu, 14 Jan 2021 19:41:50 +0000 (UTC)
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
Subject: [PATCH 21/21] x86/power: Support objtool validation in hibernate_asm_64.S
Date: Thu, 14 Jan 2021 13:40:17 -0600
Message-Id: <0df4a9767074ec0f493fefdd4a2e57b4c9c53d00.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=NP2Vwcl1;
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

The OBJECT_FILES_NON_STANDARD annotation is used to tell objtool to
ignore a file.  File-level ignores won't work when validating vmlinux.o.

Instead, convert restore_image() and core_restore_code() to be ELF
functions.  Their code is conventional enough for objtool to be able to
understand them.

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/power/Makefile           | 1 -
 arch/x86/power/hibernate_asm_64.S | 8 ++++----
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/x86/power/Makefile b/arch/x86/power/Makefile
index 6907b523e856..3ff80156f21a 100644
--- a/arch/x86/power/Makefile
+++ b/arch/x86/power/Makefile
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-OBJECT_FILES_NON_STANDARD_hibernate_asm_$(BITS).o := y
 
 # __restore_processor_state() restores %gs after S3 resume and so should not
 # itself be stack-protected
diff --git a/arch/x86/power/hibernate_asm_64.S b/arch/x86/power/hibernate_asm_64.S
index 4ca6d68b0293..fce9ed03e939 100644
--- a/arch/x86/power/hibernate_asm_64.S
+++ b/arch/x86/power/hibernate_asm_64.S
@@ -99,7 +99,7 @@ SYM_FUNC_START(swsusp_arch_suspend)
 	ret
 SYM_FUNC_END(swsusp_arch_suspend)
 
-SYM_CODE_START(restore_image)
+SYM_FUNC_START(restore_image)
 	/* prepare to jump to the image kernel */
 	movq	restore_jump_address(%rip), %r8
 	movq	restore_cr3(%rip), %r9
@@ -114,10 +114,10 @@ SYM_CODE_START(restore_image)
 	/* jump to relocated restore code */
 	movq	relocated_restore_code(%rip), %rcx
 	JMP_NOSPEC rcx
-SYM_CODE_END(restore_image)
+SYM_FUNC_END(restore_image)
 
 	/* code below has been relocated to a safe page */
-SYM_CODE_START(core_restore_code)
+SYM_FUNC_START(core_restore_code)
 	/* switch to temporary page tables */
 	movq	%rax, %cr3
 	/* flush TLB */
@@ -145,4 +145,4 @@ SYM_CODE_START(core_restore_code)
 .Ldone:
 	/* jump to the restore_registers address from the image header */
 	JMP_NOSPEC r8
-SYM_CODE_END(core_restore_code)
+SYM_FUNC_END(core_restore_code)
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0df4a9767074ec0f493fefdd4a2e57b4c9c53d00.1610652862.git.jpoimboe%40redhat.com.
