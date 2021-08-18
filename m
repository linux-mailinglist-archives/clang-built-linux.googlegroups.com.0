Return-Path: <clang-built-linux+bncBD763O5S5UARB65C6WEAMGQEGQ5BFJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B993F0B0A
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 20:29:16 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id e12-20020a05600c218cb02902e6bbacdcd1sf930419wme.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 11:29:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629311356; cv=pass;
        d=google.com; s=arc-20160816;
        b=bS26pJhQK6eWhaAhcRYldG5g71mnfXBP6qL/zYGu+GhcBCeZc+Oi8Sq1lSwSQGAumj
         4E+oMrvzJ9KkEyhAPGKS81SqnOhbpl/ynviFwKymFI1M4weO9ePP6nBaxjKnESuvBPOa
         nkh0RT/+z+FxUWFuqbXc9ao+pFxe9QCgk4znpLm83aOZIJol73+VVEQVStjAuHX2st25
         iLiGuzOsZ3RIjHZcXjXldaYP0guGCE5OmraUNVvFIjAN1r3wGJD307sMPQAihl0UF9Sj
         4tZtHTiQHeSqcO/yfM1uqH6zEmNC84zamNSRA180utt07ReWs0em1MKjolMJ6qNAjsxD
         A6uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:date:message-id:from:references:cc:to
         :subject:dkim-signature;
        bh=Gdjvt/zTmsdU9dcjwVoLkXYQm8WvQIxtQLAdnXXtEfA=;
        b=rdMvMhVKbFGbRFiHBolX7hb3jjNke7WXsbkT25dUGILDJSsdeCJtDBrzqSmgKpXN9G
         w1lhNtbWNYAIDxRIazlnBUA8+o8O+7NOtMAefXtacCvLNvhLP7zYZtlP93uOD7i2oALj
         E99vE5aJsgr7dXreyG24IG2ZqT8rRYjTax/bZvuXy6Df+A27kKJr/tI68M1Q5qr2k3JT
         oVSGVYXw/T3gMT9Zrf2ih7cx0nyLoBjrf4ukRLpt2NpHkgGEK8EQoviAY2IaKRL8nApU
         tqwY47IF5c3ZRbM1xB/MCRHajTWzQrUE6QbLqquxcZ6bECQaC+gXSpb4gzLSAIaCvhEy
         g9ZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=Hhs1DQWI;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="KsPfb/oJ";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:201 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Gdjvt/zTmsdU9dcjwVoLkXYQm8WvQIxtQLAdnXXtEfA=;
        b=LdANl1TDNsKLIEf59ICMEfewLwBciaAIty2YM1ZU84eerShYMmWZ91puf3wC9n3ccl
         GBSXYTtb7mpbqNvcvxXWh047ofSggDTj4Pt7WgIjCHrlxcg6dFaFG5TAuWVGbeBenueJ
         ApDH26kVrdGqPkI0ul9hzX7V/hr3MJj90YrPiCOx9gOzxWKCMEy0ChUimfumJEdCQxDr
         /Ay1kAqlNGIQwvdLejkaHR9wSstq8hfNxfc6U8h4zBsI6c1sEjQw8iFLsVL1355On8hF
         U6FnbTKo0qVKIhgQt0vLx4oBiNckalwWwZ3azBCXNcCP1r5JOC5TcGZZb183VEIkSVNi
         BauA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gdjvt/zTmsdU9dcjwVoLkXYQm8WvQIxtQLAdnXXtEfA=;
        b=si2hLXqifbIVLbBm4gQCN6gS3fYpG/ySyKsSmOKuXbSYrJPpTGxGkkor61jdIYWkzM
         D7hFqY08EVubvlePWoSu+4wCJjXz01EaXrov4q4kOwu83FmWcjv7vXVbwfFnAeANj+mm
         C03HiW4cSRkPnsfaPR5dRd9k0ULkxxTXSIAuWZrG6CSO1GgYunwBPF4PO0lhCkj50uNh
         DoDECW/E8nfr8lK6zt86W7w8ireXj6g16Dglua6b6KQzZ5pzcePb1aL+oTlj5ytQ3RJh
         bpUzIXNSgM7YCnCPFNXyjtgWYDEwpD1a7cSxdA1rdRCkHYgzwEBbi+pYOnTLtc/+PsOx
         09Kw==
X-Gm-Message-State: AOAM5300xWUKLshms8gG2Y5tUv3xxZ+iRyWmlHeu1gwQPpXa0hS8Qbl7
	NQe2H2D2RreBpOnOmcTdwz0=
X-Google-Smtp-Source: ABdhPJyUsKPqINvNwjpawdQYldHZ3LeKuTuopmkcaT/VV4qUUbPhZeowqazF7nnHEFkkgaHoQ8idPA==
X-Received: by 2002:a5d:4bd0:: with SMTP id l16mr12641671wrt.246.1629311355989;
        Wed, 18 Aug 2021 11:29:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5383:: with SMTP id d3ls1246823wrv.2.gmail; Wed, 18 Aug
 2021 11:29:15 -0700 (PDT)
X-Received: by 2002:adf:c044:: with SMTP id c4mr11879194wrf.275.1629311355110;
        Wed, 18 Aug 2021 11:29:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629311355; cv=none;
        d=google.com; s=arc-20160816;
        b=lEd0GDJsH4FZNvCCiflSpiOa3D+m96lwT3ZLOzNN+UgYxeGthnusi31EJPpnz+Lz06
         9m8G8hAcr3ZIUyKtQb3YktY6rN96p3dql9n5g5fiMZwQ6Y6lXfqhI+qE+h2NESXRhYP8
         dVAE+wOrlaif7sVkUbyO2uUdJmWMs8onEzmgwUkEZu37EZGRwZJEsKMbJ9MAbQwCbFfB
         yylq4Mxe0+2nUohfkmRqiC+/g2ksRaA7W6KMm5uyZjKSEaix7e6RVBqxmkfaTAUzXUUU
         Vl0v3iHXrAV+bTxvGn7QwoR9tq3rxeNtgtAew1TV2AiWD+C6QKeCAlabhV6KQ8ho7yj6
         XwLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject:dkim-signature
         :dkim-signature;
        bh=w5sdReL5aVMcQw1mZdSVeTxvGoot/SnqNO7EPVVP9pM=;
        b=XV483PoikhQIhyZawL1y/of8RqHAfHBvBNfOLuammpxhMdwOZtKS3MGvdtGAf1vAXo
         fRlUsy8e69kDVodcgUjos/rXXC4ceHINjL6ZtrD41AaMEUS6DCKimhI/2mX3AXLSPDVo
         KKJR45Mt1M5pgB3d1m0szJWVL1sPprxe/KKKBlujsSGSn6WC5IHlSsWZs+qbUbQDlEAS
         Icx3zkshZA4K9IwAfIreOMOshHbdoMu8/YUS4vXYT87zQDlCWftiq0D1W/dNtufEBf1n
         8e94nX/cG5UD6+zygf31A1p+zdN+hEgiFPAtl7S1EuCQhkbG5FHpm7QU1/DIbktwarJI
         E3TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=Hhs1DQWI;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="KsPfb/oJ";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:201 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org. [2001:67c:2050::465:201])
        by gmr-mx.google.com with ESMTPS id z70si471338wmc.0.2021.08.18.11.29.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 11:29:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:201 as permitted sender) client-ip=2001:67c:2050::465:201;
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4Gqbyf5wZdzQkj1;
	Wed, 18 Aug 2021 20:29:14 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
	by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de [80.241.56.125]) (amavisd-new, port 10030)
	with ESMTP id VlfYjx7ppfLM; Wed, 18 Aug 2021 20:29:11 +0200 (CEST)
Subject: Re: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings
 v2/v3/v4
To: Borislav Petkov <bp@alien8.de>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "graysky@archlinux.us" <graysky@archlinux.us>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 Christoph Hellwig <hch@infradead.org>
References: <269701460.117528.1629210189833@office.mailbox.org>
 <796036867.117557.1629210288168@office.mailbox.org>
 <YRwBs89eogLJEiRn@zn.tnic>
 <1708009975.124311.1629299321026@office.mailbox.org>
 <YR1KDD/azm1IDr9u@zn.tnic>
From: "'Tor Vic' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <25f1e81a-84f7-e63c-2989-cd4fddd695e7@mailbox.org>
Date: Wed, 18 Aug 2021 18:28:47 +0000
MIME-Version: 1.0
In-Reply-To: <YR1KDD/azm1IDr9u@zn.tnic>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Rspamd-Queue-Id: DC5BD1813
X-Rspamd-UID: 643fc7
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=Hhs1DQWI;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b="KsPfb/oJ";       spf=pass (google.com: domain of
 torvic9@mailbox.org designates 2001:67c:2050::465:201 as permitted sender)
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



On 18.08.21 17:59, Borislav Petkov wrote:
> On Wed, Aug 18, 2021 at 05:08:40PM +0200, torvic9@mailbox.org wrote:
>> I ran some quick checks and benchmarks, and your doubts seem to be
>> justified. A 5.14-rc6 kernel compiled with the default 'generic' and
>> one built with 'x86-64-v3' even have the exact same uncompressed file
>> size. Benchmarks were inconclusive as well.
> 
> Lemme preface this with a IMHO:
> 
> Yeah, those -march machine-specific compiler switches don't really
> show any perf improvements for kernels because, well, if you look at
> the instruction stream a kernel executes, there's not really a whole
> lot left to optimize after -O2.
> 
> Also, the percentage of time a machine spends in the kernel should be a
> lot smaller (orders of magnitude) than in userspace - the operative word
> being *should* here :-) - so there really isn't anything to optimize.
> 
> Not to say that there aren't a gazillion other places in the kernel that
> could use more eyes and testing. ^Hint hint^

That's something I'd like to help with, hence my (not very good)
submissions.
You're one of the kernel colonels, so I'm happy to get some *useful*
feedback which enables noobs like me to get a better understanding of
the kernel stuff.
Also, credits to graysky because this is actually based on his work.

> 
> Thx.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/25f1e81a-84f7-e63c-2989-cd4fddd695e7%40mailbox.org.
