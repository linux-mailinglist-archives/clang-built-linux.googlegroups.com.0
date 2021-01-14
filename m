Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB754QKAAMGQEQVTEV3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7235F2F6B53
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:52 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id f15sf2848974oig.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653311; cv=pass;
        d=google.com; s=arc-20160816;
        b=drc4F7+X6DnFfjx56yQTfiFcyz98dgVXyx71llSryHWrdyvA3xKu2ZjKd3obIiyhpC
         7u51n3bBrGMSQmSkIIGERYVAjXvdZeuNHK0CUoEDO6IjNAi2i1qkunwtWwD+t94Fst0i
         uKYJZlmEoY/mXY/dX+K5IsPU7SBuhhH0+eAD0MtWQ6Hoz9Ygr5kjFNn7Ivh+lFVw0E3n
         LKdxClrh9I76hcPYFJ92uNxxLMF4tyNFWyoCYTcRxLPlnE2j/MqNuDihJEFaG0U5bI+o
         VZJk3E1lJ4oatQHODi9QKQfQnVDZaeOBeb4kkf0mFBU5B16PTUp7J5lxfD6H/1z2auQE
         ZOrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xwODHoAze66VZ7zun+/F7q7edZO5SGtW265Sf0Op2DQ=;
        b=oRKeuP8OiJFoj0nVd+QZ04i97wNgmlbOzhlC7wBYMxnWiLEnaSdm8yt0/rNsxz5pTL
         0Hn5Di4Ekst+4X14I1YzRGXH1Z0PLuy9wPLsB364hyjslwYVRGNa403udSAJoG0oCvlP
         jn7L6UiaBmWJlaH2JYoRKJOleLRHocEF7dpCE4ep00MuThUOe2LVeKzYGj3YvVKkUvZE
         NvqLLwedq2EbQvwVJ2HNxxnYYrY2I7xgEgb73LMD4zVcNBD5ecAnwI0VWmpYMEBw1nI+
         8qxJqyxEhkhWUXRWCXsM9/N69AggnARAhLP7wpEBFegGQiQAV9cO0tcoQAACZbfmBdNK
         zXtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WzPHM7q7;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xwODHoAze66VZ7zun+/F7q7edZO5SGtW265Sf0Op2DQ=;
        b=lr9eF8VW09B3Vf0yBfAG+LzJCSg3ip36Iq9zgz/LS1HqKU4DsuFLUhtJNA0eZNV1wx
         kB/H6b4yaSpOmk96G9s9QkWbo3Fl2A0lBUhS0kcdJdAiYdeQrI7zvda/1tZF6P0zwmUr
         CErYYbl0QvCLfKows8TTKTtEXdGOoIuzuUZ/TlGDz8KWTUjwl0WTze3bE2d6pL+O8WV8
         +Vw5f8L/Qu8YcwLn4WunbdT+P376zXTmrTg6ptbyJ0tkfLQ7T0ZBuRVNnGGW5LGLwa4S
         TPlTRI5GCK/psvolT5ehD22g9dyOHivCF7LD5m1+/tVvUOS4bZv9OR9qG8/HnaOLRE3m
         DRRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xwODHoAze66VZ7zun+/F7q7edZO5SGtW265Sf0Op2DQ=;
        b=WaHXYShIcBWCgbA1EkQjCAlrcTCBItweOi9r+mI8zq16mT9/13BlJO0qnsS/fOV42t
         kkbXDM06rDdYD+DzFqFIAZ1P18EMSvK0FHsMWjKfHKJSkrFSKjmZ1wkR9HKk+4WOGT2y
         9CuqfBmu1sR7sz4F1LO0r35GACscBZR2zeICKFkhTEveI7WqfSSgZI1CL2OSMnwwfYVk
         AmCUMJUNBdA2N+xgW259AJcEQ/gmnaUvAv60fiWyc1NBpWkw5nPPBQIIasT1N5O/Esd1
         Hv5+CDn53g9jH0ssHsAoShB+bt5l7XhFwzFCb2+sPzH3cMuWZ+ukuzs5hTl9ggvV8zR0
         a/Wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533P9QyJX9YuWEZl5ueIxqUebmQy+ho0lPJZxX6J4kvJxAOeZIj8
	T75f4DgGT2a6YUU+iyqkyZE=
X-Google-Smtp-Source: ABdhPJxGshEF4HnAWrYh4t/rfbuhMJgKAOiEcohdY3XKz9ss5i4SO2iiDqw/66HAQpRpcV0i4Va67Q==
X-Received: by 2002:a05:6830:1105:: with SMTP id w5mr5795216otq.255.1610653311421;
        Thu, 14 Jan 2021 11:41:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7a8e:: with SMTP id l14ls1647465otn.1.gmail; Thu, 14 Jan
 2021 11:41:51 -0800 (PST)
X-Received: by 2002:a9d:664f:: with SMTP id q15mr5369288otm.40.1610653311062;
        Thu, 14 Jan 2021 11:41:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653311; cv=none;
        d=google.com; s=arc-20160816;
        b=s4RIVB6HcAu1zbMHHP0ZuhGFRqMh7k/9amb4XVKpSs0fwOp3Iv5pbyj5kJlDTrLH1+
         E3fK+MMDZxXQNAlJhgrsKgDQSp2U/TJP9qHLAxGfE6VNPFM08U9hOZyv5OaD4TR0hcZ/
         CLM3JmBK+S+3bqvm7QN2EbkDTwP4LVMzxppPcoIGtp4uz7vWUo90iu6SLzYVkbKMNZ9B
         eRR9WODw+M66fthSpVBzvOl7XsygnmziFwlk3mCy6QWs02EVdKKjcRuOuWttofBk9iPZ
         yrLLk+UTVPoZkpwrKktTE7LfC6c0lZfDfMietSMnuxQkfM+n/q64pFrXPi/PM+nI7n5V
         knkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XuaSh1jiZTg/VIGM2iLx4bVb5sX8DSpIZVRiX7a3MCE=;
        b=ANB7nRuXuHvWUyxWIZon+2Q6yKpK6MDgPrIZ6x20eyr1lCquiTGmAtaqJsOISBtIWK
         tHVDY5zaQIKED8/M0ADCk3bPdDOz5Xoj/ICXf3TUIoJur4TxjkrA5UjTf11yPZmssrQ0
         ZXEI5Y+fV+WcyQjiHjy5UJZsyrdTH+hm82TAg/1egBGw4r2AIFJP3NQRREHsyZu7MoZX
         mSeQh5dDnIOKBWEwXKnXXXAGPkrEpnz4po8mOEzZ9dPyMqCRQy6QrXaV8rYX0WceOv2q
         ZOdVQ8tvVCT7YVRlOmrOwaaCEIPpeahsyi53nPGQDHlVgVnxFRDOBMJm74Pw+ExYC0i0
         QiEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WzPHM7q7;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r8si462128otp.4.2021.01.14.11.41.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-591-9yU8OmYrMLGLW2FQ2KQlBQ-1; Thu, 14 Jan 2021 14:41:48 -0500
X-MC-Unique: 9yU8OmYrMLGLW2FQ2KQlBQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9191D190B2A0;
	Thu, 14 Jan 2021 19:41:46 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3097010023B4;
	Thu, 14 Jan 2021 19:41:44 +0000 (UTC)
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
Subject: [PATCH 19/21] x86/power: Convert indirect jumps to retpolines
Date: Thu, 14 Jan 2021 13:40:15 -0600
Message-Id: <354da72ff95aed0cea40b410f6db882bfb0877d5.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=WzPHM7q7;
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

It's kernel policy to not have (unannotated) indirect jumps because of
Spectre v2.  These are probably harmless, but better safe than sorry.
Convert them to retpolines.

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/power/hibernate_asm_64.S | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/x86/power/hibernate_asm_64.S b/arch/x86/power/hibernate_asm_64.S
index 7918b8415f13..24d971911c9d 100644
--- a/arch/x86/power/hibernate_asm_64.S
+++ b/arch/x86/power/hibernate_asm_64.S
@@ -21,6 +21,7 @@
 #include <asm/asm-offsets.h>
 #include <asm/processor-flags.h>
 #include <asm/frame.h>
+#include <asm/nospec-branch.h>
 
 SYM_FUNC_START(swsusp_arch_suspend)
 	movq	$saved_context, %rax
@@ -66,7 +67,7 @@ SYM_CODE_START(restore_image)
 
 	/* jump to relocated restore code */
 	movq	relocated_restore_code(%rip), %rcx
-	jmpq	*%rcx
+	JMP_NOSPEC rcx
 SYM_CODE_END(restore_image)
 
 	/* code below has been relocated to a safe page */
@@ -97,7 +98,7 @@ SYM_CODE_START(core_restore_code)
 
 .Ldone:
 	/* jump to the restore_registers address from the image header */
-	jmpq	*%r8
+	JMP_NOSPEC r8
 SYM_CODE_END(core_restore_code)
 
 	 /* code below belongs to the image kernel */
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/354da72ff95aed0cea40b410f6db882bfb0877d5.1610652862.git.jpoimboe%40redhat.com.
