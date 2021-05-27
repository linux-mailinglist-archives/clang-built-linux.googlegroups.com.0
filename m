Return-Path: <clang-built-linux+bncBCJYXR7MR4ORBNX6XOCQMGQEOHLBN2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id A14C03924B5
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 04:08:55 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id o1-20020a4adb610000b029020660e40b70sf1766365ood.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 19:08:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622081334; cv=pass;
        d=google.com; s=arc-20160816;
        b=TRtggK6D+FCt3LUBMRqIfTe8+MpwfixP8JblJTqYyq3ffcj8xst/v19Hk33SsCVAno
         pAcGRcu5Z1+4vy1c46tsNdQNJdI4mmKLHspp96ZX4t7lBW2M0EeEmFTPlGeGQvtCVgiy
         Jzw01ap0MReXxAmJcngKqJE4WJA1LJlzpRa496nrUrSTUVMsjxjlBfmNUX8YfJQTw8vC
         oki+AVD/k5vNmH8b0TizEokiWbi2s4Z/2/1B6+ans2LR4M/DqskEm4hApq5LrRYnYM29
         dClJ3wLGeaqE3Y86bQ3G+OwXu8daylAEQDZOUJcxxpfBOfF2hxo3V9tKQJz1M85q34L+
         mD5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=FpcbhAbX56hmivXhHzycxu9dEMvqzSHr2vP3iIIfaos=;
        b=d4PIz1pQhiXyaUilWrq3wuU6KY4EQosiFLQJHAQhcYrqMRvzZ9j6Dyt7nZQi+sqSCI
         fnMGYIgfwjtqSn+PTYibadA8l35cuKniq3zM6Eelg3mhi4HZ+fVAC+KhtRZtZahS3Hsv
         cgAGX1cqOd/aHvt5VAp0/4UfSNYEFt2QqfqU2pShPzgBrAkWe5mkJpHKWJAcx9idv4g3
         Z96yialmfhWlkImda6u599Z4s/ZxGz35eZZaVQ+tmJi5TOEm2OukSVlByyDjlwIrTPot
         xeI0MmGogyEZeqVzN9uRdMjql+qty4u//Y3QIHcRMYDDKC92sli/3EQ42b8/NV5YfILk
         zjFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=irhwIYjP;
       spf=pass (google.com: domain of hsin-hsiung.wang@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=hsin-hsiung.wang@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FpcbhAbX56hmivXhHzycxu9dEMvqzSHr2vP3iIIfaos=;
        b=BzKBLkab+OLB38tVU5FKom/1bOc3t5F/PB47YxxuBvzdAe/v2fbGwbQLL7ir+Xd0ps
         hQGmuL0cQSTZSnmyyReiLL5h4iFLgED8oLxkVVbOSLXIHYp1GzRQ64oKAiLW/Q+vHred
         awRmCS3CzxXDZrtRFqS61EJnls8XuB8j2gr7GouhI93gPjs35GvS/vrYNhTme63sTP2/
         /RBd0evjFjZSHI/fogLM04bBkhRSQ2zaHAPYgwEqU7kKogNuvRHnaH3/c0cXyikdOMZ7
         W0ICx+du11zFXB0j/PRkiKdU4DOX9JrG7XUenp96G7wGE6iwxnmwG8pYd9sIK8weZEMi
         HBrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FpcbhAbX56hmivXhHzycxu9dEMvqzSHr2vP3iIIfaos=;
        b=dLVPPn9Oe5u3EvOxOnlDMs5LYS8SA7V19jJ/sLkpVJlHlIr3B2l8sOJh8cEsXCYcmX
         IM0LqMUJFgvzIjyYmwi9jMlvcvkC5KLXdWk6F84d6PEZKZJHwXta6tPZk8ioetwt8k3W
         HAMmKIWoXzbfN8BHQjXuFAC+A0dE6r5nXjfZiyYWUZ94+Mbzfb2FoKLd1IGz0N5GWZ3f
         Ld0OzYHFKz7TGIJ2X3wVj3OsypAqU1cmbUp3HIsxfedevHw+LZxcvgrxmp+MKIMRuA3x
         POlaHvLYmjRs/ak0Jnr0P9n6k3KJD3Bu0PaislVv86IG2hHYWzhLgMazxxWpOA5M3M7V
         FcyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mNht9aNBt/iF3wmPjK42LR7jP5hG9TRrxuuMdnolOJfXEG6Jt
	WyO0hzYgQFW6qDPTWg9B3SI=
X-Google-Smtp-Source: ABdhPJwLSYSRv80Pfb2QI4fRc5mIzEbTTEHSEk9f3dFYE5O94byUZIpaHcUIfDH/cG5wRXt8vE+xuQ==
X-Received: by 2002:aca:af8f:: with SMTP id y137mr3794623oie.159.1622081334403;
        Wed, 26 May 2021 19:08:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b102:: with SMTP id a2ls515275oif.5.gmail; Wed, 26 May
 2021 19:08:54 -0700 (PDT)
X-Received: by 2002:a05:6808:90b:: with SMTP id w11mr3872250oih.168.1622081334084;
        Wed, 26 May 2021 19:08:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622081334; cv=none;
        d=google.com; s=arc-20160816;
        b=hFKLpSH3lQRmP1D6X7NWPxxFc1bYhXy72r5igN9Fz28ee/afejafLe0qbNtDZiAb4F
         ubSN2FMWODoO8qGS+d3WbhAhqEhBM98LCy6jc+2rgDp49t8lZ291x8DFoRtN6DkvkqBd
         nmVfZGCDONg/f1aCxcxp2PBIh2R+8J8JjRxPad4ZHefBslhAN17n0fxBqKr9BjVTDfh0
         mu2aUeDtWFK5V3LpRQNnuQ/MNKfU6xjg3IfQphhnAdbtZc5bUf6Z284b5btUoHjZccOn
         /b07tXL0s9XE6RBe5vn67D2yZFssVEmq9fzxtSbw2C3QgSDankQwY2lNZlBVYqyt2RYL
         hqXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=y1NwRKA/u3VyZk5yDpibM8d4jcADHSOdUWDHaiYEFYk=;
        b=dkJ8TZ2v+Ib2Q9KSdOcOg9aKn6cFx/BEt120r83e3mrUWbbppGFFqCfQ3raI0PADOz
         Q7ZFDkSoOW1C0jAN8yVjsO2mBb0Ah/jpM/81xAzfy0s5BzSkTMd/QYXsCP6QmrIqq05A
         ovLElOhHNt5eC8//+xGti57D0Nma/k0lwnxNMEF0gDECcU1I3xs0QXw2kEfzT1cXS2+B
         o4N/rJT0nd75J+qCr+a3W61f6ckfOsUKFPUW8oY/Xa6WWNRU00FiDFUjSD/P+ADw4DAf
         DFS83gsa4DW513oLglW7qhKKwOVMPomOXQn+wDqAYfIji5fpHHxBCDO2y4HrOABNGb2H
         ZV1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=irhwIYjP;
       spf=pass (google.com: domain of hsin-hsiung.wang@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=hsin-hsiung.wang@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id b17si88103ooq.2.2021.05.26.19.08.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 May 2021 19:08:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of hsin-hsiung.wang@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 0f10ba085faa4a94b2f2a481eb313bd5-20210527
X-UUID: 0f10ba085faa4a94b2f2a481eb313bd5-20210527
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <hsin-hsiung.wang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 277139762; Thu, 27 May 2021 10:08:51 +0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 27 May 2021 10:08:49 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 27 May 2021 10:08:49 +0800
Message-ID: <1622081330.22138.0.camel@mtksdaap41>
Subject: Re: [PATCH v8 4/4] arm64: dts: mt8192: add spmi node
From: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: kernel test robot <lkp@intel.com>
CC: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, <kbuild-all@lists.01.org>,
	<clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, <srv_heupstream@mediatek.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Date: Thu, 27 May 2021 10:08:50 +0800
In-Reply-To: <202105270021.c336cIqx-lkp@intel.com>
References: <1622025344-31888-5-git-send-email-hsin-hsiung.wang@mediatek.com>
	 <202105270021.c336cIqx-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2
MIME-Version: 1.0
X-MTK: N
X-Original-Sender: hsin-hsiung.wang@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=irhwIYjP;       spf=pass
 (google.com: domain of hsin-hsiung.wang@mediatek.com designates 210.61.82.184
 as permitted sender) smtp.mailfrom=hsin-hsiung.wang@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

Hi, Sirs
Thanks for the review.
This series is based on Chun-Jie's patches[1].

[1]
https://patchwork.kernel.org/project/linux-mediatek/list/?series=488239

On Thu, 2021-05-27 at 00:46 +0800, kernel test robot wrote:
> Hi Hsin-Hsiung,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on robh/for-next]
> [also build test ERROR on mediatek/for-next linus/master v5.13-rc3 next-20210526]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Hsin-Hsiung-Wang/Add-SPMI-support-for-Mediatek-MT6873-8192-SoC-IC/20210526-183803
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
> config: arm64-randconfig-r016-20210526 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 99155e913e9bad5f7f8a247f8bb3a3ff3da74af1)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/423b4a1660f5157dbac566f9c498c61927f09022
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Hsin-Hsiung-Wang/Add-SPMI-support-for-Mediatek-MT6873-8192-SoC-IC/20210526-183803
>         git checkout 423b4a1660f5157dbac566f9c498c61927f09022
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> Error: arch/arm64/boot/dts/mediatek/mt8192.dtsi:299.24-25 syntax error
>    FATAL ERROR: Unable to parse input tree
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1622081330.22138.0.camel%40mtksdaap41.
