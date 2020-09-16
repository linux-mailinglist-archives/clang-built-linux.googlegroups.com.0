Return-Path: <clang-built-linux+bncBD63HSEZTUIBBOORQ35QKGQE2BUGR5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F93726BC01
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 07:55:06 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id j4sf649127uan.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 22:55:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600235705; cv=pass;
        d=google.com; s=arc-20160816;
        b=FmxonqlmQZ3XDiPKl/wr7bk5gmEkRMY+nQGTTJw9daj+ybFoLtjMNsnd3JLDCHihUI
         0cF+bnAd4xtBinZoajz01Z/OupIi2F/LxSKpuCEYpThkOVHLu3Y8Dpr66tIeydutrlAW
         kulvSB2lE/qz1lVqnBpDcRTOtvwVo2ZTqb3cIaXklbiExAJccmqeT//qUXb4xN80ezZ+
         qhYFEAIRN48m+i1krrbATNsn51APUc2o3NiAlY+wIX68IBzr+CfQXumFvis7zhbcE/hh
         VOT+BZcNQJVlO/+wsPJAJqROQcuCDFoXin1Can6xAyLgU8AE82MarDoySNugxpNM9HnO
         8PmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=xz06AA+IYSQa9AyI2JqGnjMKnxyHMTqo4xKJDIrTlIs=;
        b=GonyKlACqE32Cb5ViNpOHaKiev+OpY1DAJy2lji2iVrDIVMvrar6PGg5dcAqOjUxR7
         gi2uRCDsvQAFIeeIwnpyM5Jin9U+HPhG1/hCdD2gbcVQ2nzONzflI9kwsCm+JjQxPBEV
         v+sHz5lao4zpOebrs/HyMKE+6nZ6JM0zPgMgyS/E2r/C5Ap2wE1vCu5VeC02SpD3qLpk
         ZxFVODAY9lZ3++mPt+adhSEBNNZ6tOsiL4vmuUDRWWbvlYPGiYLKYUDW8mklQw5vy9Bo
         6CQ5028d2KQlQVzK2rpraRsSiYxKYZdWn7CB2DoBmg7AtlpV3DSWPMiqG7IuUbY6WfTI
         RDuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aO6mjhbl;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xz06AA+IYSQa9AyI2JqGnjMKnxyHMTqo4xKJDIrTlIs=;
        b=cb6AwfMBUA9AmQHUEd/nWE5mDAUtjoOaDFf2VMOnYW71fZYA8pFBoAI+nDnk64CvYs
         bxivNRkAqT4GcpsatVFEZ+5pUVDR4D4WOdKW6vw5jzkyP160iPn2MtzkUlCnvC5ceV3z
         RewuZB5Xy7soD/9TZEQgefFuab2Q8/jtnhRxDpFVzTcoJMh1EjcHgAkJzR4dDlm5Jqbg
         O5OcI+v76BsGITs4dfwXxF5TvckvhEPOH4fz0Sk09nbrru92O2byCEz4/wJdTd5b1Tbb
         ubByYE2hba1gwUMUVoEWJE5dn7hmtWHXSKgqCWnC1WuZG7o5aJ2ESycpGJD36VmgCah9
         g4Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xz06AA+IYSQa9AyI2JqGnjMKnxyHMTqo4xKJDIrTlIs=;
        b=eweATot9bxWMIAxqRXMAg8hqaE8Ado8eNU/X+YoWSTrqT71aEdnaUEAoCxrJdEdrAe
         wYPlOMHsshhMSp9OB5pvwqVzSc76biXqIuN+YELNHOl1yRjwV6eeIr74SyiyBwD3afm/
         u/jXpyC0U6zxfqMu1GMT3T9bGM0OOUczfQ0nAgsdkqIzTTi3rcpKKHyFZ1GNcSQOvufY
         siGtWmG9BGVokSNPLZYE19EBQlTL92ifQrlSCDXyGE7iTpJfBBiV7saK0ZJx91hEhs0C
         2cFjbSfMIDiz9/zcRM8AySFX19rF6zKoX4IU9IXnB3RvpotkqYH1YcBywQ+Tjf+bA0G/
         kzAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lVSWi2FTSME4hcQUfAyyy7klDkWItoLytV8DU8zf9qbJqiPPP
	jPKqDlsOYn1aOXsKJOhu6E8=
X-Google-Smtp-Source: ABdhPJwx17Mnq3XvHyPaNNGpVcUblSXQMjbk8ltD4EtIfqAKKX4BRIiDv3cU9VV4+ruZwp9e48m9KA==
X-Received: by 2002:a67:cf87:: with SMTP id g7mr3644496vsm.33.1600235705391;
        Tue, 15 Sep 2020 22:55:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3183:: with SMTP id c3ls110495vsh.5.gmail; Tue, 15
 Sep 2020 22:55:04 -0700 (PDT)
X-Received: by 2002:a67:2d48:: with SMTP id t69mr12773162vst.27.1600235704828;
        Tue, 15 Sep 2020 22:55:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600235704; cv=none;
        d=google.com; s=arc-20160816;
        b=BD/1MxseFsKx5TT1tYqAHnNEfhoa3+uF0OJrR1XDuPN//1OQ1lFFyyJWmY+nfSA2rc
         s2Nv+/owLupWfz1GGkYbZvGQCfWhnJgML1sq1iEBPVY9R36zpQYFntG22xxrGBr84nT0
         qyDOyhvSBjss5dwCFX9F1YDjpF0hHTvlIimOAuPvzYOCCGqILHhyKKh0MdtYezxH6D40
         R/0tGbEooal813ZdB79Ozk6gFfn2mFIY7Xo7fR70nyJEDzi2O3bJJ7K/sQx8iUR32RGf
         0621Nt2c0FxzOrFzGJimymMJEqLxqBPwpRsjxb89l31K5hOGr+HSyaoMICcTVNY0qXg6
         yxEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uuJnCBBCgDlu/obDxdrE12sBfu+nixN/FQXItaRmy7o=;
        b=yMRZL87eUseUmR9ijBgaMrPAIuz9iicEksj5dLHd3mHHT41+mPAku4nrlywU6uUQ5C
         aghgB4hUmPuaDCT/5ldLlo5uxZZB6jPUwLutO99+991uCS9pDg5fmftjdgJOzUsFucc5
         r02ILTJ493Irva/9Z+aferdczhWpkQUH4GXO9et89FY9Yt9Hj6GlStvocq+0Hk3ip5dA
         3qeG5AiM9V7Cu/0tbSaYpriZPQEK+hLfcb8grK130T2wSj/WChyvlPCk0oZhrm2jU0Bp
         ztxa+R+xznK7ta7GfWq8MT5Zb7RT2Zh3jZPlRMG5bOKE/BpJbCQYON3UJyL6O1sE6+gv
         O5Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aO6mjhbl;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y65si1130785vkf.1.2020.09.15.22.55.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 22:55:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B353E221F0
	for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 05:55:03 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id i17so6777392oig.10
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 22:55:03 -0700 (PDT)
X-Received: by 2002:aca:d845:: with SMTP id p66mr1941259oig.47.1600235703000;
 Tue, 15 Sep 2020 22:55:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200914095706.3985-1-ardb@kernel.org> <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
 <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com> <CAKwvOdmkNgi_+kfauTSLwtpVChipW851_KGJG+gBbhwRxJJORA@mail.gmail.com>
In-Reply-To: <CAKwvOdmkNgi_+kfauTSLwtpVChipW851_KGJG+gBbhwRxJJORA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 16 Sep 2020 08:54:52 +0300
X-Gmail-Original-Message-ID: <CAMj1kXHTkP7-8xscGZGXN_0Sq=BCSnt3zWqkcm8xdO11xmditA@mail.gmail.com>
Message-ID: <CAMj1kXHTkP7-8xscGZGXN_0Sq=BCSnt3zWqkcm8xdO11xmditA@mail.gmail.com>
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
 header.i=@kernel.org header.s=default header.b=aO6mjhbl;       spf=pass
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

On Wed, 16 Sep 2020 at 02:31, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Sep 15, 2020 at 2:30 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > Excellent, thanks for testing. Do you have any coverage for Thumb2
> > builds as well? (CONFIG_THUMB2_KERNEL=y)
>
> Ah, right, manually testing ARCH=arm defconfig with
> CONFIG_THUMB2_KERNEL enabled via menuconfig:
>
> Builds and boots for clang.
>
> (Also needed https://lore.kernel.org/lkml/20200915225751.274531-1-ndesaulniers@google.com/T/#u
> for an unrelated issue).
>
> For GCC, I observe:
>
> arch/arm/vfp/vfphw.o: in function `vfp_support_entry':
> (.text+0xa): relocation truncated to fit: R_ARM_THM_JUMP19 against
> symbol `vfp_kmode_exception' defined in .text.unlikely section in
> arch/arm/vfp/vfpmodule.o
>

Interesting. And this is using ld.bfd ?

> There doesn't seem to be a config option to work around that for now.
> Though it's not caused by your series; if I drop your series, I can
> still reproduce.
>
> Is there a different config I should be testing rather than
> defconfig+manual testing, like one of the existing configs? Looks like
> only milbeaut_m10v_defconfig enable THUMB2 by default.  I should add
> that to my CI and kernelCI for coverage with clang.
> https://github.com/ClangBuiltLinux/continuous-integration/issues/94#issuecomment-693030376
>
> milbeaut_m10v_defconfig
> builds with your series for clang.  Looks like that config may be
> currently broken for GCC?
> Looks like it doesn't boot with Clang, so I'll need to debug that.
> Again, both of the two past sentences are regardless of your series.
> So your series still LGTM.

Cheers.

I usually build multi_v7_defconfig with/wihout CONFIG_LPAE x
with/without CONFIG_THUMB2_KERNEL (LPAE affects the size of
dma_addr_t, and uses a different page table format, so it is a useful
bit to flick in testing)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHTkP7-8xscGZGXN_0Sq%3DBCSnt3zWqkcm8xdO11xmditA%40mail.gmail.com.
