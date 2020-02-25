Return-Path: <clang-built-linux+bncBC2ORX645YPRB55X2XZAKGQEAX27DII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D71716ECB4
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 18:40:09 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id m127sf6396286oig.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 09:40:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582652407; cv=pass;
        d=google.com; s=arc-20160816;
        b=yofF3xB7Fjs86X8JJBq3R97NGbkLZ7XRDeeMWKXMk11/9/S4/Ql+5+fcdMkG5WYs7d
         hT7emEP3c3P9EQDj/7/Hnuw1q70NKjpkvLD2k3I33NdPlCfTX6PU38DezlNEsa0ksHsh
         agFics2yr4mgZY/hKJ/hbV0YHmtwyl7ZKgEv3TzfZ8VBrdqc34RJ5+EHKZQuFLzQ4A6x
         ypaZf9KleBp/VGcx/zYwXHZRoDfyxO/7AC1ZNNbX1NNb0TbjWUrLOWDTB3U8jD2QaKIw
         P6pz0zPasGINena6mVyk8c8CRH2x19ymx8W5c1nRdossU5EhdrwbTcrzUbTTnK9Gldxw
         d1ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=1MGViQYa+LhAN/ComxRDi+MdEjEPz47/FD8JlecV/74=;
        b=0HuzP7gliJLDs6UnPE6uVWbHJlmeQTi5de27jLx6H8RxzaP8vGmH1RsX+s4XTwR8za
         I6Jp/WV6h8QlgB2PyWFz5z//DT78H3qVVPXiZHjpfw71maefpoSCjW/tQo2/ie46m7e2
         t1CH+YMuPlrMC+gG16B32WOHtj4Q6p3Kmre8czNWHH94XCeVOhdWU657V8nFcMYLRy+v
         4PFsGS88H47LubY/t3Sv8c3ih0ar1FEtmEx9o5LjpPpGpC7MxYylpxO7KmTyAjp6RUYa
         QuckaIN1lUKOkQuheUUqzEcN7W+ZZwA3hDqoibvxwozXvDnN1fjTVENnsOg3/Sn/H409
         pf2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B7ASfSbr;
       spf=pass (google.com: domain of 39ltvxgwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=39ltVXgwKAPsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1MGViQYa+LhAN/ComxRDi+MdEjEPz47/FD8JlecV/74=;
        b=Gs94myExY3yqXVryVZ9RCtRoXgHsY5i817yAJuSE8BZ8eaSsY+bv96mwZpYiz2pxyG
         94VSP/zzgujxT2JVV4sNP0sOVAJzjamGgysvdXtRfBsmJ4oohjeiXPpPuQX8HoOsd5kv
         T2WxfDbFExySDNpg6lV3QylUfMUQ6VAB4raV94G85vaanU2AqOacb6dMbeeIPEColGZx
         imUukMGaQIlHkpmnBpNXO0EhiFPuPaSZrisMhGThqjdEoYqmh+IGZyXEGY5Fk75/hDcs
         tUdj8WY0z/2cw5Fy1EbJ+s0zE1DXofGm0zstb23/fA6/YMAVPc7dLlL6TNfgFqq46cZV
         OH2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1MGViQYa+LhAN/ComxRDi+MdEjEPz47/FD8JlecV/74=;
        b=eDi0mITPxx/8AOIzQY7yjbNcKjn+dw5v8yyNjXPwKDmx2IRC0wa+K+onCb0T4L5uCu
         R25isC6OXhkWwLOVTE6PAyA5BZ/u4GdB1KrPvr1LMfKH2R41uIRQ3ZnpgbVibq1YhNjh
         yulKjNeGX8c6DRm6KsLaL4J12hLM+Gv6Qhxe/RBPlZizMg/lBBCj/BXl/9PCVQe4ZI8z
         YvGTlQwkSJg950ZgMwdrCgIak+tldvNQRTohd+yjpodWRif0lrV8xo9CV0/BG+uKWFvE
         EoeiZgjMH/IfitCkeu3RfWF3slgIiuyl3nIOrW/YrInkXnzUzQTGMivXMSGD9mJBq47a
         HKTQ==
X-Gm-Message-State: APjAAAXrYmGLbBvCISs67NLilgglGXr+qPecTpyxYyqMOLHrkmYZxvKz
	lu72vacyXVg5c/ylwc9z9fI=
X-Google-Smtp-Source: APXvYqxKjZ50qD8h6IKdSSU/w5R54DwoH+L6TVOEVV+9CybeVt8+z7PyPzZTYhxJSwjF6V3pBZGUhg==
X-Received: by 2002:a05:6830:138b:: with SMTP id d11mr43051418otq.38.1582652407753;
        Tue, 25 Feb 2020 09:40:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:3ae:: with SMTP id n14ls4096616oie.8.gmail; Tue, 25
 Feb 2020 09:40:07 -0800 (PST)
X-Received: by 2002:aca:2207:: with SMTP id b7mr57368oic.109.1582652407426;
        Tue, 25 Feb 2020 09:40:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582652407; cv=none;
        d=google.com; s=arc-20160816;
        b=QbbJUH58FqyML3W8bDNGQu09pNysNSYYrO8f15jzWijlZbqNIQk5xR+Hv1vQJAVUm1
         umBJt6XMEiez4RYs2IVyzbo9Gubj1xyeebJsLyWH8dHOD94nY7zMz7ZtbsbX5FxTjlwY
         eM+X26ZDKrrYbt8UOzY8if87E+8ctQ/aPB5DbyyO1VDJIh2kRPjsnMWbr5RxPurSZ8H2
         aSwJkg9dTYneotd10U1zPlXDDsHwUmYHGYW0k1PsYLilJoYdRTqRMTbf9zztt/SS/KL1
         d68DzUIoVeaud6RxeVGGVFRNmPexaaMicZjnr5opz4XwusZ9mJJaVgrcRKBLTp00cn22
         884w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=QniVckAJWtqLmmFgAWqtQvDUqGmhiEDDkK5Atd0uI+w=;
        b=Px5JDqSyJVm3KMXhp07736mtB1rM+xMebFsOBtK1bs51xNBy6e6MGT4WammqZtHcbC
         f0Mbl06LYCws5Nzyo9EZAmtL2ocHdkhna/tkHCm0hEaFKt8JDLouKbpbUB9LA9IqxoLO
         AeY5MtJq0UAF4lKMcWVPwrRAP4Lwo7DMcQw9Jd79OWIfXWJYFHFxZzM+f71YcL84qNlF
         9CIx1LeE65R/rDfRVbuCW6XjIKcSkRhoXu7/eC6Mp2459mLoGvqIt1CcrdqBtVVVjtRh
         7qMDqXxVgwSZoYDMRxE5RESZDPVTkEYvNfnKuR8K11wYvFlBjVIs9L4t7o4n5YGRlOOL
         58qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B7ASfSbr;
       spf=pass (google.com: domain of 39ltvxgwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=39ltVXgwKAPsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id a17si9305otr.1.2020.02.25.09.40.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 09:40:07 -0800 (PST)
Received-SPF: pass (google.com: domain of 39ltvxgwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id z19so9722978pfn.18
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:40:07 -0800 (PST)
X-Received: by 2002:a63:d244:: with SMTP id t4mr15492036pgi.241.1582652406574;
 Tue, 25 Feb 2020 09:40:06 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:28 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 07/12] arm64: efi: restore x18 if it was corrupted
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b=B7ASfSbr;       spf=pass
 (google.com: domain of 39ltvxgwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=39ltVXgwKAPsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225173933.74818-8-samitolvanen%40google.com.
