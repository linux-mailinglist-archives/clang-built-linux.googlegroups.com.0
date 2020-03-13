Return-Path: <clang-built-linux+bncBD55JLOZ34EBB2OXV7ZQKGQEZG34P6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DC4185037
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 21:24:10 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id v19sf8791370qvk.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 13:24:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584131049; cv=pass;
        d=google.com; s=arc-20160816;
        b=evAqUVP8FQWSCPNgE5F0IOWVNL2tfmIXifZdCmWgY8vin1J513ClEKqA4KZRx5aV+y
         3MGE19r2Gu+7YIBFwa89YqX94Rct68AlfJphUdw6NFTFPVxQf2fl4RJBA/L2UGckUbDT
         WrgRVSW76uc0HHxzX0FM9fXPBAilAtiyzFS2IwE2z2XUSbN1vGD2gBWZULfmcFWR5ydx
         wQp4Pt/AvEOC6Z6DEf+lIXlHv18Nj2Dzm4vdwDyroYTm7qzOhuQjJCrLJNCLsZawjznS
         HQWXgy/0RdEaDKF+t1YEY4VhIghQPGDhipKklod307qu7jfkKDeHhS629Z6nYUIkPZ53
         u01w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=fCAbIHBlKSKoGT1XoGTiClJbKuJevQXF0Jt4acKP+gQ=;
        b=pYux/Wu3dYnatzzx1gwl+U3hDnaGqvhB15HMXNPnfYRIAXc+EnyfUJc8yeMpyoRvIy
         JQFHLX7QYdaynzkEB3VtPJ6SlcFPeWC2s/E/WqwVSC8CmLyaxSaR64vqLo51RKEiIcvY
         3HyNnjhSXrjvZu5shSOATnkD1QYrkaNDg03lCghIYwjdyFALAqiBtDmFO39ojz9AgmBA
         ZVL8xUUmau+ex2CPhJcuTrYYbRWrq93WFSWB0maYdhp3Gvw89aus6/y/q5zMW/+48cPw
         vMjhNpBLMgxaGn3s9h94JbQLh/CsBKoWDjZgTAXo+BYT3Dg983ROkBCC11xTkbnWVNRe
         ha4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=avoUwfgh;
       spf=pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shuah@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fCAbIHBlKSKoGT1XoGTiClJbKuJevQXF0Jt4acKP+gQ=;
        b=MgLMhqZJ1T4lvR6ayFSV/r3rsu9ilcD6DlWBt3iptLBF0nXXsIVJZVS+xfsX6QJrAa
         JCKodqcScv8Petbh2ff55dACwXCgIuQE6U4bjGA8dgyhj6hR3MNN1T7rAhNyUZBbc4uT
         U28sk0dvCCAnJoEDaiITtnnKNcwJHg3Jgz/o61U//nSIl5njJYLqh9i7+s2lGv9MEyGs
         knocpuxP5UCSw3y4f0s50poT/qQ8xj9JtNcZEN+BFqUEgjtuiBmnx0xcDb5D2vQdenxz
         hTYgCG76L9EVYJxIThL/PK0GMmiwrkp0gkE2QIbFFr77AC5OWKfokdDBFfstCQ3LQH6D
         ya4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fCAbIHBlKSKoGT1XoGTiClJbKuJevQXF0Jt4acKP+gQ=;
        b=X6fFgFQ0cTPSdrcERfN7ntsC9C17Cs/yBhgLet2HaviLoih3uZA3QvtMb95N4WL74S
         Ci8HMH2CuqxB45yP60e43ibjn4b/h4HcxxH4wVqewK5Sf5P/kLcSmH3NBOdd+GQWa8WH
         i9J7CmNNxNsI48YDJOypuZOiqIONugFu5qwiWj1AWo7RVskYKKOVn3inVT4zCno5K72K
         t5b26GFoBg/qn/gcsrP/eHBIsj4sU4mXxqQNcoxvfCbjtDPnOHRFQG6ctWGin+H7Vw4Q
         xz7pYpUp0Walmsiww9/bbcbRxtGNS2iR5RsaIbzovav7TpmvKOvtBR70BrQA0x4riCcD
         /geg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ24QBBT6EyxMvDFTFnnG8ZT9Th9rlhnKpbQJoBXn5cPTz9gekJt
	Mu9qwxfzdLAqMvbBrZcvX+M=
X-Google-Smtp-Source: ADFU+vtX/SjZbxSzL+n14klzLc67B9vI8NtVVyUX3XYeWaVnnttoki/pCDt8H1XWs1vvT4WHwJ8Sqw==
X-Received: by 2002:ad4:510f:: with SMTP id g15mr14256305qvp.105.1584131049215;
        Fri, 13 Mar 2020 13:24:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b8b:: with SMTP id 133ls5540406qkl.0.gmail; Fri, 13 Mar
 2020 13:24:08 -0700 (PDT)
X-Received: by 2002:a37:8507:: with SMTP id h7mr7143174qkd.280.1584131048017;
        Fri, 13 Mar 2020 13:24:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584131048; cv=none;
        d=google.com; s=arc-20160816;
        b=As9iY/PjwN4fP8sywfWyv97+9nib9Tc3hCN1LUOwp0LsoMZrFBs/OSH3tOAyQs4FtJ
         jFe9pahfkwgr5ro16gNY5ZhGa2XkeHRxMi8UNQF/7NvZUDrZw/WxfjHGTvLGeM5ivakN
         Ac8se1NoYMKmS5MFucbkJXzXEx3VINU9UZxchSnuqatjK7Cuoc5nyR5IHL4JdM8UoXbG
         prOQlSPihPDpdO7E4CuF5VK2Sr2fBA7dZomdPP9Ruhbvts0t0Rx/1OfqgZKUfQbwJa9B
         bHVSwPJ6B5jXq6PcMTR6lvj4cLoVoZX/9uQ0DGsXo2rceHGhUDSiiSPRcct/R6QdslZ3
         5H5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=S1hdapuTp2Gdp5e5Ml+dHFqRukZTq+UzpaCpvkR8Z10=;
        b=ElH4pnGlRjSHx1lPotiYkUT1ytNvc0UVGgxFQUy4HXsUQSM98zNhxzxhbY8VAF/lFX
         B1ybdkbHT1FJbV3DrQe5SGdw/F+5cPybPOguAilRPMkZy3l9GNI680smwdXBFDhR9hIx
         1tauAV+OlQjFDK9ebyciOXBp4EtYJloH44o7MctS5u7Ht2sVnoG1KM2pg0DY9CFDvqGx
         hzSMbQk7BhG9aEb0AoE/f7ltDSqVqRoWMSS/SaJwKFjLNCTFZF4Ml9tCIsCCrsND8rf7
         IrhRUrUWzQs9EEA9R3z/lv56VhatYYGNz6lJFOKmbLV7ng0McEUbGoEjaGGwx5l3Nkqj
         Ed5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=avoUwfgh;
       spf=pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shuah@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c6si679340qko.3.2020.03.13.13.24.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 13:24:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net [24.9.64.241])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A17D22074D;
	Fri, 13 Mar 2020 20:24:06 +0000 (UTC)
Subject: Re: [PATCH] kunit: add --make_options
To: Nathan Chancellor <natechancellor@gmail.com>,
 Greg Thelen <gthelen@google.com>
Cc: Brendan Higgins <brendanhiggins@google.com>,
 linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 shuah <shuah@kernel.org>
References: <20200227063134.261636-1-gthelen@google.com>
 <20200229015350.GA26612@ubuntu-m2-xlarge-x86>
From: shuah <shuah@kernel.org>
Message-ID: <4bb8eeef-54ac-86a7-4bc4-8e16fc149c1a@kernel.org>
Date: Fri, 13 Mar 2020 14:24:06 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200229015350.GA26612@ubuntu-m2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: shuah@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=avoUwfgh;       spf=pass
 (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=shuah@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 2/28/20 6:53 PM, Nathan Chancellor wrote:
> On Wed, Feb 26, 2020 at 10:31:34PM -0800, 'Greg Thelen' via Clang Built Linux wrote:
>> The kunit.py utility builds an ARCH=um kernel and then runs it.  Add
>> optional --make_options flag to kunit.py allowing for the operator to
>> specify extra build options.
>>
>> This allows use of the clang compiler for kunit:
>>    tools/testing/kunit/kunit.py run --defconfig \
>>      --make_options CC=clang --make_options HOSTCC=clang
>>
>> Signed-off-by: Greg Thelen <gthelen@google.com>
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> 

Please rebase on Linux 5.6-rc5 and resend. I tried applying
on Linux 5.6-rc1 as well as 5.6-rc5 and both fail.

thanks,
-- Shuah

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4bb8eeef-54ac-86a7-4bc4-8e16fc149c1a%40kernel.org.
