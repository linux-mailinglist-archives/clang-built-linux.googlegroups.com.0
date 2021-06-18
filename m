Return-Path: <clang-built-linux+bncBDUKXHHSSIJBBNPTWKDAMGQEQEJM3EY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9803ACE92
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 17:20:22 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id d20-20020a0565123214b02902ee335ffed2sf4600691lfe.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 08:20:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624029622; cv=pass;
        d=google.com; s=arc-20160816;
        b=sS79T4W1P6ocggVEG1YSFQRGJxQfMpLRfn4NyO5KOw92doHL/HQeFX8mio1wLJY5YV
         wIOBoFy9R2XINtAhqDpvEBPP5hlbgE9sMtz8harc4U10aciyzItj960tz8FHWPNLuccx
         wgz6/DMgjI4CGLJkWu1cJoHPJzBPI0Jvdlh6GL8XQWGOAO96bMHMM3joapC19c+hsLdC
         +iiSBz/sSZsNLF2DZVc3IiWmlRug0eXPjgMRm4qNBzYBWCOMFkS5MQvLM+TszWgzzi/d
         PE36lK7XQR6/LVWuaad24/93iszge2aIp+YBq8FYvkcb4+AQn7sEZ35ONBIi3US8Hbdb
         2DZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=u11r2AQ3GPO+7IErHnDRG90iEmtZZDTbTmKPyX9ou8Q=;
        b=K4yC78khZGsiRo0F/NwA3f3l1uCMBdjNUHORNP8fvXf8QHvGNFbiL/+OWRriS6ia+T
         d31cxWwkuGF7I/y6Ep7tTjFhlPZJG/DTmvr6ba04wkH11/PXEVpaPVGKaDF3uP68eX0y
         w1q/y6Wg59CnjyAW+i0RVLUQu73AWcPub3eCj5rkqMGSr1uGyK0buYoifcRufWS5/QdC
         9vXFVIasc89tqeuY0QHjwaI+SszEvYxX41ZTjYIxCnikW6Y8/e3D/SYZhQrfffR30kRw
         CglwBRONVMh/IBUmgbmLvhlmb9UUJvQJhndD+qDgwtnZ+qYG2D3Y+cYFJ6NexoW2IfHx
         Nx4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u11r2AQ3GPO+7IErHnDRG90iEmtZZDTbTmKPyX9ou8Q=;
        b=KX8c/owFsLlnCeMOpWYKm9VL5ErYL2L2Uv5fpo9GvyTIyxWBVieiw3SQgdJoa8u3/H
         IqKfQGf+8bcEP9ti1HltSP/lh4p7Qtxk1n/qqaf7Bkt5l6vzF5G5F2ehY4KMSJacV6mr
         j7wqXFYZ9dwV0v7qVgMsKyFFLk6L2SYLnT0B1xlFFFt+yx4+aIs8da/xZcaNdubfu6DR
         e1PxlH8o+RZ6mSmyY8/jW0c1jeooBmMBtK1yGdV2qw0Fc1OeDWTVXFCcAWyMbt9F2nJR
         QNZCZyHZegCl+opGyH7lAklIgu5yU6mteQp5bQMTAjR3ZGxBL8ZOieesFljELN7Pu5cZ
         Ps7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u11r2AQ3GPO+7IErHnDRG90iEmtZZDTbTmKPyX9ou8Q=;
        b=rHp2MNHG/b89z+sjJLQxv+nJMNaiMeqJKIUpMOkkFteZ4/UfjEQtPSywcqfAtqaWJ6
         qC5ydoE6GITKUws4NzuwsGGhz5x2/pSorfQFB1mfdrm19YBs9hJhjPJ9WHXv6KfApoai
         cKdvQHkIvHN5SPXQzSsKZxuBXBHUW3wSQ1rTl/iCvL/+Da71zD4SiAkQTMfhBP5o3hnS
         IBs46eoJHUML67TzW01HUX+VrQbjT42vF/rXA7jk6XP/btZux2GWlcJTUN6ucwl71f7c
         5Nlk1gYEkmzWRG2VAeg+kjLYyyugCCnW7ywyNhFsxvsvE8gx9WbpMpi4uX//s0diTrCc
         ItQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ipiNv5iglvadYy0pUKWEZQmnEbD1zstI7EGuEhsYx1j2b+4tI
	14V5tWRElFVGO943+8eIR5A=
X-Google-Smtp-Source: ABdhPJztMeR0n+tdPy9Uliolh0JLhutA6Ab/buaGdxnjHKriM6Qle4G8p8lqTIslGc0Kyt1LO8l9MQ==
X-Received: by 2002:a2e:a48b:: with SMTP id h11mr9890410lji.111.1624029621467;
        Fri, 18 Jun 2021 08:20:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b54c:: with SMTP id a12ls3470554ljn.5.gmail; Fri, 18 Jun
 2021 08:20:20 -0700 (PDT)
X-Received: by 2002:a2e:5c08:: with SMTP id q8mr10005592ljb.145.1624029620206;
        Fri, 18 Jun 2021 08:20:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624029620; cv=none;
        d=google.com; s=arc-20160816;
        b=IP1KMA7BxhvE/oFe/CVQBVGdpCYtfvdiaFwZS4Ug89WWaklJ276r89ZbzAVb38NrMY
         fIjuZokHqfaXA3LSqyHVKvEL8trX1ou0Y/rxcOmbVMeKTiYjcesrsNikNiDx/h62+OcZ
         lFkIqtVSsjUWrWBtAMzUny6sZzWMQKmrfD+qBrrKcacd4naTuwchPSWwa8dGsUZqiqAu
         QSNKRQS3iT6r2Q03sZcSpIxgJdEKZXNrppWGteSx6No93eTyQrKu6YLkHCmceSskOkvb
         Kz0MReqxoTN4X/lwxyk6+Lqb7Le/wx0VKgoR6dGAnXT9UttMa+bjY+LGEIuKzG1vesFs
         2+fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=l2vHj7gC1bPudxwKnXM6ZzxS+KXh+EPm8mlUndhME6c=;
        b=ONV1/1U2rb+T6A/j+59BOo4FvZsu11MVgIU3+QQTeyP176svHJxXg6aDb7ShpVDMiY
         7YyT9Tuyum6R0P/LU2FuH3d7LJ7FqtbrHLjPqdQDAqayckT6mSbVVuxFRLU3kaLhqMTP
         eNenCPFdJ52D2/Y1Wl0u5aDhlYu9iaGxoQBRWLN7IfiOEGwa8Cpkn2VXuiLRoQiWjoX4
         L5fmBt7OHpCF9NxhJfA1HMduiYyjUjAAKIXSuac3N2ZSiJdqBQ8opYOic99wD+0a0ziL
         8fGTpMbPCr0fUmkyl8h8eqMk3GWviYIV8eYWG8GYWFgmSOXr9dMcyg+U8UWODvDZMwwM
         dCew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id w3si387859ljg.8.2021.06.18.08.20.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 08:20:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1luGI0-0003mh-7M; Fri, 18 Jun 2021 17:20:12 +0200
Received: from pza by lupine with local (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1luGHy-0003ik-S4; Fri, 18 Jun 2021 17:20:10 +0200
Message-ID: <02b33fbe07720d29c112fe1ed5713f532319f215.camel@pengutronix.de>
Subject: Re: [linux-next:master 5946/11253] ld.lld: error: undefined symbol:
 reset_controller_register
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Thierry Reding <treding@nvidia.com>, kernel test robot <lkp@intel.com>, 
	Krzysztof Kozlowski
	 <krzk@kernel.org>
Cc: Dmitry Osipenko <digetx@gmail.com>, "kbuild-all@lists.01.org"
	 <kbuild-all@lists.01.org>, "clang-built-linux@googlegroups.com"
	 <clang-built-linux@googlegroups.com>, Linux Memory Management List
	 <linux-mm@kvack.org>
Date: Fri, 18 Jun 2021 17:20:10 +0200
In-Reply-To: <YMyzKmDO+SJt8n4N@orome.fritz.box>
References: <202106182243.KgZxMD9A-lkp@intel.com>
	 <YMyzKmDO+SJt8n4N@orome.fritz.box>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: clang-built-linux@googlegroups.com
X-Original-Sender: p.zabel@pengutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33
 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
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

Hi Thierry, Krzysztof,

On Fri, 2021-06-18 at 16:52 +0200, Thierry Reding wrote:
> On Fri, Jun 18, 2021 at 04:21:45PM +0200, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   e71e3a48a7e89fa71fb70bf4602367528864d2ff
> > commit: 56ebc9b0d77e0406aba2d900c82e79204cc7dc32 [5946/11253] memory: tegra: Enable compile testing for all drivers
> > config: x86_64-randconfig-a001-20210618 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=56ebc9b0d77e0406aba2d900c82e79204cc7dc32
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout 56ebc9b0d77e0406aba2d900c82e79204cc7dc32
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > Note: the linux-next/master HEAD e71e3a48a7e89fa71fb70bf4602367528864d2ff builds fine.
> >       It may have been fixed somewhere.
> > 
> > All errors (new ones prefixed by >>):
> > 
> > > > ld.lld: error: undefined symbol: reset_controller_register
> >    >>> referenced by mc.c
> >    >>>               memory/tegra/mc.o:(tegra_mc_probe) in archive drivers/built-in.a
> 
> Ugh... more fallout from that compile-test enablement. It looks like
> that compile-test stubs addition patch for reset hasn't found its way
> into linux-next yet.

It has [1], it's just merged later [2].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=48a74b1147f7db4623eaed591cc01eb740b871c0
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=25da503ecce8f523c1c1c678659cb484d3bcd73f

> Philipp, I wonder if it would make sense for Krzysztof to pick up that
> patch or, if you prefer, for Krzysztof to pull a stable branch from you
> that includes this so that the memory controller tree becomes buildable
> again?

That commit is stable. Feel free to pull it in below 56ebc9b0d77e:

https://lore.kernel.org/linux-arm-kernel/14d33ac19b2a107e97ce1ab264987b707baa9ba7.camel@pengutronix.de/

regards
Philipp

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/02b33fbe07720d29c112fe1ed5713f532319f215.camel%40pengutronix.de.
