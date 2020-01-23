Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRB4FQU7YQKGQE4QR25HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F18146FBE
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 18:31:29 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id v2sf2144712qkf.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 09:31:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579800688; cv=pass;
        d=google.com; s=arc-20160816;
        b=tHFRfUAzaBAGki43jqUhzgHLX5BEbEXvEofyS4Tif9usWOplOrd9weYyF44IJ0WV/c
         ecg0oM/4oLl0mA5UYoT5Tt48FIjPwEzZsl8cSdl2qtZ3uVk3AgVPRoqH6/N7UjwA9xsI
         +dcy1Du3Q1SrHaUNvfMWbeId2lM07pBCEtpiG5FFRSjrrowiWCFHbQ5mFrA9m2YvrqGA
         YE/gj2msoDanGeVXKT4ZPhz3eQQAru7T5B++YohvXtiFaAGIoqAtl3GVkuuf7LVt8mtZ
         0Nag3Xwk5KJaIBJGBuRD9qcY02JUK4GXM6SEGqnHsKo+yp5Q4faOYhsVA1xk6edVwqZT
         vSBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:in-reply-to:cc:references
         :message-id:date:subject:mime-version:from:sender:dkim-signature;
        bh=MkywbmteqMGnZGNjlAAJP724wSaM5KZ1/30scCHhiks=;
        b=O0JNCu2OJfzUxYou802bAez3AvZJsX9enI3L5JNIdd/9TDY1QPLKWXTASOrqg9unlk
         A/kwiA3P+lvzqkvHezcQPPhiJN3wnt+FsZgg3f8U9monwN8bT8YMqRRJNx1rKNnN+FqT
         0pgW3UNRDWyFTRbsaeVOl9/363KXDN4Z5NTjWGhsNnQocPHrZEzsOly94XliRVxbiSK9
         a+nq4CTPJiBcGaTurl1uEIXlgq42ozOR4z8OFczjzNZM1Oha+HvAa1JMxN5KlxfeYK9k
         1YDTj2vDfNsHumvjLFQwhq/g47kaBYnqKcFvFIy56JBJcPPwfNDm7cX7lph+R87OsCNo
         Wv8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=XvGvEarO;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:date:message-id:references:cc
         :in-reply-to:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MkywbmteqMGnZGNjlAAJP724wSaM5KZ1/30scCHhiks=;
        b=QpMy3htPxYOFD9FtRGeHQ3u4rGnLgmO2IUmrbSQ617nH1O6ytP+V/PeOVplBO1tDRw
         3ITNIVDzqIkcUAtxPB6Dt2uezZLiIoWpSj1QfzrATLKyVFixNPKi6rhPRz0aZlO19n0J
         ZZgJaRNvqVw2WnvEEYft4FvIfZIeqTNOVZdM39uBIHgifgM6wXKBt9vhVL9s1b7RdBsu
         rViQjU3t2JThYEVpcjE0kpTMaWmVALXU+lAwLcFtNj2lI2fXM9seG1heDTwvTac7r7as
         PtjTe38p/boFfVyHoekIoExCeiOe8OCT1BNEI47aqTpZTnpmfHz3CYWsG1mtK72DKVjF
         rldw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MkywbmteqMGnZGNjlAAJP724wSaM5KZ1/30scCHhiks=;
        b=Sg0KN1uTAoUDDFftqooPesoM9h+Zf/0eQdE+QAFzej1B2DO/tVu/YCWZZZfn6F8BKU
         7uYOq31jMmg4g0EU1JTSm2RLgr2cWZy99fCpNnLnc5cFhLtAoxhtVJQumy4j9Mt1yAdC
         zUq1oBEFXGmtHlJxbYA+tWEmX6LFU7NQ4Wp6t4HuRBLrXVAPhkFJFyEtVt2UqpIlrvvR
         uCmtCZfadz+rYm6RgAiUngiJEubj4Ri5QyHjPrvfpRmO+3c8mx8jzDW+MyxQKxxHbQ+2
         XVg9xxc1oI/cq9xflyVDNxA6sK8hZ5YpdJrf/wtFpPE1P5Ks27NpMh166P299oJDvcVJ
         YsUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAULfCRsaJ4t/aISjzFizN7uniFWqeIk/LBvD+Qd8WcSD+EEfTVv
	ubok60gEELKajnJsIaWZWMQ=
X-Google-Smtp-Source: APXvYqwSsf9wq9TkVjnZEzMEy/0BirM32Eg2N3uNSr/FQfLtAlX5qQ3p6Y76zRwoVb9RPLphYXXaqA==
X-Received: by 2002:a05:620a:13da:: with SMTP id g26mr17410587qkl.410.1579800688183;
        Thu, 23 Jan 2020 09:31:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:15aa:: with SMTP id f10ls4094127qkk.1.gmail; Thu,
 23 Jan 2020 09:31:27 -0800 (PST)
X-Received: by 2002:a05:620a:1249:: with SMTP id a9mr17257658qkl.147.1579800687754;
        Thu, 23 Jan 2020 09:31:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579800687; cv=none;
        d=google.com; s=arc-20160816;
        b=meHiUykbSmJ1oWz56yE4V1iTSm8gl8pz7nrlRmFwMByRP9DQO/8mYouEXpAMp6XsGl
         htQsX8zBBg+2JGed5yVZ2h6YVbA7LpyqyExFOS65MlBjDuUgsw3jF3VJpnkiujvwDnoY
         l8vOdYnGURe7b75ZC7HfWYrFdPdjZ+cOnp/fcSUpSETJRG7kRpDIGVeWKQU9WZSRJYy+
         3S5jSSmTHG7LWyXitZQNFIKoqceQCfI1TD8InF/bzREJG1EocmK4mVuSlLzoMzSzHmQ0
         WUfAHVztOwo9MQQ9Eew7iVESERzjJ3+uBPiqdJPkovzhP6C5BBCRMQjht29lNSpD5vI/
         5oOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:dkim-signature;
        bh=rBBThgXC3RlRJATFU2MQijt5WNYWxLR5qQsGqFoA6wA=;
        b=Ru/ueIDstk5x9uYofpv7kdcMJpZWgmVm8YKtPHU6FGXI6AisIBRpV1/Ap6ascdfEE/
         D9GEBnXrFXWuNisIb5m7pHNmm580IYGbaEXqvf/lkdC8FVUJz/+a30ZbXkf3B361vpv7
         5NEBzmDp68o18BruGK0Son/9QjRJk0vWN/pTCvuEK+zRZmcnnnywatvE00siRdMvluR1
         wl2Jv33hWXkZ4YfLOJc5xXL6rrOLPoZeeLmVp8oMk0g0R+b4tqvTr+dfMHWJf22XjdKl
         iNDLbGDGFiJ65zBIzOuZwWVaqoESQgpnLSL/A5TXjV2j+3MzttPrboD8cn7MZekdpQgK
         WLHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=XvGvEarO;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com. [2607:f8b0:4864:20::829])
        by gmr-mx.google.com with ESMTPS id w10si137187qtn.1.2020.01.23.09.31.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2020 09:31:27 -0800 (PST)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::829 as permitted sender) client-ip=2607:f8b0:4864:20::829;
Received: by mail-qt1-x829.google.com with SMTP id i13so3106485qtr.3
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jan 2020 09:31:27 -0800 (PST)
X-Received: by 2002:ac8:745a:: with SMTP id h26mr16566059qtr.320.1579800687406;
        Thu, 23 Jan 2020 09:31:27 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id q7sm1194556qkc.43.2020.01.23.09.31.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2020 09:31:26 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH -next] arm64/spinlock: fix a -Wunused-function warning
Date: Thu, 23 Jan 2020 12:31:25 -0500
Message-Id: <48DF011A-3074-422C-BFBA-1A9F2EF4A7BA@lca.pw>
References: <20200123165614.GA20126@willie-the-truck>
Cc: peterz@infradead.org, longman@redhat.com, mingo@redhat.com,
 catalin.marinas@arm.com, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20200123165614.GA20126@willie-the-truck>
To: Will Deacon <will@kernel.org>
X-Mailer: iPhone Mail (17C54)
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=XvGvEarO;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::829 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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



> On Jan 23, 2020, at 11:56 AM, Will Deacon <will@kernel.org> wrote:
> 
> Damn, the whole point of this was to warn in the case that
> vcpu_is_preempted() does get defined for arm64. Can we force it to evaluate
> the macro argument instead (e.g. ({ (cpu), false; }) or something)?

Actually, static inline should be better.

#define vcpu_is_preempted vcpu_is_preempted
static inline bool vcpu_is_preempted(int cpu)
{
	return false;
}

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/48DF011A-3074-422C-BFBA-1A9F2EF4A7BA%40lca.pw.
