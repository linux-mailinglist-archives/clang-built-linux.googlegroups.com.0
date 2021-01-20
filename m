Return-Path: <clang-built-linux+bncBDSIRFEA54GRBBGYUCAAMGQENLZWXRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFCE2FD108
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 14:11:32 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id w5sf11305955wrl.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 05:11:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611148292; cv=pass;
        d=google.com; s=arc-20160816;
        b=TtQJQVWW0cxqErSE5cIfGf6wfuIlRY/9ppyEcDlDc9GS+fnUlcjTUA1jaaqaf8XoV8
         pX+kEKbrAfHa59d2RKF2a/w9xutITwRHjyEy+ufF6uB7E2cTUIp24zW2TOzF2Pk1oUeA
         tXKlrt/V1dpMUBQtIxNzr342bTcl/pGpA+ZbRyXDhHgv7/TzdbCc8e5VzfB520qQJo1T
         NlwOlXaT2v0+YA02bxE8VDRoWGXk00ddPiQvHWx5C3gA3PFiZ5q9fJ9mE4N2r2DyZMPO
         ziaiK1p/6KAdEM7wOUkRMDYfGb93z+zJKEg4nTd3u2PjS21utAum3O9nkxUADft0icsk
         cNuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=eFq5pi8FfF4JDRQazkeYws1IUdfasnuWEmSxRx70hzc=;
        b=Avd4KdSxeD7DU+mq5t9D34YQHr9nF6NTi2lyTCjL4kksFCIadCkmxgx0oCE/iDJN2E
         ZCVB1M7su6QKPL1ae1bbGuBkKDLLV7gsdon2GEP6uGQyPv0Y/Qh8nI1tcWOQNnL6OWUk
         PpjYhrsCUIrRpVYt2IRK01rxPqUfnX02HLZr5d3ewX+O5cz2VIBb0BiS/ybh05wD1HpI
         FWfJ5ff3oMElyx7iwOswh5MokLk44g8/y2EpF7RILc1UfpsG1zhzD0ItZwgMsXojBjcm
         MJithd8M1KTxi4Upkv3XelGNe+r1XFJnPwW6YU5Wi7qxvBQ9xcIJZOxVfeZEuZyH7977
         uNIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eFq5pi8FfF4JDRQazkeYws1IUdfasnuWEmSxRx70hzc=;
        b=KgmNdeDbHsB2ud5WH5noiy8I8pqwx3Vxnbfyy3fUvCY2H+jGmQkt33YF3TWWY/Mw3v
         nEBA+vSlEvQT+pyM32wYmN53fb1wOPmOCasMxguxXUxLoCAn4O3Sr+JHSR5RdgpWJYk9
         3m3/XXcj6fLg1t7X3en7q0fo1/2pDa5o+1BS0iXQGV7o+wtdAqYZF03CoKdA4sVp+VqG
         4QmIhGoI+h2zSjXTarhWKePLFmEiyKOqDSkfZHHU2lwcI+HftvXeAWR4aT9de0aRahsa
         xmt634KtotIqHbYhIfL9GHgo5MmOpIj8aJuCib8bRUR5WNCyHk880xrCxLFpPsiNvcE8
         rbAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eFq5pi8FfF4JDRQazkeYws1IUdfasnuWEmSxRx70hzc=;
        b=bdC+3jPHucUgy0j484wRUL3ZT9a8I9OvKqP+ifAs/0XSlZYsV2e02EHOw3vkb8IXhB
         FjVmUKIaWZTuQheA8XzAAR9PUnpX+mZRSO7v2HIVo1Rx2fYOwk5nuSEvzAMaO6sQoWe/
         DgLF3BrRVsmCTC5eMB2X+E2PG8lfPK8UXANVBUezBYIhDHrdPl7T3n9YDj426WzwNc04
         cphOUZCLSo487EH9O3f67znvYHnqxmZ4CSEfAz0wicsCHrkkwKHdA3W6T+dx5WQGlGDM
         Y0QA3ABGPZqxko/JLKidFOjnQ/FAwK9+QdeFuFeYPSalYgaYpBXyNV3OwTuWjuvfKdlG
         LyKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Tb+w3Nd7dO+ShNaE1P37XPwFtpr8LL3JvnW/f5yn0V8an3tJq
	7jXEqGfctPuu7ISC1kOZTPQ=
X-Google-Smtp-Source: ABdhPJzAb8l7qZqDzZXJzAk3EMHKR3Af56YLVrx+BV+pm9f9yXCxNRLoIVh+lotkQn4xMkZTtb3rfA==
X-Received: by 2002:a7b:ce11:: with SMTP id m17mr4256558wmc.158.1611148292284;
        Wed, 20 Jan 2021 05:11:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a54b:: with SMTP id j11ls984921wrb.3.gmail; Wed, 20 Jan
 2021 05:11:31 -0800 (PST)
X-Received: by 2002:a5d:5501:: with SMTP id b1mr8228426wrv.162.1611148291407;
        Wed, 20 Jan 2021 05:11:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611148291; cv=none;
        d=google.com; s=arc-20160816;
        b=Pzl7jz1o65hg67b2JKLnoGr6Orfx09TjLpsGW/TAyH4anAAKoJyXEwwUWn1IeHBJMZ
         gAOi3rLr38ib0OLLnl4YBcUq1cvOjm4bZqNhzlirzw/Zrh70ravDIlp0raN4qEDbory/
         K691D1e8o3kc2RCu46Ztekh4geUcc75GqlGeSExTQyK5/J3BGMJVvB7OhCv2R8eTemMZ
         IW1SCEcoW3Av5cJOTG2ATAiuywrHJhsx4zPO04NrFDfRSZ6zw4sC3XFV50O3M5oV5zqK
         NPknR8Shze58x0xcxqVhVvX01p8e7UCg96klgY+6M3mNxNRik8vhhaO8L8Nl6xY+rVWY
         9cGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=rSzFd+9IIEjU8BikpZT7HdXaTMO1tdtIM34ZwdoQcuc=;
        b=B705HgJ0ZMBqezWa4BsCkwjwdBXuQqIxvWwQDfoxaQAASe6fiDKk/BDjuPsdeCxaln
         O0F3dLui695lk282MtAyWqbeByDbCKmL8JIb66MT4pLubq+RZb7b4Rsd/2e0/VT0uD90
         JE1nPv8dEuR7M6hUDJJllxurvNMt5QHlyA5Joc3ypEpmRfHX7WURdr3hpnehaR3tc9CN
         a9aCdxZYjhjafmliHD5O2GZH7A9EpWeVufgi0ackdy2wxJDyx4ly9FtV34j5AzCSNGmY
         ooeKDp7OFGboaTodpuJaL+wmAzf0wgzeL63a40+0sqIkXOc2387FLfYL2w2yh6i7uap/
         m2uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id l21si78856wmg.2.2021.01.20.05.11.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Jan 2021 05:11:31 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 971571F454EF
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Adrian Ratiu
 <adrian.ratiu@collabora.com>, Arnd Bergmann <arnd@arndb.de>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, Nathan Chancellor
 <natechancellor@gmail.com>, Russell King <linux@armlinux.org.uk>, Ard
 Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Collabora Kernel
 ML <kernel@collabora.com>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6
 warning
In-Reply-To: <CAKwvOdkNZ09kkzi+A8diaxViqSufxrHizuBu-7quG6an3Z8iDA@mail.gmail.com>
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
 <20210119131724.308884-2-adrian.ratiu@collabora.com>
 <CAKwvOdkNZ09kkzi+A8diaxViqSufxrHizuBu-7quG6an3Z8iDA@mail.gmail.com>
Date: Wed, 20 Jan 2021 15:11:27 +0200
Message-ID: <87o8hjg3cw.fsf@collabora.com>
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

On Tue, 19 Jan 2021, Nick Desaulniers <ndesaulniers@google.com> 
wrote:
> On Tue, Jan 19, 2021 at 5:17 AM Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> From: Nathan Chancellor <natechancellor@gmail.com> 
>> 
>> Drop warning because kernel now requires GCC >= v4.9 after 
>> commit 6ec4476ac825 ("Raise gcc version requirement to 4.9") 
>> and clarify that -ftree-vectorize now always needs enabling for 
>> GCC by directly testing the presence of CONFIG_CC_IS_GCC. 
>> 
>> Another reason to remove the warning is that Clang exposes 
>> itself as GCC < 4.6 so it triggers the warning about GCC which 
>> doesn't make much sense and misleads Clang users by telling 
>> them to update GCC. 
>> 
>> Because Clang is now supported by the kernel print a clear 
>> Clang-specific warning. 
>> 
>> Link: https://github.com/ClangBuiltLinux/linux/issues/496 Link: 
>> https://github.com/ClangBuiltLinux/linux/issues/503 
>> Reported-by: Nick Desaulniers <ndesaulniers@google.com> 
>> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com> 
> 
> This is not the version of the patch I had reviewed; please drop 
> my reviewed-by tag when you change a patch significantly, as 
> otherwise it looks like I approved this patch. 
> 
> Nacked-by: Nick Desaulniers <ndesaulniers@google.com> 
> 

Sorry for not removing the reviewed-by tags from the previous 
versions in this v4. I guess the only way forward with this is to 
actually make clang vectorization work. Also thanks for the patch 
suggestion in the other e-mail!

>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
>> ---
>>  arch/arm/lib/xor-neon.c | 18 ++++++++++--------
>>  1 file changed, 10 insertions(+), 8 deletions(-)
>>
>> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
>> index b99dd8e1c93f..f9f3601cc2d1 100644
>> --- a/arch/arm/lib/xor-neon.c
>> +++ b/arch/arm/lib/xor-neon.c
>> @@ -14,20 +14,22 @@ MODULE_LICENSE("GPL");
>>  #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
>>  #endif
>>
>> +/*
>> + * TODO: Even though -ftree-vectorize is enabled by default in Clang, the
>> + * compiler does not produce vectorized code due to its cost model.
>> + * See: https://github.com/ClangBuiltLinux/linux/issues/503
>> + */
>> +#ifdef CONFIG_CC_IS_CLANG
>> +#warning Clang does not vectorize code in this file.
>> +#endif
>
> Arnd, remind me again why it's a bug that the compiler's cost model
> says it's faster to not produce a vectorized version of these loops?
> I stand by my previous comment: https://bugs.llvm.org/show_bug.cgi?id=40976#c8
>
>> +
>>  /*
>>   * Pull in the reference implementations while instructing GCC (through
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
>> 2.30.0
>>
>
>
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87o8hjg3cw.fsf%40collabora.com.
