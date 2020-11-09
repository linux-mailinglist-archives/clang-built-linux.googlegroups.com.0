Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF7AU36QKGQERBSL5LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAD02AC6AB
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 22:09:45 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id s201sf7575793pfs.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 13:09:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604956183; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wp8V9FmFD34XEqD2QC1mBMsmvyxRwCQg/E0Bt0zJbJ//gsJipC+yFpIq7hTLSYSsGn
         kE2toKSmRaQuPmoBF0Scf2E4L9K7YczCahNwlFVYtB1KOXP6avF32t46eHHA0c/JzbjL
         B7WWPXhO963A539xT6gTDpETJR92z64l6+io3h1QgfVTR9Q9Ban1eWrjL3thXe7P02cv
         hm3k4lecIxUSJE1fb8YcAR+rJX5ItZyg0kKLGoyszWQXjA77FzpbxW97h3rNvhTOFwjF
         QWAt0OHmQ6LJwTTUp362a8iONtGQfVyYAqKTtdN0GXI15nnKvNGCMHSdiqYOPaF7TJrm
         TCEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uBR2hBDLPHk9gzNB3L0VGoJjJRFaR91QMqTkGlKt3Q0=;
        b=umDaRzDFJzuQjkjeHKktpiPa8xYt1Q2z3mlyR2MztYTHR3pUnuOq563MlJVwrnSeqE
         n4whn+8gltOzNh0pDBGmuu76igQMBNrjiXAgatdNnNaCWXlrdsKi1IAXNDg4TNmX0IRN
         liHFOUtBjFpEbGTs/VSijvZxwEP/9sZe0cW/yUKcRX8/7zQL/nyuZ1U0AYqQQaROYfA5
         ZMUbcoJpVuHMrcUJbJbN3PlwQ9mfJ4OEJv2i3xpl5l2EY/2Rq/1EFTyN69Wo42j0w6Wi
         NgAA2vP5c+c37WPXzX3iEQrAMrbz5D35VgNnQogbw2JcGBxv3qmZhi/i7gcNZsI+j6BK
         m5HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mzn+lkPU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uBR2hBDLPHk9gzNB3L0VGoJjJRFaR91QMqTkGlKt3Q0=;
        b=kwwYa47LMeQjkNIehJOCJnaxDcUsLnrZ7KhA43R1+BGw/ZiuP4TOZjamI6tpIhtgNt
         +r8piDCBvUBLBBYinD4UtldsT9o0CRDDKOQtUapCqXEBZgrMGA44ZknM0wdPPBFyt7cM
         2D7e0+UJRKbTWd/toxKW72qr7ZupHSKWHiJ7xsdmgFiENng9cw5MGHUpj10X4pnhU7LQ
         ZKsxLsJmPNNYt6WSdOZxKvbtKHBdL0KQcDC94bQixWa4H2VEHybVxgDqSA6BrpBCJAIu
         QgBeTMqVpm3d89OhO2o3Ifv/RqiNH+5Dl9hDde/3h+YT9qSAXwDadMhql2i8msEHYdws
         KtoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uBR2hBDLPHk9gzNB3L0VGoJjJRFaR91QMqTkGlKt3Q0=;
        b=H/9O02HsXYWmLZWhPx3GELj2WMCbrVLnkZRyUIl0GkLchkCIt/ispnvM41PuH70Lc+
         ImF0qB2Gz2iZ+P+o4QmslvtXMloKVDGztTUmG58Ij2blB+YsurdvFuV8xqPtih9q34wj
         3zl4eZaKDw/L3zI8WANbCvVGzZnNFi8cVqs21MXpJtXT/u0yd5kaNuuUXnlOpxsK1O9y
         ddgnebizi/t3lyDTNFQGlGxbPU29BHUWZzUg2o7XvUlx7jwPe0eTh0k8yTs3smw/fI0m
         Pr6GZBNDZa8CSq6Woiz/Sj5jiLGBZMyXG+C+3bIQp7ufjLgG8wJGFTBLqYKZd2BOUhAE
         QKpQ==
X-Gm-Message-State: AOAM530RzS+73wpYp1m+7eVRIvCrd/db7lPsIHxLHO2/b3InGTI3bC1A
	XCPgo6IalAxCnHPhwrgPvgE=
X-Google-Smtp-Source: ABdhPJxbXp0meo4IjFV433+FVe4W7uGHMA019qqmBtGur1NHXxAuy6EwNYH1x63wT0tBvbmsMQfT6A==
X-Received: by 2002:a05:6a00:8ca:b029:15d:7af3:8360 with SMTP id s10-20020a056a0008cab029015d7af38360mr15599885pfu.12.1604956183793;
        Mon, 09 Nov 2020 13:09:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b4a:: with SMTP id g10ls4223382plt.6.gmail; Mon, 09
 Nov 2020 13:09:43 -0800 (PST)
X-Received: by 2002:a17:90a:b88e:: with SMTP id o14mr1187662pjr.226.1604956183119;
        Mon, 09 Nov 2020 13:09:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604956183; cv=none;
        d=google.com; s=arc-20160816;
        b=cIkXBHcN3Zk9yjYx5MEZFdIaZ46WknsqU+Jw+deY7bSZxb15HcJsWBiABF/YCrluia
         eTR3v2jpFsHsr8rBcDBdHX88XAvvFTg6TQb34UpLXTDV4N8pzbb5TjR+p6d/L80t7zZV
         O0Uq2zN3pp5D8QSG8kSSjllOcu4owu3bJAmLO3Azhg6NaSdM8MCoKzTdEplJ1vOKkwgE
         VBRIE9or4yVMkqpyKHNxemMBoqe144aCESy2supFKacAdC7jHzV63mzPF+VzlmyZCEgS
         q+mTOOePkk5s3mOWqkdgSnAn32kVlWUvUhBycPg/6vzVn+Za/xWYiyHylKX8v/EH3rNP
         N9kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YnjA0vExtodqKNxAfLIMx+cONW4ftsoSQk+GuIJ8C3Q=;
        b=MuQUsyUfaal8Fus28kdYl268lZbtT9HLSSYq+poedDp855BXMaKAuSeW7Y8vJ/30Ze
         YzNUAcbra3TLEpPaWJxthZbeWBrKuy/i4fRZQjBShyoSrPE9vzwEHlzUCX4b2jqJ7zOB
         SYbUZRkI7hNh92H/hOqALvSjVluf1M1eYy4PrBPLLZ5Yx9opYofsdavu7neDU6X3qRGZ
         Rv0Ktff1UEQU5OJjIo5vxJQpp6o1Og3e+BjrmnckbQCafVBGU645VHczRJDVsoInEgv6
         FxQ3BBnm9qj7DQRbGq3tvqwgl7qrXvv2t/OunXJTU87R5/7hyF+AvH5/8/+WPgubiXWF
         L/bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mzn+lkPU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t130si702369pfc.2.2020.11.09.13.09.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 13:09:43 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id m13so55252pgl.7
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 13:09:43 -0800 (PST)
X-Received: by 2002:a17:90b:110b:: with SMTP id gi11mr1095003pjb.25.1604956182606;
 Mon, 09 Nov 2020 13:09:42 -0800 (PST)
MIME-Version: 1.0
References: <20201109205155.1207545-1-ndesaulniers@google.com> <CAMj1kXEoSF7UXNjJS4A6VtDVbpe7kfqxdZkMS3Sxf1Sr=PvdLA@mail.gmail.com>
In-Reply-To: <CAMj1kXEoSF7UXNjJS4A6VtDVbpe7kfqxdZkMS3Sxf1Sr=PvdLA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Nov 2020 13:09:31 -0800
Message-ID: <CAKwvOdmEu+mf0fVW+4gt1q7F3SkFcLvTbgjivv1qnTo3sBAO7A@mail.gmail.com>
Subject: Re: [PATCH] ARM: decompressor: avoid ADRL pseudo-instruction
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Jian Cai <jiancai@google.com>, Russell King <linux@armlinux.org.uk>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nicolas Pitre <nico@fluxnic.net>, 
	Linus Walleij <linus.walleij@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Mzn+lkPU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Mon, Nov 9, 2020 at 12:53 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 9 Nov 2020 at 21:52, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > As Ard notes in
> > commit 54781938ec34 ("crypto: arm/sha256-neon - avoid ADRL pseudo
> > instruction")
> > commit 0f5e8323777b ("crypto: arm/sha512-neon - avoid ADRL pseudo
> > instruction")
> >
> >   The ADRL pseudo instruction is not an architectural construct, but a
> >   convenience macro that was supported by the ARM proprietary assembler
> >   and adopted by binutils GAS as well, but only when assembling in 32-bit
> >   ARM mode. Therefore, it can only be used in assembler code that is known
> >   to assemble in ARM mode only, but as it turns out, the Clang assembler
> >   does not implement ADRL at all, and so it is better to get rid of it
> >   entirely.
> >
> >   So replace the ADRL instruction with a ADR instruction that refers to
> >   a nearer symbol, and apply the delta explicitly using an additional
> >   instruction.
> >
> > We can use the same technique to generate the same offset. It looks like
> > the ADRL pseudo instruction assembles to two SUB instructions in this
> > case. Because the largest immediate operand that can be specified for
> > this instruction is 0x400, and the distance between the reference and
> > the symbol are larger than that, we need to use an intermediary symbol
> > (cache_off in this case) to calculate the full range.
> >
> > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > Suggested-by: Jian Cai <jiancai@google.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  arch/arm/boot/compressed/head.S | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> > index 2e04ec5b5446..b3eac6f9a709 100644
> > --- a/arch/arm/boot/compressed/head.S
> > +++ b/arch/arm/boot/compressed/head.S
> > @@ -1440,7 +1440,9 @@ ENTRY(efi_enter_kernel)
> >                 mov     r4, r0                  @ preserve image base
> >                 mov     r8, r1                  @ preserve DT pointer
> >
> > - ARM(          adrl    r0, call_cache_fn       )
> > + ARM(          sub     r0, pc, #.L__efi_enter_kernel-cache_off )
> > + ARM(          sub     r0, r0, #cache_off-call_cache_fn        )
> > +.L__efi_enter_kernel:
> >   THUMB(                adr     r0, call_cache_fn       )
> >                 adr     r1, 0f                  @ clean the region of code we
> >                 bl      cache_clean_flush       @ may run with the MMU off
> > --
> > 2.29.2.222.g5d2a92d10f8-goog
> >
>
> This is already fixed in Russell's for-next tree.

Ah right, trolling through lore, there was:
https://lore.kernel.org/linux-arm-kernel/20200914095706.3985-1-ardb@kernel.org/

I didn't see anything in linux-next today, or
https://www.armlinux.org.uk/developer/patches/ Incoming or Applied.

Did it just get merged into the for-next branch, or is for-next not
getting pulled into linux-next?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmEu%2Bmf0fVW%2B4gt1q7F3SkFcLvTbgjivv1qnTo3sBAO7A%40mail.gmail.com.
