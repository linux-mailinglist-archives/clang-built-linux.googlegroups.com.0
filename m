Return-Path: <clang-built-linux+bncBCS7XUWOUULBBYXCXL3AKGQENS25ETA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 853DF1E4D19
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 20:28:51 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id j9sf3523942oon.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:28:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590604130; cv=pass;
        d=google.com; s=arc-20160816;
        b=yAT/qrhrkhZzJ5s3jsi1t1Ghq8HWg+PM/1Qpj8EeUeBPGH3BUbhqYs2Z4Qm7QV1sYr
         JZpDKQmYWKspesl4q88fmzRDGWU0egk2YiVMm+gZfT/3d5CZ9bhIofY3W0M3oFoj/6rn
         zDQ5GKf4TAO+BBQIm+jDic6Sg2CNr1mKzQ6gDgMdS7jVMmNyQe2Mo4KPLAeo+uMEdp8n
         OL2nmyLIfH6WmyjL9FqVrhQ53OEJg8lRHK9cbH4F3Hx7azh66/0lq1aLIiUfCU2fcXvK
         rD8dENskRB99fg9oqewWo4B+bvmjK6aAu8DAh3Oty0RRGZjCcDzCQ6rghIfPYaxkMs6z
         OIPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=U3L6eJjuK77EYttJ+7LG8eTHTCgzf8efhi+3uNcgInY=;
        b=JYmEFAVuHVuC9LUDTO1zrFOrYTKuMfnY4C34iGMmx2xqJ6YtYIw1wnoTDhhds2pGWD
         P1aDlB8upqWTzKGDFfOmGrng6JE38Kk+zZt/J7xkHAAbetLUSwK7YDHq/ie/l1pLRLsV
         SQDCi9FtEHXPbmMQ3bpGtvFShsk4smjYWPtmpFV6iS5Xi53bPVnZAaz///4gAab1LPZ5
         OIcqaxB/c3NB9AY/6RLQVfbeyUsgvjg52fGx+08dEUThWU4wzwLyvzT+BDTN1IDpusEq
         9wV4PgfqHZsmca5G4XbpUOkHF0lQc5ssidtL2T1QexydM+4+cqiKuyhG49e1q0KM/9jT
         mDsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s5sgK5hV;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=U3L6eJjuK77EYttJ+7LG8eTHTCgzf8efhi+3uNcgInY=;
        b=jUJHPO8+r2mgOzTNYrLUExKpAq8LyA5EYxpznH8p57HcKCGfUovqgkiaQZHCSGgJ8P
         6dG7ibHCOyP5Fx3gcTTO3IFDG2Qoq21epKZV2Nf5GoORNfLiTEsi/MX6Qt+nsFmkq9Bb
         IzgYIS0WM5SAqc+y1RNSJpcy5Il1LgFYYF6sbJqEbvyhD+ktYep66J02J9dn7vVSBTvO
         GY0+GBP8qh0WUjp/0aEQURnNTFsy4+bF9P9hav7b6UedlSDeTRMbZKvsz6Qh+b25FxMB
         GAFNUuC5+bDpplJIHNt06Uxj31Fz9/PDGqS1FBbfWHhXgTlWU3hdiNyB+zeUuL84BwST
         IIMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U3L6eJjuK77EYttJ+7LG8eTHTCgzf8efhi+3uNcgInY=;
        b=nqWct1mKcHUFNJ29m0sdTLMUm7DH1NU+87cnZ0f2/nO2uwyd/NfhANJmfVRmKRoIyx
         N6uosbG4Ry9uQ3o/bBjYvbs3gR/JO7yDn+jCFxGwJF3LN3quQTp2Zq4tY2CYb6TfHV2r
         VwSTlHlFUidgSlJOgIcKuhG4XdDXadu9UmDjR4PNJ28Win6JQHTDNVG+bm+z9D1JxroQ
         A/n3XNL0EVwC57OxDg/Tf0Vk6FJhdj0se0cRjzS3dtS0QWbtKmRoQZUokdYTZ+5GcWa5
         7QTilSxwkyLznLd5g8dypTSSTrmqHclJ9NH6b5ZHiwscl/Ebsy9VMO7dMTy+HwJQWhE/
         7ZWQ==
X-Gm-Message-State: AOAM5323maigNWLz4SoQSkClWmchSr/blktamSdg/+iAvq36Yg4xFY5P
	bl6MTo29B7kUMypN6m/9s9Q=
X-Google-Smtp-Source: ABdhPJxWhYlp0J1rotBmCr8kRutZ/C+ULZeapIytzdfaLBIv7GVqNf3N6sa3zhYJnhsApr30ZlEIGg==
X-Received: by 2002:aca:50cd:: with SMTP id e196mr3417647oib.93.1590604130503;
        Wed, 27 May 2020 11:28:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf10:: with SMTP id f16ls3000941oig.10.gmail; Wed, 27
 May 2020 11:28:50 -0700 (PDT)
X-Received: by 2002:aca:489:: with SMTP id 131mr3803481oie.131.1590604129881;
        Wed, 27 May 2020 11:28:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590604129; cv=none;
        d=google.com; s=arc-20160816;
        b=bVRHt+DXEG/62SymL0RtGAhUiAtgTxJIkAaUiXQxaqJVvm10tf3+L/7jC2X2xcHIWx
         rtAeq8FYx9J5xgsIEvFTiU4SaeiY8El1DDWcaypJTIIVJT37n4T5IS+1wka7Yx+T+84Y
         Hb9n3QCBP3MC8MEmHEKhtJxY5hriEWTHRfly4bu2QnNcrmJ/1PW0SoDo99xwUezwn8JE
         1NYPITR/BSt4GHTKniY04S4jgR1N98vQh1BpJYv8SFjkLrLs5OWMuazv1J6NKYzh+nV6
         15fTh00ueZRExUE9dhoA+OocZYTRxJuVXo36bON+yu4NpXy17tDEPtjXVXHL0PRkx/fL
         LhmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iA+KkSp+x1pCOvFG2laI62cGHgeFrOqb4fOzsNTxNXU=;
        b=Zmd0XIqwt+OufkiDMTmS9bPVbk/I3WXyTbKB48RLowOomZlM0fBLRXOej2izvF95W3
         8kEmP027LddTPHVV4UrTW3VTEBnDXUK1RZgfrW1sq0ajfEo/9DPXfs+b92IjaBiUrLUt
         ObwP7QiCzq+PiGw2MFNTicM3zzSuNHtdTqR17pQbuCVR1WxYmTUZELnBkLz7DeUlaYi3
         zyv7nyOfZVURE/B7k4MStP/NxxHVf0hs7kv/8dmdN63y2zA8wuFc0LooZbfS72YRla0N
         IRRG6ERgA1U58M9fDrnYE05DFZh57tJMdLtGBOJS4ietWkaWzi3MjsrE6UfZpWSOnte5
         QxwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s5sgK5hV;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z6si323747oih.3.2020.05.27.11.28.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 11:28:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id y198so12226524pfb.4
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 11:28:49 -0700 (PDT)
X-Received: by 2002:a63:e008:: with SMTP id e8mr5139090pgh.451.1590604128900;
        Wed, 27 May 2020 11:28:48 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id z8sm2517225pgc.80.2020.05.27.11.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 11:28:48 -0700 (PDT)
Date: Wed, 27 May 2020 11:28:43 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>,
	Alexios Zavras <alexios.zavras@intel.com>,
	Enrico Weigelt <info@metux.net>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Bill Wendling <morbo@google.com>, Jian Cai <jiancai@google.com>
Subject: Re: [PATCH] arm64: fix clang integrated assembler build
Message-ID: <20200527182843.g6tbow4lqsvwl2ah@google.com>
References: <20200527141435.1716510-1-arnd@arndb.de>
 <CAKwvOdnNxj-MdKj3aWoefF2W9PPG-TSeNU4Ym-N8NODJB5Yw_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdnNxj-MdKj3aWoefF2W9PPG-TSeNU4Ym-N8NODJB5Yw_w@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s5sgK5hV;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-05-27, 'Nick Desaulniers' via Clang Built Linux wrote:
>On Wed, May 27, 2020 at 7:14 AM Arnd Bergmann <arnd@arndb.de> wrote:
>>
>> clang and gas seem to interpret the symbols in memmove.S and
>> memset.S differently, such that clang does not make them
>> 'weak' as expected, which leads to a linker error, with both
>> ld.bfd and ld.lld:
>>
>> ld.lld: error: duplicate symbol: memmove
>> >>> defined at common.c
>> >>>            kasan/common.o:(memmove) in archive mm/built-in.a
>> >>> defined at memmove.o:(__memmove) in archive arch/arm64/lib/lib.a
>>
>> ld.lld: error: duplicate symbol: memset
>> >>> defined at common.c
>> >>>            kasan/common.o:(memset) in archive mm/built-in.a
>> >>> defined at memset.o:(__memset) in archive arch/arm64/lib/lib.a
>>
>> Copy the exact way these are written in memcpy_64.S, which does
>> not have the same problem.
>>
>> I don't know why this makes a difference, and it would be good
>> to have someone with a better understanding of assembler internals
>> review it.
>>
>> It might be either a bug in the kernel or a bug in the assembler,
>> no idea which one. My patch makes it work with all versions of
>> clang and gcc, which is probably helpful even if it's a workaround
>> for a clang bug.
>
>+ Bill, Fangrui, Jian
>I think we saw this bug or a very similar bug internally around the
>ordering of .weak to .global.

This may be another instance of
https://sourceware.org/pipermail/binutils/2020-March/000299.html
https://lore.kernel.org/linuxppc-dev/20200325164257.170229-1-maskray@google.com/

I haven't checked but there may be both a .globl directive and a .weak
directive

>> Cc: stable@vger.kernel.org
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>> ---
>> ---
>>  arch/arm64/lib/memcpy.S  | 3 +--
>>  arch/arm64/lib/memmove.S | 3 +--
>>  arch/arm64/lib/memset.S  | 3 +--
>>  3 files changed, 3 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/arm64/lib/memcpy.S b/arch/arm64/lib/memcpy.S
>> index e0bf83d556f2..dc8d2a216a6e 100644
>> --- a/arch/arm64/lib/memcpy.S
>> +++ b/arch/arm64/lib/memcpy.S
>> @@ -56,9 +56,8 @@
>>         stp \reg1, \reg2, [\ptr], \val
>>         .endm
>>
>> -       .weak memcpy
>>  SYM_FUNC_START_ALIAS(__memcpy)
>> -SYM_FUNC_START_PI(memcpy)
>> +SYM_FUNC_START_WEAK_PI(memcpy)
>>  #include "copy_template.S"
>>         ret
>>  SYM_FUNC_END_PI(memcpy)
>> diff --git a/arch/arm64/lib/memmove.S b/arch/arm64/lib/memmove.S
>> index 02cda2e33bde..1035dce4bdaf 100644
>> --- a/arch/arm64/lib/memmove.S
>> +++ b/arch/arm64/lib/memmove.S
>> @@ -45,9 +45,8 @@ C_h   .req    x12
>>  D_l    .req    x13
>>  D_h    .req    x14
>>
>> -       .weak memmove
>>  SYM_FUNC_START_ALIAS(__memmove)
>> -SYM_FUNC_START_PI(memmove)
>> +SYM_FUNC_START_WEAK_PI(memmove)
>>         cmp     dstin, src
>>         b.lo    __memcpy
>>         add     tmp1, src, count
>> diff --git a/arch/arm64/lib/memset.S b/arch/arm64/lib/memset.S
>> index 77c3c7ba0084..a9c1c9a01ea9 100644
>> --- a/arch/arm64/lib/memset.S
>> +++ b/arch/arm64/lib/memset.S
>> @@ -42,9 +42,8 @@ dst           .req    x8
>>  tmp3w          .req    w9
>>  tmp3           .req    x9
>>
>> -       .weak memset
>>  SYM_FUNC_START_ALIAS(__memset)
>> -SYM_FUNC_START_PI(memset)
>> +SYM_FUNC_START_WEAK_PI(memset)
>>         mov     dst, dstin      /* Preserve return value.  */
>>         and     A_lw, val, #255
>>         orr     A_lw, A_lw, A_lw, lsl #8
>> --
>> 2.26.2
>
>-- 
>Thanks,
>~Nick Desaulniers
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnNxj-MdKj3aWoefF2W9PPG-TSeNU4Ym-N8NODJB5Yw_w%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527182843.g6tbow4lqsvwl2ah%40google.com.
