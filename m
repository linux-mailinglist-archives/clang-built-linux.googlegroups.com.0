Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDVIUL6AKGQEN6CSQFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id D529C28F872
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 20:25:19 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id o74sf1670536ooo.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 11:25:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602786318; cv=pass;
        d=google.com; s=arc-20160816;
        b=WB4AEEIY2pcB4dfFUn6aBG5D+K5+tFpZsKe8mgwB6Hgsz5fLXjSfemg5AEvtKHXYsg
         feTMdeVOlsoKSexPxAbsPgainAoEDBiEmE9Sx8pEsmB9MhNRpWAFb4o68oKkFLLhxj0c
         Q+kuXvWHYjPsUMmvGdC8isaIGihsfV9YsuD2r1+quk3Pcp0Z0A7vOGUQB2JmATxtUczN
         V82KTTmqnaoHAUqiyT7Zz3DM150JPUHJMAZoN7T2T5UB8+xyJuhsdsuNtVrfstVu6+yn
         L57ngvY75YFZ1J5Wnxy/euXdjVkzBxjqr/XcP4dOqQzrZAJWvfvwqgX4GMzZXlywCJA9
         3RkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=F7WJebEQ1iLPf9wr/OKJ15Eb4q6H8M03Tr5Lg8q96TE=;
        b=iBkc5rAQWsLdMktzH3c+1uay1i/g9ovSoN6Bwgt8F/V0mYzZIJOsg1Xf30Aqk9nU+V
         b3tLZGyXnBo+/s41+oFOLIoi1GjRcxdSzQREuy/OqTObAmwp+TZvGOtsqRsMSB3F5m4I
         7WIIc8Cyz3PEKObKx8oi2BIQL7TZcslYdKqN0DkSseTdXRCouK6jWmWoN3dyR67E6Sgd
         mwx1SlQk0agtn0LfL/dguucJXORSYLggki+zclaOYhB+0opvepSn5wbHbaqKgh4Mx1fF
         aK7VGpZZ5cdPGdbHhgEv9js4UrAA0GVXZcrRO6Pr4gO5ZF5yyLwO/t+EdcO+1+NTOXJN
         ByCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q7Gy3AiI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F7WJebEQ1iLPf9wr/OKJ15Eb4q6H8M03Tr5Lg8q96TE=;
        b=dPo1ERKQ4ve83YGepJb1zY9cnCq7TrNOcK1gr0Po3vOpauSIW3xGeQRXxoeMD++nDA
         GLgSPsJ86GU2NVyv2dTktowsGKDP4xpSo0yV2+Wc/tnATU6ndgxJn1somjd0tPbfFxYY
         gvcoGTtctYe0Wuq2cw4kGfhEyg93Y+y5TRE4JnG2RqHD9RBVdiGM/LJ7rTyuGuEnu7SW
         IKyPjKK5c94bhjfMqSJdXOgD3Webmb6CBUci26IhEuNH5Bkx2iMpQFNUT+/vUv+WjL7Y
         VMj/5X7X0VxctW6IIjqtkX0whCxlsC5rQzE72xbPx3/JUkc9iFAeVC26CExggPcvKRHI
         itgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F7WJebEQ1iLPf9wr/OKJ15Eb4q6H8M03Tr5Lg8q96TE=;
        b=OT/agLKpG7dLNQtQoTzqp8onCUkCGiDSvab9V2j39oVu0j8O7+5xszy/TiC5+r4B5T
         HyjlEumdiNmQm9sWEWakMBNpicGPxb1APM7xS2ZOgQn+wNSK90aibkqtfXV7y/8fvY5m
         n4fR5c7QrVFckKU7Ncib6o3WGlngFLEfVLWPnET0RvIPvgrlnyTgIyycfsI8XA30PWGY
         ABTdG6RnWzC0I4gC7UGEhfFd7p80i4JedXw9wRTr67FQtl/eBlAFAw/RNchlTHbblM+N
         BlnlbVjr6PvyzHfRPDqOu7sBB9FqOXlGhsGdsrsBEIGSCcgc4VY3P3ZN9CMPPJDVeDOd
         Ai3Q==
X-Gm-Message-State: AOAM532cPFgr/Zppcti9fvJ1/YkpUu+taTW7MD8DYcZnPCVta4mJmYTy
	c7Rucjy7B70+yvqmdxjEScc=
X-Google-Smtp-Source: ABdhPJwp7GkjyFWp7Tj7lFUlbxlp+wdrJmcr3/HZn2gz1sOt5ATiythJyFb8S2kioztFMyY1Li2EFw==
X-Received: by 2002:aca:5883:: with SMTP id m125mr77911oib.21.1602786318448;
        Thu, 15 Oct 2020 11:25:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:40e:: with SMTP id 14ls910317otc.4.gmail; Thu, 15 Oct
 2020 11:25:18 -0700 (PDT)
X-Received: by 2002:a9d:619a:: with SMTP id g26mr3713450otk.325.1602786318048;
        Thu, 15 Oct 2020 11:25:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602786318; cv=none;
        d=google.com; s=arc-20160816;
        b=h0JRS5qnbk7yNumVXKU9BdvXYHdP7b6NWTMVqtU54sLXJSCRi9YQ3ETgqFtwkLMHpZ
         JpfA558TwSRlO4Q8QfU1QJ3DS2n41Ivm9HhFSVF6uqFHEd0P1C6kSW9FdNrNnSyJElyx
         bjZJiY8yOlCWM3xsDzndccoTEbUcipryWe64FVJ78CXuOOotkBgex0IJQ5LzY4iIT920
         CjEbVdNXbTIC0Q8owALzuXmd1f/DzCCVT25JGJyc6IXIaTSpFfABfzA+qGKpBitDku6L
         J5cOQDVXs6VpUFQiG2DINb5l89i+GWXNatNET+AaLooMldJ1g7umSa+R6b71sFWz+yEF
         T9vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/RIqn6irkqKDAEEWrlzQtXEDsj4m2zjqp4+RABIoG1Y=;
        b=pQTotkfIayAaCu9iAvbys+2H7iuCflKtfvlgwLrOOFl9kARzt4X6Q3SpHm3H4LBWc1
         aOxEXK+BFT49ZzfdO3soTO8QnxcwJ9SKjC5CaDKKRN1fug6fIUvpNO6ojKm8G55pm0KT
         /qJmzvJC3+lIXQoK721A/QUqDGvdFmWVJE4TOm8bF0wb4JuDCM3dvo3gjxNDwT1buw/+
         Xyzg1EDoc2kyIDaNoH94CJ2VILBRZjmrBtYZuZZ+rHiZE/FlMe3gm+XWSXn5mx+/kCZP
         OIQFpA4a+Rsgzv7ZXNJk2LhqcnmMDwWxtcPCBa66dHEIIaCc+FcrwuN5PMXv0k47Gbvl
         XcMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q7Gy3AiI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id o22si3601otk.2.2020.10.15.11.25.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 11:25:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id e7so2509963pfn.12
        for <clang-built-linux@googlegroups.com>; Thu, 15 Oct 2020 11:25:18 -0700 (PDT)
X-Received: by 2002:a65:6858:: with SMTP id q24mr143307pgt.10.1602786316973;
 Thu, 15 Oct 2020 11:25:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkLvxeYeBh7Kx0gw7JPktPH8A4DomJTidUqA0jRQTR0FA@mail.gmail.com>
 <20201015181340.653004-1-nivedita@alum.mit.edu>
In-Reply-To: <20201015181340.653004-1-nivedita@alum.mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 15 Oct 2020 11:25:05 -0700
Message-ID: <CAKwvOdk_Zvqb_h7Dksu=x2QvxhLpr0rvaMSdshKKTV7NBrv9HA@mail.gmail.com>
Subject: Re: [PATCH] compiler.h: Clarify comment about the need for barrier_data()
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	David Laight <David.Laight@aculab.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=q7Gy3AiI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Thu, Oct 15, 2020 at 11:13 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> Be clear about @ptr vs the variable that @ptr points to, and add some
> more details as to why the special barrier_data() macro is required.
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

Thanks for this distinct cleanup.
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  include/linux/compiler.h | 33 ++++++++++++++++++++++-----------
>  1 file changed, 22 insertions(+), 11 deletions(-)
>
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index 93035d7fee0d..d8cee7c8968d 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -86,17 +86,28 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
>
>  #ifndef barrier_data
>  /*
> - * This version is i.e. to prevent dead stores elimination on @ptr
> - * where gcc and llvm may behave differently when otherwise using
> - * normal barrier(): while gcc behavior gets along with a normal
> - * barrier(), llvm needs an explicit input variable to be assumed
> - * clobbered. The issue is as follows: while the inline asm might
> - * access any memory it wants, the compiler could have fit all of
> - * @ptr into memory registers instead, and since @ptr never escaped
> - * from that, it proved that the inline asm wasn't touching any of
> - * it. This version works well with both compilers, i.e. we're telling
> - * the compiler that the inline asm absolutely may see the contents
> - * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
> + * This version is to prevent dead stores elimination on @ptr where gcc and
> + * llvm may behave differently when otherwise using normal barrier(): while gcc
> + * behavior gets along with a normal barrier(), llvm needs an explicit input
> + * variable to be assumed clobbered.
> + *
> + * Its primary use is in implementing memzero_explicit(), which is used for
> + * clearing temporary data that may contain secrets.
> + *
> + * The issue is as follows: while the inline asm might access any memory it
> + * wants, the compiler could have fit all of the variable that @ptr points to
> + * into registers instead, and if @ptr never escaped from the function, it
> + * proved that the inline asm wasn't touching any of it. gcc only eliminates
> + * dead stores if the variable was actually allocated in registers, but llvm
> + * reasons that the variable _could_ have been in registers, so the inline asm
> + * can't reliably access it anyway, and eliminates dead stores even if the
> + * variable is actually in memory.
> + *
> + * This version works well with both compilers, i.e. we're telling the compiler
> + * that the inline asm absolutely may see the contents of the variable pointed
> + * to by @ptr.
> + *
> + * See also: https://llvm.org/bugs/show_bug.cgi?id=15495#c5
>   */
>  # define barrier_data(ptr) __asm__ __volatile__("": :"r"(ptr) :"memory")
>  #endif
> --
> 2.26.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk_Zvqb_h7Dksu%3Dx2QvxhLpr0rvaMSdshKKTV7NBrv9HA%40mail.gmail.com.
