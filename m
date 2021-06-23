Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBS6CZWDAMGQE55RK2CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id AF03B3B1EAB
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 18:29:00 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id r190-20020a375dc70000b02903acea04c19fsf3111339qkb.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 09:29:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624465739; cv=pass;
        d=google.com; s=arc-20160816;
        b=g7dvHNIzUrUet5AIV4hTz+ZQdy4q/zkn3IcgVi0LX7bmwLSEagCCw680+Ux5ZKWhAK
         UOm0xDBb1x1hmOsHVrg2+8MHsKoasxPR5qIl5QlEiGAe7G4uML6N4DkOt9J8ihq7a6l5
         XcXHIcSsC09VMVsPKZ5ec3MQqDZvw27P3j0xWZVfaMX/8BMG1DnX8gobrruPtVuA3QOH
         TnJJf3cKM1My+Iz6+oFoLwbAAo2KCNfoFxm+Qc7X82qtJYKPUXhz/74mCAvNocdvHM4N
         1R5u8y2v8MwZLxSDKEQQhDUkcVTFefhvplfLPviAJWrbfv4QJdtpaVve74nh75IWetYV
         kBDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=5xZWlwLsFm3lG6QePo9nr61gsX2FBpzR7BAoa7WfnBQ=;
        b=tmryaPBfrNDyCe2F4g6IZubIfoKFOJze0rCV0wgP179sk6Grq5J4R2FZ0lEG76JSLE
         XgTFXxD2/tXp7kmtz3mUua2/Wc1ODb7Zh+LycVeKLccXPjCDUOjOSafs1UkOcZs8Z5IP
         nXAPpZddxls7foy3EN8yjN0vSzkEcaGzmKNC8eX4vx6zgMNUVTkxJCPgQ4h6zEdD2uta
         d+IBsuJW0fxDJ2Nrj1IyEQ0CiZxbos+jR2RBMbJWInWljP0uyUN4BerK+XQPSvdzNZxe
         bZ5kG4RcrW9Tzwy2zVdOFBdLrUaU+OZXLbEFXlV5FqYf3pFgsL/JARaYI1zil2ksMqXK
         h63A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hvrz4kEn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5xZWlwLsFm3lG6QePo9nr61gsX2FBpzR7BAoa7WfnBQ=;
        b=qdqZEJoLQIFV9L/9EEVhaJaN/vgyE/xi1Y7uiXXCTIrTJDG2zdDwt9a529EC3mih8Q
         vlp4o2xZF/9v1o/d+epWn78HDHYE+yjJrAu5GnwB4iKsZtgupH+v09O9ghshbldErbUb
         zR3QxI9tawW+IdhsZCX1oMIv57ROnkAjiOFQXJ1RgEBjzByATIFm868b3X1fPwTBvmQG
         9lXoi3+6Rl84dQ6j+kKTN3EspcYY53e1wBsOeS7MHFEeepGJ2JfCaEs/OhSQHWFaemi1
         QpBvL8+Yo3Kc9iEvfZ/a38X7vqVZ5w/i7KdYkI0cZSY1SUZLhMZkper83+da0ck2PuB3
         YpTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5xZWlwLsFm3lG6QePo9nr61gsX2FBpzR7BAoa7WfnBQ=;
        b=gxFlDFMOEQQpbtoIG9oaGzukh3hVrajtEGwaTtuDVXJZR00dxBxJriNR6he9QZzAPh
         LwS1OSbrdlAxMdFNTtJxNEx+XNaVBjNFjHYTX5CJeeEogXMClt1p70/En9xdsZLD76v2
         gqfIOgxa9E/a3S0DwBPC6s2SLOXBCNTUm7ViDLgBml+R+nA247E95s6366D0TxwuzOdt
         YDCLmIQX2Z7pxpivogUdhgeg16inQ/8BkAYWpX7n1XSafPdN46iObHIktyvdxbaci4jA
         WGk89vc4WYXf9WjZvyMdpGHKcqGVY8K8Jcs4rrfIOkyVOlOf6k3fdRkBapjjScfOnm2z
         3K7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+eood4a3CGLgZcaJU8bIFFkQkQokXVn3OUwsU/eUr38VugG9O
	1vQQWaNBkaz/1L1yqr2Ln40=
X-Google-Smtp-Source: ABdhPJzfJHMmuEeKZVC/5c3gvGqj1snuGwhZxEGnCByMpEGcw+0j9eub71ZaR/MrIDA2Ygo8GMOFTA==
X-Received: by 2002:a05:622a:253:: with SMTP id c19mr730453qtx.270.1624465739738;
        Wed, 23 Jun 2021 09:28:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7772:: with SMTP id h18ls1036611qtu.5.gmail; Wed, 23 Jun
 2021 09:28:59 -0700 (PDT)
X-Received: by 2002:a05:622a:1a96:: with SMTP id s22mr667345qtc.229.1624465739176;
        Wed, 23 Jun 2021 09:28:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624465739; cv=none;
        d=google.com; s=arc-20160816;
        b=zbA6jomIlIa5/Pfdz2YgvFDky88m1DJ4u4Debpnx0Ah+iejRRD0lET0W3WhuNvu/bf
         /lR5p9/WGj0DvmYr0yJxx8i59kdKeK4/s3mk+7jiNdEoySqhs8EiZXmmogzU7rYE7rLA
         qQSxdTYYqimJlm4/HBzjtXiJuvdupAgTPDc6itAFK1/C8WChcMvZOybsKIgmw5ZYiB+Q
         tspV9wlQ0HhqPogkBNaFuWI7WN5m3qxZXzSMicfm0ZxOzO5t3k526r0QhIttyYvbIo4l
         TOpyzVNqFTUFJWTZP9084X69QppvZTtALmmcDJzi0Gqu6w6uhrOqXTBxn4nTxb2K0iUa
         GO3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=cAzLEXfXhpscylMgO5E1q7CE5HtZaMo8ncghH9Z9cO8=;
        b=RWtZFtQNhvgCFTodRoZA7KBtAogtchFs1DvnASwo+PGNuab/caeDR9l6nyVMMua1rQ
         4Jk637CUObLk1AkHfF+NUuxMBiteT2+ylOWZwigw96q8pZPr7wb7KWkrJM97jAhFeY01
         8tG7KKUx/acuE4Hp3UdkrZlMq6q8UBPYhOsfuJY+cvOJeszLo9HLO55RLNCITiMURnj8
         w+tqPJ2vRgPMA3rJIBU/Fd0arW8ww3AIX+ojRpoF6AyjBXaC7/AYVUJCGIHZFHgqy2yh
         GcmSjOsLIUIzuaKNMTMo+pDSmeJ/yjMKSEnhydQtB6Q1Ovw/3BwD5R35mFb4eOhUyarf
         NkLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hvrz4kEn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c15si66648qko.1.2021.06.23.09.28.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Jun 2021 09:28:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7E93E61350;
	Wed, 23 Jun 2021 16:28:57 +0000 (UTC)
Subject: Re: [PATCH 2/2] ACPI: bgrt: Use sysfs_emit
To: Kees Cook <keescook@chromium.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com
References: <20210623013802.1904951-1-nathan@kernel.org>
 <20210623013802.1904951-2-nathan@kernel.org>
 <202106222250.7BD80A12FF@keescook>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <a155e3ee-69aa-408d-208b-06144cf6cf8f@kernel.org>
Date: Wed, 23 Jun 2021 09:28:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202106222250.7BD80A12FF@keescook>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hvrz4kEn;       spf=pass
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

On 6/22/2021 10:51 PM, Kees Cook wrote:
> On Tue, Jun 22, 2021 at 06:38:02PM -0700, Nathan Chancellor wrote:
>> sysfs_emit is preferred to snprintf for emitting values after
>> commit 2efc459d06f1 ("sysfs: Add sysfs_emit and sysfs_emit_at to format
>> sysfs output").
>>
>> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> 
> Perhaps just squash this into patch 1? Looks good otherwise!
> 

I thought about it but sysfs_emit is a relatively new API and the 
previous change may want to be backported but I do not have a strong 
opinion so I can squash it if Rafael or Len feel strongly :)

Thanks for taking a look, cheers!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a155e3ee-69aa-408d-208b-06144cf6cf8f%40kernel.org.
