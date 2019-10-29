Return-Path: <clang-built-linux+bncBDB477GYKIIMRTG65UCRUBELH2M7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 296ADE7E92
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 03:39:05 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id f22sf7710705edj.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 19:39:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572316745; cv=pass;
        d=google.com; s=arc-20160816;
        b=gAaSI4t+rSkWi+Q0HBDgjm9SNLGFYHqw/oAlETlVPKps2IAn4ewHm1sZtkZsYa8d6T
         xB4izEiqLwyFHYFfG+ajQoJihAODGQbEHkr9vYkpmBScHYfHu8hmx7mAaANLc6vi95uj
         S1fpjVBMVAgODzQjikdgVRLGotrpsfX1/OVHn7ZlDvXv+a0QNri6By8+fN+PkbgRAJgG
         aOAddzUFKv1sx/fkCDWa3A9y0mkfOFCyDaSJ9SnEgPe62ULX7Tx2qW+XVsWc3nMPz1BX
         a0SO2pAIxLmX0Y4oauhOtgECZ3c4twJAkRbznr9pNMnR1Rj1fCaAzS0PUu9nxAlUz+HV
         g/8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=TdpGFuw9FULMcAHcuSQpC2/EPq4y9mhDJB9+kuiTdVQ=;
        b=S+Z6MHgSMZ0B+cSkxqF6ICxIPeZM0JweyGdCg0l9KBz5csDNafHRNAB+KZiDVuUT4y
         FCxYaMSuu4lm+6yTTAeM0v1Zmds+1AIND5eAD2esdEdbJDI1dpRkeGHj643JZ3wWKN6G
         z7lBGRbYHakeQYseSni2u1OstZeiEASdbreUMWLzQJ9a+gA3qFtJYUNjJ5IwN2C7hd4T
         dkwqLjhbr0NBRC7BnzjeqRJkQM5YD7OZVdoyqPWgK7jAB1V3YPPS1aQ6LLraRuhFj+y2
         xGSyKnXA9N6MPRoFOZPoR9AH1w9/KZc2cvFgRezArr5HOhcaHZZYo6cQZXcDEtstCZ4+
         Fsjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@plus.com header.s=042019 header.b=GpkkkMh7;
       spf=neutral (google.com: 84.93.230.244 is neither permitted nor denied by best guess record for domain of ramsay@ramsayjones.plus.com) smtp.mailfrom=ramsay@ramsayjones.plus.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TdpGFuw9FULMcAHcuSQpC2/EPq4y9mhDJB9+kuiTdVQ=;
        b=AavcfsymLGcs//i91jwwnqAyB8xmyGUlD8+z55rP7In2O5os0X2q1iDpguJaxOWlbi
         NpnBFEONT3guthGmz78CrG4rLC7wlxLT3YjnToGDD/FTUrnDSw9NewSNZHFsT411+YbI
         fdoELrk0XQvBnUfnZHxebfTMWvqyHsx0mPdxHFLIlV4bs2dWhAojUaU7pYG7YjeDj6gy
         CPgNtgPVU53l9U7YUi9xr3jXEvgKYKibypeXAC+HHqGY9i6LWGoSaxEwut2GFIy/AYky
         8sMG7NGiSDsp5ctC9c1O4LhDvTD4bWGdkv+OMkGb+4E7nCuaA1LLMxZpDeuYPdRNA79I
         Xy8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TdpGFuw9FULMcAHcuSQpC2/EPq4y9mhDJB9+kuiTdVQ=;
        b=opCILz8hATXCWY2G5WTQmACzAw07DviFZhQ5WQa/+4+IW1lHK58GUheIbmoSGiOKCg
         ApV+h5f1YIARHbZ5FNojRVtSrebXreUHwqObnTr1JSmSQYYFyQwQA780ozOwx5756xm8
         mncLXpyebtwtoB86/AddYu8eU3ICEgvCYVJRxLoYeO4ALivJpMpgEj0AvacRrYF0LtJ1
         CWlYu3JZ9bcU/1g1Ofc149yTwA9Kt/MIFT2aBTiAMIXcYNfjPZ6IiA8v+an0kcl16ZZK
         n61QEj8qS5/5sY25id9kJK0ru3nUHmSct9M3NMMqAMdgGXmaABK4zH1oeTCciyHcAkkY
         nazQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX4p/4uM3VWZxn/3KFouWk1mcRlwdEymIPMN1XhWmG08Mjzhl7t
	Nlwdl0ER43O6DNFfxUIrsq4=
X-Google-Smtp-Source: APXvYqy+3OD0ZF5uIib/UKPIOoKBWgrL1N5vZz3/fB/VLyLngnmTplDI71azr6mPcBE5itSF0PTK0g==
X-Received: by 2002:a17:906:2cd2:: with SMTP id r18mr985557ejr.282.1572316744881;
        Mon, 28 Oct 2019 19:39:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:2547:: with SMTP id j7ls111021ejb.9.gmail; Mon, 28
 Oct 2019 19:39:04 -0700 (PDT)
X-Received: by 2002:a17:906:e82:: with SMTP id p2mr946192ejf.237.1572316744444;
        Mon, 28 Oct 2019 19:39:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572316744; cv=none;
        d=google.com; s=arc-20160816;
        b=fK2z5Nw9rgMuSjlch41KVrYx7yKvvLSede4sWeMuA3Wj6AS54UdOXLuLrdlgRN8SjY
         fy3KBe8JfkQGefWHURM8w0IebX6m2RJxnrYcKJc6RZsu32EKBVx2HVc4DgNBqRHy6vBu
         NV4BDKT3ZxxThk0EB7AWUMDY6tSR0zk4Pw7N1jvMd2KkxQj44QUwWOgJvLheUnHd1pg7
         jt+y+wJi7kXXAzKBYa96sKMLhVhVWItBeqI2xhclXmikb12NN15bxLi7PA6htgZ+QGLo
         LRcmEsbDfIsyi6g6HsPiC3J+BF73qjp941KGqp8Y+j/whBeYisJ4CyhPGbKk1sNmyMcF
         DERA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=3Vd0JoyK9vjaMDPiEfIcd0bq4Da/dDRQVJRkigVYHx8=;
        b=nWHkd/862jx8s1C5TRdfJzaI6F06htmIlJtnuNNfDh+ajSWuYroopDKjepKq3V4C9z
         ihXXcoBJ7iTMsFdWPVCh+zg9aun/3miNGerxX+eHwIloY27o6juV3DzyQZ8kzf4pMV8w
         5rbiWWkbFjTA4YAaggPgJHfrqDUhqIEugkvdMMQB/ug21hVI2Rv6ezPECucJo/efgrYR
         E+pt8dCXw9fEek9xr6L4FNvF0qTtS/c2hGXj4v+0cytUH7B4jRCEtJFOU51ZcTCGN925
         0quEVT8g8g007puhnbcihA36P3OB/6VlCCwINT3eg6OqAVDZDoK0mjgJoadvcRmxPhm9
         zgPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@plus.com header.s=042019 header.b=GpkkkMh7;
       spf=neutral (google.com: 84.93.230.244 is neither permitted nor denied by best guess record for domain of ramsay@ramsayjones.plus.com) smtp.mailfrom=ramsay@ramsayjones.plus.com
Received: from avasout03.plus.net (avasout03.plus.net. [84.93.230.244])
        by gmr-mx.google.com with ESMTPS id l37si365261edc.2.2019.10.28.19.39.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 19:39:04 -0700 (PDT)
Received-SPF: neutral (google.com: 84.93.230.244 is neither permitted nor denied by best guess record for domain of ramsay@ramsayjones.plus.com) client-ip=84.93.230.244;
Received: from [10.0.2.15] ([146.198.133.39])
	by smtp with ESMTPA
	id PHPLig50ftvkXPHPMiiAfY; Tue, 29 Oct 2019 02:39:04 +0000
X-Clacks-Overhead: "GNU Terry Pratchett"
X-CM-Score: 0.00
X-CNFS-Analysis: v=2.3 cv=ePBtc0h1 c=1 sm=1 tr=0
 a=1Jh3712dEPwUcX5EWi7t+w==:117 a=1Jh3712dEPwUcX5EWi7t+w==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=IkcTkHD0fZMA:10 a=X9G2ohcBEumEKn13xBoA:9
 a=DKryddvG6lcVqKu1:21 a=rVP9ElcGolyjnz41:21 a=QEXdDO2ut3YA:10
X-AUTH: ramsayjones@:2500
Subject: Re: [PATCH] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Joe Perches <joe@perches.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 linux-sparse@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
 <CANiq72=B6XKwfkC9L4=+OxWtjxCp-94TWRG1a=pC=y636gzckA@mail.gmail.com>
 <19fd23e98bab65a1ee624445193bd2ed86108881.camel@perches.com>
 <20191028221523.vlzdk6dkcglxei6v@desk.local>
 <00c5ef125a4e62f538de7ddddc9d8fe7085794a3.camel@perches.com>
 <20191028230349.xlhm42ripxktx43y@desk.local>
From: Ramsay Jones <ramsay@ramsayjones.plus.com>
Message-ID: <61eb73ad-5c30-0005-5031-6584df72ad5f@ramsayjones.plus.com>
Date: Tue, 29 Oct 2019 02:38:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191028230349.xlhm42ripxktx43y@desk.local>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-CMAE-Envelope: MS4wfJdK6ojPg4UiCDVjaWTqnOOrupE3lz3KQWXLl6QihDq77CAG4/APgQzVxjAQpq+wdO3iqLRan8yae0aSYVGClPTFYVrugUDQPyHeMhm+MQkzu5UTCa1x
 PFXN/KmG3YgTK6pmZC5mR2LFzXV4zgS66XIEZPj3dsEqsvVabxlE2DA6S9NAti+vgjXru9RvQAczlYSg65JctuQb4C9Pn5G61u4=
X-Original-Sender: ramsay@ramsayjones.plus.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@plus.com header.s=042019 header.b=GpkkkMh7;       spf=neutral
 (google.com: 84.93.230.244 is neither permitted nor denied by best guess
 record for domain of ramsay@ramsayjones.plus.com) smtp.mailfrom=ramsay@ramsayjones.plus.com
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



On 28/10/2019 23:03, Luc Van Oostenryck wrote:
> On Mon, Oct 28, 2019 at 03:28:17PM -0700, Joe Perches wrote:
>> On Mon, 2019-10-28 at 23:15 +0100, Luc Van Oostenryck wrote:
>>> On Mon, Oct 28, 2019 at 10:59:47AM -0700, Joe Perches wrote:
>>>> On Mon, 2019-10-28 at 18:37 +0100, Miguel Ojeda wrote:
>>>>> Just in case: for these ones (i.e. __CHECKER__), did you check if
>>>>> sparse handles this syntax? (I don't recall myself if it does).
>>>>>
>>>>> Other than that, thanks for the cleanup too! I can pick it up in the
>>>>> the compiler-attributes tree and put it in -next.
>>>>
>>>> Thanks for asking and no, I did  not until just now.
>>>> Turns out sparse does _not_ handle these changes and
>>>> the checking fails for these __<changes>__.
>>>>
>>>> sparse would have to update parse.c or the __CHECKER__
>>>> changes would need to be reverted.
>>>>
>>>> Perhaps update parse.c like:
>>>
>>> ...
>>>
>>> Yes, this was missing. Thanks.
>>> Can I have your SoB for this?
>>
>> I'm not sure this actually works as there's
>> some possible sparse parsing changes in the
>> use of __context__.
> 
> Yes, indeed. The following shoud be squashed on top of
> your patch (not tested yet on linux side):
> 
> -- Luc
> 
> diff --git a/parse.c b/parse.c
> index 4464e2667..4b0a1566c 100644
> --- a/parse.c
> +++ b/parse.c
> @@ -345,6 +345,7 @@ static struct symbol_op goto_op = {
>  
>  static struct symbol_op __context___op = {
>  	.statement = parse_context_statement,
> +	.attribute = attribute_context,

Hmm, so why is do we have a context_op and a __context___op?

>  };
>  
>  static struct symbol_op range_op = {
> @@ -537,6 +538,7 @@ static struct init_keyword {
>  	{ "while",	NS_KEYWORD, .op = &while_op },
>  	{ "do",		NS_KEYWORD, .op = &do_op },
>  	{ "goto",	NS_KEYWORD, .op = &goto_op },
> +	{ "context",	NS_KEYWORD, .op = &context_op },
>  	{ "__context__",NS_KEYWORD, .op = &__context___op },

So, can '__context__' be used in a statement, as well as an
attribute, while 'context' can only be used in an attribute?

Confused.

ATB,
Ramsay Jones

>  	{ "__range__",	NS_KEYWORD, .op = &range_op },
>  	{ "asm",	NS_KEYWORD, .op = &asm_op },
> @@ -560,8 +562,6 @@ static struct init_keyword {
>  	{ "__bitwise__",NS_KEYWORD,	MOD_BITWISE,	.op = &attr_bitwise_op },
>  	{ "address_space",NS_KEYWORD,	.op = &address_space_op },
>  	{ "__address_space__",NS_KEYWORD,	.op = &address_space_op },
> -	{ "context",	NS_KEYWORD,	.op = &context_op },
> -	{ "__context__",NS_KEYWORD,	.op = &context_op },
>  	{ "designated_init",	NS_KEYWORD,	.op = &designated_init_op },
>  	{ "__designated_init__",	NS_KEYWORD,	.op = &designated_init_op },
>  	{ "transparent_union",	NS_KEYWORD,	.op = &transparent_union_op },
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/61eb73ad-5c30-0005-5031-6584df72ad5f%40ramsayjones.plus.com.
