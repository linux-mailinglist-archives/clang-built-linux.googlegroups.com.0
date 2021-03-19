Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB2NC2KBAMGQESFJ4BIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A871341BD3
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 12:56:26 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id 6sf17878880ljr.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 04:56:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616154986; cv=pass;
        d=google.com; s=arc-20160816;
        b=UWkkpFTG0+hgelI72BQz9FUnV1oyDoVrakDKki/MGy+kXnOAlzW85Bq48IW8+UF0dH
         Wu5rCzCIglb6oVbbz2FVg/mAxJ8KI+ZwP+33BneT4LjpbYi/hj+Sao/UNxB4PVWY9Omn
         dBsR3Vn8p3hieeh2WBdy92Z4JVpqabYi2LeBjFXzDPI8WzkrNEIwfyGVnmBWoFstFsRA
         pk57xgNK0osDotA3p6RZ+yF5sny8eyshdTrYRTHoVNBNFHlxtXQKLMN5jQugU9xgmgg+
         T8DD4/nwjntf4d4MiJ5gb343POzoZGRToC0ZGlvcv++S+8VYOJ6f2C7fWyNzrjMQdkIQ
         fJrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Tfvoa1x3IWoOukzRrzCJNk8L7AVFekbAYHa+R33qSbA=;
        b=slx8QCVScCtl+F0t4zDjcaxzb2YN0jdlddEvLMgmKt8jjEtd1tFpbMwOebMBwNd09p
         hgecvSTZgjLHA/SqzcF5oMZNee3Ej++S494GazlRIzHsq5HPc2YpW8N8l8U1LnUSKjU1
         g0PCRHxDLCNH0C4+ZKaDOlYpsIBDsCfyjPLRRnYF7qpUy6X2TKTPoPAvQDPoAHKVtmFc
         HUcAFKrtFsV1pkQvh1VQ+AtI0oLEVKybuGu20d0cad8kd7CxPyWbu7dOpU3aFfuaL0LK
         J2JkV6PuyAG6lK33zBwCK4Md/k5BefLuRwboriwectJgk042nhcLipHFt+8MuDyLROGC
         5xJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tfvoa1x3IWoOukzRrzCJNk8L7AVFekbAYHa+R33qSbA=;
        b=mug5q1sDhQUlAOrzxQ2woYU++tW8H/G9c5+iVMwRPwyITSnc/MDeP+F0uM2dIpz7Ve
         D+s25/tXsOiT4XRNhOwAvx/JPLzziQRdps3A63VGSR4+U3g32Lb5cRZnzNy/ssh4iTNC
         jZ4HYY+1M4am8gGWzvAtkTZf4xjOyXVDfoSI0DrJOtnvyy22BmghJDNeuJbm5dQGwuJ4
         1j2SIx9hQvpXS3/rvro0DMR2SSBfLI9+scSWbFwFsrwD/znzQ4+deVPPM4zkXgPsc2hc
         7bhnpkSKbwO/PCog5jjFqCDRNsiHuq1wpi9XTZSDkvf4iYKPwdqbTf5rUJfeIicypb4p
         4upg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tfvoa1x3IWoOukzRrzCJNk8L7AVFekbAYHa+R33qSbA=;
        b=mxEMLczb5CAhFv7NkO66bKmQ7NBTd/LotN+znbo4CNC2vXPMi0zaBAPXS+7UkNsFNw
         sgx9bmayqu7nSthdfbpZVo0bvVueGZ2Il0tURzszkEgFjktoghB/rJHAFghcbn16hU1Q
         XrQsDAQezDp99KwpBXnECA/H0SMNQALJZsb0L2hhLruotHn5u96OkdLUfCuDSVCuD0To
         gpuXgp7ynUO7Pf1d841Abc8u3v0kVlPC2cDeOTbHbMk3h4EdsyyS7BYFkLCp6WE5xY25
         IgwVe4edBpost4U5fAlXzx36oJ4nvwvHyYN89Nj61+3HzCoCTZbt8DOAs9wgIsohO+Gu
         uG4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Vn28AcaPNu45C70eQoNYMqTvdk8IMY5fDAd5AFjHM223syIhs
	psG5znCi8PG1kkc090p2Q/4=
X-Google-Smtp-Source: ABdhPJwsFTnuuRYIHESKhf+rsRpY9FnLKeksz1unxWgk/DuPSEu6jA3Griso1ZzONm3L7yQFYpmP8A==
X-Received: by 2002:a2e:864e:: with SMTP id i14mr686028ljj.15.1616154986026;
        Fri, 19 Mar 2021 04:56:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9212:: with SMTP id k18ls1156856ljg.8.gmail; Fri, 19 Mar
 2021 04:56:25 -0700 (PDT)
X-Received: by 2002:a2e:9098:: with SMTP id l24mr703537ljg.150.1616154985029;
        Fri, 19 Mar 2021 04:56:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616154985; cv=none;
        d=google.com; s=arc-20160816;
        b=tR5MfA7V56HDnCjBtbJZ+Kf6EME1G9/viTrkTtzRA7TfD58toVnNw5E4VUtAGc+5bV
         2l9MYddO8L86LBiKSf2xiZOtnXu5pghCRmCtvbPkpYKSN1NqzT5eFQLERH5+SAYwsrPh
         LWcNooig7sCO7ixgzJ29jvFCHriGqd1jjS37uADUsau/8qiggeaiRwQ4DCI1kDi5PfJA
         qERFZ1HGRPTN3nGbFJe3ivGOe8n9r4zcDVSNzPABNBYzh11S+2FQ13IwDVS0KMf2ZL0r
         oGK96CUUu431Wpe8+5+eU8YEe1roOvTWp1PW3fhuRRmmAZTKrUWk/AB1P48RqPpkD4wV
         Fh4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=0pg+6GCPI8vslAWodeukQwyJSd+QkRRri6xwBXnzYm0=;
        b=PD3LRCitiBUOiurKrokYpCqKD5vBTJCTKISgw4UZtwk0w23MTXTpXV/bpVwtTFCVI+
         +60yFXHiH1wXGBdxcLdt6Hkj0ehlVtMzEDOC+e44/ZnjWSC4U2DAOKnm2pMO+5heWH71
         iK7/5MD2FEG4qvnIYlGRJKsH2epcLw+ygfL7QPzcojsG2GV/sq/9HN3hcR4s36diVkK7
         e3z7JcrbzOd+n8NPQ9/tWMonLfL4KvLgN/uAOa46GmDtYuJ8VajY1o2xHMbtBgFPsnP+
         q9DXte/AYhuq2MyUyocB3M8yvy6Fat4LgNQpS1JHJOAb0ks94BtWCByUArleKtXCUL9p
         vD4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id p18si176304lji.8.2021.03.19.04.56.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 04:56:24 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from mail-oo1-f43.google.com ([209.85.161.43]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MzhSh-1lablJ0NEH-00vgbv for <clang-built-linux@googlegroups.com>; Fri, 19
 Mar 2021 12:56:24 +0100
Received: by mail-oo1-f43.google.com with SMTP id i25-20020a4aa1190000b02901bbd9429832so2240816ool.0
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 04:56:23 -0700 (PDT)
X-Received: by 2002:a4a:8ed2:: with SMTP id c18mr1102738ool.66.1616154982844;
 Fri, 19 Mar 2021 04:56:22 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYseDSQ2Vgg5Cb=8HHdpm56aeVQH0Vdx7JK1SktGpRRkgw@mail.gmail.com>
 <CAK8P3a3Za8N2-Hs02nG0CcGJ+RcTrR0UqDOesd8E6PmhYRR2_A@mail.gmail.com> <ebf12838-4525-a525-93bd-2229927e50ca@physik.fu-berlin.de>
In-Reply-To: <ebf12838-4525-a525-93bd-2229927e50ca@physik.fu-berlin.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 19 Mar 2021 12:56:06 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2WCYxG4-4x49Uc-+pXPciY5EsDqmNcEfufcXZp6Q3+MQ@mail.gmail.com>
Message-ID: <CAK8P3a2WCYxG4-4x49Uc-+pXPciY5EsDqmNcEfufcXZp6Q3+MQ@mail.gmail.com>
Subject: Re: sparc: clang: error: unknown argument: '-mno-fpu'
To: John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	sparclinux <sparclinux@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Anders Roxell <anders.roxell@linaro.org>, =?UTF-8?B?RGFuaWVsIETDrWF6?= <daniel.diaz@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:epBN3nF/9Z/1H8Ls6iozeS5ArR2/tuszVflS4i5UQI8w1//ZJU+
 6AnuKxezmbU7o2wZHfD5FLQH0sXSUgPHABAvcBZgWn/++PdlGamAAkSCEA/MisHgp5qm7rL
 U0+qXmPYq1aVqR5pSk+EFpvRp/8udRphe6OK4lfvJod+eD2bcFjbakuECL8PE6c6df85sch
 FcqQM0IKObSiVrpHztVLQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NdN+uZWCfA0=:1jo+2ImageBuHpAqBw5fem
 BL0pvyQGGSaiH/VMwxsQE/cgr4L6UJVWWiVfhVWYdvrORzHk0RZg+jiRn7rBR7V08psUImxBX
 9TWDn/M3Sc6ZFmAayIPwtizsHGc5wyWCoaph4DmhidUP3KvkkcG68ajWd6fmRIM8w/npNsO3g
 GKsm0xd4uuwC+McHZ20RV95swf2BqIBfAE08U+dp0NC+gri5zTP31ZAE+HwVFts+xNVvPRbH1
 1TLpHbMo/I+aTVI+pjiDK+X2SNykvKvutdx74Bx5HMdJorUllOdQoVf6OCA4bmlCLjItfcKRE
 pehf8TIQBs2Nbjqs8CecMGiK49waK1Nf90V4rgV9MYHEiIPLNvIQyPOSd3o25BRu4MDjw787n
 ZIEBs+LOWjYtUnSH88Uvpud/GpvSoneyO1C2W0MTUN15dcXo3uo7eMUs97Ib8Df0aKaXE7CSF
 okvNHDmcnWlJdFtoe2hYUO/joB2XH2JwPOYX9UxEdDbAz2cAOL/E48EaHp85zzJIC+LpOCH0P
 zCxk8WNNpipiKT+hwqNtSCmF7Ft/mmPUXwY56nf4WqtMkjDwx1e9kMLex/2k5K6tQ==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Fri, Mar 19, 2021 at 12:38 PM John Paul Adrian Glaubitz
<glaubitz@physik.fu-berlin.de> wrote:
> On 3/19/21 12:31 PM, Arnd Bergmann wrote:
> > On Fri, Mar 19, 2021 at 8:36 AM Naresh Kamboju
> > <naresh.kamboju@linaro.org> wrote:
> >>
> >> Linux mainline master build breaks for sparc defconfig.
> >> There are multiple errors / warnings with clang-12 and clang-11 and 10.
> >>  - sparc (defconfig) with clang-12, clang-11 and clang-10
> >>  - sparc (tinyconfig) with clang-12, clang-11 and clang-10
> >>  - sparc (allnoconfig) with clang-12, clang-11 and clang-10
> >>
> >> make --silent --keep-going --jobs=8
> >> O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=sparc
> >> CROSS_COMPILE=sparc64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> >> clang'
> >
> > I don't think anyone has successfully built a sparc kernel with clang,
> > and I don't
> > think it's worth trying either, given how little upstream work the
> > sparc port sees overall.
>
> We'll get there. There are some other SPARC-related clang bugs that need
> to be squashed first. We have made quite some improvements and it's actually
> maintained by the community. Of course, we don't have a commercial backer
> but that shouldn't be necessary for open source to work.

I meant there is no point for Naresh to do it as part of his build
testing with tuxmake.
If someone else gets it working, they can tell Naresh to try again, but until
then, I'd limit clang regression testing to x86, arm, powerpc, s390, mips, riscv
and arc.

         Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2WCYxG4-4x49Uc-%2BpXPciY5EsDqmNcEfufcXZp6Q3%2BMQ%40mail.gmail.com.
