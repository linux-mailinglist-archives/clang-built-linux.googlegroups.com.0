Return-Path: <clang-built-linux+bncBDFLHYPKYQGBBYPX7X5AKGQEABCTCRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B70268D40
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 16:19:15 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id s2sf39394pgm.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 07:19:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600093154; cv=pass;
        d=google.com; s=arc-20160816;
        b=zQn99QW7wCRuR8PE7j+4Z4KED1ThvIxJ+smO91YrWQQX8DPc7SYTQgIf99VokSWsfU
         463zN2CluvHVqcI6vFFvS1zOAQTmJ0Lifb2AM4uqpH8RckKL4BsSaoMj23O5ldXqx5EL
         JtZCwzlLBM6aBHzfPJAQTUDuE3CoQbQZpG8pgV6npbC5puycTTxzGdRTpn5ZSQwwefj7
         x5UUvhHbJOPdqnypZbW50u0vJ0+wkgfWvEp1rH25eiMkLNo77LQo3lVff1hUqEqE5Gjd
         ysgar0rGXBZba7f8RsAS7bEyJqiGkNfzv2djuXJs1VNhwIl/GUbG6zskkcbUqtfNveyK
         G2Kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=k7BbePAQtYiwoC0AoHNHIblfPPhIAnsT/uhGvg+a0YM=;
        b=zzs2fbljKEbzwCdBSAyw2YaC8KgIoCSztLKKRt/OYY2XO+OQW2K9VqyosJ+pjSH+5P
         m1/zB61c+lKFgI9KcXto/3rtLsgvVesX8NFahjkYGxo5Hj3aJmd6edtX4ddanADzOXUa
         AZ+0Fpd/OJCebhbJhop7Ec3YG5q//hVCLYoqYAJciFVbWG+yDmgLLpRhAlTejrUaXgph
         TsI/rUIe9U3GnIImp9HLTyyNAPHCXkay3d/oVHX3hN8/4+dvHw0xHUKqYGuyr4+I9oES
         o4LtYkpUUuY/kd8C59AQEi+noGY5WfAFuByrd0KsmMWPzUsXKwv46JnfrRaE0HZ2v2fG
         XxLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=W7o8JesI;
       spf=pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k7BbePAQtYiwoC0AoHNHIblfPPhIAnsT/uhGvg+a0YM=;
        b=JJwtK09Eu+6Fq62rAnsdXbZN69Jqix0P7usCTvT/nAhfGjk9J08DyzYP8/lToFkg71
         UiEBy9jfjXHapZuyaikWw7lkzkD5tsy5g3G3EMPRql/pECrWdH+S7txwqN+RN+Fdo9s6
         FVin9FvQk2PEFrK9x9WSqecnPSux2GjZaRvTysr72iNy+YxASO5hqrDXYEHZngxG78fy
         /AZ7oNKIKG1naJVp4eoZqWX5OBzxPcojRgjc5pv1LhIUMH4dlEqMGxphtCKb2xVnE/A9
         oxQmv+aM0uJCd0p9WGGcDOItY7U7QZJICwrHS4I+ougp3XfiB7eycsbOJNhcXx+DTAFz
         UQJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k7BbePAQtYiwoC0AoHNHIblfPPhIAnsT/uhGvg+a0YM=;
        b=G9QzuItcikuqgTUDTxTw6NvjBOsPlC1Pg7pLgYVYWtusknP3W6vfyCmBp7tUL1jHmJ
         1STZ7lO/KGLCKTBSYZ1WWy1U6trSjWXvZsfX6+bM/lTg2qWppR05VW30TeUBaJLBY4VV
         z2Ot61kdcfyQ1VbkeZHDzfk4o+/ilPZ50JiHSwr2JxEa4iK59IQsbwQW7OVEQwJh+gSt
         l2CpQYM1Ftdp4m9rN7HDsDB9u6/GN8T9vbxCveFH0Ib5w7VZNFYIfPXLOM7H87caw3Py
         xxSTvQkK3f5M6px9Z4Kl05l9ZcxXuCleDhHpoXxoGZqtsIjijLYMbweHUeVKuGg4M4uh
         Q6xg==
X-Gm-Message-State: AOAM533xJ2uzL4p4PP8DeHioE8yTe5FVIm+ySFuC/3VbNBv/0ucUhF+B
	PDYN6E4U69m3zLqkMbVDHOI=
X-Google-Smtp-Source: ABdhPJyfU1EV7M2UD+09IZBB0OSfau0Mm8aZ8iUJoUQoHGo/H25yGHBl+z4DBAy6tP2XpvbmWy033w==
X-Received: by 2002:a17:902:d715:: with SMTP id w21mr14925961ply.14.1600093154163;
        Mon, 14 Sep 2020 07:19:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:45:: with SMTP id 66ls3832994pfa.1.gmail; Mon, 14 Sep
 2020 07:19:13 -0700 (PDT)
X-Received: by 2002:a62:7e91:: with SMTP id z139mr13826876pfc.9.1600093153363;
        Mon, 14 Sep 2020 07:19:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600093153; cv=none;
        d=google.com; s=arc-20160816;
        b=GFcXMPRNWiHms/C9+uMLE9FRkHqdkCViCGaK2QQGa98udwhzEv2k4121VFhhC6Ia9M
         Z5OtcU+JuVQxyKzQMjl4aIfWnzPTGTa0YHKIWWB+Cmv++QvydofGFBFT0RHn809tPDXQ
         1xZjLOh54dO8eNhrtwxiFnH7jB7fe0K6s4ujtJ0sG7XH10am0OgIxu1C5MHl3ZJ6ZcKH
         iYxwdO1/6hzRWD9ANbq3jxqP9tXxs6JH2dqHOVZ0cWG8jOr/jfw382PIxueNFKo5+m0i
         R1EvW6P418an3bgR6ZzxxRqW0GwwrlHWVu68Vx2HChchy2wYViYEoGvq/YfjMgSbuUcu
         w/Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=pI5PheRnMv+tFhvKy45kG0e5eyiU+VcsFyTOLdpQ67o=;
        b=XiPfUF/5SV4F1uQBXFiFMHuwJShSL9KfuFKpR2sqYrshiN0L+HV8xh+1P8BOFDidIM
         F6Ut4IurUZh5naw8WLkfAHjsgAbisNBjW1xhduitLq7Sgci2dEqtsWTp8On6beuC1WjU
         cTIINAOjgJ1Vnha4dyDQqkuWAZ8F01NU+ETcFids5F9Tc4b4y8sOieNMrom+AivCDtV+
         JL1tQX3QK3GGdvkbZf5ZNrLIpveIAHVosEyKpKIILs9vN7qwkMmW2W0/L5TwDEtjou1/
         5xY86ddozATMCQGxyTeLnPJeI70xWS+xNQy/dWVEX0VXU5Y8zFjPfs9GSVwOUtVt+gi8
         7CFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=W7o8JesI;
       spf=pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id mj1si394504pjb.3.2020.09.14.07.19.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 07:19:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08EEJC4E048999;
	Mon, 14 Sep 2020 09:19:12 -0500
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08EEJCNF094306
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Sep 2020 09:19:12 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 09:19:11 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 09:19:11 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08EEJAbA114179;
	Mon, 14 Sep 2020 09:19:10 -0500
Subject: Re: [linux-next:master 4238/6654] include/linux/dmaengine.h:1576:
 undefined reference to `dma_request_chan'
To: Nathan Chancellor <natechancellor@gmail.com>,
        Vinod Koul
	<vkoul@kernel.org>
CC: Andy Shevchenko <andy.shevchenko@gmail.com>,
        kernel test robot
	<lkp@intel.com>, <kbuild-all@lists.01.org>,
        clang-built-linux
	<clang-built-linux@googlegroups.com>
References: <202009101830.GfC9Ewv4%lkp@intel.com>
 <b2bfc310-481e-92c5-9426-74395b24c4be@ti.com>
 <7ccb1302-940c-e731-0d90-24421f6aa735@ti.com>
 <CAHp75VdAAQ+gKdmkU5vzQc6JpoVRN_R9DtfnDHRbxt4MgV4RBA@mail.gmail.com>
 <f99e1c36-d514-1d1c-169c-8144fbf81d25@ti.com>
 <20200911122151.GD77521@vkoul-mobl>
 <20200911155419.GA3933165@ubuntu-n2-xlarge-x86>
From: "'Peter Ujfalusi' via Clang Built Linux" <clang-built-linux@googlegroups.com>
X-Pep-Version: 2.0
Message-ID: <66edef95-625d-b1b8-29de-fc1586455727@ti.com>
Date: Mon, 14 Sep 2020 17:19:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200911155419.GA3933165@ubuntu-n2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: peter.ujfalusi@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=W7o8JesI;       spf=pass
 (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.141 as
 permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
X-Original-From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Reply-To: Peter Ujfalusi <peter.ujfalusi@ti.com>
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

Hi Nathan,

On 11/09/2020 18.54, Nathan Chancellor wrote:
> For what it's worth, I can reproduce this failure at that particular
> commit and I see a Kconfig warning along with it:
>=20
> WARNING: unmet direct dependencies detected for DMA_ENGINE
>   Depends on [n]: DMADEVICES [=3Dn]
>   Selected by [m]:
>   - DRM_ZYNQMP_DPSUB [=3Dm] && HAS_IOMEM [=3Dy] && (ARCH_ZYNQMP [=3Dy] ||=
 COMPILE_TEST [=3Dn]) && COMMON_CLK [=3Dy] && DRM [=3Dy] && OF [=3Dy]
>=20
> However, at tip of -next, the config is fine. It appears this is fixed
> with the commit that fixes that warning:
>=20
> https://git.kernel.org/next/linux-next/c/3e8b2403545efd46c6347002e27eae47=
08205fd4

Right, this is fixing the incorrect config.
Without DMADEVICES the drivers/dma is not going to be built, and the
header (include/linux/dmaengine.h) checks for CONFIG_DMA_ENGINE to
decide if the drivers/dma/dmaengine.o is built or not.

In the failure we have
DMADEVICES=3Dn
DMA_ENGINE=3Dy

yet, the dmaengine is not built as the whole drivers/dma/ is skipped.

Interesting case.
If we make DMA_ENGINE to depend on DMADEVICES then this should not
happen (and also DMA_ACPI and DMA_OF ?)

- P=C3=A9ter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/66edef95-625d-b1b8-29de-fc1586455727%40ti.com.
