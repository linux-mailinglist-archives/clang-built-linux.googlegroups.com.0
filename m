Return-Path: <clang-built-linux+bncBDWLZXP6ZEPRBM6MR2CQMGQEWX4NEJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1323877C4
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 13:34:12 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id s4-20020a2eb8c40000b02900bbf0cb2373sf4367296ljp.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 04:34:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621337651; cv=pass;
        d=google.com; s=arc-20160816;
        b=LN9/gFreld8i6AyvU9jDqMl2nTkJxwW7Cv1upddd+Q7ruO31zWR09UA/pbNjn7OyOR
         phdCLWgQN8oNfYtIKTvskAFeyL1KR4JmQ1m/Bj1R65kTTpLDYpwOX2DD3srTroG/1kCM
         yoJlOPVeWtLkjijtZC3V7F4hXsI2VRNCa4e9lpPBFup2eFVmlC8O05y+HYtN/tpRizO2
         DHgHKC1M8ctuEEOLLyJhV45l6YbRTL0eB8bX5ZhBmG/6h3x9f20WBLJkcapJgPaynKM8
         2paSd0JDj/BCu5bFuYMzyry9w/yuE2+EWZl+6HT+U07RbfnyaEP56U8pBduExqnCfAdI
         3E8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Bmr4B1wkMl69JMn8A56P3+2wdGmcxV3klQzZQDts054=;
        b=AS8z4vo5b/UvpmyrKtQGFoog3UIjMxGsPdOTdjTR3KQ8BjTtmAf668Ax/vZcvcxuG0
         CKSdn/0Hjm0RfC0yr2IC+oS0uFNocMCigmy9bz8vuVIP9Bc5cfT33FQ/86E4+cR9/aOu
         DSpQ7ybz9Lxd8x0ALIItnZAqkb8Tf5IjdAJqXzPKHlU85BbcV2IJoVNZS8DDaycdSfaB
         CeneEV9EYJvNK/eXi+AdIxubPXUnqAeFYMueL8vyhxRt704vH5gFkXnhr8d04F2nlUGN
         zB7fpFWVmDYpGwzIGWnSmpQti6bbkFGHUyZL4hW1/IqWqpv70RVOlGcgkCXQTMLZAyOT
         GLlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=vbabka@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bmr4B1wkMl69JMn8A56P3+2wdGmcxV3klQzZQDts054=;
        b=rYFYDfgCMcYpH/FlqKSropltgzddyFCNvwghP2RpGq/Nz2C0AYs29rHePT+F23iggd
         QnUTIuFG60LSU0ty2wX1HzcG+8wpxZuWdONtniKLEBf6VWx7H7bbmHU3nXCCD9sHZFu1
         bSQkOt26kPHLcx7E+Ep18U//vVgi00DQPg11Lv2BnNXciQpz8pm2LT9vaobJMAJIvYHI
         uD71Lh9o399gQhjYen+X8VK/RoJ6TEIe1e1/qymgQc+rP1TyxtOWb4smUW71q2y2mrP3
         MiKYrRx7D7N0xN5zghtocOue/f38Xc8PQMvucwSUk7PZDJAwfq5+TW5rDTAhe+9sBqnY
         9W+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bmr4B1wkMl69JMn8A56P3+2wdGmcxV3klQzZQDts054=;
        b=A5ynP2A4Z/ZVAXzhTuCwJ6eGT7gUqKbS/RhhVn3iobAxPqlH11PY+OcCs7wlFlVuhE
         bC14diO7/GMINCy+DJsT9Ca8x+Bhrz3yk7G0JZ/yQP3m7Ix0W9Q7agKisKqicJbDsGqm
         yjK1TUL+vGBdEy/y7oLSU9tw7kvZBLEv92z5ggdTuC41H1xCRAc/Vq2xnwkPJ/LoA0VS
         6eOmB/jFEGzc1CGMIqbFhnHU9W+0AEUqbbGyW/pTHnoXafJ3OE8I8gT3i6FZx2GpmMJc
         sajcQcy2GAvRooJN78stKwqaAy/yUwuYzZr61MGPmwcNKmNxmv1Dhjn9ju3+nXGR5lap
         JE9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CB/eempMuuEXs3PsByn2Bp1Vf/76NYjrOqIQeLTjZlEJoDOYY
	6Z8ngS7BIUYN9flvbQL5Hbs=
X-Google-Smtp-Source: ABdhPJwaou/J29FVlhSsWALj3q5d9ZLAYvTqemHlwSNKOvu/4++ELaH/q13YxylPxSsEyQlRzlSW0g==
X-Received: by 2002:a05:6512:31c6:: with SMTP id j6mr3878114lfe.129.1621337651704;
        Tue, 18 May 2021 04:34:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:230f:: with SMTP id o15ls1072269lfu.1.gmail; Tue,
 18 May 2021 04:34:10 -0700 (PDT)
X-Received: by 2002:a05:6512:31c6:: with SMTP id j6mr3878073lfe.129.1621337650372;
        Tue, 18 May 2021 04:34:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621337650; cv=none;
        d=google.com; s=arc-20160816;
        b=L+64PWWYa3OBTWeG/HvWahswSz0wzzTRkk3JpIVnOhFGz9bn0K8UMaCJdiwSoP2d7K
         pfMFBvGS1UQiSJtnGKPkVthqHeuG7kNfKKjp/Yeeh5AXXKqr9fu3pAdQkyuNpXpTFfDa
         05o/LY0QfCCj7Ai+6x91+jaDd5fMCXzLdHh2z3OM0hTBARjn+5eyvBUxrDCb1QLoyno/
         fU0GMhpMbLQHQH8hGU6gCI/pS+NR6d0tktUTZ6nxgECUHZvdGOwfNuWb0fDi44USLUnt
         8dr8lKrggoboFUEaJWS4/cSkyEIkz6pYjAPi7RAjS7NvfQQbiiL3QOjat+d/S5yCavIb
         J8mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=BQaRZ+FOjbkQpBabvqh8shl/ifXjChCq11/0vOp964Q=;
        b=q4OgtXZYDZCNwamwlD18q2rabClT9rd14tBHRGgRqhPKE7riMn8vUG89555rxyJs3p
         f8YLsO9MPJx8ayfJsuepCYXDanxbnRUPh/z9bGZOu3LauT8UynxwOaH1X4A0XJGMBWyY
         PInLc/fLmwAyukhQ2wwIQNSqau5ZYQyNvlSdUU2SW6W8/7GLp4EhxSk4v4aoCJVf7wZL
         G4Cuz/uH8RDGNBOpYgulAgcMoDc3Vf1l7IilLb2WZBv+jDCv03W5ZlOJfx9kzbZzqjzX
         RJGUc5+JGuIhmn0C27XFMvmFc9rvX+Hp7/Sc0DFC/n+eT8ZQ7S5L4iCcsf7wnEdNU1Dj
         /hKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=vbabka@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id q8si152886ljg.4.2021.05.18.04.34.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 May 2021 04:34:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 8D915ABC2;
	Tue, 18 May 2021 11:34:09 +0000 (UTC)
Subject: Re: [PATCH v3] mm, slub: change run-time assertion in kmalloc_index()
 to compile-time
To: Hyeonggon Yoo <42.hyeyoo@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>, akpm@linux-foundation.org,
 iamjoonsoo.kim@lge.com, rientjes@google.com, penberg@kernel.org,
 cl@linux.com, linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 naresh.kamboju@linaro.org, clang-built-linux@googlegroups.com,
 linux-next@vger.kernel.org, ndesaulniers@google.com,
 lkft-triage@lists.linaro.org, sfr@canb.auug.org.au, arnd@arndb.de,
 Marco Elver <elver@google.com>
References: <20210511173448.GA54466@hyeyoo> <20210515210950.GA52841@hyeyoo>
 <41c65455-a35b-3ad3-54f9-49ca7105bfa9@suse.cz>
 <YKC9CeAfw3aBmHTU@archlinux-ax161> <20210518003859.GC80297@hyeyoo>
 <a1287a21-bcbb-77ed-c88d-f5890b785213@kernel.org>
 <71416382-2e4c-5e03-df9c-265fda41c2de@suse.cz>
 <20210518111814.GA114501@hyeyoo>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <aa74a894-8b39-b1c9-cfe8-2fcf879b7624@suse.cz>
Date: Tue, 18 May 2021 13:34:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210518111814.GA114501@hyeyoo>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: vbabka@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=vbabka@suse.cz
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

On 5/18/21 1:18 PM, Hyeonggon Yoo wrote:
> On Tue, May 18, 2021 at 11:28:17AM +0200, Vlastimil Babka wrote:
>> On 5/18/21 2:43 AM, Nathan Chancellor wrote:
>> > On 5/17/2021 5:38 PM, Hyeonggon Yoo wrote:
>> >> On Sat, May 15, 2021 at 11:34:49PM -0700, Nathan Chancellor wrote:
>> >>> This should work I think:
>> >>
>> >> compiled well with clang-10.0.1, clang-11.0.0,
>> >> and gcc-10.2.0 with x86_64 default config.
>> >>
>> >> is the condition CONFIG_CLANG_VERSION > 110000,
>> >> not including 110000 it self?
>> 
>> Good spot.
> 
> Thanks!
> 
>> > Ah sorry, that should definitely be >= :(
>> > 
>> > That is what I get for writing an email that late... in reality, it probably
>> > won't matter due to the availability of 11.0.1 and 11.1.0 but it should
>> > absolutely be changed.
>> > 
>> > I have not given Nick's patch a go yet but would something like this be
>> > acceptable?
>> 
>> Yes.
> 
> You mean Nick's patch to added with Nathan's code?

No, I thought Nathan was asking about his own proposal. I don't think Nick's
patch that adds 26 index solves the issue. Nathan's proposal fixed with '>=' is OK.

> I'm not sure we need this, but will add it if you can accept it.
> 
> I'll send fixup patch soon. tell me if I can improve
> anything on it.
> 
> Thanks,
> Hyeonggon
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/aa74a894-8b39-b1c9-cfe8-2fcf879b7624%40suse.cz.
