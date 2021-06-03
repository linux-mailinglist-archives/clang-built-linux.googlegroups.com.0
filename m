Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBF634CCQMGQE55XHKNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id C123639976F
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 03:17:12 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id w12-20020a17090a528cb029015d7f990752sf4395688pjh.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 18:17:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622683031; cv=pass;
        d=google.com; s=arc-20160816;
        b=iGpjezzklsLyTKvWGiwQaCqwXXJ86f99I1r/XjwatXsrTeQWl1V/phga3j6uLbnuMF
         sRchHGGD+1Bqgh2oxY/wM8n5n29Z8KEGj3UeQdbJThzxHRiiX1ld2DYXp5wwL1upp+op
         caMkgMI2y5cxAhI2YmubiuBV26E+GiTEsOrXfKfqFtEpqPHFzn7ddN4XWjY++0oAMZHk
         6yUJ1nWTm65m0wtYrtfZgNOH4SBLiV8blmYzEwryHXvsDyeC+WAMZJxneXhpH5reW30N
         PZ99GVfLoutQh94EybnocBu6VqqdWGuPbhuqNB2KAN4VnYAvGQXY0OOwqB34YhqHOAqk
         Hyzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=01XgNx3wSkXR1RQTsxCx4jbPKfO7fqIonkMdBHBaXKc=;
        b=pLawvLgpDf4iEI+r6K0UaJnrb95oIKrjN0HoqxjR3ekEIuPg77VsKqJ+UR5bhYZlCN
         +kf6DYdknc7mcnvKRcT9ZgMt5b3NIy6RuB8+EEPz9vSSXIb95dGrvshkZ0BdP3e69M8D
         +Kct5rDlwXGIFa9RrW5VZZZIdAk4nM1zq0lQO2NFMPbYGA7CIA0ygPCvnGDXTV+he6fN
         hBx+lKS/kO8z0ZAi4eddkJx5PLEp7+QQzXucwN7jAmyUvKPngFvU3TBXQAmmBLPTTVw8
         zw8umBS3ZfHvCs/qQYA7JO8X4wBgMDhdOF5tmPZZszTG1zhxY04sO6F2t9JZ4RA0wkal
         NeEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qoch9BCd;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=01XgNx3wSkXR1RQTsxCx4jbPKfO7fqIonkMdBHBaXKc=;
        b=s4T4v8GbrWtfwqUmTTysEpqVe4MXoVBJmTPtwKTl8R5BM7vU24I+z8X3jiJurH2iFk
         2g0MQ/HxZ5cyVwVK8220VVk5JhLCoc9z0ZeObs0i6/i040riovwzlwh6SXwu7FtWVBF2
         l1/x5+7B15EoNS5Gb53OPb2k8FRNbd977hkmOKr+ZyuYOjpa4yB7XVOK9VTQXUMh9Ihm
         E437sUz/p+0/cEKxoUYFuSE3QuexiBJue25OsZK7T7/e0i2Wqs6ct/e4XvtnEy9zJC8Y
         yogV+io0kwPYGzNQYqoEIhoPaJKJUwT1lpDHTzUkTdrGh4MSudEHLYEZcc/a9wNlpant
         NJoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=01XgNx3wSkXR1RQTsxCx4jbPKfO7fqIonkMdBHBaXKc=;
        b=ACSULsbBiUFV8f9ievWv6s2CGnR4mt55/m0WuXyiWSK5Hz99UFrpTwNOnVBphRzMW1
         Z9VCiYBNK8nwXg/UA83C+YHqydeIAkTUZ+E5FrrqM12qkyNKR+7PLLdMqEXumRbW7ZUM
         SmXGQCqDTJasWxx+PTe+2tAPzB+n6KUzURGdnzitbLCWJnvVSS+4xGtlpujw900KzMpr
         5E53QzZyNXYz3c6+GRaz3Cvg3OsF8PlJke2Xvb7DIL0Yd5nhK+aX+0F3mJTGslvmLrJF
         yl+XWTG04Ut9RVooZkH16O06T9a35ANuemFV+HiPJJgdDqsxmc96v8/GF6ZPJvWl3tDN
         0cDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WP3AmiOOpbx0/ruJhBD+7a+ZooeBT1WpLkUjCH71/A+2hpknu
	jdIxWI4tA1HoZI1MRAdmDws=
X-Google-Smtp-Source: ABdhPJzn8qEr/qSTFWxqHX84Kr+irN4wk5EXrSMFvg3ziHqV1mSE7/HfELsXJIbT+08ZKQP4PlaHuQ==
X-Received: by 2002:a05:6a00:b51:b029:2d5:874a:6bd7 with SMTP id p17-20020a056a000b51b02902d5874a6bd7mr29996829pfo.6.1622683031204;
        Wed, 02 Jun 2021 18:17:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4d48:: with SMTP id n8ls939920pgl.5.gmail; Wed, 02 Jun
 2021 18:17:10 -0700 (PDT)
X-Received: by 2002:aa7:8a85:0:b029:2db:484c:de1a with SMTP id a5-20020aa78a850000b02902db484cde1amr29573112pfc.2.1622683030641;
        Wed, 02 Jun 2021 18:17:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622683030; cv=none;
        d=google.com; s=arc-20160816;
        b=gKryxT3/zfea/pZwy21MLSIVY3pFNB5aGVuSnubD1Fh+VKeKfpgJIMj4FhK72BlE0u
         wl4RYjFr1O3NHhpRDC7ETGSJ/FU1F9GOYYFs0DIb85koHuyUC8kah+nT9cHau7UBq/KI
         eZOL5w57v+e/rOYAg/4dEVTiI/I1cm/MTj60BKiG047kCHNTp7lzX7+nxOpAMYbAAh0p
         PonPikocjwWu0/hh02WelIsJqzwhI/enu6WRNzVLfBrNK420Uggt9DPtoZiB/ILXxojt
         +9Vxe4fVxOrb5AySQf7IZBmaV+E+0QECvIeOgH6f097tcSP6nb3fqY/05zELwWV7zj6G
         iuQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=8nAVQND2dyj6aUVu+JpjDMTZxGbulkt6b1FMqbq65Tw=;
        b=jEH6qixh6Xvp8QJFqKpVNrurdaZri3pOS4ZBq7iXfCDd3N56upE0pSpZbto7lJ2dNi
         J+61WEUCDhwBPARonabNFWdatcZQ+Uafv+/QLDDEV5aSVWEGEzXyEy/PHx/yTpT5UugD
         UPj1wvb+RHzlmmwi9RQvRcaZkgmIr6kEAmXUoDvUsKRnP1etNh1jmG5uOIK0qtyw9XdF
         QDQUGrrsC5WLsKedoYWV1vVuHg4Wx1PwqDyOKz0DrasjYT3vN9+wgxK/h84qYpG+/Cma
         GmswyMvsI197Tv2jwFlVIZ8kqdKP0CJLoXu6Nw0ua2992YT5nfeL06itJF8G9kWVAg4y
         Fckg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qoch9BCd;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n5si244039pgf.5.2021.06.02.18.17.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Jun 2021 18:17:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D9BE360FE4;
	Thu,  3 Jun 2021 01:17:09 +0000 (UTC)
Subject: Re: [PATCH 0/3] hexagon: Fix build error with CONFIG_STACKDEPOT and
 select CONFIG_ARCH_WANT_LD_ORPHAN_WARN
To: Brian Cain <bcain@codeaurora.org>,
 Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 linux-hexagon@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210521011239.1332345-1-nathan@kernel.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <0f3ac242-d187-57b5-e715-ea25933dbd52@kernel.org>
Date: Wed, 2 Jun 2021 18:17:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210521011239.1332345-1-nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qoch9BCd;       spf=pass
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

On 5/20/2021 6:12 PM, Nathan Chancellor wrote:
> Hi all,
> 
> This series fixes an error with ARCH=hexagon that was pointed out by
> the patch "mm/slub: use stackdepot to save stack trace in objects",
> which is in -mm/-next.
> 
> The first patch fixes that error by handling the '.irqentry.text' and
> '.softirqentry.text' sections.
> 
> The second patch switches Hexagon over to the common DISCARDS macro,
> which should have been done when Hexagon was merged into the tree to
> match commit 023bf6f1b8bf ("linker script: unify usage of discard
> definition").
> 
> The third patch selects CONFIG_ARCH_WANT_LD_ORPHAN_WARN so that
> something like this does not happen again.
> 
> Nathan Chancellor (3):
>    hexagon: Handle {,SOFT}IRQENTRY_TEXT in linker script
>    hexagon: Use common DISCARDS macro
>    hexagon: Select ARCH_WANT_LD_ORPHAN_WARN
> 
>   arch/hexagon/Kconfig              | 1 +
>   arch/hexagon/kernel/vmlinux.lds.S | 9 +++------
>   2 files changed, 4 insertions(+), 6 deletions(-)
> 
> 
> base-commit: 7a42b92b6d30c3f09629c7d5ada9e3de2aba01af
> 

Brian, did you have any comments on this series? ARCH=hexagon defconfig 
is currently broken in -next, it would be a real shame if this continued 
to regress after you just got Hexagon building in mainline. These 
patches seem like they would be worthy of a 5.13 pull request. 
Otherwise, Andrew could pick them up with your ack and stick them in 
front of "mm/slub: use stackdepot to save stack trace in objects" so 
that there is no build regression.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0f3ac242-d187-57b5-e715-ea25933dbd52%40kernel.org.
