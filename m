Return-Path: <clang-built-linux+bncBD63HSEZTUIBBZPEQT5QKGQEKTRE4FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F6826AF94
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 23:30:14 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id 6sf4108365qko.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 14:30:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600205413; cv=pass;
        d=google.com; s=arc-20160816;
        b=Whoi4s34V7vgOgRrzUVCn34fD169srl4FWVjSsWcL76I5vyEfWZAyCPq8BleoxIszg
         4qEOaEs9IwP8/Y6DzaERt3ZUefafYPvjF9uyPlxXC5Ge1EBtPUU1OrsWSr02jC/rGuUY
         dwFVnqQSlqwKkK2kna3CYDQ04QPHplRJ7Ru4OcuAlHSm4JRTM/ZkUjcXK4KV2yRuzraY
         lQ663IRt69cc3Q+g4XNKvbds/PIMiqxZa6embgFn4Mdai3a7NU6ikpKEgFg+lKJyweyb
         TVKJEvJfGG7PbBygQ4WUXrGGPZ0rx291TOFXlGVSu7eHdbS7+j/jQ2c3FKKhdTMKzejx
         fV9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=JNHWCEReKcuRPRPvGpW8Zxyi2qGWFSMwYJFds+oUzIQ=;
        b=BQ3XgKuNTJM8IOG7Y0Am9dm/KSmSy6I0aoqcg2WpVsdn7/GBPJbV7B0SI/FSkP4Dz0
         k3/L5MfCM56ITcyZNDkx+97Fe8Evf1Q9qGXHwZO5R5gxVArhGUQuMon1eLB9qV+APCF8
         szTCIUAK8JWbCeEUBO6HlPd+UiR6WGQgOy1c1m7yEb5R50kZkexinuF/Bn02ndbvvAzS
         czt8a6SIe0hutGJmG8oluC3t9qSDfHvUUHvm9ISLse9mskB/wtzJduVF76aZCPKHwxOK
         StbgkMHXxZjWN90jSJ4wI9mgqmi/v4emHiaK1fr5o3w0B+OjoEo2UxSU8UYFchQqFNXI
         fMtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ATjOjUxf;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JNHWCEReKcuRPRPvGpW8Zxyi2qGWFSMwYJFds+oUzIQ=;
        b=IZ6QF6FTbCN/GLW14uiZOFu3sZY6MSQMXw/k5TtrPKTEWIYASQzwTWnc+BaqeDsuQv
         rFNWoiPmjgPJmRp3xMBE7lz7+PzXgnfgYEz5rQeez3AFrLsi8cgOW7opH6x+3N1yT3Ky
         t901KMAyqQ/wMF6zy3KdwIYoy8YZ3lwsRUEU3nIPQXbP5nlmibbo1R71Mw2/H45VwGkE
         Y/jxwDt6DWqZlYQwxnYW+RpkQfIkard3PyPHaLDTgwKIR1ZdyOoheGEVwtawYHV5iC8F
         ETgyGrkDpLmA56wbcVGDDJNe6Whf7UMsFscF/2tINGZ9L+l5xKoFyTL14aLdlf/chQa2
         qJww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JNHWCEReKcuRPRPvGpW8Zxyi2qGWFSMwYJFds+oUzIQ=;
        b=S75pnPCVBeGMdssbYQyuQm+xkyRmKRLldej3Ig9Bd4EwacBgDmudwLi+mN6/C6jXeU
         sJ7kqUM7nV4rxhMHBKNpFwIxh18myHksSAzJgrBLdP8UKEgLz8TY07cSjWzxoiSwee+F
         ZAryQNCsjVtf7arz6ZFQIZU3es5wD8lHD9oYidrH75gzfFS0+8R7068Y0jxR3hqaY5S7
         K9ZBivqUZYM7ubP0JWaCd8iD3zFYmPxQLZ42gancILNfXCiMpnPt76HSlaBe7VHIpOgp
         H2Zj+PgtR/ae90fo9+WN56kWANvgAsJCPokpUTAckqXf2qjk3q6aYONNhNAlrmxF7J+H
         WRjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HrLo5ClposXyFtCA0i8ODIK385LISz4QMjIJNoLy6HpKMTXSF
	x9DmkyNClB86mFZpHcStnPs=
X-Google-Smtp-Source: ABdhPJxKMI1RWmwiUAkZB7GXY8bv+MOrZJ6TZhlTbGBYW/rGwfwosfSyt+qJOCkcL5aD+vjeiDYrTQ==
X-Received: by 2002:a0c:8064:: with SMTP id 91mr3834832qva.32.1600205413286;
        Tue, 15 Sep 2020 14:30:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:371d:: with SMTP id o29ls147583qtb.6.gmail; Tue, 15 Sep
 2020 14:30:12 -0700 (PDT)
X-Received: by 2002:ac8:1a08:: with SMTP id v8mr7850809qtj.353.1600205412829;
        Tue, 15 Sep 2020 14:30:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600205412; cv=none;
        d=google.com; s=arc-20160816;
        b=iBcV1CSZCjSHDaZE8oXPPyzhjqjsyDZpLQoqBJQfja52wz+6+ycvN22jK9RztNNWCl
         7k51ec/ckyvbOk5i6Yopc4N+yAIFXQf84GGKVFpm1AO5AzCgSyiNy9ha0Mzm/y8JXmSj
         7fcvWmyQxJnIsyIonrUHUOx4X6lx1h1nq8hoHroDoZ+Ur9Zn8Ddr0i4A2t4xUanYEUEk
         hGgsMYdrunzR6Qz2CFeZ9wv/SW35g+E0ZlEdsKarAVHIdK9h1Rzthr87V0ueDuKValRR
         +pHJDo8yukuK4PqQHWFhi8Vi2Qm9Z+6u7PxJ4kCdu6kfEbDn3OWcMsjAyeRfQgc/z3Af
         unWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=affJyMnt4mCN//qZ6cqz0nfModIfGXWRvECWku6m1rE=;
        b=BB5jn41X2dIPdM6N7Cbg4mJgh23isanJ2LpzCPQpMuS0x9IMsbO7SX0jG92tEhVIRy
         ejevf8JfY7gUYNhD8gKY5g+v3ZBLZgCWcgCsRoxuKFQkdeQ5HV9azcpMrDfSASJNZJYb
         pIRL5SbolI5I+TIwQfyrjXZp7EzGw/GgL0kqX9w20FVceKfo3nkxJ+LKXYvFxCPaG2Db
         7cOmdmfIF8M/vN9flAXLhGBe1cZgcEhAV7FqUXwmuuOWYbOS0uElQ2DugW0YExityW06
         abYA/AptMSQTNO04DNZAsx0778EyFX0QtYKeugE5rxvOZd/cYN0ihb+z98WAJbSalK93
         mnhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ATjOjUxf;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q5si823527qkc.2.2020.09.15.14.30.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 14:30:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9FAF820795
	for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 21:30:11 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id n2so5619806oij.1
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 14:30:11 -0700 (PDT)
X-Received: by 2002:a54:4517:: with SMTP id l23mr1062885oil.174.1600205410990;
 Tue, 15 Sep 2020 14:30:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200914095706.3985-1-ardb@kernel.org> <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
In-Reply-To: <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 16 Sep 2020 00:29:59 +0300
X-Gmail-Original-Message-ID: <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com>
Message-ID: <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com>
Subject: Re: [PATCH 00/12] ARM: use adr_l/ldr_l macros for PC-relative references
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ATjOjUxf;       spf=pass
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

On Tue, 15 Sep 2020 at 22:32, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Sep 14, 2020 at 2:57 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > This is a respin of the adr_l/ldr_l code I wrote some years ago in the
> > context of my KASLR proof of concept for 32-bit ARM.
> >
> > A new use case came up, in the form of Clang, which does not implement
> > the 'adrl' pseudo-instruction in its assembler, and so for PC-relative
> > references that don't fit into a ARM adr instruction, we need something
> > else. Patch #2 addresses an actual Clang build issue of this nature, by
> > replacing an occurrence of adrl with adr_l.
> >
> > I have included my existing cleanup patches that were built on top of the
> > adr_l macro, which replace several occurrences of open coded arithmetic to
> > calculate runtime addresses based on link time virtual addresses stored
> > in literals.
> >
> > Note that all of these patches with the exception of #2 were reviewed or
> > acked by Nico before, but given that this was a while ago (and the fact
> > that neither of us work for Linaro anymore), I have dropped these. Note
> > that only patch #1 deviates significantly from the last version that I
> > sent out, the remaining ones were just freshened up (and their commit
> > logs slightly expanded).
>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Thanks for the series, Ard.  I was able to compile and boot the
> following with this series (and the fixup to 01/12 applied):
>
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make defconfig
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 defconfig
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 aspeed_g5_defconfig
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 multi_v5_defconfig
>
> (So ARM v7/GCC, ARM v5,6,7/LLVM).  (Technically, the v6 is not
> booting, but it's not related to this series and fails to boot without
> the series as well.  Our CI on -next is red for an unrelated issue
> which is masking the regression).
>

Excellent, thanks for testing. Do you have any coverage for Thumb2
builds as well? (CONFIG_THUMB2_KERNEL=y)

> I was also able to build+boot the defconfig with v5 and v7 with some
> configs disabled and a few hacks with LLVM_IAS=1.  This series allowed
> me to get further in the build/testing, and I have a few new bugs to
> go chase.  If anyone's interested:
> https://github.com/ClangBuiltLinux/linux/issues/1154
> https://github.com/ClangBuiltLinux/linux/issues/1155
> so we're still a handful of bugs away from LLVM_IAS=1 with ARCH=arm,
> but we're steadily chipping away at it, and this series is a big help.
> Lest it look like there's only kernel fixes in this area, Jian's
> https://reviews.llvm.org/D69411 recently was a big help, specifically
> for ARCH=arm LLVM_IAS=1.
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA%40mail.gmail.com.
