Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBOPM5WLQMGQE4TQAS2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DF65958EB
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Aug 2022 12:49:30 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id b10-20020a05622a020a00b003437e336ca7sf7434157qtx.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Aug 2022 03:49:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660646969; cv=pass;
        d=google.com; s=arc-20160816;
        b=YoO1xGXaHe/d9uboi2osXCkrrtrHpIiY4nCvvW24s45ArqkkujT7ETBIhaw3q/pzkU
         zBRHM24sGL2ChTtG41//70wCmvbktM8raBcEavPsi2hkwg/ykwghlYXHeW7h9LvqPU7/
         AtUAWwr7d+0zfiWNkJrvmw32XBX4d15lUTrrAGHy1cNUkmpLWGouzafVw+TTZRSuNwP5
         gbIO4L7WBTSznYAzgiOnWuOIpAewE+vKEWyoGJYgTjgdYZuaJ3A3dpt3TNpPaNHfeGmu
         /r+/iTYiVUKeAYkVrXkVv/mSGrWGhJtEV/H4Did/ax1C1uSy/SZjIx8lOuA/v8r33CPO
         M3CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=3cS1Ob77yJzx3KP6/CihCaztFdvIwPM0X0t80YK7OiI=;
        b=ClQuoxUKxP3mwJ/Ns4I28DxvVKo9AhaT2NUXehMNZ/LXuVEk81+6OQxVxSRCpwiXc+
         JEOeFKvxxeGvpH3B1r9tC1YvL9AZX5p3j7aB6VKtGyTuRoUztbm+Fn7LKxAhG5PA8Uiu
         cAPPLwYVoxdrFUlQzdTp9C3uH0B9l/dEMQp+U1T1g8AX2PJKZJvdIJpLlY617dshgxFq
         viilINQHvoHsvz0MZHEs7bMCBQ6enCnISUgZXse5FLVCDE3DjtElpovbBw6hgyRuW8Rs
         fQ01TnCBy3TGftFb2UjrGbjea2PbQZRjOpl2B35PVF+t+fUhr1wxPWLcmifCl9odozQK
         y46A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=kLxozVjJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc;
        bh=3cS1Ob77yJzx3KP6/CihCaztFdvIwPM0X0t80YK7OiI=;
        b=Jxs3kpU2HJ+Af0XM378mtfKBk8JUTMzfbI7xHVB1A66X03V0ERbAo1AmEKOYJIXNNF
         NfFHwd/4j2CmZ72+UoM6mWQ2q0AWOh+aIiRE74OC+nzfKPD2jamBPKc8HkPfB1vOFCpg
         UsdOQMKY8r2q2Y3p7AA5GNcJJdQVdL5HFLd2FhKTsqjRrgsXo+pY/6uc+WL/ph9qKRY6
         JMT5nhTobYNcfsgIqbJ/ppr7y+Oum7ms/jBSi5BQHSWRnwNZbcPCCPOIwwODIb9hdVJL
         A7QcVBjN5O4rIO9MkexWu2GBRRMOz0Yjp67RH9GqJNYrnr4mpVUUF/NuuahasZ0+7ab6
         ISBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-message-state
         :sender:from:to:cc;
        bh=3cS1Ob77yJzx3KP6/CihCaztFdvIwPM0X0t80YK7OiI=;
        b=DjhjcYSvE6JCkxBJYmeWhKzbrAtpqNtwic7iYOcUFVm++NkVb456WpD2i/IHmLzDP+
         mUXe4IfIZvhpNIv2V+qKeUxdM7uHcxcZq1e5FMo/mHsUeJ/HlXzDyCrgz9ZtE5cRqFPw
         /7762yl6+R4Dm0rXSGfejOhbS9gGbHmlmZK329arv9c+3YI+AjSjZbrPAr5kdbv5c3bn
         BlWce6JJ/mpER0roa7KryF6ad3WhhmxEkku930PYladJtydkOfdrRxkL0bC6guMj65Iw
         j3IJoj+Q6ww2JXhwMdL7oYvw9TsXeErGW/wk1T76XZG+WYY7NAmEOCLZmgfwMZ8dx3Es
         o0NQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACgBeo2BU0+30dRVLTxLbh8X4ia6IgaRCmmZFXfz0KfclBR949yyJDar
	uuKNVtS8hE7Hbj1Om41MuwU=
X-Google-Smtp-Source: AA6agR5k7CqY0J/50H+ZE2Aw1uIeQdrMbR+FJC6jsCcdtWgwIiXl5Y+I7GpWfjm/4gJc12vpuX/Avw==
X-Received: by 2002:a37:b983:0:b0:6b8:ddba:f27e with SMTP id j125-20020a37b983000000b006b8ddbaf27emr14217555qkf.774.1660646969371;
        Tue, 16 Aug 2022 03:49:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e2c9:0:b0:47b:3f72:4b4b with SMTP id t9-20020a0ce2c9000000b0047b3f724b4bls6687937qvl.11.-pod-prod-gmail;
 Tue, 16 Aug 2022 03:49:28 -0700 (PDT)
X-Received: by 2002:a05:6214:4186:b0:474:74d0:7aeb with SMTP id ld6-20020a056214418600b0047474d07aebmr17217376qvb.75.1660646968834;
        Tue, 16 Aug 2022 03:49:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660646968; cv=none;
        d=google.com; s=arc-20160816;
        b=B8Dhy9QZUGBDlkZt6SGtvCyJHdgqJasdkwzL3JTI5O8HYLkvrhVxVlpddPYoZqQHgV
         CIt9R5ZuyDOA6LuE7aORBEVOPllBaSFGda4+20Pg/BTL6O7OFbr6CkdTzzrWQQ4atrF1
         5OhAZ25BmECpF6xaQmAwIWaj5VfT7xlS5pngoO4eXSK2G00j3no+BjHxjWolOzV1z+ei
         fnbH2n+ul0sxCvUu1WOVigxj1AcopgBVoZgThBsSxWsQ5kTgBXBid/pUL6Gbb9GEQqHj
         q2f5ihB/IaiX01m7HSm0i7bYh0tPC7zsBUc5YnW9+yz1D7dvTaoZtoPUmphZNQt35q1+
         35Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=i04z4sUALptBkJIlWKFbIxY/BngQVKbLewHj2tLjSbs=;
        b=XrkPW3FXHB3/9GTpA0+3u8th/ILnakLjfy5A4rZw3zA4gEByWN20Akxlv7RTmdtBv5
         lY+crJmRBIEXn4EjZRQShh60IWrRt/ZJma/LyBJRA00eMmjOS+6dqRoJr9S3pARyxYQg
         qFNO4Lp8lj6IoEfs/TARTdnKxmbba3qz/XvDyL4eZwt8/qBgQiFBJxotfLSDX2Dnthmn
         zX5Z3Chi7boPQn6rQtl/lR1AN32Ikw0YYsflZQY8DErIBO9u084KPYL9Ln/LKd3/WR32
         UMB7MNyNyD/nMq7wtRYEU+BnvIGHOzLlPp4d9h733syx4wCI4xgJvPhdwJU0/12vFqus
         wJgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=kLxozVjJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id s10-20020a05620a030a00b006b95a1880d8si494761qkm.7.2022.08.16.03.49.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Aug 2022 03:49:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 0102FCE174E;
	Tue, 16 Aug 2022 10:49:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEA6AC433C1;
	Tue, 16 Aug 2022 10:49:23 +0000 (UTC)
Date: Tue, 16 Aug 2022 12:49:21 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	torvalds@linux-foundation.org, akpm@linux-foundation.org,
	linux@roeck-us.net, shuah@kernel.org, patches@kernelci.org,
	lkft-triage@lists.linaro.org, pavel@denx.de, jonathanh@nvidia.com,
	f.fainelli@gmail.com, sudipm.mukherjee@gmail.com,
	slade@sladewatkins.com, Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
Subject: Re: [PATCH 5.19 0000/1157] 5.19.2-rc1 review
Message-ID: <Yvt2MW6oH07qs8JM@kroah.com>
References: <20220815180439.416659447@linuxfoundation.org>
 <CA+G9fYtZP_rYnmRyLbMrxKPGtJuoOw4h412dJXBJnzab41CzUw@mail.gmail.com>
 <YvtNZuap/oCKVv9O@kroah.com>
 <CA+G9fYuqm1NzfhF2B8OXqcH8-c24ZA6UGv3Y94fYuyOKVgqaOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CA+G9fYuqm1NzfhF2B8OXqcH8-c24ZA6UGv3Y94fYuyOKVgqaOQ@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=kLxozVjJ;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Aug 16, 2022 at 04:07:58PM +0530, Naresh Kamboju wrote:
> On Tue, 16 Aug 2022 at 13:57, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Tue, Aug 16, 2022 at 01:08:26PM +0530, Naresh Kamboju wrote:
> > > On Tue, 16 Aug 2022 at 00:58, Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > This is the start of the stable review cycle for the 5.19.2 release=
.
> > > > There are 1157 patches in this series, all will be posted as a resp=
onse
> > > > to this one.  If anyone has any issues with these being applied, pl=
ease
> > > > let me know.
> > > >
> > > > Responses should be made by Wed, 17 Aug 2022 18:01:29 +0000.
> > > > Anything received after that time might be too late.
> > > >
> > > > The whole patch series can be found in one patch at:
> > > >         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/=
patch-5.19.2-rc1.gz
> > > > or in the git tree and branch at:
> > > >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-=
stable-rc.git linux-5.19.y
> > > > and the diffstat can be found below.
> > > >
> > > > thanks,
> > > >
> > > > greg k-h
> > >
> > > The arm64 clang-14 allmodconfig failed on stable-rc 5.19.
> > > This build failure got fixed on the mainline tree two weeks ago.
> > >
> > > * arm64, build
> > >   - clang-12-allmodconfig
> > >   - clang-13-allmodconfig
> > >   - clang-14-allmodconfig
> > >   - clang-nightly-allmodconfig
> > >
> > >
> > > make --silent --keep-going --jobs=3D8
> > > O=3D/home/tuxbuild/.cache/tuxmake/builds/2/build LLVM=3D1 LLVM_IAS=3D=
1
> > > ARCH=3Darm64 CROSS_COMPILE=3Daarch64-linux-gnu- 'HOSTCC=3Dsccache cla=
ng'
> > > 'CC=3Dsccache clang' allmodconfig
> > > make --silent --keep-going --jobs=3D8
> > > O=3D/home/tuxbuild/.cache/tuxmake/builds/2/build LLVM=3D1 LLVM_IAS=3D=
1
> > > ARCH=3Darm64 CROSS_COMPILE=3Daarch64-linux-gnu- 'HOSTCC=3Dsccache cla=
ng'
> > > 'CC=3Dsccache clang'
> > > sound/soc/intel/avs/path.c:815:18: error: stack frame size (2192)
> > > exceeds limit (2048) in 'avs_path_create'
> > > [-Werror,-Wframe-larger-than]
> > > struct avs_path *avs_path_create(struct avs_dev *adev, u32 dma_id,
> > >                  ^
> > > 1 error generated.
> > > make[5]: *** [/builds/linux/scripts/Makefile.build:249:
> > > sound/soc/intel/avs/path.o] Error 1
> > >
> > > Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
> > >
> > > Steps to reproduce:
> > > -------------------------
> > > # See https://docs.tuxmake.org/ for complete documentation.
> > > # Original tuxmake command with fragments listed below.
> > > # tuxmake --runtime podman --target-arch arm64 --toolchain clang-14
> > > --kconfig allmodconfig LLVM=3D1 LLVM_IAS=3D1
> > >
> > > tuxmake --runtime podman --target-arch arm64 --toolchain clang-14
> > > --kconfig https://builds.tuxbuild.com/2DPEiUmdALSZq7DeNthZFYoPLaN/con=
fig
> > > LLVM=3D1 LLVM_IAS=3D1
> >
> > What is the commit on mainline that resolved this issue?
>=20
> commit 1e744351bcb9c4cee81300de5a6097100d835386
> Author: Amadeusz S=C5=82awi=C5=84ski <amadeuszx.slawinski@linux.intel.com=
>
> Date:   Fri Jul 22 13:19:59 2022 +0200
>=20
>     ASoC: Intel: avs: Use lookup table to create modules
>=20
>     As reported by Nathan, when building avs driver using clang with:
>       CONFIG_COMPILE_TEST=3Dy
>       CONFIG_FORTIFY_SOURCE=3Dy
>       CONFIG_KASAN=3Dy
>       CONFIG_PCI=3Dy
>       CONFIG_SOUND=3Dy
>       CONFIG_SND=3Dy
>       CONFIG_SND_SOC=3Dy
>       CONFIG_SND_SOC_INTEL_AVS=3Dy
>=20
>     there are reports of too big stack use, like:
>       sound/soc/intel/avs/path.c:815:18: error: stack frame size
> (2176) exceeds limit (2048) in 'avs_path_create'
> [-Werror,-Wframe-larger-than]
>       struct avs_path *avs_path_create(struct avs_dev *adev, u32 dma_id,
>                        ^
>       1 error generated.
>=20
>     This is apparently caused by inlining many calls to guid_equal which
>     inlines fortified memcpy, using 2 size_t variables.
>=20
>     Instead of hardcoding many calls to guid_equal, use lookup table with
>     one call, this improves stack usage.
>=20
>     Link: https://lore.kernel.org/alsa-devel/YtlzY9aYdbS4Y3+l@dev-arch.th=
elio-3990X/T/
>     Link: https://github.com/ClangBuiltLinux/linux/issues/1642
>     Signed-off-by: Amadeusz S=C5=82awi=C5=84ski <amadeuszx.slawinski@linu=
x.intel.com>
>     Reported-by: Nathan Chancellor <nathan@kernel.org>
>     Build-tested-by: Nathan Chancellor <nathan@kernel.org>
>     Reviewed-by: Cezary Rojewski <cezary.rojewski@intel.com>
>     Link: https://lore.kernel.org/r/20220722111959.2588597-1-amadeuszx.sl=
awinski@linux.intel.com
>     Signed-off-by: Mark Brown <broonie@kernel.org>

Thanks, now queued up to the 5.19 queue.

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/Yvt2MW6oH07qs8JM%40kroah.com.
