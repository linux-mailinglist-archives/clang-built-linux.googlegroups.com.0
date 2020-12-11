Return-Path: <clang-built-linux+bncBCCZL45QXABBB7P3ZL7AKGQEKRWX73Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C23A32D6C85
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 01:31:58 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id e19sf8968444ybc.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 16:31:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607646718; cv=pass;
        d=google.com; s=arc-20160816;
        b=UBn5EkAo4ZVbu6WkG7YO7l+2wuuRW9S/uUeq61Q+Jly7anrQdj4VeHwwI1qF5ONG5N
         H3hwt9fApBOQxB+ms8V4a1rFY4buDnSZgTOX3/i51CKNIDGi8dBn5FF2hlvwI3qxd2ZV
         PomVrHAvNUWaHcP49n8gWYcsn4a+ufxk2kZC9+0j2DQ54X9PptKcNSjaPzXGubrFiSKK
         bMHIn6Ge4vPCpOK0TD+Ff/Xqx7Ya9S5ivK7tei/l8efRXyWPR0lKIGebO9ukmyaMmb29
         A3xqyliPdickd1dM0gC8oXR4JY0a0xQuUR7NsWr9dAnZsX76gZ76ig0BCvUqDRtT3SFK
         j8tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=bglJp9kXLIH3lgmUxQl9oSajLhkEvV505MRB0il5UbM=;
        b=ZDb/S1l4ktXIiwt1fN0NdfubSUZgMgO4r6Q6xYvDuZcp2Q91wYgiC+obTG7J0R7cQC
         DjQ2D1FwsMgcKVov/RLKisc61TjpXiIv2Vkil3f4GXUcPMFnUP5K4KmmeRxefUjhV3QI
         3ofNa/G5TPa2sTLThcutPjJalx7v9MpssdEreZzZgWQ8WfKHIR9zsMG/bsgN3WmOOYWi
         U7lgfqsZ1SbtO2kY4kYgKFiwgbz71WnAdzJgIhJ74zvLGIFi5KXI0FN+OK7icqXUwdMz
         ATQNZ+G7wHU9+YX7/maLlx5XkoiId973iVIPnWw+z0JSNTgM6svYvhJ3i6xCgdG4zwPq
         +Jvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NOzXytw9;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bglJp9kXLIH3lgmUxQl9oSajLhkEvV505MRB0il5UbM=;
        b=EWBAtp1JnrQLKj2MRYzwb78q0mdTxuteHQu3aUFtBirVZI+5NZEb/THyke97BeO++L
         XrtikMcpM0I7p8riDWCSwqsXdsVw88WCgRdIuWfBMT1LxHCH4p9X1A9qIKYMveaW5+qQ
         6kXFhYDAptYJ6pN4OLpaIuXObIbrvdF2j1VfinNLqUHxY78THPEuvL7AK1ISBBwvINX3
         j3TTW9wmVG1OXQP29L7K1liPT372GiqYmkNUjLbidabfuZZF/vExN9SZpDdq0HKjbV0h
         VDw1+BcX+65eEFqgqGz89X5Gq7jtcipBf8NzVtf8yMGg56xi0FYKo9FXAEnVn8EqBGYZ
         f/jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bglJp9kXLIH3lgmUxQl9oSajLhkEvV505MRB0il5UbM=;
        b=V7q3Y4NC+QNqAhnDh4+FDayWIwvLk2BGrBHE2KT1ot94JvVN51UrDzuTkDyPaSdXy3
         zsSm+iRfwkjxl4TfeSoKXPUfhdArHlgrX4xEdlDGV6UowdaqUf23SSNv7jF2s6tSOfFg
         eYtatEH6wmMowfKWJffVhH/gZKT8M4DsFKAE2N4OHm1YWJ5JTVL8Nc91xhbNeMZLesZo
         gDVR82y1VbPEC0o1TlPVZmd4+/Yyt52SXrwiFyEd+dmFRpfDSBcZdhEA4RTBjH5T+dH0
         DsLIWMpdt4X/UUwx3SFetoPdkn1B+Xs/ILEtws0VomUlHdHr4aUzTP0hFIzsfYnkWjoI
         pVcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532k8S9tes9prJeitkdHOjRetPb/9TovIF2OGbG/8IX1eehK96ht
	j2vTTOXEzUv/EVilPVdd5XE=
X-Google-Smtp-Source: ABdhPJxGT153RR0W2h/astArzo/ApiUe3ySbXORyZkKE6JeOohoh3+EraSocTT8XbpHFuRUMA6sllw==
X-Received: by 2002:a25:c301:: with SMTP id t1mr14619339ybf.297.1607646717876;
        Thu, 10 Dec 2020 16:31:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:32c2:: with SMTP id y185ls1370225yby.8.gmail; Thu, 10
 Dec 2020 16:31:57 -0800 (PST)
X-Received: by 2002:a25:16c4:: with SMTP id 187mr14080559ybw.39.1607646717473;
        Thu, 10 Dec 2020 16:31:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607646717; cv=none;
        d=google.com; s=arc-20160816;
        b=zmeO38SPzhOPmSgKZ3csmi6l1MrAwpidhCY7/PB2pmNqkvn1A1uA59lKXkxVDu2MW5
         e79Nh1O2/YpBG34uPLf3X/NgKKHRR32vfAiwvgNhjWzAUARtqTZDruDSKr85zegml/at
         4/mWtElqwSihlQCFG2neMfVUI7jmlPAmRwa23McWW9ZwEKXtmUcFlTJFTQRFn9pCGRvu
         T5A45Ww+5Lhc00lXB55nIWTVMXzmWbjJSKZg4VRKx+hoLiwGmZ+P1682Ffjeg6iPOprR
         5wW+AoLQc5g8dcaPZYoFSyasXFITUuJYjap4giImRWLA5HvYeAd/G0L5lrHD7u2Nv//A
         wDGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=yiQdoMf12SNG+ZW2M45uraLJUUvpcbUlT/pdENldQuk=;
        b=euE1mwcg4mHwrOqoGlGUv1ll+OO4yabEx840DcKpOzH+H1h0bywp7vjp2s0kOEwonM
         EmHcLiaUqSQKHNsp4nJxsc4S4B2isrmr28TUCra9PdzK4O6Nd+i5aUIVHZ8moW31sIoV
         fgXTwmefrdCArqR8QoaDYECe1G7d342x+dJHTQQxYf7fLOeeCWdl6JpXwMbvk0JxZp0s
         6lRIIHeZKWH18CXYIhzXMYVXEL2rutZ6n/YTo/M0ZQ4eUr5zpYUYIVdUltsUGUaqzwuB
         gPvAImWe/ZyJMG30XyX18RChdbjBk1kRhdpU39QIzOUBegvDCErQgrGBbkJ5XMo4wddE
         oz9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NOzXytw9;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id x14si643370ybk.2.2020.12.10.16.31.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 16:31:57 -0800 (PST)
Received-SPF: pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id y9so7205751ilb.0
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 16:31:57 -0800 (PST)
X-Received: by 2002:a05:6e02:1b8a:: with SMTP id h10mr12793622ili.266.1607646716914;
        Thu, 10 Dec 2020 16:31:56 -0800 (PST)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net. [24.9.64.241])
        by smtp.gmail.com with ESMTPSA id d5sm4007163ilf.33.2020.12.10.16.31.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 16:31:56 -0800 (PST)
Subject: Re: [PATCH] selftests: propagate CC to selftest submakes
To: Andrew Delgadillo <adelg@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Shuah Khan <shuah@kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Shuah Khan <skhan@linuxfoundation.org>
References: <20201203221005.2813159-1-adelg@google.com>
 <CAKwvOdk6=TgL+f2-WvE7tsK0rN1XQ+NdXmeJfDkLsa8xPmgipA@mail.gmail.com>
 <CAEHm+vHtMQtMThgE_BwpiBS5v0a61L_TW9vgKLaFTtcgg9HSgA@mail.gmail.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <e78c3b86-78ab-2b2e-d8be-e9118d7d2392@linuxfoundation.org>
Date: Thu, 10 Dec 2020 17:31:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAEHm+vHtMQtMThgE_BwpiBS5v0a61L_TW9vgKLaFTtcgg9HSgA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: skhan@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=google header.b=NOzXytw9;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates
 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On 12/10/20 5:10 PM, Andrew Delgadillo wrote:
> On Thu, Dec 10, 2020 at 3:08 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
>>
>> On Thu, Dec 3, 2020 at 2:10 PM Andrew Delgadillo <adelg@google.com> wrote:
>>>
>>> lib.mk defaults to gcc when CC is not set. When building selftests
>>> as part of a kernel compilation, MAKEFLAGS is cleared to allow implicit
>>> build rules to be used. This has the side-effect of clearing the CC
>>> variable, which will cause selftests to be built with gcc regardless of
>>> if we are using gcc or clang. To remedy this, propagate the CC variable
>>> when clearing makeflags to ensure the correct compiler is used.
>>>
>>> Signed-off-by: Andrew Delgadillo <adelg@google.com>
>>
>> Hi Andrew, thanks for the patch. Can you walk me through how to build
>> the selftests?
>>
>> Documentation/dev-tools/kselftest.rst says:
>> $ make -C tools/testing/selftests
>>
>> And if I do:
>> $ make CC=clang defconfig
>> $ make CC=clang -C tools/testing/selftests -j
>>
>> I observe a spew of errors.  If I apply your patch and rerun the
>> above, I see what looks like the same spew of errors.  Am I "holding
>> it wrong" or could the docs use a refresh?
>>
> 
> Hi Nick, sure thing!
> 
> I also see a slew of errors when building with make -C
> tools/testing/selftests. However, that is not the problem I am trying
> to solve. I believe we are seeing errors building that way because it
> is missing some make variables that are normally set up when building
> from the kernel's top level makefile.
> 

Both options are supported and should work.

make -C tools/testing/selftests
make kselftest

That being said, I use gcc. Can you send the errors you are seeing?
It is possible, a few tests aren't building and need to be fixed
for clang and gcc.

thanks,
-- Shuah

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e78c3b86-78ab-2b2e-d8be-e9118d7d2392%40linuxfoundation.org.
