Return-Path: <clang-built-linux+bncBD22BAF5REGBBDOJZD5QKGQEVC6TGPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A6027B3CD
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 19:59:42 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id 80sf1191976iou.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 10:59:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601315981; cv=pass;
        d=google.com; s=arc-20160816;
        b=C/KRfz6xxwnl/8GcxDnyONotsG+IJlKL401lPOlZLNBTngvXEeYsMpQyUG8tE1phNa
         HvWfF7oz6dEy7OQKadFdgZmJhxS9gY8d8ERh7vAQiC7WNqpqRU9J72CqzhBAuo09ueIW
         77BBeouVlo1T4ii3pg13Fyo7zZuFSuhXtAIoYoPox/RlOiTJ8SdqFC23tdvOHOElh53O
         PZlO0k+C29FlL+ngmwG6aD5SJyyC5hEo8HWFvbm2eMqaRdGk9HrFVRH1GS4JEfiHPMYE
         HczDnmU6UAhb9nTjVSxZU6OMUrZnfu9bJaAoZXA/59+jV09lZjez3RNIsCspsFhTh0h3
         +Cgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=rPFa7a4G6GgZrdY2S0HfUE0aFP77Jt50SHFA6QCUTYo=;
        b=G5Nqv0K0QDv9v9XM08nyly7tt9ZPDooXoCLW6EoqbHKKlLnGOahY6JNL4FD/XuL+iU
         +svDVHFqdvR//18eoPL7ZC8AWKSgz5LLiwB0vVo1hkle1nqy34q7O4qbzPRll9ZaoKzU
         BWu6Vw9hHy9vFuQ13nCTeNxq5u/5yGbsEpBxrAEEW4XwTegZHpPU+icsTASodAwVV/QV
         9+8cyPfFmIVPuFYG7LtMAyj46BGqBz4RMuVkNV3+udCFhNoLr6zHNX9OpYJXzwwfJw61
         uuIGJEX+Pnjz+7gzhpXAi0ZtlnjHQyvAiEwNDWRePNWQt/YQ3gSN10tDNwTX2rcYakh7
         CwVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.hansen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dave.hansen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :autocrypt:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rPFa7a4G6GgZrdY2S0HfUE0aFP77Jt50SHFA6QCUTYo=;
        b=LjV4GsOJmXb67Us1O3rRrI5FB8UykbF4KfpQUGAdoBppgTd1oo4bHVot0ig0RbXS3h
         iZOGUveecUVD3IsedU3hQlufVQSF2PJVLPCac8cbaJCKswHxtyhv+Mn0bFpMOlbIvyOy
         wJUWbgeL2P504BgpdMofbrB37ZEhIxAmsyEqFq4pK+/QO/fokOecNQYeIZt7ruFPowkh
         iUpRkXHzQbPR//cixy5pyAiqgWcXT9paQX246vTPwIgOJyXmlUh4t4BIseoa7Wkgl6Qk
         YoIwi1S7Hcy0/AuVYg4BZ3ib8Wqqozlzi2IDxmv9j6pYQ+EcvbeVecLlLKqp1+K+ZeKW
         5gLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:autocrypt:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rPFa7a4G6GgZrdY2S0HfUE0aFP77Jt50SHFA6QCUTYo=;
        b=UXdyjCZUSXxrjySFRs5O3IVHCiZU7Ugn0CClga8/z+zZztrILDVtQsLMwILRFU7gvm
         EiG5eJe9MTHycI3NWeWoT/OjyHDO0Kd4TsiehMyKIOv1fLSFU4HFnusXhSaLnNN0f4UJ
         gKL8KuqoEcwvJo/UJzD/sIP+nlQINczg4oRfQ5F+HBXMQ+nCxWL+VEHQE3hzNsq6NGzN
         jtSJWWA14Ji6aiRCXgyJHb4dYXCUkbZtIp+BAhrqslh4bzIJNs3xgMGiP+jar4jjeR7T
         A8AY/wR/zFdOf73kwsV7ELHw7lUI+gFYPcQExluNNeUeE8G+uQQ9uWTz/G1wsARii2nt
         ZDQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53340cdNzh60kwpH0TDhUjJFDDKF01L8UbicUHKaQDOdCxy75/CJ
	bcaI0rmQbjK6p5ePW9VwidY=
X-Google-Smtp-Source: ABdhPJwAyGyQP0/wD2gp2TYy+HHFEu2FgnwWTXumk7Lj+k5887ugIu9c+7SMnKBCOmqkroCbI2oJyA==
X-Received: by 2002:a92:d68c:: with SMTP id p12mr2258438iln.266.1601315981281;
        Mon, 28 Sep 2020 10:59:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1081:: with SMTP id r1ls529246ilj.10.gmail; Mon, 28
 Sep 2020 10:59:41 -0700 (PDT)
X-Received: by 2002:a92:aa01:: with SMTP id j1mr2353420ili.301.1601315980936;
        Mon, 28 Sep 2020 10:59:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601315980; cv=none;
        d=google.com; s=arc-20160816;
        b=YD/7sFE05FZAG7EENWvRmBtqnq8EJlWKY8FrcAVeG+YOf85SLiVmTOjfw5kLJSqiXo
         N+8UKjtT6khOW5ZCX5/LEqQwRtAqRAzV6EoAHHQ4CNqYTA3YQkQ4ZaFyjCEy9dXLf5Ab
         ln2vJTKqsfEQDGamzZ9l+dPUTbxM5p0j6odyBlrGBLmddWbe7vy0nkMjzx4TpwSiB7vS
         lDwOS4II39C13Z7R432KtJ8BFOvoBYmiyO8OXM3n5CR1dwRglyIilJ4WgQVTRgY+rS/f
         bcN+sGZT2Wfv0yQc42Mw4dRnLCXe4T48QsDFtdzL6W56JP3Ocu2A5P2HgyhOOuavX7C3
         uwIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=3j8vD7qEzWr6U9ICF9MrWUPY9QxO3lxwLHDCbipWk9o=;
        b=sZ9yHpq8tp8B5yzIkhlKdlVfko0CAMmHup6xPWC8pUXfq0IwvjZg7wka34WTA/0cx2
         2Z3Q6xvu0hLzexuob3CIZbRcA7XiMl9TEC0w5mr7+iBX0HBLZ3QLYCTHSq+2OvsojdNR
         y3WGx9kLO6Ls2z95X5TTuBacWQRz+2lBJpI6sJLkOabpXH6BDVFw97/+bihEgyNQhgJh
         pTiIjy2XZT8Z1mPvUWPV5cLV3LzVQCtuTvX0hYKusgHKQV03/OClGTZSXLQ3scOM3vFt
         yPLS8ms8PZbJE5w0hXKRSirD2xqc5s3CX/cgcq7ISofNfXPsrptZe/RuRJNNBgOA2If6
         mkNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.hansen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dave.hansen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id a13si463232ios.2.2020.09.28.10.59.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2020 10:59:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.hansen@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: G7JCuZdTHgaRBW6dqeFGvj9XZeFU7kcHMbty2tQXMOzUL75nUvRyrGx5ZbVzWVWOSF7vnyVKqB
 u8trNnxTaKOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="149810295"
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; 
   d="scan'208";a="149810295"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2020 10:59:34 -0700
IronPort-SDR: HsqcJRes8xgY5EqzyBftcMXTFTGrqAVQ+LPkgzhDcuz/hP/Oy1nzd2sZZhX8+6NRVgtGXIOfa0
 VGcwmhg/E/SA==
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; 
   d="scan'208";a="293962707"
Received: from rcalvo1-mobl1.amr.corp.intel.com (HELO [10.209.56.88]) ([10.209.56.88])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2020 10:59:33 -0700
Subject: Re: [PATCH] x86/mm: drop superfluous initialization
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Andy Lutomirski
 <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, x86@kernel.org,
 "H. Peter Anvin" <hpa@zytor.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
 linux-safety@lists.elisa.tech
References: <20200928100004.25674-1-lukas.bulwahn@gmail.com>
From: Dave Hansen <dave.hansen@intel.com>
Autocrypt: addr=dave.hansen@intel.com; keydata=
 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
 z5cecg==
Message-ID: <1d376c1f-2f14-5c29-671e-ca59853fa4a4@intel.com>
Date: Mon, 28 Sep 2020 10:59:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200928100004.25674-1-lukas.bulwahn@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dave.hansen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.hansen@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=dave.hansen@intel.com;       dmarc=pass
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

On 9/28/20 3:00 AM, Lukas Bulwahn wrote:
> diff --git a/arch/x86/mm/init.c b/arch/x86/mm/init.c
> index c7a47603537f..5632f02146ca 100644
> --- a/arch/x86/mm/init.c
> +++ b/arch/x86/mm/init.c
> @@ -609,7 +609,7 @@ static void __init memory_map_top_down(unsigned long map_start,
>  	step_size = PMD_SIZE;
>  	max_pfn_mapped = 0; /* will get exact value next */
>  	min_pfn_mapped = real_end >> PAGE_SHIFT;
> -	last_start = start = real_end;
> +	last_start = real_end;

Thanks for finding this.

This becomes even more obviously correct if we just move the 'start'
declaration into the while() loop.  If we do that, it puts the three
assignment locations right next to the definition, and its trivial to
spot that the initialization was not missed:

        while (last_start > map_start) {
		unsigned long start;

                if (last_start > step_size) {
                        start = round_down(last_start - 1, step_size);
                        if (start < map_start)
                                start = map_start;
                } else
                        start = map_start;
		...

Either way, your patch looks correct to me:

Acked-by: Dave Hansen <dave.hansen@linux.intel.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1d376c1f-2f14-5c29-671e-ca59853fa4a4%40intel.com.
