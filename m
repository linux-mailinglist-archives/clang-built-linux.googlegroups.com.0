Return-Path: <clang-built-linux+bncBCS7XUWOUULBBQ6SR36QKGQERX62NLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 356BA2A77FF
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 08:27:00 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id t17sf370686vsl.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 23:27:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604561219; cv=pass;
        d=google.com; s=arc-20160816;
        b=TmiNxVbX3nA4mytbvFQHYiwc+vIetYdgvwuBI0d+sxr6gWdRoHr0A1BfBYMkJUI/zC
         26kUk9e+11Ye3oBy7nkjVuX1E+V/lIietnM52zritDnTLmkGo0acngmUaqn6etGTSjrV
         2bMPw5hCJYfowjyxeXrhsZ3IKDQwBwYk2v+F9X4Xun92N3VKl0+NY2gXcE9UOBvNDeSQ
         n3lMlcebxfhNaIq6lzr3F0oBOHQjw2WQQyC/H51bUuP8++jJ8uTS9ROuvWccxaESLrjo
         k/GhLhKNBNZv98JuS+aRilB5t5zSPvDZEQsMQGHS9wRf6TTW7wuTxKGfuwsEwdDjPelR
         y1cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=+ZzSw+gsaCE1lstSN0vIbYXnHBovPjM/J6Yxcrn+1g0=;
        b=eCVmCaLEGTzACHLxPmyHOvlItQd9FIbviLBES5P1NqETcRXnxGKcsq+e9OASae3l0F
         B3Ml696uS9HE4+5fwoE5qZ4K4vXrgPWHBypauXXeA/NBembfnhZEfTNt+6+Ls7l/CeVy
         KmD37shE1qWcr1hssrdNnE4Gi6+wblQBTO7OdN76GTI6XzEYzL00cDk8tsTnazL8QV49
         UlALQxO0RfwQcd7UE29HEcSG4AwkBHK7SD65rLNcxqadPnqT7UpWjoNnekX4hCehpK9I
         0076X06QjNsAcfsXpeNnrVFa29LPdtqm10j/+HlU1IF/Ekxc3WoFjs05hym7jSwjDF2P
         hvAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RuVHQPKx;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+ZzSw+gsaCE1lstSN0vIbYXnHBovPjM/J6Yxcrn+1g0=;
        b=ijs5zilkaCFYG6pU7hAxAM4JN959hkZfXQoULQ3f/FmO9YafWD00oGjDDQv9ben6T0
         JCKcOOknOJPCJTM0ibWRyIh0ovaDSJfCByIcx7EXWVst+kIPFeYx3ZiW+//aOqxBSUKz
         ldO3M8yOsIwjP6VpQ2pMXJAqBzX30rVlpPry+ffmutO4WANvcwEibKMyLWv+SSHTguca
         kaGcYXHvHWr6DBMXgzCGE0pD3zAeHLc+IpewX/yG6Ufo5TMeM6q97hERp2yZfrRBySOK
         VWMHLD1LXqFtKdd5rCsSNA4H1pMUPDbxgA1gHdVz9j8A+je3XaFGJJTwcHZ9nVGkEODW
         v0Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+ZzSw+gsaCE1lstSN0vIbYXnHBovPjM/J6Yxcrn+1g0=;
        b=LlDHDI5BzzBPdUIpCmwZzK0e2oJSsUhHKhBioOSd2skl/ycL1WKXRgsQuCsFkrWCZ3
         2tgHmBVseCCG8Gca3zwt812sIlUYCwNKIhUoIXnt3qfZtRiAxKKxWAXO+S+VdamqpKq2
         T/My+TVmuBSK2WUgmODZZYNp6vE9rJCpekuGHPTdjIdtzriV8MwQKLM1f7uLDOBPjoFP
         j8C2AgTyPoPnWvJdmdjxYMt4vTQFtei9UixJCM8SVWAgOIytt5ETg48/9KzGOAj4Axic
         GfiSEghA3dIToJQMAMzbA6H09UZqVrW94amNQIS4GCsLMRT5nV0UWKvAs7mnRd4g+vDe
         u2Ng==
X-Gm-Message-State: AOAM533rX3qBYHZCx0z95d9Lk6orkm0xe7Q7OTrShqDgB/6lG8pgpasy
	ufkiZrhfrOQKgYTOAN+6UzI=
X-Google-Smtp-Source: ABdhPJxT3br6/QFRTj+rVBpmiGZLDwMK98KzZEBP1B9zC0DbSfk2F4iPhH2GdqeEYG6iaW62GaXfXg==
X-Received: by 2002:a67:f243:: with SMTP id y3mr491751vsm.56.1604561219315;
        Wed, 04 Nov 2020 23:26:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:874b:: with SMTP id j72ls71157vsd.9.gmail; Wed, 04 Nov
 2020 23:26:58 -0800 (PST)
X-Received: by 2002:a67:7901:: with SMTP id u1mr514164vsc.6.1604561218772;
        Wed, 04 Nov 2020 23:26:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604561218; cv=none;
        d=google.com; s=arc-20160816;
        b=oT7uw81BzwyPKowjkL980oikPnFgaZTw21D02es3vFYayNXLs3RZTMozmEmeWxqwx8
         otbESF7eTymZUIFuWL8sUs6dvEcRkcy1wibTfixjLbsNR+OCftfYzJmdKl5cfyqtK/B/
         crMUB+FR+2vaUHxL/VlY0Xz4hHVyFukOEyVceB4o7Czy4rblh6haVM35SN60yuiUXt8W
         00O0/Fy4KYKQ8g3HeYlbKHHp3RlygLd4hCtEeVjh2/E+fe4xYpF7f8ScUq+qmjEuOz7g
         5fJk/hIR8a8716Uz/WJFpzLK89I1KDmz1BI4jkMCMcTU+O5Y1Oj+eLwNkxAFzxoF+7qs
         BdxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=V0nJfAeq3JFSY5yN0H+uBOSwyjDPQ9GUT0hanP1k660=;
        b=gVDqa8KXCTLr2yne6+leLi/ccbMA4irp2WvbtrYmmTihx68yfUGfz4k0mZ05PzAzt6
         RajinKFC91zhklaVZGpeF2xvgcj7rJY2bHtDdF9XzvlBEcu55Hnmf3FXZYzqkC8xwgOK
         hlDePsdy2dbbuLdJa6YLpk1ggvsCUliTnBOUulC0b4j+mV4wEArK3ClXPIw1lHOoyc1L
         OG9fSinElzxJWjoRr2XRVWeHySHgXcuaClhX47zGEvUlGque4rsEFZTMjX/2mrIixvwG
         FV2bBrEPkKBOJLc7ath7Oh2BU4V8XEAmQcB9tnE41rshJMuRWWhfq7Rj/hgW3PR6Do2m
         x6/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RuVHQPKx;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id j77si47750vkj.1.2020.11.04.23.26.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 23:26:58 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id z3so737119pfz.6
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 23:26:58 -0800 (PST)
X-Received: by 2002:a63:f445:: with SMTP id p5mr1200747pgk.293.1604561217561;
        Wed, 04 Nov 2020 23:26:57 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id j11sm1203750pfh.143.2020.11.04.23.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 23:26:56 -0800 (PST)
Date: Wed, 4 Nov 2020 23:26:53 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Jakub Jelinek <jakub@redhat.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Alistair Delva <adelva@google.com>, stable@vger.kernel.org
Subject: Re: [PATCH v2 2/4] Kbuild: do not emit debug info for assembly with
 LLVM_IAS=1
Message-ID: <20201105072653.wxlzat5azj7h4ttj@google.com>
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com>
 <20201104005343.4192504-3-ndesaulniers@google.com>
 <20201105065844.GA3243074@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20201105065844.GA3243074@ubuntu-m3-large-x86>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RuVHQPKx;       spf=pass
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


On 2020-11-04, Nathan Chancellor wrote:
>On Tue, Nov 03, 2020 at 04:53:41PM -0800, Nick Desaulniers wrote:
>> Clang's integrated assembler produces the warning for assembly files:
>>
>> warning: DWARF2 only supports one section per compilation unit
>>
>> If -Wa,-gdwarf-* is unspecified, then debug info is not emitted.  This
>
>Is this something that should be called out somewhere? If I understand
>this correctly, LLVM_IAS=1 + CONFIG_DEBUG_INFO=y won't work? Maybe this
>should be handled in Kconfig?
>
>> will be re-enabled for new DWARF versions in a follow up patch.
>>
>> Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with
>> LLVM=1 LLVM_IAS=1 for x86_64 and arm64.
>>
>> Cc: <stable@vger.kernel.org>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/716
>> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> Suggested-by: Dmitry Golovin <dima@golovin.in>
>
>If you happen to respin, Dmitry deserves a Reported-by tag too :)
>
>> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
>Regardless of the other two comments, this is fine as is as a fix for
>stable to unblock Android + CrOS since we have been running something
>similar to it in CI:
>
>Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
>> ---
>>  Makefile | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/Makefile b/Makefile
>> index f353886dbf44..75b1a3dcbf30 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -826,7 +826,9 @@ else
>>  DEBUG_CFLAGS	+= -g
>>  endif
>>
>> +ifndef LLVM_IAS
>
>Nit: this should probably match the existing LLVM_IAS check
>
>ifneq ($(LLVM_IAS),1)
>
>>  KBUILD_AFLAGS	+= -Wa,-gdwarf-2
>> +endif
>>
>>  ifdef CONFIG_DEBUG_INFO_DWARF4
>>  DEBUG_CFLAGS	+= -gdwarf-4
>> --
>> 2.29.1.341.ge80a0c044ae-goog
>>

The root cause is that DWARF v2 has no DW_AT_ranges, so it cannot
represent non-contiguous address ranges. It seems that GNU as -gdwarf-3
emits DW_AT_ranges as well and emits an entry for a non-executable section.
In any case, the option is of very low value, at least for LLVM.


Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201105072653.wxlzat5azj7h4ttj%40google.com.
