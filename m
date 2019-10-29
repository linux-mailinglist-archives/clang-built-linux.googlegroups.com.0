Return-Path: <clang-built-linux+bncBDB477GYKIIM3FPC5UCRUBFGEEONW@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA19E8F95
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 19:54:05 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id t27sf1522502lfk.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 11:54:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572375245; cv=pass;
        d=google.com; s=arc-20160816;
        b=pm1rKiEquGIGvl2mJW+cMr7gZJIY8zWUq9lBYlPH5gkTToQm/netO6XabWrv4VQSQm
         fhiFyCjzgGH46z7nFz7o2OSrldGQEK+LnpR59z8tndcJxomE2QNaXUhBvrooWZ+kcC7d
         apdbJcWODNWmqt1TJ2phGddYrTvEqGQCQgxrhhx3KJlwQDuG10d2wj+ZNmfkBmYvNSrw
         LBR19ql1JTb5OnSdDfk2rglN8xUO6gsZR+zev5AP8BtQnLvT237Kt/v9O8sQE7+T3bSs
         El+4j1ydeNAyM13IZmoCQ4chwucF2Xs92nbo/XZOdrL4yCIKkb+ayfwq9nM2xRFcmMKC
         Iz9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=r7dVAS9KvJ7WwFLJtf15MejmIE/C0VnQ3kEA+HxInr0=;
        b=hL1sPv7IbxHOlB6ESHrD5440zE5EeloUFLIjoVbxxP3+1khbL4uhOPxR6+a++eAQL7
         jAob8WwKEt2xz81PahQZQycbGARhbee9LNV2W9IplSz933QmyTnQKY/cA50UP+khQEAc
         CpIB81TSiRfKKMtbULcJzQZHWYb080bS5qbHOLnsc8cVMZB5ov8enixXktlii8AbAV9D
         fLn9oqr9/8ImoN00dX2kGuKkKULYLwnccKZjy4ig28zkgg40VKXrSiuN9FGOGqLk+gzS
         Nd3W2V9OgFUK7cmMNrKQqCZaS6aW4iaULELRReb3tmPVEEL7AKJIN50j/EdzMRhUMKgO
         smOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@plus.com header.s=042019 header.b=qGlZh9wk;
       spf=neutral (google.com: 84.93.230.244 is neither permitted nor denied by best guess record for domain of ramsay@ramsayjones.plus.com) smtp.mailfrom=ramsay@ramsayjones.plus.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r7dVAS9KvJ7WwFLJtf15MejmIE/C0VnQ3kEA+HxInr0=;
        b=SLap5+G2Fq9dG+gxNwNCHKEyc8pA9mwa3i5PSkxZyAEToDNQ9D+DXsrC3ddxZQpRAh
         CI5fjRx0yUAarXVio6SrirxVaOB/p3zw6Nbtaod7j0JDaOOnqyNLaF8TDpSJCCeh9o9P
         rQDUXCP98xjft1VKA87pUNXw5/Kj8eVrmKf6s4HBShsgWXxnmayRk5T+WXTKpAiu1jtd
         KbYVhgkxz3iIhEide0OTMsojoo639TT1pUC8vuLjOTIoy1i/CtvoucIFfd/nDSeODDct
         /gmYc0tm0w4ANluNIsAYbVkh03ve8RrUL1qRu1hSKhShW3dUEEiWv2TzaI79si03rmzD
         p+1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r7dVAS9KvJ7WwFLJtf15MejmIE/C0VnQ3kEA+HxInr0=;
        b=hzotfIXNepfp88NNvoogvJjJ38IXo69hQd5U1yI4p/O3dYLKm9LFyk8u48fQ+Xx5x1
         YS2MbsWwVwgkfgsaK/nOvfrhN4gl6gx5GXUPkXwjNI/Q/l+T1/tT0AyMqNIYJgGfcCsl
         eYxCl7AypaJAEuJtgfii6VUVdNil5Tq7mfGlpA4DpTTW2W2WjTUN09bcrI6kelEQsG2G
         +cFuUX/rJIhYkKcWVEhD2LJ8qzHxnKNFBDtF1UG+DnQC6V4ZmXrubyrLITjnBXZ5xaA2
         HvT3otB++2MlVT9bKUZCEwvsHE6Zpa2qJHPuq5qZJTjmzFpT92uGV83Gch2Qj+j3xrmt
         iIAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVHWlY5dlqnsfICp0fumq93ZvW2JlInP1WZkQ2pAr72G1DnDmQY
	4XcESXH4ruxEf/ajkx/hjfw=
X-Google-Smtp-Source: APXvYqxSe3bTCKjgUzDkFmv5P4RYjdYIsFAGpOswwVBHeB+LPgCYrjPidRGn0kcCXZ+E+2kLua+n6Q==
X-Received: by 2002:a2e:87c3:: with SMTP id v3mr3339928ljj.61.1572375245123;
        Tue, 29 Oct 2019 11:54:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4190:: with SMTP id z16ls2350308lfh.7.gmail; Tue, 29 Oct
 2019 11:54:04 -0700 (PDT)
X-Received: by 2002:a19:40cf:: with SMTP id n198mr3425035lfa.189.1572375244407;
        Tue, 29 Oct 2019 11:54:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572375244; cv=none;
        d=google.com; s=arc-20160816;
        b=gzS+XBOB9EpV2SeXci4Ffp9Wbpa7RAJ3fu+lueePDmgICbrwQzkbGDAADQKcRW16nn
         pujecOvXCd26thFyJg1zPrIW/509utuv6IKY/afWUXB54cxsm8YR9VX2N3bXY1w7j5BS
         uGObvOvTmvEgdN60NHby57ndJrEq4ydBDVDcb6WlOXq2w2ln+lL6WdQh47y0kKZiUdCK
         t5XbMbE8sdQOEfMi53HxmSzuCM7iHEo/4mUnTwb2jVhPVKeaTNkVGfG9fqr0XbdBMOBB
         /ZadWWp8W91c9Oy2c7H1udM87e4PTifrnlBKREBrCK8/vv5bb1cbpXR6Vbjou/1ZcoLX
         t3tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=I4ZZ/wVJJQ0guXrWMZRkvryKrerb1ReP5+TDi/d996w=;
        b=r0hKzSy0b5y78EdgsZCNSBFwFVy9hGBaiAfuCISBOAbfAmURnimod1DDTnKcR1uwgn
         +A7AIKUmlcVG2qlHWUk0eGQyhfzxYu+k3PAJdZxl0l80W5QDgR+wq8nZ9RBltvwPt2K4
         OmQ/UxCYRNzndjLsvH3mqrEITxUJO2g1Smz2HqEYysSQpJRoNFVSexuARQ0Rn/FQk/+s
         Te4i0vhbx8w/68i0ouiDB5TPqMPh4aioWsxHxgg07IF8eVIvFgHnWTcNNJ22NcC1o3um
         ghisPxhyIGfy+btiheuv6vcl6yOOHgAIgYj0lb6uZSRjU71JGI3qoGl9yQGjNE0H/ZQX
         Q4ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@plus.com header.s=042019 header.b=qGlZh9wk;
       spf=neutral (google.com: 84.93.230.244 is neither permitted nor denied by best guess record for domain of ramsay@ramsayjones.plus.com) smtp.mailfrom=ramsay@ramsayjones.plus.com
Received: from avasout03.plus.net (avasout03.plus.net. [84.93.230.244])
        by gmr-mx.google.com with ESMTPS id q25si780590ljg.5.2019.10.29.11.54.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 11:54:04 -0700 (PDT)
Received-SPF: neutral (google.com: 84.93.230.244 is neither permitted nor denied by best guess record for domain of ramsay@ramsayjones.plus.com) client-ip=84.93.230.244;
Received: from [10.0.2.15] ([146.198.133.39])
	by smtp with ESMTPA
	id PWcyigzCktvkXPWcziiYf9; Tue, 29 Oct 2019 18:54:03 +0000
X-Clacks-Overhead: "GNU Terry Pratchett"
X-CM-Score: 0.00
X-CNFS-Analysis: v=2.3 cv=ePBtc0h1 c=1 sm=1 tr=0
 a=1Jh3712dEPwUcX5EWi7t+w==:117 a=1Jh3712dEPwUcX5EWi7t+w==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=IkcTkHD0fZMA:10 a=491Ab-Zl-TA3clIL934A:9
 a=QEXdDO2ut3YA:10
X-AUTH: ramsayjones@:2500
Subject: Re: [PATCH] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Cc: Joe Perches <joe@perches.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 linux-sparse@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
 <CANiq72=B6XKwfkC9L4=+OxWtjxCp-94TWRG1a=pC=y636gzckA@mail.gmail.com>
 <19fd23e98bab65a1ee624445193bd2ed86108881.camel@perches.com>
 <20191028221523.vlzdk6dkcglxei6v@desk.local>
 <00c5ef125a4e62f538de7ddddc9d8fe7085794a3.camel@perches.com>
 <20191028230349.xlhm42ripxktx43y@desk.local>
 <61eb73ad-5c30-0005-5031-6584df72ad5f@ramsayjones.plus.com>
 <20191029080701.qpvscbz3xptadhbd@ltop.local>
From: Ramsay Jones <ramsay@ramsayjones.plus.com>
Message-ID: <ede574e5-d18d-f30c-b9f0-a39b73d57ff3@ramsayjones.plus.com>
Date: Tue, 29 Oct 2019 18:54:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191029080701.qpvscbz3xptadhbd@ltop.local>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-CMAE-Envelope: MS4wfDVoYw7ULPJG2gXopqFyDkmgZvbcO8oQUTiYMfxlmz6Gnd4uUsch0XW/zcYouohl3jtIkJ7OQVZAnwhkyFoc8eds9yVeMsZTsXYDLiJipbGXmrCsDCtr
 za5CAl/4tJyknrO/ZELIDVMujXsk5bX+Sikt3kiRL/wHwOCtfiBirisVIPhLKd5Ukiv0n5RlbrmlvWR/OS4bhUPPnrzRTPg8JlY=
X-Original-Sender: ramsay@ramsayjones.plus.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@plus.com header.s=042019 header.b=qGlZh9wk;       spf=neutral
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



On 29/10/2019 08:07, Luc Van Oostenryck wrote:
> On Tue, Oct 29, 2019 at 02:38:54AM +0000, Ramsay Jones wrote:
>> On 28/10/2019 23:03, Luc Van Oostenryck wrote:
>>> diff --git a/parse.c b/parse.c
>>> index 4464e2667..4b0a1566c 100644
>>> --- a/parse.c
>>> +++ b/parse.c
>>> @@ -345,6 +345,7 @@ static struct symbol_op goto_op = {
>>>  
>>>  static struct symbol_op __context___op = {
>>>  	.statement = parse_context_statement,
>>> +	.attribute = attribute_context,
>>
>> Hmm, so why is do we have a context_op and a __context___op?
>>
>>>  };
>>>  
>>>  static struct symbol_op range_op = {
>>> @@ -537,6 +538,7 @@ static struct init_keyword {
>>>  	{ "while",	NS_KEYWORD, .op = &while_op },
>>>  	{ "do",		NS_KEYWORD, .op = &do_op },
>>>  	{ "goto",	NS_KEYWORD, .op = &goto_op },
>>> +	{ "context",	NS_KEYWORD, .op = &context_op },
>>>  	{ "__context__",NS_KEYWORD, .op = &__context___op },
>>
>> So, can '__context__' be used in a statement, as well as an
>> attribute, while 'context' can only be used in an attribute?
> 
> Yes, indeed.

OK, so I wasn't quite as confused as I thought! ;-)

> '__context__' was only parsed as a statement and 'context'
> only as an attribute. But now we also want to be able to use
> '__context__' as an attribute (because 'context' is not a
> reserved keyword and can thus be a used defined macro).
> 
> There is no reason, though, we should now also want to use
> 'context' as a statement since it's a sparse extension. Hence
> adding attribute_context to '__context___op' and keeping
> 'context_op' as such (but moving them together).

Thanks for the explanation.

ATB,
Ramsay Jones

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ede574e5-d18d-f30c-b9f0-a39b73d57ff3%40ramsayjones.plus.com.
