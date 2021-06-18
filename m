Return-Path: <clang-built-linux+bncBDDZ5LVW4IHBBMHJWKDAMGQETIFBRWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E0C3ACE2D
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 16:58:57 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id cb4-20020a0564020b64b02903947455afa5sf2006567edb.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 07:58:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624028337; cv=pass;
        d=google.com; s=arc-20160816;
        b=PN/1BS4serTtGAV3yXKMz41NsybAuE2R4Xah2xxj05NZInuYtsaGBlWBHLsXtqtG0S
         jPj9By+H8ivv+U8IgnvEJxQTcNjlmNg3NPhYTcQ6OsWpPxw+0+COG6uVx+59rQ1Ncq7z
         ncuaD6cdQbbkIvrTKXc8GCbY7PIL5LWZZM2FeYjCJVhkdshWLTBgzMiby4XfvmaRQqZh
         ufdLFbIqejDIhW56EvUIpqcc4Yc+T9Be8/OfA0tlUYTxDxG6z2hgZK6IAs3zqtALTNf2
         qIMH7BvQsJWu+0slrsYNRekf61A00f/SubJtllEiPdgSG64639z+fbsFq6RrQcRE6aJ+
         iPtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=OLC/AB7pAapITIXxhGq2Nv0JqXsAH2rUIIY/Wol9Ghk=;
        b=ajY96+mOSRCnIrrXxMZ/82PJSqqrXHRXYKTidEWDJ3L8rdlhqORpRBCHVQg2lO4ypl
         lBKkkaH7vnehTdaxkqZc/A4U8skHO4Lkr92Yowty6xfRz9+4Y+BBiGqfxPf1sTBN3lid
         j4jzCBD/EmkFFqIzrBmfgaQxjiq0Oi7oQmFhHbAiLgE9Nic/3g6PvIVRBVvGQDZoHrG3
         Gm9tiD66M5ObLw1LL3/zm9WDnwmfTC9Rpvo87LLskWuD5ILNXak6tVONxIlZwVh0kvWW
         j+x/EvNQVIZUPKhk8ENf/lca3gy9FL99wz7yMNyxYPSV0O5XNu4UnCKG+23TQq+OJess
         b6Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OLC/AB7pAapITIXxhGq2Nv0JqXsAH2rUIIY/Wol9Ghk=;
        b=HvZZheRrjJ/kIRrdRq84XxIgHlxzThMoDUm4ZouNBiJBJaJSX2Nm4j69t8JNaCbxCS
         1+TQvzLlgyUrXfbwiQAMdkgYqkICZMCmHWoZEMJ4r4Phm4zIelZGfAx9TK2jpG7QYJwa
         +lhuT/3H9pA12nYbZzvUzYaT0nCWPv5FQHuClSD2ZG8zOoifTmpAOmIeF0QzR7uWJH5b
         MpZUj2SELTR8VAwwMYKGA3uPO+Hix95WyIgnYY6QCY6yJc43yX0vpRhCnTH2F+q1WbaU
         N8ONUUDZLBNCFW8RXchfKyxW1Jd4Q50KqqIvKd/hNGDQqd1Pg0ZERleKbhO9XNG+3zSE
         Amfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OLC/AB7pAapITIXxhGq2Nv0JqXsAH2rUIIY/Wol9Ghk=;
        b=qPV+JktdtdEEZOiP5N+7UIzxXF5Q8k7fkekyAuKuLISe7GPeAlK87ZEMtKCVVaus0r
         Z3krFtfabNudKJNPPCx6vlQ1XY6cAHjlMSXdzuhUaBc4We8wLrqfvFAYzv72EgNLp/ao
         hMG2QHxvXjUWbl/bQvAvwFE/D2HDzaAPTwxTd4Fwiy5vMuLN0PaeD52OEDyd5TZfxEtr
         zz3VlEITXs6wtM0+QhfB+ivmbUPLF2W8LKFk8NXSNyEkvo5YtXagubSeAkUAZnYLu8ip
         zmFNsCgYIN5X/Pdtk1AqW7RakMWq/z2Zppe0fNYJUeg9hDzPXSCz0g1fUe/isziUSL2B
         5YCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xt7ta6g8csXu6WnzNKNXqctpJjm9Fj49kYiiCgm0VUpYJIiiO
	lt6k/WxibgoijlSKm7QK0m0=
X-Google-Smtp-Source: ABdhPJwn5YF6P5zwLrL5WRaP5P225qPDJHDN+RpcXI8GRZkbYIIMzCtItpkmKL4nKcfINwsFfmdnSw==
X-Received: by 2002:a05:6402:759:: with SMTP id p25mr5659210edy.146.1624028337158;
        Fri, 18 Jun 2021 07:58:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:1743:: with SMTP id lf3ls1610859ejc.5.gmail; Fri, 18
 Jun 2021 07:58:56 -0700 (PDT)
X-Received: by 2002:a17:906:f289:: with SMTP id gu9mr11261019ejb.157.1624028336197;
        Fri, 18 Jun 2021 07:58:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624028336; cv=none;
        d=google.com; s=arc-20160816;
        b=rSBZnSEX1wT0URFua7uegCfd4kmRtnNxEbuWKGPC+cnjKXi0kcnxnu1lv4/S017Y+E
         FwUN2aGAYxV1qerr3pRyRiOeb0afVTSL7NY/TUIG8LDPPFVpXtAbgeNWYDn0IoBQFz/u
         BXe01PbuX/SYZxUKNwRxlqcaKgg5MmY5EIHAgagRXjazsEEtMJhJwGLlOkn6lpesUEN5
         mAU9wo9TjBYByTu7QsSVWKjbJ9h/uRTCQm+FiRBYRs8Gko2Q0eHK+dnmL9UM8dQ498ww
         VeZdpOh3kHrEG7dH3vL6zuF0pDx6v0P+wbaeGMuKfL0UX9UC5k6kTrCmswU7c+MRcM/o
         FxjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=5Z/5PL3eBkRebXYWKW+b6SLWewHHkR+6bShBjGdMm8A=;
        b=Ze0uMPZSglCUzXqTOQS9dMolsI05tgNoWJINfa1a/1cCjHc9m4zJNq8KEk9BiwweT4
         xVBYxIWDEoGx60feuTBHBs9a6gy+dBahlYG6Is/1ckaMkTLi9UgeoZ15NRBjbRbnQUbg
         c3gIRr5OzEBpEv/+ZqMFPDMl5n/OaIv1SoXfI3PIl7Bg1nYq/50CvLQ7sQQOcle74uu7
         495FGgOyjKMfIL2D8pfZLxZfuZen/zcyRFZpUUqySf1loTxBVy3xRhy7PtIE8mlPoU4B
         sQP+w2JDjqseMVCKbHv++hlKgzfW5KXx9gudfRmImbFeW/1yf666agm1GhsmpE1L7+1b
         rm0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id s9si449391edw.4.2021.06.18.07.58.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 07:58:56 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from mail-ej1-f71.google.com ([209.85.218.71])
	by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <krzysztof.kozlowski@canonical.com>)
	id 1luFxP-000368-S0
	for clang-built-linux@googlegroups.com; Fri, 18 Jun 2021 14:58:55 +0000
Received: by mail-ej1-f71.google.com with SMTP id n8-20020a1709067b48b02904171dc68f87so4054731ejo.21
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 07:58:55 -0700 (PDT)
X-Received: by 2002:a17:906:6d15:: with SMTP id m21mr4040003ejr.354.1624028334067;
        Fri, 18 Jun 2021 07:58:54 -0700 (PDT)
X-Received: by 2002:a17:906:6d15:: with SMTP id m21mr4039991ejr.354.1624028333938;
        Fri, 18 Jun 2021 07:58:53 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.gmail.com with ESMTPSA id eb8sm6653000edb.22.2021.06.18.07.58.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 07:58:53 -0700 (PDT)
Subject: Re: [soc:tegra/memory 19/20] aarch64-linux-gnu-ld: Unexpected GOT/PLT
 entries detected!
To: Thierry Reding <treding@nvidia.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 arm@kernel.org
References: <202106171927.ZsjdP41F-lkp@intel.com>
 <bb8a27bc-5eef-7702-5e3f-1e9fa69f76ec@canonical.com>
 <YMy0VgmIff5Nfscc@orome.fritz.box>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <80046ee9-76d0-50d5-90bf-6f1260c53075@canonical.com>
Date: Fri, 18 Jun 2021 16:58:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YMy0VgmIff5Nfscc@orome.fritz.box>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: krzysztof.kozlowski@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com
 designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

On 18/06/2021 16:57, Thierry Reding wrote:
> On Thu, Jun 17, 2021 at 04:22:56PM +0200, Krzysztof Kozlowski wrote:
>> On 17/06/2021 13:54, kernel test robot wrote:
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tegra/memory
>>> head:   2c1bc371268862a991a6498e1dddc8971b9076b8
>>> commit: 8eb68595475ac5fcaaa3718a173283df48cb4ef1 [19/20] iommu/arm-smmu: tegra: Implement SID override programming
>>> config: arm64-randconfig-r016-20210617 (attached as .config)
>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
>>> reproduce (this is a W=1 build):
>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>         chmod +x ~/bin/make.cross
>>>         # install arm64 cross compiling tool for clang build
>>>         # apt-get install binutils-aarch64-linux-gnu
>>>         # https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/commit/?id=8eb68595475ac5fcaaa3718a173283df48cb4ef1
>>>         git remote add soc https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
>>>         git fetch --no-tags soc tegra/memory
>>>         git checkout 8eb68595475ac5fcaaa3718a173283df48cb4ef1
>>>         # save the attached .config to linux build tree
>>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All errors (new ones prefixed by >>):
>>>
>>>>> aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
>>>>> aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
>>>    aarch64-linux-gnu-ld: drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.o: in function `nvidia_smmu_probe_finalize':
>>>    arm-smmu-nvidia.c:(.text+0xe0): undefined reference to `tegra_mc_probe_device'
>>>
>>> ---
>>> 0-DAY CI Kernel Test Service, Intel Corporation
>>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
>>
>> Hi Thierry,
>>
>> Will you take a look at this failure and prepare a follow-up patch? This
>> came already from soc tree.
> 
> I thought I had sent out a reply earlier, but that doesn't seem to have
> made it through.
> 
> I sent out a patch earlier that fixes this by adding a stub for
> tegra_mc_probe_device() if TEGRA_MC is not set. I think that's a bit
> better than adding a dependency on TEGRA_MC from the ARM_SMMU driver
> because somebody may want to build the ARM_SMMU driver on non-Tegra
> configurations.
> 
> Another alternative would've been to add another Kconfig symbol for the
> Tegra ARM SMMU implementation, but that would've been more intrusive and
> would've prevented the Tegra code from getting broader build coverage.
> 
> Let me know what you think about the fix and if you want a different
> solution than the stub.

Stub works for me, thanks!


Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/80046ee9-76d0-50d5-90bf-6f1260c53075%40canonical.com.
