Return-Path: <clang-built-linux+bncBD26TVH6RINBBINA3SCQMGQEM6CHZ4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5DF398083
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 06:59:15 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id m14-20020a67fe4e0000b0290255df7450besf246720vsr.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 21:59:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622609954; cv=pass;
        d=google.com; s=arc-20160816;
        b=nhIkusndntNCOdf82dtcNCSwPVLFq+BSpCgDX5bGL+OO+XDc2hfjnj13ZyczbD30H2
         5H+F0VZ1RyVtvDHXPD72ADSrlgwCzkJgt27sTGSdh1Tf5NvMFGxyaT/fIrS/9d5jEloo
         PHChP+mLQBnBep9tT28j1sAp2C7TmTmSdsWOMZStGZ2xkBH5SmN4z31M3fNq4Z8W5m3s
         HInYtBtidVkRSqvmC0iMushEXOo+kxHqjhVlkupa82YPmbRbrWOFUBvi2UMUSYdcegIY
         imUjBkPHuv000uOLbjuXHzXQKpWpe2SP2yCrT0gIaxVYz4irr1i+GMz26ShCEtTlnqf4
         RDQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=oB/O4Lk/ic8Mgrte5LWJi02Fw68sWQS8Yn5NJD0CCZ8=;
        b=fJ+qHmTwfRdLnWPn1b9o4q/QD1MVdjoP5kuGnPk+q5rYh9uiaD4AmGKiHGzPIgP4cQ
         lg25qCUISQ38CGeMCpFMDc806z0EUZMhRgIKYgWpGTwxC5E/SEprKrHTICSXMgq6O+Rz
         5aRc8s/VRtUZJSlcjOG+jVDA8ekG/dyUdsaohg12u9Sk7+DxhONnrsH+YbLAAxHqHitT
         ZiPnlR1wza3IVx6HktyfzCT3wpsqJFbfYh9wYpoSqGWbAAD6mwh1VADwHS2trXKW7J33
         8AftdUy2LhGSgc/dLbPQCt6r9h5z6pNNzLHY5yyrbvtiMMlpUm2yc6NlH+5vtfFlS14c
         K6Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oB/O4Lk/ic8Mgrte5LWJi02Fw68sWQS8Yn5NJD0CCZ8=;
        b=HGf6HwtCE94Q/0Q5HrH2d/v8fJozW5VRa3R9tUkgr+Wmoz/uORA4kcnwPKjgjH54/s
         5aG7R0oQmYtsns8Eyqfzq3AqATT3obUqHHtdSx63Ron/8wNLgnrTKV8URXvissrEAcUA
         M/rCU3EWjbcjsXgE3XLuOG810C8w0f4B/BeN5r9ok1L3QDQQbkP+AE3v2Uz9maflSVFy
         j5pdUScnkaCcKWK3vy17pllADk2MmxcpRznBHFHtqs99fJQuv84moQfcmic5cl7N5IJW
         BrqfxEfV5BrRhNxQB7pdMFtcjc2wZmnZzhV9iPrwd29SJ2UWFttmYHlHlplEECU9zuee
         mp7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oB/O4Lk/ic8Mgrte5LWJi02Fw68sWQS8Yn5NJD0CCZ8=;
        b=O1wR4Gfusx9GkSsQ9Sp1I+021vTVWKqtu7EgEWvY5sUuLqZT18QPPqlFQV4UV643WH
         YLI12gd480TkeDJTW7aRiD7Z0pOGefjTLn10ThxHshr2n2l/gEigNbfUjihKF3iOTXho
         Wjq+NK0DTywPlcC1H+ivWFHQ9IG1NOvGXzvOEzKyzn6KGjzE1fpoC4fTwwkPUihw9zT1
         SvcBEiqZazmVtX+DFH67ZIzAeDjp72n0Q4rTrb0itBjl29/sIZ56AMiP+Hk/dQVUxiMV
         T09rKJSioybdc1/5Bd4/EWoo8HqBKYhOKcZX0xgllbnUYxKzVeR8KCH77TStw32lMiql
         ixRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533FyukMiCBIk27CAYp2PcLFLXapDfBALJpvfAeiNLqPKiL/XMU/
	FSU2ESlp+F//5A99hh+c9AA=
X-Google-Smtp-Source: ABdhPJz0O6X0FSkXq5QwKR93i04Xlqs2WUuPu8MUq2WMB5qja96hxxgGfiwGZzMT4hYyBQ5fEcsItA==
X-Received: by 2002:ab0:3256:: with SMTP id r22mr19453617uan.47.1622609953836;
        Tue, 01 Jun 2021 21:59:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:b243:: with SMTP id b64ls1642626vkf.0.gmail; Tue, 01 Jun
 2021 21:59:13 -0700 (PDT)
X-Received: by 2002:a1f:9907:: with SMTP id b7mr21627236vke.24.1622609953333;
        Tue, 01 Jun 2021 21:59:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622609953; cv=none;
        d=google.com; s=arc-20160816;
        b=0FdRPkEQPYKa5W7ro++7WYMOs9iOMy1oKg2klHgl3uaI14xxt0FdNAvn3leLLTQ+fY
         XbOnMBV3BEp0N84uGFPSN2e6cKVBNjBns7t6JIPbB9d4dWCIE9qOugO+E+NCvBIVvKkt
         UvpbebGJta7ev481TN5bNYJHZUT8e/2tKLep7e+NkTFkUWQLmszTrplekHaHhS/I97bZ
         eeHKiF8fRsnkthcHBNbQo3H1ThkmKO8MACmsWtYFcwvTYRiqVJ8pdzLb/CdWo0tSoHqV
         FRXuo0LD1/z/9kaBBIXPeKPHTgGW8Bswg70Q2veNrwF05B6s7KuyB7dvjeC4rsMZnI4w
         5ySw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=bvW9cjg2YoDbJAcU88HbfXSVDIUPC8AYRMpspG/dBAk=;
        b=cIv9hruGxi5ELa86IWNvq9jta6pL/M11pnoXxQFRXGtofyHDgAKgrL2KzV8fDhufKw
         vGdNtGfw8py4dEBUQmKrIINxqRvuWkan3efelkqsiXiFFQwNpSuZMe8xV503yzGGLjfh
         /rUrw87kkrdtvc8Ps/0qnif9hS/3GTsOajL1IJwG4xt2CEctRdCeAfW7nH9cWZDnm+vx
         pwITvTwztM8Z6ExId9ttHnzRXzvegEQN/gsOgiinIOqCK2JyUDjfx/JMgAJgby6NjGFT
         JiaveCvzXz9Hl296gcWRJue3R7VFsvEQHI8vGQQ6uZAtAulVYcHHSElHSm0lK1pG9Fle
         icfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id n185si193267vkg.5.2021.06.01.21.59.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Jun 2021 21:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: QW5T9aI8UIfIHvSqtm0+ffRe8KDa3j7RCwqohgslzYsYUBMARsv5u2ZUjxYSdf0pHYgCnt1JSp
 d5A8VepeEYtg==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="183382239"
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; 
   d="scan'208";a="183382239"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2021 21:59:11 -0700
IronPort-SDR: nFy1Qe13UPJnHQS0YERgmdeyTqd3nLFk+QDJ16uG3sLtP76bBY95FQEHL67R2GC/UQZX7C8Cy3
 v8D2XoRZ+GFA==
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; 
   d="scan'208";a="479553468"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2021 21:59:07 -0700
Subject: Re: [kbuild-all] Re: mm/migrate.c:1406:5: warning: stack frame size
 of 2096 bytes in function 'migrate_pages'
To: Andrew Morton <akpm@linux-foundation.org>,
 kernel test robot <lkp@intel.com>
Cc: Yang Shi <shy828301@gmail.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 Zi Yan <ziy@nvidia.com>, Linux Memory Management List <linux-mm@kvack.org>
References: <202105301728.lr6r1Eyr-lkp@intel.com>
 <20210531151412.4dad38dd703119cdd33ca395@linux-foundation.org>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <d61e9459-2d90-340c-a4f8-9cfc05498c35@intel.com>
Date: Wed, 2 Jun 2021 12:58:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20210531151412.4dad38dd703119cdd33ca395@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 6/1/21 6:14 AM, Andrew Morton wrote:
> On Sun, 30 May 2021 17:46:48 +0800 kernel test robot <lkp@intel.com> wrote:
>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   b90e90f40b4ff23c753126008bf4713a42353af6
>> commit: dd4ae78a21fc05d91d841e499dddd057ad64a4df mm: migrate: simplify the logic for handling permanent failure
> migrate_pages() isn't a good place to be using lots of stack.
>
> Am I correct in assuming that this is a bisection result?

Hi Andrew,

I have confirmed the bisection is good.

>
> I don't immediately see why dd4ae78a21fc05d91d would be the main cause
> of this.
>

Hi Clang Team, could you share some experience about this kind of warning?

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d61e9459-2d90-340c-a4f8-9cfc05498c35%40intel.com.
