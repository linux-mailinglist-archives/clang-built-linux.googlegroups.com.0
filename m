Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBZFL7KAAMGQEXLLQK3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id C6535311D57
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 14:13:09 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id x11sf8655842ill.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Feb 2021 05:13:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612617188; cv=pass;
        d=google.com; s=arc-20160816;
        b=cJy9sTWgFlQciapj4a9v+jcdVQM8gr4WEe1oYxyEVGphY2tQ902c4ir3IlQjJnadub
         522aI4REsolakja6skzYOKvEF8/JyuGroodxhzx4rKcE6jR5WEm4OeeIblhnKan3pgav
         O48upBE1G++izbnm5++PFbHVSzwbDwEjR6O8D16nzUFv6E6PvtRkl4pav0NA8vSqvjIg
         pnOcdRT8+aW1VeUnanM8WlZ52M20I+djoRtUkoypEeJLHG7OGF/0i2JqY/FQT+8q9IPB
         QnMnapYiIbtKT7YYKyRud22GUwpZ28zqsIJwGKjUGddJI2aWD00/6Y+Upi3tflLY7mSf
         vLxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4Rlbz9zHUm9l8qGl3Qm5bJg/REXqnWnVgMZafcp3r1g=;
        b=o/KxCOSwcKOafIOCDM/PQ7D4zgOK8EANmja6xZcBiceVVgNOiLNrHOz5yejc4Tu5J7
         UIWsN6KQaHTl3ReMr77WAm5eOkA7Y0wXghErtboF+I6wFLuQqvScKy7ziUpfChTmrs0J
         PDyddnvI5u584lW4xnRBzv4/VOdWtfAn/BqC26XOn6PtlnHfE5lJceMQPxNGKfcuO7z8
         jJ+CUECUrQLKkgyHAvMw7mWXvxOge9ulxma27iKVa18rK9FV3yji8RCsiJ+NnWICEGam
         ZpqUt63gG/muWCjoXjGvyI3IHuxo4q+79TzrmWD6qAYaGT7sl2CeLLJJMpjvoI4kHqA3
         g22A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=h0uzWQMs;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Rlbz9zHUm9l8qGl3Qm5bJg/REXqnWnVgMZafcp3r1g=;
        b=hymS8yH5dvGbtgO50ivIrcstBb+Rvs12PXmuHWfbnbZ590b2eT/Bmne2+M6fIr8Dip
         NvN9C1+zTDZHzuGxbMmqRdPKHpRfg02VUv1VRrmPbtXJa42FQ+1nexG73J0qD3JK/WFT
         jA2I3SPSV0Vje8i55TMCpXi+UvX0kbe/ipZJF4ZQiSdoiD80EtBVHotU0jnWBYv6YG88
         L5YCuvHjQ0ale4nEOWz8VBJBrlKOOwQi3gw8+StZ+yRSbRgmWJ/ho+PUyjtYB2fekBnw
         To/17W5Rgc79dQX+Ke2lNo19N6F4kbCAUVywt14sgWoaGxiMf1iLmZ9JtmlL9HPVBAgi
         c1PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Rlbz9zHUm9l8qGl3Qm5bJg/REXqnWnVgMZafcp3r1g=;
        b=A9gvOLUVJC3KcDSmhMOi8JO/Bo5W5t0ry8eiVdv0ygR1SVNgfEjWk/y+dfjSCsy6fD
         GvTY3VK8tU3CUsDrNxccXLFw84CGvKrbgXwy+1USUvyGWDpZP0ZP0ICzbzkawDUFtqMj
         QHPh81B9oa/eeIYxvcgZKUNUQEKTrt74STNiUS/fDO34j9KGESxPYiNqg56AQN6QjBj3
         +bfn6oYk2B+BE09oEWgsK+m6S8kI6oM+1bwARqImXlPkfbSHtQXSEGyVO2RUdtbwGKy6
         QgcsAt/suJ+RRlu2lDZXqj9EVRrR6QOYxWzcSY4OK97LE8OLiDoDhes/oxG/CBt/41bS
         n5PQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kayXJ+wW1LD8AJm0v/5MBSAPLH8DG0G9d6+e/xmNL3dpOIGLI
	BBIUKFJ2gPXg5E1rIoxJhKg=
X-Google-Smtp-Source: ABdhPJy1neX6p8tbofEN3+HHEmsZD2spx5qa3GNWc2pg6UXJrDPdmz8w1QnHZ8Sh/yvDXhYYpblpiQ==
X-Received: by 2002:a05:6e02:1b8c:: with SMTP id h12mr8353324ili.254.1612617188678;
        Sat, 06 Feb 2021 05:13:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls2968518ilj.10.gmail; Sat, 06 Feb
 2021 05:13:08 -0800 (PST)
X-Received: by 2002:a05:6e02:188d:: with SMTP id o13mr7964569ilu.223.1612617188277;
        Sat, 06 Feb 2021 05:13:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612617188; cv=none;
        d=google.com; s=arc-20160816;
        b=eDsA5P0ewtmw8daP4HyWdZSwEzpZcVw4tAwIKLQHehbhW77VM4BAjEURJZvt1+B0hW
         D4/zYnLWV4uJsKJD1kXPscZVUVgZLKBijlm3jwg31pQCOJGn0+jwmDOv1+kMih3mR7RG
         WnXPCEUJcVmTktke/NRV2iUVqbNo8Yez9pRcSAiF1XejVWrflAci1+B9idm6UuGrb1Mf
         EH6kj8ArrwFpyuTr/ow1yR3KZ+ljpPJDgks7ULB/yw6LbrF0AMJjC5wHHr53di1vvHch
         3vJBEHR70lB/9heHwUFfBEfl1P7FG1RgVJ7rq7tTON1EeKrT8gU6tos8UDDeOIYK+UU6
         aSjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hUuvhVo5YH/CHpYJGqMBtoSk0ET3KVBaT2jkaAXzsF4=;
        b=p3ak87b94erak4+wd91wLlRd+25eWNVbakXqdTppph4SxmSIm+dZBvijE/S6m1Tx24
         Gc0T+sS8eVSDxfoSAF4j365nQiW4k1XnU0Y9FnNOGKpkhJVXnKXXOxZDHy5KAiEWZo3E
         vLnl4sC1kz1Rv4hBuPqW8PiScl8jSUSh36umpP+aM5UKrxQ/+aLIyHFAuD3rhAx4tuAl
         JqetKRwJlNUp206mGGOwfRqsf/aQnb8rc6U4BvEuOyKwm1rfy4sUcq/c6TwR71uSYybK
         oR4aKVFjwCo9xr7yRaa7ULzQjLu1BH6uQaI05S4s4iFYFXj8t1W6OJpAkrhcae7lABFA
         RNDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=h0uzWQMs;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y16si608593ili.3.2021.02.06.05.13.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Feb 2021 05:13:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 754F964E42
	for <clang-built-linux@googlegroups.com>; Sat,  6 Feb 2021 13:13:07 +0000 (UTC)
Received: by mail-ot1-f49.google.com with SMTP id d7so7464374otq.6
        for <clang-built-linux@googlegroups.com>; Sat, 06 Feb 2021 05:13:07 -0800 (PST)
X-Received: by 2002:a05:6830:1e2a:: with SMTP id t10mr6800021otr.90.1612617186830;
 Sat, 06 Feb 2021 05:13:06 -0800 (PST)
MIME-Version: 1.0
References: <6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com>
 <CAMj1kXHMw5hMuV5VapcTeok3WJu1B79=Z3Xho0qda0nCqBFERA@mail.gmail.com>
 <20210204100601.GT1463@shell.armlinux.org.uk> <CAMj1kXFog3=5zD7+P=cRfRLj1xfD1h1kU58iifASBSXkRe-E6g@mail.gmail.com>
 <c0037472-75c8-6cf9-6ecf-e671fce9d636@collabora.com> <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
 <CAMj1kXEshuPTrKvN4LpXQMftHJG+yH8+fgU7uVc6GYn0qd8-xA@mail.gmail.com>
 <7c685184-8688-9319-075b-66133cb0b0c3@collabora.com> <CAMj1kXH_CCYyd5zNVRL=KWpBXtsKamV7Bfg=O1YWBJL0f_eXLQ@mail.gmail.com>
 <CAKwvOd=ziPWHmBiPtW3h2VYLZ-CTMp4=aEonmMLM7c=Y0SeG1Q@mail.gmail.com>
 <20210204181216.GB2989696@localhost> <CAKwvOd=UYuKPp6rO7aWGFEsc9yLa_UCLnAL-vwqzi_5sZg7O3g@mail.gmail.com>
 <253b2987-c8e9-fcb6-c1b9-81e765c0cc2a@collabora.com> <CAMj1kXFKzEPqG5j2bn5n_3imc9aFyOEHX7CVDdwe2=ugTq=bZQ@mail.gmail.com>
 <CAMj1kXGrABn7KxSPxTo3pWJEk3fNsN-zBBHZkbVfg7gTavL_pQ@mail.gmail.com> <7ed6fae6-eee8-5751-352b-f735ffb83194@collabora.com>
In-Reply-To: <7ed6fae6-eee8-5751-352b-f735ffb83194@collabora.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 6 Feb 2021 14:12:55 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEeTH2sHPEd2P+qh3G6uzHubREVA3v6iVvo_X4iCEVGZQ@mail.gmail.com>
Message-ID: <CAMj1kXEeTH2sHPEd2P+qh3G6uzHubREVA3v6iVvo_X4iCEVGZQ@mail.gmail.com>
Subject: Re: next/master bisection: baseline.login on rk3288-rock2-square
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Russell King - ARM Linux admin <linux@armlinux.org.uk>, 
	"kernelci-results@groups.io" <kernelci-results@groups.io>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Nicolas Pitre <nico@fluxnic.net>, Linus Walleij <linus.walleij@linaro.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=h0uzWQMs;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
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

On Sat, 6 Feb 2021 at 14:10, Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> On 05/02/2021 12:05, Ard Biesheuvel wrote:
> > On Fri, 5 Feb 2021 at 09:21, Ard Biesheuvel <ardb@kernel.org> wrote:
> >>
> >> On Thu, 4 Feb 2021 at 22:31, Guillaume Tucker
> >> <guillaume.tucker@collabora.com> wrote:
> >>>
> >>> On 04/02/2021 18:23, Nick Desaulniers wrote:
> >>>> On Thu, Feb 4, 2021 at 10:12 AM Nathan Chancellor <nathan@kernel.org> wrote:
> >>>>>
> >>>>> On Thu, Feb 04, 2021 at 10:06:08AM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> >>>>>> On Thu, Feb 4, 2021 at 8:02 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >>>>>>>
> >>>>>>> On Thu, 4 Feb 2021 at 16:53, Guillaume Tucker
> >>>>>>> <guillaume.tucker@collabora.com> wrote:
> >>>>>>>>
> >>>>>>>> On 04/02/2021 15:42, Ard Biesheuvel wrote:
> >>>>>>>>> On Thu, 4 Feb 2021 at 12:32, Guillaume Tucker
> >>>>>>>>> <guillaume.tucker@collabora.com> wrote:
> >>>>>>>>>>
> >>>>>>>>>> Essentially:
> >>>>>>>>>>
> >>>>>>>>>>   make -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
> >>>>>>
> >>>>>> This command should link with BFD (and assemble with GAS; it's only
> >>>>>> using clang as the compiler.
> >>>>>
> >>>>> I think you missed the 'LLVM=1' before CC="ccache clang". That should
> >>>>> use all of the LLVM utilities minus the integrated assembler while
> >>>>> wrapping clang with ccache.
> >>>>
> >>>> You're right, I missed `LLVM=1`. Adding `LD=ld.bfd` I think should
> >>>> permit fallback to BFD.
> >>>
> >>> That was close, except we're cross-compiling with GCC for arm.
> >>> So I've now built a plain next-20210203 (without Ard's fix) using
> >>> this command line:
> >>>
> >>>     make LD=arm-linux-gnueabihf-ld.bfd -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
> >>>
> >>> I'm using a modified Docker image gtucker/kernelci-build-clang-11
> >>> with the very latest LLVM 11 and gcc-8-arm-linux-gnueabihf
> >>> packages added to be able to use the GNU linker.  BTW I guess we
> >>> should enable this kind of hybrid build setup on kernelci.org as
> >>> well.
> >>>
> >>> Full build log + kernel binaries can be found here:
> >>>
> >>>     https://storage.staging.kernelci.org/gtucker/next-20210203-ard-fix/v5.10-rc4-24722-g58b6c0e507b7-gtucker_single-staging-41/arm/multi_v7_defconfig/clang-11/
> >>>
> >>> And this booted fine, which confirms it's really down to how
> >>> ld.lld puts together the kernel image.  Does it actually solve
> >>> the debate whether this is an issue to fix in the assembly code
> >>> or at link time?
> >>>
> >>> Full test job details for the record:
> >>>
> >>>     https://lava.collabora.co.uk/scheduler/job/3176004
> >>>
> >>
> >>
> >> So the issue appears to be in the way the linker generates the
> >> _kernel_bss_size symbol, which obviously has an impact, given that the
> >> queued fix takes it into account in the cache_clean operation.
> >>
> >> On GNU ld, I see
> >>
> >>    479: 00065e14     0 NOTYPE  GLOBAL DEFAULT  ABS _kernel_bss_size
> >>
> >> whereas n LLVM ld.lld, I see
> >>
> >>    433: c1c86e98     0 NOTYPE  GLOBAL DEFAULT  ABS _kernel_bss_size
> >>
> >> and adding this value may cause the cache clean to operate on unmapped
> >> addresses, or cause the addition to wrap and not perform a cache clean
> >> at all.
> >>
> >> AFAICT, this also breaks the appended DTB case in LLVM, so this needs
> >> a separate fix in any case.
> >
> > I pushed a combined branch of torvalds/master, rmk/fixes (still
> > containing my 9052/1 fix) and this patch to my for-kernelci branch
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/
> >
> > Guillaume,
> >
> > It seems there is no Clang-11 coverage there, right? Mind giving this
> > branch a spin? If this fixes the regressions, we can get these queued
> > up.
>
> That's right, Clang builds are only enabled on linux-next and
> mainline at the moment.  We could enable it on any other branch
> where it makes sense.  How about just the main defconfig for arm,
> arm64 and x86_64 on your ardb/for-kernelci branch?
>

Yes, please.

> For now I've run another set of builds with clang-11 and got the
> following test results with your branch on staging:
>
>   https://staging.kernelci.org/test/job/ardb/branch/for-kernelci/kernel/v5.11-rc6-146-g923ca344043a/plan/baseline/
>
> which are all passing.
>
> I'll reply to the thread with your patch to confirm.
>

Excellent, thanks a lot.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEeTH2sHPEd2P%2Bqh3G6uzHubREVA3v6iVvo_X4iCEVGZQ%40mail.gmail.com.
