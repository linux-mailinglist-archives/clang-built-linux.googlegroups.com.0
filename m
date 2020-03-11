Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBSFGUPZQKGQEFWRTP2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EE3181756
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 13:02:17 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id u24sf1632689edv.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 05:02:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583928137; cv=pass;
        d=google.com; s=arc-20160816;
        b=WqFv5VRrjvb2vU4bpEEXGo/2ZLZpr+PcGD+RXG1UIfbsbbo6N5zCONwiyON09UB2SI
         KE66Ik/mVzBRtLIjJEeQfz5PgZRhtk1fWLeLw/spMd3hH9IYtRUhM72yvkxTXEJ7hVLS
         2ZmkOtZSYPZCrebpbk1RRh/Oa9xbfOz/gDmYpagnzP8Ip9WqLuBIsMNLdL+pSGAjHDjC
         Iw88tDZ3KjB+cnLKKimWJcAFqQmVQmptmzbRUCLAWeZ9ZXVOWuqkKAgJo7nsfQcK4rfa
         QZBFnL2bCTvS9PwWiaMkqHaEP8KPd1BiBoJmISQBe+TyodSMPiSnxDegDzqTU7vuC95y
         s2dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=V1HRASZPrLz5PFdJC0AENSQZGYJtB/i+LUT4JM5Ub/k=;
        b=HmcCOZwvGm9WVgUrN2eLLZWHLsEUAqHg9qM3mIrSocD+K6xT9CdBsOXorwJcw6bYsh
         1Un3VIMjDMU51V/k+ydPCjsAxiEoWZsVJjnW3jjgjAaLfxWHokKB+X2IY1Juefph8vt/
         CGkRJn/JAkA7oe1ekXwDbNyp79aybia8EVvsKNCsLzvkW1ieVhOTSPL3WrTxtkikL89G
         K3r9b0jEBC30qdqm4I6vLUETMVInyJNMzyEn1zTgsMkDvZ9NMoU6qAgwSBiRYv8ky0+k
         WYD/TJOgFGAeBWDagMJLUd+0LzA3SxilVyfHZMvEVj9lm34mFDGtMpjC36zeJJf6va3q
         mXbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V1HRASZPrLz5PFdJC0AENSQZGYJtB/i+LUT4JM5Ub/k=;
        b=HRhXKgLfRaY2aWRRPfgEUU+J3peepB9XyVuBmHiD3uXFc9sCEzRClyK3mCIoreKwUO
         hCBJjzGll4JVvqROQXLEkF7ITUY/4C8ytH4+fBPcv4sumL63DDe8fKkrfZ5f4ERevPjK
         levYYENyzkU7QAl2+YMc+GXeGjA05h2cAPREhjCCkvy2jkHRWdh4uAVwtoP5upUa3eCb
         EM6DyF14oO/LYeMX6dSxMLyy/LGWw5t/bBrxcTql669H43x4N3fszUSElBYeuA76YxQQ
         iSasgpQWPdddnnY/iYzFBj8FJSCRE+l2VZwdmVKXjtnXXWpAzgRJfXyNIZfZEBUXPOjW
         3AXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V1HRASZPrLz5PFdJC0AENSQZGYJtB/i+LUT4JM5Ub/k=;
        b=R2LCDfVcJww5R6jimRlclLio3Krq+VKYZzp3VlnRiJ/KxAQqNyD64lyGfNz+Bz3++z
         aSJF1qmsaC9UtZOoqaKDWR2g0b2cb4tdsPTDt7ls6UhWPRYzM1bW+TzTpHcH1/uEhmML
         7T0LnBoH+3PWnMTA9N1noipuKKfdVGOlxxspTTOGKeHy1IParzzNPlLkPB5tNxeQlvF2
         +fDFaMwuDlzPrP0wUlExiCHI6h8W1ZXcO2tUTHCb8DWfFZqC2Oue+CzgDwOBM1sc86Mt
         9i/eTQbJxcvQVA1Cx4NHbUS3rF/eRV7i5qKlVYR4TEFyM/UcK+Gd+Ub5TV8CH1TH5fp2
         98wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1xEPVsXUuUauq4VlRMTH65SKw95SamKLlOHExxhOBzGvDsnyd8
	Mqe/ZipXfLKRW2ttFPVJ4mE=
X-Google-Smtp-Source: ADFU+vu2Hc/TfZFWoigwiGNg5FJFReKOHd/C/IMSxL38bsVkqzqC1GCWRdRJiek483MxdeVUu8pobA==
X-Received: by 2002:a17:907:262a:: with SMTP id aq10mr1981883ejc.377.1583928137021;
        Wed, 11 Mar 2020 05:02:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d4d7:: with SMTP id t23ls1251273edr.9.gmail; Wed, 11 Mar
 2020 05:02:16 -0700 (PDT)
X-Received: by 2002:aa7:ccd3:: with SMTP id y19mr2500981edt.175.1583928136406;
        Wed, 11 Mar 2020 05:02:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583928136; cv=none;
        d=google.com; s=arc-20160816;
        b=PyD2S1Vl8WHngRhO3iEXBkUdYQTH9EC7EGpTtpwXeF7nHmzBqGbrO1H7MGAxncpxnW
         c5Q19luqNOYmv9klkzORjYgRiEKR0jueCEmGPUqoRziAQzTpX6b2ijB7qLkQEjtOHJf/
         qgJdD6qh67+Rw8YtZanz50OaKzZIWYVxqpqmU7eH1roYVTjGFTlIF7jm3eT7o6hXJRR7
         0Zibyr+CvH1ztdQIQt/kBirqGb2++DEe581Btzpeh+E5FEobTOeON3oSXs01fLTFfMGr
         ioRbLHvvNqEQjrrA4g4zSHuPE5DKLcIEuJ4yrgH/zDezgm4RAGQIhI5Gz/UyfTmUyiKC
         vlHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=WshYCYkonPMZsCDgV6yefFRq/tJ6keyVHQW5NB8Y08Y=;
        b=BCi96s/f+VhKcSrt2O/uQnpAZ269IkHGUGtxUpOwY/Sar6DrSNubM+nV0go5FbLQ+l
         +QY+GVyQwXel37mle3syARlm1+WIWRUWzSCbHtjrAMGUb9WNI7Bm62H/DHZ56p3pCJmB
         AI9C9Fn6AnMioetAAX+ZmrpZfRnmfe0m0mT9huIjUm+t/yMGNUHlroejzyljjs0Kie+A
         f4wRstlI6Yj3v9/jxRvzrH5ChGuCUbtNWZMBkbdpB+HxjcPPMb6+5gHRSOGwdBq/438L
         zRP88k/P5if4IhCr6yrcuA5srI1yA0rDbqTfZu+0iiWxt7jgtW0awgV4Ml/AaAyl0KmX
         zYhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id cw13si106267edb.2.2020.03.11.05.02.16
        for <clang-built-linux@googlegroups.com>;
        Wed, 11 Mar 2020 05:02:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9C891FB;
	Wed, 11 Mar 2020 05:02:15 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF18B3F6CF;
	Wed, 11 Mar 2020 05:02:14 -0700 (PDT)
Date: Wed, 11 Mar 2020 12:02:12 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: Mark call_smc_arch_workaround_1 as __maybe_unused
Message-ID: <20200311120212.GE3216816@arrakis.emea.arm.com>
References: <20200310232544.8792-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200310232544.8792-1-natechancellor@gmail.com>
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Tue, Mar 10, 2020 at 04:25:44PM -0700, Nathan Chancellor wrote:
> When building allnoconfig:
> 
> arch/arm64/kernel/cpu_errata.c:174:13: warning: unused function
> 'call_smc_arch_workaround_1' [-Wunused-function]
> static void call_smc_arch_workaround_1(void)
>             ^
> 1 warning generated.
> 
> Follow arch/arm and mark this function as __maybe_unused.
> 
> Fixes: 4db61fef16a1 ("arm64: kvm: Modernize __smccc_workaround_1_smc_start annotations")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied. Thanks.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200311120212.GE3216816%40arrakis.emea.arm.com.
