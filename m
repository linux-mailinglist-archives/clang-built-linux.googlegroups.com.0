Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAWGZD5QKGQEVMMG6YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id D66ED27B3B1
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 19:53:08 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id y76sf1498923pfb.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 10:53:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601315587; cv=pass;
        d=google.com; s=arc-20160816;
        b=J3QBLuEfRis0lbOCwPcWv5jIftxphMWZWedyr9U6BJdMvX4egGnRf/Im3Cy0IwgwI3
         6tg8rXJzrLvE2j7f9VptTnMHXp4v/bKxsg9Rg3H/fAeDt8OT7taBcJHTZZVkdA2lCOzy
         jGknmkYkHr50I1Edj/3U9/uGtp0Cy5UsRELve8ZeydyRQJZWysINtcm9sphMu+6fHEpE
         G5qy2uIKHUpvRwbpTOG+YIQi4oab5YrY6i2lh6jOkaq2j+4OPkfM3JWhAHYxsqDvHBQu
         rIM+RegZXE/iy1hG7PLdOcJDc+5Ikabl8HUVsXKOC4Rvjrkqe0f/P2eP0fGvKOA7ZbVT
         iMFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PelQMw+0hV238fvP2W30v7cuSzNcdHWi13WQm5SwvL0=;
        b=NZ3D90z4JmSNFuMNdp/sdxsOuVI/dthCJD6A1/ggkZv77Cs4pO4iFU3PnZcW6UmBiy
         FllKiEesN3N+EJGZjlaGfXbWHPY3Qwk1doZMN3uDBRiHVKxX+O8VyvU8CdPo8D++SQTX
         OvyYuQImAoZI198zp3Tx1udMro3dr9q38UfWL9clIPRmrAurK217RGMUGfJNe7q6kJZS
         Q5N2Dj5+2o1dmZ6iyII0L0W0TxnxoljniMsPp3QPov17XrRNI8cBdZQgg7019KQtvZbw
         zBua6lxEkXu4uQwtLyU6JyWUpUmnOZcoXKHck5U+bfII4kbvzeZvjPuGDrN+9+ZD19eH
         JG2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A8zjOf2C;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=PelQMw+0hV238fvP2W30v7cuSzNcdHWi13WQm5SwvL0=;
        b=GyhVg0MdMvl+TrfNTpGNVahRxyRTGRQ+Q6yTyli/pkTwyWn/b2Och0JMzDCD3dcXAv
         PmgtLF6xtu0Eb9q7d5j7rwV+LVB1F5Ys9ukJTli8J/X5BD7Knk83+8fO/v5rsLs5yWcv
         KVSfA4UHRRxx0jnZDI1wGSWzXw2lKboPpozCLkSN8N2MCbElMlcDe/jV5hmaa9UKyWOo
         Rk1AZHm+Cd6B8Nxcd4ZjY3vGGbJqsBK0LBu2I2oVL6vPw/PuOID9d6bTEzqPU6MFUnRM
         wWouvlUqbuOCR+suZJTXeD7kUaODHoGyWqZjZoHKdtXj0fddPXdAL2jHbqco7JRZ68+v
         BdkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PelQMw+0hV238fvP2W30v7cuSzNcdHWi13WQm5SwvL0=;
        b=qsb3zHGJ001KlJ27BJ/93kA9fDLoeooxGDK5Cr+1wFgJWLvPUjeLQj6Y5Q2Gu9kmXP
         sOgUianBJThA35IAmzOfKE1Jd3xmlQeXc0ayWmpF9pDaJvUeh4GKHyiImCPOMKF1Hu73
         sgbBvATSHhtIf2OeaQKwCnlUbk+gOZJG9MSgr8UnmLHpzm2Lo1eZ0DOkdZKgqY10HwA9
         2NYNN+ILOlFW+p6QAmCOWNk4snV+UZbQE8q78zWweqoYtHbQ1lxm+ynbv6ELlLUwGZie
         kAhOj0EhREIUqj3uEm5AL1qzqR4JVkH0Vhyx9u11vpfWKmaS7jXzHNlOJlBw/5BYH0gn
         /SFg==
X-Gm-Message-State: AOAM532+ijD+nc0xb87QbI72cOCEFI9XeJr35vU5h+9RLnaEHBjv24mJ
	kacUSt6BrMkzq+wRK991afc=
X-Google-Smtp-Source: ABdhPJzw+uAkuIV2e8dDa+KoFIPg3KerATEv+grikWBcDVTswx5x+TxciJtsyZE4w/Zpw/AcynnnEw==
X-Received: by 2002:a17:90a:ea0c:: with SMTP id w12mr380792pjy.65.1601315587002;
        Mon, 28 Sep 2020 10:53:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:fe0d:: with SMTP id g13ls3586255plj.8.gmail; Mon, 28
 Sep 2020 10:53:06 -0700 (PDT)
X-Received: by 2002:a17:90b:4b82:: with SMTP id lr2mr398137pjb.184.1601315586402;
        Mon, 28 Sep 2020 10:53:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601315586; cv=none;
        d=google.com; s=arc-20160816;
        b=nheSQecZWSLMMBR5EA1pJDTkugSPrV0fwsIsEW6bKgoF6hh+4WGtmGpyFiL9IfBRNi
         ROZa/hWdTeNtLGJfZZVDLia0Ni9gsyK6IL/qlGhkcq0P4qJOuax1Ix2wNDwihQn4TrOn
         C+lsdisA8v7F1rve+bAFIcZ+25GQpVpBPHPWw/89PaOwIswc2n2XzUiKhcI8FKxhmi96
         eO3WoOWOyb4Y0jJ/icjXMD+3kxdvJ32ZabQEqNT3MZMPBwNLkbyRh+lY2jZSNphGHoFh
         nfHtHiKN0zZ71QU1c+3hsoBIKP0gKnrJGQOtt/Y66JaKxsdFjWpyqVwyZUle97+QqZHx
         eqfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VcSWQzeN0AmLIOeU7lVRuYXohJfDxAJkBb+mWUpJkbY=;
        b=qRtkFVHMObrKseEztnAh+9smvwo+yVyyKqMl17kH7j6rW4ZVAweZizR2LDTtOEzIb9
         /ABVC/Y7HLPmFltwv/n6pGV3d7dw7uJmp8Mcsa/1JkTG7eUe+RPPOyMMF851IjY+MTCj
         50XGOFWUh5YP2AEQaC+k0nUYuPHhz+MD0p0rms6aEyDMQDBxwjrHUhvyINyR3bgZNVnr
         rojIqr3ZU60NNYARoPjSqtc6wdOqZw5JwPGhgUjAYfkEGR6qdugq/DahSpBHv/lHBq8W
         nCtibJfjFSYGmDADiDB6zOMcXVMGMMY5ufB8xinPuyVmALjUCIqOgskLZXrWk5+/FWsx
         WyfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A8zjOf2C;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id bk9si383476pjb.1.2020.09.28.10.53.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 10:53:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id mm21so1102705pjb.4
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 10:53:06 -0700 (PDT)
X-Received: by 2002:a17:90a:e517:: with SMTP id t23mr371035pjy.25.1601315585940;
 Mon, 28 Sep 2020 10:53:05 -0700 (PDT)
MIME-Version: 1.0
References: <202009271553.4OjMpGkX%lkp@intel.com> <76cae106-b643-57a9-e82e-48e46ebf1b70@ti.com>
In-Reply-To: <76cae106-b643-57a9-e82e-48e46ebf1b70@ti.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Sep 2020 10:52:54 -0700
Message-ID: <CAKwvOdnsQY6S+3zAH6_SD0ifbUaSDFj9mBdhF4GVq6VB=tjFsA@mail.gmail.com>
Subject: Re: sound/soc/ti/j721e-evm.c:528:34: warning: unused variable 'j721e_audio_of_match'
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=A8zjOf2C;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Mon, Sep 28, 2020 at 12:27 AM 'Peter Ujfalusi' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
>
>
> On 27/09/2020 10.27, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git master
> > head:   a1bffa48745afbb54cb4f873bba783b2ae8be042
> > commit: 6748d05590594837e42dfa975879fb275099f0b2 ASoC: ti: Add custom m=
achine driver for j721e EVM (CPB and IVI)
> > date:   3 months ago
> > config: x86_64-randconfig-r033-20200927 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a8=
3eb048cb9a75da7a07a9d5318bbdbf54885c87)
> > reproduce (this is a W=3D1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linu=
x.git/commit/?id=3D6748d05590594837e42dfa975879fb275099f0b2
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kerne=
l/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout 6748d05590594837e42dfa975879fb275099f0b2
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Dx86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >>> sound/soc/ti/j721e-evm.c:528:34: warning: unused variable 'j721e_audi=
o_of_match' [-Wunused-const-variable]
> >    static const struct of_device_id j721e_audio_of_match[] =3D {
> >                                     ^
> >    1 warning generated.
>
> Right, in the attached .config:
> # CONFIG_OF is not set
>
> There must be a clean way to handle this without extensive ifedfery...

Pretty sure I just saw a patch go by wrapping another device table
definition in #ifdef CONFIG_OF, so it's not unusual.

>
> > vim +/j721e_audio_of_match +528 sound/soc/ti/j721e-evm.c
> >
> >    527
> >  > 528        static const struct of_device_id j721e_audio_of_match[] =
=3D {
> >    529                {
> >    530                        .compatible =3D "ti,j721e-cpb-audio",
> >    531                        .data =3D &j721e_cpb_data,
> >    532                }, {
> >    533                        .compatible =3D "ti,j721e-cpb-ivi-audio",
> >    534                        .data =3D &j721e_cpb_ivi_data,
> >    535                },
> >    536                { },
> >    537        };
> >    538        MODULE_DEVICE_TABLE(of, j721e_audio_of_match);
> >    539
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
>
> - P=C3=A9ter
>
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/76cae106-b643-57a9-e82e-48e46ebf1b70%40ti.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnsQY6S%2B3zAH6_SD0ifbUaSDFj9mBdhF4GVq6VB%3DtjFsA%4=
0mail.gmail.com.
