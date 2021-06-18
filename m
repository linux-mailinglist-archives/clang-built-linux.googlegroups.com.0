Return-Path: <clang-built-linux+bncBC6JD5V23ENBBVPQWKDAMGQEZDVSABA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CEC3ACE61
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 17:14:30 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id d5-20020a0560001865b0290119bba6e1c7sf4513294wri.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 08:14:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624029270; cv=pass;
        d=google.com; s=arc-20160816;
        b=PRgD5PejRWYZ6adVXtGW92VRCUmGV0a2h5ipgfXRG212IILXJ6CUdRHMWsar16IpA3
         9hVUOyoL5S19OrIONbHlYgLw5Zt9a2zZFHDWlkzU8xL2S1NOzfvxJ8APJMoYaXZ+/DQz
         fcgVkVqPuUPGSKx4z8wBVkM4HQTt0rMwoYdEzs+Wr5kVpkkobimgnyI7ID/iWxFrRbmp
         N8XBkdaE/AFdsJgVWqfG7tVOZdvQjJOkOsKP5jHpoisOI8Ac2PGMomsZqDJDLnDIrTy/
         gxL8ick8J5rlEljYjg9G4o+qdApenE2XmvYGyio/PMZeFwkiYzM1ifC6LArv8bOg0GE+
         0wcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=qp2BGjzsghiO/L2/r274uqj/r0pzLDArEMcaGAGQmWc=;
        b=IXBsWJSWD5EejEWQ7mewFi/2/5cbjOHSGjlOUO5zVz0WOQ3TO9YIykI2eseSNgo+wn
         DTWExgWUgJY0EgHFxufBQ3lFBOnvlOtyMx9Evj1tgk6rfxaJmDdsKDtYuP08RMPQ5E5d
         otAOTyLKHhTuOw3D4ZlMuGoBwytiPpBkN4I6r83KYi8i/YHSWy+APkTAGL3BE2+XcWpa
         pyViRweQ3vbILYBIN9oINAJ+uVmUthlFzNupghW6rBW2WdNjJZmIhcjKmqyk+o8Lu4rf
         nqmRLYmFA7V15vkvwQIJ18ZS4j75YMUI4ombq6E3FPwj6rE3IdkE0iKKDkhixQzLnP2q
         WVEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.54 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qp2BGjzsghiO/L2/r274uqj/r0pzLDArEMcaGAGQmWc=;
        b=TsOtq70czmjBa/CNb043AyfIyrBJO2kNdRFJgr/7XkKXufxCQGf+G9eFhB8aw5WISZ
         FWOzT0j9a+sVQv2QVdYacmPD07wOBLu7BGA0L4oVZHteCJ3SebjrnD0tPRs8mGO4is/X
         fYTpYEkOVl6XzX2q7i8ecUn582jY/t/+/pqwPPuVw38Uny1RA7D7rhaZxIe28ub3D5ML
         +NQwKT9ujEOlCoWZU5JYL47/KYTNiq/ibcac4/UApTxzbrQn2VYF30rrg54b9FrJRWTq
         HkWwzSXgsvYzG6md1I7wcyUNX73PZRrCzcMsdU0oOlGK5m++37ThR/IQIM24ZNLgLGoJ
         goYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qp2BGjzsghiO/L2/r274uqj/r0pzLDArEMcaGAGQmWc=;
        b=o2s4ILsf54Q1UMhI5L0xWxbW/X/A1iVRwobGqgFIBIwxN8nBepr+5Q9nBw1XxwBLtM
         SjHf6mu4wf7Mgp2yZSHSUJBuaDAsH9Dg7jVECmdWAZsvgQD7bZE4FvvshNaJxg5A5agp
         HADIx3/49bg3Gm2NddhDq4bzv35/Yho9zOtyDIpElMTLsqvKAZ3y0P1j8DMVkY44uMaO
         S3AxGsjKEsirm0Zrtu98k7EPqCcGMSOkAozT12fcfygbPhTOiPPYqxZg3xjGqNdWWLek
         FjidkMqafmKRS1gwu/hr2q0BeJFvqxt5isB0uiQMAiUgND4yPuwxXwG/E0f1j4w8Gyz1
         hHNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Qy1iEFEkudn/WBJ69LIn31b+YgUMdNgNDpiejpXBMBcY2+SbX
	LSly9D6lajwxAhHaOCTFFSA=
X-Google-Smtp-Source: ABdhPJxAycXTwFznP+ywFCpeVbtbgFlq1pc34yCWp+qW70BeteN2Ns5XoqNRwcT2/kgEPX9oscGUnA==
X-Received: by 2002:a1c:a901:: with SMTP id s1mr12188617wme.184.1624029270006;
        Fri, 18 Jun 2021 08:14:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:45c9:: with SMTP id b9ls2321936wrs.1.gmail; Fri, 18 Jun
 2021 08:14:29 -0700 (PDT)
X-Received: by 2002:adf:a4cc:: with SMTP id h12mr13047076wrb.195.1624029269001;
        Fri, 18 Jun 2021 08:14:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624029268; cv=none;
        d=google.com; s=arc-20160816;
        b=VpD7cDInQdgbaDc31IDKRorGxtWJnrve7f4idD8TzquInUGC3Hb5GoV6M5c5Wz58sm
         +jr5rfRisC3xbY3p6Sk4xcqm1TtJVqF/GKurJcv+4w88lkelS8b3DCjPIMcNRHA5WnZm
         CyTIA9qc3S81HfEokRs33iE+Z8CCAnQIS6JF+9D1lxPaD+R0+52iHQKuD2LIj6JnttuD
         TEA4yuBaBENb9haOVtqyTZDhrh6jgxPq58paMgRbe0STZz2FTeaEqd3pRIXuFzbIXFTt
         9OqN4WZu2wvtkgQc3sJMTmM1VC4Kglg6iCa2cFwrgz/kRRbKeZXMmkk5VHTm3YZyWpOS
         GwGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=NnsL/Bz16/M9cP5lJQngxeR2cddTuLgTbTMZf0rgBfo=;
        b=LjodzSJVbUdxruhVYhY6xbwl0cE2lngAP3GT2rhmfFYevpj8zbl9C82pOXY/26+6k9
         nWzqM5aGHS/If5Wwz+eoz1u5R/WF55lk+h0OQd0zsnw48u6qiJSWzUQJ45CWKuCpkpHC
         lvtt5NvqoguyAjZ4f928Ds3EZ1KzfzpnCAQVgsnhVAtqCXJbxupvvlPnEs83Whzls/u7
         MQZwZB2WgG+gSxlJx71xLnyxFGzuWaoJbEdvoctzp6hn3j74jA95UrgaBZSrrUNgxp9i
         hPSU0Bf0PkobsFv+4n8sUPBt31c9wbt+MXp+RQofhwf9EWd0MgPRwmDwUaFvbb/CEwmj
         7hWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.54 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com. [209.85.218.54])
        by gmr-mx.google.com with ESMTPS id g79si373932wmg.3.2021.06.18.08.14.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 08:14:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.54 as permitted sender) client-ip=209.85.218.54;
Received: by mail-ej1-f54.google.com with SMTP id gt18so16402301ejc.11
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 08:14:28 -0700 (PDT)
X-Received: by 2002:a17:906:3c0d:: with SMTP id h13mr10815980ejg.269.1624029268701;
        Fri, 18 Jun 2021 08:14:28 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.googlemail.com with ESMTPSA id w1sm6464702eds.37.2021.06.18.08.14.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 08:14:27 -0700 (PDT)
Subject: Re: [linux-next:master 5946/11253] ld.lld: error: undefined symbol:
 reset_controller_register
To: Thierry Reding <treding@nvidia.com>
Cc: Matthew Wilcox <willy@infradead.org>, kernel test robot <lkp@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Dmitry Osipenko <digetx@gmail.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202106182243.KgZxMD9A-lkp@intel.com>
 <YMyzKmDO+SJt8n4N@orome.fritz.box>
 <b29290ec-679d-322f-0cd0-32358533aac7@kernel.org>
 <YMy1DpeyrYm/pwYF@casper.infradead.org>
 <6188a28e-8184-fbb0-6e49-1c674dbf84a7@kernel.org>
 <YMy3vzoCASjYSzFL@orome.fritz.box>
From: Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <480ae640-631c-d594-e18f-b725b98051b5@kernel.org>
Date: Fri, 18 Jun 2021 17:14:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YMy3vzoCASjYSzFL@orome.fritz.box>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.54 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On 18/06/2021 17:11, Thierry Reding wrote:
> On Fri, Jun 18, 2021 at 05:05:30PM +0200, Krzysztof Kozlowski wrote:
>> On 18/06/2021 17:00, Matthew Wilcox wrote:
>>> On Fri, Jun 18, 2021 at 04:55:23PM +0200, Krzysztof Kozlowski wrote:
>>>> These are randconfigs, so I don't think Linus will hit them when
>>>> merging. Therefore assuming the reset-stubs are applied (and tree is in
>>>> next), we should be fine, shouldn't we?
>>>
>>> It's a bisection hazard.  Please fix it before the merge.  This is
>>> exactly the kind of thing that linux-next is designed to detect.
>>
>> Still hazard for a compile testing configuration, not a real bisection
>> for troubleshooting bugs. You cannot hit the bug in any real case (so
>> !COMPILE_TEST).
> 
> I think you could hit this in legit configurations where people want to
> build ARM_SMMU but not TEGRA_MC. So it's either a dependency that we
> need or the stubs. But I think you could squash the stub patch that I
> sent into your tree if you can rebase that. The patch that the stub
> should go into is this:
> 
> 	393d66fd2cac ("memory: tegra: Implement SID override programming")
> 

I think you refer here to the probe() stub, but I meant reset controller
stubs. These can happen only on COMPILE_TEST && !ARCH_TEGRA &&
!RESET_CONTROLLER.


Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/480ae640-631c-d594-e18f-b725b98051b5%40kernel.org.
