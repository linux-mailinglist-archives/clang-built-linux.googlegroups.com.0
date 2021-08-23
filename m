Return-Path: <clang-built-linux+bncBD26TVH6RINBBW6ORWEQMGQE4M42BJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E1F3F4735
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 11:16:12 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id r15-20020a056902154f00b00598b87f197csf5648487ybu.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 02:16:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629710171; cv=pass;
        d=google.com; s=arc-20160816;
        b=KK1VS0JVTOOuDv6jjje9Y0cTNgL3OGrnUoW8JJPiIhAtiyCvF+fueWUnvGSC0BrVrx
         a+9VTxyvV2hJrhyg8exbGvOgnHiRmJHFVx/GnKLVewR+L/JhhjKiWI3QA7i+XgBH75Wo
         Tdy5CH5y3MiWhm5sFNCVDxPkEwBaTXBIxXZ1n7jenCspWlEnrB0zdB1ETiKMFD1NtGq7
         BOvdwaG8JzE4QShtlih3ep9B+l88S0bmnBc4N/YqdkdsF95bTpO+tufefuwF0HRJqm08
         n+Zy7P5Wmes0w84bQ+vKlwh/nrN/GBYoKMhfyveklsiC6EES5EnoIvc46IBA0U43Dmhv
         SgxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=WK0Eg/hT/SBkyC53CP9kiJsL+1ufBiOObVvZweDshCU=;
        b=IWAsG3CVTHW5P3Zn5LptRRgnjgFx0TQossM9MnfSFCy1TxXGVjc0CAGTt/LuxA6joY
         ad1EAq/qKCH4uZaTDSgTglQo/sy5ZbnbZtQkQl6OYC2wEfbgHkujw+cQJf91wHy60x3O
         Wv2D8NBqCsEI90nn1rP669+3WKgLvB2VQkmOEXNGo7tb4cjodfVOJDgBVM/Baq7aMmzj
         PoL1XaRh3bCB6pEUTR20GsRD2DC36B8gcmOcVTSAKjd6mjw65PVbM+W+KpvrZfgoS7pe
         8IyxGyiIGtD2/sj0I01kgEtM+0PjLc3W+bN0pLHNMB5AqZVzEsRBQ/gfOxgg9A879lUR
         nmTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WK0Eg/hT/SBkyC53CP9kiJsL+1ufBiOObVvZweDshCU=;
        b=RbfCWlZasGmzPwoh47q5ALDkWAkSR6AHLfEwCar5BTPghETshiZY5Opl2A5S9KyBCx
         Ii6omZJa94FnpmZYQ0iH/iUP8EFaCjd5xzIDAfbMOin4mUWsvGU1q9UpN/bZcfdb6NJy
         x/H1HMVqfDjmDVWHUQjFVxrDNYruJZAqdNMotMDOiLMIQwKASSbL2wvFjNx/q4cYnbZw
         C8LCZRVsZTyeGpfHiO7VyMz+jtpq5x5U0x09Wpi7rYPmmnfsyN6UsdXvlbyTbykE5JSA
         B1ES1LCTqJ88FWhKwGB8lycsBVpuIEE47iZOrJvILjIk5MhPBI3H3wZgh4bb+IsPiFJu
         97bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WK0Eg/hT/SBkyC53CP9kiJsL+1ufBiOObVvZweDshCU=;
        b=TgyhWPYeZvj8IQ85Kr6xeX9Xk3mNgaAXqAgy2hyQ3HMWVZPidcmI94kkjmSDETUkpr
         2WDqfDaQIyts/QvqKg5enFuspYwTsu71/+yc/cgHIM+SeHN3Mm0IbMnkCbIuMe2svPhK
         2SsPm2enfzLm9IHFhma58uXJyLmPfUtbvd8Tdo0MxSmYuHSi03kIZJv4fnMcSyUfmQAn
         gGc6zFVLnoLc4T1TMwGiOWZ19vZStSFuGnH78wcDIRldqM4KhFcUZBVD5AstjNJgUe22
         IiYNX8PM8lsN0Qca7GnW2ia6Ls+UBdgcI87+V3Y3xJPazv0+pe3Qr6QM4sG+ht5lVUdc
         eAFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336fGTqMOmK4RzG4FRFC3FwqwJXBC0HqseGTxB1tv4qKBFMJU5b
	MZh0/vHEzYIoQIzGqxSVUk0=
X-Google-Smtp-Source: ABdhPJw6YFyBCZW/kNpntzJYqHIixBUP0N1UkC5T2SQuG/2QigsaPGS1gRBc4V0WPVLWO+JXfrMaKw==
X-Received: by 2002:a25:6d43:: with SMTP id i64mr43062225ybc.252.1629710171296;
        Mon, 23 Aug 2021 02:16:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9a02:: with SMTP id x2ls3803259ybn.0.gmail; Mon, 23 Aug
 2021 02:16:10 -0700 (PDT)
X-Received: by 2002:a5b:9c9:: with SMTP id y9mr42521375ybq.460.1629710170838;
        Mon, 23 Aug 2021 02:16:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629710170; cv=none;
        d=google.com; s=arc-20160816;
        b=XqWs50jkUI99mL3V6oeuEOp4IiO0FGxp/02bN/5p01DQSKhphMTk9a3bd7Jl4mEKMe
         4JEJmy2afxIYZL89WSzy5Fsh26jAOSg5a16WbT0+BGgH1k2kypOF/wPE6R9blfAfZvkV
         wvOia7+pOO+Fo4VjXF2FezMbcoA6M7D3nH63NxtXuzRmOXJxbu4PCaiQ9OgsjAEKstfV
         NW08Bp/9K47abN4fFe6tmoTG/1t7iE+iEUSgOVyfvsGZltPkL+VGIAV2L0VcH7Cx1HkI
         WofoVwEVywPJ41WGglT4SFnn0wc+2m2rgRzz3uMfma9GIWDfgfRSOLBVaInckUbsWuYd
         kbIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=3QVnqUkVpkpt4DzTMEH/JPXLLY81Wrn9SL4FQBKm/sU=;
        b=rPHKRHgtILpm1CwUOlP2CLX6c7BweOWfxa0y6/zaK8sJZ1yMXIeMxGf7NcMVO9n71X
         Gx4hEkdZSymbo7KdfdK0kd/jJFvsh92ZSavTI2VzWS6R3sgVYNxVxGtUVIsuwSu+EYh5
         mNOLJpnu2zYaKT9iUtz3PENbd6IiQ1sUqHRZUARHCdgXdV+KzO3CNFJjp19QW5iHBOAd
         h4rD1LKMtTxuzmAH6GdOxy7La+b35hQZLh9rKVqJNHz72mhr17NwqIpSktzWzlTd7EPb
         HrLkJt6HiVSgi6V3zt2g03JD6HaxhZ3cbYsdmmf/5ewL5e0QZTJOhrLs3q9Gvt3MCriw
         KVKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id k1si639793ybp.1.2021.08.23.02.16.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 02:16:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="215221955"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; 
   d="scan'208";a="215221955"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2021 02:16:09 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; 
   d="scan'208";a="525863669"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.255.29.47]) ([10.255.29.47])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2021 02:16:07 -0700
Subject: Re: [kbuild-all] Re: [peterz-queue:sched/core 8/11]
 include/linux/sched.h:1722:57: warning: unused parameter 'dst'
To: Peter Zijlstra <peterz@infradead.org>, kernel test robot <lkp@intel.com>
Cc: Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
 Valentin Schneider <Valentin.Schneider@arm.com>
References: <202108210940.aD3d42zA-lkp@intel.com>
 <YSNkCAyMU0tJoedT@hirez.programming.kicks-ass.net>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <428f3e9a-a8d3-51ca-5e2e-caa50b8da3eb@intel.com>
Date: Mon, 23 Aug 2021 17:16:05 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YSNkCAyMU0tJoedT@hirez.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as
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



On 8/23/2021 5:02 PM, Peter Zijlstra wrote:
> On Sat, Aug 21, 2021 at 09:20:50AM +0800, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/core
>> head:   234b8ab6476c5edd5262e2ff563de9498d60044a
>> commit: b90ca8badbd11488e5f762346b028666808164e7 [8/11] sched: Introduce task_struct::user_cpus_ptr to track requested affinity
>> config: i386-randconfig-a016-20210820 (attached as .config)
>> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d9c5613e856cf2addfbf892fc4c1ce9ef9feceaa)
>> reproduce (this is a W=1 build):
> 
> Dear 0day folks; could you please blacklist me for all W=1 build output?
> I'm 100% not interested in random compiler generated garbage.

Hi Peterz,

Got it, we'll do that for you asap.

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/428f3e9a-a8d3-51ca-5e2e-caa50b8da3eb%40intel.com.
