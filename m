Return-Path: <clang-built-linux+bncBCT6537ZTEKRBEXH5WLQMGQE2E22QSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id DF09D595894
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Aug 2022 12:38:11 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id t12-20020adfba4c000000b0021e7440666bsf1766805wrg.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Aug 2022 03:38:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660646291; cv=pass;
        d=google.com; s=arc-20160816;
        b=o9wOen3PFagv2toG0YNr3C6HhUGRtHfmclqVcaOdkX7zgK7G49PfxIFVyFgxj2UOI1
         nonqzz7pIk51uOscTycyqcv6DOHvZsY6qYfOGEHti72BGb3BOsn4XAhCg0/2iygj4Pp8
         JimQjaM3ecIskWyjJE5mdzlOKTUCqvPAnhXQxeZLk1MKh4OmbM+nFURMDNxQCaP22n5U
         1oW0q7d03BkBEsQ1GkrrnrztFSQQ7rnItMCWrXDXop1/jRmopguLbUl59TKSQ3Zk3N4S
         x2ManG0axlwqclobb1wAsR+Kb16EvB6OQ8R2Nne2wGxF1AznLZr59KkEf5FJ5uZ9r/HA
         72Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=OrzvUDPfbkJ27lD//WYOQ22KjfdyFXSwvW3znzKb7sI=;
        b=g7VmjbCg2b6cLovidqTLUylk6s7dD/jj4zkFS7GhVyTQNGBWUPEvMepEZfZ2q6uHJ4
         /zwSoRt7uL6TxpJaKQd4BL7uYUiXo9d/hQRzo0r0DmYdJpirQ/2oFD1NwdOl53TD461c
         6142DGnnxh86RZgDbkmoC0b9k1gyNhWxrWg+ZXHOb1iNxSVIL2nk0NcxUDg7/j4CcCjL
         x74r4gs5gz/J3Hmf4qRPTB6VP4eLjwESggDAM6OqIYbpIwb95ZxbSYXvd0+sIGBfr11x
         TQHlPRolbBncTbhxOTN9QyDHZSJ4mofk00tbFkvI9MQDY/eBWPbEcMr3jZrsny/wQkOz
         EKlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QuF2Lfk6;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc;
        bh=OrzvUDPfbkJ27lD//WYOQ22KjfdyFXSwvW3znzKb7sI=;
        b=V2dtFaBw5JbINXFFIoeMSQAHepmtwkUtTJDm6vhKQT1+q1cywZJAkq4ZdKclr+M5aB
         zW9pqRelh/AxjMDttmSsd98nWRHjfdvX71LhnhbndBL0T4pWkQX1mUoCWQj/YE8Dyb6z
         bokiF/U5jMJBym9Nh+IMWSNrhYMkAlcoQEzGcLU0oLJ7glMtbZBiHD2JGdoLSG87nC9a
         fV80jRHnheulhgF8S7dxcox7SeKpRclcf+gGTJzElHUF9EtTzYTk1beNTnpRnDnpZ72v
         eneLod+Rxy3YQLpBNTn4lYcKUzS69YK3Qhnfp1GiEo0CE5tBtrsftxB7eiQBDmYcskNY
         OpXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:sender:from
         :to:cc;
        bh=OrzvUDPfbkJ27lD//WYOQ22KjfdyFXSwvW3znzKb7sI=;
        b=KFlUmL1N5CfItZQCI5a5tHujUmIltq3SAAkO7WJtP9RudzAUCGAMxTeccg48Kj69xN
         vtFiGkvc0Gw21GGuKT/bxqJ33Mr7pn6hvCkvozCWX4+21DGfQgquluFEhUOOKVPw2Pkd
         G7IPsKTai+UJsGrlCJRvQEwz1voGpxSglJ3EI6gDO4Q4irG1XOuxGnUBzFSAkVCKTyUr
         EZtufrdE1Hd8cI4HcRL4kIXfbxK0l7TyS7U8sAE1bwCrXH+MgO/Q7rnElU166AUU4qjL
         hvaDCy6QIFV0217cViz3tuYyeyOYhJqRW0Hu91nRnPL40W/WTZs9VqEYPM7gJqnA3B6M
         /tLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACgBeo3oenwp4mmy7sprIO8PWSA5VVBD3Zo+5AQCVsPS06KjENDSVxmw
	yVy2w2DbUnr4muOVJs+Eunc=
X-Google-Smtp-Source: AA6agR6VVai6LI8ueh1zbnPALnRlWJ7cH+Mxs67aoJyS0LNL2kmLRTlBd+A1jNPp84QabQFCi965rg==
X-Received: by 2002:a05:600c:3c9:b0:3a5:c5b3:4bf with SMTP id z9-20020a05600c03c900b003a5c5b304bfmr12996532wmd.195.1660646291197;
        Tue, 16 Aug 2022 03:38:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:215a:b0:3a5:4532:b3a6 with SMTP id
 v26-20020a05600c215a00b003a54532b3a6ls4266600wml.3.-pod-control-gmail; Tue,
 16 Aug 2022 03:38:10 -0700 (PDT)
X-Received: by 2002:a05:600c:3543:b0:3a5:bc93:250 with SMTP id i3-20020a05600c354300b003a5bc930250mr12930508wmq.188.1660646290049;
        Tue, 16 Aug 2022 03:38:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660646290; cv=none;
        d=google.com; s=arc-20160816;
        b=c6CD2cs1dmVJ6GbTiaB/PN2hhG+dZEECnyH/FJBQz836R/PxgasK4rFdgBu01GD3wa
         FC87zQ4p4152XPXfiyZM5/p+qLj97gpxKbEquDXcqKCYQ3M7ERUbTQDiSvgznl/7VAT5
         P5roSUkjGeo+Q3ZPyATsZnZIYW2lvDa4IhWeHxy+LMLxHng7jk79W1Wp2MtemuEpu+j2
         8DGK3qW+QzJdpL29dT4THKTeIiMVMm2V0zjYBUm4lAJ5Fjz7oQ9b/em9uk1rN/EKZCvm
         57Tm9hfSj7/ZObUN+dEIPSgZU3ZYDJJyvf5z53v/qlOZj+h6W6HnxzsNcZwPRwSX867O
         6GvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ufWvRN9ig8qXKLJ6sMdoAhRoS5NiZ0umrZmeYXNUY5s=;
        b=WWxZEwYn3YF8n2RRp8XVFxWqiNobT+8sCeRHtIWSH99r6V3kH1Gk0qfFwzC2C2nMGo
         QcJuWeC4DvgxGLUe4fswB5kMrYThpbtk3ujw0WWTip0fWeYAOpqSC26/nA7WcW7WRpZx
         ti2GqcrzBMZ6fMadqbn2VjIdcVOclsH8GRFXVueIgEXp+NMCIEAv2eYs0Yua4ablfg5a
         ec5noBTBSruZ5MgS3uP2r2kfGDLnnrNuuDbBcOk7PnzxNG8yINT+HWfx4GzHM1KCsYOl
         a4bqnbMgKDMKDHLefXlnIxjEHEY9XIxqZ0f7ItuOQbeoFti/FzB+Mp1TYs5A9r2gLOWT
         6YWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QuF2Lfk6;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com. [2a00:1450:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id p126-20020a1c2984000000b003a4a0cedad1si181924wmp.4.2022.08.16.03.38.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 03:38:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52d as permitted sender) client-ip=2a00:1450:4864:20::52d;
Received: by mail-ed1-x52d.google.com with SMTP id z20so12877542edb.9
        for <clang-built-linux@googlegroups.com>; Tue, 16 Aug 2022 03:38:09 -0700 (PDT)
X-Received: by 2002:a05:6402:447:b0:440:d482:495f with SMTP id
 p7-20020a056402044700b00440d482495fmr18656731edw.264.1660646289626; Tue, 16
 Aug 2022 03:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220815180439.416659447@linuxfoundation.org> <CA+G9fYtZP_rYnmRyLbMrxKPGtJuoOw4h412dJXBJnzab41CzUw@mail.gmail.com>
 <YvtNZuap/oCKVv9O@kroah.com>
In-Reply-To: <YvtNZuap/oCKVv9O@kroah.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 16 Aug 2022 16:07:58 +0530
Message-ID: <CA+G9fYuqm1NzfhF2B8OXqcH8-c24ZA6UGv3Y94fYuyOKVgqaOQ@mail.gmail.com>
Subject: Re: [PATCH 5.19 0000/1157] 5.19.2-rc1 review
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	torvalds@linux-foundation.org, akpm@linux-foundation.org, linux@roeck-us.net, 
	shuah@kernel.org, patches@kernelci.org, lkft-triage@lists.linaro.org, 
	pavel@denx.de, jonathanh@nvidia.com, f.fainelli@gmail.com, 
	sudipm.mukherjee@gmail.com, slade@sladewatkins.com, 
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>, 
	Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=QuF2Lfk6;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 16 Aug 2022 at 13:57, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Tue, Aug 16, 2022 at 01:08:26PM +0530, Naresh Kamboju wrote:
> > On Tue, 16 Aug 2022 at 00:58, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > This is the start of the stable review cycle for the 5.19.2 release.
> > > There are 1157 patches in this series, all will be posted as a respon=
se
> > > to this one.  If anyone has any issues with these being applied, plea=
se
> > > let me know.
> > >
> > > Responses should be made by Wed, 17 Aug 2022 18:01:29 +0000.
> > > Anything received after that time might be too late.
> > >
> > > The whole patch series can be found in one patch at:
> > >         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/pa=
tch-5.19.2-rc1.gz
> > > or in the git tree and branch at:
> > >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-st=
able-rc.git linux-5.19.y
> > > and the diffstat can be found below.
> > >
> > > thanks,
> > >
> > > greg k-h
> >
> > The arm64 clang-14 allmodconfig failed on stable-rc 5.19.
> > This build failure got fixed on the mainline tree two weeks ago.
> >
> > * arm64, build
> >   - clang-12-allmodconfig
> >   - clang-13-allmodconfig
> >   - clang-14-allmodconfig
> >   - clang-nightly-allmodconfig
> >
> >
> > make --silent --keep-going --jobs=3D8
> > O=3D/home/tuxbuild/.cache/tuxmake/builds/2/build LLVM=3D1 LLVM_IAS=3D1
> > ARCH=3Darm64 CROSS_COMPILE=3Daarch64-linux-gnu- 'HOSTCC=3Dsccache clang=
'
> > 'CC=3Dsccache clang' allmodconfig
> > make --silent --keep-going --jobs=3D8
> > O=3D/home/tuxbuild/.cache/tuxmake/builds/2/build LLVM=3D1 LLVM_IAS=3D1
> > ARCH=3Darm64 CROSS_COMPILE=3Daarch64-linux-gnu- 'HOSTCC=3Dsccache clang=
'
> > 'CC=3Dsccache clang'
> > sound/soc/intel/avs/path.c:815:18: error: stack frame size (2192)
> > exceeds limit (2048) in 'avs_path_create'
> > [-Werror,-Wframe-larger-than]
> > struct avs_path *avs_path_create(struct avs_dev *adev, u32 dma_id,
> >                  ^
> > 1 error generated.
> > make[5]: *** [/builds/linux/scripts/Makefile.build:249:
> > sound/soc/intel/avs/path.o] Error 1
> >
> > Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
> >
> > Steps to reproduce:
> > -------------------------
> > # See https://docs.tuxmake.org/ for complete documentation.
> > # Original tuxmake command with fragments listed below.
> > # tuxmake --runtime podman --target-arch arm64 --toolchain clang-14
> > --kconfig allmodconfig LLVM=3D1 LLVM_IAS=3D1
> >
> > tuxmake --runtime podman --target-arch arm64 --toolchain clang-14
> > --kconfig https://builds.tuxbuild.com/2DPEiUmdALSZq7DeNthZFYoPLaN/confi=
g
> > LLVM=3D1 LLVM_IAS=3D1
>
> What is the commit on mainline that resolved this issue?

commit 1e744351bcb9c4cee81300de5a6097100d835386
Author: Amadeusz S=C5=82awi=C5=84ski <amadeuszx.slawinski@linux.intel.com>
Date:   Fri Jul 22 13:19:59 2022 +0200

    ASoC: Intel: avs: Use lookup table to create modules

    As reported by Nathan, when building avs driver using clang with:
      CONFIG_COMPILE_TEST=3Dy
      CONFIG_FORTIFY_SOURCE=3Dy
      CONFIG_KASAN=3Dy
      CONFIG_PCI=3Dy
      CONFIG_SOUND=3Dy
      CONFIG_SND=3Dy
      CONFIG_SND_SOC=3Dy
      CONFIG_SND_SOC_INTEL_AVS=3Dy

    there are reports of too big stack use, like:
      sound/soc/intel/avs/path.c:815:18: error: stack frame size
(2176) exceeds limit (2048) in 'avs_path_create'
[-Werror,-Wframe-larger-than]
      struct avs_path *avs_path_create(struct avs_dev *adev, u32 dma_id,
                       ^
      1 error generated.

    This is apparently caused by inlining many calls to guid_equal which
    inlines fortified memcpy, using 2 size_t variables.

    Instead of hardcoding many calls to guid_equal, use lookup table with
    one call, this improves stack usage.

    Link: https://lore.kernel.org/alsa-devel/YtlzY9aYdbS4Y3+l@dev-arch.thel=
io-3990X/T/
    Link: https://github.com/ClangBuiltLinux/linux/issues/1642
    Signed-off-by: Amadeusz S=C5=82awi=C5=84ski <amadeuszx.slawinski@linux.=
intel.com>
    Reported-by: Nathan Chancellor <nathan@kernel.org>
    Build-tested-by: Nathan Chancellor <nathan@kernel.org>
    Reviewed-by: Cezary Rojewski <cezary.rojewski@intel.com>
    Link: https://lore.kernel.org/r/20220722111959.2588597-1-amadeuszx.slaw=
inski@linux.intel.com
    Signed-off-by: Mark Brown <broonie@kernel.org>

- Naresh

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BG9fYuqm1NzfhF2B8OXqcH8-c24ZA6UGv3Y94fYuyOKVgqaOQ%40m=
ail.gmail.com.
