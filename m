Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCMSVT6QKGQER642NLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EB31E2AE1F2
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 22:41:30 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id x141sf60470ybe.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 13:41:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605044490; cv=pass;
        d=google.com; s=arc-20160816;
        b=AWOwoRpqSaEIzo7e8RO/TBFsl3+82Zz6vQtOQKt/PSELhadPlERDQbsSMsN803v8qI
         6XmCmmH6+QkpYbIeC8NhpjkbRt3rv5oxM8okq0nfV00aPP9XhJTZDC73LAHWPkhhZ2N7
         820tSgGNDk1e4A1ls+9+Yzl5BkOny75vrBTVb/Zbj3yLAjYagAojgMuMm07+1gqLCW7p
         bVLm8T7+Td2qTalIicPSGiHncIR3ZzVpITJiiqvHNlwOZWCGBCV+sErHoHJLkDdKN0fy
         KbmSf2X+289QiureaH0YZna69gHJcwRd/3rMey2wJO8y0D336/u0wZZUlSIE4ilyjqN3
         Rqwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dZ3UFNz2G5fJYmQYpXpaqj069MIUg1crQt8WnPpcrYI=;
        b=OpGsAgbae1HR6I1b6ScqLQJ84aWRdXHii7TUoAI5mMeYifTOfXL8TgtIAEeszxojUD
         JxeA7Zwh5rfvh7uoTbpPlR2tcDfzObayD5mgNnBKOf25+UIfB6A5eYLZ/yLbvjKfYv6n
         KP8FXAsWYDGZi6VnoZRg/Ml+iQ/8eW+B2nec5cCtLYImLzbM4jQmizdxW7xdEV+IwnNS
         r3vI00/Sf9bgIWRQ/STP9+VT/3DZAZZSwH7UVnIKOUEtqYWBdxb6a69lkxvyiz5NhEp/
         ZmTv35PwrkUDyaIq2y8/BiMMKaye7BZDzZlf0j0jDX7ux8gIrTW3uGK0ZRGe3Ty3OTRb
         8L/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LSBoX11D;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dZ3UFNz2G5fJYmQYpXpaqj069MIUg1crQt8WnPpcrYI=;
        b=FcGfpLXqz39Fjkm80q+1WBCtW7OClXrXzzwSBm29wa7RyfqnwlZLtn3v6uFmpc7BpU
         VGCu+92uY0w2e08JdokJOK3QjRu+Hoqgv3g8hd/QTrpLxAhlhGPeRNHy8M9TcO6dCC9B
         OjtUffBKdekQJvq5xYHtuk1xA1CM6aVSskkrljpjqrIKjZ2CllpmRif1jRIGRWco1dbG
         AH8Ji54O13G5bsmY5985GW7ZuaenPbD4TLQUUj842405+H9M/PpIcZxoOvn/gzhrERQe
         0ixcvv0+CjnBjpUUrDU3q/Grvoyuvy2hOyIhvy1e76PEv8D2knLjHIUbpZL6ei2M6R/s
         k5+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dZ3UFNz2G5fJYmQYpXpaqj069MIUg1crQt8WnPpcrYI=;
        b=KMFD6q0pSqgllUlGvgyh0iOVvIFws0XYI18wsFLp4Ejb53/RiUsJgJrMqKBiXZFgGf
         KJtS8AWVV8JNA+GiK8XbMBPT1YhLYxBKykDqEt5M3iNVjqdOQyV5N9hCFbINNw1UCSHx
         solLn4M/kua5vPHToY62vWhJSF5Rfgwv2pm3i15h+OMnO51zZRcyFWLTw1ZwsKKC9rZZ
         AMpNfw9y6wreXsFfCSBDAn+7pcXG++eRBhadS2bMgtBYP6Rdd87Ttnr1gMpm6tlcPXg+
         CeCZQNus3OFkvvWueBHvQ8vxC825yEk/uiX5oAPY3FXeUwcaBau2Va6Uo/TJK+EJZ2FC
         /G8Q==
X-Gm-Message-State: AOAM532PLAtVMzc+YFD0q7ecm2vFsDFJRco+5vvoIwKBDWh6QjPZ2y8j
	GZoHIYjLIs83p/7hEdA+Uy0=
X-Google-Smtp-Source: ABdhPJyLsSvPLO8lMxMvYCkE1eMOBiUV76QkymUPtqdEny91Lj16H3VIQOVPUKIHL1OJvJbHxhCTUQ==
X-Received: by 2002:a25:7007:: with SMTP id l7mr22586428ybc.180.1605044490007;
        Tue, 10 Nov 2020 13:41:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c387:: with SMTP id t129ls2072470ybf.7.gmail; Tue, 10
 Nov 2020 13:41:29 -0800 (PST)
X-Received: by 2002:a25:d7d4:: with SMTP id o203mr15676617ybg.286.1605044489555;
        Tue, 10 Nov 2020 13:41:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605044489; cv=none;
        d=google.com; s=arc-20160816;
        b=pPhnvM9yBZKl+bsjpcIuFxeHFWObYuz8dsLzNGqvaohxXjhHnQgcKT0iW9uqLdJNIR
         xZ1kxNR56jhjTAfN5PiBGY6IJxK0ZpC8Eq3HR02Mti1z7NWkZSBY8eI4h/1jQWNDbCay
         knGEXRvApPToKaAOHsjNsjaFfLaEll+2cVCKtmNVOtxj7ru39Mn+E2EPRQskPSIfMUfO
         d//b9mLIZ+uBvgeB3wmxZaX1mzPXY6Sl5GhtqETJ4uAKWtCfBTX/vauuAG+faN0WprE+
         Jo19oYPNLK0Rp8oICwZ8DquoK1pXb1NuewA+kirXQHLaUdP68PSawpiGybkP4zP0tIxP
         tlBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q4CcE7u3K9j+955QTtLBYw45S3stN7Sf2ld0QlffWLY=;
        b=qlcClWET36kKQ2JXdC4HHlfB5tUiG5QF3WSWWywtmy6COAFPi5yDIri2ASh4JgelLU
         kJ8sThHnvpWditLtn8E+7X8XaX1c9cxk0yBDkRx2J7gqkG9lSKgOQwZRxMpLnbMziS6A
         ERjuB7IpIbRQoKz5PRcV4K22u7YBL7Lvz2EhCusgZYC4BqplCqZso61wYo1GtSSRvNRJ
         MDQCkXb8sQ/RBy7MmV94xIBIznwqeF0yKyrv27pRwcwYXKfuv121kGQfqLQivboYv2Dt
         RPWRJtyQc46h4DGGuUI4H0i5aTM9oShi2d/aomAMHPMEU/7VadKY6R2CSQ1BhKOCuYqn
         ZXFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LSBoX11D;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id y4si3775ybr.2.2020.11.10.13.41.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 13:41:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id i13so6627057pgm.9
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 13:41:29 -0800 (PST)
X-Received: by 2002:a17:90a:4881:: with SMTP id b1mr194980pjh.32.1605044488647;
 Tue, 10 Nov 2020 13:41:28 -0800 (PST)
MIME-Version: 1.0
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com> <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com> <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
 <871rh2i9xg.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
In-Reply-To: <871rh2i9xg.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 13:41:17 -0800
Message-ID: <CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA+mnzgDid_w@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	LKML <linux-kernel@vger.kernel.org>, Collabora Kernel ML <kernel@collabora.com>, 
	Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LSBoX11D;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Mon, Nov 9, 2020 at 11:51 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> On Fri, 06 Nov 2020, Nick Desaulniers <ndesaulniers@google.com>
> wrote:
> > +#pragma clang loop vectorize(enable)
> >         do {
> >                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0]; p1[1] ^=
> >                 p2[1] ^ p3[1] ^ p4[1] ^ p5[1];
> > ``` seems to generate the vectorized code.
> >
> > Why don't we find a way to make those pragma's more toolchain
> > portable, rather than open coding them like I have above rather
> > than this series?
>
> Hi again Nick,
>
> How did you verify the above pragmas generate correct vectorized
> code?  Have you tested this specific use case?

I read the disassembly before and after my suggested use of pragmas;
look for vld/vstr.  You can also add -Rpass-missed=loop-vectorize to
CFLAGS_xor-neon.o in arch/arm/lib/Makefile and rebuild
arch/arm/lib/xor-neon.o with CONFIG_BTRFS enabled.

>
> I'm asking because overrulling the cost model might not be enough,
> the only thing I can confirm is that the generated code is
> changed, but not that it is correct in any way. The object disasm
> also looks weird, but I don't have enough knowledge to start
> debugging what's happening within LLVM/Clang itself.

It doesn't "look weird" to me. The loop is versioned based on a
comparison whether the parameters alias or not. There's a
non-vectorized version if the parameters are equal or close enough to
overlap.  There's another version of the loop that's vectorized.  If
you want just the vectorized version, then you have to mark the
parameters as __restrict qualified, then check that all callers are ok
with that.

>
> I also get some new warnings with your code [1], besides the
> previously 'vectorization was possible but not beneficial' which
> is still present. It is quite funny because these two warnings
> seem to contradict themselves. :)

From which compiler?
```
$ clang -Wpass-failed=transform-warning -c -x c /dev/null
warning: unknown warning option '-Wpass-failed=transform-warning'; did
you mean '-Wprofile-instr-missing'? [-Wunknown-warning-option]
```

The pragma is clang specific, hence my recommendation to wrap it in an
#ifdef __clang__.

>
> At this point I do not trust the compiler and am inclined to do

Nonsense.

> like was done for GCC when it was broken: disable the optimization
> and warn users to upgrade after the compiler is fixed and
> confirmed to work.
>
> If you agree I can send a v2 with this and also drop the GCC
> pragma as Arvind and Ard suggested.

If you resend "this" as in 2/2, I will NACK it.  There's nothing wrong
with the cost model; it's saying there's little point in generating
the vectorized version because you're still going to need a
non-vectorized loop version anyways.  Claiming there is a compiler bug
here is dubious just because the cost models between two compilers
differ slightly.

Resend the patch removing the warning, remove the GCC pragma, but if
you want to change anything here for Clang, use `#pragma clang loop
vectorize(enable)` wrapped in an `#ifdef __clang__`.

>
> Kind regards,
> Adrian
>
> [1]
> ./include/asm-generic/xor.h:11:1: warning: loop not vectorized:
> the optimizer was unable to perform the requested transformation;
> the transformation might be disabled or specified as part of an
> unsupported transformation ordering
> [-Wpass-failed=transform-warning] xor_8regs_2(unsigned long bytes,
> unsigned long *p1, unsigned long *p2)


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA%2BmnzgDid_w%40mail.gmail.com.
