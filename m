Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDGNX6BAMGQEGH7AG7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 167E833C98C
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 23:58:21 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id d3sf10749503lfc.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 15:58:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615849100; cv=pass;
        d=google.com; s=arc-20160816;
        b=iSdKh4aYtjY8+uG2pbU/nJwUYV0xfvqEzNMWezvDtjboISdGuucAifl8moNJQ/Y86+
         kVxH27NCN9SnQO/WWVCet+JtIVw2ZLVrhFDfxLMpBdhEbemizNsr5S7t6OJBVZ0QS1or
         PpgCoHywOLDnH53laP7Gq2EwcJD4uyWRyPlhfzzMy4ridxzxsR4+WqsoyelrDo7v0m1H
         i+A7rZEMCm4wJU01NAZjtlGvHuGHT2d5xn8IxdCt8VakPJaT20cJF3dEe9FgeAZ+OGB6
         1Y5AUsTZF92AqKXurTDrENgvYboquwvVa42nl85zSLzEaS5W4Ke0VjKbLtl2cN9GQsQp
         bZ4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LSaBNMFQdYklg5IB2+bXHhjUPARnwVymkKh/CoTY6Yk=;
        b=yXudfGHXSpiIP4QZ5ij8zwk1NuenW2V2SWf9LT5/eG7vFchC8qp3XiKi6QEyXgmC+r
         v4kKEz0bUMm7GNjbd45ICnE8Zm7KYWwq/v70VRuH1nRWcfQ3m80MT6CqWgdW0XwRNuIG
         uGeyNS+oFX+tRjqX8lM1PxoqgtKhSpB6EfH0/NhbVh3HcCiIPq5YM2lDC/XwaWZ/ihBO
         X0KfkyM/nvqx9ge19VDmbSI3eM4zWMdi43Sx3F971ighjzVg1Gk63inM73hC1HQUGQes
         3ppgjTxN4XPbOL1Afrffx+aEc6wTA/ILSdBna/q69GL4BbMIh0sRPTnjYS0U6210w7SH
         EEKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Uzcicgkr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LSaBNMFQdYklg5IB2+bXHhjUPARnwVymkKh/CoTY6Yk=;
        b=i7KqCtzJkDjEavbwd4lq3Jhg5DrfArcTBNGSKOUylWNGi91ZjDwOk+H9hXDKy411ay
         GBqoImfzPVbK5JYz1vxBkbJtPghM0d3MSeWPPU7yLFf4quPuoWgn0ctv0Aut9OCuSf0Y
         nG8pxQvoSMJvBVww7J+8rYcHPpLD25N+6EP3iGvBf2FfFPojZo6BgAvUD8nxtZnzCP+v
         KYY3SEmGkq4zEFirLbhTKYKH23UJCz+sugazlzDiHI0yZs6UvfrKJPD4AxQsuEfFxu/P
         f/f8O4EvCbVZKGKDw7F2hT7sGDBy+Uboq8Dk7IWBSdsij4QjQHJOggMxfyU9tPRzJb55
         7Rdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LSaBNMFQdYklg5IB2+bXHhjUPARnwVymkKh/CoTY6Yk=;
        b=inlrdn6hgx69hitpm8tCgcypOMe5pj0qGkPp5z6B2O/ehR49piHFH4wRMnq2g7SrfV
         9YWueLW+wjkIkCiPgFV1x6x5+SZLOnZ/0xsJEmRpPf7yYEVh/eIndNjqN35G9D7kORK7
         OREVbmmEDd/UJx30CbhAW4JOpEZNw5MyfdMx3yIQTOeOPGCUpxdYM7bAaw6OUvJWWcCt
         WT8P7UCt9SAXveDYGUbNI1pVkjwWb0iG7DgbXQQ9acxT3iHpcPknYqlu+64DEIqWBk2c
         R5vNsU/hdqjY2HvuefGGf5TIv9SEF3ckQYFimmq06/J/4VZt8DTYKFUR1Rz72Fj4gnDe
         epLQ==
X-Gm-Message-State: AOAM5319bcK4AgXsWyHEtqoPWIal5RqwpxXiP7af44p3Rjmet38QH07+
	K/AQ85YqWXScYtqda6erqyk=
X-Google-Smtp-Source: ABdhPJzjaeybflJnGT4wb/UNHx/UasXplgTE15SUQKwmZbkT1Ei4hbMkPTgwWhrdlOnbLBHPaDOMZQ==
X-Received: by 2002:a19:5d8:: with SMTP id 207mr9363088lff.232.1615849100515;
        Mon, 15 Mar 2021 15:58:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6d4:: with SMTP id u20ls2450343lff.1.gmail; Mon, 15
 Mar 2021 15:58:19 -0700 (PDT)
X-Received: by 2002:ac2:546b:: with SMTP id e11mr8906942lfn.48.1615849099452;
        Mon, 15 Mar 2021 15:58:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615849099; cv=none;
        d=google.com; s=arc-20160816;
        b=MQzrYUOsDfMKZ5cH1nEDau/agPekuI5735HDMKhKwrqW2JjKh4Rg40W9Nu49at3fG9
         aRREMehxN4J81nZKT1sJTxACi8shCONojO93B+l//VJ/j9cpbzjK6kyUgNXgoSB0x23E
         dNzaI6oQCgBtjLn6JKAwsUHaXtQ+E/eqYyontu/yegdm237UG8zdG11Rzc/0GERbd9KH
         4orQOvkfI2cHLUP2yxx7cWhzgUZ34Rs3tYIBC09rKQRNIt6n2YFX/y+ufRyaGaPEKL/f
         YtzBfVn+bAbe5i/iRfmWmmOX4Ve+rwsjKHdg8r/FfAL1sipkdLpaeFiNa3u6NZvOWtVL
         FwHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tZjCk+P+jx5J0ycHj3LYEoImQk5e3nuq7wTJIjKCNTQ=;
        b=DAfa/0CHq0Fc7FrgjMb6CFIomKzjlE4myZTwu4G3NyfHS5YBUADPrcD0F89B7fyYZv
         TQLc/WbCbEs3Z0SVmlgTKV4dIubqI6PxEb0MtORTYxJK0+/r6YMBS6V8liF8f6u5N8E/
         vtlOKfnzSFvMZOT3J3pcjs5kFiJ8V8iXYzD+nMkypB+RU5RQDl2f5bjqmbxpANuq1mD9
         oEF/qAmT6cdmcEBCxaJnuBmLANZ5UXB05m+9WjnRJw+oMEtV3RCuIAtj2aXGZzj9gUzw
         z0fMw+0iEsjp43El10WtRatnKof+VFMhIFlruZXVcnaUaCdTsG7Dg4LE1Kkdi7JmFndZ
         F3gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Uzcicgkr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id d19si573813ljo.1.2021.03.15.15.58.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Mar 2021 15:58:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id q25so59444980lfc.8
        for <clang-built-linux@googlegroups.com>; Mon, 15 Mar 2021 15:58:19 -0700 (PDT)
X-Received: by 2002:a19:5055:: with SMTP id z21mr9074889lfj.297.1615849098902;
 Mon, 15 Mar 2021 15:58:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdka=y54W=ssgCZRgr2B+NaYFHF07KnnNDfrwv79-geSQw@mail.gmail.com>
 <YEs+iaQzEQYNgXcw@kroah.com> <CAKwvOd=xr5je726djQeMMrZAuNcJpX9=R-X19epVy85cjbNbqw@mail.gmail.com>
 <YEw6i39k6hqZJS8+@sashalap> <YE8kIbyWKSojC1SV@kroah.com> <YE8k/2WTPFGwMpHk@kroah.com>
 <YE8l2qhycaGPYdNn@kroah.com> <CAMj1kXGLrVXZPAoxTtMueB9toeoktuKza-mRpd4vZ0SLN6bSSQ@mail.gmail.com>
 <CAKwvOdmJm3v3sHfopWXrSPFn46qaSX9cna=Nd+FZiN=Nz9zmQQ@mail.gmail.com> <CAMj1kXHfQmObPZaVOZu+0M3SKFKNg5vcKmyJMXQ3RTBCqho9WQ@mail.gmail.com>
In-Reply-To: <CAMj1kXHfQmObPZaVOZu+0M3SKFKNg5vcKmyJMXQ3RTBCqho9WQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 15 Mar 2021 15:58:07 -0700
Message-ID: <CAKwvOdm6FXWVu-9YkQNNyoYmw+hkj1a7MQrRbWyUxsO2vDcnQA@mail.gmail.com>
Subject: Re: ARCH=arm LLVM_IAS=1 patches for 5.10, 5.4, and 4.19
To: Ard Biesheuvel <ardb@kernel.org>, Greg KH <gregkh@linuxfoundation.org>
Cc: Sasha Levin <sashal@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>, 
	Stefan Agner <stefan@agner.ch>, Catalin Marinas <catalin.marinas@arm.com>, 
	Sami Tolvanen <samitolvanen@google.com>, candle.sun@unisoc.com, 
	=?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>, 
	Stephen Hines <srhines@google.com>, Luis Lozano <llozano@google.com>, 
	Sandeep Patil <sspatil@google.com>, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Uzcicgkr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c
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

Ok, I see what went wrong.  I had tested allyesconfig and allmodconfig
on 5.4.y, but neither of those selects CONFIG_KVM=y for arm;
axm55xx_defconfig is literally the only config (out of 109) that does.

32b ARM KVM support was ripped out in
commit 541ad0150ca4 ("arm: Remove 32bit KVM host support")
which landed in v5.7-rc1. So when
commit 2cbd1cc3dcd3 ("ARM: 8991/1: use VFP assembler mnemonics if available")
was written, arch/arm/kvm/ no longer existed. If it did, then
2cbd1cc3dcd3 would have needed something like
https://gist.github.com/nickdesaulniers/980e68e9c0680fff06b1b64f2b973171.
And allmodconfig/allyesconfig testing wouldn't have caught this, only
testing axm55xx_defconfig would have.  Before KVM support was dropped,
that was the only config that explicitly enabled the config that
failed.

On Mon, Mar 15, 2021 at 10:53 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 15 Mar 2021 at 18:43, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > f77ac2e378be doesn't apply cleanly to linux-5.4.y. There's a conflict
> > in arch/arm/vfp/vfphw.S due to 5.4 missing
> > commit 2cbd1cc3dcd3 ("ARM: 8991/1: use VFP assembler mnemonics if available")
> > which is one of the patches I sent in the 5.4 series in this thread.
> > That was 1 of a 3 patch series:
> > https://lore.kernel.org/linux-arm-kernel/cover.1593205699.git.stefan@agner.ch/
> >
> > Should I separate out just those 3 and f77ac2e378be and send that for
> > 5.4, or manually backport just f77ac2e378be and note in the commit
> > message the conflict?

I assume we still want a fix for THUMB2, so I'll send a backport of
just f77ac2e378be modified to note that there was a fixup against
2cbd1cc3dcd3, since 2cbd1cc3dcd3 is problematic for CONFIG_KVM=y on
5.4.

> You haven't explained why all this effort is justified to begin with.
>
> Who cares about being able to build 4.19 or 5.4 mainline with Clang 12
> and IAS?

Ah, sorry, ChromeOS and Android very much do so.  (Google's production
kernels as well, though I don't think they have any 32b ARM machines).
Android is already building 4.19+ with LLVM_IAS=1 for
ARCH=arm64,x86_64,i686. ChromeOS is doing so for 5.4+ for
ARCH=arm64,x86_64 as well.  I'm not sure precisely what's going on in
prodkernel land, but I know they have LLVM_IAS=1 enabled for x86_64.
So when Greg says this is "for no real users" I disagree.  Maybe no
one is using LLVM_IAS=1 for ARCH=arm at this moment, but that was the
point of the backports, to enable more distros to do so.

Stable has already accepted patches to 4.19+ for these architectures
where it was made explicit that this was for LLVM_IAS=1 support.
https://lore.kernel.org/stable/CAKwvOdk_U6SEwOC-ykaVTMu1ZmEjWC8cCiTetvU2k2dQ6WPCoQ@mail.gmail.com/
https://lore.kernel.org/stable/CAKwvOd=F_wWLxhnV3J8jx1L3SXPd8NFYyOKzAh7rL0iRb_aNyA@mail.gmail.com/
https://lore.kernel.org/stable/CAKwvOdmEcjjw78K0Avj-7s5BBXcT7ARhEMMEYqpCP-ZT=2dAJw@mail.gmail.com/
https://lore.kernel.org/stable/CAKwvOdnGDHn+Y+g5AsKvOFiuF7iVAJ8+x53SgWxH9ejqEZwY9w@mail.gmail.com/
https://lore.kernel.org/stable/CAKwvOdkK1LgLC4ChptzUTC45WvE9-Sn0OqtgF7-odNSw8xLTYA@mail.gmail.com/
https://lore.kernel.org/stable/CAKwvOd=x+fVo1_mMJUGHYXpmGf8UM5yx+uWD-Ci=y=0oFX2ktg@mail.gmail.com/
https://lore.kernel.org/stable/CAKwvOdn78WAUiRtyPxW7oEhUz8GN6MkL=Jt+n17jEQXPPZE77g@mail.gmail.com/

Now it's just down to ARM and THUMB2 support.  Then we will be using a
similar toolchain regardless of ISA.  We will also then have an
evergreen toolchain, rather than one that will not be receiving future
updates and is unsupported (which becomes a problem when folks need
new things and is a liability to be removed), and more wood behind
fewer arrows so we can focus on starting on the feature requests we
have piling up (like kernel GCC plugin-like features in LLVM, like a
code model for the kernel, etc).

This has been communicated to Android OEMs
(https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+/master/BINUTILS_KERNEL_DEPRECATION.md)
for them to help test and report issues and likely will also happen
for the next release of the NDK
(https://github.com/android/ndk/wiki/Changelog-r23#announcements).

> I am aware that Clang enablement is a prerequisite for CFI
> and LTO etcetera, and so I am fully on board with this activity for
> current and future kernels.

LTO does require LLVM_IAS=1 at the moment; there are no plans I know
of yet to port LTO to ARCH=arm, but maybe if Sami is bored? :P

> Stable kernels are a different matter, though. I tend to get
> stable-kernel-rules.rst thrown in my face for proposing backports that
> aren't nearly as large or intrusive as this stuff, but for some
> reason, those rules do not seem to apply here.

I understand.  I'm also balancing shipping patches for toolchain
support out of tree, vs upstreaming.  Everything so far has been
upstreamed, but 32b ARM support has been...more involved.  But I'm
hopeful that we will be able to expand our staff soon to better
improve that.

I think all of these patches would be useful to CrOS, so my plan was
to send the series upstream.  We can keep it downstream, where the
number of supported configurations and toolchains is more limited.
4.19+ is of interest for new Android devices this year, but 5.4 in
particular will live much longer, so we will have to carry the
divergence for longer.  I think some of the strictly UAL related
changes are relatively lower risk.

> So my suggestion would be to forget about 4.19 and 5.4 entirely for
> these changes, unless there is an obvious benefit to all consumers of
> these stable trees. Otherwise, exposing them to ongoing breakage like
> this is indefensible IMHO.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm6FXWVu-9YkQNNyoYmw%2Bhkj1a7MQrRbWyUxsO2vDcnQA%40mail.gmail.com.
