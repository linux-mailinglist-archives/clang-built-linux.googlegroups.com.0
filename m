Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBB3MGSXZQKGQEECPCZMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0BB17D5C7
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Mar 2020 20:11:43 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id 4sf5304584otd.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Mar 2020 12:11:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583694702; cv=pass;
        d=google.com; s=arc-20160816;
        b=IS8siU95LtH156xzI4scG4HtGHrYwz4fVB5aPPDhmxMr+1Dt8L7SL2u+NYTu223wRR
         9TW8sBeJ+00//boqQ7IjylH+A9tXBChWyZVnqSf/Kenb9bWSJYqdOzbkPD79q39OOTy8
         ftUlUnb0KyIzdYajcas2u3Oe+96p3bsYHejXcYjek7GFfpTbkdry8zupW/KvPaYiThVW
         vy4f1Yc6/zu+7OZVn5uCIjMI/al7yHxcATpQSdcwK4NcGPvOCILxIlHaEs9nxbZy1WZY
         3alL+qWASqBkceqIDqv1j5sCpgwFmRyjnWlshdIpzkU1cVfVTzwgaK/HYHxZtPoVp2uP
         TsNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:autocrypt:from
         :references:cc:to:sender:dkim-signature;
        bh=8SKku89lkl2tia+++dv2EIj2K78K6rGwdo/PQEjyew8=;
        b=aDh8xTKZScCqUwjIS+MpGkZ4tildVVd2HxGLudhP16tXHRoqT8VJuGQ0V9R5uZq32/
         VgKi/zSVG2eLClI5hMvPy3isKM+W0A0fKFxnKZCAeVfvmP3ryRp3i9b5Czz/dyMioqGe
         aw5K4p3ahQI6dXtQBrayssHoN3ONIsZpkNdlmttbDIU/8BQZXCxo+amCj6cIA1uC2a03
         CLnoHm+dY5/gvzgWUpC4og4qVzb/5nrpISZASJOKGW2WYdFqQvmPjB9ZlUGb3q/MVWuD
         BAienlYeB4DYJ5d4E/AasdTysPMunJxF7KfnOK4nQMkDIFhmIggZV2030gICrTYcRSYC
         85gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=a+U0hdLO;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.113 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:autocrypt:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8SKku89lkl2tia+++dv2EIj2K78K6rGwdo/PQEjyew8=;
        b=GxzRhMxPCBDKk4i2nY4uAUB1RKxw+Rbn/C8q/Cm5BUciJHLhb/6sGaKNQJ8pC18ocM
         nryQm5m296aGGND33Jozm9zll0lJDBWmVuCib8JrxAwH4LCEBmG+teimxx9rFC6MQ1+q
         Ut7RgcwC2t5j9Ceon6Fo26MhawpOjTqe1UOgmpWSBcZH/kg0Bgh+lVcq5Bl4Wu7w/5Li
         n5jOIyDfAh0YXNRgDYwCdL85WOJ2lP/sEoHrhSThjtDszNV70kHEfjB+2HZHVwEfapBM
         8SmbIzJE6KxkY5geZzfMXMjmLIhh46DfjGQPRbVJZ6DuLByHntbixmAI/SBX047FPlB0
         xdEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8SKku89lkl2tia+++dv2EIj2K78K6rGwdo/PQEjyew8=;
        b=HU3+R5nilgyAduOYug0W9y5jxZvj67XIV1CnZ3AAbJuBmEduQX35YhfbtCIplQnCOA
         MOstEn8UHMlpkyeq2O1lBKK9kdOrPEHFXzE60qjnbudDaaZeksUV4wxcIlaGrjcMyNM4
         7uAli7OgWlXaAgDtar75kXoi0dxrvmTGU4fdFcnaR9GVP+RTPSL4Cfn6smsDqcuoJkKT
         u1Q9p+wiPg8NV3MmYwsZYIHiq4CsNCd1fJIiwcqdlEEtfvce5gp92409rUMn83wDryHv
         BUc0/uRutLUq4gZEji3Q5w/bF36hAT9gv2CRrwYc1v9YpfDUzwWOYHhP39pGIWm3T3tF
         rm9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3taJm5eYzyWD8p2N49fCbG4IoPvra2w6a3SjKrqnhmdQNCfgVN
	Pb/zTAfSOcWbR5vNj+DXi2g=
X-Google-Smtp-Source: ADFU+vt2GnYys7E7kLmB0p37qq/jmEyAMHyYULen4ipl9iabWvcbQ6CfLf3k3A6B/zTDukpXn5LA7A==
X-Received: by 2002:a05:6830:1345:: with SMTP id r5mr10549078otq.342.1583694701870;
        Sun, 08 Mar 2020 12:11:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cd45:: with SMTP id d66ls821666oig.7.gmail; Sun, 08 Mar
 2020 12:11:41 -0700 (PDT)
X-Received: by 2002:aca:5ed4:: with SMTP id s203mr5035783oib.102.1583694701525;
        Sun, 08 Mar 2020 12:11:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583694701; cv=none;
        d=google.com; s=arc-20160816;
        b=fOe7sc9sJTbfetVPfp4+8QYIPpgIFMqJjejuK8ZD8jbBgYcMUcfB0VaFrl7vej6us+
         FeUyMptLRvXAGfxvqCIxfzf5nBr3Gi+B7jnPTftJXBenvRNMtQjYXXCsgZpkYTMxIDKN
         SMacbT91YPF2ujgRh1J8E9pRLk4cT7cAqfuMXHNpMZxJUzywCrvaCaIJuAczXcsEkBym
         IWXtXPcHqpwOQt/LSBhnh6vw3jQ1QL15ddwosOeNBQ8pL96cXymJik/CnMXv1koYXO1t
         +zPG86CTLyIteoihApcM8Qd28krLltkxlkv2W+0hSkcYZekeCyKJVpJm/wNWPnC+TSFs
         CHmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:autocrypt:from:references:cc:to
         :dkim-signature;
        bh=w0GiLmOLbA5HCQnuH94dMDibvP+0nV1CMPbAZeilLyQ=;
        b=sgo3qZNlW6rAodSyIZXMo1KDZkRzw0h0i0dqwrJAMasjdKTZIDpmlEk/J1AcRv7qxG
         1WWc2WmwgiPos4z6IdCMKngSXBXcx39h0hi/QcBookSd29B0xVq2iS/gf1BIFHrLNJV3
         anRkp8ftpD4ar/NYum65QFfUEI3oPVghjhWri2wXBCG0p7M+3z/pg1G5uv3YOZY9EvYM
         xWsc1rrR/8TD/e91q31xsdHZf30LdcQTrzWDkS+0fe2rhoN7cwIEscBQ6NO3wbhnuzjr
         ZurjpCAlCYg03XlId1L9UlRDoC3km9brHJcA64cfpM1AwnMWtfSVpURLAOrQsMeQbYjp
         sE1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=a+U0hdLO;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.113 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway21.websitewelcome.com (gateway21.websitewelcome.com. [192.185.46.113])
        by gmr-mx.google.com with ESMTPS id b2si221365oib.5.2020.03.08.12.11.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 12:11:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.113 as permitted sender) client-ip=192.185.46.113;
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
	by gateway21.websitewelcome.com (Postfix) with ESMTP id 26327400D7447
	for <clang-built-linux@googlegroups.com>; Sun,  8 Mar 2020 14:11:41 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id B1KvjloZPXVkQB1Kvj4xX5; Sun, 08 Mar 2020 14:11:41 -0500
X-Authority-Reason: nr=8
Received: from [201.162.167.15] (port=23945 helo=[192.168.43.132])
	by gator4166.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1jB1Kt-000hNa-LH; Sun, 08 Mar 2020 14:11:40 -0500
To: Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
 <576fe2ab-7937-4698-b32a-8599813d6ad1@embeddedor.com>
 <4304de54a44b7c8c22d8c2d9249d716664cf5ce8.camel@perches.com>
 <6773b7e3-8ce4-55d1-8bb7-bde6d9f6e887@embeddedor.com>
 <259f405155a948f90229d3fc8cad928d434b46f9.camel@perches.com>
 <1f71509d-6c58-412d-a817-45b1cc78c06e@embeddedor.com>
 <18d7df753cb90d6c6f5a6b5e2a12b4c102ac8749.camel@perches.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
Message-ID: <7a0a3e7b-9c76-22f8-8dbf-acd9960d7950@embeddedor.com>
Date: Sun, 8 Mar 2020 14:14:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <18d7df753cb90d6c6f5a6b5e2a12b4c102ac8749.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.162.167.15
X-Source-L: No
X-Exim-ID: 1jB1Kt-000hNa-LH
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.132]) [201.162.167.15]:23945
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=a+U0hdLO;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.46.113 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 3/8/20 03:58, Joe Perches wrote:
> On Sun, 2020-03-08 at 01:11 -0600, Gustavo A. R. Silva wrote:
>> On 3/8/20 01:02, Joe Perches wrote:
>>>> or if you are suggesting that
>>>> the maintainers will have the predisposition of applying
>>>> patches that will modify their coding style and then go and
>>>> willingly fix that. I doubt the latter, though.
>>>
>>> If any do actually use the script, I guess we'll see.
>>>
>> Yep. In the meantime is a NACK from me for this version
>> of your patch.
> 
> Generic code reformatters of comments to code are not
> particularly common.
> 

I might not be getting my point across. It's no a matter of
reformatting something. It's the opposite, it's a matter of
not messing (removing existing blank lines) with the current
format and merely focusing on replacing comments.

--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7a0a3e7b-9c76-22f8-8dbf-acd9960d7950%40embeddedor.com.
