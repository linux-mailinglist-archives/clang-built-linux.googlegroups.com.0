Return-Path: <clang-built-linux+bncBC2ORX645YPRBE4I4L2AKGQELTP2XIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 283B01ACCF7
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 18:13:09 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id x8sf3642317qkf.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:13:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587053588; cv=pass;
        d=google.com; s=arc-20160816;
        b=cJJRHh5Lvg6P/U/zabDSr/CnpPT1f6qUkaacos3zrOXp8iGoVtm9Sn+WGAOpb5hEoE
         5p6FtsWNzXofWNaNUJ2TZts40OZ1ARhi3CDiV30+2as0NQDiGtO+UaeaigvRteBnuUpq
         Rbddrr0RmPYpIAreElv2DUPiYLytcBiNETx2xxK2BFLxHEzg2N5q8kNpxcH6Dsoxcu3q
         +mMLu0q3jZz/TRBzsbPngPcycchBta9Rq0KhDjEvmikKeemnywFmaMDMgOBC/LxrYatL
         AE2heuaq6AzDUtEO+t3ZlrCeQiTFWU0VN1C3v0U2WnWCIHcV3407Jt7qjXvR1ecOZ+ew
         9LSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/VCM7vUuzoM4nBXBQkKafMXeeYl3+oGmbH+lFnf7b0s=;
        b=We8Y/5DW6iaJ6Z/1UnnmuHZpgXi01H3Ut2dJ1tDOWN25a+TvaZG40UiTSIttGwWpUn
         gsw1R3nEJWGujcLjuhV7mddDLQhk9tztnlG1slLaOzhLPxCCWWXZXW7fEm4RCgcmd4UR
         MyGayPmAZxeHJgdUFte7q8hl3VC8hDZQxWFfrMEw+F0NUmyhNrrqfZkR2SJW+TV9zuqS
         lDrhJzjMWvEXUe6oXjzQAZvgJ2qKpCW3MZg/foXaRKP6gBr+p50oVgrux+NB8J/OpFk2
         Yvk5t21ozof5oXRZAYGbkdoN56bHQ3yCQ3vn8tVW3YYIzx+zZGl20PgTFzIDg4Ughi4A
         NH5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PfLQtJvA;
       spf=pass (google.com: domain of 3eosyxgwkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3EoSYXgwKAHcnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/VCM7vUuzoM4nBXBQkKafMXeeYl3+oGmbH+lFnf7b0s=;
        b=FWFGtcY3DftE7DxxQA65VltfNDNF4PIQsNmHWYQkM7JLwMygqTEj91qv69Elm2dkKC
         KMCG0LcBkzB6yG84jHxWkNeTxjr0Q224gQAIBEClfoUgiacsKIxdt9Dr3XPhOuJnb645
         jX+tc+EhiI8RztIP1X0yVhxQVZHFM4cLeORYFt1iey8WIB/rl7+K/oGUPXOtFudPxK2u
         whDxsvWlPkG3haXjjWBNlwa7HoDbPprJKhOFsvQ1uYzEPC7lE1IcE1Wv0azNWfAQFcx7
         O1ufFUgO+gOzC1XRLaZoQuZBl1EQaesEQLvReU7vjqkbtTigGCp/9e+gF5WO+SeKJRc4
         rUCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/VCM7vUuzoM4nBXBQkKafMXeeYl3+oGmbH+lFnf7b0s=;
        b=uoY8ULiprtgbS2/FCKPb8jXymY9f7pbyXdn2EGNJHA/pFZBC3Ai+zh0P7X8DQuSOZw
         MMOZBlyg/WRsR83V7SY0DoPhdVV7z9ufn6WeDT/DlOgat9nNk0aikvKUTqzxsCOub/me
         wSJHL9CwzHmGHhpXv1Knvlpziur5n4W5Kp27FdG4zRBYPyjjb8T24aU3UaJjDyH7Nn40
         6RcK9K14jxTLz/o8BTOcTkdXR0ge5MmvrDPUKwyZQHlzYznk8TOEaQjQNGE0Pu8q3jJF
         4y65zJOXZCQABDU6koKWH4f9+BTs7YqTEqSurEfULN5li9t366+B3dQQcZ5odP5ndMuv
         +7TA==
X-Gm-Message-State: AGi0PuaBa0Epgyf947QeACH7oofXkSjdpFuIizsYX/I/QfaJeJTbKCvX
	x07ynXmQ804eLFib5H01xvQ=
X-Google-Smtp-Source: APiQypJksUGS5cIyfBWXTbMqqham0+sPag88/YdLPV68/7RnI2V20sWWYfW1hBSHwD22DcLg6Q4eMA==
X-Received: by 2002:a37:e40e:: with SMTP id y14mr31742472qkf.426.1587053587882;
        Thu, 16 Apr 2020 09:13:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:122a:: with SMTP id p10ls735527qvv.2.gmail; Thu, 16
 Apr 2020 09:13:07 -0700 (PDT)
X-Received: by 2002:ad4:5a04:: with SMTP id ei4mr6114396qvb.186.1587053587512;
        Thu, 16 Apr 2020 09:13:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587053587; cv=none;
        d=google.com; s=arc-20160816;
        b=Bta6BQBSd+pxmlGEQQ8RC6QKH73STi4UWIX45ZVjy8RiuOTqmV1yuXaKxAUZL7OOeX
         DOUuvST9kytWUyKMW5TtypSWMHJjhp58y2O+FCTCKKCfIDQfHszw9KOQ277YYRRG4kMf
         +t8H5EqiVEcu/6+XdMjiMnD12OrdGHoUZxEvjmH0FVQ8UJM4Ec9gbXnSBJk35uU60PVs
         T4MsP3rsgqiNnSHWSuOiCSWnx8EouglhsHlxf5Umy9mvqwgzfhRkuYbq5V8KxCUnJY/u
         h6XW/Cyvhq2tL7FfrCH6tRR6hIRH4nkK25YWNxQtt+/Bu+xaLHpFnJiojBnpX2+ogcgS
         4c8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ir6AMcU/LNJfVmH7TAbfuSTmLjnaQbzCZFrLbu9sicg=;
        b=GCdn2v9qkiQr7X87UYKlLosq48ihUegQvGlHYo7kDcIN6yUW45GSTa7wBZsj6xGOt9
         VNRsxHiatw3JsP1e2wwzrlcHFRIk+xsBHP78l9m7q++k5IGqKf+XGBVCc2IM0hsP0a4m
         yCb9wWDiInzbJjOeRXC+M/ERnyZnO6PCX3XHeuDYDDgyhqzfsTZfJXEUc/NrWDUiub3/
         wESPPZH517w5+NXGG6V1c14WA/szl9bzH1XPpRoON0SpJYRQwnS2Lzqksi5lQsLHXPg2
         VTHxapv8baHwHPgZff0ulIxlC6QD/aLFdR99xxb9CVjYmJ66dwcj/5AW4OAaEjEkJ+5M
         akHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PfLQtJvA;
       spf=pass (google.com: domain of 3eosyxgwkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3EoSYXgwKAHcnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id a3si696986qkb.3.2020.04.16.09.13.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 09:13:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3eosyxgwkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id 20so3443922pfw.10
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 09:13:07 -0700 (PDT)
X-Received: by 2002:a17:90a:cc10:: with SMTP id b16mr5944791pju.29.1587053586616;
 Thu, 16 Apr 2020 09:13:06 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:40 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 07/12] arm64: efi: restore x18 if it was corrupted
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PfLQtJvA;       spf=pass
 (google.com: domain of 3eosyxgwkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3EoSYXgwKAHcnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
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

If we detect a corrupted x18, restore the register before jumping back
to potentially SCS instrumented code. This is safe, because the wrapper
is called with preemption disabled and a separate shadow stack is used
for interrupt handling.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/efi-rt-wrapper.S | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..6ca6c0dc11a1 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,14 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+	/*
+	 * With CONFIG_SHADOW_CALL_STACK, the kernel uses x18 to store a
+	 * shadow stack pointer, which we need to restore before returning to
+	 * potentially instrumented code. This is safe because the wrapper is
+	 * called with preemption disabled and a separate shadow stack is used
+	 * for interrupts.
+	 */
+	mov	x18, x2
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416161245.148813-8-samitolvanen%40google.com.
