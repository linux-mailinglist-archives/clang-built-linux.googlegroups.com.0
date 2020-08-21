Return-Path: <clang-built-linux+bncBD26TVH6RINBBTMB774QKGQENCKWKJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B9B24D52F
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 14:40:47 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id i15sf548071vke.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 05:40:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598013645; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZneFjSqxt9JgO7XsbhanXtN30WowWeRX84b2Uu2PJ67Xte+hWxK8LpH+ErY6e/ET9U
         ZAazwgacMWJx0eFsp1QW2k+Cjz9BBwPVJZ2f9PGAsNcvb3/esA8iXR89/Os1AXa9v63q
         CSyN01zj2Sii14zplA7C+GsmRfQRSNmZps+6NR9OBp7YArPXwuaoEimH6o+NnfOGUBID
         xEsM66XJaOvvH7O/fG6wxavDdz+Odpo0uJXaaQhE+A4ekh7QqF4M1cHcLncGsEl4MbcT
         oBpO/1S9sPsLV4JojSJQyAqBDOvbWZHGLs87XYu4Mc4SF90facuB87/lYN+izSFTeJLM
         2PIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=iN/DMjlLLYXj0DNyHoL8I8CZUaHXYPlaYo0REqsoP8k=;
        b=MHd/JYGovbJiPDs/1GLvWEsIwCZQvcVeJyGYKYI1FuuiTtiiVedBRWXvZ+efbv2YEW
         JMVx+qlHwfd/CSSdh6vJssstwPaxMKAaXQmCDNJYxFBkjETWGV9akTbipqZV1qCRM5F2
         G0YNAjxLF+QLjiAqy/Hv1aykgC7eogsK6b3ut0hJaLSqIq9KhiOL0Q/0G5tja1Bga5ph
         FVEJPHYnhMHiug/I4GK8yY792IpV366xxGIyNOCIMtYhiAt1gfX7nFgkj9hYJckKTBDd
         WZWyc+17qDGJ+faIqFu3mLYoL08hzOUEs5Wzv3szWgqqQPSmnpdgOHDTJXQwe0BigsRt
         EgGQ==
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
        bh=iN/DMjlLLYXj0DNyHoL8I8CZUaHXYPlaYo0REqsoP8k=;
        b=lKIQPMIiqkMBRni04JnMD32gPQfMO97YiqQyt08KJ4Zd778ONTQe9VCaDk+WHmE9wh
         pjJJAjLVRQHGSFtw2PkFxgfLWeUZpqqFh9M4ErPNHSC34Wz54pUZyKujSyBTM1F0babQ
         wI4J4QSqVtjZOZcBPAjEuq+9t4GGLPhOuBHWnsfKJ40neLjj48tKMKPBFTF56DM1MF2M
         UfIgGh+xlVqdyG6BWw5UyF7o3NBAjAR5LRiQTRAPnvxGCRaZH6raIxX+kbLfC5n7sWit
         03RlequLMY+N8yxEAomqofOVDHCBWJDj7KMv/9X0WNrVA/VXMq9UPOAvXmwbVnaQipB1
         ffMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iN/DMjlLLYXj0DNyHoL8I8CZUaHXYPlaYo0REqsoP8k=;
        b=p8uZqxwxTL1Xzp6MJqqAWD4lsdCTH2LL3BJtFuWCCFqA6xz8rsp42pb+X88UpOeNmn
         hazS0GFmeEv/mUvDSaVrg54SFuKgfUjdU4Dx64VRXSNDmFsMNbnPDgDzXlIyiwX4Cthz
         itVMbibIYrK1afxhr0g4MtuwU0773k4Rt3G2DCh7gjYHTFOLQqIsDvmryNh1oVrioHYs
         12piDCT2MqCEEvOkfKxoypMOciBXxIGYgRHmhy1Zlmr3wDaNrWhxJhN3cd8on4vt+F36
         HlB/x2UcfaVeM87vrLU3apm1vP+vaj9ABWLAI+v2wAK9hSzG+zVD026eNxqpQbql1iAJ
         Z90A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MLr+6pU0PrL/IJDRtb7eBu46D1SRogQ4xoMZrKwlr1OUbIFpU
	RwuGeY5+a3KaZM6L1ZJ2cvQ=
X-Google-Smtp-Source: ABdhPJyeLxOltgmWVyD5BAplEv2LDpGZ4twRd6vqkSg8TrqNJLhmqIppjoruyLb0Rl1Y+xb2575F5w==
X-Received: by 2002:a67:e45:: with SMTP id 66mr1555073vso.191.1598013645752;
        Fri, 21 Aug 2020 05:40:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2bd7:: with SMTP id s23ls111054uar.8.gmail; Fri, 21 Aug
 2020 05:40:45 -0700 (PDT)
X-Received: by 2002:ab0:1d18:: with SMTP id j24mr1306586uak.30.1598013645420;
        Fri, 21 Aug 2020 05:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598013645; cv=none;
        d=google.com; s=arc-20160816;
        b=WNExkqBE7xgT75LUJBsHaus9r36cisR7Liy2mTf+N+KaQe/MXmEQ7vyPdYvlY1mc7r
         j6mMekRpcyeWBqXABPcm/LKhtjUdJfPoNoN4AtIR5O1r1KF3AHEaOZVBdlrfunmlir38
         8QMH43BUC2R3aJX/rmQshbIrzWHHuAf01/aL4UFvUewrbbevtiZ2s0k6PJxWzP3ejTck
         P0sO4D3p95ogNbM5LjwYuptn/iS5B3vNM9J0UmkqIkTpiV65BTcXuVtoj9t7PWUxm7XQ
         BtRB2fGCncS+KooB570OmpD2jh8FpyxhxMBYHMBja/om/oR4lVXJdKOsthbTApbPL68V
         xtsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=EHw3KBsE1FJssZ1N+llxRHcPucCBuQSjX+AkkH4M8CM=;
        b=Y6TkyanHRMeEM2B2petVbvkX+svSOOd9Xmke5vHxjK+yHkSniqWCa0LjTfh4gIf9lJ
         bRsFEh9Rhs3R08IFDipDg2aezJCMQM5x3HEmhu4EXoEGoWUQ23j57lhqOmb7AqUBuYyZ
         Il6jF2/IM1aTUMjs3H+JM4LtrOYKIOEYZ9rIKNV/495n6sqRv2D5qaEeGQZVM6Kc8zla
         Rt9CJk5I3NKieNlNIXqe//GauQq6ywn3NFTGAkjg9wHHgOoMhbuqAmWO+zE2G6Ttykzb
         fcjXQ4xvsbe7AbsMBr19fd9B+vST969NRAKDGtXouLYd0BhJs1vXRIEKlNf7cO8fgDnX
         +x5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id k201si109530vka.4.2020.08.21.05.40.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 05:40:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: NCyUYjf9WKj9gANZmewsNe3bHC4Vi0sG+xTJYpZPY56ld7Z79htKv4PFg0NmrNj2O9ZwztscZl
 hkbYN6ibMfjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="135057459"
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; 
   d="scan'208";a="135057459"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2020 05:40:43 -0700
IronPort-SDR: 89BhRZy2hl71tKo8EQ4fAGGM53LVeqLyhBIWLaPLUFiVND70oyGXYTZy76UEiSKCfKEOINN7Fq
 C8qTCAxM67xw==
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; 
   d="scan'208";a="473035371"
Received: from yumao-mobl1.ccr.corp.intel.com (HELO [10.255.28.213]) ([10.255.28.213])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2020 05:40:40 -0700
Subject: Re: [kbuild-all] Re: [peterz-queue:locking/wip 9/10]
 include/linux/spinlock_api_smp.h:126:2: error: implicit declaration of
 function 'arch_irqs_disabled'
To: peterz@infradead.org, kernel test robot <lkp@intel.com>
Cc: Nicholas Piggin <npiggin@gmail.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com
References: <202008210640.LJqyOjgf%lkp@intel.com>
 <20200821084546.GI1362448@hirez.programming.kicks-ass.net>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <c76485a8-9c3f-36d8-99ed-b00222ef5aea@intel.com>
Date: Fri, 21 Aug 2020 20:40:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200821084546.GI1362448@hirez.programming.kicks-ass.net>
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



On 8/21/2020 4:45 PM, peterz@infradead.org wrote:
> On Fri, Aug 21, 2020 at 06:28:45AM +0800, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git locking/wip
>> head:   5087f2b9cf24ee0e6e1eb118b473fee280922a99
> 0day guys, why did you send me a: "BUILD SUCCESS" mail _after_ sending
> this build error?
>
> That's just wrong.

Hi Peter,

Thanks for reminding us, we'll fix it asap.

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c76485a8-9c3f-36d8-99ed-b00222ef5aea%40intel.com.
