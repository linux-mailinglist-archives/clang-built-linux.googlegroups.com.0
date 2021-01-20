Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKHTUKAAMGQETMDETBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 1564D2FDCD4
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 00:15:54 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id m65sf26185pfb.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 15:15:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611184552; cv=pass;
        d=google.com; s=arc-20160816;
        b=dGwcaTnr+rWBSLcGeoN5xKDbG6NR61tgJoiXaPcSy3LO1AbPwNsePvXxcDFzm/2Pk2
         T496kYqGgpDVUWOs9AA4EQCAVc81RkZCY2ZGaUOUhhVxXNwMrb2RllNX8WrA5UkdHtm4
         DrHHCsb7Bgig+Q+mvf6YZQQ3vnkEp2M0BR/J3xbxL36OSVcqOZVyP24nDOiue+E9O+UZ
         fFlScHJR25DzKP/oeS0mvAiPUZnAMTXyyqC/MrPp1rPpFkBmg8VpjWBhWVLpCHTBP06W
         xAvjV68h6ThWtBndCXsl+8RdpuFZ10f/Txpn5URRBTYaEiZ1LpWPiio8qU2vBkMw8Y0P
         QGig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ihWBFTl7BNoQsWGwds4uqSTqbihVCIQw8nEwdp1pVMc=;
        b=ah48Dr3rlvre2nmE6/34ZcaC9tdmX7VxppBJxNutTXdRqEQjhNuctiRINE9hjOXked
         ZLm0PcpkBvwBRW2zbdn9M36e1qD54+vO/Y9cfTDnIuAR1Ky2+7QNTTUUqm1yK0P6zKSV
         SfaKnn0AOxbU6mebpzRFDKEk0uFKS9ygCssrKpBhAXQWJzqoTUFSIWDKTr6WDvA+JX9i
         U6fjV5pvjNNl0UICZM169FflQHYMBCP7IZtP3Z1QnlvDA2KQB3zSJbrL41p96JVTjM+0
         fZadYlyRG2ieATiGy0hSrucVzAfV3vkLAJcm4hanmvp60MqUg1rbzxNMtkBw0wDFtmZM
         KwcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iQRFLI8z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ihWBFTl7BNoQsWGwds4uqSTqbihVCIQw8nEwdp1pVMc=;
        b=VGe3WVtmiEOZ2qgmHhX5lgIUHnAWv2cgSyZfJosnaYqdue8twZtlBrG1f3pS0OgLLL
         cJvYYIUfHjI4KT7KUipEu28GTW7Ek5EyOiO8SSZ7r7ijkQHxq4ZSZweot1fiJxz0QUag
         KhhG0wRpCGY9DTN/ZMYxFyXmyxKsGiL/wwJVGa49zoD38hpYlXln+vTznZqIpIPw+G1Z
         e4GYw33bOJ1OgyZRefkCy1XufZs7+ieBXjUdoZ4v3kvRWXa7l53hqXLey8oWge7QMSXb
         NkMj1b8nnxrLp9565m+eLtiMGgrsBpk+YMx0MjvYknv7ks2chgfWQcg/l9mxWv4StMjS
         lafQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ihWBFTl7BNoQsWGwds4uqSTqbihVCIQw8nEwdp1pVMc=;
        b=jcurpCyQMkoRCES/mIB4Nas6XJsgABkClO0MsJmcZhf6hAadInacrALeFQ4S/1wQaI
         yp4liioS6u6YMQ7PZKHbj1CPXValG9X+MS/U6rjafHE77wqoLXJs3BsKoWOw6HTDa2I5
         CoglZwOSqGi2yqt7wgqMJQKD3wc25EMm/Z/diy3Brgu14MS06wdHGe8DNQu09SYdsXkV
         A3haZbbB21CxhyGfJihvNNKyGxN9P0N46cd6Jc8MmRCTunNvyZNBT14p12k7D/nw5uUP
         3tn1B84LWRzVq1zd9vuYpJ7S+wyjqIAqKA+5PAdu8gBt1lNl5RiQmF+MBRR6PD77PWNt
         jYMQ==
X-Gm-Message-State: AOAM532szwfi1hqa+L7SsbD9aN/2EQbyO7LeJ8ncCanJrt52x1fn+b3B
	eJv4esVHIV4qFvQrfrMmnVk=
X-Google-Smtp-Source: ABdhPJxw/f7f+yPRTIcrTT1Dmisup3ShHf/wcSjjMhZXfyYrGpxipkmpO3Z+EWgsD3g/I3ULjZcaWA==
X-Received: by 2002:a17:90a:14e2:: with SMTP id k89mr7900636pja.168.1611184552235;
        Wed, 20 Jan 2021 15:15:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:71c6:: with SMTP id m6ls42146pjs.0.canary-gmail;
 Wed, 20 Jan 2021 15:15:51 -0800 (PST)
X-Received: by 2002:a17:902:ecc9:b029:df:c993:5f12 with SMTP id a9-20020a170902ecc9b02900dfc9935f12mr2321496plh.82.1611184551570;
        Wed, 20 Jan 2021 15:15:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611184551; cv=none;
        d=google.com; s=arc-20160816;
        b=EPMMduK2OwkOrfrPnBB4Df3KiKFk+DgR4GaVqc86mtAr6rbOTQOFfq7fvJrRf+SyFK
         aQg0Yb3Hm7DrgFpn7ozkKK9KxC47Zd8dWIzOx+wIVUMDc5YrLCstTXXtQV8LmYuSUfjT
         ohzg569s38nJ7U1HQVLQyI2LbXoJyMYmT3JQScAJo7MRcHXwFfkPMJ8R3S9YG/vWw9T/
         3alWBmNyCxVvvss+OQ0AuPt0GMMa2VOLnUD8v6MAMcb3k7kSc1VFyKxlDYXiHZBak2p6
         Z+b3w8YFSCCEr8XiXR7Q/zUtEUwg+i9VoHpKMs6IFyf69ECD3K06YueLeyxvKDdyTWc2
         3e/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=muNwPqj3IkfhKZEjpn4BdoeLJPrHYLRIQ5wRRrb83eM=;
        b=mPzaaWscP1fcygf9UIAbj1Gt05AhLEZVc66kKs15UkIMX/Roku+BgA6Zxv9W2XC2jh
         RnZ2qVMjZ9wKtpLzOjq3gpiITJ3uaBfk1AdF4UhAXttR8htgWJlCQw05H/oy3DvnenPx
         D8DA2eaLtYk8ytueUKcs7hD9p2ygZkwEsAXXmkJ/1Q10Qm5tm0KK9wW7zOhNum+e+sas
         rC2IHYq4lxIJqke/2kro7ceJMQTAHmbuIyBbB37DgAuLz7jneEm5ZiQIL+Fle5Iv8NKT
         MlpHAdClrgQONi01S9S6Cczem2G7EWuYZhIdy7GgVSfdfLynZHwreu99rU9vqEYU4vCX
         DYbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iQRFLI8z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id n13si254323pfd.1.2021.01.20.15.15.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 15:15:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Received: by mail-pf1-x42f.google.com with SMTP id q20so183428pfu.8
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 15:15:51 -0800 (PST)
X-Received: by 2002:a63:1f47:: with SMTP id q7mr11604193pgm.10.1611184550928;
 Wed, 20 Jan 2021 15:15:50 -0800 (PST)
MIME-Version: 1.0
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
 <20210119131724.308884-2-adrian.ratiu@collabora.com> <CAKwvOdkNZ09kkzi+A8diaxViqSufxrHizuBu-7quG6an3Z8iDA@mail.gmail.com>
 <CAK8P3a0XWVu-oG3YaGppZDedRL=SA37Gr8YM4cojVap5Bwk2TA@mail.gmail.com> <CAKwvOdnVwkxQTQ-LkdZi4pFWTMg6d0Lddddp=j4pCEh-JT-34Q@mail.gmail.com>
In-Reply-To: <CAKwvOdnVwkxQTQ-LkdZi4pFWTMg6d0Lddddp=j4pCEh-JT-34Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 Jan 2021 15:15:40 -0800
Message-ID: <CAKwvOdkV6ykvmwoaBrTMZ6htp0qVQU5AQzQeKpsg7FGjb4GwCQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: Arnd Bergmann <arnd@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Collabora Kernel ML <kernel@collabora.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iQRFLI8z;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f
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

On Wed, Jan 20, 2021 at 3:09 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Jan 19, 2021 at 1:35 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Tue, Jan 19, 2021 at 10:18 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > On Tue, Jan 19, 2021 at 5:17 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> > > > diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> > > > index b99dd8e1c93f..f9f3601cc2d1 100644
> > > > --- a/arch/arm/lib/xor-neon.c
> > > > +++ b/arch/arm/lib/xor-neon.c
> > > > @@ -14,20 +14,22 @@ MODULE_LICENSE("GPL");
> > > >  #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
> > > >  #endif
> > > >
> > > > +/*
> > > > + * TODO: Even though -ftree-vectorize is enabled by default in Clang, the
> > > > + * compiler does not produce vectorized code due to its cost model.
> > > > + * See: https://github.com/ClangBuiltLinux/linux/issues/503
> > > > + */
> > > > +#ifdef CONFIG_CC_IS_CLANG
> > > > +#warning Clang does not vectorize code in this file.
> > > > +#endif
> > >
> > > Arnd, remind me again why it's a bug that the compiler's cost model
> > > says it's faster to not produce a vectorized version of these loops?
> > > I stand by my previous comment: https://bugs.llvm.org/show_bug.cgi?id=40976#c8
> >
> > The point is that without vectorizing the code, there is no point in building
> > both the default xor code and a "neon" version that has to save/restore
> > the neon registers but doesn't actually use them.
>
> Doesn't that already happen today with GCC when the pointer arguments
> are overlapping?  The loop is "versioned" and may not actually use the
> NEON registers at all at runtime for such arguments.
> https://godbolt.org/z/q48q8v  See also:
> https://bugs.llvm.org/show_bug.cgi?id=40976#c11.  Or am I missing
> something?
>
> So I'm thinking if we extend out this pattern to the rest of the
> functions, we can actually avoid calls to
> kernel_neon_begin()/kernel_neon_end() for cases in which pointers
> would be too close to use the vectorized loop version; meaning for GCC
> this would be an optimization (don't save neon registers when you're
> not going to use them).  I would probably consider moving
> include/asm-generic/xor.h somewhere under arch/arm/
> perhaps...err...something for the other users of <asm-generic/xor.h>.
>
> diff --git a/arch/arm/include/asm/xor.h b/arch/arm/include/asm/xor.h
> index aefddec79286..abd748d317e8 100644
> --- a/arch/arm/include/asm/xor.h
> +++ b/arch/arm/include/asm/xor.h
> @@ -148,12 +148,12 @@ extern struct xor_block_template const
> xor_block_neon_inner;
>  static void
>  xor_neon_2(unsigned long bytes, unsigned long *p1, unsigned long *p2)
>  {
> -       if (in_interrupt()) {
> -               xor_arm4regs_2(bytes, p1, p2);
> -       } else {
> +       if (!in_interrupt() && abs((uintptr_t)p1, (uintptr_t)p2) >= 8) {
>                 kernel_neon_begin();
>                 xor_block_neon_inner.do_2(bytes, p1, p2);
>                 kernel_neon_end();
> +       } else {
> +               xor_arm4regs_2(bytes, p1, p2);
>         }
>  }
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index b99dd8e1c93f..0e8e474c0523 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -14,22 +14,6 @@ MODULE_LICENSE("GPL");
>  #error You should compile this file with '-march=armv7-a
> -mfloat-abi=softfp -mfpu=neon'
>  #endif
>
> -/*
> - * Pull in the reference implementations while instructing GCC (through
> - * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
> - * NEON instructions.
> - */
> -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
> -#pragma GCC optimize "tree-vectorize"

Err...we need to keep this but use the -f flag with __restrict for GCC
to vectorize:
https://godbolt.org/z/9acnEv

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkV6ykvmwoaBrTMZ6htp0qVQU5AQzQeKpsg7FGjb4GwCQ%40mail.gmail.com.
