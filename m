Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBDNERCAAMGQEF4D4RVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F422F882A
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 23:07:10 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id a5sf5910815oob.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 14:07:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610748430; cv=pass;
        d=google.com; s=arc-20160816;
        b=DzfZfv+0bE6I9g1G1Ad8BKVqySwPInb1pAYYvkQasqv7fIjULUw2rXfupLmYbkqYp0
         niEviZRmedFvthkuZDE5uvZpOfP2fTdCNQs0TaYHFSu7JbDNczDkWUCM1pn9dNItqWmW
         YsuOMlviH7LbD7EcZ261bajwjyjWA9+RX6tn3uZfrXQzR6dNsE4KuMYdo0XLY9NUpIUk
         xmCV1/s+JlbEA5wMv5w7tL7M7J+jtNceQA9wRvRfLD54hQp8uhXT/6ljmgIMdxqgLpLV
         WRvPh5FhnAivaCi61vkUFEPBskUTNRTMcG4kihUN724exFYgfgzAZGOYJvaqNbMQQwjv
         pPpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:autocrypt:from
         :references:cc:to:sender:dkim-signature;
        bh=xFnhS82IBLuoHid7wBDTlLwSb8ubeexkISSfhzTTYvk=;
        b=JXwyDMBtoyLIj203nocVfG23c+sMuboGghYd29KEheWrzMcC50aZM1bGlRUjs2ki51
         3qMg+aaQK7PW7YbzyGt2c0UKA4lWWGo3bnCcjkmcOFAUBjXd4s9B0TXENSScysIapItL
         ETR4q8JWlQCf65EOILlFCM+Xl0q4MUuAT94jBjIX/nNek21ANOE8a6WJavOtdrbfgl16
         8oFU0z0zwBlEyUV4lWJ6EVY1a5gTLzh9TlaYh9xYs9waJ7kiXm6Ook/5XFSqja/FJguj
         TJLsF4ud/SSjXbw1bnoN3QHFuAs61lEhvVLRd+XIHR5bVegu3cTgoqvzTN6oM9q6MAlc
         Qi4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=vT5yE3q0;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.184.18 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:autocrypt:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xFnhS82IBLuoHid7wBDTlLwSb8ubeexkISSfhzTTYvk=;
        b=oLiY97CgFi2ED3+f1d93CKSq91FYAa2cuYxTctEXS9RRo5M5EHBxbehBwRo30YQd0U
         gMSHOneiS0imM/3c2X7eAXUQokAtB11IDllVgCT/RdFkZhXyagV3fvWsXtGMFWvCfyz5
         lGVE7/HuxqhZkmaAs9ljfhPAnw5OsjPEEYx0FzqYDMcEn6ksOAXXRRkRdJd3LYucJ599
         39rwSGBD11qFn/PbcOC7paXmhrG/AGf0ixECto0b1VkvTxFOsg9/uC9USIx4siX2cq4y
         jmt5HSG+CdoBSG5JtX5QUaO1MsEx4GEqAap+BpF/kvU0B/J4dc2RsX1jzP+DcfSHrbGf
         B3VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xFnhS82IBLuoHid7wBDTlLwSb8ubeexkISSfhzTTYvk=;
        b=qUoW017Z8DxeRQo3g5NmMBPHEfVkR24St6mdWTFeRKC0oqK12HrURW7k2USKblIwYt
         RxZF1n5Vz8KeZWl4QXehHOC9eEphkHBgMEn2Td0wSBiLEohj+ChkUXfHK4elMrbSypj+
         r9MKVRHY4seVoSSqOKnNKc1DrCOlIB0UNS0ExwELRPATJT9Fao6ZS4YjLoQboiGiZMK5
         644Re98ZSBIbqtZU+bGB8NZP9DTJtI2hbRG5Tu47VDV5u1D9SQJ2s4YWN6bnW/MwjFPC
         FUhBVAXJhIQQriSFElTkaMCeKj1SSZ1dB7R8MlG4GLvw5lSjWWlARS4g+HM11NJb499S
         Py3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324YR7sMsSXn2m0MD6jAIqeePrrR33z6EIkTxG9oxbz/XN32jeK
	366GYtyoY9iu9qYXaREHg6o=
X-Google-Smtp-Source: ABdhPJzKCItzRUrJy9FMI38WZvPmPToH4hFb80jj+kHuGSl/OuvuMUpiQyNUxqIN5evTafzBK5Vfbw==
X-Received: by 2002:a4a:751a:: with SMTP id j26mr9918683ooc.68.1610748429747;
        Fri, 15 Jan 2021 14:07:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:24b0:: with SMTP id v16ls2651488ots.10.gmail; Fri,
 15 Jan 2021 14:07:08 -0800 (PST)
X-Received: by 2002:a9d:7502:: with SMTP id r2mr9621000otk.344.1610748428757;
        Fri, 15 Jan 2021 14:07:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610748428; cv=none;
        d=google.com; s=arc-20160816;
        b=w1Oz+rO4oFT3XXkemr/o8wYjSZBxVD9LOwlLUPn4oheBZ6VyJZKxOlkfl0K0278ps1
         RNVFzYcgsuHUwAPD/Y9tHoLhPmbBR43ocyYk92IlFKCSoR9qA6nAVLyfUNM9XyZPtgfU
         1LHFhER6HgIPLOCPfydEg9hUnMyxLQ5fq9VOA3ezU6YNAZpC5DC2dLhfmCGlehzU3WKR
         bY9xvmvgHSLaALlbchEOdAGpGv9EZG+gud6LTrO8CQ0JrF1b0c+ZcC35hI4P60v5L7io
         2ps6cX9SgwtNVkMs80L7VZnbH1VavnERR1HVKCHxnZ2EsB16cECGUm7Ut5CSr+HZPVY/
         iXnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:autocrypt:from:references:cc:to
         :dkim-signature;
        bh=2sIJUkE+M4ZebT7Tgsm7FilYQA7ZdIzWo9+eB1/Wo3k=;
        b=O/7QBBJgswM9afdtMJJgAI2E6/owsnYx/C43SUKwbfmthr7rjzhrCCiNSVM/aL07f4
         BXGGbd2YLEBfGExRhMXAZxzyDOpxEkJMejsKw7GnKVk704qHWvC53WJLQHKb4I/17BdB
         HfEv82YhdsBs8Ev7q/huTK/wmnv74uGC2sxTfCdvqE6/B6Snh1LPNWhNGdjRGfYc8z6L
         Pc8UBIh6waMtM2kRW9TYfGHUoHhBwL3NKER0HIo5AUQ/kyakmnTj2ySu/M9N9vWoN0zX
         May7XPk6f/ZGKQn23gTr87J6LUAXdm5MFr6lNgLIS+wZoOiKf92Oo5udGvXV9eiiBEzM
         GLWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=vT5yE3q0;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.184.18 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway36.websitewelcome.com (gateway36.websitewelcome.com. [192.185.184.18])
        by gmr-mx.google.com with ESMTPS id a33si713153ooj.2.2021.01.15.14.07.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 14:07:08 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.184.18 as permitted sender) client-ip=192.185.184.18;
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
	by gateway36.websitewelcome.com (Postfix) with ESMTP id 1BE26400C8F81
	for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 16:07:08 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 0XFMlSUj2svw90XFMlk0ai; Fri, 15 Jan 2021 16:07:08 -0600
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:49252 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <gustavo@embeddedor.com>)
	id 1l0XFL-003Ikn-Qe; Fri, 15 Jan 2021 16:07:07 -0600
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210115184826.2250-1-erik.kaneda@intel.com>
 <20210115184826.2250-4-erik.kaneda@intel.com>
 <CAKwvOd=16U7n=d3AoVq6X=kVimHVj3LcuMUZHzn-99f_WmKPkw@mail.gmail.com>
 <8c447469-0cea-0d30-14cd-7108314fbd34@embeddedor.com>
 <CAKwvOdmaS2aJw2Xv3b5YkzeA4Fq4ZR5a+Zgs6ZnNxohzOhHg=g@mail.gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Subject: Re: Fwd: [PATCH 3/9] ACPICA: ACPICA: fix -Wfallthrough
Message-ID: <b7b8bf73-bf42-1bb1-ac56-f6de9418ac1a@embeddedor.com>
Date: Fri, 15 Jan 2021 16:07:07 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmaS2aJw2Xv3b5YkzeA4Fq4ZR5a+Zgs6ZnNxohzOhHg=g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1l0XFL-003Ikn-Qe
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:49252
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=vT5yE3q0;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.184.18 as
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



On 1/15/21 15:38, Nick Desaulniers wrote:
> On Fri, Jan 15, 2021 at 1:32 PM Gustavo A. R. Silva
> <gustavo@embeddedor.com> wrote:
>>
>>
>>
>> On 1/15/21 14:39, Nick Desaulniers wrote:
>>
>>> +/* GCC did not support __has_attribute until 5.1. */
>>> +
>>> +#ifndef __has_attribute
>>> +#define __has_attribute(x) 0
>>> +#endif
>>> +
>>> +/*
>>> + * Explictly mark intentional explicit fallthrough to silence
>>> + * -Wimplicit-fallthrough in GCC 7.1+.
>>> + */
>>> +
>>> +#if __has_attribute(__fallthrough__)
>>> +#define ACPI_FALLTHROUGH __attribute__((__fallthrough__))
>>
>> Why don't we define "fallthrough" here as in include/linux/compiler_attributes.h:
> 
> We do.  ACPI is an external project though, so it's not guaranteed to
> have that header.

Yep; but why don't we define it here as fallthrough, as well, instead of
ACPI_FALLTHROUGH ?


like this:

diff --git a/include/acpi/platform/acgcc.h b/include/acpi/platform/acgcc.h
index 7d63d03cf507..91f7a02c798a 100644
--- a/include/acpi/platform/acgcc.h
+++ b/include/acpi/platform/acgcc.h
@@ -54,4 +54,19 @@ typedef __builtin_va_list va_list;

 #define ACPI_USE_NATIVE_MATH64

+/* GCC did not support __has_attribute until 5.1. */
+
+#ifndef __has_attribute
+#define __has_attribute(x) 0
+#endif
+
+/*
+ * Explictly mark intentional explicit fallthrough to silence
+ * -Wimplicit-fallthrough in GCC 7.1+.
+ */
+
+#if __has_attribute(__fallthrough__)
+#define fallthrough __attribute__((__fallthrough__))
+#endif
+
 #endif                         /* __ACGCC_H__ */

--
Gustavo

> 
>>
>> 207 #if __has_attribute(__fallthrough__)
>> 208 # define fallthrough                    __attribute__((__fallthrough__))
>>
>> --
>> Gustavo
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b7b8bf73-bf42-1bb1-ac56-f6de9418ac1a%40embeddedor.com.
