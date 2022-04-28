Return-Path: <clang-built-linux+bncBCU4TIPXUUFRB67WVKJQMGQEZVGMALQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7C351395E
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 18:06:20 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id g6-20020a19ac06000000b00464f8022af9sf2222657lfc.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Apr 2022 09:06:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651161979; cv=pass;
        d=google.com; s=arc-20160816;
        b=FoWWxKBKyW3HEKwiA+epMP5B4BwMi3n0FC+L7vWnF4Ps7F0GhP5lKDRaLcDZ/pr0Mr
         ZvdIlmcaENDcPEL8znIg0hh+XAsNObX2rdAFN7P1yU7L/kH/0mnDhkgWsSrONofvmh19
         HkX+hSnQie9JZarYv7sPAUsoR7RJqB6GARu00EAOD/R7R83LV0SOXGiO/7vaafXzhUY5
         SzuzYs4lor7LEkLrj2Cd07hCR0xVpIvM61g++wtr6exWF4DeeVuj1UHlADK9UwZ8tPYp
         Iia7fH97FdZSYeDPxw/uExX6rBEamv8GvR3CVSEXfD22rjtc6HV1RBC9z2+jdZKP03mw
         bUaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=3if0yHAXS/tg4k+MxXpVBcJpEmH8TgXA+q4ss6mXBKk=;
        b=qMGS+l/ZDYU+I3zf5poW3am7fIOb4V3WpA85BhEzH05vR4N31TDl1WxrIQHSYn8Yiw
         Dx/Iv5bzogBcLT0RCBjfF+MRBzNLXa0QUPqrSKHZ9cG/eBRiqoX0ZNoX4b6IZluG7ccp
         XHe90qXjy7XfMUjiohrOoIw9vgrdXs+D4IA7+GuiyV7SX8kAlVhAC7dpRPMPyGcamSX6
         j3RKMgtjBH7LgsZzQjQvjZNHEzBxm7whZRpJJqVL+41p13d9mRRE819JSWZCNfOsRi34
         Yl/BRoMyLmRDxMpJIMJm7Y2MJXMlAikpyErZJhk6JwwgzwXvOB2HrihDPLAuuPlIVBJJ
         XdxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ao5RZcgI;
       spf=pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3if0yHAXS/tg4k+MxXpVBcJpEmH8TgXA+q4ss6mXBKk=;
        b=buWsoLSu+WV0weauJaW1EhVwUNTgtwrYsx2SnnxpaSI0vCeqDYT/qLkZfcMc4zY4Cp
         3nnco8u30KyS9JTvcto7GKxcc7DaZOxtiF6dBZ7Ny2tnOffnEpeOOIezeIvARs/iPyyU
         5lobYtVRrE25p+jMv4+CQveYfnvJ9pT0zGGTkX9a4sPiUHBQqAz0abJO2detBvIx3H/S
         CNVQYmuFJZB+1iLuXwsGqoWfwcY7P9iCTSGomyPwBEGBsNgcLZeZP5n+u/u9QT98JtEW
         Gwm1nvmQzzy/TG6m5d+1AHQZul+uGjBtWqkk78d5M7pRlvbmId2PHwbDeCiRPALIZg8E
         b5kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3if0yHAXS/tg4k+MxXpVBcJpEmH8TgXA+q4ss6mXBKk=;
        b=NAFh0gUNnsz3vZH2Efxb0HxdSXva+jFRisDm/jygHbOpKTRxfdxX+kSgjtpvFnd3cO
         +iAZvp34juXuus6bGzKv0FUsb8uatGMYylBKl6ARcN1mL1Dp5Vu7CZnfJmjudLCFavQc
         IK5SW2aRuYHsY7bLpNbD48rmJ2ilkjtseqAFzMnK3pshT5lKIjsrnkyKSQp10IvY0clI
         fAGXIgOse4UzoJay3EHm2dkiHHjEAtBZgyafHfchSXIZg9MZHx1XnU7RK4Hk4LQByZQ3
         4rEfTDmQh8Lz6b4qstmeBIQ5ktFNTciZo5ooJ9c/t9kqKCjKEOhdy8ct+zhGSC/zF6Vk
         7X+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532i3vIPbnkyICKI5GUhow/Ene7H/idfqSlL16Z6dcapOVm5J4ti
	lfibcSmW6ObI62ditSTQJ0w=
X-Google-Smtp-Source: ABdhPJwLT6Z3JhA1VJIzZsiF5eTqbP38+3BDJvBQ28AhvHt/envi7KFy+o09jC2kqhBQLdKuZzqkBA==
X-Received: by 2002:a05:6512:12d3:b0:472:377a:dccc with SMTP id p19-20020a05651212d300b00472377adcccmr3006133lfg.39.1651161979468;
        Thu, 28 Apr 2022 09:06:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf11:0:b0:24a:fdc1:7af4 with SMTP id c17-20020a2ebf11000000b0024afdc17af4ls87079ljr.1.gmail;
 Thu, 28 Apr 2022 09:06:17 -0700 (PDT)
X-Received: by 2002:a2e:bf22:0:b0:247:da0b:e091 with SMTP id c34-20020a2ebf22000000b00247da0be091mr21907794ljr.489.1651161977070;
        Thu, 28 Apr 2022 09:06:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651161977; cv=none;
        d=google.com; s=arc-20160816;
        b=hV0HNteOKNHf6/osjW6avPFMIPx+Nzlh5gOP+6xm5J9fNw2uImWTSXuc2W2vvqIvBU
         MkjkhGq7cjYQtVEbaK+RjXrcmlP7lQki1uXSEgiVFL57qkHI3OlUQyy9MhYhME/Acxeq
         CG7CfiaS5QetF0u1FOh3JLx227VVZFVORc/M8+o0o6yShuCsln8/9zlmmUEypcoGb1hv
         oCtt+Zu251o9ZWdlJ917q9tP33kd7xvFmZLSASTtabZOYKQrsels7yMthv3SNcE+FSvw
         w0CUuD6DhvynrJgocrPgSBBUkIni5/r6zENA46Z98cFNcb+sIsUUCWVbt5IfdAJWO5Cc
         zY3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SZJjdKBhazFNYIOwz1+CMmLaeEntR6P5D6NQqi31gQQ=;
        b=rDSVtMAuYTYVH7+mhJxSkz2Id80FdB5vMViXb5Sm1snCkya5PI0ZcuYe4PoLWd3qbE
         VRgeVFv5zcS4POztbRq2DP77xMHJL+CoHPJkWp6q9iy+h6vDblJ12MPdw+90RtS7MbF6
         Q00rTeGgnnNXYAII7uJ4JYhOBsNdsQwDSSjPR4OAnGxS2KgNx1bxAyr22xTmcggKd1nO
         C8Tuu35WC1xAd+DWv/deK3Zy5sKZPD1ID7WxIVCDkdwy6EXHWFqGKKuGrL9ZVVYFltAj
         iOWSOYM6FBe1RkOc4etggFosOUlnHNIve7FPVTb0SBvuPjK87BENF81B9w7c0WUkEzKZ
         bF2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ao5RZcgI;
       spf=pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id z14-20020a0565120c0e00b004723ec9fc4asi65099lfu.0.2022.04.28.09.06.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Apr 2022 09:06:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 942CDB82E56
	for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 16:06:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BF42C385B2
	for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 16:06:15 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id r1so5624122oie.4
        for <clang-built-linux@googlegroups.com>; Thu, 28 Apr 2022 09:06:15 -0700 (PDT)
X-Received: by 2002:a05:6808:308a:b0:323:78d:e7df with SMTP id
 bl10-20020a056808308a00b00323078de7dfmr18297715oib.228.1651161974483; Thu, 28
 Apr 2022 09:06:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220427171241.2426592-1-ardb@kernel.org> <20220427171241.2426592-2-ardb@kernel.org>
 <YmpjoNLqKA+prhRr@FVFF77S0Q05N>
In-Reply-To: <YmpjoNLqKA+prhRr@FVFF77S0Q05N>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 28 Apr 2022 18:05:54 +0200
X-Gmail-Original-Message-ID: <CAMj1kXE6pkXALui3vLBcQ5dN+SMBwSQs2bZvjOh56J5ugTY85g@mail.gmail.com>
Message-ID: <CAMj1kXE6pkXALui3vLBcQ5dN+SMBwSQs2bZvjOh56J5ugTY85g@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] arm64: jump_label: use more precise asm constraints
To: Mark Rutland <mark.rutland@arm.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <nathan@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ao5RZcgI;       spf=pass
 (google.com: domain of ardb@kernel.org designates 145.40.68.75 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 28 Apr 2022 at 11:51, Mark Rutland <mark.rutland@arm.com> wrote:
>
> Hi Ard,
>
> On Wed, Apr 27, 2022 at 07:12:40PM +0200, Ard Biesheuvel wrote:
> > In order to set bit #0 of the struct static_key pointer in the the jump
> > label struct
>
> I think you mean jump_entry::key here?
>

Yes, which points to a struct static_key - I'll clarify this in v2.

> > , we currently cast the pointer to char[], and take the
> > address of either the 0th or 1st array member, depending on the value of
> > 'branch'. This works but creates problems with -fpie code generation:
> > GCC complains about the constraint being unsatisfiable, and Clang
> > miscompiles the code in a way that causes stability issues (immediate
> > panic on 'attempt to kill init')
>
> I couldn't reproduce that stability issue locally playing with Clang 12.0.0 and
> 14.0.0 (and just applying patch 2 of this series atop v5.18-rc1). I built
> defconfig and booted that under a QEMU HVF VM on an M1 Mac.
>
> FWIW, I used the binaries from llvm.org and built with:
>
>   // magic script to add the toolchains to my PATH
>   usellvm 12.0.0 make LLVM=1 ARCH=arm64 defconfig
>   usellvm 12.0.0 make LLVM=1 ARCH=arm64 -j50 Image
>
> ... and QEMU isn't providing entropy to the guest, so it's possible that:
>
> * This only goes wrong when randomizing VAs (maybe we get a redundant
>   relocation, and corrupt the key offset?).
>
> * This is specific to the LLVM binaries you're using.
>
> * This is down to a combination of LLVM + binutils, if you're not building with
>   LLVM=1?
>
>   I had a go with Clang 12.0.0 and the kernel.org crosstool GCC 11.1.0
>   release's binutils. I made the constraint "Si" but left the indexing logic,
>   and that still worked fine.
>

Yeah, as I reported in another email, I failed to reproduce this, and
I experienced some other issues yesterday due to the fact that llvm-nm
and clang/lld on my system were out of sync. So I think this was a
false positive.

> > So instead, pass the struct static_key reference and the 'branch'
> > immediate individually, in a way that satisfies both GCC and Clang (GCC
> > wants the 'S' constraint, whereas Clang wants the 'i' constraint for
> > argument %0)
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  arch/arm64/include/asm/jump_label.h | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/jump_label.h b/arch/arm64/include/asm/jump_label.h
> > index cea441b6aa5d..f741bbacf175 100644
> > --- a/arch/arm64/include/asm/jump_label.h
> > +++ b/arch/arm64/include/asm/jump_label.h
> > @@ -23,9 +23,9 @@ static __always_inline bool arch_static_branch(struct static_key *key,
> >                "      .pushsection    __jump_table, \"aw\"    \n\t"
> >                "      .align          3                       \n\t"
> >                "      .long           1b - ., %l[l_yes] - .   \n\t"
> > -              "      .quad           %c0 - .                 \n\t"
> > +              "      .quad           %c0 - . + %1            \n\t"
> >                "      .popsection                             \n\t"
> > -              :  :  "i"(&((char *)key)[branch]) :  : l_yes);
> > +              :  :  "Si"(key), "i"(branch) :  : l_yes);
>
> Nice! I like that this clearly separate the "set bit 0" portion out, and IMO
> that's much clearer than the array indexing.
>
> Thanks,
> Mark.
>
> >
> >       return false;
> >  l_yes:
> > @@ -40,9 +40,9 @@ static __always_inline bool arch_static_branch_jump(struct static_key *key,
> >                "      .pushsection    __jump_table, \"aw\"    \n\t"
> >                "      .align          3                       \n\t"
> >                "      .long           1b - ., %l[l_yes] - .   \n\t"
> > -              "      .quad           %c0 - .                 \n\t"
> > +              "      .quad           %c0 - . + %1            \n\t"
> >                "      .popsection                             \n\t"
> > -              :  :  "i"(&((char *)key)[branch]) :  : l_yes);
> > +              :  :  "Si"(key), "i"(branch) :  : l_yes);
> >
> >       return false;
> >  l_yes:
> > --
> > 2.30.2
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXE6pkXALui3vLBcQ5dN%2BSMBwSQs2bZvjOh56J5ugTY85g%40mail.gmail.com.
