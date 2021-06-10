Return-Path: <clang-built-linux+bncBAABBHNMR2DAMGQEYXQ7LCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id D73DC3A472B
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:58:06 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id 5-20020ac859450000b029024ba4a903ccsf1846631qtz.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:58:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430686; cv=pass;
        d=google.com; s=arc-20160816;
        b=jLJ0k/lkQ1n64B+iitc0CGhs0sJABUm9CGt+H73KQZ7o8rY0NQpZU8g58vp8L8wpUi
         8cNPWlmcgBU0yA5faCgrxg11u9gYiobol1uPWpGYoAJwxQlMrfXFexUZ0ZT3wIhC1fqt
         geJ53Z4p2/34M1eTmv7w9mxmTn5+XOqStee0n30b0ZDze4VFf3bqA2QOfvhYtZn50BDE
         7ztoMx7dDenkSXXEDULRlXfiEP/DhvBFsJkYPqflYgJgrb8KKTILGu8j/fX4Ttg48avP
         niNu8/w0aqk2pxAqwiHxXVagPY6fvt2p3zLvaVcLDFv2YKueYsSF1NQbG9qiPie+oY88
         BBNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:date:message-id:from:references:cc:to
         :subject:dkim-signature;
        bh=A+RzzdATUuz7jhtnt7vNikA1ju4JffOG2iHpIEgfYxQ=;
        b=xzckskCzGnBY2Ryf89cWiyKAbszAM2H6CpUX9xo+cWaIMF/k92dKiOY0zbR1gb/bo/
         IsAQXg20P/T2sgJmI+UFp6XL+828rXvitBUBE7svbDki3zbu3Fbbagj6jIc0lGlXOmHg
         mU4zGI/d02fw4aiQHwusBEgwFFAUUKTWWztpv9Hav3N3z8UF4ZL32lrZv92NdNF130xT
         nL1LJ1QokESnptMPmVU7qU2oaf9CMlFhFbgfpWS37gkTXbfi05oc+hZm7KCrcJWsdXjy
         NontmVXM10c+SWsRSrWDKb/4cIfcOxoEpjYhPIBqbK0i2JkLmlfoDMDEwfEQX5qgXOPv
         PMpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=UmboHjcD;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=k1Z0W5I+;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=A+RzzdATUuz7jhtnt7vNikA1ju4JffOG2iHpIEgfYxQ=;
        b=YRyKSbxfuomU3dyOA/DrLs/WlvhWHYj7Ju1HX7Wm5pKEf0XfivBVkF+tu2dEpx1Lo7
         XjruSCb5dsv+4vD30aarwWpEmktADYkK4calgngDFzNww5urGzmvpdwQAHEDK2TkTVYR
         sVP5O7eHBquCiJXfRdCUtYh+o2TuCwo4oPgrD2h2zNqEt1Z2PeAWSaoXQlWB1/uEra+c
         YaX/OI+HW7lKxumR5E4qNcXavZ38uj1uTqccy2h6kMGHttoTJYVdloHLO9u5wEvHhGEW
         7vL6mnr/CFHD2TTbPi8z+EKgrfqXwBDj0C4LjJGrTRkQSOkbShFxzpuj+rF7qgW26H6i
         2LmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=A+RzzdATUuz7jhtnt7vNikA1ju4JffOG2iHpIEgfYxQ=;
        b=L3LlFoWP2FYQ+1Iqwx7qo1rCOQDWjotinQKA5ci2bIdPb509ZR3i8VY6MWQSQ78SzG
         oPCEIMrABUvu4pSSh/gpVkWbmn5nmU7Ar0mJ5M5jaEM8S9e8/5T4OHp4erHG9h0ve2Zx
         uYrV2rFbeFTuUgQegYdTwYaPkxreBmre7OxL1eIiaslvVXuqZK6AUEfid6MxWQbHmQyd
         xC7QyZAfmeCKnBmf8kfEO3yK1yxrmPgWqIJI0xMSQl+NexaOyqCIRyuiX6s5I+t/kt+d
         gZ5J7PyCxfAp+6xVBYXazhW1ohlSFXcMo2mIbTkGMpTGYpWJr3cYNczbR9icznFBD5GW
         0P0g==
X-Gm-Message-State: AOAM532PYSKF/uDl1kKbq5ZSQwi0Gvy4S7R1tndzYmSQWRDcqSgwcith
	3k+nmD1qriuKun8ivWKScpg=
X-Google-Smtp-Source: ABdhPJzVej4yWKJizmDV0M/nGpsXeKLr8eGZtVjnD21+ff9TjTDcm/dU7TcY9pJlJuZwWnNbui9E0A==
X-Received: by 2002:a05:6214:207:: with SMTP id i7mr5895415qvt.10.1623430686023;
        Fri, 11 Jun 2021 09:58:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5ace:: with SMTP id d14ls3880204qtd.7.gmail; Fri, 11 Jun
 2021 09:58:05 -0700 (PDT)
X-Received: by 2002:ac8:6998:: with SMTP id o24mr4654516qtq.113.1623430685688;
        Fri, 11 Jun 2021 09:58:05 -0700 (PDT)
Received: by 2002:a37:b342:0:b029:3aa:2738:289e with SMTP id af79cd13be357-3ab436f4305ms85a;
        Thu, 10 Jun 2021 13:16:45 -0700 (PDT)
X-Received: by 2002:a05:6512:344f:: with SMTP id j15mr346817lfr.175.1623356204689;
        Thu, 10 Jun 2021 13:16:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623356204; cv=none;
        d=google.com; s=arc-20160816;
        b=N1foGxTjWfjITmkaAKTpkkMqBrAWmaFuPCqmBGA0PT3vxNx57g5bNvf6mju826snQL
         e4D/OaawGROmNDEnKur0hbydpCTbmb9IUY+6v9ycGQX6VnBuZwSRKd4evfShJzgBJsvH
         Fb3BLaC/RHqDPN4KCg3IVKXq3ywjZd0RzvQNrTWphjc5DTTh0KptcnMVHgkaJgYhQruk
         LsFr2u2okti9ljy1nqUxnr80Eo3ny/I0pIF7qy8/EzXsv8kUK3pq1P1XLAB5osfHhRq5
         gWzoWAYFORCZFqtje8cBp0BFLqYKBmlOfrdo5Bw3rXuD6Q8GgueW/ceg28gYZXlVoMgC
         n4Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject:dkim-signature
         :dkim-signature;
        bh=2MXpqMDwXkXCnsvAQ3PZgKlt0z04GrXO8gPeprqPtTw=;
        b=WW3UKPEIR9Bbj4fRQ7eNxA3H3xhWU3URd+LtxmAJgqf+C9m+kYlvHRgbDwD52uOzp5
         6CmdYJV3RQas4Z4JsFEaqi6LTb3ngzmlFPK2EW3MqMaU12iND/nvyYVCpds9LBqcsaD4
         W0QR8RjjU49e0MhG1uhKRAuFEfqbHRuYRJ2T/QsY1/GY4o9Pi3XrbQkcgU4q/tr1LqvA
         6aayHAJ294oBYeIH7YesnXeO8O5JPTM/+2lj69O7dW69ZJ4Web390vV/IIkFLX5Nw6xR
         JAsxsrUG3VTgpnqiSYQupnmtVGlPuWuPMcBOoDBHTl6n84YKBP+akIbygX6K46HqZIAw
         l9uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=UmboHjcD;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=k1Z0W5I+;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org. [80.241.56.172])
        by gmr-mx.google.com with ESMTPS id q10si163102lfo.11.2021.06.10.13.16.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 13:16:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.172 as permitted sender) client-ip=80.241.56.172;
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4G1FcW6f71zQk2T;
	Thu, 10 Jun 2021 22:16:43 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
	by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de [80.241.56.125]) (amavisd-new, port 10030)
	with ESMTP id S8nOqlyuYKyU; Thu, 10 Jun 2021 22:16:39 +0200 (CEST)
Subject: Re: [PATCH] x86/Makefile: make -stack-alignment conditional on LLD <
 13.0.0
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "nathan@kernel.org" <nathan@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "x86@kernel.org" <x86@kernel.org>
References: <214134496.67043.1623317284090@office.mailbox.org>
 <CAKwvOdmU9TUiZ6AatJja=ksneRKP5saNCkx0qodLMOi_BshSSg@mail.gmail.com>
From: "'Tor Vic' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <156d8beb-2644-8c2b-789b-104cf9268c8a@mailbox.org>
Date: Thu, 10 Jun 2021 20:16:38 +0000
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmU9TUiZ6AatJja=ksneRKP5saNCkx0qodLMOi_BshSSg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -5.56 / 15.00 / 15.00
X-Rspamd-Queue-Id: 84FC5181E
X-Rspamd-UID: fd5769
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=UmboHjcD;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b=k1Z0W5I+;       spf=pass (google.com: domain of torvic9@mailbox.org
 designates 80.241.56.172 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
X-Original-From: Tor Vic <torvic9@mailbox.org>
Reply-To: Tor Vic <torvic9@mailbox.org>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>



On 10.06.21 19:20, Nick Desaulniers wrote:
> On Thu, Jun 10, 2021 at 2:28 AM <torvic9@mailbox.org> wrote:
>>
>> Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped [1],
>> leading to the following error message when building a LTO kernel with
>> Clang-13 and LLD-13:
>>
>>     ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
>>     '-stack-alignment=8'.  Try 'ld.lld --help'
>>     ld.lld: Did you mean '--stackrealign=8'?
>>
>> It also appears that the '-code-model' flag is not necessary anymore starting
>> with LLVM-9 [2].
>>
>> Drop '-code-model' and make '-stack-alignment' conditional on LLD < 13.0.0.
> 
> Please include this additional context in v2:
> ```
> These flags were necessary because these flags were not encoded in the
> IR properly, so the link would restart optimizations without them. Now
> there are properly encoded in the IR, and these flags exposing
> implementation details are no longer necessary.
> ```
> That way it doesn't sound like we're not using an 8B stack alignment
> on x86; we very much are so; AMDGPU GPFs without it!
> 

Will do so.
Does this have to be a v2 (with a "changes from v1" info) or just a
resend? It is based on mainline now and the line numbers have changed.

> Cut the below paragraph out on v2.  Thanks for the patch and keep up
> the good work!
> 
>>
>> This is for linux-stable 5.12.
>> Another patch will be submitted for 5.13 shortly (unless there are objections).
>>
>> Discussion: https://github.com/ClangBuiltLinux/linux/issues/1377
>> [1]: https://reviews.llvm.org/D103048
>> [2]: https://reviews.llvm.org/D52322
>>
>> Signed-off-by: Tor Vic <torvic9@mailbox.org>
>> ---
>>  arch/x86/Makefile | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
>> index 1f2e5bf..2855a1a 100644
>> --- a/arch/x86/Makefile
>> +++ b/arch/x86/Makefile
>> @@ -192,8 +192,9 @@ endif
>>  KBUILD_LDFLAGS += -m elf_$(UTS_MACHINE)
>>
>>  ifdef CONFIG_LTO_CLANG
>> -KBUILD_LDFLAGS += -plugin-opt=-code-model=kernel \
>> -                  -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
>> +ifeq ($(shell test $(CONFIG_LLD_VERSION) -lt 130000; echo $$?),0)
>> +KBUILD_LDFLAGS += -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
>> +endif
>>  endif
>>
>>  ifdef CONFIG_X86_NEED_RELOCS
>> --
>> 2.32.0
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/156d8beb-2644-8c2b-789b-104cf9268c8a%40mailbox.org.
