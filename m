Return-Path: <clang-built-linux+bncBCU4TIPXUUFRB7FU6CAAMGQEDRAUTOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1629C30F70A
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 17:02:06 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id x4sf3725897ybj.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 08:02:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612454525; cv=pass;
        d=google.com; s=arc-20160816;
        b=EsUaYJ8vEIg9mYXRvg6dPAVcgw0+/P/4rKdxgZ3UTMEfTpAYG9IbMKAR+ikR0+ZkP2
         ZsopaJIhG8Zzgr2kUNiQU35L1cmiDQj5q/2DRwi15K8s6HSRrmFBrquY5x9+/C+AFvId
         3VHR++eC2btGyjNoBDmC6m71UyEmKPZO/aVuq07ow+oDc0vDAvGzJzw4AYTt2Yh9MO5e
         SRguH6AJxIj9363JBYXUkXqNoPMTo1Af2xWAk3HLrCWgq/SVPx1B+yVW7QiazvtkyyXa
         5lL0NGfy3ff3tu3BEGayQaU41PJgwKR5UTcbMBIkM5mn6uM+haEjaDjC1TcesXqMrtb2
         lDWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=YBrCkjxbP4vKQkC9PNuHcvxVUR6FxemOaDTH+rFRLT4=;
        b=KfRk0lWSkaNiZho1uTOvLDK2vA6rzebeqwlqCDZzSFH9vyOyraxW7hHgh1iey13lDx
         cY3UuC3GVExBK2d58/rbRLagn6T3A7HCkPn8seysUId4WitK8odXGY9VXvLU/ne55eHP
         4I9W+wl0tmzBw4dxjurVEZojgOoJujDrEtwY2tYiXu08ESykO1fF+8Rz3ZrEfD2vppfJ
         SffCGtsERdJMX9F7zvpBc+BSNEF6FdsDLCTPvbc+rTOeSZ36Q2gO7g10+U+rwwZGPnEp
         GfAGWBbZoU4lnA2IwFzSQjvUgK92PRdCyW0EJG7ZBaLjZrkSxPtdglfBkVvvxiFW/coS
         iINA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ORS9NMx8;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YBrCkjxbP4vKQkC9PNuHcvxVUR6FxemOaDTH+rFRLT4=;
        b=ETNzNu+/dsHFXW1dWyfnQZJdsccZBebaGIVOeP5K9xupv9tXZEkFOOajFGOLZA1J2L
         1cXGJq7vk3SbBhaYllOLHEZCrFnPMtQSHXvvZ8SGh7alBZDfpQsCHAWnhDrrW4aC4dbU
         VBOsfFhFIQ17ifHs/wImh8Gmy2BsGJFBSCXM9eu4rJkOW+jGVZiSdjJyarnc3wypC1pl
         ZPG02pFTdqVG4YfoiA1yoNVhYYkRy/VIJJY0bygMjpU2PK3GxY6hsaaOxQtx9uv5vzmP
         LUxVDps9qJdNqw3PxGRgqkxgYx5YMp+xH2ccmHotEVydDr80BewWzdxgxEN4MyNiH/V1
         RfUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YBrCkjxbP4vKQkC9PNuHcvxVUR6FxemOaDTH+rFRLT4=;
        b=quZXggCpyu5B1UVZlKygpwP+zZtJytlbQYlgKy84SiZIbV0ks+snMoSElarUZhsSAy
         SivjjUBfe2tjH1drQuBc8oe34F2OUZ54BqsMY0jPad2h3DRFgpDAINTiM4W7tiFWDg0Y
         6P/FnKA6pU4GbcOQeXvz2T/TXquTfTKjqVDZNs7nFi+Y2aD6q6o+ocBp5z1Kz2on3SdE
         bGLfegDgQ0O07B8VupK5QBsL5ae0L/YXLiTl3X6VCSxQl8hzmz/RpSl0jKO3Mw+06tQn
         MnIsVMHaO1njhJTC6sR1gxl4zD/E6ZbKNdlrsYQtgEx63R2wymDDKYv3pUEyPXXUjEPt
         ltQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AQqm+P+IL9uCk19AzNqs3EneOdyMWkwBpQWrtPVWMgzTT52dd
	XjJuKwjG/d/Cou0SNhYkkD4=
X-Google-Smtp-Source: ABdhPJzvHDpg8PgjaD2uQEZQosObBIMIYwX8tj34XFguNfYhn5HzlI6UMqybQ4xXMOVXG3EqI/rufw==
X-Received: by 2002:a5b:111:: with SMTP id 17mr13050720ybx.324.1612454524986;
        Thu, 04 Feb 2021 08:02:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:af4a:: with SMTP id c10ls2932570ybj.1.gmail; Thu, 04 Feb
 2021 08:02:04 -0800 (PST)
X-Received: by 2002:a25:20c2:: with SMTP id g185mr13394027ybg.31.1612454524551;
        Thu, 04 Feb 2021 08:02:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612454524; cv=none;
        d=google.com; s=arc-20160816;
        b=FLTSFs3BVWobgTBmc9r670yum379LM5Fjo7HJfbAONKDFOMbjJUimbFTklPuo6KwTw
         sAEC00/617wa57oEguVuNlmtzdmuJNXn1lnjRE/mTWcRFEBxMhn5CvUJYR+qZOhuRTg9
         GlT2lw8YqLaH3PG1puasJfZ01wO00gCIRDdc/Sh5vbF7MgHk03cIiB4FkHu7ul+7kVQ3
         3TIplXUiKW2HNDoFlylmlmLPE65ONNCfntK5M+ui5kv47q6fguruonExCWXz9+FR1l3q
         Zx+lRIHMfIHPqwVfDvdkkQoeY57h1rHdgGcmRSIPpkR3R6nB2gyTsUEmf+ANDg/0PXpq
         y3KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Pl32Dg96kz5J/NfWEmpnbbaXzkDcmi+h6Me7sKqRSTM=;
        b=fu2z9k7mNrjU+lBTDKZCsMgR3ICyYZ7ZvQXQ0qU1Tm+ffaKvTwYpvFSndg2RyK64IE
         5Bq4m6A4LuMRaanNaZ8o0iaFtJAdb1LZhhKKNgw1MDC+VmVPJ7T13mbv6BQIuPPzN1WU
         3C7TUriaP10XG1bs52CcUuntb04nHaKJEsu4yJgQW7AEF4ibIR6sGsw8pPv98Dkh5FMj
         KL48H9NaaKojg5FLyNEi3mNR69n7ZorY5JrezBvd0gid8tCyVJejl02RX0m2dgqYmpug
         Dfwb7GY7T/nAnqXfy9h2Kdi/VaviVORX0X/DpkEL/U6Goh8PHou3h1Efu0HzUVvl2wF9
         26Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ORS9NMx8;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c10si356329ybf.1.2021.02.04.08.02.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 08:02:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 74EDA64F72
	for <clang-built-linux@googlegroups.com>; Thu,  4 Feb 2021 16:02:03 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id w8so4220470oie.2
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 08:02:03 -0800 (PST)
X-Received: by 2002:aca:b6c1:: with SMTP id g184mr56997oif.47.1612454522711;
 Thu, 04 Feb 2021 08:02:02 -0800 (PST)
MIME-Version: 1.0
References: <601b773a.1c69fb81.9f381.a32a@mx.google.com> <6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com>
 <CAMj1kXHMw5hMuV5VapcTeok3WJu1B79=Z3Xho0qda0nCqBFERA@mail.gmail.com>
 <20210204100601.GT1463@shell.armlinux.org.uk> <CAMj1kXFog3=5zD7+P=cRfRLj1xfD1h1kU58iifASBSXkRe-E6g@mail.gmail.com>
 <c0037472-75c8-6cf9-6ecf-e671fce9d636@collabora.com> <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
 <CAMj1kXEshuPTrKvN4LpXQMftHJG+yH8+fgU7uVc6GYn0qd8-xA@mail.gmail.com> <7c685184-8688-9319-075b-66133cb0b0c3@collabora.com>
In-Reply-To: <7c685184-8688-9319-075b-66133cb0b0c3@collabora.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 4 Feb 2021 17:01:51 +0100
X-Gmail-Original-Message-ID: <CAMj1kXH_CCYyd5zNVRL=KWpBXtsKamV7Bfg=O1YWBJL0f_eXLQ@mail.gmail.com>
Message-ID: <CAMj1kXH_CCYyd5zNVRL=KWpBXtsKamV7Bfg=O1YWBJL0f_eXLQ@mail.gmail.com>
Subject: Re: next/master bisection: baseline.login on rk3288-rock2-square
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Nicolas Pitre <nico@fluxnic.net>, 
	"kernelci-results@groups.io" <kernelci-results@groups.io>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ORS9NMx8;       spf=pass
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

On Thu, 4 Feb 2021 at 16:53, Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> On 04/02/2021 15:42, Ard Biesheuvel wrote:
> > On Thu, 4 Feb 2021 at 12:32, Guillaume Tucker
> > <guillaume.tucker@collabora.com> wrote:
> >>
> >> On 04/02/2021 10:33, Guillaume Tucker wrote:
> >>> On 04/02/2021 10:27, Ard Biesheuvel wrote:
> >>>> On Thu, 4 Feb 2021 at 11:06, Russell King - ARM Linux admin
> >>>> <linux@armlinux.org.uk> wrote:
> >>>>>
> >>>>> On Thu, Feb 04, 2021 at 10:07:58AM +0100, Ard Biesheuvel wrote:
> >>>>>> On Thu, 4 Feb 2021 at 09:43, Guillaume Tucker
> >>>>>> <guillaume.tucker@collabora.com> wrote:
> >>>>>>>
> >>>>>>> Hi Ard,
> >>>>>>>
> >>>>>>> Please see the bisection report below about a boot failure on
> >>>>>>> rk3288 with next-20210203.  It was also bisected on
> >>>>>>> imx6q-var-dt6customboard with next-20210202.
> >>>>>>>
> >>>>>>> Reports aren't automatically sent to the public while we're
> >>>>>>> trialing new bisection features on kernelci.org but this one
> >>>>>>> looks valid.
> >>>>>>>
> >>>>>>> The kernel is most likely crashing very early on, so there's
> >>>>>>> nothing in the logs.  Please let us know if you need some help
> >>>>>>> with debugging or trying a fix on these platforms.
> >>>>>>>
> >>>>>>
> >>>>>> Thanks for the report.
> >>>>>
> >>>>> Ard,
> >>>>>
> >>>>> I want to send my fixes branch today which includes your regression
> >>>>> fix that caused this regression.
> >>>>>
> >>>>> As this is proving difficult to fix, I can only drop your fix from
> >>>>> my fixes branch - and given that this seems to be problematical, I'm
> >>>>> tempted to revert the original change at this point which should fix
> >>>>> both of these regressions - and then we have another go at getting rid
> >>>>> of the set/way instructions during the next cycle.
> >>>>>
> >>>>> Thoughts?
> >>>>>
> >>>>
> >>>> Hi Russell,
> >>>>
> >>>> If Guillaume is willing to do the experiment, and it fixes the issue,
> >>>
> >>> Yes, I'm running some tests with that fix now and should have
> >>> some results shortly.
> >>
> >> Yes it does fix the issue:
> >>
> >>   https://lava.collabora.co.uk/scheduler/job/3173819
> >>
> >> with Ard's fix applied to this test branch:
> >>
> >>   https://gitlab.collabora.com/gtucker/linux/-/commits/next-20210203-ard-fix/
> >>
> >>
> >> +clang +Nick
> >>
> >> It's worth mentioning that the issue only happens with kernels
> >> built with Clang.  As you can see there are several other arm
> >> platforms failing with clang-11 builds but booting fine with
> >> gcc-8:
> >>
> >>   https://kernelci.org/test/job/next/branch/master/kernel/next-20210203/plan/baseline/
> >>
> >> Here's a sample build log:
> >>
> >>   https://storage.staging.kernelci.org/gtucker/next-20210203-ard-fix/v5.10-rc4-24722-g58b6c0e507b7-gtucker_single-staging-33/arm/multi_v7_defconfig/clang-11/build.log
> >>
> >> Essentially:
> >>
> >>   make -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
> >>
> >> I believe it should be using the GNU assembler as LLVM_IAS=1 is
> >> not defined, but there may be something more subtle about it.
> >>
> >
> >
> > Do you have a link for a failing zImage built from multi_v7_defconfig?
>
> Sure, this one was built from a plain next-20210203:
>
>   http://storage.staging.kernelci.org/gtucker/next-20210203-ard-fix/v5.10-rc4-24722-g58b6c0e507b7-gtucker_single-staging-33/arm/multi_v7_defconfig/clang-11/zImage
>
> You can also find the dtbs, modules and other things in that same
> directory.
>
> For the record, here's the test job that used it:
>
>   https://lava.collabora.co.uk/scheduler/job/3173792
>

Thanks.

That zImage boots fine locally. Unfortunately, I don't have rk3288
hardware to reproduce.

Could you please point me to the list of all the other platforms that
failed to boot this image?

To be honest, I am slightly annoyed that a change that works fine with
GCC but does not work with Clang version

11.1.0-++20210130110826+3a8282376b6c-1~exp1~20210130221445.158

(where exp means experimental, I suppose) is the reason for this
discussion, especially because the change is in asm code. Is it
possible to build with Clang but use the GNU linker?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXH_CCYyd5zNVRL%3DKWpBXtsKamV7Bfg%3DO1YWBJL0f_eXLQ%40mail.gmail.com.
