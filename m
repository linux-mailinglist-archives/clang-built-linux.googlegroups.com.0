Return-Path: <clang-built-linux+bncBCT6537ZTEKRBHGXVOAAMGQE6ET657I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5933006CC
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 16:13:32 +0100 (CET)
Received: by mail-ej1-x63f.google.com with SMTP id k3sf2286219ejr.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 07:13:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611328412; cv=pass;
        d=google.com; s=arc-20160816;
        b=cAvF0kbaQy1wjRtMzHrgJfgKJ/TyQctD27UXIAziyPj+gTkViZpa+b24BcjGmSc1IH
         uDt11wVT4gS6S+Qn/YwdPWdKFHtjkxnYDL/WN31kHTb32qltZLPoTzAvjXBM5A2z75iz
         F9nZ3Ydv3N2SH4rRmd38wYbT7B4KAFwmVXRdp6g04S/z3d+X4VKT0WD6PVnd7ZSTJh/o
         P9msa/cip5K9tg70sxVbvo15Sc7rItHRzTA3WFkNhSzyGaPaVXPnzSRWEoomR4HB8H9F
         40xGalcLxg5c2q0G9khm1z49jXibHJqTqKBXdCuSz1fa/euFTcuShothQpUPw2BKpSyX
         h1GA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=g8GgzAyyRoPm3fL4PKWk/dJiqhobEBRXmZ16seqmcMo=;
        b=XYlXbS/wdXRorjVEwz0ApSVoDt8ruojI/YWuat5hWZcYKudct4j/nwiQYm5eFkf2j2
         QH342HVlm6PgKkNzu0fDG80iLplZvh39g/0uurZyZxO5GDTxqrMIIjeIqmGBJOTw+MrZ
         etAIQM2Lb1rEyvy+Uiu/wfWYfam7hPG50XWVYdgZBpRJm6G2Q+2vCe9uAxIIo5xyDlaf
         89r+VGgupK31hbeZoToJXBjiJEgZacLro5SpfxmRsgGSgDUBx9mJthMCk0lfTOmRl+PB
         4s9lPVAXhE+04eQwOC1Dz7EZTIAOMpdQd1XAQysmWCBo6E1ljnbbSPMzvW12NrXRPZVj
         n2sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=H+wA3DVW;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g8GgzAyyRoPm3fL4PKWk/dJiqhobEBRXmZ16seqmcMo=;
        b=pjQq2lXA989ArbgIbfZ6OeS/+z4FsMMUWRCjMtvbSLB47/m5QbZH7Zm7hNvuGt+Ntv
         +pmaD/XBUv64OdnX1dNETLglWIArvhteJoAJQbexJzOL0I1LuGASfAuhq1HHPM5zKbSN
         PWwpm+m9K9w91cofn2O36R5RA8B3cZzEdwje6axl0uyz58lrbdLjWsr/ZPxY5xnHswBX
         yOqzxdyFCaIO7f+w5psEUxrA/arH+7kCpG5rsyEWf2wZQ5w4siqzUZgKiq37BgxnDsHK
         xPI2HdzrJDhU9wQ7ipVRD8xmVqEft2710n6R2futeWg0LxQ30cBhJoycqGY2N1Bf+H3I
         c+Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g8GgzAyyRoPm3fL4PKWk/dJiqhobEBRXmZ16seqmcMo=;
        b=OiFebC5OKJFcRyUzr+mwschcqBdekRTULmQyV7GjE7QA+S0sS7DruWw8tsSFhY2qcu
         Wp+QchsibWdJbKBQW6Fcb60jwWjFwYlaj6fTFebY3r/vOn3y+SdH/LCZJzTZ8HbaW8Ui
         qZxpEa5rUFIJN4t103m+s48j7uAE/pI/D0RBkZBpTwA2STF3+9N8UksP+6cWYwHOZAx6
         vZkO1AFwkEJ4lss0VC60optztN+KxwRuExKCLDf7sXyOkj6NwIroNs8WbV7lbxaNKv1X
         RNL54u9HCiq1DuEX0KYir74blf7bDvJxxfeuL6/8UGDIgIHP+3gJr3DpJ7n9Mj8htA9W
         +Now==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hn02/JvEPegbgMYMt3UJkiLxF3wOYtIMGC5Aed1h4uRMGKqrG
	bqqhfLPzaBP9uAPlDO2Jn4M=
X-Google-Smtp-Source: ABdhPJwBD9apnEF3/gEzv4i2M3XRsj0V/H3ew7PzxA/F5WsKaKBq9k2mu3GxXmajL6uiyPXuny53RA==
X-Received: by 2002:a05:6402:11c7:: with SMTP id j7mr3534758edw.290.1611328412200;
        Fri, 22 Jan 2021 07:13:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:520e:: with SMTP id s14ls7819800edd.3.gmail; Fri,
 22 Jan 2021 07:13:31 -0800 (PST)
X-Received: by 2002:a05:6402:104e:: with SMTP id e14mr51836edu.316.1611328411356;
        Fri, 22 Jan 2021 07:13:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611328411; cv=none;
        d=google.com; s=arc-20160816;
        b=G3ZuHS8N8MKgqy1s0veQa603W1MCuQeXYtNJcERJjxgHinubDwvC6+Hrt1zScOCnda
         302+KjZbNkBHSN75+PgUYL7onh8RdbUlWKjH5pbxokSkjdWZYjm00GG04IUdeyHFSUj7
         UckcZ8Z1V3iDCDf0IhNLePZeqnNpNDoV0yCdZ17cublMYGPu1qz/EPEIAAU2qirHBHf3
         gB5ctnhH7s6hXcFg2XScUZKJRz4fK7dqv8K0KBhCVPMB9lhCyFNVTtNCrj5e6tGx6r/n
         CxpfMNRbZnGOPj8ralNR0ax34bwL2LTqAfjxBMbr9j2ydx9wTUGbBNeKn8P7K3yroIZk
         +oig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x6lEXEYlBycVbeohirMEw6ub/Wz8ckmFQxXY6Dkjps8=;
        b=brWnQtbm4Kp5sQBT5bQKPdQpuQl0KpMGgC40Q0bXhZ7DJ1jNSn32yKHiC9p0Rs+iOi
         VRoyPN1IPcb0qVVq9H8dBoShqm4Lu++9ntjGj8aD6wyZMbxvnXdNdYqAqTHz0PulJ+rs
         aU6yLirt9SI6QUTkkUoSxTy+dWVS2Qb1r0kRZUIT34FAGmcNhBmIRjztCHVBvUoeC//V
         NMJE28iZ5VzoefDHrakHSJN6VM6EGKnrI7B+H9kBlEJenTIh6OsuUM+d6nd9Rg2D2G0X
         eoRsa8akfHgPY+wpu74f+IwPtxXPBScHM44wBK9V+HCpj3GgdyLiU3R7SL9TyaqTWPjD
         xVcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=H+wA3DVW;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id mm17si485164ejb.1.2021.01.22.07.13.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 07:13:31 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Received: by mail-ej1-x630.google.com with SMTP id 6so8143028ejz.5
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 07:13:31 -0800 (PST)
X-Received: by 2002:a17:906:2695:: with SMTP id t21mr3434030ejc.287.1611328410832;
 Fri, 22 Jan 2021 07:13:30 -0800 (PST)
MIME-Version: 1.0
References: <20210122135735.176469491@linuxfoundation.org> <CA+G9fYso4QNbRWdrQiiOiMb5RUr8VtM3AkKEGLasgN+KsPSvDw@mail.gmail.com>
 <YArqULK9c1Cnt5gM@kroah.com>
In-Reply-To: <YArqULK9c1Cnt5gM@kroah.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Fri, 22 Jan 2021 20:43:18 +0530
Message-ID: <CA+G9fYuzE9WMSB7uGjV4gTzK510SHEdJb_UXQCzsQ5MqA=h9SA@mail.gmail.com>
Subject: Re: [PATCH 4.14 00/50] 4.14.217-rc1 review
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: open list <linux-kernel@vger.kernel.org>, Shuah Khan <shuah@kernel.org>, patches@kernelci.org, 
	lkft-triage@lists.linaro.org, linux-stable <stable@vger.kernel.org>, pavel@denx.de, 
	Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Guenter Roeck <linux@roeck-us.net>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Will Deacon <will@kernel.org>, Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=H+wA3DVW;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

On Fri, 22 Jan 2021 at 20:38, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Fri, Jan 22, 2021 at 08:32:46PM +0530, Naresh Kamboju wrote:
> > On Fri, 22 Jan 2021 at 19:45, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > This is the start of the stable review cycle for the 4.14.217 release.
> > > There are 50 patches in this series, all will be posted as a response
> > > to this one.  If anyone has any issues with these being applied, please
> > > let me know.
> > >
> > > Responses should be made by Sun, 24 Jan 2021 13:57:23 +0000.
> > > Anything received after that time might be too late.
> > >
> > > The whole patch series can be found in one patch at:
> > >         https://www.kernel.org/pub/linux/kernel/v4.x/stable-review/patch-4.14.217-rc1.gz
> > > or in the git tree and branch at:
> > >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.14.y
> > > and the diffstat can be found below.
> > >
> > > thanks,
> > >
> > > greg k-h
> >
> > arm64 clang-10 builds breaks due to this patch on
> >    - stable-rc 4.14
> >    - stable-rc 4.9
> >    - stable-rc 4.4
> >
> > > Will Deacon <will@kernel.org>
> > >     compiler.h: Raise minimum version of GCC to 5.1 for arm64
> >
> > arm64 (defconfig) with clang-10 - FAILED
>
> How is a clang build breaking on a "check what version of gcc is being
> used" change?
>
> What is the error message?

make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=arm64
CROSS_COMPILE=aarch64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
clang'
In file included from <built-in>:1:
include/linux/kconfig.h:74:
include/linux/compiler_types.h:58:
include/linux/compiler-gcc.h:160:3: error: Sorry, your version of GCC
is too old - please use 5.1 or newer.
# error Sorry, your version of GCC is too old - please use 5.1 or newer.
  ^
1 error generated.

build error link:
https://gitlab.com/Linaro/lkft/mirrors/stable/linux-stable-rc/-/jobs/980489003#L514

- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYuzE9WMSB7uGjV4gTzK510SHEdJb_UXQCzsQ5MqA%3Dh9SA%40mail.gmail.com.
