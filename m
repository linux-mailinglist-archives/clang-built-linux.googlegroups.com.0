Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSGV2CCAMGQE5D2RWII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B38E375995
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 19:43:37 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id m18-20020a056e020df2b02901a467726f49sf5108700ilj.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 10:43:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620323016; cv=pass;
        d=google.com; s=arc-20160816;
        b=HPdXFsQvqamm4M0TXjcygxQ4dFNLD6w5gcAyro3XnlQkpBNxI+fm0cwppkcStVVDZN
         aowQp1tK3437XiFrgDV6sv4iowehXIALE//f0Iye6oJMZFtiH2Qd9U9h9dbMccMU3RZj
         k2vO1xfFA0UlTfsFM3tJp0jLlW3M8YjkmjyYlHg0pstEMGc5994AtyVoai49X/v5G+3e
         IHsR5vqUPuH5NrmHuiE0R904vWY9l4zs5CvfMPOD+O6JdwPM/YUNS1419rZY/j7BhcSs
         HtCFGIyTfBMXXdTCaNco6bayunVBV85gVBZmUk+i93n6d1uMT5bgZG/vqjro5au1BlI6
         sS1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=9Vbx6zq4t4zWZPe8gPr5punGmtFehVclDQFGfXEEgg8=;
        b=t6Rk/HKAX/Ag7nBWJ26dUMU5+zuPtar0Hv2Uh+i++9RTqpK+lKx4cJmEBum8kCi7ju
         OgUL1TrRjbWfGmXki/fOUjPywVYlDAmBCQiOIbEjvUyUELZ/aKmsENheK7Vo7JDKKgmT
         aCJOkVLFD4DY9WxMro7WRpHzNjn9Zcn1/CE1qf4lR8jKUSWpMOWPYdIYdm9k9+os0Hig
         z0bimg85okIMCPH7bVbjnPOZi4BF5cbp4jM70KyunAePmpiBzKEnbWwvI5nbCDq/hsZo
         T0Yx8EVtH2JYhQ2SuWGdrePnsoLLDEggxirOxPEtfc1AQF7of2orLtcpFtCt2pkHohLf
         JBGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Zh6a1Jz2;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9Vbx6zq4t4zWZPe8gPr5punGmtFehVclDQFGfXEEgg8=;
        b=L6F35SxbYxPdNsJIEIZmKo/xN0a/7cX/CqLCM51SP1+mqPFIYLSN8y2WNCcYLe0bQM
         AetKHdDjSigZNwI1/CTsr9xfA34Utk1LALv5ExiX2pg1MpSab8J4uGPESWYPJtoh7gQ7
         HpIOSNsUzcsufzYTXcBtNVkQ3fRYQcAkcKfu/jxTB9e0yMkTL8WCapqp236KLW3vJ4w9
         TLp+JayhCcHyGQLWyc7BmJOVgONVFekNt67ddFNDFJAlbAIHOMDH0N5udNOpVRzoMjDk
         dM4IqwuC+1c0WP4eiiXmfxMB8ixIQylKE9G78m/7+wM/mUJdo4lggOeskxCieylIw0kB
         /0qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9Vbx6zq4t4zWZPe8gPr5punGmtFehVclDQFGfXEEgg8=;
        b=HIllfhz8RuqAN3x1TBCOuvY7XK/+XLeYCV9W7s889QEWQ3XNgWsuHAF01Vm7o2GRLO
         phRB5vmVsfWirMnYLvfek9zQLZmillfu4Ylowqt1bTxKRMvYutgk4lladOdtSQiBevuA
         i/t1GOApBadkCpI9bEduwS10YOYz7D8xu4Nt6lFZMCRMdYyBN4yURvwtsHlOxQ7Yr/+A
         474zWuoLMXDpJoiI+GgZMQ1PGTC0rzM6xCdYYdOtbWTK7JpyAcIMcdxy22wNjK6CkNkf
         H4WupQBQ0VEh6YXHnu2Biy9KKSCqXIlXQSC2ddDwctSlX5W6ESnSTPA0YJ8tdSvryFoZ
         ylhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vVQeqPCWA+dt2UsIJBjnDT3N8T3xYsw2UgTFqsu8ZUIPcuBYl
	TsTYVNA6Xc8aiYAE6k1lb4Y=
X-Google-Smtp-Source: ABdhPJy6Eu5XrgtrglIHlzdS6jvNPAhE48IlRqFc9ml7iYdQtr7ffBAwrhPXKej/Ahyiv7tzTzy5rg==
X-Received: by 2002:a6b:b409:: with SMTP id d9mr4115004iof.57.1620323016489;
        Thu, 06 May 2021 10:43:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9501:: with SMTP id d1ls561795iom.5.gmail; Thu, 06 May
 2021 10:43:36 -0700 (PDT)
X-Received: by 2002:a05:6602:70d:: with SMTP id f13mr4495431iox.16.1620323016083;
        Thu, 06 May 2021 10:43:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620323016; cv=none;
        d=google.com; s=arc-20160816;
        b=ktk2V5fc1R7j+chX493azfInAYWPYGRdKa1QkNFZ9wRNU6I2P6QfaNmIdJ93CABTIa
         3oSBmpoW4JOTB0pvwivH10QtWycJQCjYuO4X1Yew9VOvfsuVxEMY15gj31yOCPort7NG
         jGwK+kRS1F+0HUFHmAxHBCgOg5QVWWjJcrh47Nf3Pnt7mkOIh26GjqD/MyIJgBURAVHi
         6GDwjoYOer2g0JWr2wGKEZ9jf4bNFkJ42ZdIt+nlSV/Y5CCPmTdfNo329KGD6BZN5twU
         9enVR0Mtzi6BWdx/NbRFZN0wHXYw8O0gzfOHLQInsUZvNc/EQfFN8EvBFINYifxzmPhg
         PqpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ngbm4/YmypWnaZgBRCk7ZvL0Z6xBTNuSmAU3m0uiHoc=;
        b=QW84qaAiZdIkS0EKz2hmSnD7oKoctaRShArhkj09mpErnQ194OQ5kX8ljNMbVCDhWa
         /MjaDXJxiEg7KzK3gJcR0BMOyWFCda4MnVf6dWlAdeyx3WxmTkw/WsP0Q0vQahZCpG9v
         GIt5quP4vyqFfFuwE0Z7rD06GkzhLBa0s3O+mgjNB98toWkc0OmToU1MADGejyXvbG2n
         RqR3RNszHFhzfxBkxB10YO6I+NCLuQrmo3s34sexchFPQHycGEa8X0/KiQEQsy5IMKI2
         ftfCPUpvW6oUWCoqQFWkAg7FcQKLF0e4eQGMiqgNvdMnCWMFjkx0ZTK7gV0dzfX87xfD
         fJkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Zh6a1Jz2;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o3si406903ilt.5.2021.05.06.10.43.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 10:43:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E23686102A;
	Thu,  6 May 2021 17:43:33 +0000 (UTC)
Subject: Re: [PATCH 4.19 ONLY v4] arm64: vdso: remove commas between macro
 name and arguments
To: Jian Cai <jiancai@google.com>, gregkh@linuxfoundation.org,
 sashal@kernel.org, will@kernel.org, catalin.marinas@arm.com
Cc: stable@vger.kernel.org, ndesaulniers@google.com, manojgupta@google.com,
 llozano@google.com, clang-built-linux@googlegroups.com,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210506012508.3822221-1-jiancai@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <fd08dce2-71c0-3414-d661-d065480c04ff@kernel.org>
Date: Thu, 6 May 2021 10:43:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210506012508.3822221-1-jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Zh6a1Jz2;       spf=pass
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

On 5/5/2021 6:25 PM, Jian Cai wrote:
> LLVM's integrated assembler appears to assume an argument with default
> value is passed whenever it sees a comma right after the macro name.
> It will be fine if the number of following arguments is one less than
> the number of parameters specified in the macro definition. Otherwise,
> it fails. For example, the following code works:
> 
> $ cat foo.s
> .macro  foo arg1=2, arg2=4
>          ldr r0, [r1, #\arg1]
>          ldr r0, [r1, #\arg2]
> .endm
> 
> foo, arg2=8
> 
> $ llvm-mc -triple=armv7a -filetype=obj foo.s -o ias.o
> arm-linux-gnueabihf-objdump -dr ias.o
> 
> ias.o:     file format elf32-littlearm
> 
> Disassembly of section .text:
> 
> 00000000 <.text>:
>     0: e5910001 ldr r0, [r1, #2]
>     4: e5910003 ldr r0, [r1, #8]
> 
> While the the following code would fail:
> 
> $ cat foo.s
> .macro  foo arg1=2, arg2=4
>          ldr r0, [r1, #\arg1]
>          ldr r0, [r1, #\arg2]
> .endm
> 
> foo, arg1=2, arg2=8
> 
> $ llvm-mc -triple=armv7a -filetype=obj foo.s -o ias.o
> foo.s:6:14: error: too many positional arguments
> foo, arg1=2, arg2=8
> 
> This causes build failures as follows:
> 
> arch/arm64/kernel/vdso/gettimeofday.S:230:24: error: too many positional
> arguments
>   clock_gettime_return, shift=1
>                         ^
> arch/arm64/kernel/vdso/gettimeofday.S:253:24: error: too many positional
> arguments
>   clock_gettime_return, shift=1
>                         ^
> arch/arm64/kernel/vdso/gettimeofday.S:274:24: error: too many positional
> arguments
>   clock_gettime_return, shift=1
> 
> This error is not in mainline because commit 28b1a824a4f4 ("arm64: vdso:
> Substitute gettimeofday() with C implementation") rewrote this assembler
> file in C as part of a 25 patch series that is unsuitable for stable.
> Just remove the comma in the clock_gettime_return invocations in 4.19 so
> that GNU as and LLVM's integrated assembler work the same.
> 
> Link:
> https://github.com/ClangBuiltLinux/linux/issues/1349
> 
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Jian Cai <jiancai@google.com>

Thanks for the updated example and explanation, this looks good to me now.

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> Changes v1 -> v2:
>    Keep the comma in the macro definition to be consistent with other
>    definitions.
> 
> Changes v2 -> v3:
>    Edit tags.
> 
> Changes v3 -> v4:
>    Update the commit message based on Nathan's comments.
> 
>   arch/arm64/kernel/vdso/gettimeofday.S | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/vdso/gettimeofday.S
> index 856fee6d3512..b6faf8b5d1fe 100644
> --- a/arch/arm64/kernel/vdso/gettimeofday.S
> +++ b/arch/arm64/kernel/vdso/gettimeofday.S
> @@ -227,7 +227,7 @@ realtime:
>   	seqcnt_check fail=realtime
>   	get_ts_realtime res_sec=x10, res_nsec=x11, \
>   		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
> -	clock_gettime_return, shift=1
> +	clock_gettime_return shift=1
>   
>   	ALIGN
>   monotonic:
> @@ -250,7 +250,7 @@ monotonic:
>   		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
>   
>   	add_ts sec=x10, nsec=x11, ts_sec=x3, ts_nsec=x4, nsec_to_sec=x9
> -	clock_gettime_return, shift=1
> +	clock_gettime_return shift=1
>   
>   	ALIGN
>   monotonic_raw:
> @@ -271,7 +271,7 @@ monotonic_raw:
>   		clock_nsec=x15, nsec_to_sec=x9
>   
>   	add_ts sec=x10, nsec=x11, ts_sec=x13, ts_nsec=x14, nsec_to_sec=x9
> -	clock_gettime_return, shift=1
> +	clock_gettime_return shift=1
>   
>   	ALIGN
>   realtime_coarse:
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fd08dce2-71c0-3414-d661-d065480c04ff%40kernel.org.
