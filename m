Return-Path: <clang-built-linux+bncBC6JD5V23ENBBXXHWKDAMGQEI6EKAHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDFC3ACE0C
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 16:55:26 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id e9-20020a5d6d090000b0290119e91be97dsf4515440wrq.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 07:55:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624028126; cv=pass;
        d=google.com; s=arc-20160816;
        b=QvLEzdxl/sb6uVI6rpY99NZxfcQpjCjqWSHG1sNehOwgytJK27LEEXMq27p4raXJwi
         Ea0sHtCUw11AUsMmwPTYd3bWaKmQU4Ub90C1ConQyBiforx44MtwiHETG1AzJKSXX5GP
         q2fUUnXYU2iFmPA74haghm7tP9YHfLmZ9w+JQoYOg2OKir8+ugIW392CReBfkBm8dFMA
         Qn4Zn2uPSRA9C4Oj5YfBpTZQu11RyeIw1pivDVexHetloxtyzc4z8MghX9Mabxp1iCeQ
         Mngwc34MWu0D3vK04m1jhKMkVJ7cqU5qT5cMFQ9jULKhUjW6gTIeE5E2QWw/WYsnTuJI
         qbIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=u6gHxKaNnHROLTTb+Likoh2kUX8y8skGutpF+2r0U2U=;
        b=mfgWDGv1nWf0aoXi7TiKq6ugZM2ECUxKu0NPhR5FW1bT0GA2SukEwWX0NzENx5ZYwg
         pYZPWBfzCnbinTtNm06wqjzj28kJ4QqGDHMVgmCdshq0VFZJZMFqP6zrUa/qYEbhp1Vn
         GyFbTipUiKUoMePtbELvGz1zIN31QOWbe6fKssUeXWOqtrKbN4le7W5yDEdPU7JJYGjj
         GcxVXwhmrggfgAClSbfMHRHgF6JCqzMiKGRdfXYT5mMy+zBmJh/LkT91wKf+oGgOARBO
         X45PxvPDOToxK7iPY2XmCcCqsyT86koWIjr5Y561Z9I7INmgBKeAVh84ANZGg5pDrFRC
         eSFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.47 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u6gHxKaNnHROLTTb+Likoh2kUX8y8skGutpF+2r0U2U=;
        b=Atc1SJ/hTSgyzpNdQGWNqqYls0AuOgk/ADNHBlSUW94xzyJPyw08z4Iv+UbjGGh6ON
         qRMZyYQjcriXSkbx6zMZbGSiSnzGpd//RQ0oe8rVxzN93rY+hAZDbhea2Lh62WvsEfbm
         8Uff81UlFzCMBfgWnhMq6y4N+9goua0kPwGLmczfj6WuFGDWOBmlJ+ZBzo6uDS6pJF3f
         kdEx4tzR2w+i0H6mniHMQgHiUjZUZZj4NxFfHwurWXcK4ifQXKvJOPVRYmM9mg265bSm
         /L9x6jV90EjVIVGjwYAtKs4/zAsghMMAWYPrTu50jQLatGwGx1zmAHRtljtTZ/I2aNmP
         Fqxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u6gHxKaNnHROLTTb+Likoh2kUX8y8skGutpF+2r0U2U=;
        b=SiJcGe53RrX6c8R42CENsbWuzfmUEwG5Z9+fuyRlx+9J2+Vmhg3pYzGWa0SLbQUMvt
         LgoDKYgrA81h9YKkO+0Ts6fWoRzsqrGrKd1Va4KKaHQvIb8PbZ/pHsBMTnyw8b/7vAWc
         epBNffsm1vjS7DrQbnW5vhgwsPAWLdQmnIIt9zMQO8dS6vfAbhetndhY85owfAndIyB5
         aMCO/KGqISX9M9hLnjcXLeHZvDmMdo+rhia9zs6HLnezhO7lhnYyU7tKzouBBvm7RU+I
         2lQRITjN/7UWMeU0B15kuBiSQ1/vSUO/NH7Cup6lO/To6AUohqSaQHwqfD7T0eDtD3Y/
         0iOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334JzxQ8dXbbZ4qgsdQaV8P+/m8Qqq5Et2eDmB5zVTb1pEMu6Ew
	7gqvUbXoqroScJnxGKXpRXo=
X-Google-Smtp-Source: ABdhPJz+ktBXM2QAZ4dncoLnPQ29C5WKVysePhHQoo0onoySbCc2URWBXx9oZrQ/z00YYaQrp2KDpQ==
X-Received: by 2002:a5d:6a4e:: with SMTP id t14mr6698037wrw.211.1624028126332;
        Fri, 18 Jun 2021 07:55:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:3b14:: with SMTP id m20ls4827121wms.2.gmail; Fri,
 18 Jun 2021 07:55:25 -0700 (PDT)
X-Received: by 2002:a7b:cd0d:: with SMTP id f13mr11544516wmj.89.1624028125307;
        Fri, 18 Jun 2021 07:55:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624028125; cv=none;
        d=google.com; s=arc-20160816;
        b=MkBQuwerSGVnuFSLMm1ZSq7r83uUzuO0uyf1OBzgfwhYJuAMSDfesrll9ZvhXCDOQ2
         VEXGdTMGRU3knX02x1q5DFQGjINCnGMweHNFXv5vDnYwiJsstXKVv6VgI7TEby0fOfNk
         4AzxD4ZvDbbskyYCHhvIV6R2CdjpIfwtWg+7BveDwJ1oSyYMRa/ebcSTP1Gkovn1F8pD
         MOr0lnGBE4xLIDLfN8SXBVxHnjxPF9J6yWA1TOH2AKcyUpV85V/evffjRCjYZfFBzJk9
         +JSXLToCn/zhSfkAM/I4/OWtWBOmoeOIbqWkJ4oLBfw4HbgEvG6kUh5vEFOfyEW6BQmO
         LxIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=JJrluH3nCy4fAQKWsFUe6n3KYRzJ1UIUB+kKlIuhdnU=;
        b=eIQYzEi0H6aZQvvj4EAItxjHDs+mGpLqQHMZGgNnHbscd0BQSgvjHz/TjurP7hEjnw
         4uVPHDuZcMJBF/6nPv+pYhfY7BBmCDUIoAPa7flDo/PBfByHnNm1tvw7ahZXcY2G3ht1
         TOxsy+OI6lBQlikmTB5dGfF8JXaRYwNT/ieEnUfaGcnC+rmVyk8EMnhDsHGW8pDqHE/j
         e2P/Z4HO3UjIBjyhQPJhhEIg8HUxVPrGLRFMrgzzfMFrJYstBrbWaQxLpz+B9EINXb1V
         n2g8nxm5+e2uKLBcIheVhW5VBVswtLlPJPW/JQLj9d3gx9tW/pAN05aWXW830HaLY1Tf
         up4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.47 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com. [209.85.208.47])
        by gmr-mx.google.com with ESMTPS id c4si633818wml.4.2021.06.18.07.55.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 07:55:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.47 as permitted sender) client-ip=209.85.208.47;
Received: by mail-ed1-f47.google.com with SMTP id t3so9025371edc.7
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 07:55:25 -0700 (PDT)
X-Received: by 2002:a05:6402:2789:: with SMTP id b9mr5545309ede.142.1624028124942;
        Fri, 18 Jun 2021 07:55:24 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.googlemail.com with ESMTPSA id s18sm1209223ejh.12.2021.06.18.07.55.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 07:55:23 -0700 (PDT)
Subject: Re: [linux-next:master 5946/11253] ld.lld: error: undefined symbol:
 reset_controller_register
To: Thierry Reding <treding@nvidia.com>, kernel test robot <lkp@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Dmitry Osipenko <digetx@gmail.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202106182243.KgZxMD9A-lkp@intel.com>
 <YMyzKmDO+SJt8n4N@orome.fritz.box>
From: Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <b29290ec-679d-322f-0cd0-32358533aac7@kernel.org>
Date: Fri, 18 Jun 2021 16:55:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YMyzKmDO+SJt8n4N@orome.fritz.box>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.47 as
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

On 18/06/2021 16:52, Thierry Reding wrote:
> On Fri, Jun 18, 2021 at 04:21:45PM +0200, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>> head:   e71e3a48a7e89fa71fb70bf4602367528864d2ff
>> commit: 56ebc9b0d77e0406aba2d900c82e79204cc7dc32 [5946/11253] memory: tegra: Enable compile testing for all drivers
>> config: x86_64-randconfig-a001-20210618 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install x86_64 cross compiling tool for clang build
>>         # apt-get install binutils-x86-64-linux-gnu
>>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=56ebc9b0d77e0406aba2d900c82e79204cc7dc32
>>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>         git fetch --no-tags linux-next master
>>         git checkout 56ebc9b0d77e0406aba2d900c82e79204cc7dc32
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> Note: the linux-next/master HEAD e71e3a48a7e89fa71fb70bf4602367528864d2ff builds fine.
>>       It may have been fixed somewhere.
>>
>> All errors (new ones prefixed by >>):
>>
>>>> ld.lld: error: undefined symbol: reset_controller_register
>>    >>> referenced by mc.c
>>    >>>               memory/tegra/mc.o:(tegra_mc_probe) in archive drivers/built-in.a
> 
> Ugh... more fallout from that compile-test enablement. It looks like
> that compile-test stubs addition patch for reset hasn't found its way
> into linux-next yet.

Does it mean reset tree is not in linux-next?

> Philipp, I wonder if it would make sense for Krzysztof to pick up that
> patch or, if you prefer, for Krzysztof to pull a stable branch from you
> that includes this so that the memory controller tree becomes buildable
> again?

These are randconfigs, so I don't think Linus will hit them when
merging. Therefore assuming the reset-stubs are applied (and tree is in
next), we should be fine, shouldn't we?

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b29290ec-679d-322f-0cd0-32358533aac7%40kernel.org.
