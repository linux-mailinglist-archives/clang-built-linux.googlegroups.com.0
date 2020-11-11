Return-Path: <clang-built-linux+bncBD4PP5X5UEBRBP7DV76QKGQEADQNEGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB122AF346
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 15:14:25 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id r19sf883299ljj.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 06:14:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605104065; cv=pass;
        d=google.com; s=arc-20160816;
        b=D95l9sSDFpWZ+l7scJGmOm1BnbUzQ4TOFIP4h+6+gxSpce1Qdsf59gWmBR/sQWYB4v
         Mmrea9sWOTNHkc0LeGd66/B0neNwkqVZ1cFfwMbZ3modImD8cnnGHortxseW28wGD1/U
         k7VetY9PVOQEuIlJP6y6g7xvpkKQbSYL29Tel66E4eYnmiVm2u22mnibhIdgSEVnO84l
         5cwHtN/b0K5A4ufc8/Jijjtw+IanagYFc340hOSfCJ1mkaPMerf4WUxNNkGLDRjtvpqn
         FgEu2TdVaC8hlqf3fsHmt/Px6y5sDOEvIRyKTs/d7RsJwON1GThcsti5JUrW1riilR0W
         gXiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=XKQ8rWHjm551R5uRT9MaTfzhQvBZtAp00U1c1VxB7Vk=;
        b=TDkHfCQiUyJ00nwT/w1uZG3aamcAZmlL9DPMmN2GvI5HREBxk19Qy/DSMvFJHmL2Np
         uDZqmemPwhVZoauZdz890GkddJasims0DO1KHxtIg5VBPGJ6Hun3qJjdTLn/+yMhXKDl
         +XhVoAU632onlMMu82VSBK6/1yy3qLpYFs/gDDwU2BzkEVSnl/Ozde04/504CjSfS3A4
         f/32Idnt7GyHneZWZ7LwxO8TOth3hVPJMi/gyoojt/hsL527RSb4F6G0ZHEWIowdFtgf
         60fRKqOPubTpCsM/ynFjYs+Zj957r6qMTzMYWl598i1UzlRSyQQyMemZ1ywm66uFhF0r
         P+5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XKQ8rWHjm551R5uRT9MaTfzhQvBZtAp00U1c1VxB7Vk=;
        b=oEtI/Ch2I1zZ6vHfv0yirC87Ho1PSQyJrIsbd1AvqdnJx275nRhw/ivkMRXDNc4lTK
         qY5K8MNtdz9Jcd9wqF6/dC+FoHWljAsC+tGG0oIrdilMDhEHvSerYVgJgL96vgEOyhBM
         2k7vPP80X8PUSEWsfFOFa12HEIfnlZhh5XXq81iRitbHqt29+OhMW4fy3Xg1Bum6RlUe
         mIwFp8vnKyvTlpnhKXe3AJppY9+fWpoRnZs0ux8+DWobTiagcaEgUcurvfnMzyE6Jz7/
         DUxT9ECnZNLjNzsWhXBcD0FoALx9Ly0MvCks+EOCHSLPEK1vT1ZfwJdAI4KzRAL5vVJx
         D88w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XKQ8rWHjm551R5uRT9MaTfzhQvBZtAp00U1c1VxB7Vk=;
        b=rKzZk2m1FyLpOfOnsH9GdPCjZsI0jzPxhJUxaIP3HF4Yzy3x/uAlL8g8FStHzBiYSD
         Ye/mMQRNr5FCfvEmjaQV/rW3lA70NOE5lr9OJIiWSnpmKIi1VuCAW/UvU/e4tNIRdAoY
         cPUHTlG2obIZMFJ9VodCSgdFTWZJILOqed7b9qsmg5B5SppdKsaX9KuBfSwwAkNw2Hp2
         w+18JfqE6YcG/0X9ZXpSnHOd/MKexw9L5cL7YWtuqQ+kR0fUN7IqDow7GQZannVWWKy2
         JOk6TSmTVlQatcDRXhoWPE63dhsYYmT/TEPLH3OA+5xmzNqZo/QaagMwlS+3WKMMy0CJ
         F3yw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IvvmINHcQTtzAeVee4xx+lrCdNbbJk+NKIXQkn3qksSmAjZVQ
	47TmHqxoJBDWvHWmYSj1Zr8=
X-Google-Smtp-Source: ABdhPJwkKFlwgZhQVpBcYqLxrpTSdkBEj7IHWxaJBjFCc2XnDfraiGupgd6qfkHQ4BCvPgKHxwHPwA==
X-Received: by 2002:ac2:5462:: with SMTP id e2mr8325445lfn.552.1605104063538;
        Wed, 11 Nov 2020 06:14:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b5b7:: with SMTP id f23ls2823489ljn.2.gmail; Wed, 11 Nov
 2020 06:14:22 -0800 (PST)
X-Received: by 2002:a2e:5750:: with SMTP id r16mr1694925ljd.61.1605104062467;
        Wed, 11 Nov 2020 06:14:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605104062; cv=none;
        d=google.com; s=arc-20160816;
        b=Q+ci96wjY9Ch2WPkXNsjJE1HxtiTfiQ699QDqmDz1JesyL9aAptR0xFvx1HaD4U3hJ
         zKCV6crcnlkgeu2mJdKagtP3PKoIlu7AxogCSrV2H67gpNmfU/XW1ZrbvFtw0dxZRHcR
         x4EJbQnaL/NjHnMB+nMQtCFIKDcmuGCNlVWCc/775Z6Gik2N+v6ci4zlM2nrRQodiK74
         hrtsbPYWEHfathpJpxpLCdsd8tg0louDkUUJLUdSAyUkXHxByeinCdv3yH7gREUSUBhf
         V9wU5673yej8xIUUgheqhMKcXAY4+mY6IcGySXE8w5MhyTlgxKv0Ecgo5txstFEXpJZ0
         Kk8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=qTVF6WSgHcUieshAQb3iPJZgI3CymhUQhH/xYHebvvw=;
        b=plx/R53i5dWiSMCXqV7nb6Ro6H/FZ5pPpGUJVS/LF7ivLq57Zwv2g5wRIG9wnAcqtV
         AhSsL4xtTHDgNpG+sdvAqtYRSPJDro4Pr/dnjznJ+NqvWMzaptcvXWZ348CEbJCFqBP6
         y17r/bCKnVp0o4Db9gikhZxjzHEWu8BX10x21lgJd0M1zC9FkxBeG5hoFYVCiI9lUKGc
         QBcNAHpUXAth5axQaP50kbgX/REuV7wCuYCm23AwGLTWrq28hPjCbrRo/YnF7o7DZaqX
         0RaJo+3GTS2j0/y7YYfzDhbst5LQuwHDDNXZattq78gD6CDxXiRjkA+eOry/VxmnPyWe
         lOMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id s15si87977ljo.2.2020.11.11.06.14.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 11 Nov 2020 06:14:22 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 197971F457CD
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann
 <arnd@arndb.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Russell King
 <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>, Collabora
 Kernel ML <kernel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
In-Reply-To: <CAKwvOd=QrU6rCQ4_Ji=XsskPovOSXpk0NkjTqVjLijw1-CZ17Q@mail.gmail.com>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com>
 <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com>
 <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
 <871rh2i9xg.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA+mnzgDid_w@mail.gmail.com>
 <87sg9ghil5.fsf@collabora.com>
 <CAKwvOd=QrU6rCQ4_Ji=XsskPovOSXpk0NkjTqVjLijw1-CZ17Q@mail.gmail.com>
Date: Wed, 11 Nov 2020 16:15:59 +0200
Message-ID: <87lff8gesg.fsf@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227
 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On Tue, 10 Nov 2020, Nick Desaulniers <ndesaulniers@google.com> 
wrote:
> On Tue, Nov 10, 2020 at 3:54 PM Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> On Tue, 10 Nov 2020, Nick Desaulniers <ndesaulniers@google.com> 
>> wrote: 
>> > On Mon, Nov 9, 2020 at 11:51 AM Adrian Ratiu 
>> > <adrian.ratiu@collabora.com> wrote: 
>> >> 
>> >> On Fri, 06 Nov 2020, Nick Desaulniers 
>> >> <ndesaulniers@google.com> wrote: 
>> >> > +#pragma clang loop vectorize(enable) 
>> >> >         do { 
>> >> >                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0]; 
>> >> >                 p1[1] ^= p2[1] ^ p3[1] ^ p4[1] ^ p5[1]; 
>> >> > ``` seems to generate the vectorized code. 
>> >> > 
>> >> > Why don't we find a way to make those pragma's more 
>> >> > toolchain portable, rather than open coding them like I 
>> >> > have above rather than this series? 
>> >> 
>> >> Hi again Nick, 
>> >> 
>> >> How did you verify the above pragmas generate correct 
>> >> vectorized code?  Have you tested this specific use case? 
>> > 
>> > I read the disassembly before and after my suggested use of 
>> > pragmas; look for vld/vstr.  You can also add 
>> > -Rpass-missed=loop-vectorize to CFLAGS_xor-neon.o in 
>> > arch/arm/lib/Makefile and rebuild arch/arm/lib/xor-neon.o 
>> > with CONFIG_BTRFS enabled. 
>> > 
>> >> 
>> >> I'm asking because overrulling the cost model might not be 
>> >> enough, the only thing I can confirm is that the generated 
>> >> code is changed, but not that it is correct in any way. The 
>> >> object disasm also looks weird, but I don't have enough 
>> >> knowledge to start debugging what's happening within 
>> >> LLVM/Clang itself. 
>> > 
>> > It doesn't "look weird" to me. The loop is versioned based on 
>> > a comparison whether the parameters alias or not. There's a 
>> > non-vectorized version if the parameters are equal or close 
>> > enough to overlap.  There's another version of the loop 
>> > that's vectorized.  If you want just the vectorized version, 
>> > then you have to mark the parameters as __restrict qualified, 
>> > then check that all callers are ok with that. 
>> > 
>> 
>> Thank you for the explanation, that does make sense now. I'm 
>> just a compiler optimization noob, sorry. All your help is much 
>> appreciated. 
> 
> Don't worry about it; you'll get the hang of it in no time, just 
> stick with it. 
> 
>> 
>> >> 
>> >> I also get some new warnings with your code [1], besides the 
>> >> previously 'vectorization was possible but not beneficial' 
>> >> which is still present. It is quite funny because these two 
>> >> warnings seem to contradict themselves. :) 
>> > 
>> > From which compiler?  ``` $ clang 
>> > -Wpass-failed=transform-warning -c -x c /dev/null warning: 
>> > unknown warning option '-Wpass-failed=transform-warning'; did 
>> > you mean '-Wprofile-instr-missing'? 
>> > [-Wunknown-warning-option] ``` 
>> 
>> I'm using Clang 10.0.1-1 from the Arch Linux repo. 
>> 
>> In the LLVM sources that transform-warning appears to be 
>> documented under 
>> llvm-10.0.1.src/docs/Passes.rst:1227:-transform-warning 
>> 
>> Here's a build log: http://ix.io/2DIc 
>> 
>> I always get those warnings with the pragma change you 
>> suggested, even on clean builds on latest linux-next. 
>> 
>> I looked at the Arch PKGBUILD and they don't appear to do 
>> anything special other than patching to enable SSP and PIE by 
>> default (eg llvm bug 13410). 
> 
> Ah, custom builds of LLVM.  Grepping for transform-warning in 
> LLVM's sources, I can indeed see such a pass. I'm curious 
> whether Arch is turning on that pass by default or if you 
> manually enabled -Wpass-failed=transform-warning in the 
> Makefile?  Maybe I need to do an assertions enabled build of 
> LLVM or a debug build. Reading through llvm/docs/Passes.rst and 
> llvm/docs/TransformMetadata.rst, it sounds like this should be 
> triggered when a "forced optimization has failed."  So I wonder 
> what's the missing variable between it working for me, vs 
> warning for you?

I did not build clang myself, just did "pacman -S clang" to get 
the official distro binary package. Here's the PKGBUILD they used, 
I'm sending the commit link because recently clang 11 was upgraded 
to.

I also tested clang 11.0.0 where I get the same warnings / 
remarks.

https://github.com/archlinux/svntogit-packages/blob/8ff1bb4e4be5c6e5bede60c6b259a89f0cee6e6a/trunk/PKGBUILD
 
> 
> Godbolt seems to agree with me here: 
> https://godbolt.org/z/Wf6YKv.  Maybe related to the "New Pass 
> Manager" ... digging into that... 
> 
>> 
>> > 
>> > The pragma is clang specific, hence my recommendation to wrap 
>> > it in an #ifdef __clang__. 
>> > 
>> 
>> Yes, I understand that. :) 
>> 
>> >> 
>> >> At this point I do not trust the compiler and am inclined to 
>> >> do 
>> > 
>> > Nonsense. 
>> > 
>> >> like was done for GCC when it was broken: disable the 
>> >> optimization and warn users to upgrade after the compiler is 
>> >> fixed and confirmed to work. 
>> >> 
>> >> If you agree I can send a v2 with this and also drop the GCC 
>> >> pragma as Arvind and Ard suggested. 
>> > 
>> > If you resend "this" as in 2/2, I will NACK it.  There's 
>> > nothing wrong with the cost model; it's saying there's little 
>> > point in generating the vectorized version because you're 
>> > still going to need a non-vectorized loop version anyways. 
>> > Claiming there is a compiler bug here is dubious just because 
>> > the cost models between two compilers differ slightly. 
>> 
>> Ok, so that "remark" from the compiler is safe to ignore. 
> 
> Are you always seeing it when building with the pragma's added, 
> no change to CFLAGS_xor-neon.o in arch/arm/lib/Makefile? 
> 

No, I have to modify CFLAGS_xor-neon.o to see the remarks. If I do 
a build with just the pragma change I only always get the 
warnings, not remarks.

Here's a more complete log with -Rpass-missed='.*' in the 
Makefile, maybe the other remarks in there will help shed some 
light.

http://ix.io/2DMl

>> 
>> > 
>> > Resend the patch removing the warning, remove the GCC pragma, 
>> > but if you want to change anything here for Clang, use 
>> > `#pragma clang loop vectorize(enable)` wrapped in an `#ifdef 
>> > __clang__`. 
>> > 
>> 
>> Thanks for making the NACK clear, so the way forward is to 
>> either use the pragma if I can figure out the new 'loop not 
>> vectorized' warning (which might also be a red herring) or just 
>> leave Clang as is. :) 
> 
> Yes, though additionally Arvind points out that this code is 
> kind of curious if there was overlap; maybe the parameters 
> should just be restrict-qualified. 
>

For now I think I'll just re-send the GCC changes and leave the 
Clang optimization as is, until we better understand what's 
happening and what's the best way to enable it.

>>
>> >>
>> >> Kind regards,
>> >> Adrian
>> >>
>> >> [1]
>> >> ./include/asm-generic/xor.h:11:1: warning: loop not vectorized:
>> >> the optimizer was unable to perform the requested transformation;
>> >> the transformation might be disabled or specified as part of an
>> >> unsupported transformation ordering
>> >> [-Wpass-failed=transform-warning] xor_8regs_2(unsigned long bytes,
>> >> unsigned long *p1, unsigned long *p2)
>
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87lff8gesg.fsf%40collabora.com.
