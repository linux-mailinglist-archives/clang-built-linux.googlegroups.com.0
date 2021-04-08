Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBEN6XWBQMGQEP5Q74UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 57050358DC0
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 21:52:50 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id c7sf1984934qka.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 12:52:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617911569; cv=pass;
        d=google.com; s=arc-20160816;
        b=jmjA4vYYOVi4s4i/4cnYajyeueo+medB9d+avU1F53nlcWfiOSUmLUXaCV+q2Z2Pb5
         jTvwEKWzfNgt7GUhNYRHDJUw8fqc2bs2jjKtkxfx2ApJp9mn7avPqp50qavzpl1+aPq6
         ht83qqV+T1lCgL5G2FJpGPnDUWocIAevE0jHEJB4wHeoO59OIsh4c9kcDGXrO44XIew7
         KmO9SlqgHdlXxw1nBVOQkHyxhoEsBy7djkKoWhP/DgbISz2Be22yuPOMDXAJNvWwfkvt
         pAZCG/6KU9xiiNslZ+4UEj6moq1puRJKlQgZI2oVb7nNafpavgY750gN7adae6yS3cD6
         8z3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=NtAmpxLoKq3Afcx//k7lKJknjkCWURL7NNshKtD3Idk=;
        b=nKYmYL06ft3BVHRqJ4wbpRMXTtVeH0fuN7fr1zEUexYDgWSYFGigacwa5BIsjRFj7L
         qVXpCDvz6rEtfilzbllrXnmRlx4ipvc41xXQYBYdhac4RBo/LR4dI8ZSNSJG1SMYDGmw
         CyjofYfOZLR21Ocv43Ta9OBOoun2NC2b14HAExj3kFFx6jo6vNVruaATS7pKppNQ/0+W
         sD+igNK2IYu2O+0PDDAGAksPS8qJmKZxVWqI8we1xEZTsk9KDPVpiLfAQ+761P/IK68+
         6wtetDr20EYNRXj9kfIJkjOiO7B3fN7i7KdyX58kRQf4Vyz2vMET1agfUp3sKTQpTIHV
         m0iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BzjFJ+sJ;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NtAmpxLoKq3Afcx//k7lKJknjkCWURL7NNshKtD3Idk=;
        b=nXCRkNraCEpokZ83EIZJ5CGbh3rGbzQDbv9KAW8k34yqqLLTdZPrZ87trFVb4ENb7v
         JzYIfzXmf2KzscTzYSkIRADTIJPRt2D+SxCaUJRDEnUeGm6SJ0A8XILBi9tGi2n2DicJ
         WBG2SHy6Ak13aIf9Le8SkbRprRosrwh5vkb/O+Z6HUVOmYjvoix22oMqp9Nmyt1pWv1V
         Z8SNo+RxALT3XTuC6YpkV9vWevvks8aTLn5S75T1QcxNYMwVX8O2AWNw98I7ExEHfAhp
         uArn5xS/OODO6f2G7lzeupw1+h1EL2JEKSLI1PJxlWV4IO5UIv6jTAULnt6/rNLR+ocR
         W8fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NtAmpxLoKq3Afcx//k7lKJknjkCWURL7NNshKtD3Idk=;
        b=HKiZ/4+ES/eVLElaky1znq0tU40Lx4kqE9uW9+lGfM0dgPjX7W4udD4S8TJguoF/cT
         0mJowCLsNefuB9Z6pROUnkLemzTZxu80HyEdBgpdRJkaVkUhWGwokJ5OVxGLdj28WqTm
         20TRoTRtp/z3IF+BXeRhfHc922FiS6mgZtZY45ho1g9jEpek2F9M6ABoxLwJp2w7VyIq
         XRyuXvdRRDa0l0FST6RnqGrsO+47aHhX+VpelCc6uHavJ09BAkQ+brqY5d0IxQ+0fNjF
         LJg6uuu7mWvRTDjU7d017+oyakpZj31lQRI8/8O3Is4r29JWAGGR7Abw+Uj/jZqqe+g7
         qGVg==
X-Gm-Message-State: AOAM531WXirIz848V3P40PzxloJdB/AM1T72iySL9w8py2JglZ3D9OI7
	MIxRGQyvxSfMauAIAnAB8OA=
X-Google-Smtp-Source: ABdhPJzj7WGSGVzgljhJEuFJywOM2Szj13nE0hOjXnNxxqnLxrxc1RovOUgqWLykS7XJ4AMyXuCu9w==
X-Received: by 2002:a05:620a:2228:: with SMTP id n8mr10182272qkh.452.1617911569497;
        Thu, 08 Apr 2021 12:52:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fc09:: with SMTP id z9ls1904697qvo.4.gmail; Thu, 08 Apr
 2021 12:52:49 -0700 (PDT)
X-Received: by 2002:a0c:a0c6:: with SMTP id c64mr10468500qva.57.1617911568931;
        Thu, 08 Apr 2021 12:52:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617911568; cv=none;
        d=google.com; s=arc-20160816;
        b=OgsZ7AfUlvqIDVlSRu4L1jWiF+vHjzP1Yyhi4FSYUZqBTJsB1sK58SG0Ghm6lEkvqe
         TlQA9nxx70Y4KYOwJUd5mUfxCtKO4/UWU5+DhZTkqZ8ZDf1FSOQ4xnSC9h6mpFNYaqIb
         VrO7A8x6IlNtWP8AKiS5gzyBdQlMAqpjLbEsved4Rtcxn0HSwYhTVIjUQkCm3ktpOKD0
         q61uZ95512rJOLFJKL7c5kmcEAG8AdV4VUufMsnmrB5GRBUjok2fNdLNvsGaRVvfyIjC
         HhbBqEZ7f+c3gJebLbPkf9Y1RQxLi2Ch5OI3eK/bAX/qmkmLKFUHMGqZ3MkGSuFj3tuI
         OYsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :sender:dkim-signature;
        bh=KIJug2I8LAqDysW7Zo57l+mpQ9+Qy9uGWvQ5b4XssOE=;
        b=O1mSVtchC0LD59tmiXl4V/B4o4M27zPgePp/YnIb+57u5RC31akkERj9AHT04CuBjV
         Dj+rDL9Z7i1ZNgFTh6lJ9qyybTq2YXv2LlpTkuIgbpMtDXc2vMVBhmvzTlDcRwyGs1Qw
         cuvsUJwgOGS7oG14tsmZZ1ojM4dpz4j8Y/H6jDhoZOG9h/TuYGsHZL0ikWpB+//6Nzxh
         MBoKshZSkke1Y6hW8g2sjkUVIVF68uuCE+d17mOf38dv6f11JZr3ZsMVSQtZ7xJ0XHrW
         uI2l0Y6F7r1zfHVRFr8QJTSSwuBT/PrpHVS5ZMAaXNgyRYW+2iDBr4swGnX7tExkkKbx
         lkug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BzjFJ+sJ;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com. [2607:f8b0:4864:20::330])
        by gmr-mx.google.com with ESMTPS id c22si48336qtg.5.2021.04.08.12.52.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 12:52:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) client-ip=2607:f8b0:4864:20::330;
Received: by mail-ot1-x330.google.com with SMTP id 91-20020a9d08640000b0290237d9c40382so3454098oty.12
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 12:52:48 -0700 (PDT)
X-Received: by 2002:a9d:51cb:: with SMTP id d11mr9314460oth.32.1617911568145;
        Thu, 08 Apr 2021 12:52:48 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id i15sm89125oou.10.2021.04.08.12.52.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 12:52:47 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: [PATCH] block: Disable -Walign-mismatch for blk-mq.c
To: Nathan Chancellor <nathan@kernel.org>, Jens Axboe <axboe@kernel.dk>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jian Cai
 <jiancai@google.com>, Christopher Di Bella <cjdb@google.com>,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210408181210.u7cudatr7zcmbmb2@archlinux-ax161>
 <20210408194458.501617-1-nathan@kernel.org>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <e48bdeee-c8d4-7048-5899-0aa3fe7243ac@roeck-us.net>
Date: Thu, 8 Apr 2021 12:52:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210408194458.501617-1-nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BzjFJ+sJ;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::330 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 4/8/21 12:44 PM, Nathan Chancellor wrote:
> LLVM 13 adds a new warning, -Walign-mismatch, which has an instance in
> blk_mq_complete_send_ipi():
> 
> block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to
> 32-byte aligned parameter 2 of 'smp_call_function_single_async' may
> result in an unaligned pointer access [-Walign-mismatch]
>                 smp_call_function_single_async(cpu, &rq->csd);
>                                                     ^
> 1 warning generated.
> 
> This is expected after commit 4ccafe032005 ("block: unalign
> call_single_data in struct request"), which purposefully unaligned the
> structure to save space. Given that there is no real alignment
> requirement and there have been no reports of issues since that change,
> it should be safe to disable the warning for this one translation unit.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1328
> Link: https://lore.kernel.org/r/20210310182307.zzcbi5w5jrmveld4@archlinux-ax161/
> Link: https://lore.kernel.org/r/20210330230249.709221-1-jiancai@google.com/
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  block/Makefile | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/block/Makefile b/block/Makefile
> index 8d841f5f986f..d69ac0bd8e61 100644
> --- a/block/Makefile
> +++ b/block/Makefile
> @@ -10,6 +10,7 @@ obj-$(CONFIG_BLOCK) := bio.o elevator.o blk-core.o blk-sysfs.o \
>  			blk-mq-sysfs.o blk-mq-cpumap.o blk-mq-sched.o ioctl.o \
>  			genhd.o ioprio.o badblocks.o partitions/ blk-rq-qos.o
>  
> +CFLAGS_blk-mq.o := $(call cc-disable-warning, align-mismatch)
>  obj-$(CONFIG_BOUNCE)		+= bounce.o
>  obj-$(CONFIG_BLK_SCSI_REQUEST)	+= scsi_ioctl.o
>  obj-$(CONFIG_BLK_DEV_BSG)	+= bsg.o
> 
> base-commit: e49d033bddf5b565044e2abe4241353959bc9120
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e48bdeee-c8d4-7048-5899-0aa3fe7243ac%40roeck-us.net.
