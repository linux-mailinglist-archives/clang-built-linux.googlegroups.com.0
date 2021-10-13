Return-Path: <clang-built-linux+bncBDC2RCVE24NRBQNETWFQMGQENHIAZAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D1B42CCF0
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Oct 2021 23:40:18 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id h15-20020a4a6b4f000000b002b6fa118bfesf1744219oof.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Oct 2021 14:40:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634161217; cv=pass;
        d=google.com; s=arc-20160816;
        b=GJNXuEs9uCFKWWeuR0xpyLp/c1fjcXcRLKjVdGfP2H9sJf3FzH4lgq0FfvHjqYjYbq
         heaO0wd4o1z0g6LRQ8dF/xG3Ge1zEDbOOMwuIYtpDmMrfVW0a+idcbSCzXO/QTYHHdeQ
         d4f/Obk0iv6it0wRHNbmbcApZor5jADeqHgYUlsP5RG8UQrsoJIzQsxH8Hida2OM/OKU
         sIlPbhB9E0/RDF11nXWJ3XkM1dtY+6rXJCM9O3I4IyVMSrt6oscxszSBxOW39rMCGk9O
         qJSRynHd2QKRhh/dPgC/baR3EfJnX/O00yuiZfjtiYp+NyQO5UiNLQ2tc1vkOW6kylzo
         5GlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=yN1JsvmBYdomOPb/j1wkOvu3aoIBkVYLqVw+Rcu8Ce4=;
        b=IdO23uZ7WKPMGHF3lf0hCKj4NNg3NAcfHfb7ID/i361Idya6r25Dvg9BDSXTMCllRP
         oqMW3nbcCJcFZfB2jOvq+i5uHHqIhuFhoV3g+Vwpjm0v6kbDYVyJtZona/Bong5G2jet
         UolTx0LEe06Qp5nwKn0QilwsBUQTVk/+b/Ez5wEDvkJeNPf+MffI1XGJl54H8MKUvRvo
         0n5OMMtDgiAZZLnE+REu8cAEiju7/eAP8d7MpkBEqpKW6JF1o8tLZ6uf5f2fjjetabpu
         /FV15qW2YaA+mw3uXN+jrCZNKnrAGL875bXntmz+6IT5vY0uXMb1HQhHBgl8QOacdD4t
         rEew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.42 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yN1JsvmBYdomOPb/j1wkOvu3aoIBkVYLqVw+Rcu8Ce4=;
        b=qf9Oon3zIIWfnAdw7wLHhJCyausb/sFO2o/ifxx744sMoZiVRGRtmLT+hzePNFOQNT
         VFqBzL+1rtDB7/bROI1Ec4+P4ndELd4vssbUWr8fQeEtoid242yVwNSaD/a/OdNf40hq
         P7hTQ4iZ1tWi6ihyi6ZrZ3yXFr+WWlOlrMJJF7SnR/kEiVJc0boUADN8Uq+wKjewURUj
         55iQHN1BedauTE+z5Drt4DuDbgVs3IoDZX6pJDAWIYzx28khMeEnHxUVzrXnlhLRfvqu
         6iKfVmO9YZrURU2yoacBlT9J5kwVSrvI5Rdr/uM3yzKDsIle7V0fthHzsbBXV3pcpY6k
         /1sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yN1JsvmBYdomOPb/j1wkOvu3aoIBkVYLqVw+Rcu8Ce4=;
        b=CKh0cNdDt+NL8eKF0r6us4TXSdPIDKWh5oCy+PDJk17Cvgp7nI4dx8OH6r8YIUxO45
         ZRYRDpt3tnZ7AfMWl0aNPm3pDt4B9reHq1tEJ4QCL5LJXUzYS2befYj3W1mqlHzWmSFE
         Evvv3+Wsb65WW8ilqdmOlEB6OO6BT+0XjmfXG8AfHIAxPB2EyG9yKGv0U2UAyUHrpzJ9
         G9OnGW08t1caSLF+nYeg0BzR8I0w3/A+KoyluW5VJtmApr7jCorWkWmW8E4ly7d8NSJ4
         i4si1pTEzdIc2TK8zlISfcDkaimLaHSGkchCHMGx1LRdduxBKBHrenUhwp85l6q4eaMS
         GJWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KAxqNi8DsRyAjqfBv/RLtfCAkS/NSBNEPxUABDwxuFqlaFtVs
	u4fxnsQ9drlb29rr0AlV0+s=
X-Google-Smtp-Source: ABdhPJws/ZDWsqvb9dDl8FNVF6BwMob9NHrRDEEqwDQzbE2yxBqCcmzv72lM9C3I4Wbmj/e7J5v2wg==
X-Received: by 2002:aca:300e:: with SMTP id w14mr1228416oiw.178.1634161217084;
        Wed, 13 Oct 2021 14:40:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:356:: with SMTP id h22ls525903ote.5.gmail; Wed, 13
 Oct 2021 14:40:16 -0700 (PDT)
X-Received: by 2002:a05:6830:1c26:: with SMTP id f6mr1473545ote.28.1634161216735;
        Wed, 13 Oct 2021 14:40:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634161216; cv=none;
        d=google.com; s=arc-20160816;
        b=WUgudFrFkhkLGbFp2GMOsTWqQ2yi3brxpK4Ao8PcLao3+P1bMzaQwvE/H17Hed4VDu
         U9avxedVGwRgqLceAyrWurbNsCf8QXFJgkDTsJ6fZ1OwlIXkvNJvxp2WFYhb7nOfI/Jq
         rhiMkf05O4FdLrEseDqVAFDpRsI6USDZU1DXmsX25FyVYhr1eMPu6eljC2D1gacRbq1l
         pLPm7Uh8ni7p0oPe46RcGOLOFF6NUR946qWipePEILJANy90lqa5fZT6NOs5j5CkgiMi
         ZWhpVqU6rvwKaFcSmm5gArZmSccVs+FJuT4uLep18jlLFUMoGWDdWSFOPsh0dCXAsrqS
         0JFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=JEj+HU5PyvsLiS+1U7TFJ1oSdu/sfHnlrJaGU1cRs98=;
        b=JaVcd+ZQ83Km02XvvBOVGm0q1ySNJsUHYD2q3/D+ZYPh4XF2fjw2vmflAtviyt66EO
         13yMmdvC6n60r3HgyQOQskeU93Kb0PsWLqXlIiDCTJ5I4TRVMByDKtf8ENzCKZ3ZnogL
         VD+4WGwVIkMLq2Yk+/mCBJfAHOzC7XgHZDfXQEGYL5czMJ3i3GZP9k2jPLBt2UmHyhhR
         jbwCrjD8EQdf93DzHUg37O223GcAN/HeHAnM92sZEF95DFHFUf69fTn8xGUN3xKN/jsk
         +4JIo2KVQyyiq7PG3SZHk1IlpKAUN8vxbUyuoeq2xU36ebldR8ZxFtyAjxTf3fxP2ujZ
         7JJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.42 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-42.freemail.mail.aliyun.com (out30-42.freemail.mail.aliyun.com. [115.124.30.42])
        by gmr-mx.google.com with ESMTPS id m30si64331ooa.1.2021.10.13.14.40.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 14:40:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.42 as permitted sender) client-ip=115.124.30.42;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R131e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=ashimida@linux.alibaba.com;NM=1;PH=DS;RN=28;SR=0;TI=SMTPD_---0UrjC5sw_1634161208;
Received: from ashimida.local(mailfrom:ashimida@linux.alibaba.com fp:SMTPD_---0UrjC5sw_1634161208)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 14 Oct 2021 05:40:11 +0800
Subject: Re: [PATCH] [PATCH V3]ARM64: SCS: Add gcc plugin to support Shadow
 Call Stack
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: masahiroy@kernel.org, michal.lkml@markovi.net, catalin.marinas@arm.com,
 will@kernel.org, keescook@chromium.org, nathan@kernel.org,
 tglx@linutronix.de, akpm@linux-foundation.org, samitolvanen@google.com,
 frederic@kernel.org, rppt@kernel.org, mark.rutland@arm.com,
 yifeifz2@illinois.edu, rostedt@goodmis.org, viresh.kumar@linaro.org,
 andreyknvl@gmail.com, colin.king@canonical.com, ojeda@kernel.org,
 luc.vanoostenryck@gmail.com, elver@google.com, nivedita@alum.mit.edu,
 ardb@kernel.org, linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <1634148189-29393-1-git-send-email-ashimida@linux.alibaba.com>
 <CAKwvOd=qxHU41HFEWLAz6DOvSMPdW863E9SKVe0PFK0ePDvizQ@mail.gmail.com>
From: Dan Li <ashimida@linux.alibaba.com>
Message-ID: <c2d0bfc9-364e-a2a8-e786-7a5102e34ddc@linux.alibaba.com>
Date: Thu, 14 Oct 2021 05:40:08 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=qxHU41HFEWLAz6DOvSMPdW863E9SKVe0PFK0ePDvizQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: ashimida@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.42 as
 permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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



On 10/14/21 2:50 AM, Nick Desaulniers wrote:
> On Wed, Oct 13, 2021 at 11:03 AM Dan Li <ashimida@linux.alibaba.com> wrote:
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 62c3c1d..da2da8c 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -81,7 +81,7 @@ config ARM64
>>          select ARCH_SUPPORTS_DEBUG_PAGEALLOC
>>          select ARCH_SUPPORTS_HUGETLBFS
>>          select ARCH_SUPPORTS_MEMORY_FAILURE
>> -       select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
>> +       select ARCH_SUPPORTS_SHADOW_CALL_STACK if (CC_HAVE_SHADOW_CALL_STACK || GCC_PLUGIN_SHADOW_CALL_STACK)
>>          select ARCH_SUPPORTS_LTO_CLANG if CPU_LITTLE_ENDIAN
>>          select ARCH_SUPPORTS_LTO_CLANG_THIN
>>          select ARCH_SUPPORTS_CFI_CLANG
>> @@ -1062,7 +1062,7 @@ config ARCH_HAS_FILTER_PGPROT
>>
>>   # Supported by clang >= 7.0
>>   config CC_HAVE_SHADOW_CALL_STACK
>> -       def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
>> +       def_bool (CC_IS_CLANG && $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18))
> 
> I guess since clang supported SCS since clang-7, but the minimally
> supported version of clang according to
> Documentation/process/changes.rst is 10.0.1, then this could be:
> 
> def_boot CC_IS_CLANG || $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
> 
> Then we won't have to touch it again once SCS lands in upstream GCC,
> as the cc-option test will start to pass?
> 
Thanks Nick,

That sounds reasonable.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c2d0bfc9-364e-a2a8-e786-7a5102e34ddc%40linux.alibaba.com.
