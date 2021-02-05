Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBL7J6SAAMGQERXYRXEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC02310ADB
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 13:06:08 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id x14sf2318037uac.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 04:06:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612526768; cv=pass;
        d=google.com; s=arc-20160816;
        b=BZbTRgbz5Q3+1kVY/AJ9fyP5KXNuMzmhPuTN5iZG9/ApAgHpdd/dkEXUWHfz2x7EQy
         5ef/5hD6BTO1TPCYtzXwaAfaMCqQTDnz7VvwwL+0rtl3AOuejSfl/rPkX805LZi8UOMP
         0Mj2mfBrKjOV9AWKg818c9rQWJWWjlLiE2ZCAntFAaLzlU8sl9OHOWpbGI3FPmJegBMX
         e9VDqeitVjmxARTDmvukTI/i4skN+VFBJkubIXHF1uSJi3npNJqFPOknWjIvzJ9HqTTo
         he731kC5eMM1Js2oRmI8AFFKJ9HE6f55IQ4p3pLWHK11+5t2LPO1kZC1tYo2u4ko/W7N
         SD4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=QazEe/qvawrNDzAs4zA6d9hj/WlJDLMr+26rOUkEYJ0=;
        b=rqo/ke5W2m/ryxlrscacRdtcpZswNPcN1RyeHj9Bvx20aXfgV1qireWqkw9LZ2Ys3y
         Zoiz3dc6G7YIDuUdUs885fyaM1218sxErjnsbIDB0VHeA3/MhaLQuADMpT4X+lE54Rca
         xggn/F9bK66PTlE/zdYNtXTpJ+x3jxe58uqspe2LaAox38C5nhWOfpI3w0/Mss6Zk6NZ
         5vXQUvgmL2kzbYh6ZgZ/8maBJvANCiNtbFh2thbd2wkxnDdhvHbaC2DwQEiXU0OstvZ0
         V5lnZY7ZxHSgG/sieUwwMbOEOKvGm+Yk/dXN0dExl99LUWdmgolo8VFJWzhSZz/L9gMt
         tULQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YJ0jINN3;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QazEe/qvawrNDzAs4zA6d9hj/WlJDLMr+26rOUkEYJ0=;
        b=DxJQnW/Fy/1png57uIAq+pS4cgYOZh1Fi6dPRNeiDutIBsHzvTTmpnw9xO+JH6RCAR
         2wpApYSa61BcOAfVRmJAl7qKCSPI0ZQX4JtcNauRKdn2Vb1jmN6aUWc3UpHfJp7LmeFf
         oz24u+ZIdRN2S4WXIHAfe68GtpTXzAouuIIKdWm5v1ed2bBE+Uw5tgq5IIADc9k+h/LY
         Eyy8SGNakuB0Tdoq1ABDQx8WIfahqYzJfirp1LBKz1LPFxXp99twYalYu32G3d9kq2DU
         ZnflTKFFh7slGt2DQtPRZvp6nli68ZMvnURN2fy78osXha+TpS8kUBeFOW4PMIX2G76G
         5+hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QazEe/qvawrNDzAs4zA6d9hj/WlJDLMr+26rOUkEYJ0=;
        b=ATLzXaloD4hxOdJrnMTvszD//h4oHck8dj4LDMIUuKdc1/UOaVKUwukhefQ92CnyLB
         03VPPxGoyyyREHNK4UjBiKP2ogLNIK/xhB50dHIURCtQmFUS8gVV5122tgGegrseLadM
         dnEZHgb9/RRw5mKxccSCrE1GilPcbF2lW1jeBKXKcUSQ0izBpjhU5GHcLbPtQr06kVpf
         zPnq9fE01/U+YdNZ3YS6SE839yYg0FICT290/3HXg5bGic9Aqkii9NuzmFaya9Q5cPRO
         zKQYUiJOE+bZ4y+sbb29zV8ysdKQLJnMe9TlQH7D4F9By/k8WGbGb9ZOpUkrOCcqcHLL
         Q9hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530I07cREKlb5cwF1IosX9shU/0MXRiN8H36mRNXxUrfEFHD9+Lq
	KgA09Yb/YCrNBmU0Ef0WsU0=
X-Google-Smtp-Source: ABdhPJwYIhyUz0FhRAfz3DALVeEpYitUE3WbWsT4LXwB6d/5ap0SjkxVlWILyvfLXACzFotWvyGxiw==
X-Received: by 2002:a9f:31ad:: with SMTP id v42mr2726859uad.42.1612526767880;
        Fri, 05 Feb 2021 04:06:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:88:: with SMTP id t8ls938120vsp.11.gmail; Fri, 05
 Feb 2021 04:06:07 -0800 (PST)
X-Received: by 2002:a67:fc16:: with SMTP id o22mr2571783vsq.49.1612526767386;
        Fri, 05 Feb 2021 04:06:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612526767; cv=none;
        d=google.com; s=arc-20160816;
        b=oEah6BtSLqg4rn/M4UPoSSFy+NmtrHch39sO1ROGdJ0YMyO/Rdo4y98QXCfaIpTdbM
         Shh1MaKQaXvKBJ7Rh767guzDG/YZORcbRCjgGtf7wu+jqQfTWzxFGS6q9xN5YvktUU7E
         s67K8lzgCiYdxWxNX1ySHliBqIlbAJGRYlJozzL50OytulDiPDKLH8AJIbKXkw/t5P0M
         ZBQ79oNcPM2Zl8+h+pKXgby9lXWwsW2bOyyfyq1XfFh9yeAmS7KQgoymBZDGr9NFUA8/
         UxDcfA6LCHgPDIPiamubCEwvP69JKqbtLT5mXeNfEXVUtitNLv++FKsbdRuFLqhz90Hr
         UWjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kbN1qoGlKGN/HhSUO8JkiVZjLqofe85u59BLH/C+YRk=;
        b=Sjg6L2gEKG2DmdbDNAwvN1aZwvy56aniGibLmWG744lYvudome7tpipTumDK7K4bKE
         2xw8b6wPgRtoiuNrb4K85Y5te2kVtbuiyDUv2xfffDIv86pjnjCozfQcufVURxz1wyw5
         2ftJpRiOSBxq45Htlfo0kaA+zdCeQtsBoOBKxMibrbo8UzW8dDi5dDPvEnYxVzV0irqz
         dHdNL7Yzi0+6UX7O7Jy9rxqWEwLRzY6z/5DF5ci/rY9tP6MR8NsRV1nU04VuYxxPuyGb
         A9guFqGsk5z7j1rkK447VYE6opj+iAQX8GfPQGf01gjZiriFmUxFfZ+BRchwD3J3Zug/
         Fl9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YJ0jINN3;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e11si482923vkp.4.2021.02.05.04.06.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 04:06:07 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0F4D464E0A
	for <clang-built-linux@googlegroups.com>; Fri,  5 Feb 2021 12:06:06 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id f6so6624062ots.9
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 04:06:05 -0800 (PST)
X-Received: by 2002:a05:6830:1e2a:: with SMTP id t10mr3220364otr.90.1612526765201;
 Fri, 05 Feb 2021 04:06:05 -0800 (PST)
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
In-Reply-To: <CAMj1kXFKzEPqG5j2bn5n_3imc9aFyOEHX7CVDdwe2=ugTq=bZQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 5 Feb 2021 13:05:54 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGrABn7KxSPxTo3pWJEk3fNsN-zBBHZkbVfg7gTavL_pQ@mail.gmail.com>
Message-ID: <CAMj1kXGrABn7KxSPxTo3pWJEk3fNsN-zBBHZkbVfg7gTavL_pQ@mail.gmail.com>
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
 header.i=@kernel.org header.s=k20201202 header.b=YJ0jINN3;       spf=pass
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

On Fri, 5 Feb 2021 at 09:21, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Thu, 4 Feb 2021 at 22:31, Guillaume Tucker
> <guillaume.tucker@collabora.com> wrote:
> >
> > On 04/02/2021 18:23, Nick Desaulniers wrote:
> > > On Thu, Feb 4, 2021 at 10:12 AM Nathan Chancellor <nathan@kernel.org> wrote:
> > >>
> > >> On Thu, Feb 04, 2021 at 10:06:08AM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> > >>> On Thu, Feb 4, 2021 at 8:02 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >>>>
> > >>>> On Thu, 4 Feb 2021 at 16:53, Guillaume Tucker
> > >>>> <guillaume.tucker@collabora.com> wrote:
> > >>>>>
> > >>>>> On 04/02/2021 15:42, Ard Biesheuvel wrote:
> > >>>>>> On Thu, 4 Feb 2021 at 12:32, Guillaume Tucker
> > >>>>>> <guillaume.tucker@collabora.com> wrote:
> > >>>>>>>
> > >>>>>>> Essentially:
> > >>>>>>>
> > >>>>>>>   make -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
> > >>>
> > >>> This command should link with BFD (and assemble with GAS; it's only
> > >>> using clang as the compiler.
> > >>
> > >> I think you missed the 'LLVM=1' before CC="ccache clang". That should
> > >> use all of the LLVM utilities minus the integrated assembler while
> > >> wrapping clang with ccache.
> > >
> > > You're right, I missed `LLVM=1`. Adding `LD=ld.bfd` I think should
> > > permit fallback to BFD.
> >
> > That was close, except we're cross-compiling with GCC for arm.
> > So I've now built a plain next-20210203 (without Ard's fix) using
> > this command line:
> >
> >     make LD=arm-linux-gnueabihf-ld.bfd -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage
> >
> > I'm using a modified Docker image gtucker/kernelci-build-clang-11
> > with the very latest LLVM 11 and gcc-8-arm-linux-gnueabihf
> > packages added to be able to use the GNU linker.  BTW I guess we
> > should enable this kind of hybrid build setup on kernelci.org as
> > well.
> >
> > Full build log + kernel binaries can be found here:
> >
> >     https://storage.staging.kernelci.org/gtucker/next-20210203-ard-fix/v5.10-rc4-24722-g58b6c0e507b7-gtucker_single-staging-41/arm/multi_v7_defconfig/clang-11/
> >
> > And this booted fine, which confirms it's really down to how
> > ld.lld puts together the kernel image.  Does it actually solve
> > the debate whether this is an issue to fix in the assembly code
> > or at link time?
> >
> > Full test job details for the record:
> >
> >     https://lava.collabora.co.uk/scheduler/job/3176004
> >
>
>
> So the issue appears to be in the way the linker generates the
> _kernel_bss_size symbol, which obviously has an impact, given that the
> queued fix takes it into account in the cache_clean operation.
>
> On GNU ld, I see
>
>    479: 00065e14     0 NOTYPE  GLOBAL DEFAULT  ABS _kernel_bss_size
>
> whereas n LLVM ld.lld, I see
>
>    433: c1c86e98     0 NOTYPE  GLOBAL DEFAULT  ABS _kernel_bss_size
>
> and adding this value may cause the cache clean to operate on unmapped
> addresses, or cause the addition to wrap and not perform a cache clean
> at all.
>
> AFAICT, this also breaks the appended DTB case in LLVM, so this needs
> a separate fix in any case.

I pushed a combined branch of torvalds/master, rmk/fixes (still
containing my 9052/1 fix) and this patch to my for-kernelci branch

https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/

Guillaume,

It seems there is no Clang-11 coverage there, right? Mind giving this
branch a spin? If this fixes the regressions, we can get these queued
up.

Thanks,
Ard.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGrABn7KxSPxTo3pWJEk3fNsN-zBBHZkbVfg7gTavL_pQ%40mail.gmail.com.
