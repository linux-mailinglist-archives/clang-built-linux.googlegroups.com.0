Return-Path: <clang-built-linux+bncBD763O5S5UARBHMU6CEAMGQE3UF6EPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1903D3EF285
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 21:12:30 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id c24-20020a056512239800b003cec11473d2sf1825939lfv.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 12:12:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629227549; cv=pass;
        d=google.com; s=arc-20160816;
        b=GpxFJEj4pdj1bx/mTiLx5GxtkapG8l0ARN32gAV7iFSOHVGRYHu83UKHzmY9arrWGw
         DR1odUnC+v37tgBsuUi2SdrWoieU+5TOqF1vo9bfiZaJtFmsjGr4b4+g0f8OM8AGcdsd
         dNuZwJSOCiiyU0QpOJ+3gHUkcLs69MCDttWDQ4qocBUN2GKmXZbMsx/7lV3gAmXeRRxy
         T3kT7hk92hhBl4xEZFkmlm2Hujs8U/58HgRMhV292FnvtIPUD3OfPMNCMXqMwJSpNqWQ
         oJg0HpbCacc758M6po/8MKh9lQJiO8Bmb7ZYxLA8voyuR1EKtaCWBRaEoWlDeEWwyRzd
         a2bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:date:message-id:from:references:cc:to
         :subject:dkim-signature;
        bh=h4t9RXVBlD3NHFxfPQv+Rzl/5HOafZIVwtC6lMZv2jY=;
        b=LkqET3xbLCILXo8nlWiPzl+RUNvcHuYO6sc38lgmKaU3h2eJ4pDgJ3zeyPDjMaRgVu
         GyFWqcZ4yVMF9UX7Iio7QQtEcOgK4wKSz2tVvjiiAlRSEISbtc18LZI/02py6ssVgJom
         Uq8u1ehIUhj+A4UIjewnrGiplIn8GfJStwP5K+L9zur+iVjlfYg9VLlysi3xU1ECvjGv
         4HLHQgM4/EBCXht0Si97A1JWCyjDPlYd3kErdbeUX7q90NXuw/9SC5AYhlbxVlgCQvrS
         84ypwHsTlEZ0gf9xkXSuQqPXDAgwwVVr7B9c8TQLdj7NYoxL/02rBW2hlcN/gUiL6MPZ
         VMNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=n9hMp1TZ;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="b/AkNhdl";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=h4t9RXVBlD3NHFxfPQv+Rzl/5HOafZIVwtC6lMZv2jY=;
        b=NfEFS6CeET2rZZ/dhJURv5V34b71zyi4Yul22ES9BCxVRIXmWODlll6KXYEI1qIim9
         MN0xNkPy4LchNvt7Af+nYuU0PuprfgKAHAYqmDeSZPaLztmCuLNvdq1Tk7OvMYHENFW0
         hE/ALnzSJ1kSPRF3wonb2F+3QgJCFwXx60EkyaeZX3CBYEbTxVN1VeWCcj68f9LEZRlw
         4I/RxLJpXg5VbzPMUVc4FmEBwRa6VgA6+EeeHkISVE0cWL7nItN4GGYUxyCQhwea0t1v
         ggsdI5P1khXAOW/nHpChpqs4lS8STu15WRGCImLBPR1KGXK16ly+0vXvVnrz5/qi0ag+
         XV0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h4t9RXVBlD3NHFxfPQv+Rzl/5HOafZIVwtC6lMZv2jY=;
        b=LQt4qf8th8yC4qhbJcSSZz8MtuiAh8ykAj9F/1Yd19/nOGmiovJ9Rnx/nmZrPWlh21
         C7AqbIPAu7qz0DVdfHPJll26+kUyN1TTYG3SF44h3z+CQyKzn2B0xC3EOQ3PV0stwg9b
         gPHENwXLthVwgBue1AZqWCjZb55Qim8Fn7/tMaWecMj+mLxyW7o/C63U+7/B6qRYlPH4
         IhoANscHXn0eCBlJDJgBqt2E5/jx7edLW2Yi95YXl3IhPf25jH1Lgwt6OL1A1SpquPsK
         1s7vwri/I7ZrifjxHEnQ+7kuAqwaojwTZZmlf/9a5DVrJ3GgSlH7VnqenI/VEhxSK4Ra
         whIg==
X-Gm-Message-State: AOAM5329SDnIZVIKNDDOuNhBGuXkV1ZZWk2jT+dDFvdispOBpUjuoR0M
	90si7kKl3E/tIxG7cUU7lZ4=
X-Google-Smtp-Source: ABdhPJzwx0XwKyEfWIf1UF14Uvj4eo/Rnz+a7QIhwKb4mm9UZUzuaydMS47qiZKYME5U6oNKd4QgxQ==
X-Received: by 2002:a05:6512:3e06:: with SMTP id i6mr3372153lfv.81.1629227549632;
        Tue, 17 Aug 2021 12:12:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:31c:: with SMTP id a28ls717928ljp.0.gmail; Tue, 17
 Aug 2021 12:12:28 -0700 (PDT)
X-Received: by 2002:a05:651c:11c7:: with SMTP id z7mr4514333ljo.288.1629227548571;
        Tue, 17 Aug 2021 12:12:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629227548; cv=none;
        d=google.com; s=arc-20160816;
        b=zv/RzTVz82uUHP4o/x04yqyJDvdfoQhtpMNoXwKPZhyAmoYI0FtHoDqUdKTdX3TOCC
         s2+sxSeHl7wY/5Q3buHATOyL3sQcvpinL7WKrUkGNO32WrjNavlfsTaEixm8uZuq/Z3m
         cGF8y/VHuTtHsG1Cg0hD1iDAoeIb6rjEmapq3CYUpCz9mt333JjJ8Zx1rPXczQpFRd3/
         FWvkw5U7qckpoplx6IxHQIibbNScriyU00kE3MQvLKXfZ2i3++CyBF4rAHOhZo0d6ukS
         qZvy4aCc3/Giptth8gOcydWqPXDPbRX6ABKTTPhWf5tXjF8dm2DQVLn16zesUDLiF5LX
         BDkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject:dkim-signature
         :dkim-signature;
        bh=CxTyFKdy0aUJpHYltMttpgWdJiw5Yr5ibSehg0Pendo=;
        b=ZKolEZtW2cZ5090vnpwRsp8bvHTNbr35gPnRs17HbyKZkZ+myzbn7UP3GxZVC13Wag
         ZKhbISFF492XDTWb7+vbmyv22v7UEePE7W9CFDpceAYo8heHuoKpOdZpOD30vH6ObgRP
         k04zdJe9+tt4y2ktNoQwnlNovifJIImZWgFZcErOfCzOTWyYEguiZ3nVT8u+WkREAK2i
         6bI8fMjXJpFNckOQgXf9Led/5LMzV0/swy9mS4P0rYue9VItSqJ8kymJnf5in7hWjuT8
         AUm2gtXJrooZ7JDzjKBdlTdYLVTNWMHhpqL+5M+J+P9gbQK1fxwK5rNrwPA/v1NlfV5U
         +/XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=n9hMp1TZ;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="b/AkNhdl";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org. [80.241.56.152])
        by gmr-mx.google.com with ESMTPS id c35si165484lfv.2.2021.08.17.12.12.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 12:12:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.152 as permitted sender) client-ip=80.241.56.152;
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:105:465:1:1:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4Gq0yz67fVzQk2q;
	Tue, 17 Aug 2021 21:12:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172]) (amavisd-new, port 10030)
	with ESMTP id AcoYWNv3GZdF; Tue, 17 Aug 2021 21:12:21 +0200 (CEST)
Subject: Re: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings
 v2/v3/v4
To: Borislav Petkov <bp@alien8.de>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "graysky@archlinux.us" <graysky@archlinux.us>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "mingo@redhat.com" <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Masahiro Yamada <masahiroy@kernel.org>
References: <269701460.117528.1629210189833@office.mailbox.org>
 <796036867.117557.1629210288168@office.mailbox.org>
 <YRwBs89eogLJEiRn@zn.tnic>
From: "'Tor Vic' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <197255a8-5973-9b53-2405-d5180538580f@mailbox.org>
Date: Tue, 17 Aug 2021 19:12:20 +0000
MIME-Version: 1.0
In-Reply-To: <YRwBs89eogLJEiRn@zn.tnic>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Rspamd-Queue-Id: BEE0218BF
X-Rspamd-UID: 4e851b
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=n9hMp1TZ;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b="b/AkNhdl";       spf=pass (google.com: domain of
 torvic9@mailbox.org designates 80.241.56.152 as permitted sender)
 smtp.mailfrom=torvic9@mailbox.org;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=mailbox.org
X-Original-From: Tor Vic <torvic9@mailbox.org>
Reply-To: Tor Vic <torvic9@mailbox.org>
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



On 17.08.21 18:36, Borislav Petkov wrote:
> On Tue, Aug 17, 2021 at 04:24:48PM +0200, torvic9@mailbox.org wrote:
>> Add new generic x86-64 CPU tunings introduced with recent versions of
>> gcc and clang, as documented in x86-64-psABI [1].
>>
>> This is taken straight from graysky's CPU optimization patch with minor
>> modifications [2].
>>
>> [1] https://gitlab.com/x86-psABIs/x86-64-ABI/-/commit/77566eb03bc6a326811cb7e9a6b9396884b67c7c
>> [2] https://github.com/graysky2/kernel_compiler_patch
>>
>> Signed-off-by: Tor Vic <torvic9@mailbox.org>
>> ---
>>  arch/x86/Kconfig.cpu  | 26 +++++++++++++++++++++++++-
>>  arch/x86/Makefile.cpu |  6 ++++++
>>  2 files changed, 31 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/x86/Kconfig.cpu b/arch/x86/Kconfig.cpu
>> index 814fe0d349b0..a2c872aa5a0b 100644
>> --- a/arch/x86/Kconfig.cpu
>> +++ b/arch/x86/Kconfig.cpu
>> @@ -294,6 +294,30 @@ config GENERIC_CPU
>>  	  Generic x86-64 CPU.
>>  	  Run equally well on all x86-64 CPUs.
>>  
>> +config GENERIC_CPU_V2
>> +	bool "Generic-x86-64-v2"
>> +	depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
>> +	depends on X86_64
>> +	help
>> +	  Generic x86-64 CPU.
>> +	  Run equally well on all x86-64 CPUs with min support of x86-64-v2.
>> +
>> +config GENERIC_CPU_V3
>> +	bool "Generic-x86-64-v3"
>> +	depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
>> +	depends on X86_64
>> +	help
>> +	  Generic x86-64-v3 CPU with v3 instructions.
>> +	  Run equally well on all x86-64 CPUs with min support of x86-64-v3.
>> +
>> +config GENERIC_CPU_V4
>> +	bool "Generic-x86-64-v4"
>> +	depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
>> +	depends on X86_64
>> +	help
>> +	  Generic x86-64 CPU with v4 instructions.
>> +	  Run equally well on all x86-64 CPUs with min support of x86-64-v4.
> 
> Every once in a while, patches like that pop up without any real numbers
> advocating for the additional and perhaps unnecessary complexity.
> 
> If those -march switches don't bring any measureable improvements - and
> I highly doubt they do - you shouldn't waste time with submitting them.

In other words, I should back up these additions with benchmarks?
I have some slight doubts too, but I'll gladly do so and provide
some results with a v2.

> 
> Thx.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/197255a8-5973-9b53-2405-d5180538580f%40mailbox.org.
