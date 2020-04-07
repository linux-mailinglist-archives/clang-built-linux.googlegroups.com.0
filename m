Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2M2WP2AKGQEYNOIAPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 776EB1A1567
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 20:58:50 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id h17sf1563812ioh.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 11:58:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586285929; cv=pass;
        d=google.com; s=arc-20160816;
        b=HzzAYrj5krDwDcJWd7DCZPl1j1LBjBv5zHgNs+FPRloXN78mb+01zNsWpcmHfxgjTp
         E0nZ98hMlhOgQiv3DXnaaYBMV6HmRxkhG0wYlg/92Qt+Vg3dd/+pYorp+eG9ZjlgOuQU
         osGIL0ihqisahCXFruS6YLA63Rz+mRuvQcXHoSXhVWUrLwKjrE5vCOw+Df+Jhf6R83pG
         EGBRQLxwjQfnJIVJcw0uv7s3vYCKb24xGEsLhZZXCFEcn3UgUuAsVVpWCa9Y0adOVvhZ
         P7ECriO2z/+lFiVyrjujdE7puFGlBKQq1y6YsueyzXHbRNufX5ToDyckHsK4kpPLOxyG
         NPwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=0jd/RHt0PM7Vs1KsQNdHh14pZKxutKyNfg0nsslcfPs=;
        b=s0Y6d+aPVgwbNBO56D9VaRaTv3WH6FDLC+XvabiX1WMurFhLYeObDGLhReVT5aySpj
         lA9VVD85PTHy5ieJmXeh+BAId/hQZGVbJtRdy0CeLnuGow8Oz4y3NVyRFIrhwONZBpjm
         uRzZ1e2e5igrtQsfm6jI4BgkcfuXSflupa/p60WkY3QRRnofQpYXW1ljsj9z6xV9DSSd
         1C55NdGbJdAhmfIMSWSBWtrp71sESJa44F6RdorL2kSqlhaGDISSmUv14O/x9DMriAR8
         srm3mcRD4xmQfe5Of6dFbCOi+buwTiBp2V/3RU3P8DdHtjxV4OPKMC0kvgL+ikFJGz/i
         RCTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fyPfhj7x;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0jd/RHt0PM7Vs1KsQNdHh14pZKxutKyNfg0nsslcfPs=;
        b=AT2LvxqCOTb3LgdL3BjsEiKDcTaqQLyo3NooC9t6XVJ8/z3kZZkKTyDcAAlG9eAUAI
         1MaerntR1Q3QDYz/NiegA1Rx1AmuSFPQcln6R/MVHl0NTI/CFBQMiEkQwLKq5wFzWdoS
         pa++U1WGO6PfBC6iuJpInqR51kJBGA/7JXwnzPuw/vXZAseflSuzOVns9T33EqCidXBD
         2cVQy/+vhCuZNaqs7Nm+jAScIvUK0nSfxZvYUp3n15qn7D9AAgYIblyDLkn/DugcRWKE
         WYYzWYR+62goMh9sgitwxkulRDLvDc4IeeKyhzhYE2UTNVkRnT5tRyLLJbwirOhnMZYm
         0s8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0jd/RHt0PM7Vs1KsQNdHh14pZKxutKyNfg0nsslcfPs=;
        b=OBom65nTF51asipQbBCdSYUYzOku4hzIWWPjoHwWqn4XL9YvSpZvz2j7v64dxMIPBS
         NE30p9ewrW6cOqCq+NP/qJi/fRHCdmrY546AA1MNwrlSZ4ZwHsnKtkoV+9ZZamHfuDQ/
         i2BvYZOwsgcUyYFcpeiobZXM3OsoO8YP1aJjXRwqRhFrijR+8VXklAEFLgMCZ57DpuzL
         OMBxk5gFDIIs5vOV3euD8+lb2PyyzborH+DZZmvGIpJRlU8Y1nyptrPUnQu8lJP9/9H2
         jiw2eEC2H6GLPog74fl2/KLcXtgNXNzWhKvlgUI1VrxX3dlrYFx+YN5xeqbUanXEYqiH
         +PHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0jd/RHt0PM7Vs1KsQNdHh14pZKxutKyNfg0nsslcfPs=;
        b=jQyq6R6ZQc1hcxt82jyCKCW1bmoM6Hi0hfs4yvMxsnP2tO8Tjp4N6KUu3IA8huMPM9
         9G/RNeo0znXl8TaoKF6iLJ7B2q8OZbBmSkxv78nO5TKgqOSG3IeVlVVDZfj1Wq1Lz+1/
         +KRJymk+VxBLR4qhQD3LGE9Qt4LZTF384UJTrcLTOhrMefk9ohfXHCWnYknG8fl21gWC
         D8TVAyNNqPX6z//CeGnY/hkGMOab6G2Xbn95qL6AacNbKb1l0AtlV/E9iLobGSJ0qIF/
         LCXGdM4tk7UJ46ZHSzs4hxtTs0UBAB1RWRQ72naX7YNIFZ6rsviE7Y2t2/OxOraEKf4E
         xJjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubxRpPNWCx6dZ1OBKtHr++7cmYPDJE5fpu350xWmC1HGWVyRj8N
	v6cPkn9e/ofHnx0OjNkOXpM=
X-Google-Smtp-Source: APiQypKpg8XTllN0GMAH5cnduQSPsyD6P53CRCeZITX358bf/AjY3GSYl/y8P9CT63C+I5PjCA+5Mg==
X-Received: by 2002:a92:d105:: with SMTP id a5mr4014753ilb.142.1586285929442;
        Tue, 07 Apr 2020 11:58:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8619:: with SMTP id g25ls2176643ild.7.gmail; Tue, 07 Apr
 2020 11:58:49 -0700 (PDT)
X-Received: by 2002:a92:79cf:: with SMTP id u198mr4045329ilc.23.1586285929164;
        Tue, 07 Apr 2020 11:58:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586285929; cv=none;
        d=google.com; s=arc-20160816;
        b=gw04MZcgTMtM+VAd8kXVaQU7GExX4SFqsFSNJELhgYwVZOaC3wCzUzFcIfEQt4tO7z
         Vtx0Ir0P8Q4h6BiNh0WdyXBAUEZnNcx8CAv0HZrvCZm5R5qPLKTuPMhqEQhsubkCsutF
         RWBIREOMnI/jrV84j9gF75Kan5nHTOraQJ2ph0daqkl5NlnZk3IvxOIw//GrBcbgIxKh
         XzPGXn8hz27CgawtijQbDV2xpsmhRKyAd9kqrKCQKPrg86aRjOSBWp18uvIz/8JrCLSv
         4xTxJWJA2EOf4OdWnqbQdg1P8ASkXehSs3vAre6pShp3AK01BLz5IHnIlzTvdtXmVC36
         Qp1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YWZDTwn7AEtR6f1wBa6JyrNbxy///AYHB+9+La4XHYA=;
        b=ZCgHxcpmG03w8N4Q3+Un5Hzdv2ZPrBqIfq1EW/0CMcuBpQHxXhvXPpKXZBbC+EEewS
         s57Sidh/nR6cg8WcUDg00n5SQr1AlmkUeUYOAB6Sf0evYhlYmX7faTbarkqRSk012CI6
         qAAQQ9hYKguA5nMZ5S+00TCVBnmZesvD42ScGKkjQulbQ4b5fKB8x1kiCKgflKG9JKP0
         EgYG94cPb/Th7+MLQzPczV/j3px9hkuxq4sSItZ1WepPLQ+QP729Jo9Z14f30wee8+OY
         axqqa6Ios2y7mByTAUGWCaeG/YhHwwkoNoAtBxAfrf+d+HsdK27QibEwaCi1WxA6MWHs
         9bNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fyPfhj7x;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id x16si180003iov.1.2020.04.07.11.58.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 11:58:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id k5so2455375oiw.10
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 11:58:49 -0700 (PDT)
X-Received: by 2002:aca:b441:: with SMTP id d62mr231706oif.107.1586285928809;
        Tue, 07 Apr 2020 11:58:48 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id u13sm5552172ote.48.2020.04.07.11.58.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 07 Apr 2020 11:58:48 -0700 (PDT)
Date: Tue, 7 Apr 2020 11:58:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: ci_notify@linaro.org
Cc: tcwg-validation@linaro.org, arnd@linaro.org,
	clang-built-linux@googlegroups.com
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allyesconfig - Build # 63 - Successful!
Message-ID: <20200407185847.GA27337@ubuntu-s3-xlarge-x86>
References: <1200207249.14740.1586279040613.JavaMail.javamailuser@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1200207249.14740.1586279040613.JavaMail.javamailuser@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fyPfhj7x;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Apr 07, 2020 at 05:03:59PM +0000, ci_notify@linaro.org wrote:
> Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.
> 
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[linux_branch]="b2e2a818a01717ba15c74fd355f76822b81a95f6"
> 
> Results regressed to (for bad == 5fab54423a0a88c4333e802155eeee944e82195b)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 18629
> # First few build errors in logs:
> # 00:07:03 drivers/rpmsg/mtk_rpmsg.c:68:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
> # 00:07:03 drivers/rpmsg/mtk_rpmsg.c:93:9: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
> # 00:07:03 drivers/rpmsg/mtk_rpmsg.c:170:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
> # 00:07:03 drivers/rpmsg/mtk_rpmsg.c:204:9: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
> # 00:07:03 drivers/rpmsg/mtk_rpmsg.c:223:3: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
> # 00:07:03 drivers/rpmsg/mtk_rpmsg.c:259:9: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
> # 00:07:03 drivers/rpmsg/mtk_rpmsg.c:376:3: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
> # 00:07:03 drivers/rpmsg/mtk_rpmsg.c:387:15: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
> # 00:07:03 drivers/rpmsg/mtk_rpmsg.c:409:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
> # 00:07:03 make[2]: *** [drivers/rpmsg/mtk_rpmsg.o] Error 1

Reported:
https://lore.kernel.org/lkml/20200407185815.GA1805@ubuntu-s3-xlarge-x86/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200407185847.GA27337%40ubuntu-s3-xlarge-x86.
