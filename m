Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTFGZDUQKGQEJSXGQ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 4999A6EAE4
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 21:00:29 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id f19sf22589493edv.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 12:00:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563562829; cv=pass;
        d=google.com; s=arc-20160816;
        b=nL3he59GJwul2Hfr4Ajtz6JX7K8Iggx4Q34ULLgJpm2P/bAjoyZlf9crXGllZJfMm0
         SFJgHHatqtvQVWmhcTmMpleGI9+1x7sklUkmzNSmk+s2ca95I8LrTty2XWY/qBbcaVz4
         jJQCRR0nMCgV9JKvZg+xWMbvzWg4nCoKcPnI4A1+xuEKzdKZQpg53MtIreyxIYrzZQaW
         8H/qyTDDEbz0vIl/hzh8Ez9uXdIzaa9axD+BKei8DNVXNatF5XyoNBB+GH/2+8p2lxCI
         kxX8l+b5EDvtI5l03+G2jzIyAQYvZdKDaXPsVBu0cw8dbquUwS+/mXDxjaC7PXpADy//
         bs1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=wVkk5bkP6jb90OxIyT5/cyLQNyss3+TjK7m2Ev3t6uU=;
        b=wrZwQUJLi47VbIpR9B99+iYuPBLUBsXBf7mFQ3zP/8qTXi/9XQsJC311DWOToiyBzw
         uy4wS50naha40fEJYSVzkPWJwIWNU+W7DqxcusSsTHj5rnWTIpkpdysiQtDTPZ6NTJlm
         qeU8kBze3IxZ02BuZ0vxAUodOGhLpjJc6xaCLpaNSLwuGRbuhONEYjPXSd1KfOfbqteU
         7qXEWf4jr15HbzpLb5B5TWRVu0I0av3osXJO8TRn1xfx1euvimvXDIIctIjwQHc90Mou
         bngmmNkRhij3LIwhZMhph1x0UkhGS2nwRzF6LATUJ7WYfZerYfQjMgikXnl0QmXzpjsV
         s1Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=boDlrr7C;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wVkk5bkP6jb90OxIyT5/cyLQNyss3+TjK7m2Ev3t6uU=;
        b=GhxeU9t7ngZhZry2d7GjwSIy9CpP/ppzeiWBciBLHcP+KoDfC8tIPI1f/2Z2Fzzsv+
         Hmn9CNNincB3NlvoBB08Lezm3InTcwk0Zp9Zjt4XSRSixOGRYrgv66bnj9okhcx4UQto
         mQXWBMtsUWTPwTiBFbiULStU68vsVqcPiKuk+t9N3RFpLRw0OUKIGaI+Ai4QABCzaLFN
         BHwKw8T7UBR8zCmpLv8mzLM9cbp6LRyRGhu1fe64J8N06i+mXXLfb4oAnX84LR9VL+MO
         lxioaH+74ae0VARXZHwi1Bno01JpXk6gVovXDNt4k27Up+NWM2twfx7if/ZbGMBaz/ZP
         pdhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wVkk5bkP6jb90OxIyT5/cyLQNyss3+TjK7m2Ev3t6uU=;
        b=AKjLxup2Fm41kEgWDl1Y9d4z+TZl0PbsH82fLLsHw7AnbvRG2+pv2v8c9M2b4IcpI4
         r3Iw+/j1DCVZIyiTpQRIxVsjZnCJQm/b1hkJlyin4Wg5WmockJtt3GFiDrjRcivCHaEe
         vKn9vxdIL9EW+9rbywDxPGctU2NWanR45p1mm/jvPTvu9eSpduv0H8HZ8T/gGNc3zOUw
         tPXk89+eTL4x1RF4cRrHYzbxyk7sRqmMRUjb204LOI4xJy43BIB+9YOmDulCnlOBjUXq
         GQIJhinR3Yv25f82fkAfqpb0MPo75D67KZ5IzfoCvy5bqX3ajwY26RqfhvnTf53RVCNd
         HvEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wVkk5bkP6jb90OxIyT5/cyLQNyss3+TjK7m2Ev3t6uU=;
        b=U8PNsuUmzrTD9k40IQA40HNS3YHnO4aHel0r0B864PxSrw2W9CfpZai6lbIo5iQZaW
         O/vSa3/wEu8cKoSe+xupawuTWTc3pd+xtRMnx7AuQvayGz+ZkLCjBH+TZS6/XVrCUE4t
         t7XuxN8LL8QAy8GEs7o1fs16KElVxKuT1HtOrLQI9DB58whVvbOxe0DYl2XWr7qWr+gE
         xkCk0aSV6/GSqSYXoR9q0ZmqPDpVTe8yALZBVijnP1fEHWnrHqqAX3t0OxjUi5yD7Of+
         CqH0+aAWcqsPFwwkHR6Fqbf98YustN8pnCxvjI8qS00dMWqypitlhA+cY3ZPcvJxX45n
         vSZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXYVjW8t+rmGkbp1V0k/7NdkblSHL1ur9M+9KXpIBX+4y6Vp9LW
	1Sy8RVc6Dv9DPI2h7uVQqM8=
X-Google-Smtp-Source: APXvYqxskwf9ho00+hLDtHZlrkg2SPjC7JbhRKa7Z+aa5ghpHWriX21vwNctp5QwVTfEVuMqWAscEw==
X-Received: by 2002:a05:6402:14d4:: with SMTP id f20mr46983865edx.125.1563562829023;
        Fri, 19 Jul 2019 12:00:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:94ce:: with SMTP id t14ls7700305eda.7.gmail; Fri, 19 Jul
 2019 12:00:28 -0700 (PDT)
X-Received: by 2002:aa7:c619:: with SMTP id h25mr47865601edq.295.1563562828626;
        Fri, 19 Jul 2019 12:00:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563562828; cv=none;
        d=google.com; s=arc-20160816;
        b=HbHS21qWQ/iZl83tBKyP2LYH6G24V5MPpgl+1gf5+PD3pKDdVnsGMFz+6B7kyZ7Ltx
         sMjfXXO+CJ5TlpC8tuucLxVyez+NRvh9h4xW1Omw+fuAUUiNAElPgZ1bpiPSI7wST2w3
         iluZIv1Z6gATauA7zHwIMi3naw5PpCCpCbmr6yXNRPVDUOiPLLWpV+arnLTNKnBUv7+9
         +C7qdCsw0Izpt7ESkXaaxInrpX+/cXNQq2olwUYBh9+Ka57flNIoF20BfPCR6/DzTgMX
         LjZtAtgSiuYUZIf742H+XRWYLAIngbRqtps/bLrWDcneeUtfzaOwCp090EqbsP6tbSuQ
         b47Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OjBT3y0IaTj0mi7QluR2YRiH1GY4BrXcRWNycnDwyBg=;
        b=p1ceqUg/wvI89xKzO6Psg6WJ0HmPMdbmGVU9xdDd6btPf4gE4H96PoRcSXwAH3TSDX
         oK5Q9zrUR7zDPZ9/jR+zKVQ19m8jFvkhpg7Pk/Jnqxhe6J2aK1T0lDnsPNFSzbXTf9mF
         75DMWD6A+ArwjrkkrX0ooIgAdhw5FEqRHZqRIqIPWj7XenCRqAr+KuORUDvi38sx+X1V
         1KO98VZkUlrPThZwZmMSMvVGpqny+35iv5PYb2ZnNglBb23T6xwD/RNn9sRp4ny0TjU/
         POzqyagcAGtL9NNvfhHSmAJzhya0zM9Dy+HfIuhkCZsxKCNX3MmzgFnUmRiZnYEf/4iW
         aaKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=boDlrr7C;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a41si1719832edc.5.2019.07.19.12.00.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 12:00:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id y4so33238185wrm.2
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jul 2019 12:00:28 -0700 (PDT)
X-Received: by 2002:a5d:514f:: with SMTP id u15mr58323856wrt.183.1563562828112;
        Fri, 19 Jul 2019 12:00:28 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id l8sm53303856wrg.40.2019.07.19.12.00.27
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 19 Jul 2019 12:00:27 -0700 (PDT)
Date: Fri, 19 Jul 2019 12:00:26 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [v2] waitqueue: shut up clang -Wuninitialized warnings
Message-ID: <20190719190026.GA27734@archlinux-threadripper>
References: <20190719113638.4189771-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190719113638.4189771-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=boDlrr7C;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jul 19, 2019 at 01:36:00PM +0200, Arnd Bergmann wrote:
> When CONFIG_LOCKDEP is set, every use of DECLARE_WAIT_QUEUE_HEAD_ONSTACK()
> produces an bogus warning from clang, which is particularly annoying
> for allmodconfig builds:
> 
> fs/namei.c:1646:34: error: variable 'wq' is uninitialized when used within its own initialization [-Werror,-Wuninitialized]
>         DECLARE_WAIT_QUEUE_HEAD_ONSTACK(wq);
>                                         ^~
> include/linux/wait.h:74:63: note: expanded from macro 'DECLARE_WAIT_QUEUE_HEAD_ONSTACK'
>         struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)
>                                ~~~~                                  ^~~~
> include/linux/wait.h:72:33: note: expanded from macro '__WAIT_QUEUE_HEAD_INIT_ONSTACK'
>         ({ init_waitqueue_head(&name); name; })
>                                        ^~~~
> 
> A patch for clang has already been proposed and should soon be
> merged for clang-9, but for now all clang versions produce the
> warning in an otherwise (almost) clean allmodconfig build.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=31829
> Link: https://bugs.llvm.org/show_bug.cgi?id=42604
> Link: https://lore.kernel.org/lkml/20190703081119.209976-1-arnd@arndb.de/
> Link: https://reviews.llvm.org/D64678
> Link: https://storage.kernelci.org/next/master/next-20190717/arm64/allmodconfig/clang-8/build-warnings.log
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> v2: given that kernelci is getting close to reporting a clean build for
>     clang, I'm trying again with a less invasive approach after my
>     first version was not too popular.
> ---
>  include/linux/wait.h | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/wait.h b/include/linux/wait.h
> index ddb959641709..276499ae1a3e 100644
> --- a/include/linux/wait.h
> +++ b/include/linux/wait.h
> @@ -70,8 +70,17 @@ extern void __init_waitqueue_head(struct wait_queue_head *wq_head, const char *n
>  #ifdef CONFIG_LOCKDEP
>  # define __WAIT_QUEUE_HEAD_INIT_ONSTACK(name) \
>  	({ init_waitqueue_head(&name); name; })
> -# define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) \
> +# if defined(__clang__) && __clang_major__ <= 9

Might look cleaner if we used CONFIG_CC_IS_CLANG and
CONFIG_CLANG_VERSION but I have no strong opinion.

It works as is, I checked clang-9, clang-10, and GCC 9.1.0.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719190026.GA27734%40archlinux-threadripper.
