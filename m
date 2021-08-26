Return-Path: <clang-built-linux+bncBAABB37HTSEQMGQEOOLRQQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D273F8266
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 08:25:53 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id 1-20020a630e41000000b002528846c9f2sf1324568pgo.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 23:25:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629959151; cv=pass;
        d=google.com; s=arc-20160816;
        b=fciWV1aAS4T3//FNRg23uZy+OwHCj3U8I2iriOErKzJmBinCznVdg6Zlvlkjsk9HED
         i33LFzNRXfaKq1b3vfgkIBIxQDXAi3jfVgXP8ntDzQzA6+ahEbybuO8SRDw1Y7tLyTk0
         fdLKcsTCDCkq3Ts3Y2YYJVbMoJzuyNCEO4uY4whkgTCxwYFpzVdlrP4qN48fVfjQZb/T
         wM1e0kSCvKM0eFlOwmNzWNTZn6MIz5SA36m24lKobp37qTocRE+iW2M58VGU/OYhUC+w
         UeOv2VnFPRcHpYwueUDXBt3K1zRaIfTEerwH/Ii0n0qlIfv9MatN3eGZapUKIHBLdg3u
         YhhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=QsiiK5gsgN1LM886B3Lde/0ltKx23vwbSZsgkf/cjNU=;
        b=ZiIMu5vxcQnF02ja8UV9KFM7q1Z/Xm9GKlnzKhF27lGRn+yjcTNLlAQ1U2KqCER1hG
         YjomJcaXeDYsheQX16b1M1O+sSDfNhvOTvEBMDafRhADLAmtIqSNRYx2DSX5ij/knjQ1
         3iu762TYaFFinHSkGX++UL1y59OjpyPGjKr19WsBNOyKaaXWxYiLwDU9s7broIKhTuJv
         w2gj9VSjkXZ/QO3dxXxOE86OaisICY+iddMiYhaKZIPrD7oBxs1FvHHH6H96ULbbiRpl
         RN5jpuq9dC73MGr5shwPthUmAxwbJ1SVHgvrDrj8EGopIrT6Ge6jqun+aM/NbFfj62xy
         551Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tianjia.zhang@linux.alibaba.com designates 115.124.30.44 as permitted sender) smtp.mailfrom=tianjia.zhang@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QsiiK5gsgN1LM886B3Lde/0ltKx23vwbSZsgkf/cjNU=;
        b=WbxOi23m+2/HVqDgA9p5Pa5Q/fgrvwRzDDKDE7Sg47G+Asq/mYU4SpzrOPjxM+UAkL
         rZfIg2UZaBJwn/1fSdh0yGmVQfVPn8rlxZYEwf19wi1xAZR6WmJsg9C7htLIyaXRfr+C
         /f1ciLsFt7Eb6k7Xj39DWhgJXqg5m30vRt3YNpkmB9Q5xQJ6UH8q8XH+VThRMRnrCbWp
         ZT2SYY83zj8wn6a4W8Gy/Ah8CYh7ZrP4QgQs2u6bvW/3ufSBlgkwLfi0X44ArfNeKILF
         9y6AvWHgQHQHfZGwEGETUTo47HN7TnCUMTHVLl6H4Sh6XV4r0MgUWtbyzJshpZqTVBpD
         7Fzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QsiiK5gsgN1LM886B3Lde/0ltKx23vwbSZsgkf/cjNU=;
        b=jR3EfmlWlXGL1fUzN//9Q3aCtPHiY1oTcrcEOS0UIRh9BPwfz9iHjTZyPSAq9xKgT8
         VWRfMTStsgAB9E74PuUbXBimhd2ulrN8DVu3dkzjXS9N0/5CYzluo/1ftGOuUkTzUcCR
         Ri66CKK187cZihmptsCw+R7uO/eOx/WW04j9mH4FNa3u2wHT8EMYHIyVAkTeZf2Knkl6
         Xt3/ko4sfWyJ1OtNkK0LdcPtWS7GJuRd2AAVI18K/YvW4JDJ3TOAtwshUt06fB/G3OZA
         irUtNj+ljluh7xHa1DuAqPGgaOuZa5rbB/bgKcUsGPakrx8q5ocTa1WdiG6EtznwkMLh
         P99A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gGPH+5dtWr3AOe7vKq7FDN01BkmSu0HjunAx3ia2bq7kxaWh2
	Wa2/gTJzUQxxCo2zkaO7J/Q=
X-Google-Smtp-Source: ABdhPJxYK2gm1ACe1Kn6HJiylPczp/FH/6WqQ8U5RUh2V5Is+eS50i8U/cGz5rNcsske7hEF592HLg==
X-Received: by 2002:a17:90a:a382:: with SMTP id x2mr2540627pjp.86.1629959151624;
        Wed, 25 Aug 2021 23:25:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa8d:: with SMTP id d13ls2590482plr.4.gmail; Wed, 25
 Aug 2021 23:25:51 -0700 (PDT)
X-Received: by 2002:a17:90b:3144:: with SMTP id ip4mr15132565pjb.22.1629959151111;
        Wed, 25 Aug 2021 23:25:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629959151; cv=none;
        d=google.com; s=arc-20160816;
        b=f0AjBiU+35eOEFxZkSWCLlVKDnNDnCP7QT24VLJ+P8XGVCFbq7FEL4h7s119rDAxjE
         fd/c1EdedTGt+4fCOa3Yjmf6RgDNdCavnv1DTzXjN4URUR4q25/8Rwt/cIfmPMixKg4k
         rWr1YuYg8L2xoWG+ZheCq+ZOVGA5U0tkdWYoMuTU1rD+AYGIQyFCPHHIyJddfcYOfhRM
         LbdP37qQQBNZqYis3O9lkd1iO4aDm5tCFixMRVCNwegAvaqBJ1BxQlzrhDI2lbndrnzG
         QQ9xvl6ldVTnIpRuwnheJVvpVJQ0El38Z/N+gh0lBWunZBhx2hkajdDXJL9CM8z4NoCy
         UY1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=9LoIH4Xs34wQoBH+BhCs0S9HVeOjOzlKyNM/vMObKOc=;
        b=0OdAss/g4+okYSGlceSACYdEvYe6B13hG7iEJZwe6GmQ2xBdvcQi8iEaAVWJ3KAdRf
         QMNZ2rNjoCPP+GizL7YMoUD68vnsPzIUO7bbykvYVmBOW6NEvductfn3sGErmblPJuby
         CjqHt5WB2TrzoHlyWpINzEmr6bQVz9AbtMotjUc14zjT92B/I8DsRDkVGI9Dxj7wmE9N
         FPjQyqAeBGUpbGuWrWqyxr+NSgfW5/cOgJYMscDC1Qbma7UYvcE1+Ku+WAJqYES8dgnZ
         gdh7oJ7E+yVbliplQMR9emlrrsvkPvMwFCFGfv1jxSZLwwViQMocbfZrlMKhHRq1hjq7
         Gasw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tianjia.zhang@linux.alibaba.com designates 115.124.30.44 as permitted sender) smtp.mailfrom=tianjia.zhang@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-44.freemail.mail.aliyun.com (out30-44.freemail.mail.aliyun.com. [115.124.30.44])
        by gmr-mx.google.com with ESMTPS id r14si250559pgv.3.2021.08.25.23.25.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 23:25:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of tianjia.zhang@linux.alibaba.com designates 115.124.30.44 as permitted sender) client-ip=115.124.30.44;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R101e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04394;MF=tianjia.zhang@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0Um2LScI_1629959145;
Received: from B-455UMD6M-2027.local(mailfrom:tianjia.zhang@linux.alibaba.com fp:SMTPD_---0Um2LScI_1629959145)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 26 Aug 2021 14:25:46 +0800
Subject: Re: [PATCH] crypto: sm4 - Do not change section of ck and sbox
To: Nathan Chancellor <nathan@kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>
Cc: "David S. Miller" <davem@davemloft.net>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 llvm@lists.linux.dev
References: <20210825203859.416449-1-nathan@kernel.org>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <fc2a8a94-eb2f-31ee-411b-527ef0d25d31@linux.alibaba.com>
Date: Thu, 26 Aug 2021 14:25:45 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210825203859.416449-1-nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: tianjia.zhang@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tianjia.zhang@linux.alibaba.com designates
 115.124.30.44 as permitted sender) smtp.mailfrom=tianjia.zhang@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Hi Nathan,

Thanks for pointing it out.

On 8/26/21 4:38 AM, Nathan Chancellor wrote:
> When building with clang and GNU as, there is a warning about ignored
> changed section attributes:
> 
> /tmp/sm4-c916c8.s: Assembler messages:
> /tmp/sm4-c916c8.s:677: Warning: ignoring changed section attributes for
> .data..cacheline_aligned
> 
> "static const" places the data in .rodata but __cacheline_aligned has
> the section attribute to place it in .data..cacheline_aligned, in
> addition to the aligned attribute.
> 
> To keep the alignment but avoid attempting to change sections, use the
> ____cacheline_aligned attribute, which is just the aligned attribute.
> 
> Fixes: 2b31277af577 ("crypto: sm4 - create SM4 library based on sm4 generic code")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1441
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>


Reviewed-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>

Best regards,
Tianjia

> ---
>   lib/crypto/sm4.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/crypto/sm4.c b/lib/crypto/sm4.c
> index 633b59fed9db..284e62576d0c 100644
> --- a/lib/crypto/sm4.c
> +++ b/lib/crypto/sm4.c
> @@ -15,7 +15,7 @@ static const u32 fk[4] = {
>   	0xa3b1bac6, 0x56aa3350, 0x677d9197, 0xb27022dc
>   };
>   
> -static const u32 __cacheline_aligned ck[32] = {
> +static const u32 ____cacheline_aligned ck[32] = {
>   	0x00070e15, 0x1c232a31, 0x383f464d, 0x545b6269,
>   	0x70777e85, 0x8c939aa1, 0xa8afb6bd, 0xc4cbd2d9,
>   	0xe0e7eef5, 0xfc030a11, 0x181f262d, 0x343b4249,
> @@ -26,7 +26,7 @@ static const u32 __cacheline_aligned ck[32] = {
>   	0x10171e25, 0x2c333a41, 0x484f565d, 0x646b7279
>   };
>   
> -static const u8 __cacheline_aligned sbox[256] = {
> +static const u8 ____cacheline_aligned sbox[256] = {
>   	0xd6, 0x90, 0xe9, 0xfe, 0xcc, 0xe1, 0x3d, 0xb7,
>   	0x16, 0xb6, 0x14, 0xc2, 0x28, 0xfb, 0x2c, 0x05,
>   	0x2b, 0x67, 0x9a, 0x76, 0x2a, 0xbe, 0x04, 0xc3,
> 
> base-commit: abfc7fad63940b8dfdfd25da6f0fa813d9561645
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fc2a8a94-eb2f-31ee-411b-527ef0d25d31%40linux.alibaba.com.
