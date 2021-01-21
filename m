Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBAPFU6AAMGQEZMADP3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id D46BC2FF74F
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:42 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id i9sf1388851oih.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264641; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pf6DknNLvfN8gV/r+jskxl8KBTuT+V0c/AZecVNqQYWDEKFg/V6EqEjN+VC5RfMO/X
         GQBsr6wghVtDmpM+MW2CKQlhF3a+ds2Qw83TNSS+NUl6MKYHH8A5FnN+YNG0AWD9UuFC
         XVGkCpOqBCTY2WwFqSAJfsINdKAfuh1Xudl1n0wZnzRM+MGZ/9VbbmbbHQ4d0FxaUy0R
         NR7vDjWHVj4cTQkD/81oJy2BG02jkQ6CDabqjaI0MoENjtW3Bn9MHRuA3BXy1hGZFHUj
         iNKfrmlRjHK9dc0xoPi1F6U7LqpYv3XFXYcZU8YZf9j7WlN9Ry2pEWpkezmHh9YMBrnT
         H5tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1h7LwGdo5SyNfWkrJCVwi+JP5TPI8h26w3CBALCjKWo=;
        b=bOaSehfMyabk8iSuuya20ulE1YcyMo9yTkQwAWQQmUI0B5yA8QFDHaUF7HMmhqKtOg
         5lfNTtdRprjFg8txpNOHL39Ps2aNqkS9T0aAsaxkn6SOD4whDFCOCNASVHVgG3XUHxmS
         FTvtH9KekpphfsCGTBvMGzvNEXAlAkBncr3EuZO7LV4OHVdejqD9RxsjzxRgmIfbeWG4
         cq2dyCG0rLR8itGHi7MEtRVHcAVv3nkZfqiVZW69/2m9/uRoDuu9GyXOY7fpha3OvkK1
         6inZjoLkbTefOQ7IyU3Fi12NWSgpowuJ7Hv0sabOi791E57rHILkJkPawO9pw3SsCnMt
         Ia9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cyZAATdM;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1h7LwGdo5SyNfWkrJCVwi+JP5TPI8h26w3CBALCjKWo=;
        b=Sy0xfLMr/OkHikwR/rkC3CmTWSVcw3ImI8h86g6xTW6qK5Wvne1ipk808oM+PcTXjb
         PCVCpj8kcNLVnVUSV0W0O3c3i6L4Yj8xGH2Sglr+Jyexh807BdUof3pw9NlwTTkjfGIU
         wjxEA2i3GYiNaMv+PHroo5zpzx70HPoBHMuOK7V2zTk/wqRt0xh7N2WuhNiTxTI0naFp
         tJudUPtZlLtcXnHSXAwL6nPrD7rpWzD6k+WrFDRYneBJOYy2E9gzhLFf0v9T/j6nf8Vu
         JbOOz3GcH+AfN9jYv5zgXkfW4ADUAIFVs1wIhxpFTh15bH/upVf0P9m1pmo6TfC92nbp
         Y+fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1h7LwGdo5SyNfWkrJCVwi+JP5TPI8h26w3CBALCjKWo=;
        b=p95zo4+pl2l0XEj+UrjVGPCV5z9joINmZegRccwcVNLdilGMRaaYr1UO4Wq3WVJF4f
         mREfRkZGQp2rRIdnaM8qqexziU5Z4q5gwRPzUhGJO4TJ7GYuPOe/PyX63jwoABJHnpGz
         sUZvxIqur3SEzOv1XtNUura3RPt7+g+N9Cvq2LoS8xLU7pw5BY7U8xeJpEo1Q+f92Vcm
         PaL61NswFB19NUEvPXNynL4/Sdwx5H5GClvV6xGRAeF90UZch6oco0V6uAUcw3S1nTH6
         KQeBQCPGqSvZfU3hT/si4KFP/Dpr4eSDiPqIA6DDUIhDYJcLCTmzI8+R/MapNZOVOrc/
         pTXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eSn1e3wl9k0BSumYAK8DzylTXA6qh5ooWGHckJc6w8+rCt02u
	/T0FRbyFQyyQn1+WxM4JzI4=
X-Google-Smtp-Source: ABdhPJzZJfIY4lcf1TT9kz7hg3f0QoX5bA3+xUZjaSag8Cw6ae+avRxBaT6sGm12W0pY1fX8Q10Zpg==
X-Received: by 2002:aca:5857:: with SMTP id m84mr1110904oib.29.1611264641867;
        Thu, 21 Jan 2021 13:30:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1592:: with SMTP id i18ls270550otr.10.gmail; Thu,
 21 Jan 2021 13:30:41 -0800 (PST)
X-Received: by 2002:a9d:741a:: with SMTP id n26mr899566otk.210.1611264641470;
        Thu, 21 Jan 2021 13:30:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264641; cv=none;
        d=google.com; s=arc-20160816;
        b=gjbZ71WcThrFvWhIeXwfy6mhyrOORTGCzLT8k4ymwBtL1KN15JCCsl7BcUl5RNCDPN
         jp1BE6w3YKdFnrSfK+xVD4kXCouXWlrWTy87XJSdXpziwuzDFClnR63yMvQfSZWN3ik5
         c+835vZV7QFOUEWhn/WbnwUAkbR00MMX2YJjuxj4kRAdPmmEjSwGFVvIPBdbJWL21Hkf
         nHz8KTbP4Y035ES+9eptSM4UwjXdUoOXbDbhj0SJ2M8iD29s7crz3FmwrXGQQS6+HQjr
         WrmQpaATPiQ0veRuPlCv6Wrl4LVuyH3qD9ZGnf6n3VT6oTpB1Hra7WdkXHr6AcauSkmK
         HBiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gE9aSsrj68xqixz3d6S3bEZJpxp03hmnQvGoyng1Aj4=;
        b=bq+LoIsJSrNOmNvJRjvP2CAK/TCMMXx14E+IpACAIZN7Mt2PDqkppE1NHCjs/ruGN5
         YjcBzRRMM1xfgCbGk86kXdhMK5eT0jusWwy9Q19Wy+SOT4eCbmSEOLFMs4zdwGrWOTWS
         6ml98ASCotPzDfZpv774zxvz3r8oy2mLSiIzdrRDI3sURwPIoRK+WI2cn5nk7kPAgipY
         EMxgd7UPT9hDg3c6NvGjQDlJ1OJuxlGLWjQBf0gIuaWqEQbZDeV2vOU1eSR/lOiBIPKT
         vnT91UjX/BFOaHV52PQOP+WOzBtQ+J2YPFwpaafLNBg1h7lHH4IlY6rfrcmSDcufsU0z
         Bw8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cyZAATdM;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b124si455018oii.4.2021.01.21.13.30.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:41 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-437-RrxIqSIiOsaPpBMlvy-Izg-1; Thu, 21 Jan 2021 16:30:36 -0500
X-MC-Unique: RrxIqSIiOsaPpBMlvy-Izg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4A3B15725;
	Thu, 21 Jan 2021 21:30:34 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C8D7D1992D;
	Thu, 21 Jan 2021 21:30:33 +0000 (UTC)
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
Subject: [PATCH v2 20/20] x86/power: Support objtool validation in hibernate_asm_64.S
Date: Thu, 21 Jan 2021 15:29:36 -0600
Message-Id: <974f8ceb5385e470f72e93974c70ab5c894bb0dc.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=cyZAATdM;
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
index 91c4602d2b5d..d9bed596d849 100644
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
@@ -115,10 +115,10 @@ SYM_CODE_START(restore_image)
 	movq	relocated_restore_code(%rip), %rcx
 	ANNOTATE_RETPOLINE_SAFE
 	jmpq	*%rcx
-SYM_CODE_END(restore_image)
+SYM_FUNC_END(restore_image)
 
 	/* code below has been relocated to a safe page */
-SYM_CODE_START(core_restore_code)
+SYM_FUNC_START(core_restore_code)
 	/* switch to temporary page tables */
 	movq	%rax, %cr3
 	/* flush TLB */
@@ -147,4 +147,4 @@ SYM_CODE_START(core_restore_code)
 	/* jump to the restore_registers address from the image header */
 	ANNOTATE_RETPOLINE_SAFE
 	jmpq	*%r8
-SYM_CODE_END(core_restore_code)
+SYM_FUNC_END(core_restore_code)
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/974f8ceb5385e470f72e93974c70ab5c894bb0dc.1611263462.git.jpoimboe%40redhat.com.
