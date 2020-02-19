Return-Path: <clang-built-linux+bncBC2ORX645YPRBE7ZWHZAKGQEX6377LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F679163814
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 01:08:53 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id 71sf14084505pgg.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 16:08:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582070932; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z+zBCjWIcGj87YkUbtohhm96vsZ/lEZ70u/czj0zAKTiMjWZv1Ik9Q58wqzYXF8clM
         Jv+ABFhmnXfx/uHv+PLomDndxx1gcfJTiDlM5pJm4vxcfsD/1prLTUSTbWVb353W7ck3
         2lje+ehwmAAHKNE9taPIqgP+Zpe+Qz9WfrmuvFicNjXdWEGWJcvChhomkS2eFFA82vig
         minsJy6Lh5bNRZ46XBBJruKHPRMq+YnO7E1+j2WmJFWRS+9Mju9SOn9zhKs3Y24d0iMd
         JYaDxNmcU+ynKVpTqq95PdW6kS/4b7gKQ50UARIiqXOck5WEWAVAuxS2U0WVRcF9y6Y/
         EW4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=fc0jogLL6l8zEsKFrQsT5qhhaQ3PzEoR9Gw2ysxZlQY=;
        b=dBT+z544aj20DXkbexCou3V9VMqzS3gWH+bEr0voSm0Zp0Th/7UDYW721szQjWactH
         4WATsI/aCMWF0N68Y9bXcbtOIRl7DBGd6OW1bRRE1jaXCUjlhK2DO/h9paxSLh+ph4kV
         qoJroOTtvX2ECNn4A3FUmUzbMYZQDUjrl4Bdq9crzFdh97/Ilf7yX7HkdOychIouxtao
         MpLr6vc8GCBufG1Lr7wq0dPcKXokzbYqkZEEuGZYBhWPDCj7LQnY0BwUDQ/Irt5EPQ+h
         qRHwLttlU2ULR4KN19NnUpnLX2A0rP2yWBMVEFjMBDcg6xRyr73Yk54bWG9njoBplMue
         krqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qufzpGjE;
       spf=pass (google.com: domain of 3knxmxgwkalunvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3knxMXgwKALUnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fc0jogLL6l8zEsKFrQsT5qhhaQ3PzEoR9Gw2ysxZlQY=;
        b=bAv8MH0HH/TTbzKgbTNQMvxo0vTsQ1yDoU7bdoA77XFZB+Nn5VYp7vGioidDwJvU3p
         MtrKkJSh0AiODgpZaK4klpTan6nrigjlDYE3rNUVQ+QHC47mS6rRAffQsFMbls7ra4mq
         ZWYFqXN9ETIjx2jpnjB+5eleRfnCe8N1Hfk/g2hUPmTpJQiahUT8IeMgKvDgQ6VBYwhx
         qsO3+QCpugLpSAexqM/fp6qc65vxc3A6VJTKdVk29gvrPG1GWXhOWHC6bYsHacLkvcvZ
         8WHzab6zNDZaOBT7hII9U0sN30YaQOduZhBKEq8Jo36c0aFc0uYNm8kX2/mvRvt6OTd9
         JrRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fc0jogLL6l8zEsKFrQsT5qhhaQ3PzEoR9Gw2ysxZlQY=;
        b=NuxhJRT0haNBNakGX1kz/xNaiRaTDjL/PPpBwl9gYe9D4nv8EuKEQHDBNkh1CvFUWv
         X+3CuSTmpkR8y1SNtVxiG1qb7FeNpVM3Ee5cCaRA1YR5zMR8Xvn3ZH+bPmCGkqprKBFh
         ywkOfahKVkOuB84wgiVn4O8Lhhw41e6BjcO4WlbzQKjVK8TU/PueaAkXcPGbAaEhh70r
         92JHIpdBrcqM3bTfc+iTHg2Y23mzbFoeZcwAcj4YegcjXx4k67fZvCMmWMPRoC8OMen9
         07eQBOtdNcnCmXS5mBVHgIlDkQh1TjilmdQC7XEyl87RjMWIYnCqiGmU3f2NqLV8deBV
         8udA==
X-Gm-Message-State: APjAAAVZc+3CTXLr7k6iN6KfpjhJ6SMKHKCZnn8l4+qjq7aT6n/IswWy
	aTtFVxuF9yOOQJJvsr9YYGI=
X-Google-Smtp-Source: APXvYqwgmhrcp6vfCFZ6r/Idi3/aT/3myBwNMz5kSQD3QG+u9KXHHCguHCXNQMBOctWhlETosHcqsw==
X-Received: by 2002:a62:7c49:: with SMTP id x70mr22951440pfc.200.1582070931797;
        Tue, 18 Feb 2020 16:08:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9f95:: with SMTP id g21ls6574747plq.5.gmail; Tue, 18
 Feb 2020 16:08:51 -0800 (PST)
X-Received: by 2002:a17:90a:cf11:: with SMTP id h17mr5830055pju.103.1582070931305;
        Tue, 18 Feb 2020 16:08:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582070931; cv=none;
        d=google.com; s=arc-20160816;
        b=GPI2s9IgOlLRQUKob5Cnjp5/1G/ibj8AWY/VFTVAxlMD+ocTU7QTlTRQJGoxiVqB+r
         fm4a/wk7XA5OxjqaXSAY2ct2ZYGNleFURltuIS004j0VBM/oYsnPmbZO5srbMQ3KzMU8
         XaPO1zyo2kqgJ1nvPFCclc/Fx4YDESP+aD8kzunXKgLccOWIcJifhtoL2oPOGnHmYd5x
         FA5gn9Qm9aityZFClowfK5+1RNGzqrxX3uOeZkI9ksfMEe3rfHNayFXrNs/iV5G+WBjW
         NFbdrlYGiPNTwlTXvpeAkTdtwbJrxfbrlo3X7AMSfMb4Qd1CF0kX4zLY0pXOURJhefOk
         yb/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=QniVckAJWtqLmmFgAWqtQvDUqGmhiEDDkK5Atd0uI+w=;
        b=ZKTYybbaKBeJJz+gICMwdwB9jbBqF4qXy0hyh6+7wYxXnsSEQKOamcTnJMOu0/bKzE
         go1NRCuwAJmUiOhm93CVtb8BwKvzZ7VBG2io568oa8RTjK8J/LKnx1mJxFGWCht/wVci
         aLLpfugC6VsXTWTwNalXHRH6WIWOdGK6K+0xFrJV7gjkjtUWEMF/G+7d6r3tb3g7oIt6
         D96yrm9nmCj6/X0c319Apep8U2Hy5sEsqU3gnGxFzCqAHZCBdZTguk5L4QlGFytYxSIz
         lgxx2iKOdOvSZuDviML4TmZ9g0o12A889vPtxcfWhpl2OKHEE2gwjljKHb3bojhcTZE0
         HK1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qufzpGjE;
       spf=pass (google.com: domain of 3knxmxgwkalunvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3knxMXgwKALUnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id f31si102483pje.2.2020.02.18.16.08.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 16:08:51 -0800 (PST)
Received-SPF: pass (google.com: domain of 3knxmxgwkalunvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id bd7so11067487plb.0
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 16:08:51 -0800 (PST)
X-Received: by 2002:a63:bc02:: with SMTP id q2mr24517139pge.174.1582070930907;
 Tue, 18 Feb 2020 16:08:50 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:12 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 07/12] arm64: efi: restore x18 if it was corrupted
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qufzpGjE;       spf=pass
 (google.com: domain of 3knxmxgwkalunvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3knxMXgwKALUnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
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
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219000817.195049-8-samitolvanen%40google.com.
