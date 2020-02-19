Return-Path: <clang-built-linux+bncBDKLR6HU7IIBBGUMW3ZAKGQE2O3RGDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A5F164E41
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 20:01:47 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id e7sf876813qvr.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 11:01:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582138906; cv=pass;
        d=google.com; s=arc-20160816;
        b=ziFAQueiwLYVMiu3i4xcnmJe+UZrdLGNFoGSM9zVLMnJx7ghUSKf7aMRclayg21BcL
         MPKjYpTDiWasEcjymIBnxdm/iLeTh65AldpK9XpUljuLaWXAVOYDW4Yi63a9Sxfxm3Zf
         ZkSzRfPFzq9WBGKCZqBfTVWlE4zRNSuE8jO4VpO1Fre/954ByBC1zBHiePwzhg7DOaTs
         xgskCT+vNHpZJdEy/znE4rb7bcmDO4V4FTPMPnXeBWIuuDSujM7BSwf5SKdabEpHVuZL
         uYcmka3IwSRZihlGx9eiXcJJcV3xZJ97Xu32UlHqWoGdKQ7fYb8zViY+ma9Gjxoqypa3
         J8dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:references:subject:cc
         :cc:cc:to:from:date:message-id:mime-version:sender:dkim-signature;
        bh=TEiLYj+Mgch7+Y6Uk5Pg4qPuBCyi4tKlPNvW7zEBq2A=;
        b=MpM2D9AHlw0grXnl/Z6Anwwr5dptLBzDQCYuN2JDw3QLweolsRgDh5k6ntTc/slXjG
         oKlg7ag/3uKj/x/Jt2ZNaD0AJbugHm4rj1Jd7nw/+1P73wzpR2AnjG+FLodsYQfXM6IM
         Q4c7HjWN6ss+zpMTSV+yv8CWpK8bfuwMBhNgimtAhU4f8ESswEhzYmKViJc5FDzZ6ARW
         8ggbiY1X9+5AOWvGAedRGH8Q5K90U+cUZkj4ZC2j4OwU0vX2PFbSmwXs8wWsoYSq4eW7
         Vne0i8G73qCISNAUW7iTp423pdh1WjpQVTK5fanQedeitkmVBDROVIRS9/FYDuK12ZQi
         tLsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of paulburton89@gmail.com designates 209.85.216.66 as permitted sender) smtp.mailfrom=paulburton89@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:message-id:date:from:to:cc:cc:cc:subject
         :references:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TEiLYj+Mgch7+Y6Uk5Pg4qPuBCyi4tKlPNvW7zEBq2A=;
        b=nVHb0TQ5DIcXRM6W4O3c+45GelcrK44mfvouNjoudFmeYdq3bEb5yr11KSNUhPoN4I
         I3sm9ZBnDQVyL2VtDb89FYdTZxb9BrMm+KUGaSUsg+dXpcEG2miCIppc3OBT/ZdPWxm7
         ssiMHxRf2/WUMcSmHvfd5N1QMR0p6FJNmxOJ8w5THXWPufnO5q4VM+UFnOI4c7+T8vyg
         3D6Q+69Pe/XIbnob9sbEwwlvyjD8vhag86YvImFusXkFBzOSofqSVrk5ZQqGD68nyJmK
         gEUGDrF9P67HIJN1WivbLQ6nlUM5q8fgkFtdJzBVM1Bc5flLIb1S/tVCEYYLGcPNlpW8
         1D6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:message-id:date:from:to:cc
         :cc:cc:subject:references:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TEiLYj+Mgch7+Y6Uk5Pg4qPuBCyi4tKlPNvW7zEBq2A=;
        b=uBiy4+7XOVNUT/fQaiPosHJCEant93hDu+pVI7fLzgX2n0qydG00CL8FQaRT8UTWIa
         kXwhc7CooxRdI9o8plyt1NvB5tFDJbHooPTmstkm7QDVzDmEQtmV3cZbwmVeGH53gaHA
         dQl0/kyvMYuqGcfAKcnA+yJSmiD4NoOfRWvSjXyEJVBEhvKwbc/8M1zcvFLxHjMXKQXV
         91LiwdVDFTyQvcJFCM6V+HramzqouyWMTVimr/4PXnREO4r6fno5cHLINBElNTSGbMnm
         kg0VarrZdOqBgG88gfQgWOOJfmp0PjaNOPbWNAP0I/HNpD2QBk7UcaAJYLZ1Kxb0p1uw
         xK7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUjwOrAnwyhBcJYBd9opqK+K82wRQ1TIiC5LUQdDtO+MifRaB1I
	S7HdLiFR3PogLvT1/Jje6qU=
X-Google-Smtp-Source: APXvYqx7mGYbpEJDMwcZI3f3UbA2mH6WVZQ3u2taO15LR5XvlIKPZ9kOoidugSikktVCpuEP9vdMZg==
X-Received: by 2002:a05:6214:38c:: with SMTP id l12mr22207025qvy.224.1582138906757;
        Wed, 19 Feb 2020 11:01:46 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1818:: with SMTP id q24ls184261qtj.0.gmail; Wed, 19 Feb
 2020 11:01:46 -0800 (PST)
X-Received: by 2002:ac8:19b6:: with SMTP id u51mr23566828qtj.319.1582138906431;
        Wed, 19 Feb 2020 11:01:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582138906; cv=none;
        d=google.com; s=arc-20160816;
        b=ujfvWqLr+rxqW6eoqNhBEhysXmnZiO+6B1SnTTJrZwtncqbV9sScP45pqNzRQCm1aj
         ULpKwbFFdfW1g0xiOqFRlzCpK13BZi6+FXjTIxa9sh1OMCYhI550XTfMdkBS53SsgNHB
         CKrpgLPSqwm/a7quD2fd7vXRnooagRGvE2xnQ+SkcbhIDawIAWSX/j7iRvG+m2WyQGnB
         7JEX/fayDO7IpYsdh8WxaVYJGj55/YQFC1XCfJ00DYLhL91LRi3hT0XAjFTOU+FlUlX4
         QnWPvqyYldep9U4Zo49RF8KN9P0c5DgurjsvrVvNvK+gdaaIVL0SS433N6TtZQz2D6mt
         H/hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:references:subject:cc:cc:cc:to:from:date:message-id;
        bh=3YzfCQRcQD6ngdzP7IG93afjeNl+4cFPgHI9G825Joo=;
        b=nNHiPRvcGBSTBYG7z8QhqSmZLqAYXUuSnx90L8c8Ma+rIyXz1SEhib4xNSUU/CMGp5
         LlSvg37yNG7dG5JlNkUFXrPPADvEdHLiHep6nbee37zg7k1mQYumFMfkb/iFsUQN8ZhZ
         58jlmRaYwUYMcOQ+xd5zPM4S23An/0aTuM8umdMKm++s5abX7xWYjfrXpRqo6T2lNEGX
         1mHpFTC5Z7fF516/0F3DAEDZrz7JimYefP4c4LeEXc+WoAtyE48KFmhYuQ5F9izGGcgW
         72PnU11EfLOPrneVAlucFWLoMW/FcElQxMCsTa2Qs9d+5GBKoxa26JBOO4vwRmIgneFa
         Rc0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of paulburton89@gmail.com designates 209.85.216.66 as permitted sender) smtp.mailfrom=paulburton89@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com. [209.85.216.66])
        by gmr-mx.google.com with ESMTPS id l9si79263qkg.5.2020.02.19.11.01.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 11:01:46 -0800 (PST)
Received-SPF: pass (google.com: domain of paulburton89@gmail.com designates 209.85.216.66 as permitted sender) client-ip=209.85.216.66;
Received: by mail-pj1-f66.google.com with SMTP id j17so455656pjz.3
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 11:01:46 -0800 (PST)
X-Received: by 2002:a17:902:d70a:: with SMTP id w10mr27779463ply.125.1582138905290;
        Wed, 19 Feb 2020 11:01:45 -0800 (PST)
Received: from localhost ([2601:646:8a00:9810:5af3:56d9:f882:39d4])
        by smtp.gmail.com with ESMTPSA id b24sm364650pfo.84.2020.02.19.11.01.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2020 11:01:44 -0800 (PST)
Message-ID: <5e4d8618.1c69fb81.7b7a.12f1@mx.google.com>
Date: Wed, 19 Feb 2020 11:01:38 -0800
From: Paul Burton <paulburton@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Ralf Baechle <ralf@linux-mips.org>
CC: Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,         linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,         Nathan Chancellor <natechancellor@gmail.com>
CC: linux-mips@vger.kernel.org
Subject: Re: [PATCH] MIPS: vdso: Wrap -mexplicit-relocs in cc-option
References: <20200217211149.44132-1-natechancellor@gmail.com>
In-Reply-To: <20200217211149.44132-1-natechancellor@gmail.com>
X-Original-Sender: paulburton89@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of paulburton89@gmail.com designates 209.85.216.66 as
 permitted sender) smtp.mailfrom=paulburton89@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

Hello,

Nathan Chancellor wrote:
> Clang does not support this option and errors out:
> 
> clang-11: error: unknown argument: '-mexplicit-relocs'
> 
> Clang does not appear to need this flag like GCC does because the jalr
> check that was added in commit 976c23af3ee5 ("mips: vdso: add build
> time check that no 'jalr t9' calls left") passes just fine with
> 
> $ make ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu- malta_defconfig arch/mips/vdso/
> 
> even before commit d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in
> vdso code").
> 
> -mrelax-pic-calls has been supported since clang 9, which is the
> earliest version that could build a working MIPS kernel, and it is the
> default for clang so just leave it be.

Applied to mips-fixes.

> commit 72cf3b3df423
> https://git.kernel.org/mips/c/72cf3b3df423
> 
> Fixes: d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in vdso code")
> Link: https://github.com/ClangBuiltLinux/linux/issues/890
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Paul Burton <paulburton@kernel.org>

Thanks,
    Paul

[ This message was auto-generated; if you believe anything is incorrect
  then please email paulburton@kernel.org to report it. ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5e4d8618.1c69fb81.7b7a.12f1%40mx.google.com.
