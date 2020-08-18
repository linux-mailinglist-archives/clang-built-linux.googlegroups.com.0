Return-Path: <clang-built-linux+bncBDR5N7WPRQGRB46U574QKGQEHC4RAAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id A633424882A
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 16:49:24 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id gf16sf12535112pjb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 07:49:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597762163; cv=pass;
        d=google.com; s=arc-20160816;
        b=ouQ4qPCbzk3RxJmMmtIquGoM0vLNmQ7/LVkkBfLkPX4O1Yn+fI8tfGc9V6VtJGRq6n
         hVU0HKOooI8e3lw61fSBzbZhDPskHtPlWj29IWQ/9VNO2FrOPq3FbD0X/w3r1mD2DnB2
         zYvvlCxx3vEawZirHWcPwRVWSfMbtLcGnF9W2biy9uc0AlrqglRBQ3tYKw1gehfFw4oN
         PCXw2jtibbfeoFohsfZF18fyOpPv5Lxzz1iD+tZLlMQMuyzxIvRklaBaztZw8xI6xnsf
         iGVR22H46WAX57spY+qlUyUELSM6j9a4DLAJ1DILu2qZNqG/PdCNjxzk77xeLeqTAUAR
         rqJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=OWYkHh7dIgXXNDIjXtQn56Z1cvQLsP0UipBXznEUr1Y=;
        b=QrHdFgz+7TXvpIjhgzbN01XSsxexi0cm5WcURICLuSKkC4YMiVd1URyRgzjjEvHlgT
         rbiUQZQJI8KqzBj/aG1zNQ/dIgKh6UvJ1jUA0GsU7v7Afabn6njEIM4aPi1w9+iQ9q8l
         jQkrMSTjFmv1EbA2ygX366GNcjrrWJSxjmkyS8IJzaCNoK5ly7ZMDwrPF3oLVaTwA+cT
         HzYhMyOK5UE6Jxwe1SNhopIht6otL304MwYaO3TWDCIutH8AlUtt3DK9fh2qcp8rFA6g
         3+bSYT1/03JclTsBLo8jL1mL0jVqSooiC+Cjfey0bPTYkwTYoHOKzSnrOxy3wrP2RbUo
         oOLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=d3qdQ7UZ;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OWYkHh7dIgXXNDIjXtQn56Z1cvQLsP0UipBXznEUr1Y=;
        b=N16tV2QFS7Jb0mM7gvjWk7zL42prMnANkZ23+1BxstKzXnubP1tJGnO8wcjjyhk4ju
         hR6IKgeNwLG1ZcVtWRzwchMUZhArChSq+dQDM8dkRO1XN9djHxjzDDwRtLfpXDTxg4r+
         3JlCd4a2FtnpAWV22/vEhfknCRyd63MAw1ZZDDulPXrKic+DPOupHfib8q9YJnpetDxz
         BCR7KFaR+QIElCREW7HfmJhcUqiknxf5YuJpqEV7XamNURQJK0TYwAlrgYNnzjlzBSfu
         AAiV2fKa8xexavEM2iT1CM8++FMZQp9LkrQJbTbvH6MDSF5533scYZj+2gmPpAaowoJ2
         8qzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OWYkHh7dIgXXNDIjXtQn56Z1cvQLsP0UipBXznEUr1Y=;
        b=KykOFR9PsuSFunznRbWkw0NXr9rNJ34PhHbjs9m1NHdEEWv/uiOSkA46Su8Aq0aUHp
         kMGH3+1H3TycZn734uf2GHu4/RDTNK4N54q9PGDSNbxBAicQFpjAcedUcUr78qnjH1Eb
         ZvGEcxtRU5nyQrNexLdBMpKgvKi09RwoMzctGQHwcIDzcyZ6HHtWe9j0YBgIJijR6w4q
         40soRFD/GlE2NhDQoeTALMsoiwRhttdZo9+OZ1U1dJqoa/Z+x5ai9m1pozd/pCH1eRKz
         DSsAeek8vDV8BJFLrLEfQ+Y0JiF1Of3gYTsQAjGz06b9M36EFbO6YG+xUzTEj7MFznS6
         5M+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fLVjEJNr6a0566Y7aBKrBcq1mLDGTwyUoLoXNv/OvzvBTvkxi
	vZSpTOh4SVdcsWeo84DdOjo=
X-Google-Smtp-Source: ABdhPJzlEVEaboaAmZdHCJ3fMN0zKunyoHUaY6UzSXWKrxWXiygURUfIboKbZTM/bOL8JrcNrP63Lg==
X-Received: by 2002:a17:90a:a10c:: with SMTP id s12mr290744pjp.32.1597762163379;
        Tue, 18 Aug 2020 07:49:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:76c8:: with SMTP id j8ls8754775plt.8.gmail; Tue, 18
 Aug 2020 07:49:22 -0700 (PDT)
X-Received: by 2002:a17:90a:6b07:: with SMTP id v7mr288054pjj.138.1597762162905;
        Tue, 18 Aug 2020 07:49:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597762162; cv=none;
        d=google.com; s=arc-20160816;
        b=YqhBNCopG1KEJnka7zlxBopIT9wWs5JqM82mgKr68kkoIExapDUGCi5TvM5zG74ael
         mnXIcl9g1FI7ZFuHY7Ldlr8zUqFbKqTDCDQeR6i8DpqEry7rtDi5w8GnRB8voWNMmh7T
         SoI77FOSDWChU+CIcHcLMztgiu7UCws5uj/rJ3jNCBUzcjxIu6kK+5GUyTVjeaIhY6LH
         JuAE7Gegidm/h4KKk2bCA2DeO5U8OW9HNH6eRrgQI147XD7svizz4Uy+vMmQIc50qxzU
         M7HN3cpqB2+EZi6lmyuRmJI17U0lizpIT4ZzwQS5OPGpFnOvxiqCh0Nm9vbkd9MIVQVU
         L5dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=fCviTlz4XSnwg6yVOSQsWhVAGKd364Znuee6QkGLbdc=;
        b=PDaUiDUcDIYZRwUA85sbWzb/J2UfC3TXmlW6/eU8BY2y+EesaU1cpVqpNc9TFMJ37b
         hkn0++sYCOl7+tzUarJBddSXH8aXj652IzfanrCHtSKf2pdlL1kuNmCJ4IxZnz0IqTMT
         p9brxt2jHmbe1G0KnO/tcKnGhbtkhHKews+gQmhmw3LTc627jOveytlfuPBLPjOaWI1X
         ouIpZYBMmVQ8WylJ5eYmgMOUtg4bl7Nnf7eUhPR1dwHnuX4SM6ewOvxvtf+flAOIJQ71
         R8H0+ASZ9qn3KDWNWsHM0KpDdITE6nLiAdVgaHJ7Z1ck8YPDD/VYISUtGu8YxX+u8jPL
         PqBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=d3qdQ7UZ;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id i18si7464pju.2.2020.08.18.07.49.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 07:49:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 17so10077531pfw.9
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 07:49:22 -0700 (PDT)
X-Received: by 2002:a63:4450:: with SMTP id t16mr13494555pgk.3.1597762162542;
        Tue, 18 Aug 2020 07:49:22 -0700 (PDT)
Received: from ?IPv6:2605:e000:100e:8c61:9214:36a5:5cec:a06d? ([2605:e000:100e:8c61:9214:36a5:5cec:a06d])
        by smtp.gmail.com with ESMTPSA id fh14sm171070pjb.38.2020.08.18.07.49.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 07:49:21 -0700 (PDT)
Subject: Re: [PATCH] block/rnbd: Ensure err is always initialized in
 process_rdma
To: Nathan Chancellor <natechancellor@gmail.com>,
 Danil Kipnis <danil.kipnis@cloud.ionos.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>
Cc: Guoqing Jiang <guoqing.jiang@cloud.ionos.com>,
 linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Brooke Basile <brookebasile@gmail.com>
References: <CAMGffE=2m7XOdKS9xG1bNY7MYR2x6AgQm9YZFHm6D4biO860sw@mail.gmail.com>
 <20200818064924.3984068-1-natechancellor@gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <d6c0f92d-6c0c-cad4-24d3-e17f0f59a8c0@kernel.dk>
Date: Tue, 18 Aug 2020 07:49:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200818064924.3984068-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=d3qdQ7UZ;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 8/17/20 11:49 PM, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/block/rnbd/rnbd-srv.c:150:6: warning: variable 'err' is used
> uninitialized whenever 'if' condition is true
> [-Wsometimes-uninitialized]
>         if (IS_ERR(bio)) {
>             ^~~~~~~~~~~
> drivers/block/rnbd/rnbd-srv.c:177:9: note: uninitialized use occurs here
>         return err;
>                ^~~
> drivers/block/rnbd/rnbd-srv.c:150:2: note: remove the 'if' if its
> condition is always false
>         if (IS_ERR(bio)) {
>         ^~~~~~~~~~~~~~~~~~
> drivers/block/rnbd/rnbd-srv.c:126:9: note: initialize the variable 'err'
> to silence this warning
>         int err;
>                ^
>                 = 0
> 1 warning generated.
> 
> err is indeed uninitialized when this statement is taken. Ensure that it
> is assigned the error value of bio before jumping to the error handling
> label.

Applied, thanks.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d6c0f92d-6c0c-cad4-24d3-e17f0f59a8c0%40kernel.dk.
