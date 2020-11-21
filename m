Return-Path: <clang-built-linux+bncBD63HSEZTUIBBUMG4P6QKGQEYT4U7NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B042BBDD2
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 08:35:47 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id w9sf7640065plp.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 23:35:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605944145; cv=pass;
        d=google.com; s=arc-20160816;
        b=X9QBEMcdg8HLRME7Po121fUPY5DDn/NUyeXtMyCv/u+1WAMRfSuopkugWdCvw3vOGa
         Mkzh9E5IovELNwRrumJ4lA9YW8SPMr0rCGag+qW1BhkJlyHb5agnCBT5eeqG9U+Iigb3
         DS8mjHUWbtFgycEfyYMcml/6j8Ix5Rz3//xz7jlFnFjHrowHqWQs1NViBrkhUM5TTSEH
         tGExXariMiHsN7kwoD/DIu638qM++zg4q8G1x+iFYfzwWQff4IiZkynTUDWGpqQTa3YJ
         9PximEoZlhNUJSzSMdVKm/PlNYaMP7kg5NUsyBX317qaQ6Kn1OzPhdBRRfo7sBnOBNN+
         hlIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=yY/lO6nuA1jhG2GsCgbc66ZI5Mkqx1XWmPXz5NR49Ro=;
        b=U4+ZzTQQUM0PPDDnnoE1654gOdvo07lTbdd4ufltUTzR7LKsY9cV/O3mUJI2zIAksy
         bdtjwWGR/3TNJiBx02zbSOwtCZY0oajHHFK9SVGlzDM3htoo+E1TxB8sBkjlj9+p1ThI
         XYDTyMghtiKTqJ8sgSeJBT462EeAVI3ua16ib9onMhKmwq6m+Mi4jH7Zhfw4n9pNzCAr
         MtWxZwiwaCxkwUvuqOj7BgOeZoRIpiwc0jeca6jCYI8cy/NQF2aBXAFJKiy/1wLbt1c7
         Vriba5mixAYc3K7eC0YxeAPOg83tTbdZelu5WNvDeJtGORXT0nf4shN4H8bPGzm0c+Su
         3lhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NBoERCzx;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yY/lO6nuA1jhG2GsCgbc66ZI5Mkqx1XWmPXz5NR49Ro=;
        b=E2IM0rXoVp6tegL5F10gFYME47g2GqzOq8Uht0IkYXEaqIihecIUJnRfYQUbOJ/qL0
         gw5O49Pa80TlyiYzU7yoE/rjBuHeEOn7qUOS+KBWSkMM9k1TeoN692EZvCeIKs3KY2a0
         tJja2FhsBVCnAEESZw6iHW4iVI5MJ7dc5F9kwL1hklajO335nsDSTgqSgLdAQvoiucwg
         rbwzLOiuK2cqsBFESsl6d5t+mP56oaBEcyEF5aCChP4ai/SibBQYPXTo0s5hzFq5pgLX
         KD+KNSxW3Usyc0gppehKTyjDWXfZ5xrRibHX8Uu3Vm9qlirdXeCL04Jq0ysFIcermqJH
         SHgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yY/lO6nuA1jhG2GsCgbc66ZI5Mkqx1XWmPXz5NR49Ro=;
        b=itjYwwqMdx7R2zq0gRm59uSG421d/SFSSk6AQVgpbb8zm4T4nqn2606Fh8RQNdugjG
         17YVNGJx91EaB/PZO0CbrVn0a7gvdO77F0iV/PbRgzhz/hK2qEljlga8VEdJf28o2aJK
         jXMGcGCApT6D4CAY4JdOwPFPHfHv+SGKvzpJyZeQEmgrZvpuOpOM64gcrZJNMRhYsWec
         dlofWCDHD7PEWakRbH4O3NdhfMWsP/pBLp5SPQ18TlVxdIs6bKqdHlF5IMYVCTcrTp39
         QDJPQL68eYFEiYPbLF2ayVLXNSHUe7Zt8UobX5/tV00iIhu2JZ8v5bEMLmMlJ/c3klRm
         LS9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kJ8KmxtKTflFeiBsEMVvRyN4rxaOxbFl4bJ4DBbAiD7i2jMtk
	EvcWnNtUAxVkN2e3vYvozVU=
X-Google-Smtp-Source: ABdhPJzBCj26MRqGnPxE+XhuNa89Ig/jIMPo2TRcaxAS9hhiOPsNkmnv2Lbkk4DZCXv/1YFMNNrwGQ==
X-Received: by 2002:a17:902:7606:b029:d3:d2dd:2b3b with SMTP id k6-20020a1709027606b02900d3d2dd2b3bmr17309746pll.67.1605944145730;
        Fri, 20 Nov 2020 23:35:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8508:: with SMTP id bj8ls4180403plb.2.gmail; Fri, 20
 Nov 2020 23:35:45 -0800 (PST)
X-Received: by 2002:a17:90a:2c46:: with SMTP id p6mr14749679pjm.166.1605944145137;
        Fri, 20 Nov 2020 23:35:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605944145; cv=none;
        d=google.com; s=arc-20160816;
        b=s2sDZPPlLxutVm6hGBiRROIDvHU5BxvgPoCMJjgC9ckuZrI8KbN18jaUFa9QhjomXH
         9Xw5SHfHERJaeecc1yX3x6CO6NW/WpdvbOerSSKdlIOJVRBNiMNsJf8mVmetSn77TmWj
         AjsSL6RchVmmp/pbYtL22VADD3UqpJryopvDCbHsAfE75+k1RSe9RkqbLS0593lEVFuS
         Ixk+jt7P0FfLzZfXAvdIQjM2bgFRpAApSaQEnDNxXKYhrJ/IiOonuEmym0uxDDMTiWp2
         5GBAqWnAyN0ZXV/Wgm3qx1tAAEkNdblLjyNvbkhLtMwf41gHwKNBsPNwsh2GSERP9IKc
         AUhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q6qnmFUkJHhKDvOkH0AAIp6sTJnmBFf0jZl87kV7m1s=;
        b=FlEZlbMeQvBj6CHLo3S/uLPfE5hw/dwvMJcJqDtsBbCcdKFz+uwbn288RPnMOhgmYr
         cv4AbwjGnLw1BQKEpXoP7q7XE1k6HJlTpkkl6dEoaCUZnVdIQsXMEH7tsVi1UKb6p5bL
         XrbyeTt1+DM5qV/12/kA0Z03h/QKfUn3DM6ek21e/Rd/uA+uCV1Y2vRZVSA0622Smp/e
         g+h+DeOWPGift1oTqauQET/s0tUlnmAjt5INI0QfRjCRsxS18ZYy8VRUvGrPCNbs+i5R
         3FmQWi2lHJ47U0MCi8CqXpTp1wEsC8H9qkt87ynvlkfiRTjHAc045gXmtuOC3kZA790v
         m9hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NBoERCzx;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si332571pll.0.2020.11.20.23.35.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Nov 2020 23:35:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AD08822253
	for <clang-built-linux@googlegroups.com>; Sat, 21 Nov 2020 07:35:44 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id k26so13362471oiw.0
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 23:35:44 -0800 (PST)
X-Received: by 2002:aca:d4d5:: with SMTP id l204mr7701517oig.174.1605944144026;
 Fri, 20 Nov 2020 23:35:44 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
 <CAKwvOd=5PhCTZ-yHr08gPYNEsGEjZa=rDY0-unhkhofjXhqwLQ@mail.gmail.com>
 <CAMj1kXEVzDi5=uteUAzG5E=j+aTCHEbMxwDfor-s=DthpREpyw@mail.gmail.com>
 <CAKwvOdmpBNx9iSguGXivjJ03FaN5rgv2oaXZUQxYPdRccQmdyQ@mail.gmail.com>
 <CAMj1kXEoPEd6GzjL1XuxTPwitbR03BiBEXpAGtUytMj-h=vCkg@mail.gmail.com> <CAKwvOdmk1D0dLDOHEWX=jHpUxUT2JbwgnF62Qv3Rv=coNPadHg@mail.gmail.com>
In-Reply-To: <CAKwvOdmk1D0dLDOHEWX=jHpUxUT2JbwgnF62Qv3Rv=coNPadHg@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 21 Nov 2020 08:35:33 +0100
X-Gmail-Original-Message-ID: <CAMj1kXHTtXqssica=ADMOrA+7mhBQv=nGBsR-XR0+LAKk_-dWA@mail.gmail.com>
Message-ID: <CAMj1kXHTtXqssica=ADMOrA+7mhBQv=nGBsR-XR0+LAKk_-dWA@mail.gmail.com>
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>, Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NBoERCzx;       spf=pass
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

On Sat, 21 Nov 2020 at 00:53, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Fri, Nov 20, 2020 at 3:30 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Fri, 20 Nov 2020 at 21:19, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > On Fri, Nov 20, 2020 at 2:30 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > >
> > > > On Thu, 19 Nov 2020 at 00:42, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > >
> > > > > Thanks for continuing to drive this series Sami.  For the series,
> > > > >
> > > > > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > >
> > > > > I did virtualized boot tests with the series applied to aarch64
> > > > > defconfig without CONFIG_LTO, with CONFIG_LTO_CLANG, and a third time
> > > > > with CONFIG_THINLTO.  If you make changes to the series in follow ups,
> > > > > please drop my tested by tag from the modified patches and I'll help
> > > > > re-test.  Some minor feedback on the Kconfig change, but I'll post it
> > > > > off of that patch.
> > > > >
> > > >
> > > > When you say 'virtualized" do you mean QEMU on x86? Or actual
> > > > virtualization on an AArch64 KVM host?
> > >
> > > aarch64 guest on x86_64 host.  If you have additional configurations
> > > that are important to you, additional testing help would be
> > > appreciated.
> > >
> >
> > Could you run this on an actual phone? Or does Android already ship
> > with this stuff?
>
> By `this`, if you mean "the LTO series", it has been shipping on
> Android phones for years now, I think it's even required in the latest
> release.
>
> If you mean "the LTO series + mainline" on a phone, well there's the
> android-mainline of https://android.googlesource.com/kernel/common/,
> in which this series was recently removed in order to facilitate
> rebasing Android's patches on ToT-mainline until getting the series
> landed upstream.  Bit of a chicken and the egg problem there.
>
> If you mean "the LTO series + mainline + KVM" on a phone; I don't know
> the precise state of aarch64 KVM and Android (Will or Marc would
> know).  We did experiment recently with RockPI's for aach64 KVM, IIRC;
> I think Android is tricky as it still requires A64+A32/T32 chipsets,
> Alistair would know more.  Might be interesting to boot a virtualized
> (or paravirtualized?) guest built with LTO in a host built with LTO
> for sure, but I don't know if we have tried that yet (I think we did
> try LTO guests of android kernels, but I think they were on the stock
> RockPI host BSP image IIRC).
>

I don't think testing under KVM gives us more confidence or coverage
than testing on bare metal. I was just pointing out that 'virtualized'
is misleading, and if you test things under QEMU/x86 + TCG, it is
better to be clear about this, and refer to it as 'under emulation'.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHTtXqssica%3DADMOrA%2B7mhBQv%3DnGBsR-XR0%2BLAKk_-dWA%40mail.gmail.com.
