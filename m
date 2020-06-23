Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYUXZL3QKGQE7YQ53MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8913620680F
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 01:10:27 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id d3sf182124ilq.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 16:10:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592953826; cv=pass;
        d=google.com; s=arc-20160816;
        b=NylWrqme7JJsE+mPErxvp9CTHmwlX3X26WZbsQ7wES83deltaKiEF8nLUKjyq/5r1m
         TYEWiN44JzNwWj+GBZYO0aAiVhEdPC0YBofyUaJB51f7JndZAwKe8xJBMFiTZ8vDI42q
         ubcP44WYY0b9tnQxVdkbCTZ23z9U1NIUdxM3OTlzPKKWJFB57qMuTQnp9I9Qr235Lffj
         aqljaxOaysEliO0Elh9RS571yGECxYWfEUcD1B+SOkCiulNyagzLFzU0jDQjik8KL8yQ
         p3/3SpDeODt2bngA/WfzfsVksU23NkJf//L43N4y/cuD+fb6W2PDd8/JkwmfdbcrMP4R
         4Fbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=X6a4EeeuxcoIRVba1UHciBFAZbef1Exzp4HhpqeOcwk=;
        b=M8RzpchM3Kxvg80FKBm2fqxjA6BrvsCd5EEwu76uGf7/9Fae4PejVtAje5bU929Jqe
         +G2fKf2lMwwkboXmazOgfTlope2DNSnNnGO9B1B2L3dihwBeZdiSFtlDVJkMnDEXRO9x
         ysBZcN+cw0/zPBgLdgkLH4uxf4Je0wYK19NFvUGicPZkMAuYI6qRdNJYAeHbrahxVzxh
         euhDv8Lcylp06IaY5ohU9cEBOOof41ZEy1Vew7ii8IxfPvRQ9UXrBmAT5vubP9pvcinI
         4E2oVHqRltB3ocKKg0yZSw00/t6XCUxbUVYDo8Pjh4tZppARec95pf5a1ToXYFV5pNRG
         Oijw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KbxBnfch;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X6a4EeeuxcoIRVba1UHciBFAZbef1Exzp4HhpqeOcwk=;
        b=NZW3dx+hWmNDcKv8EoBpsycrO2/U5Gt5F5snJrUJ5vFXQG2ea03KEbpXg6eSLf0vmy
         eAoHXi3w9ANkniyGhqcdc8qTKofr2a5DY+iumUfI5Trd0goiUW/ULrDqFvhcIj9KbL7+
         qfksGn8yRM25IPSiWpgmkQogGGLesRfKj0qv740f3VsQRPAiDOik5iL8eLiKH5xtbajZ
         C/3jqZkogYgRAGem0efKhXJ4TuAsQx//TnKNz0+EDRNCU5GphN6HtXIaZToIOW9AI86x
         0MGc0Vyc5iP57xu4ONY7r/boyH7PX12uv3ewVGmFVn1Lm+dnNts2Gd6jBURhjF9B/98N
         HSng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=X6a4EeeuxcoIRVba1UHciBFAZbef1Exzp4HhpqeOcwk=;
        b=rkc1RbnWqlgb6D6NMKj07t1exmZ0qSraOxJ6Pcel3PCWD5glyoyNyVWxiXKh3S96a2
         JNyw36SqWo3oiv8z+jJUs9Bj/aObhAfODjkjYbUDbF0617XCTtf4kYqgzGehM3UgNAWe
         ROxoIcGN7XA33slScnORjMohvrk66fGza1F3JBTZvnLh5GFqa0QHJZzR3QdzC4vOz+1G
         dVEoTRBU+qb1yJd9ZTS6uf33s96fPRVeh+npTaNrLPAZfSFbqIY9S258O0GAHCrqYi2R
         EinqMpfRQJYI9NmpVkvJC1s1PG5vWpTHheYbri2sacFUjnN7rRiWkk98/8zV8vEW6h62
         rR2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533l2/79rjZ2VgmYSQJotzO+3YWsqyVIxwT7LhLHSHVilxkx/GrW
	EFrWay2I9UP96xA23L+VSk8=
X-Google-Smtp-Source: ABdhPJzY7i3KEsqYp8++rRsxCBIhPZzB9ebpvHgZlnyaDOvA/izX5MVNuT+70yUScWL1q+c4rXHltg==
X-Received: by 2002:a92:5898:: with SMTP id z24mr13815694ilf.242.1592953826502;
        Tue, 23 Jun 2020 16:10:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:5b18:: with SMTP id v24ls110708ioh.10.gmail; Tue, 23 Jun
 2020 16:10:26 -0700 (PDT)
X-Received: by 2002:a05:6602:1647:: with SMTP id y7mr27880598iow.75.1592953826166;
        Tue, 23 Jun 2020 16:10:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592953826; cv=none;
        d=google.com; s=arc-20160816;
        b=jiKth3/lxxuHlgsVeF6n7PVllH6Z+WJkzNJUaxrE2E1znZUT3ufNuoUyVtN59M2XOE
         qynSppkwTXO0z1cXzZLa4q/uTYhUgmkcIEvRZdETA7UKegjRuTfjI+QpUvFia3V229+d
         /KOKVhHIJOvnQh3Y1fQMg+pNS5XYJ51ZrOjnb51ZNoivc3mJL2pBx2OsO0vxFtw+08+5
         hyG8SPo6ip4g5KzQrPluh0YPCjx8Dt2lOy+PaMhZTZRL4J4o3eMUY/9Gqmd/NrT46pJG
         DD2epzzL4bv6r84lXUHcdTy5mGFJsl9t7rk6mdV5C1y53vJC8TkOAKacy1e8OpUen5vo
         J60A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7CGyJvgDfqa7MpUh5embDkSIvDYKMmy2PpptbOHIrEM=;
        b=ZCRTklx5lRlvgdkqRaCxib46j26iREJbRh/BW6JiVVYrzswmPy7stryEQS38GjJ/fj
         gWO2pcrcROJ2DjvZaLNiFI56vCl2ZCfJYedyqAqPsLqNOiwOBHEstxk7F9lROk5xHC9J
         MLilJBE4O3sjn4h1w8qsWZpA2MLBKyKo7Amu2YL7+WejXeTsYXK9ymCAVAXVdzMqNhxw
         JUXDJ7NkeTLOq2MGMJIjNI1oMMmTyV7WIh+j7zFb0HaSQLm7hHcT0Z9libhUYSE90olZ
         aatd37NkXv5Bj5f8PCaTmQRdazs6ix8paGl1v30UJ0Iv98yjUEbLxA+iupiS8G3qU+78
         L4GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KbxBnfch;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id b1si1117005ilq.4.2020.06.23.16.10.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 16:10:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id g12so120639pll.10
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 16:10:26 -0700 (PDT)
X-Received: by 2002:a17:90a:d186:: with SMTP id fu6mr3871728pjb.185.1592953825608;
        Tue, 23 Jun 2020 16:10:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r7sm13275139pfc.183.2020.06.23.16.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 16:10:24 -0700 (PDT)
Date: Tue, 23 Jun 2020 16:10:23 -0700
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
Message-ID: <202006231610.4993DC5@keescook>
References: <20200529200347.2464284-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200529200347.2464284-1-keescook@chromium.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KbxBnfch;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, May 29, 2020 at 01:03:43PM -0700, Kees Cook wrote:
> Hi Greg,
> 
> Can you please apply these patches to your drivers/misc tree for LKDTM?
> It's mostly a collection of fixes and improvements and tweaks to the
> selftest integration.

Friendly ping -- we're past -rc2 now. :)

Thanks!

-Kees

> 
> Thanks!
> 
> -Kees
> 
> Kees Cook (4):
>   lkdtm: Avoid more compiler optimizations for bad writes
>   lkdtm/heap: Avoid edge and middle of slabs
>   selftests/lkdtm: Reset WARN_ONCE to avoid false negatives
>   lkdtm: Make arch-specific tests always available
> 
>  drivers/misc/lkdtm/bugs.c               | 45 +++++++++++++------------
>  drivers/misc/lkdtm/heap.c               |  9 ++---
>  drivers/misc/lkdtm/lkdtm.h              |  2 --
>  drivers/misc/lkdtm/perms.c              | 22 ++++++++----
>  drivers/misc/lkdtm/usercopy.c           |  7 ++--
>  tools/testing/selftests/lkdtm/run.sh    |  6 ++++
>  tools/testing/selftests/lkdtm/tests.txt |  1 +
>  7 files changed, 56 insertions(+), 36 deletions(-)
> 
> -- 
> 2.25.1
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006231610.4993DC5%40keescook.
