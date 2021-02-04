Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBZNL6CAAMGQEGPN2HVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E645730F695
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 16:42:30 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id u22sf3229551iol.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 07:42:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612453349; cv=pass;
        d=google.com; s=arc-20160816;
        b=okpYxpVKHgthYCa0OQuOIhOn5PiGq0EsieJSBA1Hws0WGwVQGwWFrt5Ak4v5O243lv
         Wl4Ik0i4UofyVlb58AuLMV9yWrnSrERnYos0VeDqxiLCwklFGaXXGiwyOt/cLBWxu+TB
         EOVkXCz38QqUo/cNuAUknlNISkvw6Zv3wd3zo12sUXjoxWOe3UD9CxkyUMEa18O3NHsT
         rpwG0fml/vzi2IEXDxvtsjDBrkHV7Vah9wj4myKDXtKHraBWys1mDEAcqS6cTuS3619q
         TunCrH6pgLLYwNyfS3Qwob7oJdHQgzryIbOcxd/+fGmgOW+Tbu8iUVCS0bRDxNq/L9ka
         iQIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=46tbzMH+CqRHzBhAOffcoTWkhnvad/rhBuBigP/NkB8=;
        b=I9eXYvvE5mSTYLjj/rEuz4t7TNxJorykAnLBsJOMlU/FclbADOcXjRZsONXU/szShV
         a7RU6qEUNJSq0xDCk+t5G8negUc/HYXYMvzqFt39vI6IbizTQOdml1r7TwI8eeRe45iL
         JqqtO/Kg37y0Yvy5NPEsnIuTbKFC5QrCbFyiCWA2OeQR2wSFVy/IBP54lt31taRfbvj2
         vhj1j6TCfGxc81sMW+81bIHHRaiAaQhMiHywWSbYEgbBRUGpu7R857qAp3maoThlKTYQ
         ZbzbskcZyTUSyVVqTS8MS3ya+aKBT4g3zRZp419OgUnDeEfRca3HWjivS3Q8xOQg089L
         uLoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hoVbiHQU;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=46tbzMH+CqRHzBhAOffcoTWkhnvad/rhBuBigP/NkB8=;
        b=L5M8eR8j0m1hMLsr0KubbiYe1xAFhhhGQiUOSp3ZbwMM6c2L6OPVTamqYihD7n34h9
         j3TUMp8iVO5fxW52f/KGvX7WHaySKBiLGFqTbzR9kdy0ak/HpdLtwwvo6e75zOGn7Ioy
         c7RAC8pR6Y6LYG8ZOykn+MAe2q72TxDJ5WhXCOZMUzLdJXQ35a8KD2yXC3kLARHc0L3P
         VDuQvWrDwkvGUxJT2VmE6+5l0KzfVy+J6sJxTG8uUiqC7tzjUz27MQ2yZomhC9hNGryU
         bfWuV5VvIPRv1B+FJHwS3ryo1emyPjWdrm3Msdpp+OLOkKUTFnbWbcjVDMINN0uyWK92
         hZAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=46tbzMH+CqRHzBhAOffcoTWkhnvad/rhBuBigP/NkB8=;
        b=YWa/C5IIn6KiyGv2uNzlQOCxEkB2RvkOvPvuHnQUzZOOadM4wlQuH5lYBIG8GZ9B5r
         bPnP9kJkziCVkjo2AA8wyH6s0oEvpF8Usm3RU7EprzatkE82rq8c3+gCLxLUI+eA5Nk9
         WBn2vyF5zN+vCWRhEHAkqAVfvVRB9tQK3vqbh/kebQEcwGRClWRmPoua2ETHP7odQ/RT
         mfxZ+B56a/xQXDyhaUwz78YY624Iwf3qvlBQlsSyUT2duUGwjU6S1sO8yCTUiyU4/wJn
         5HWqmc4gbnuHoml3liE+HZPJUpXaYxDHxiry4fltGIidiol84krtySI61pyQHZyoM2Ig
         cgyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530b3V2jBEMAHvrxEdr6EOkTb+94LnsRwKrXHLTQX3HuNwNoGOTy
	QAjVgaXQ9uoO3I5IBYyFUWE=
X-Google-Smtp-Source: ABdhPJy7UF8scOZDT4DQO91BTiMQUTtTH3aPKRhARBo69GAjmGfnnRr3wUoMU+A5r8A2PvspMdwE4w==
X-Received: by 2002:a92:6f12:: with SMTP id k18mr7548259ilc.66.1612453349793;
        Thu, 04 Feb 2021 07:42:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7f4d:: with SMTP id r74ls771857jac.7.gmail; Thu, 04 Feb
 2021 07:42:29 -0800 (PST)
X-Received: by 2002:a05:6638:6b2:: with SMTP id d18mr159777jad.26.1612453349038;
        Thu, 04 Feb 2021 07:42:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612453349; cv=none;
        d=google.com; s=arc-20160816;
        b=X1oW5ls8+Z6aSV4iCBCYJU1UWv5rkV7C5P9tEhmiUj2MrQXcyH3OLkTpbRiM9FTv/3
         7qnHeIDWfxIFFNU577dVvWFl1oEwK+epeUYdIeMiLrTYzSN7CQNHrr77R1JkyhLcpGw2
         /NOW1dge8xeCj5r7SG2PaA41Zm8ZcrVzOYMLRI94XtjTEOrGxPfcILBUm883wWpoA8k2
         Gcgv5/FvsheF5TuHIxQCPnL8NRiFt4uB/BbJ/F/N+UeGA/S0oD06xFM8JHne4V+aaQvB
         zY5WGuWG+/brd84VeFln7NEtQv90O7xloMYKnDi9I9C6gm/M+A9dSCUXJtGqBJDiWWIx
         1Uew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OHT3v1hMofbejn6CXlcitjouST7ExeXcP0Jk4Hthkow=;
        b=YEF5NzuB9pm7BJDURBW0Ygfuh24mD4GMc5ZpfXT5WUpTroJrl/0PKnrjcYmCayL8MA
         W7AguQhD3pmGdCD9I/S9wMbMmtjRr6Q39DkBGjl8gEFhybJINjXxsIiWmZ2f8tNL9P70
         x/d1L0jlqgmXANNL/KxqqpTcJUnXs8eNrQU2NHN16A3ACQD/z01QyTkVuwoVj8DUUB6a
         YqH4VHR1eK+vhC1eMldFsA/K10GezqRtHy6gApI+o4c6OIAauKTPdEGaTcYT7gAzKynz
         4ZXBCgyn8aTLsFkdPDHOq0/nVTdnd78rA3PMo7jRTuLt1rbwufYTixcn+Z35STF4gHxD
         Y9eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hoVbiHQU;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s10si205720ild.2.2021.02.04.07.42.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 07:42:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3C1D464F53
	for <clang-built-linux@googlegroups.com>; Thu,  4 Feb 2021 15:42:28 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id 63so3847797oty.0
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 07:42:28 -0800 (PST)
X-Received: by 2002:a05:6830:1e2a:: with SMTP id t10mr6205441otr.90.1612453347580;
 Thu, 04 Feb 2021 07:42:27 -0800 (PST)
MIME-Version: 1.0
References: <601b773a.1c69fb81.9f381.a32a@mx.google.com> <6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com>
 <CAMj1kXHMw5hMuV5VapcTeok3WJu1B79=Z3Xho0qda0nCqBFERA@mail.gmail.com>
 <20210204100601.GT1463@shell.armlinux.org.uk> <CAMj1kXFog3=5zD7+P=cRfRLj1xfD1h1kU58iifASBSXkRe-E6g@mail.gmail.com>
 <c0037472-75c8-6cf9-6ecf-e671fce9d636@collabora.com> <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
In-Reply-To: <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 4 Feb 2021 16:42:15 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEshuPTrKvN4LpXQMftHJG+yH8+fgU7uVc6GYn0qd8-xA@mail.gmail.com>
Message-ID: <CAMj1kXEshuPTrKvN4LpXQMftHJG+yH8+fgU7uVc6GYn0qd8-xA@mail.gmail.com>
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
 header.i=@kernel.org header.s=k20201202 header.b=hoVbiHQU;       spf=pass
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

On Thu, 4 Feb 2021 at 12:32, Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> On 04/02/2021 10:33, Guillaume Tucker wrote:
> > On 04/02/2021 10:27, Ard Biesheuvel wrote:
> >> On Thu, 4 Feb 2021 at 11:06, Russell King - ARM Linux admin
> >> <linux@armlinux.org.uk> wrote:
> >>>
> >>> On Thu, Feb 04, 2021 at 10:07:58AM +0100, Ard Biesheuvel wrote:
> >>>> On Thu, 4 Feb 2021 at 09:43, Guillaume Tucker
> >>>> <guillaume.tucker@collabora.com> wrote:
> >>>>>
> >>>>> Hi Ard,
> >>>>>
> >>>>> Please see the bisection report below about a boot failure on
> >>>>> rk3288 with next-20210203.  It was also bisected on
> >>>>> imx6q-var-dt6customboard with next-20210202.
> >>>>>
> >>>>> Reports aren't automatically sent to the public while we're
> >>>>> trialing new bisection features on kernelci.org but this one
> >>>>> looks valid.
> >>>>>
> >>>>> The kernel is most likely crashing very early on, so there's
> >>>>> nothing in the logs.  Please let us know if you need some help
> >>>>> with debugging or trying a fix on these platforms.
> >>>>>
> >>>>
> >>>> Thanks for the report.
> >>>
> >>> Ard,
> >>>
> >>> I want to send my fixes branch today which includes your regression
> >>> fix that caused this regression.
> >>>
> >>> As this is proving difficult to fix, I can only drop your fix from
> >>> my fixes branch - and given that this seems to be problematical, I'm
> >>> tempted to revert the original change at this point which should fix
> >>> both of these regressions - and then we have another go at getting rid
> >>> of the set/way instructions during the next cycle.
> >>>
> >>> Thoughts?
> >>>
> >>
> >> Hi Russell,
> >>
> >> If Guillaume is willing to do the experiment, and it fixes the issue,
> >
> > Yes, I'm running some tests with that fix now and should have
> > some results shortly.
>
> Yes it does fix the issue:
>
>   https://lava.collabora.co.uk/scheduler/job/3173819
>
> with Ard's fix applied to this test branch:
>
>   https://gitlab.collabora.com/gtucker/linux/-/commits/next-20210203-ard-fix/
>
>
> +clang +Nick
>
> It's worth mentioning that the issue only happens with kernels
> built with Clang.  As you can see there are several other arm
> platforms failing with clang-11 builds but booting fine with
> gcc-8:
>
>   https://kernelci.org/test/job/next/branch/master/kernel/next-20210203/plan/baseline/
>
> Here's a sample build log:
>
>   https://storage.staging.kernelci.org/gtucker/next-20210203-ard-fix/v5.10-rc4-24722-g58b6c0e507b7-gtucker_single-staging-33/arm/multi_v7_defconfig/clang-11/build.log
>
> Essentially:
>
>   make -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
>
> I believe it should be using the GNU assembler as LLVM_IAS=1 is
> not defined, but there may be something more subtle about it.
>


Do you have a link for a failing zImage built from multi_v7_defconfig?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEshuPTrKvN4LpXQMftHJG%2ByH8%2BfgU7uVc6GYn0qd8-xA%40mail.gmail.com.
