Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLU3RSCQMGQEMEZMWGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFFE386E6A
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 02:43:28 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id 69-20020aed304b0000b02901c6d87aed7fsf6264100qte.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 17:43:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621298607; cv=pass;
        d=google.com; s=arc-20160816;
        b=wKHYcdNvNolNv2of7kTuRIAYqlorJGdMouOh1aYyaelM8X6hVbd50+iedFS5fAMdM2
         WQ1x6UXMRNnN91GeXfkZR6hOFZhZWLGFyYQnukMoHePshPUHw+Ws3/7hw2VTnHC3GVUJ
         Beot93r2D+VxDARnrTVCuov9MyfXB1ayzB+AvKn6anwrE/PQ75Fi43y0Jwk8MZ1TI2TE
         q2xKnt/QJzG1Gsns1su2IgW8D0kd3Mxn8mScDVj31vjYlVzylJ57pqJkjx4895OxBOis
         TfrVo+xPRucKUhm5VfoFK74r7p1wcEuguuAbnPCaNOJFYZf6tlUJajELzV/KMWJtnif2
         e6pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=dlCaqqPcMfZaJT+fb26DFtb9rRFA6LwI1OOs1m6+wRc=;
        b=ig8re3LKGbL9i5MN2Q7p2+fp6eCML47WyTlhAxEYNnRx5ZrKqVttmMzfE33t1s4Wgo
         n+c6IVfu4F3/sZ1gvv7LXxoJ7dC5gDeSL+UONhzIy9LX/WZQOXI9D/mgl6cwMpO3kOaJ
         kun8307Cg/fFGdADCLJYQTZ3D3XDZfYmx+gbXg7XBC6LvEtDHE7rI0M8GWIlsldIAOfa
         Unl7oVlZw7gZPlP8T/q8JdtTf47IKIBmNki5cDVTsaQ+3ZHc6J55uY/tcAcf9cvQo6Wv
         d8h51TXkd9JP8IljGsGRPoItqoGP7Q/G4GtzfhfuVxygVAV3XeC2ErLcEcfra5v12mu4
         X/LA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JGZFQJSb;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dlCaqqPcMfZaJT+fb26DFtb9rRFA6LwI1OOs1m6+wRc=;
        b=FwBSCs7+TuVG+KaTJsiPwEQUpp5kDfQbCPcsc+FnT70/ld4YfeLvSqwOJ/NF0GBLXW
         lg5EoHJTZGv23ZkVrPvV3g7+funyTnVlGcsxSkSd4jtwfjZcUj3FPIUrwn7SkIJios+C
         wkgqtXQo8gZh33ctgzaI2jY04lS2MBoBV1BTCqv8+ajkcAuDfPCPwcmYGaC9ONRXX1mU
         lvx6/Fw2Q8Zf6fNDqYeezxEsrGM4CfJAwwuo60w1GSoMOgZ0ZkrZy+ZXWUtw39KF8JFw
         0eR2+1noXLJyNEoGsdu9dmeLl4b0mjJ+T0o8kBn81H0RJygv62NWIbUyJdUP/K69x++L
         zXaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dlCaqqPcMfZaJT+fb26DFtb9rRFA6LwI1OOs1m6+wRc=;
        b=I8ue6XyBfnUjN2rtwFnlyfuKozV6c6P/7lW/Fqf2axc94qdPtp4IiU9AuGH3jhapuQ
         46Ns+TuuC4AqNBdjEGOIOydW2BhkffpOmKtTVNcqmGH58v5Y4uhWxkMZgKu7C3BJzel2
         phvOkC9SAPfM2ifb9ZzypLKI8NpcDJw/bn76zmjtXLluWmqDQV7DiwICX3eaywQxMcbu
         KtCS2vL13X2Srm0+PxhdPJKTC47q4xhGXogIrWmYsgQuobySLMXKfNONPLAfgVqj0Q+x
         iipeT84MoKiC51CFfRIEl8WEonXh/06RRK4lEdbAFsNFw7vNh123aEyyVZsVKbU/Fkz+
         n59Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339EKpj5uIbZkKFeh/LAeWUz8uzdm7bbjzX0mYM+y/XVQ3+Icvc
	UpDUyayB/iOezrs98UBgGbE=
X-Google-Smtp-Source: ABdhPJxSAkA8LxwiRO2CR3ABMfPraV9wJQxoUkLNp3/A6TD0lsX8C0PZONwY0OJhtuBMttUu6POTrQ==
X-Received: by 2002:a37:ae86:: with SMTP id x128mr2736526qke.427.1621298607018;
        Mon, 17 May 2021 17:43:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1c3:: with SMTP id c3ls5757742qvt.6.gmail; Mon, 17
 May 2021 17:43:26 -0700 (PDT)
X-Received: by 2002:a0c:aa44:: with SMTP id e4mr2766852qvb.41.1621298606606;
        Mon, 17 May 2021 17:43:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621298606; cv=none;
        d=google.com; s=arc-20160816;
        b=oyEwd+Dso/VDgip5eWV9s9U/94QQvgAAryGm0PBfmapVWfApab2Vcosb1Tp0Fig1tE
         yk8Xtcfb0snkxzWj20ZqxBpz4lFoHSZynci5aWKrMyknRZ0NPYxBVKOqmhoylVi6CXsO
         jl+R/QwQaAhaYPrxXDqfKX3zlXij+SlFYXaEb9kpcQMVcMLHh9bHT36rtUsfiPZPcx+3
         wfP3y5UFMZeaH08UKYO0wfw3L9K2/7JXgmWO1BRUo2v1bl6qVkwDr41ErctEmRRjpP90
         AUDgIlw+m9O93CgEDF6NEZyn7BFHTqhf5KbUD+h4i08iww3uyV8Br4r8H6dzp7iS8GbN
         b4jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=cZP5eiFbOB0fcDBoWQpu1H7Qpk6qZIG6yHdPpNn+KYs=;
        b=0qwKmlI+4A7WDaxnBaFyG78nErFULd4pTsfbysSxGinPx+AEx3lQPVmj80nj2TEaIq
         GKgPfHSbEYW2vpiZvQeTnzAN4Ml7hsIj/WJeDRrvvUgf8XsGuQXuFFKoPeXsi24eZNvs
         ezNVOBXCUTpO0jrq35KzFfE2RcgNZ8VtwTyfPpBF5thTwQzU9SXGN2wSvwlYpOps+tVR
         jjRFOl+TU8g7607M09gyceugRwqfPseD6/CAC205TlQPCcRLoE+C3y4NylO+Bp+Ifpx5
         steaQOE5iyQA1rP/ty4gj0kyEKlr1gozZfbKcJZi4MczuurpzCrgQbPT2NIkDSJqt0Vn
         riIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JGZFQJSb;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p5si1472352qkj.2.2021.05.17.17.43.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 May 2021 17:43:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 22C0D60FF0;
	Tue, 18 May 2021 00:43:24 +0000 (UTC)
Subject: Re: [PATCH v3] mm, slub: change run-time assertion in kmalloc_index()
 to compile-time
To: Hyeonggon Yoo <42.hyeyoo@gmail.com>
Cc: Vlastimil Babka <vbabka@suse.cz>, akpm@linux-foundation.org,
 iamjoonsoo.kim@lge.com, rientjes@google.com, penberg@kernel.org,
 cl@linux.com, linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 naresh.kamboju@linaro.org, clang-built-linux@googlegroups.com,
 linux-next@vger.kernel.org, ndesaulniers@google.com,
 lkft-triage@lists.linaro.org, sfr@canb.auug.org.au, arnd@arndb.de,
 Marco Elver <elver@google.com>
References: <20210511173448.GA54466@hyeyoo> <20210515210950.GA52841@hyeyoo>
 <41c65455-a35b-3ad3-54f9-49ca7105bfa9@suse.cz>
 <YKC9CeAfw3aBmHTU@archlinux-ax161> <20210518003859.GC80297@hyeyoo>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <a1287a21-bcbb-77ed-c88d-f5890b785213@kernel.org>
Date: Mon, 17 May 2021 17:43:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210518003859.GC80297@hyeyoo>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JGZFQJSb;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 5/17/2021 5:38 PM, Hyeonggon Yoo wrote:
> On Sat, May 15, 2021 at 11:34:49PM -0700, Nathan Chancellor wrote:
>> This should work I think:
> 
> compiled well with clang-10.0.1, clang-11.0.0,
> and gcc-10.2.0 with x86_64 default config.
> 
> is the condition CONFIG_CLANG_VERSION > 110000,
> not including 110000 it self?

Ah sorry, that should definitely be >= :(

That is what I get for writing an email that late... in reality, it 
probably won't matter due to the availability of 11.0.1 and 11.1.0 but 
it should absolutely be changed.

I have not given Nick's patch a go yet but would something like this be 
acceptable? If so, did you want me to send a formal fixup patch or did 
you want to send a v4? I have no personal preference.

>> diff --git a/include/linux/slab.h b/include/linux/slab.h
>> index 9d316aac0aba..1b653266f2aa 100644
>> --- a/include/linux/slab.h
>> +++ b/include/linux/slab.h
>> @@ -413,7 +413,7 @@ static __always_inline unsigned int __kmalloc_index(size_t size,
>>   	if (size <=  16 * 1024 * 1024) return 24;
>>   	if (size <=  32 * 1024 * 1024) return 25;
>>   
>> -	if (size_is_constant)
>> +	if ((IS_ENABLED(CONFIG_CC_IS_GCC) || CONFIG_CLANG_VERSION > 110000) && size_is_constant)
>>   		BUILD_BUG_ON_MSG(1, "unexpected size in kmalloc_index()");
>>   	else
>>   		BUG();

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a1287a21-bcbb-77ed-c88d-f5890b785213%40kernel.org.
