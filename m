Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRGXW36QKGQE5NNRQAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5F62B1085
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 22:40:21 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id v20sf4431370plo.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 13:40:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605217220; cv=pass;
        d=google.com; s=arc-20160816;
        b=nGrBd7v68ULxc+VoEe2GEHJdVtubEZNVcXqnTRVO9h5LlDSSOn7HMz8wIbo59Zh5IW
         N6/wBCrvmwJFd6J9GgxFnnCbctPgjAILKtVJSwGu+v/JOBNTYPZ8hYX7ltxnhw5/l+hO
         lCu1QpZgbiCCRYhJF9Tha7KPvMOOGvK5dXhjRcSYL1jH4pSj66eYbxGu60gs4ifrNMkI
         bt1xS5YLtPaBcSNpiq0sOQFDjvACmTsX2mPQl3fMIojrSFDk2yr/ycOja91Pm6x2z5/8
         sb8rWHLrKgKrw/y7Hdbcj6b2h7kTYn1MDVqgm6TkuyyVAgmcbMZi8w1n/dkCxFJJoQew
         d/+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6S5Bm8Xlg3sffdaSHhx/fwZh1+E/G9RPW1N9wk8frJU=;
        b=a3x/UzXETJCAyDcMnG6QIjbfrBmVKXclf7XnKzV8Etn6LwSeoajUxq//bglwrZ0/W6
         2YrlIyMV9Tx5jrAKcX1N0+iQc1txCQDZZntCRhkgiXzyQBzXHsO+6T/tywOJwm0s4xP5
         9+l8D0GLDJ5XfwgIBAaNY0U9TFW3XX5yNP3wkJIp1+K+QiNFFzbwhKSX1dHjs9qc0cQq
         vGA2AHdshxZnMj36ORVCDqLCKytZ0Pn8x24aVyS4tmtJQGS+8LVCDkE9BrbwdthL192K
         HubLARH3t6QeiUk4as5JMDRb0sNnl8lOyftxVn+vBenAHeKRY2gwzmRmrWPzdQvj4zKJ
         nptg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cOF2ey3p;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6S5Bm8Xlg3sffdaSHhx/fwZh1+E/G9RPW1N9wk8frJU=;
        b=BLD8/3WarVvI8+DBdvjARHwNEydkkoxjhQ69YsLRQfbjr3kKXXfu2xDCl5CGaHsen+
         wdCPVxzKLs8GxOz/sNYsLW3t9qLnJEj/9+BgMf5bcMZdF0CbkMu/L20gBdTGPzSWg7fv
         rcdFLPEDtQKE//wQFfShQTRmgbrUSgTNq2d/KJxcZFwKJpvy7BeKawVhzqDTsf6vqifh
         0uc4i2DwBn8dQdUYoa22moJhu5/7F8gRe86i5IiIIe2XDVOXQie2GqSKuZ4dTWDabVDD
         hYm+CHLxL2k8na8dBrf5n4kIKdPeWphhk+Fcnw1vI6cKETDqQeWenyF/aliDXymXBBWp
         We5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6S5Bm8Xlg3sffdaSHhx/fwZh1+E/G9RPW1N9wk8frJU=;
        b=pImPTv5sbuhOIyqLzpInLp9LuVHcKWdwJnCqbZzZ2BzHR8Ef139pKdfZFvZ6HL1+82
         uMsMCve4nGwXCM3PtL4cWziQVyKdY7uv+a+L+h790HduKeCYL5Q81imW+U02lf6Ej/7r
         EH0w065TWt8XENYzA2sQZvNDXwcw5Z7sc6ULI46MnIX6gS8Rd61be0wYB1vJzdqub+rP
         2vgQy1coM62oQNTTCCmaBftVAx1HgWGvtQRRlK+olkltLS1RcxbHSbUR9996j6qlbH1P
         bsqPwuKzT55Rfx86o69sNyzPaSAVz5pUTq6VyAIJYEM3HnAWY8vVD53OAuMLv7JSTnB8
         yVYw==
X-Gm-Message-State: AOAM531i1wRBD5gyjJaVW/YKGV0CyGPxPI/+AKtpBIDrARcfWfk30Cz7
	+u3kM8SQmRAQupboIc+B2r0=
X-Google-Smtp-Source: ABdhPJyUyfoUSPDpy9rZTLqSiQ+Y0YtFXWjJjoTVzzvcUCWpvHCf1ucfp3egfrRN6EYJ1lARcjY7iA==
X-Received: by 2002:a17:90a:4816:: with SMTP id a22mr1276407pjh.228.1605217220521;
        Thu, 12 Nov 2020 13:40:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:483:: with SMTP id 125ls1432711pfe.6.gmail; Thu, 12 Nov
 2020 13:40:20 -0800 (PST)
X-Received: by 2002:a63:ea0f:: with SMTP id c15mr1178945pgi.367.1605217219845;
        Thu, 12 Nov 2020 13:40:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605217219; cv=none;
        d=google.com; s=arc-20160816;
        b=efNzrmT3iTvVGxK/1xaxyLAiZX3WnrBJdzz/Vp7U3fu5oV/SPcSjDmkx8wqVbM5lbe
         R9zckIXgRqbcQibhTRiK7RWjcSQ8k+W2oLOTkYoj9OVVCDT0byaYzlOKJt7HocvSJVbD
         LPpge14m/1qQy9Lu92eI43MeS9GbgGVxBmzlARfwpEKt/68e8CohDDpbgP/3pN0U70uo
         rfbxl0KNOxQ9AQFLZW1qNSPGSuf0aRKRHfx644g/C5yN1nlTD/N7nZrVfzfsAVMuo6mE
         2ckzsMh4Meefud8eXmBZIq9FBRb56M0lbSfSXKRpe2jV+zMltntnYcHAKHIlpDb/DjLH
         oxUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GIyDKMHXNrYMltrg0Ujyp5HW7ajXeXqAEMraB5j3fgw=;
        b=iPN7vOULjfLVkH45yJjdIpp1+gkXCqr6yEIFQpjLBoGsmZYaqy1b/ZJGW4NkoNMzgq
         Prpm/4CBgLz5r2Hj2j7ePda3Ek5VUcT2EfvTE/GaisOQ0J7nqIghF14Sj4cn3X6YB2LX
         rNrmMKw3NJKGnZYVdIKn/eeibk/xiXt0XjWzmXWlzv9kIZeTo5VSaw5puu5ZgxjzFrrm
         8hLSEVPF1xFf7PPYlPEdsCqyB+2BsbU0hw6I5UnwQJLvR3nENpcdxFTnxoalzE+d0G7u
         yMcPmtDcYFLNpXQ1505l8mkOGJUAVO8H1qOzp/70BAXiuGWFXUIaeyAVePvKhoFmpc9F
         QwTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cOF2ey3p;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id e2si456702pjm.2.2020.11.12.13.40.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 13:40:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id d17so1960439plr.5
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 13:40:19 -0800 (PST)
X-Received: by 2002:a17:902:760c:b029:d6:efa5:4cdd with SMTP id
 k12-20020a170902760cb02900d6efa54cddmr1142305pll.56.1605217219357; Thu, 12
 Nov 2020 13:40:19 -0800 (PST)
MIME-Version: 1.0
References: <20201112212457.2042105-1-adrian.ratiu@collabora.com> <20201112212457.2042105-3-adrian.ratiu@collabora.com>
In-Reply-To: <20201112212457.2042105-3-adrian.ratiu@collabora.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Nov 2020 13:40:08 -0800
Message-ID: <CAKwvOdkM7q2muArRQxgZ3SdCHYTUja-KtkCveo8bq3RV8GWfKw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm: lib: xor-neon: move pragma options to makefile
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Collabora Kernel ML <kernel@collabora.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cOF2ey3p;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Nov 12, 2020 at 1:23 PM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> Using a pragma like GCC optimize is a bad idea because it tags
> all functions with an __attribute__((optimize)) which replaces
> optimization options rather than appending so could result in
> dropping important flags. Not recommended for production use.
>
> Because these options should always be enabled for this file,
> it's better to set them via command line. tree-vectorize is on
> by default in Clang, but it doesn't hurt to make it explicit.
>
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm/lib/Makefile   |  2 +-
>  arch/arm/lib/xor-neon.c | 10 ----------
>  2 files changed, 1 insertion(+), 11 deletions(-)
>
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index 6d2ba454f25b..12d31d1a7630 100644
> --- a/arch/arm/lib/Makefile
> +++ b/arch/arm/lib/Makefile
> @@ -45,6 +45,6 @@ $(obj)/csumpartialcopyuser.o: $(obj)/csumpartialcopygeneric.S
>
>  ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
>    NEON_FLAGS                   := -march=armv7-a -mfloat-abi=softfp -mfpu=neon
> -  CFLAGS_xor-neon.o            += $(NEON_FLAGS)
> +  CFLAGS_xor-neon.o            += $(NEON_FLAGS) -ftree-vectorize -Wno-unused-variable
>    obj-$(CONFIG_XOR_BLOCKS)     += xor-neon.o
>  endif
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index e1e76186ec23..62b493e386c4 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -14,16 +14,6 @@ MODULE_LICENSE("GPL");
>  #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
>  #endif
>
> -/*
> - * Pull in the reference implementations while instructing GCC (through
> - * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
> - * NEON instructions.
> - */
> -#ifdef CONFIG_CC_IS_GCC
> -#pragma GCC optimize "tree-vectorize"
> -#endif
> -
> -#pragma GCC diagnostic ignored "-Wunused-variable"
>  #include <asm-generic/xor.h>
>
>  struct xor_block_template const xor_block_neon_inner = {
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkM7q2muArRQxgZ3SdCHYTUja-KtkCveo8bq3RV8GWfKw%40mail.gmail.com.
