Return-Path: <clang-built-linux+bncBDQJLKMJREOBBD4O3XZAKGQEGTMWVTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id E543A170FAF
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 05:35:28 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id h2sf1122099pgr.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 20:35:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582778127; cv=pass;
        d=google.com; s=arc-20160816;
        b=q3A75EZY/lZdq9auezKrVLxm7X+g6YZTVKHepyF26dMiFwkqTtUp6l7RcO2sKdCx23
         V2BGgYBCeZRmrv9AG3AkX1ubVgYyHjMdkPkFhSHL4JqRragVHt3SqAVmqatBBL+mjnSp
         F9NOhZUhzt/yJPfmjN++D4xOk2oZZBqmOHMRMTGdr+MqCHnTCh9libUQk9+1K2zMKroG
         cM0ezjjCQAM5F3xHJxdPzUuJ49vTiBRXm0L0r8iFDUxTnnRTJQ1TtVWbGLrIWiTxj0l1
         ud6PpB9jTaghjmJINukWgsUToCHnVrpBw1KKpNAVxKdmoYxn1VNRzypqHriNiqWewlpi
         ZdHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=ag89gmMckbcQt6BQwnXl1lgNZwvazzSGSGv+wWNXAB4=;
        b=Nu5dxY6AOmSI8S7CWJHMjae4YIJ3LdcIDUxmdMQigtHT1uUjf8niQ4OFdEhYRDSY1H
         xZ/eo986WUj63j2+/hplpUMFzmeDPbbNFi8XXxSghS/lOmDg1KqO4gehzC3msIrXOGC9
         WhuO+2CsDjyyLzzKWx1QpfYdIIMybs5zcT/84cJUg6o7uWPuNEe2ybKv3Aw5cpiuJg6l
         qGXpWhVskoIHQXEshRhjD/U2z1DTFZKuxPwSPSGs9QC/4bW+RHWyMd8w7CXeAVluvQ3B
         QhmdrYjNqIKcWfVzIMIAyttSZZkVTSQ54FniEsQTYeVd/UJViZV98JMVRiguFrdRdCV2
         XuNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Tae5FjrF;
       spf=pass (google.com: domain of thara.gopinath@linaro.org designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=thara.gopinath@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ag89gmMckbcQt6BQwnXl1lgNZwvazzSGSGv+wWNXAB4=;
        b=hE4ZBt3QpM4YCjgq7acE9OJKqowXK7Dhzr6veMMdCQFY3N3T7ax3g6I2sEhaNrQeke
         YlECO1xgMkXA+A3Iz1eq9un+q5+c2ilC8oz1Vs7UfCJsTjZPCzQGleykBdRX8107fWD2
         OR4nP1vC4wbWsc1ttEnznIVqCtgDqqs4VXz7UN6rqexLEQ2EmsbqJMRKT6P1IbgyPktR
         YVYcX9f4rSf/ggMP5MjHE9T9rtwplQ/VWYkb63H++g5BQ9HPqun0AUy35ciUMM0RUipE
         kldZzY1TEtflRlvI0Z0L4vry40fUZU+PPlDg97rbSRIYFx4OVxFbMrFSaHLnLbNCOOk4
         ruAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ag89gmMckbcQt6BQwnXl1lgNZwvazzSGSGv+wWNXAB4=;
        b=mBa/bZLGzGwlHQ4QwRAa8FuoKmpVsnqZyMfHLMnmxIoP2MuqU43RHD2UU2k0m42Nu+
         HmQ45VoMsdopWIl2o9BcWFSZcVgeybroNFYbagT3WVS2pFpTc+sX5jHy7VUg2Zc3YQg5
         mr4DfP1W7sOJP499i6Ypovb/0vZ14r0LB3FL+H/lB7I/kYrPjEvLOaLotLi0UcbeRFmS
         NsHBdxyet4VbL16+UHksgq6MMWh29ZxSQ0bqyJYPV8m/Zg6IGYZVcKd25MbFlXkEl950
         tyljX9YGObr0aX7rGkxiFVcM3/f4/nNXrWI1s6hTRLxv7ZS1wQ7LYIixYvI1ZfWS7Cnf
         8mMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWMsk0p2VXkk6XaadB5bZRrLVNNKqVmTd1E+9a1zwpMujbkMnac
	YrO++2ZJ2KZjcPVnzlDnjqA=
X-Google-Smtp-Source: APXvYqz1kCQAAGTgNIs8g22qbF3K8CMKP36//Q5YQSDufluJ5TRGISsS+/ABXS0AAiWHXN7dctZtSw==
X-Received: by 2002:a17:90b:4382:: with SMTP id in2mr2813560pjb.29.1582778127406;
        Wed, 26 Feb 2020 20:35:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8547:: with SMTP id y7ls520191pfn.10.gmail; Wed, 26 Feb
 2020 20:35:27 -0800 (PST)
X-Received: by 2002:a63:d20d:: with SMTP id a13mr2276060pgg.257.1582778126937;
        Wed, 26 Feb 2020 20:35:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582778126; cv=none;
        d=google.com; s=arc-20160816;
        b=y5/YFUcdMvJ3A4c0MJhy32KaYQWUcfhACvMs+C/NArXWGrpyqJq68gYpw12BNk57nz
         SIxDv/vChz7huBSEIBtw1LdR/E0+9KmlZRk0hm1IzHkJdlU8rNOAWltvxz0P8+6Jf38e
         PT41SRbk4NkuS7KxED6hhTWx12yYiXB3gox3Mwl1EHK8AlR7Hj91LPAk949fxsw+PfdU
         BN5x2WA9d1n1ywWUfbynmAQcXvimsBJS6TaG+Kg5RGCuB+vILee3Gbx/ook0oLzB5ksD
         gWUUpm0mOYYOoYhlSjuWCiitjnwzK02hcH4isWRqPxHNWw1jqpMStpWsTG+4dP4lroJL
         M6dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=OL+3cu1JCIUl+EJ5jOWeX0f36hKChVAYQDiMz0iDgeo=;
        b=ayus4HOWVo2VC3cf8HGkU1v03P62ZRdB4Xov/Sld3cAJaiV3orMpujCyHU3vm7m6Ui
         2S33LaCVT/by32csuC1BFhHIdaMIoXlwD3JdA5kezi8PLcLrREWv/Tmt+2h/YOP0kKh6
         /NhY/SUq16VjVXKhsuPEs85ztKQbmAahSyzAQAiSt9Jfp2OGHFGaQRpVyMAUU6flpfxS
         Bm/P50SuOyUdTPiUAt8+tXBSIxVO9i/gbcRle7Ei+/ffgLNm0XJZjxGOCzObEjaZG082
         lg69FuAdyejj286f+F0/Tbh4rCKj2eC5emwLcKXyGGrpgvVEYnR6AAqEAyculf5tsBHg
         yLPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Tae5FjrF;
       spf=pass (google.com: domain of thara.gopinath@linaro.org designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=thara.gopinath@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id n20si85966pgl.1.2020.02.26.20.35.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 20:35:26 -0800 (PST)
Received-SPF: pass (google.com: domain of thara.gopinath@linaro.org designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id m9so1943870qke.4
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 20:35:26 -0800 (PST)
X-Received: by 2002:a05:620a:2114:: with SMTP id l20mr3133350qkl.214.1582778125352;
        Wed, 26 Feb 2020 20:35:25 -0800 (PST)
Received: from [192.168.1.92] (pool-71-255-246-27.washdc.fios.verizon.net. [71.255.246.27])
        by smtp.gmail.com with ESMTPSA id o3sm2367004qkk.87.2020.02.26.20.35.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 20:35:24 -0800 (PST)
Subject: Re: [peterz-queue:sched/wip-deadline 3/19]
 kernel//sched/pelt.c:393:43: error: too many arguments to function call,
 expected 2, have 3
To: Peter Zijlstra <peterz@infradead.org>,
 Vincent Guittot <vincent.guittot@linaro.org>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com
References: <202002261428.LgRaxM1P%lkp@intel.com>
From: Thara Gopinath <thara.gopinath@linaro.org>
Message-ID: <6374b5e6-8059-2107-1e0d-e3d47a08c4a5@linaro.org>
Date: Wed, 26 Feb 2020 23:35:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <202002261428.LgRaxM1P%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: thara.gopinath@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Tae5FjrF;       spf=pass
 (google.com: domain of thara.gopinath@linaro.org designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=thara.gopinath@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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



On 2/26/20 1:59 AM, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/wip-deadline
> head:   0467e3b09008e97dabd2373eaaa471fce23d32b4
> commit: 15ebf004a9f97a00bd84abab23bacfad39029623 [3/19] sched/pelt: Add support to track thermal pressure
> config: arm64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 396b7253944e927878dff2f6321efabb3aaa0f45)
> reproduce:
>          # FIXME the reproduce steps for clang is not ready yet
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> kernel//sched/pelt.c:393:43: error: too many arguments to function call, expected 2, have 3
>                     ___update_load_avg(&rq->avg_thermal, 1, 1);
>                     ~~~~~~~~~~~~~~~~~~                      ^
>     kernel//sched/pelt.c:241:1: note: '___update_load_avg' declared here
>     ___update_load_avg(struct sched_avg *sa, unsigned long load)
>     ^
>     1 error generated.

Hi Peter,

This is caused due to patch[1] from Vincent which has changed removed
runnable load avg parameter from __update_load_avg.  The fix is quite 
trivial and is as follows.

@@ -390,7 +390,7 @@ int update_thermal_load_avg(u64 now, struct rq *rq, 
u64 capacity)
                                capacity,
                                capacity,
                                capacity)) {
-               ___update_load_avg(&rq->avg_thermal, 1, 1);
+               ___update_load_avg(&rq->avg_thermal, 1);
                 trace_pelt_thermal_tp(rq);
                 return 1;
         }



How do you want me to proceed here?
Do you want me to resend the entire series after re-basing to 
tip/sched/core or do you just want to fix this in your branch?

1. 
https://lore.kernel.org/lkml/20200214152729.6059-4-vincent.guittot@linaro.org/

-- 
Warm Regards
Thara

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6374b5e6-8059-2107-1e0d-e3d47a08c4a5%40linaro.org.
