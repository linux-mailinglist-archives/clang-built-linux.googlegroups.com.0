Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBWO3T33AKGQED34GTWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id D82DE1DE4CF
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 12:47:53 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id y7sf4224052wrd.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 03:47:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590144473; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lnnztak/2d29GoF68UiFeeubUl1nNJ0cRtQrJkrqXIoQu0S/svrgiNLVXrN5el554x
         vk+0vqRQg2ZhvW5Pv3ooJc3siL9MGE4FhF73E8sa8kPhCdo/0ZXUXBjF9yTiIasvWs3y
         J3/J1kQ5yxCLCwcxTfiJhcGpnvxTIFlhv0IX+/Nk838J2AU5pUnF7fzeskjBzDPqyR13
         NJtp30ZN6fQ2lXXs4nuWFuZS5140/XaMNcngEuRE/AYPhhXC/aTxnfJ0dEe5P2Nk0K2K
         L9Ou/UMCpU56JiSgeKGNo+KtMb7tipRTfQRh1WObVykBS5BZVPn6Xp+CWrrzNRanGsvF
         jUIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8I6eFmjtEm6OTAQCDcc3zHFieYaob9oEyOLjRBs9lPg=;
        b=p2L5CLqn0tpZW1+YMi9/EOGJAQFfXS9l0fjTe+vrzWf04Z4Ck3U39G1bNE4Zooe2Sd
         7wgRuDCd9XLCFnhz1k9F4CfLP9lawxH673hkG0isaoZeoMwgk23ay+NmUvxSWbq96nqk
         5OEmh3mJCpov9Y1Sd1Xv6RX42W6iwoWMngtssSGjAny9/BhbY9TIy3ITOw7y64FhFrVt
         kW97k7PT3OIixnVtpo1xB1vEXRYOsHDx2J4TtlDjc6bT/GfCSbpHoaFhzsPFsmSFwUCa
         GHPItzTxEOhCutnyFxP02ZPEZcReiJ/NzCppBkkIhj9b/jAilreIL8Bo+juXZE3cWOSp
         UmUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=jUCEzp3E;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8I6eFmjtEm6OTAQCDcc3zHFieYaob9oEyOLjRBs9lPg=;
        b=Sa2UU03IQ4gF2JrLLw7DSaOQnD9hoo2/z1DXk3vVehs1h1PwdcdqQ99FRlisiRonSk
         IYeBwNjXgPwwi1x3U/tibhOyJAZntlrKSHf5jVsia7xyEEGvqK6IlXyfMBGPHe3x5bCm
         eaePNB9T1TBDojFuR00hp4REGxpIp5f5Nym1TJpnUt5S9YEgzMQbhill3al+gz9ewoOH
         tvuzuMnpHy+9yC80d4A1KbbsbhO7euwCTzuueqiXDeYyF/3qJXt0GchoJTxnnmf3gGjP
         R+Yv6a6ejraYmMxJtxKkn+jLpyXAoszQBWt2mvc+jVcdzprROCYjQcfhng9wtjfbGih6
         7LIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8I6eFmjtEm6OTAQCDcc3zHFieYaob9oEyOLjRBs9lPg=;
        b=MtUgzVIaiJ8nh5gDKR3/yfXXW7z5zOCZj3CYEmdGTvkAaNEyQp4PZ+NpoyHjb/Ye5Z
         b1fhGAK9PlfzCZE/IwgbkgmwyP82nUTNDMyOzQZhdvKUmxdF6KaGRDXOYTg9muVZOpan
         5o4VEDTY9JCK52LKVTJ7Al62orn371YEtjTD/vxYyLciiSTC7AoHPuqACpc5p3BsxO6/
         2O6Iyk9JLW1iKL7Ghae4Wc0Rt50VM7dUkvHoNorjQJFhFnJuDPfXWUJyEy5s96UABhr3
         Wd/te1lpMcs329QM14me7G1Lyd30N/m9tBhGWTk7V7I3ubLahKDJ0Dd5On9UD4m7zsbR
         TuIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317OG6a563dXVJn7ahQtn2FETARoAfgY9wZnQMydWsrUJqKUa9G
	7dE+LaozHA/zFe0z6M/FFR0=
X-Google-Smtp-Source: ABdhPJy8ymyyFx/Yw9R8Tz40bXYB+dSj4V/w/NCNaDlT4XqjYZhOLLlvIEOc1mneSwx05LdNQXQqJQ==
X-Received: by 2002:a5d:400f:: with SMTP id n15mr3062886wrp.419.1590144473609;
        Fri, 22 May 2020 03:47:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9a89:: with SMTP id c131ls525825wme.2.canary-gmail; Fri,
 22 May 2020 03:47:53 -0700 (PDT)
X-Received: by 2002:a7b:cbc5:: with SMTP id n5mr12985839wmi.110.1590144473123;
        Fri, 22 May 2020 03:47:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590144473; cv=none;
        d=google.com; s=arc-20160816;
        b=XXvoIKz5xgPsRUC1wVTvS0SOTCiejmvpPvcFGJMjtyqTi36tVCzAvAYLl/h1+9czWP
         vEe5ZPENRpMXwZL9iLX5jXSnsnKQZoLpPrO4rpgmOJNXOmPZPndQ0ZLOJhmtIs+nbaWr
         lnCK/+GrYhPq3ztL/TghfEWB6X4UlYBZVZWrsuKKGEoAuiATN6M8jxNS+Z/M7EfPL3UC
         ZTopQsN2PX8UPRwMP0nRQI7kRxgwSmKx83+4NaCK1Y/WbZd2mu0QxSZxPoh/oeEftVLW
         yl37Cb5PWmRMS8iwcOfixT5JHeZLC71clKmzA4d6FbloZnZkGqlOfSi31HgXbIkZqntM
         iCaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=U2u6tNLsMLNzMWM2MweWWtY4enccp4IwxfFDf0b0Msg=;
        b=P0y7jyfX2If3XPtvIQxIfXsvS/CUgAfsljGzudWNRg9MkDBV+mKFS3Fmj7+9OpzkE6
         o19ez0YYwnuAlzmVblBXnTaeIWdc1lID8CxJ0uV9jiPM1zgujVAiooJmwMlqQEBbk+z9
         lYJO6l7Ep9KDrP49tXoI+bmp8QTqMHmZmXxwwBPBsL91dx4Eu2Tp4tJ1BJqGDBXksWnG
         Cnrduy4nMUT2gt12+2CjhMp1ScU252AJPE/nSE2y7+1xvDskEk8M56YXA/8TojNzhJqL
         rQPTY5fCmDjnNC0PrFdJtk7Nb4FtEbihLXtRA3EfeKpybyr1RuLjqSfwku2yIsKBS1j3
         bSHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=jUCEzp3E;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id v11si428634wrp.5.2020.05.22.03.47.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 May 2020 03:47:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0d490039ac3da161697ee8.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:4900:39ac:3da1:6169:7ee8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 9CD9D1EC02B2;
	Fri, 22 May 2020 12:47:52 +0200 (CEST)
Date: Fri, 22 May 2020 12:47:47 +0200
From: Borislav Petkov <bp@alien8.de>
To: Marco Elver <elver@google.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Will Deacon <will@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH -tip v3 03/11] kcsan: Support distinguishing volatile
 accesses
Message-ID: <20200522104747.GD28750@zn.tnic>
References: <20200521142047.169334-1-elver@google.com>
 <20200521142047.169334-4-elver@google.com>
 <20200522102630.GC28750@zn.tnic>
 <CANpmjNM=aHuTWFk45j8BwRFoTQxc-ovghjfwQr5m4K3kVP8r0w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNM=aHuTWFk45j8BwRFoTQxc-ovghjfwQr5m4K3kVP8r0w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=jUCEzp3E;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Fri, May 22, 2020 at 12:34:00PM +0200, Marco Elver wrote:
> Yeah, my patch for GCC is still pending. But we probably need more
> fixes for GCC, before we can re-enable it.
>
> We restrict supported compilers later in the series:
> https://lore.kernel.org/lkml/20200521142047.169334-7-elver@google.com/

Yah, tglx just pointed me to it. I'll move 6/11 up in the series.

Just a tip for the future: the idea is to have the kernel build
successfully at each patch so that bisection doesn't break.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200522104747.GD28750%40zn.tnic.
