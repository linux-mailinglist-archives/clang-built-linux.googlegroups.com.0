Return-Path: <clang-built-linux+bncBD4PP5X5UEBRBCORXH6QKGQEY3HYXVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A5E2B198C
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 12:05:46 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id b18sf3766459ljf.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 03:05:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605265546; cv=pass;
        d=google.com; s=arc-20160816;
        b=t64IF5hsJ66Po2uNWg5cQgDoEKELm3Cq9bMZB2SRSOb1no7DJYA/ipueTXk85vZkRy
         d4Xv3VOU9YByAYwGOckZY9xPXoPaCgTBpPLZ7BnM3hbTaUoUBow8+BmTyey0/xY+6Ng+
         tqnVsJryrGmr2pW/6xEjOjAwdnpVmkvZRDE1gQgTHxv692kGH8sLn8FVoYMx+971oABG
         Xee1GuHbKbzMxJi9hJ/g8qmJmKmc3iqbHWIhiPydpedjgjMJvUFAk+ucLOpyk0CiPa1X
         0QbRLw2+e1+3p8oS/PGjAcMqIThYp1ruUZ3c3k41Gh8rCLU/uNMGK3im0HR3sViu9Wjq
         ZQRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=Ug3IqObvRlBxEDzCl6nvsqDmSOaIcIXHtL6UVCOLv04=;
        b=vmQtXzaPDJ5MR/U5oBdE14PT9tx7qtp4jZgXXqrtVnRV4uX6ESKZ8jUAB9F7bjZjhp
         /XhVBuzfJsWcLeBR5vu49umAnlSLLAw0aNoOS/ZCYnEI8tNyCbnrzBnSy/mrRFQ7TRXz
         gpkJTC3Zxb8FNHLP5IXKzJzMvp0cZbvuNftoTXDKB7r5hgid8D3s4iLyy/Vg+zI/J2pR
         LthKttLhsqJZyqigMeU6UWKZjlNFBGJU1fWl0SVXlVEaOQNrzIMFKWJMTJXCe4+JFnB2
         W9MKXK2N08nmPfHvG/QaGF7/7j1amx6x8fZmyCYyVWVT8VcCM8iWCs5E5YX6wiPyB7k9
         0okw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ug3IqObvRlBxEDzCl6nvsqDmSOaIcIXHtL6UVCOLv04=;
        b=WVucLsmAr1xVtNpxfOkmnuofXjx9xwsOo0umcSZDdHP4UYfib/wNehlfnvsnDfctPC
         p4Tna1NIY6YjvRnvP9DBBfb9OMeyTbQ0EUyJQPc1HJ+hkluc0IFZ66y3iJ3AcEbgCHtJ
         eMsgZ6BA2K8oFq4rqblBiXeTzIgW9CYqhp6ZXBD1qYnIeiFra5SLX9wqLV4EzlOaFyUf
         xAEJq80+cNbMaW6UYvpmB7X8qAq51+iWoq3E0QLO9PQxc0QFMegq/WvojhnzQTxYfz0y
         DfFS4wazHWqjfRmC+zwE5ReZJrePa0bSgZexktN2dXik4pCgoDrkkVm9vnitFYihUkhe
         UCTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ug3IqObvRlBxEDzCl6nvsqDmSOaIcIXHtL6UVCOLv04=;
        b=fztsbYjDyzUG925HA6I8IOtwPd12OCNaDWanRNK55tYWpPbkyLt9i+1xPfhe3bXmxR
         jA4QdEhrMJopQeOFJ5lJHFu0L7vJRZIanJmeSsqG3FmXvjwybQQzHOReBEvsvr6KrCUY
         MY0ADQXqN0iEsotEK/CBpcaReMrVu/fU8sh2ndNqvBw15p6pWMyQYxakKkZHDXFSE2pA
         of/SWmQQFLQ5ms3wJLYUwafIwg7Tw86MaqKdxN27zh+fPDgv+kYfMRaePDuIpDGkeLlW
         WUdY+fSPtXqMh3lkc2zvxgV7JnveMoEeJj4jNVr1X+nP0Xk+zfEJP/hm+bEnHnkvTPGZ
         mgrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cnfTJqPcY11ykik2yuxnnUiMpYBHhiDWRzRddYaFTpUh5hHMr
	Ok8OiLPnasEyLQtjusuN1hk=
X-Google-Smtp-Source: ABdhPJxaU7M+CaywvEZNNZL+fYjMQCkPtWvSfCVj15M5+EPtNR8q8ekrJKAAMo+b27PfFVrQI3+oTg==
X-Received: by 2002:a19:952:: with SMTP id 79mr767422lfj.559.1605265546141;
        Fri, 13 Nov 2020 03:05:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:480e:: with SMTP id v14ls3369330lfa.2.gmail; Fri, 13 Nov
 2020 03:05:45 -0800 (PST)
X-Received: by 2002:a05:6512:68a:: with SMTP id t10mr827208lfe.420.1605265544930;
        Fri, 13 Nov 2020 03:05:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605265544; cv=none;
        d=google.com; s=arc-20160816;
        b=dsiR2CcH1fP8XIgA3TO7XGHduLClTWuvUJSvw4MsPIHMbDkfzHutQW5vfHnpfRaC5W
         njiumT4oNvQ74NRiysRxJ9j5h0VT3YoEu5htXviC4VOOoKyCPLWonA2NasRude4clW8r
         g5XQ9j7qX683JfWlYUjUAzd50yW/SVoGFUpiYqER3mYfY14pKp+V+XuNDduul6K8BGAU
         8GqgvBFpPDOHaCdlZbOS/lae5ST30qAKUCX+fSAjiiLlELIppT4CyhnHJBVpF6ZV7uON
         qkEj5gbxZp0RI0zzdKfKxFRBigzrLYH69+NiUzWOWRiMEQwMEKTWC0yl5Wv6o6tlJ85E
         gxiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=ZJKTdK5BL5G+HMyvEIbM+aFQARj+jhXs2FdxWfE4gKk=;
        b=m1EaAq4Z1uPl9gYSXZDPpjJeeTg+EtPVQXMy2Cy8F2Y6pViydPigDVscmfqjxJXS32
         cEc7I20FFuqt+pPKfX5B0Ayrkl4xtDgv5+J0CWvqJ5f19HnBtlNazJgj4jmCE+XZQiwE
         4/8sX0faEaFFUb7/s/NLY0SpY3VBZIlllQWetM7YfB0CasVfL3LqgjCNCrvWaBjEaAiK
         6MqtbB+dnM3Uz4qvXGfjwnDBWeliW8twD2wyzTq6hax99D6bP/nnnad580a0xDwpgR9I
         /zabYrv7ydsTQmBX3LO/0GP3tcQnsT8QIi8yZRVxvfEYCz011LhLySswVFLgdAcAUeWj
         qS3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id y84si263668lfa.6.2020.11.13.03.05.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Nov 2020 03:05:44 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 723CD1F468E1
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, Nathan Chancellor
 <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 Arvind Sankar <nivedita@alum.mit.edu>, kernel@collabora.com,
 clang-built-linux <clang-built-linux@googlegroups.com>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6
 warning
In-Reply-To: <CAMj1kXFbLRTvGuRt5J3-oEuJrrHFV9+SBGFFDNsAftGUbwoTPw@mail.gmail.com>
References: <20201112212457.2042105-1-adrian.ratiu@collabora.com>
 <20201112212457.2042105-2-adrian.ratiu@collabora.com>
 <CAMj1kXFbLRTvGuRt5J3-oEuJrrHFV9+SBGFFDNsAftGUbwoTPw@mail.gmail.com>
Date: Fri, 13 Nov 2020 13:07:21 +0200
Message-ID: <87mtzljz12.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Hi Ard,

On Fri, 13 Nov 2020, Ard Biesheuvel <ardb@kernel.org> wrote:
> On Thu, 12 Nov 2020 at 22:23, Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> From: Nathan Chancellor <natechancellor@gmail.com> 
>> 
>> Drop warning because kernel now requires GCC >= v4.9 after 
>> commit 6ec4476ac825 ("Raise gcc version requirement to 4.9"). 
>> 
>> Reported-by: Nick Desaulniers <ndesaulniers@google.com> 
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com> 
>> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com> 
> 
> Again, this does not do what it says on the tin. 
> 
> If you want to disable the pragma for Clang, call that out in 
> the commit log, and don't hide it under a GCC version change.

I am not doing anything for Clang in this series.

The option to auto-vectorize in Clang is enabled by default but 
doesn't work for some reason (likely to do with how it computes 
the cost model, so maybe not even a bug at all) and if we enable 
it explicitely (eg via a Clang specific pragma) we get some 
warnings we currently do not understand, so I am not changing the 
Clang behaviour at the recommendation of Nick.

So this is only for GCC as the "tin" says :) We can fix clang 
separately as the Clang bug has always been present and is 
unrelated.

> 
> Without the pragma, the generated code is the same as the 
> generic code, so it makes no sense to build xor-neon.ko at all, 
> right? 
>

Yes that is correct and that is the reason why in v1 I opted to 
not build xor-neon.ko for Clang anymore, but that got NACKed, so 
here I'm fixing the low hanging fruit: the very obvious & clear 
GCC problems.


>> ---
>>  arch/arm/lib/xor-neon.c | 9 +--------
>>  1 file changed, 1 insertion(+), 8 deletions(-)
>>
>> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
>> index b99dd8e1c93f..e1e76186ec23 100644
>> --- a/arch/arm/lib/xor-neon.c
>> +++ b/arch/arm/lib/xor-neon.c
>> @@ -19,15 +19,8 @@ MODULE_LICENSE("GPL");
>>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
>>   * NEON instructions.
>>   */
>> -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
>> +#ifdef CONFIG_CC_IS_GCC
>>  #pragma GCC optimize "tree-vectorize"
>> -#else
>> -/*
>> - * While older versions of GCC do not generate incorrect code, they fail to
>> - * recognize the parallel nature of these functions, and emit plain ARM code,
>> - * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
>> - */
>> -#warning This code requires at least version 4.6 of GCC
>>  #endif
>>
>>  #pragma GCC diagnostic ignored "-Wunused-variable"
>> --
>> 2.29.2
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87mtzljz12.fsf%40iwork.i-did-not-set--mail-host-address--so-tickle-me.
