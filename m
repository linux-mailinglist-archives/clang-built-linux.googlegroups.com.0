Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ6R2OBAMGQERCWMV7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id E613A34241C
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 19:09:07 +0100 (CET)
Received: by mail-ej1-x638.google.com with SMTP id gv58sf18539479ejc.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 11:09:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616177347; cv=pass;
        d=google.com; s=arc-20160816;
        b=SRaMhkjr0jkbxRUYE8EhtFESJnNGJnXY3kLIk6Y0YiKhw+g9E3tcfRsGaQ/Zc6JgNn
         RnMad6GB2dRvT3zF2jDJxOEkIvK+9GMic+ifUitRATNJEfygglIIvr3lGxTuw4jrGOZs
         z7TnYNKmiJB78QVKcMef26rMvJ+tm6eTsR+t1JJmb3zW69F6+Lg8EOdCiX8N46GHO1a3
         F648siLef0xC6H+/3zFLiREMAp7sTs/JinsgulstgxEk99884CVGe+kMgTjryk+zySIu
         lj1A4gu1IMFgtg9+BZEKOJWNex31yDsg9SGKBWqb/fq2mPG8y6wYTrhAy6iN7ItRacLv
         RtIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=G27UeKP0oVihsX+edsiFEpoNflyJvPP/4lZmU9zs4gU=;
        b=S5jpbPXa/DAJwGlngpN+fslitkohEMCYEZcHapFkTOqYskmjnWOu12mFxEdzlBy/Xa
         ABBGYRwc+aHyoR6Rup+rUBsLiY7sev3YaFFVSCb9ezyoDuFQHln/iEMxKvAAZz24EBV7
         k9fDzolYrj1Nbe0ue1rQi8JF+8lAat0PqxzJLhnzY6Z6f5qAuPUuNEG8eGbCnsh8OryF
         ZiDMlCdKW4LhW532SS5VChiqZwqXp0KJAt8UtWmxwg8F8vsX90U2xT+wGNz/QBoIxkKd
         towWZc5REno5pRf2OfejT/VMbB/SEG4Wix0v/3gb9x1bQtOcXAUlrgX1P0oU9iZWxcKS
         Lakw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WZPkxBhu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G27UeKP0oVihsX+edsiFEpoNflyJvPP/4lZmU9zs4gU=;
        b=RKRDlcs4gqEqG7qc/LKgDNxjU3LHlt8TY4ns6Mh7uKVi/qbZHCPePLqTZ2Njkr8sin
         eLmPFCOTXDI2SCPzq95IaadDmGQiBoT7d4bPohvCyZjiZK/Nh+U/s1Dn5Fta0B9FoJ8H
         kSNel7TFdCtDmisCagRnKchd3l4lhTMr/Ljf/tDfSkx4428rtEDFrDNhpogwmvdLVNDO
         PJw1pw/AsjQeROTNgbm/4NhDfSsi60TAfcTWtqZPYyG8lS+9X8tWROsdxFdzzSz9uvCj
         GaUM7FvvR9FIV7tVhLAVtbJbxA+1Wa0oaIROcdmqiyIv4d4Nfebo8vj4X+9uNla1WLKl
         a86w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G27UeKP0oVihsX+edsiFEpoNflyJvPP/4lZmU9zs4gU=;
        b=DyDWhieuoD45NbFgnVe1i+fivvrd6lYLvn+AU1Zjz3wDNjDy4p88kygEckEmUoeNtf
         qtnYF3BbX8IIumIf4k2MTh2hvQxnMT9jE8nvblji9vFDkeoBMmqc1KCe5LgJQJL3pwgj
         byMFRGQ3oLrvQpf6UaXk8oRCUQhDvWW7cml9N9B5onWxppd19bFoK7vOSQwAlhR6WQFw
         5+2x+0SBGrYra7oRsEmeADTVwGU9gfHysWj9wPyNH0hVcW+NxBXQ0KwX5NguV4oXc85z
         vw/EzSIqMjEcbAOlTQB3nMGqeUgY3OXzhWyyjjaJnHgaFNW6Le+coxWXbjEebTMAA8EA
         rZ5Q==
X-Gm-Message-State: AOAM533WSMrI0E/CZ2ZMZ041IuQniCbzCoAlYm+Pni6MF90DKet5KZk4
	5NNm7dcDIwFVMHxBSO+aY5Q=
X-Google-Smtp-Source: ABdhPJz6//81ZVbcU7TPvPAV1eiaWMvn2usuV017tAubUnhRx94anlScqGsen799uLes1VJ14pMKtQ==
X-Received: by 2002:a05:6402:51d4:: with SMTP id r20mr11068656edd.112.1616177347755;
        Fri, 19 Mar 2021 11:09:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:c192:: with SMTP id g18ls3714906ejz.10.gmail; Fri,
 19 Mar 2021 11:09:07 -0700 (PDT)
X-Received: by 2002:a17:906:a44f:: with SMTP id cb15mr5748369ejb.420.1616177346951;
        Fri, 19 Mar 2021 11:09:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616177346; cv=none;
        d=google.com; s=arc-20160816;
        b=wlLLP4lrq9wSUnij2aqf5ywhKuixIA8/QzTuIfnw/uyV+Sao1LnvDU4d/mrmFcfi+m
         LzMVLlQ5JaSbxmQzobzArGxhOoH62jAVwvNC8eFiT/xP0PMzeCJ1sbxqGZJ+qFcgejV8
         i2zFGG7t+4CWo/wQuMkqRFVdmd0EfzLBx6N4pxYoJNYOricAqy/cIJ2SBawJgGKrkWTZ
         0oVBvRDeoVuPCJHarI8+lgYMXzVs4O6XVBN4wpV8+BkapHPPOjY5rVdtl5scmeW0pZUm
         7RhlAFSjpUBsntaLP95Ufy8brbc6bFL9B6i0NWXE0zTr71jsn2cHrZ1Z9lIL1hTt+2V/
         fvsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wuZyAZ3JnSH71+O2rOQSNjgWBlPwFLx0QGqENzzRt1Y=;
        b=usO6itOZrlR81/bEpT4Kij4n5JFKFpDRwdQ469+HtPOjoDXgi4ndOmu8acIfWAIEU9
         0jDujW4AJFeoKRbe/I3fApxMLgQDvm2zEKmSdPJxC4gVqfwIXMMbWHSj6GlmHz3eWKZK
         dtoKwE+8nC/E5CXh2FACWD59aB3UKaDJ2I8WrFOGD+NWaVGvvuD/iGRyVkISM3z+orib
         ihSV50oWDAoSYmumbQl4TZqA+ZVLbDf3F4eHyjmt4+vgKiKmBfEW5wpIsRgjElgDxbLF
         BQAH7bga7spiOBjHUsv/cvMwmB3/8pjK7NB46OrdTVKd0MZsZpfq+in9XNrKaJyKVQSF
         y23Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WZPkxBhu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id c2si87158edr.2.2021.03.19.11.09.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 11:09:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id n138so11349743lfa.3
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 11:09:06 -0700 (PDT)
X-Received: by 2002:a05:6512:34c3:: with SMTP id w3mr1457103lfr.437.1616177346474;
 Fri, 19 Mar 2021 11:09:06 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYseDSQ2Vgg5Cb=8HHdpm56aeVQH0Vdx7JK1SktGpRRkgw@mail.gmail.com>
 <CAK8P3a3Za8N2-Hs02nG0CcGJ+RcTrR0UqDOesd8E6PmhYRR2_A@mail.gmail.com>
 <ebf12838-4525-a525-93bd-2229927e50ca@physik.fu-berlin.de> <CAK8P3a2WCYxG4-4x49Uc-+pXPciY5EsDqmNcEfufcXZp6Q3+MQ@mail.gmail.com>
In-Reply-To: <CAK8P3a2WCYxG4-4x49Uc-+pXPciY5EsDqmNcEfufcXZp6Q3+MQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 19 Mar 2021 11:08:55 -0700
Message-ID: <CAKwvOd=TYuzcXK056nn4M4i475op=mvgNJA894FYH0gLSXY_PQ@mail.gmail.com>
Subject: Re: sparc: clang: error: unknown argument: '-mno-fpu'
To: Arnd Bergmann <arnd@arndb.de>
Cc: John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, 
	Naresh Kamboju <naresh.kamboju@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	sparclinux <sparclinux@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Nathan Chancellor <natechancellor@gmail.com>, Anders Roxell <anders.roxell@linaro.org>, 
	=?UTF-8?B?RGFuaWVsIETDrWF6?= <daniel.diaz@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WZPkxBhu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130
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

On Fri, Mar 19, 2021 at 4:56 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Mar 19, 2021 at 12:38 PM John Paul Adrian Glaubitz
> <glaubitz@physik.fu-berlin.de> wrote:
> > On 3/19/21 12:31 PM, Arnd Bergmann wrote:
> > > On Fri, Mar 19, 2021 at 8:36 AM Naresh Kamboju
> > > <naresh.kamboju@linaro.org> wrote:
> > >>
> > >> Linux mainline master build breaks for sparc defconfig.
> > >> There are multiple errors / warnings with clang-12 and clang-11 and 10.
> > >>  - sparc (defconfig) with clang-12, clang-11 and clang-10
> > >>  - sparc (tinyconfig) with clang-12, clang-11 and clang-10
> > >>  - sparc (allnoconfig) with clang-12, clang-11 and clang-10
> > >>
> > >> make --silent --keep-going --jobs=8
> > >> O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=sparc
> > >> CROSS_COMPILE=sparc64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> > >> clang'
> > >
> > > I don't think anyone has successfully built a sparc kernel with clang,
> > > and I don't
> > > think it's worth trying either, given how little upstream work the
> > > sparc port sees overall.
> >
> > We'll get there. There are some other SPARC-related clang bugs that need
> > to be squashed first. We have made quite some improvements and it's actually
> > maintained by the community. Of course, we don't have a commercial backer
> > but that shouldn't be necessary for open source to work.
>
> I meant there is no point for Naresh to do it as part of his build
> testing with tuxmake.
> If someone else gets it working, they can tell Naresh to try again, but until
> then, I'd limit clang regression testing to x86, arm, powerpc, s390, mips, riscv
> and arc.

We definitely cannot yet build arc.
$ cmake ... -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD="ARC"
$ ARCH=arc CROSS_COMPILE=arc-linux-gnu- make LLVM=1 -j72 defconfig vmlinux
...
clang-13: error: unknown argument: '-mmedium-calls'
clang-13: error: unknown argument: '-fsection-anchors'
clang-13: error: unknown argument: '-mlock'
clang-13: error: unknown argument: '-mswape'
clang-13: error: unknown argument: '-mno-sdata'
clang-13: error: unknown argument: '-fcall-used-gp'


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DTYuzcXK056nn4M4i475op%3DmvgNJA894FYH0gLSXY_PQ%40mail.gmail.com.
