Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTPX72CQMGQEAFYNICA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id D85383A0107
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 20:49:50 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id d1-20020a1709027281b0290112c70b86f1sf4101428pll.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 11:49:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623178189; cv=pass;
        d=google.com; s=arc-20160816;
        b=K6dmAo2DE6n9t6sbONL7qwKhp1Pu0MElfnDSAwCj4nIXRj5xLhUjVXSI/GYD60NzgI
         v1bc2D4BhNMoE9+9Ra/C02LBpi/1JdfNrcD8aYNW8EzcmzEhP9TBCfB8cHO8y1I+SooS
         5uoDNPRPnFFCe5wBJtefUDlgSgFNELvrwBU1q4VtgwC98huJ3m9KbmCz2v+Xf4WZ4RoF
         k4zgKipHzct6jJo+cWDfDg2FUI00zlPvYYoQDHqHIGyXa7PjB0BG2gMN3G7y03LwaDc3
         rcAP7wl/nLYWGxtbegVmkqaUXEcqwVTslO3gwRJQlK3wdlIF1cgqwH3U4HGSMd3j4BVY
         V/WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=VyLC49MvjAt+wJluCDAwsvLXGayliNjpCTnWtu7Jqn8=;
        b=oJHqUWYmX473zAaOsEJNcDRwNPR0hw8kUhN8e26TfKLfow51KcgypJY8ypHyMck2Po
         2iK95k1CeaYSKVDVs6f9uM2zTlKZZZY9kYzuMtCC/T35lgIE20e+2qkXGUOLv55iMxQ2
         S384AJyaWpkX2MOUe8mrE2VUbLjXTI2aPM7h8zrtwirJItghDxD628u8YCBf9ZoCzG2e
         27xJeJ5Rk8nvBJ9Y93vyhI35WcLHavEk505qONwn1+ixLGjIft96jQWJbDkv57beAmyS
         WtkDMEgvWK7nYEmzqmaVaVk/DdjqTOdjITMF9xoMWqIWnlFrsKM50Wv82KORNCcr5stL
         xIzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=m9CxkHzh;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VyLC49MvjAt+wJluCDAwsvLXGayliNjpCTnWtu7Jqn8=;
        b=YUb9lPcpKBp2o1qURfTC8x2Nm3OCGET2sjXCl1mxvB5KP7bCWSdUe9ow/LDB3lwLRj
         gjLy4vxKIkamj7my2F+SsGodbldS6WGeQqAi4fsOJEWS6dvCFFTyyFf117SInJE8c7RZ
         i7PuiDjLdQCSTfqEY4nABOzT24ThYwNHJr9a8xq/0OtXEfOnlaBtO9AkQI9VIWdqUCRC
         Ws1a/Ra9B6vrQlHhDGS00zsFuL742GclYrgF1UhEy5QKSh3MGZ9qANBlFpMGUOV6TVE8
         o9BMvGLcjmkfGxcSMDt0eq7ClagvoP9mNWMSMXca63Jh79/o14DPZw0tzexdJA41eRi8
         J5Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VyLC49MvjAt+wJluCDAwsvLXGayliNjpCTnWtu7Jqn8=;
        b=p/FWIhIb5SNaF1wtsfJ+6grhnUvDgjrY5w8itn++cS0O6PjKnFOC6LWFT7YzxDVxsW
         i6ZGodGJcZo0BBntcax182tvzItcA1N7nze39OlvQks+6rzArVpIAVPjVlleIjK9qY+4
         ErS6cSVVNaMm8MB9bjf1rEkZqlF00h6eTSRzwHmdb/ADxvl2o7EtxtuCrZipUJ+lcXKU
         13oGQxhLo3gW5AaRhyN7gBeDC/33P2bRi3wn1IwyNeeDhv754pY/TlmLvxPda3URH+0D
         jxbY+ZqdDZP4Ztvk4V3bQEkPEtL1IHBlmk4MvQk3XYxgzkkVt4+/9CVjT4Ecyd6hUF3U
         aysg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304k64IAq7J5VuXVKx6gLo4GlU12oauzRCwWHMp5GS7BpmV29Ik
	ola0FOv8wTGQvOZaxiPKuB8=
X-Google-Smtp-Source: ABdhPJyXlH6BkGnlqkDNOnRkXvE5gK+GTgbq52M6UvBH0VoUsDJ2tL3n4XWylAPFfNCfAJ9qWqjw6g==
X-Received: by 2002:a17:90a:4410:: with SMTP id s16mr26366984pjg.25.1623178189445;
        Tue, 08 Jun 2021 11:49:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3601:: with SMTP id d1ls4604395pga.9.gmail; Tue, 08 Jun
 2021 11:49:49 -0700 (PDT)
X-Received: by 2002:a63:404:: with SMTP id 4mr15027551pge.180.1623178188932;
        Tue, 08 Jun 2021 11:49:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623178188; cv=none;
        d=google.com; s=arc-20160816;
        b=FM0wOie0vxWiYEUNOqiqFe7RJXQIJOz4JRkfxRvoYLpvvE1FPq/Zlk7KsVMT184R0V
         dvvRFXZp7daCIZ2AGO4y39A9AwlJ+njQY2En4M+pK98X9/mr/6Lxz6IbT49sTdHr/ci1
         KLSp8ubA96Uqb6BvmHMx52ZnsbQQZYhIa3prCjLau6NvX7h/N7WgD0y/j6Fyqf/tHOtG
         8cgIM7LtUEQShw9yFMS1CTgWasROOxxSKmevo+Gofl14PIzb2D3Je80Ps/kiuf4Ta+LJ
         ecPYX34Lk3gjcKCYT7MEZhcCUF4UzFhbGzYkZ9NfKNwyJ+vGhJp9rYnMhLyqQD1/Nd1T
         GNYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ZmOdfcCNAaL3072pTDyJv11bEBAuOBGVYrb6TudvEt4=;
        b=FwaX1GAM7ehqBetdqDTS7PbC/vrY8J5qG6EQoEnDdDURb0lNPq0Ljy2qz0+wrQsKAf
         W9GtynY+iO/qItaLvx42Dyz5khamAux0U5ZEbgbBR90dY8kBVQIRmEjGCK1S2NTyja0C
         +TCHKkIHgJmFCrrzyjyH19iGVUMMxvpeINuYSqL8S3Y//6mUexTmeSSsyMYmbd3zie3q
         MBZof8NsA+vI6dRaRqDAUVyjsS0jKEoiwoBqDwNt99Cl+PAdb0YJK6chSw9zPoibsuLU
         7TOImls9y3+AOIJsxhr2yUueNHTB69N4gv12VUCPxjkk7a6Q2Q/7Fn0xcaxC6k7IN7Ef
         W3+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=m9CxkHzh;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f16si1276199plj.1.2021.06.08.11.49.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 11:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id F1A156196A;
	Tue,  8 Jun 2021 18:49:47 +0000 (UTC)
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com,
 Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
 lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>, mbenes@suse.com,
 =?UTF-8?Q?Rados=c5=82aw_Biernacki?= <rad@semihalf.com>,
 upstream@semihalf.com,
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>
References: <20210604235046.w3hazgcpsg4oefex@google.com>
 <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
 <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
 <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
 <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
 <e351ac97-4038-61b5-b373-63698a787fc1@kernel.org>
 <YL+nb235rIfEdye0@hirez.programming.kicks-ass.net>
 <de1a21c0-f20a-cde5-016e-4b8ca92eafa9@kernel.org>
 <YL+0MO/1Ra1tnzhT@hirez.programming.kicks-ass.net>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <5dd58dce-c3a7-39e5-8959-b858de95b72c@kernel.org>
Date: Tue, 8 Jun 2021 11:49:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YL+0MO/1Ra1tnzhT@hirez.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=m9CxkHzh;       spf=pass
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

On 6/8/2021 11:17 AM, Peter Zijlstra wrote:
> On Tue, Jun 08, 2021 at 10:29:56AM -0700, Nathan Chancellor wrote:
>> Unfortunately, this is the VM provided by the Windows Subsystem for Linux so
>> examining it is nigh-impossible :/ I am considering bisecting the transforms
>> that objtool does to try and figure out the one that causes the machine to
>> fail to boot or try to reproduce in a different hypervisor, unless you have
>> any other ideas.
> 
> Does breaking Windows earn points similar to breaking the binary
> drivers? :-) :-)

:)

> The below should kill this latest transform and would quickly confirm if
> the that is causing your problem. If that's not it, what was your last
> known working version?

Yes, that diff gets me back to booting. I will see if I can figure out 
the exact rewrite that blows everything up.

> diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> index e5947fbb9e7a..d0f231b9c5a1 100644
> --- a/tools/objtool/check.c
> +++ b/tools/objtool/check.c
> @@ -1857,10 +1857,10 @@ static int decode_sections(struct objtool_file *file)
>   	 * Must be after add_special_section_alts(), since this will emit
>   	 * alternatives. Must be after add_{jump,call}_destination(), since
>   	 * those create the call insn lists.
> -	 */
>   	ret = arch_rewrite_retpolines(file);
>   	if (ret)
>   		return ret;
> +	 */
>   
>   	return 0;
>   }
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5dd58dce-c3a7-39e5-8959-b858de95b72c%40kernel.org.
