Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB2VJ5WLQMGQEMSG4CYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x3d.google.com (mail-oa1-x3d.google.com [IPv6:2001:4860:4864:20::3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2931359552E
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Aug 2022 10:27:24 +0200 (CEST)
Received: by mail-oa1-x3d.google.com with SMTP id 586e51a60fabf-10e94c1729asf2316423fac.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Aug 2022 01:27:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660638442; cv=pass;
        d=google.com; s=arc-20160816;
        b=0M8ippcXPOmyXirneKQOe79ehrNOBaKHU5wdpTxaGhmqbH1pxF+jnGzBlzBvBEwRmB
         WvDKBTLiyuCQvettjGIQsqwivl10gePhNpaSQ484hrU0C8a8iynS16ARr2smam4rHjJp
         lnHbC8sqw59GPEURiwf86hhFvpQg75v5WpZw/McmbyOiQMasUm5InpZ9XFbofOodB/ns
         5hRUnnXaG4AcoZjljXhffS9TSyrhroALTknL5ocMucAgPHhJ/xEmcWSwEJRRCWYhr/OI
         n2JhYsNJyjtzBb6bxwl+YSQoL3DVeRJ+xjgB4byJkCUfmcYE0xOl1RDdBwXDaismZH7M
         UzaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=09TT8LQe+5ZKBu0iOIb06EE1uQtXvXXiumt+qDBxSIU=;
        b=xoNCX5uD6wUdMzYkFc5jv8M8Lq/gDeYtwR0pM1Z22ehvG+FAT8TcL/v2T4ZeHpUfol
         VZS/z5dH7JIL9XE7Mw8hLYMNcWWnoPJSO8VxhBPKnH8EZYY65vaLz3B7C9V0vfWS5RVb
         psy7MB44wEqrK4H7ATKznKqgfUywQSGqdhj5Vy6QnCwQNlz+XfQeiENsQYw/rLgCXubF
         oJRvXydkUEdaEAyek/gvnO/xI+ns++35xCip2W42+tCClQ+vviuOKOcDYhMrqsesK8wt
         mRS3ork2CvW7xQfn84gjP7kcWWGJvOpeLVW/Sp8gj2T6xODgIQ1phUrzMdzKE7pQ+HUQ
         FpqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=F3a6Lur4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=09TT8LQe+5ZKBu0iOIb06EE1uQtXvXXiumt+qDBxSIU=;
        b=dKO0Vffm3msKPsuJ8rZ0EdOH2vw762mLU6ozNE7edai7pfs71lizNfB3UxHqyh5dt8
         cAmc0m0HVnsgrYk6hPBm9DjOIloPW8X9AGu/l7tL/gaKsYn9qoMh0P6xVXdyb5EDYk1y
         2j2U3pyP/far1QmRXWyGGJrIk3fe1ky2oIHviiZfbXnTrVOkXsb8SnsEeKKIi977a0YB
         wHQy8N1czgps/7wiQimpoRWDJ55Y/V9hj/Tdj/VL9ovvPYjCLOkJTaGU3YwclHyWW6ye
         gegOdBlzQ2fUU/jZMClOiX8Qg8KKY+rRtd9rwUguIyH+6fLq/rs3DL2ImgBaNmE7SijR
         ++BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=09TT8LQe+5ZKBu0iOIb06EE1uQtXvXXiumt+qDBxSIU=;
        b=NLVG0DSCI5t/x2OgikzQCZBM5po4j3FAWhFwFAmP3knfek1PtGOeoKFGGc0AmbWIPn
         hrNPdLL3F/7cfjq3j8Ora+fkYKROBYj68M9kw9A6VFdrwRooG2UepdS6OBbajZGw6FZv
         iiLj08w2/fg2wDBEM8WT0bWmTSbiNHPEh/Cr7MAwjGwV9yPGWeXA2ui9vKdfyOjfiviH
         qwwAStb5NdG5fuSlFgIe67motO5QQ2IMNFcjuDrXp6K22K0srpJ+g/sBpSaAwTdaN078
         TDPUvCmzpiX+AWSog9W77MRpwgqIrl+kX5gspFYYS8l+dQPSzs3BtSlg8gT+MA5YPUY1
         YE/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACgBeo2xBFh5nO+njJe6i3cuhLteEkXoH7X43X01MHffEPTp26PsyrwA
	qvYlul6R/9qVvahejb83HFY=
X-Google-Smtp-Source: AA6agR4e1vkiwFPpk+cu+wpfS0zDKA9MQ+PUBydY7xRYvCkv4s9ovAE9566kmJ0/rLJqfrRHUSTt4Q==
X-Received: by 2002:a05:6870:8890:b0:101:db34:3ed6 with SMTP id m16-20020a056870889000b00101db343ed6mr13175968oam.151.1660638442685;
        Tue, 16 Aug 2022 01:27:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:8dd3:0:b0:44a:9926:3d8 with SMTP id a19-20020a4a8dd3000000b0044a992603d8ls228976ool.10.-pod-prod-gmail;
 Tue, 16 Aug 2022 01:27:22 -0700 (PDT)
X-Received: by 2002:a4a:94a6:0:b0:435:f61e:d7a1 with SMTP id k35-20020a4a94a6000000b00435f61ed7a1mr5953501ooi.82.1660638442196;
        Tue, 16 Aug 2022 01:27:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660638442; cv=none;
        d=google.com; s=arc-20160816;
        b=lFC1FwIYuDtlIg2JkxgJCAXPBsMrR1S3zw9yocHrwZvBxPCUzaEgoUfRZUDVqmGTd6
         Xh+RfFNGVVaRZ27EChW8jc6kq1FB1upRkmgyRzFqePk0ki658W9cIQR7ZoVcOe1i99pW
         m2BWKWNfG++TSwZvkWuK36BTkfwKCC4C+AfV+dVZikbJShuOPzxUbnp9329o9MFlt7vw
         PVoZddR+mmJIWZD3Uo469/vASOotSMt4WxjZgCI3oOm5JvKeN5g/cpV+FvGoCQf+tswX
         3cRR+s1Ji8iThtIm8SbMvO7ctzZHsvl+gBhWi0JjVBQrSgzmbrUpEZt53DcG5lX+Sacw
         1INA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DsRT9DAyAecXu+GVTuPzQVwtx01aTTjj9osD0dFmrIE=;
        b=IGQhnPsPgSav0YxV6lFlI4TubkDYJprlJPTLEG9zk8Ozok7XKv2x3Cy9OmYKgwagM6
         cV1GZY0FPCH4UbaSowPVuQxX7EVen5C06C+LTMr64qRyViGz+N5CY8UVEsPWATl7prYB
         dt/WwfH9q5pO8ZKvDT+PDkKQmmV44niOfKGqd9Dsa3waJErymaVahqyj+N8jcQ5tOVkO
         CwUaq/gU1tukcqv5+YlZ7+KAovJ1U0YpxP63qG7JrDHlQZkauqUnaMxQ5QaMHde9jipV
         nvVhhK5s7desHV5j3UQqgcExA87KY3SwkKXiAcO/KmYEvd0PxZAN25diDNYed9vreD7e
         MLWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=F3a6Lur4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id e5-20020a544f05000000b0034483a5ef2dsi612194oiy.1.2022.08.16.01.27.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Aug 2022 01:27:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DD02F611F2;
	Tue, 16 Aug 2022 08:27:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62648C433D7;
	Tue, 16 Aug 2022 08:27:19 +0000 (UTC)
Date: Tue, 16 Aug 2022 09:55:18 +0200
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
Message-ID: <YvtNZuap/oCKVv9O@kroah.com>
References: <20220815180439.416659447@linuxfoundation.org>
 <CA+G9fYtZP_rYnmRyLbMrxKPGtJuoOw4h412dJXBJnzab41CzUw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYtZP_rYnmRyLbMrxKPGtJuoOw4h412dJXBJnzab41CzUw@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=F3a6Lur4;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Tue, Aug 16, 2022 at 01:08:26PM +0530, Naresh Kamboju wrote:
> On Tue, 16 Aug 2022 at 00:58, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > This is the start of the stable review cycle for the 5.19.2 release.
> > There are 1157 patches in this series, all will be posted as a response
> > to this one.  If anyone has any issues with these being applied, please
> > let me know.
> >
> > Responses should be made by Wed, 17 Aug 2022 18:01:29 +0000.
> > Anything received after that time might be too late.
> >
> > The whole patch series can be found in one patch at:
> >         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.19.2-rc1.gz
> > or in the git tree and branch at:
> >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.19.y
> > and the diffstat can be found below.
> >
> > thanks,
> >
> > greg k-h
> 
> The arm64 clang-14 allmodconfig failed on stable-rc 5.19.
> This build failure got fixed on the mainline tree two weeks ago.
> 
> * arm64, build
>   - clang-12-allmodconfig
>   - clang-13-allmodconfig
>   - clang-14-allmodconfig
>   - clang-nightly-allmodconfig
> 
> 
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/2/build LLVM=1 LLVM_IAS=1
> ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- 'HOSTCC=sccache clang'
> 'CC=sccache clang' allmodconfig
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/2/build LLVM=1 LLVM_IAS=1
> ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- 'HOSTCC=sccache clang'
> 'CC=sccache clang'
> sound/soc/intel/avs/path.c:815:18: error: stack frame size (2192)
> exceeds limit (2048) in 'avs_path_create'
> [-Werror,-Wframe-larger-than]
> struct avs_path *avs_path_create(struct avs_dev *adev, u32 dma_id,
>                  ^
> 1 error generated.
> make[5]: *** [/builds/linux/scripts/Makefile.build:249:
> sound/soc/intel/avs/path.o] Error 1
> 
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
> 
> Steps to reproduce:
> -------------------------
> # See https://docs.tuxmake.org/ for complete documentation.
> # Original tuxmake command with fragments listed below.
> # tuxmake --runtime podman --target-arch arm64 --toolchain clang-14
> --kconfig allmodconfig LLVM=1 LLVM_IAS=1
> 
> tuxmake --runtime podman --target-arch arm64 --toolchain clang-14
> --kconfig https://builds.tuxbuild.com/2DPEiUmdALSZq7DeNthZFYoPLaN/config
> LLVM=1 LLVM_IAS=1

What is the commit on mainline that resolved this issue?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YvtNZuap/oCKVv9O%40kroah.com.
