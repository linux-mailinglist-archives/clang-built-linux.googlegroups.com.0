Return-Path: <clang-built-linux+bncBCRKNY4WZECBBRWTZWBQMGQE5DA3UPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6D235B701
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Apr 2021 23:27:35 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id l8sf7422968ioc.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Apr 2021 14:27:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618176454; cv=pass;
        d=google.com; s=arc-20160816;
        b=O9B8EcveY0XxcxDeuT7rXrFjPerkzEVKH/NZ+71O+RRHhXNBTSTjaphL50tB2kpeYu
         0GkjrTD79uv1is804n8SIkxDHtNmLN0Pd52guNRX4RhxEuUkuBKn4Z/0KAI+NXNNVO0Y
         GFlw6Tp1nNdaeE1CfKrJJwKiRxpBOEHtHuIJROsX0OFIeuL4NiweIap70PG+sH73jQJu
         44kIsFtCTRs+ORZ/ekrmapHOZpt9+JvNFwgOkjjiJfVnUU0fLT/BMHcNVUicGFD5/grr
         bgBH+an+m97foowPu7TqGgUdcvhH+5T+qGkF8ErTcU1bSdJwO+O1rJqZq2vomOV/0vNl
         vwqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:sender:dkim-signature;
        bh=J7hYnUnWK0IfGo/uY0oYDCkj8S+mFekUTnBW5f9OWDE=;
        b=Nq1Hh+I6dG6tkUzMJa9CSWWWnkGal/gDrdkoMNnJ8KHY3GNk+SblAPD/b2cMVyCt+y
         nxqpErbyxodeHyBoQduYzUCfbrl8TckrvK7fzb7HaaxyKIQ489RzN3F3S9onCPdl4aaP
         2yYUTFsPqSOmrwQYP7O4RXEj8g6hjUe1WnjsMr7sQEKDv8gMZeLBMvqqAYmUMYTi1HAu
         RgnIkUs/lSItbog5cECpH/WPwNkhACQt7CdL1ObNjHpklPWkFTtizBjyqzGtjLWkiYHu
         3Oq0SlFCdP5m3ADmxjzWbBc/zHVvQujk4h+MSbSxkKTZCW03n86hCP5siR8QiqPvruO8
         2dyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=daGbgO06;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J7hYnUnWK0IfGo/uY0oYDCkj8S+mFekUTnBW5f9OWDE=;
        b=FXM5VvCrpSRvXuZjaLCLlCVax9J+3K42DHe9lRacdntPm8BRAI+YlhwyK+bNYiuEDs
         istctBHuirtnMdl4JmvZtrwc+Ihbq+8B2JbuRFiQLILBLRGSAx51kKfOpyJyVbeQ8l0P
         fvW7RwJmruXoySKS0RXvDDUec1gttj63ocYJF6nHYlmRcBisqG8lhcP+QBfz4+b0ZC73
         XzYksHoJtRhociiovdLaXPgeGmB+38RpKfCYSTf9btzdb7AV+WJoEWH7HSt/sreefa8c
         jn04CQqNwP+pHpLL/1vWkf7sCFJftERH72n1wHJpCuGOHdtqmjj1LA24HnBqZzp1jx4O
         ObeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:subject:in-reply-to:cc:from:to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J7hYnUnWK0IfGo/uY0oYDCkj8S+mFekUTnBW5f9OWDE=;
        b=STez4NReoIoSGA7BLFBuE8+Q9YDwHNPoS1aZ1+MQhuNQ8OFHz8lFonKIwTDz8Nwoha
         uk7tcWkkB7NNdo6HW2GNLqmeN4gKSrG5tWIVoNSdjQvRFWXcjc7mZw63icSIGPaiJp9N
         RcJ3LF9RiPrefn6YvWkwncLZ5T4n+mYSeg2whobCFiVviukJRHephExsemq0wpB5qjB9
         cVKCQYgmweEeHYieXGEl1VRqz58Hgcp8+5FQFU3S2Ix8McmenJreD5wkZ1bqMuEopjo5
         +XijvSBJjkOxBhCp+hjnarqIo+q3eHZzRCDiXKURbeVFLYgc0bR+LG7atRBCX22ErILk
         6HlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531y+OUtS6mugliXTy+GtWsamW0W6l+oaaDgnye6nBBm/HdHymZX
	eHVXXkluNf577kX/UCjIIzo=
X-Google-Smtp-Source: ABdhPJzjsS/GhT5Hsov85Ccqm2tfuY1yrEVwjywC94SkSnAmbayi/H9bZvNdhd4/DMnPunK/hwE6Zg==
X-Received: by 2002:a6b:8d49:: with SMTP id p70mr13646778iod.74.1618176454186;
        Sun, 11 Apr 2021 14:27:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2d4c:: with SMTP id d12ls2322477iow.3.gmail; Sun,
 11 Apr 2021 14:27:33 -0700 (PDT)
X-Received: by 2002:a6b:ea08:: with SMTP id m8mr19845397ioc.194.1618176453755;
        Sun, 11 Apr 2021 14:27:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618176453; cv=none;
        d=google.com; s=arc-20160816;
        b=PnkKL102bBz5Fu8sj8mCmje5E0cI4G3a7aQ9wsNg7OO8g44bZZ44a1X+Y0dgXyVXiG
         KxPd3FTQOz46UQyc6NG//mNnxBEsIES+SAYoZR6VEgrUdS5wpX2uwm4uNx4Y3jXBty9U
         bjpyn8dnh8zA1cQoRYgObFTYj29+2b8NLR/jnol1jMucB4c0hFAmiO1qAEHC7hWMd9vR
         TdfW1HJBjdgT7hDTMZxlkBkzIKwHmXI6unsS5N9nhCVihjKKErl53ji21xJphCi2NL8T
         BBnyXOvQHiaKyp7ZRBFC0mCfZwvFKKsPdKyBk5ITA2I6t80eHk56zARfMP3ETe+KHrhC
         /MLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=PVNDzZJZyebCsZPn5zFminUc1ykkQL3Oq73CobiugXo=;
        b=XyMk9sAyjR8DlLmhMiFaTlHadib5w7Wb7kkHX36oKbNBHlH9c7/No2K/MPi3UFttPO
         N1+XX/seaSAaDQZ3Z4A0oCyl2sRk9k2t7hWBNcBq7RifYJhKt71HOSrHBk2eAzhBb/21
         eqURJona46Kmv6hC3g2kFc3Hybq5JfAmoG1KR1Isott6Ov284+5uxmz6lREGzacXSoBQ
         zVFstY0uAPMbkmqAosqm+GlaMvo19yK095psCYZZwMZw5QOsFY6catE2zTaZM8tckI23
         tRq+EQAgnQv/fHzrrjQddQ+YEdtPeFdEJpu4qptCApLEeupWhYccVARGGTPiw539Qk7+
         Kehw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=daGbgO06;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id y8si604335iom.1.2021.04.11.14.27.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 14:27:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id v8so5283783plz.10
        for <clang-built-linux@googlegroups.com>; Sun, 11 Apr 2021 14:27:33 -0700 (PDT)
X-Received: by 2002:a17:902:9a0a:b029:e6:bf00:8a36 with SMTP id v10-20020a1709029a0ab02900e6bf008a36mr23328948plp.51.1618176453013;
        Sun, 11 Apr 2021 14:27:33 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id v126sm7943215pfv.138.2021.04.11.14.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 14:27:32 -0700 (PDT)
Date: Sun, 11 Apr 2021 14:27:32 -0700 (PDT)
Subject: Re: [PATCH 0/3] Fix CONFIG_FUNCTION_TRACER with clang
In-Reply-To: <20210325223807.2423265-1-nathan@kernel.org>
CC: Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
  linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
  nathan@kernel.org
From: Palmer Dabbelt <palmer@dabbelt.com>
To: nathan@kernel.org
Message-ID: <mhng-fbfe4121-4626-4641-b596-d027d6cfc50c@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b=daGbgO06;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

On Thu, 25 Mar 2021 15:38:04 PDT (-0700), nathan@kernel.org wrote:
> Hi all,
>
> This series fixes function tracing with clang.
>
> Patch 1 adjusts the mcount regex in scripts/recordmcount.pl to handle
> the presence of PLT relocations, which happen with clang. Without this,
> the mcount_loc section will not be created properly.
>
> Patch 2 adds a workaround for clang less than 13.0.0 in relation to the
> mcount symbol name, which was "mcount" rather than "_mcount". This was
> written as a separate patch so that it can be reverted when the minimum
> clang version is bumped to clang 13.0.0.
>
> Patch 3 avoids a build error when -fpatchable-function-entry is not
> available, which is the case with clang less than 13.0.0. This will make
> dynamic ftrace unavailable but all of the other function tracing should
> work due to the prescence of the previous patch.
>
> I am hoping this series can go in as fixes for 5.12, due to patch 3, but
> if not, they can always be backported (patches 1 and 2 are already
> marked for stable).
>
> This series has been build tested with gcc-8 through gcc-10 and clang-11
> through clang-13 with defconfig and nommu_virt_defconfig plus
> CONFIG_FTRACE=y and CONFIG_FUNCTION_TRACER=y then boot tested under
> QEMU.
>
> Cheers,
> Nathan
>
> Nathan Chancellor (3):
>   scripts/recordmcount.pl: Fix RISC-V regex for clang
>   riscv: Workaround mcount name prior to clang-13
>   riscv: Select HAVE_DYNAMIC_FTRACE when -fpatchable-function-entry is
>     available
>
>  arch/riscv/Kconfig              |  2 +-
>  arch/riscv/include/asm/ftrace.h | 14 ++++++++++++--
>  arch/riscv/kernel/mcount.S      | 10 +++++-----
>  scripts/recordmcount.pl         |  2 +-
>  4 files changed, 19 insertions(+), 9 deletions(-)

Thanks, these are on for-next.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-fbfe4121-4626-4641-b596-d027d6cfc50c%40palmerdabbelt-glaptop.
