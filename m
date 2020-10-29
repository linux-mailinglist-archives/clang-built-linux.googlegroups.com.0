Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBBVE5X6AKGQE6AJ5SWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id EC77229F928
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 00:36:39 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id l5sf527499uap.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 16:36:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604014599; cv=pass;
        d=google.com; s=arc-20160816;
        b=AlpJXAi7bmcgbNIRqZ+dA4TIKWA8tzwMSv9bTvpFCjFo8Oiwtb292q14P2XJskkc9R
         2ufCCQJchYnF5l2Djvugwlbmq/Q5xOZKA/I+xMRGO4BVVMlmQOU2E7ZYSXOvuJ0PoXZl
         i5L0jfgIiZ58M0LNjJBSfrjMlj6VlORfAOgByzcty+jpBmOdT9m50UiDM4xaQSq29i0u
         e8FtMB4pkkGwAM5rExoFHCJBP1CPlZ8FAAP7O0IuARbK2VbGmxQWVexzvMOtIlTfgF34
         Wcl+/heC/sJZXlW/sDZYUfC+v3fTHTUeTgoev3MNXDVK07ucJ0j81r+AiCgM+ZgEk38R
         YSaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xcg9jsyX9+881uQC4wFR5GY4Bv3HHz10WECGtXTn6qU=;
        b=TB+PbDWsD0yC2CJepitzGBMbGvynY7GoBfMqdDeh0BYIJM9ZMvV77NZPyhqcWSkgfp
         Es8rHJLXDPOBh+oXmbBtfb164dUa+X9MHqJQC10AlZnF2jD58fSyzdlbVLz3SzEaTojT
         7E+7Micz/4y4qdVwtgOYolDzYp3T5e0AeUT6TLlnQVvTsQoUTfF2vcS+OQubODd7HvCK
         3LVvjEM8KUPaJH1c5AWWYIsQY6ZwTsykumjzapjBwOanp3d8TVEjiDtX5aShHrYU4/fi
         WlRvFLIo9lE/9YvQBeXg0jANFd1wio2Bm4nwZRkirT1FrAaZ4U5Qa2DNthDPpgbUBQCm
         4oaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kF1I5s4G;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xcg9jsyX9+881uQC4wFR5GY4Bv3HHz10WECGtXTn6qU=;
        b=Dq8+1GTKp+3UYsCkgdvUOPNvjIClyHYkif1cKgFiU7knFiNdyRbgfUPRR32yDhdDrJ
         oggY4eG0MAg/6f3q+1FI2/CsC3LIycvVVCXwtrUbWp+3+MElJXzZqAOSmcyW97tAhj4i
         CZtmoUZE/qCV9CprgJS/Qtq++gZZOilPsHGDsPOkjOqECAfZcDrPRXQIxaTNsOKmLW19
         r5V2b9TCYjJD7G7/zuqfyHi2HBgBFjCFq18aV90rP+Xl7M52rw53Y2SLocO3lcEGHlBT
         Iet0naHiSmUTiNm8y8AEVX+s2qtut3y0cxTpp3BInGX5Cro+qsHPHVmCzJobFdHDuG68
         elUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xcg9jsyX9+881uQC4wFR5GY4Bv3HHz10WECGtXTn6qU=;
        b=px57Ivx6AdSpwGmCLqsIzr+Fl9KnntdCm5VOlxDwL1jrXd4bBxaDrEwszoEBTWL6xc
         7lBppjhNLanCCXE65PC1G5ZuSiNhEr+23uwPXJj3N4mWaQo2+EFa6RxIQhB6667WHDvW
         mUYK/PZGHQCA05Y9//CW+dskte0xvuvcEXlailJiojDQXamyq2vrRDWbfA7NC+QStmBB
         scZuv1FGIISy+NKGz9+i5nTb0Q5+/53EdF05KdQGI8sXKf8UjkWH/XJly3DDG5X7dDc5
         cKV2oZsFKZeH3j9tyz+/CchPtiCbEWPb1GbtMF9s1uR2u+JOPGXNP3XZVSZJcDyIze45
         a05A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532L8aRnFN27gJiCi8A56esB3EYI0HEbm7F0n327cqBmNOv393Nt
	TPvcshn2c6mzwwx8Nq7KRg0=
X-Google-Smtp-Source: ABdhPJzXjgpKFzpt3frC51//wE1kZ7V/2qaZ3cG8NEBGiGNnE+91Dvc9qU5YwiF/k2bY563NdRsp9Q==
X-Received: by 2002:a67:5d46:: with SMTP id r67mr5434901vsb.34.1604014599054;
        Thu, 29 Oct 2020 16:36:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e29a:: with SMTP id g26ls664598vsf.6.gmail; Thu, 29 Oct
 2020 16:36:38 -0700 (PDT)
X-Received: by 2002:a67:6f06:: with SMTP id k6mr5499665vsc.20.1604014598612;
        Thu, 29 Oct 2020 16:36:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604014598; cv=none;
        d=google.com; s=arc-20160816;
        b=OLUQ0m+HTy/6KYpn1o4x6bYhksTli9oh5pL4EGygTaowcjvXE1dqINTN389dFfmGkx
         WSZrsXyUhEzmGivlc3g6ZDk6yHHeK+/mAIX13H3FXI9cTSydLB2rX9hXlpWgGSPdrOmm
         AZfmnBjJLsv7MZFCp5DhFc/+xSHRIJMbkHPZl3W8W8ZVGZwNUsS+4dTHg/bJZZUuHWdF
         bHRXii9QbgitI3FyEwBYijtPvLHBKZwNhZFXvB/tbM5eTe+PleQ6HFMuYEEva2aF5LPK
         j/Ts1flA6xnI2UbetR4Lt+x/wlzofyhDmoM8tcdmClQIQnyQOhmQjYhqOcdQc+NKhX58
         vA9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HAqlZaQMG0O+kXAqYdayKdpnkXV61fA3e3zC9uBgldo=;
        b=cNwekS0vXpe8NEmZEqoTdCgukFaMcbgmJShqkdqbZYlhS/csUms35o4L434SlqcStu
         rQsjqEsyE/pkk2IhFU8oHBSrgTbVc8gutSzcRmq3MO7CnVuaZDeK1uWSC+EPzf8ApN2v
         F2Tpxt/0JWeuRib8JdfVkM2+fTQD0F8blI7emI2SL164a9W6HYEuw9qTwVSim22PTtRN
         +YzkR79zq7C9xKJLPjATLIaeqzkGqECXk4AEhoguiQSpsiLTFM9pUMAxt0K1blC4wMyR
         cL8vr1FNUzcRKcBLyiDdFEV0iDt6D+62GNGH6wdZpBRyKcckuSbwJDcxRswhmSOjVzm/
         quEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kF1I5s4G;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p4si223120vsn.0.2020.10.29.16.36.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2020 16:36:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EAD6B20739;
	Thu, 29 Oct 2020 23:36:36 +0000 (UTC)
Date: Thu, 29 Oct 2020 19:36:35 -0400
From: Sasha Levin <sashal@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jian Cai <jiancai@google.com>, "# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>, Arnd Bergmann <arnd@arndb.de>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
Message-ID: <20201029233635.GF87646@sasha-vm>
References: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
 <20201029110153.GA3840801@kroah.com>
 <CAKwvOdkQ5M+ujYZgg7T80W-uNgsn_mmv8R+-15HJjPoPDpES1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdkQ5M+ujYZgg7T80W-uNgsn_mmv8R+-15HJjPoPDpES1Q@mail.gmail.com>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kF1I5s4G;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

On Thu, Oct 29, 2020 at 11:05:01AM -0700, Nick Desaulniers wrote:
>On Thu, Oct 29, 2020 at 4:01 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>>
>> On Mon, Oct 26, 2020 at 06:17:00PM -0700, Jian Cai wrote:
>> > Hello,
>> >
>> > I am working on assembling kernel 5.4 with LLVM's integrated assembler on
>> > ChromeOS, and the following patch is required to make it work. Would you
>> > please consider backporting it to 5.4?
>> >
>> >
>> > commit 44623b2818f4a442726639572f44fd9b6d0ef68c
>> > Author: Arnd Bergmann <arnd@arndb.de>
>> > Date:   Wed May 27 16:17:40 2020 +0200
>> >
>> >     crypto: x86/crc32c - fix building with clang ias
>> >
>> > Link:
>> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=44623b2818f4a442726639572f44fd9b6d0ef68c
>> >
>>
>> It does not apply cleanly, can you please provide a properly backported
>> and tested version?
>
>Hi Jian,
>Thanks for proactively identifying and requesting a backport of
>44623b2818.  We'll need it for Android as well soon.
>
>One thing I do when requesting backports from stable is I checkout the
>branch of the stable tree and see if the patch cherry picks cleanly.

btw, an easy way to get an idea of possible dependencies is to look at
the dependency repo :) For this commit on 5.4:

https://git.kernel.org/pub/scm/linux/kernel/git/sashal/deps.git/plain/v5.4/44623b2818f4a442726639572f44fd9b6d0ef68c

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201029233635.GF87646%40sasha-vm.
