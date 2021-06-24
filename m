Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHPJ2KDAMGQEG3QOQCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 811A53B3403
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 18:36:46 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id 4-20020a17090a1a44b029016e8392f557sf6340288pjl.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 09:36:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624552605; cv=pass;
        d=google.com; s=arc-20160816;
        b=0x73ExKTK4dzaPTzsho2U2TdMMnQ3FW5AnXgWS95QsEgT98W7FxBV0iZglM/6B7OMO
         az2FVFHniLB+vXQWDWCLvwLt3xjks2z7Wb6I6hRaCIgUnpje5cD+MXJqxPv/3s+YeU4+
         iTPTd0cZaAAH30Ez/mCVh/Z0wLDpG4nN8Lmx/OP60hPgLkV3IGyX9qBqwYkDY+2UZzvV
         +UGCxr7+DAt0Qa2ZSjd6O8YiZsDYuPExvWDlIwxkIDazvU2xpKP40UvuUUqHK+2RiHZf
         /JdnwTPwwfOI9ve4wu/jkHLvaQwMkTCX14zRdZoqgdJ7K22/IcxGdoW+oZ59BE1aCENE
         f3ZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=VjRBupuIeGN0hhLfHJV5P8d6XktBnHw0mfNzh0Wqafo=;
        b=GwAD67ILE5fpIjqbfOBvhx8TOPoWfaGA9goLPnIzxH0wGDqzbC62g0zUD0jzS9ofY3
         WjsyqKQm9JpSz05A5SwXryp3yi4EPdA6pIYqcj+GCFDcq6Tg1ZRiA1RHxaVW3Hv2wIs5
         5JRjahSoPHFxUU9okZbxq9jHCKkKqfC+mrJ8C4UEpM9Rx5tTtztK6ne/Y01EXe13XpsV
         bCkUXDXjmV9U1pWCnqx2ZbbrbiQA0KHL7A5325o9oorPFbeFa5WUPPxlauUz4jmc4Qfm
         KPrPVZqt/K+PGy12Bj4wVb6ZD4sdzAiVB7L0iys4WFkMcxLUzdjXo/nwb4pKjjVV6H6v
         JRGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=roWTWHan;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VjRBupuIeGN0hhLfHJV5P8d6XktBnHw0mfNzh0Wqafo=;
        b=UnxotFyoOUp4cJHP56CD1O/r1yF8PQJUcAVPTQGQD597QBk1OToVhxy30xhjQ48JW9
         7IiqR6vUTh43VLvuP3nMUeSbPWPVpoZ6ihpvuRH5WKvBfsO3CsTN2Uwcffj5nMVLsyXe
         maZSXkrAtqSYsbGWRDDT9/jHy5myCJDBbdcoZ0DNdala0ZCXRXt/Kt/HGSNx1pk78xBI
         l8TJxmHH5gXtXY+/ezKNCDCxNesywyFpedCDvPQcZlYckVf9OZq+U9x6GKyDumhgtZ7s
         pVT6v5dghRii2XKBB3bulaJx3TT1BvoCDxRzJY+BDWIZXyWMXuXC3y88WsRuW/BN80yw
         x/nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VjRBupuIeGN0hhLfHJV5P8d6XktBnHw0mfNzh0Wqafo=;
        b=HWYWLT2A+omnnmoK7qB/p7vcffL6aUbjsrlCbYOdwf1yCpS9jjVd4S6fRFPEJWzyZR
         R6B+9Vo2Gzas7YS29qW2br9GkKDbdY4A0VGt2CfMuGK6vaIvDQuu/frGpQBWI74JHdg1
         82seej+u8YoOqnzsnlKQpf/gls/ZcSKdnzWl+hBFOpX5/s2X4NV3swoFKPkl0j3f5s+m
         r+/hLs3eVwc1ATdnTisLTwWlk4G+uVMwxXcW1VZGFjnTa1MJBSnFfbgDbruaDB0LV3fz
         ErR1h2hwjqPYyEpZq2d5geiO6JYilLm7qamfLUgSRBxOHJNQAScBcuPzTTT0PO/cR4JV
         Y9TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NLgE42V0U3B6zZEj/Lt9U3llKpL4/hYHJmyyBI2otWdd28Dep
	C5TdwhzUHUaWD4rveVXqiGM=
X-Google-Smtp-Source: ABdhPJwbIDiNEBzVwG+51k6aUhAHegVbz4JEQJJ2Wl4Gxo8AbyKk3iUiCx4fd21VgYvQY1viMXIRbw==
X-Received: by 2002:aa7:8254:0:b029:2ed:b41:fefc with SMTP id e20-20020aa782540000b02902ed0b41fefcmr5984193pfn.42.1624552605204;
        Thu, 24 Jun 2021 09:36:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b418:: with SMTP id x24ls3290491plr.7.gmail; Thu, 24
 Jun 2021 09:36:44 -0700 (PDT)
X-Received: by 2002:a17:902:d217:b029:105:e265:65c7 with SMTP id t23-20020a170902d217b0290105e26565c7mr5028437ply.16.1624552604686;
        Thu, 24 Jun 2021 09:36:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624552604; cv=none;
        d=google.com; s=arc-20160816;
        b=x50UH1LkmxuYSdH9cSF4pXQ3lyt1tBvkjtMm2hRR0ms5drSlsoKQ0b3qpwd63lc1dO
         DPCbW32h/6/Z49zV3u4rjCv9F2klxOnQB/6ESt/+t8mBxZ3/bRibvIKshtUeQ+T3ZyEn
         oJZgH0LP0JwfQiGP5ZUO3emD36r8vpmZN3L/FxrjTnf6vIiyS4zaQgLZ24g6k484azd3
         hBiaYpRRwx/nVAmCFG0HRWHOHxuBtVNcC8km9jEkfHwtsnmUQnDcsyAJJHOX6Jgvlt3A
         Q1qktD1Cjd8QHj5e2qvDsf8SSMtpiEGLO4fDH2KRtY55mi7LmHHcQEyDoWZerVPhqD4t
         2mvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=6r6H3gzdyhrW3TFMkSlNiL8s8mSWTKA/VCf+2KXtaEs=;
        b=LKJQ789uUxfTpz4a7q7ZKjIH5QrLaWhaZnl6JLoFnqYAm9UZVrQh7hKZiLyqIV/tV/
         kAErjdktWMxZnIAmCf8ldcN8kcqYNJN32pn2Ixd1mIKvjCmNC09lwP8vFqIFKYB5f6aK
         /raCOru3IuAMASTbPK2RRQBIUgJ/g7CCWlpfnqvK6U7Zu8SJRtK+xyVgVlsXSKjU6Bhb
         /N+1JtGOkktm/6bfnmO3T6vt7K0aFjRC9p+4LS/FJyG5a0H9DeXMoCje4HtCUinQV3Qy
         e+btHPgXCxISsOi3nM10x3I696aHdAhY/v+/cjTSp782bMiKjdfFUqP6twcM1DrSpuEf
         DqzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=roWTWHan;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z17si305491pjn.2.2021.06.24.09.36.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Jun 2021 09:36:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 985BB6128D;
	Thu, 24 Jun 2021 16:36:43 +0000 (UTC)
Subject: Re: [PATCH 4.4 to 4.19] Makefile: Move -Wno-unused-but-set-variable
 out of GCC only block
To: Sasha Levin <sashal@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com
References: <20210623172610.3281050-1-nathan@kernel.org>
 <YNR02aQT3f9Naap/@sashalap>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <d8ebe3e5-0001-1a53-7ec3-f335bb76a415@kernel.org>
Date: Thu, 24 Jun 2021 09:36:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YNR02aQT3f9Naap/@sashalap>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=roWTWHan;       spf=pass
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



On 6/24/2021 5:04 AM, Sasha Levin wrote:
> On Wed, Jun 23, 2021 at 10:26:12AM -0700, Nathan Chancellor wrote:
>> commit 885480b084696331bea61a4f7eba10652999a9c1 upstream.
>>
>> Currently, -Wunused-but-set-variable is only supported by GCC so it is
>> disabled unconditionally in a GCC only block (it is enabled with W=1).
>> clang currently has its implementation for this warning in review so
>> preemptively move this statement out of the GCC only block and wrap it
>> with cc-disable-warning so that both compilers function the same.
>>
>> Cc: stable@vger.kernel.org
>> Link: https://reviews.llvm.org/D100581
>> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>> [nc: Backport, workaround lack of e2079e93f562 in older branches]
> 
> Can we just take the above patch instead?

No because that patch has a prerequisite of commit a035d552a93b 
("Makefile: Globally enable fall-through warning"), which is not 
suitable for stable because there were hundreds of warnings fixed before 
that was enabled.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d8ebe3e5-0001-1a53-7ec3-f335bb76a415%40kernel.org.
