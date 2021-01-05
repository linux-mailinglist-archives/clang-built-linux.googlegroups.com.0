Return-Path: <clang-built-linux+bncBCH67JWTV4DBBMEV2P7QKGQEKIAGWQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CB92EB41C
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 21:23:13 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id n3sf599272otn.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 12:23:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609878192; cv=pass;
        d=google.com; s=arc-20160816;
        b=mLp0x+yLzzm4+BYb2T5bEeNTWr3Jm7CW/dsiGqIRYCx3eqDMdRu20u8kHxVKrM/UPH
         ud1eiaXqXB9vdhHQhn6eWsYvIZrXfEgN0sK8aLcDJjebGuOpfgXCzrGqObmW/II7qFZH
         TOr8sKHKDOKfJ4JbRN/qsuHkwVGOtPvti+pf1Sgsw4UfCJlvV4r98U1A9WxtkoBmJP+x
         bbU/ZgIEuB2FDDYlo3omG3/J0w0X4+vsI91Fu/dLm+1urIqI97/omd0wYgGY8QSx4Vg+
         aJRXI4IzbPbFHFBQz3ITCmeGqzxpz14KFLfPiIDSs1ScNXEvwt0gKF/QXGv027yyFmmK
         rh6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature:dkim-signature;
        bh=khaMx2ePsG9yNfh7Gm96V04cW5r2UIFtBO8isyO2mZA=;
        b=LrNCZn4ja2K2J1SZfqJnl1MBd57RA7xft3tGPIajBywfBqSXBY2nMQEUAOCBTe8pC0
         51UyHiAeJCjuNSYH5xFi5jEPA1MMXBInGcVjTdNIWOXY4lQA0+3mD3+OWjBpnLoCAG8/
         aWRlTjhpClryLJ/V+hNJIZIFH8QX7mV6wW2xJM5oWrNoPc1x85tZ7TQB+Scry88SNGUh
         bT9OOsb9Qr6dUGwtY3U29BA+bHh/C5kGXfhMF5SNNhj4yoTmZQcnF0/H+8CWgIzuVQ0a
         na1pTq8oTkUTVwahWGCqCR0UxdXQUKID3oSsEeD/iFD7un5WxX15qvM0w7zipkzeWSZ5
         ICfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PYlz8U8b;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=khaMx2ePsG9yNfh7Gm96V04cW5r2UIFtBO8isyO2mZA=;
        b=jIXNCSLFCyVvgXtTeGw6MXpDFchYhG4uzCy4IJLw4seXskwoSx/2xbLXnyhAbzKlH8
         FNZyyAGOkHMnEmvyV+dBuMWEu+B4IK5mK/DHjL7shlVWsJQRJlaRLU5TXhMBnWZPa0U0
         4GpUoorEmDhO5EvP6eI0SahCtyUR39EWCTzrgZMlgw9nQDXJpMie8gFbO3wvmiaGIR0t
         jEgDUlv5IJFXGbK7vHenDQiyEWqFRN1zHnapuPVh5QBN+AG3jxsNvttCkWA/aiQfcVN8
         tlubjcp04yZZHVJDudohdHbGScBFQxHsCKFz18cI/f5YkXWIR5NaXVnFu9u5ZR26qv65
         yElw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=khaMx2ePsG9yNfh7Gm96V04cW5r2UIFtBO8isyO2mZA=;
        b=FHvT9LN69BD6JWgh2o0qJEr7VTCt7hIDhxQOP3AS4H5QitGWjzbc0VUZ7RmqjxO4E9
         Ng0j2dWSjbtD9cM573boTMTAbNRKcU2OvfKBE63ZTMtINZ13jtbEAtTu0xcEDatk2Mgj
         ZsuuweCmYD5Xjy78/uLG2BMovjF9dsvVeZtvx5ESmy3dnEMKSv6QexbnOZSWsNqLggK7
         6szzO52869UHrAZ2iwt462JWdRkUmjSzvHL/45E8LB/U2Kf9a5mBlI3n8hAxnIz3l2Z6
         GukOo/7V0wMv4iPVx8H995QqX8JPECbK0L3zyKPq/F6D73MM1wsz79dXH2obTA0+MIzc
         Dixw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=khaMx2ePsG9yNfh7Gm96V04cW5r2UIFtBO8isyO2mZA=;
        b=NhFqwxR22MAGXnTjzbNRVkBqC223OE0V1celaWVSwzUBmLGbv8xP8nrWExcryMf8/d
         cNmP9bocZIL6jMGgZVzjBc8txMyQmATRsMpRRYCdoKlsJgcpKvZpm65KEox2mYoVw4Wk
         dTdSg0lTeZMDFjRjStdpe3p+4/kLno4WzyGo1HrcdGXZGd/62c40YLcupGq/SKEAkd8L
         xrNPtij5f24pCQXM8C65MZzNu0D8uzzSHZqkWRrM1zXd8DxQA4uvc3S2/NYY526emGFQ
         kmRzIM0iplmG3JKy+4CILyEkYtt1tQx8eDHORUi9v9EnO2Rix5Gd9qcBjMXfOEtr1Tx/
         dq0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qWng+fAC3qVfbs0Zes44zS9UltmxmqwO1CqjZ5P1DGX1R3KyS
	1lEI/+/GAfEG2zcziTRV/nI=
X-Google-Smtp-Source: ABdhPJyXEW0Wq+RNh3Gwde3yCqO+qltzY4Hlvd7N+9nrP3VNnb1MEr8gHExHW6Gq+DyehJz1Htlaow==
X-Received: by 2002:a05:6830:1482:: with SMTP id s2mr953433otq.296.1609878192734;
        Tue, 05 Jan 2021 12:23:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60cc:: with SMTP id b12ls218823otk.0.gmail; Tue, 05 Jan
 2021 12:23:12 -0800 (PST)
X-Received: by 2002:a9d:875:: with SMTP id 108mr960011oty.164.1609878192343;
        Tue, 05 Jan 2021 12:23:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609878192; cv=none;
        d=google.com; s=arc-20160816;
        b=C+TciViiCMelkvoL7nRK0y8/onU/zGtwfZT38pjwzCd/OZxNYL5ShL3uw721lPfweH
         Z4oNvwEXut+GnI5P5RJJ1uOwHfe1fnuVw3IeehbwmBRwZxD/ahkxRaaiOk2/X5TmPMOl
         9Nx65iWCCE3LMOqf5Awb2PpuD3H3W6TvkC6skoj+q29xsPYORQc9CoLtzZ0q9rqkuS5L
         plVEwupORRNbYnqmxIAcinxnriExKq/hHIhCnxdkYB2w+z4m+D/jM8+wWVIylNWmfmjz
         Wj3a7oi6eDEOaFAdYBROUmUFYLZUcp1htGEU8P+tgmNVmwuGYt2olDn3bGBeYBDufAn4
         ud/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=htJVUbmr7DlEoQVUagCazvSSBVY0bnc7pyFj8Wq/yoQ=;
        b=W5dhHow1eZ6vymNfCDFAqbn5g/qe8DKL9xaht7h9tTSMKOJMbwjeZyLMoJkLa3rL3r
         bXtm40siUz4o3HHPW5NAPja1POJSw46wdAwof0dCih8L1rLYSyBacaO13aUbhqIsCGpO
         IVKhtlp6FT4WlmGuIDBST7Tsr/+nILVJWGowfsc8PZFELKGF/eUYq1RFxuKXmXRN8LlE
         u52XugM9jU1K067pNJ+/bxPqkzJv5a9J4GomHZTLMGlhL3Xoj35dx3/5L1eB5AIIERg5
         eFLVQU5fk+PPYbsBMS5UVH+37g00nLTtzNCeBCqtGM8uCDEi8YeG6qgOIy58R1SsYpgf
         nyPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PYlz8U8b;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id 7si14335otq.5.2021.01.05.12.23.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 12:23:12 -0800 (PST)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id j1so356048pld.3
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 12:23:12 -0800 (PST)
X-Received: by 2002:a17:90a:f28f:: with SMTP id fs15mr855046pjb.121.1609878191007;
        Tue, 05 Jan 2021 12:23:11 -0800 (PST)
Received: from [10.67.48.230] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id k64sm228270pfd.75.2021.01.05.12.23.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 12:23:09 -0800 (PST)
Subject: Re: [PATCH] MIPS: Use address-of operator on section symbols
To: Nathan Chancellor <natechancellor@gmail.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: John Crispin <john@phrozen.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210105201827.51766-1-natechancellor@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <8e7a7861-197f-e6ae-7a6d-b4e850ab5b09@gmail.com>
Date: Tue, 5 Jan 2021 12:23:08 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210105201827.51766-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PYlz8U8b;       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::62e
 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 1/5/21 12:18 PM, Nathan Chancellor wrote:
> When building xway_defconfig with clang:
> 
> arch/mips/lantiq/prom.c:82:23: error: array comparison always evaluates
> to true [-Werror,-Wtautological-compare]
>         else if (__dtb_start != __dtb_end)
>                              ^
> 1 error generated.
> 
> These are not true arrays, they are linker defined symbols, which are
> just addresses. Using the address of operator silences the warning
> and does not change the resulting assembly with either clang/ld.lld
> or gcc/ld (tested with diff + objdump -Dr). Do the same thing across
> the entire MIPS subsystem to ensure there are no more warnings around
> this type of comparison.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1232
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8e7a7861-197f-e6ae-7a6d-b4e850ab5b09%40gmail.com.
