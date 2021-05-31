Return-Path: <clang-built-linux+bncBCT4XGV33UIBBNN72WCQMGQEU4274CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E1F39699A
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 00:14:15 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id pf14-20020a17090b1d8eb029015c31e36747sf7629266pjb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 15:14:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622499253; cv=pass;
        d=google.com; s=arc-20160816;
        b=iieSPT248TY4Ece4xijFGtkPCgxrQFzg4hXjN94F4Tz982Gj/BokYHwDeHNq2peGTP
         VOh1nYB5WCJi/7H2vXkgAoVnHex6wKUA4nLTVZTe4q01z3QBUCK1COu8Qtr8F+TT0gQd
         ufrdz1x5zQ9cQ5LIImj+Meke3+BGkUJqaJRL3rdgga5Mpzvr11yFIekYoUFIZ0wtNnut
         waPAtVWZY7ATSU9Z1jwP6JKQrB31Mub+SkLozej/muDTsACI03LnDRJEuQ/J+1P+EPvT
         jGMP77R2ddd0gEM5HAX0Q81k/1naWJO3bUZJ+EbpJobVbHSbIWaXPUPTqLqUzmPkzSz7
         D0VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=+aReGoXjs7AhYXwdiwmeWpcGtMW240tFmf8wQ94tgiY=;
        b=gN6acxO4i39LAUCIArv95lqVaDgNq2fYDv4xM9bROJbznEQkJ0EVBC1rs9VH6MHhvY
         GK+dBst0B4OrL9lGFzSKE68aptIKjYpJ1U69FH7QUn1K5WVrWP6jBOKsspd8ApkgHsxz
         RZBGkcE23u4YBzz9zb1NFFeaSqGL/VvXqCmtBel0OgMbQ8gcb0TGsN5/kGWmbFSh8asN
         kXApoeCc18rnbg3O3n/v3PmVG/H8Qk6nN0Q09IlZFayD4c0rHtxOtCh7cDexUzN3R3EX
         pntqPtciBjsvXUpmkyy0HfPu/2JSQ17xrWM++pyHyU2TDpNB2Ruv2hclXhi3XNg01oNt
         DuSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=GyZJzI4W;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+aReGoXjs7AhYXwdiwmeWpcGtMW240tFmf8wQ94tgiY=;
        b=VrGri+xvCDLYNMA8bpNt+XOhqGjbVpVzxT9HnrbUHwKgFUlodWPcgquOAHxmj0u2O1
         SRYcl8ctUy6tBj0AvYayQLQ+UVNGh85s4TSdC63eJXsy5z0pN0B/rFllF/b9bQCEk905
         dXt8lW6OPdMNCZLR2+J7x9PLvMOHk/cFLQw3DBs7B+kXND6GqSd3Grt/RowmEBQlWJlq
         4MK4PWi9f7nOjr5E0Kc67aHelFQ3unhs1tNkOlDMAuP9vO+EG+7m/2DMywusIgVNR0l0
         MQE+n0riOFwIPfGoBtnBnBouOhkru0GSkLj5wzECQVJmNDSJBCbOI8KL6tkgc8MHol3O
         ymhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+aReGoXjs7AhYXwdiwmeWpcGtMW240tFmf8wQ94tgiY=;
        b=e0FUkFhvIW9EcAiN6hMwL2Gvw2UujssBp8yZcRh8eGutVzaYe/QnJ7piL9rZSRGKZr
         mOxm1uhMOf82FQ59NEbZsV9OcYbesz2WVIqiOmnIIGlAEpNWna2CHBKU0qqn1LAGu/jm
         nt1XXy1Vj99Rvz2pQawN6UVTx/rtmP6QxxJGqYsCaJ1ddt99GeHOJ4IGU97V5odJ3KZf
         q4SqGbJzAdSmQJBS0YhyTFyH21JvMn4H4XNu7jSmOn19OqZKQa5Y2wMl/tZdbUGaRn+2
         uNKm7bGk7Z2wQNfGWT3KvdBIK6lUs5SXTgAl6zOk2Tx/AfAdBB/nKt0T8ozvTjsK5yQi
         /U/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jDLTurwqpPYEAVfKll/4eJ6HEOe5wZiVLKwuKpWgxsOSUGBOH
	zgfVgo+wQkVqb7RRC0mcGpQ=
X-Google-Smtp-Source: ABdhPJxXi3ZguBspIBp06BqisHe1rkEsgSI8GOt5NhfSVEpdQCSaMqQfvMEhcB1uTvUHjlLRCyGyvw==
X-Received: by 2002:a62:a50d:0:b029:2e9:c657:feb1 with SMTP id v13-20020a62a50d0000b02902e9c657feb1mr8953167pfm.55.1622499253752;
        Mon, 31 May 2021 15:14:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:185:: with SMTP id z5ls8381450plg.6.gmail; Mon, 31
 May 2021 15:14:13 -0700 (PDT)
X-Received: by 2002:a17:90a:6705:: with SMTP id n5mr20905081pjj.76.1622499253169;
        Mon, 31 May 2021 15:14:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622499253; cv=none;
        d=google.com; s=arc-20160816;
        b=v2RNTqZ87/Y4JT4pHZeJwNPQ4x/y+/q1rVmFynt2gAlPIsLeASh3TGPjwNcooBdBMG
         tbtfdRCj/MoFPv+LPO4PGJAPBfU9TmW82dYB77Da7uFW3FaDV/sTJBhpxV+M7eIuKK0x
         MfwNCtdgmOkVySVWKxxLTbZLZZYHSSenrqyt3/IJzQtc5C7YEFHOP8R2ar+9VsdpPDrw
         q64xJZ2S3Gggab8838Fmr6wPw2nvl85o/EC8fyYMYgDnKdSuo8NL24VKDulTeMHTcTB4
         JbjlonNHIqmES0um1cZRu693KWs9fkIo9vOs7qMLy851uHBMIGCNOkx8uSYcNYrBo5tU
         fjQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=goOMsBCzN024Xw9TNUECt1tMefZp4Gsg+dRWnGywn1A=;
        b=nckhDfQpO/x4uMG7TMT0wkmU3t3l+XUpKuo6cPaOboDdA2Z7fvD4XDb4Ud0r1ytaI2
         7dWVgfzKNRWfxizBZPYV4gkWQ0Hh/jCa/9ck7zEsN+5W6QlgQXK4nxV5OWlBI+5ejmoF
         QFQc0zP3zEj3qODCylOWwVxE9vXBQDHaa+g5eLyhEPrzHcbDb9uAsbtqmnmGyH2k91ic
         ljlnRCb91QSxXNts0iBV8BGWfxIjCl95WGz3/b+z3tWw3Shg/nsDtBY3AS4jnksE68SP
         exEAt7ZG03yfc6PICJjfgiq49kK3HQI27KJjmkhIAQMUJm1U2EyPp6ItKU9k1LmftQ1Y
         yprA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=GyZJzI4W;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s3si1315326pfm.0.2021.05.31.15.14.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 15:14:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 862C36128A;
	Mon, 31 May 2021 22:14:12 +0000 (UTC)
Date: Mon, 31 May 2021 15:14:12 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: kernel test robot <lkp@intel.com>
Cc: Yang Shi <shy828301@gmail.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, Zi Yan
 <ziy@nvidia.com>, Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: mm/migrate.c:1406:5: warning: stack frame size of 2096 bytes in
 function 'migrate_pages'
Message-Id: <20210531151412.4dad38dd703119cdd33ca395@linux-foundation.org>
In-Reply-To: <202105301728.lr6r1Eyr-lkp@intel.com>
References: <202105301728.lr6r1Eyr-lkp@intel.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=GyZJzI4W;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Sun, 30 May 2021 17:46:48 +0800 kernel test robot <lkp@intel.com> wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   b90e90f40b4ff23c753126008bf4713a42353af6
> commit: dd4ae78a21fc05d91d841e499dddd057ad64a4df mm: migrate: simplify the logic for handling permanent failure

migrate_pages() isn't a good place to be using lots of stack.  

Am I correct in assuming that this is a bisection result?

I don't immediately see why dd4ae78a21fc05d91d would be the main cause
of this.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210531151412.4dad38dd703119cdd33ca395%40linux-foundation.org.
