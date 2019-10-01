Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFEBZ3WAKGQE7VFUU2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B2DC3A9E
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 18:36:38 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id o9sf12240490ybm.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 09:36:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569947797; cv=pass;
        d=google.com; s=arc-20160816;
        b=fp0hFuiBMUxDoR1uT5lvyR04RKAOGDHht9pOOKv5XXYFj/sPLANlxQT1d2vV5VVTn5
         kInEjnPupc0T0oGIAqhHgtSqYPSqug1/fCd1BGtMmY4jo1xwWGESGTRwBXZ10Y0+tGOO
         2okZxyAYpieYFpJQSyHYynxR1zWxB5QaSOe/1BXhnGrluk6jh+1Ai2SgOxIpWNHIvZnV
         z3F6AndzJoumGupXROrqUaOQiMC/qx9eOguicyDBgfibO1H/qJuF7+ZODRsVNgkzLE2b
         L01viDA+ceb3ehfVJF6wNzNt/7FPEdbLGpXzaKXseXHL1AXKYlMd7wR/LjVkb7lKXxh0
         kkUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=SBPX1iwUICgA4KK9OYAghASixcPoZet5edM2qd+4dVc=;
        b=KvqmLhzuat13RPlD2gdfAwx+NcDeW3VNBQEPzsrL8a9wSgIeTtGtkYzLKmtdER8usX
         it5vlxxeeXzhWu3AwNTtG0tVsLb6dfxHiBM/ZhJU8ydrsSGKy7vonuQo2t9ZpXNh+RDr
         YuzR4VYWGzhknMJA7REMLOxPXPVz3DQoJel7SQUaHCqjp56XwywwvC8a68yxO+EU/NGk
         XSFJqaN2kc6SZSbVvHVF95NTgPp62ytrUdjCOib8DMF/uNqzGppHsdS1T07ixGFkCBnA
         +bHcNRbOxo88XJtqEqYJx+L1JIWzOqKLr66E8BSENpoZzqfZqZr3xbrLvWAg0AlofSLQ
         g3wA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R3PPoTfk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SBPX1iwUICgA4KK9OYAghASixcPoZet5edM2qd+4dVc=;
        b=KBCPXhFthpCv4CGYkDOvMmhgyQg8YltCu0qzAJl6j0oPTUwE0kNmH3zfYi8/3iQrR9
         7JI9qSIJ/U6Y50k55BLPXyJtCFnU5mSSr2dEiTh0vyjc1464zGy4l/cxGgO/mL0QPZf5
         gm1J/939D+DlYK7FLba0xBfeWqd/UAHgE+d9fJIOvK0pZQ358X2HYnOzNJlfNN4m7I0s
         s4YPzWfkmzrYYZqeJdnd6P9pHZZz3GyL8KkBLbVtrdzz3m2/W/CWpvp5dddbpZcCN/nA
         8ekr/v6qKvtdf910x737pZQtaa0RvNvIe0n/ty3a8CXic6+jAcpIlJOjvMnCLDHYFpMJ
         miGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SBPX1iwUICgA4KK9OYAghASixcPoZet5edM2qd+4dVc=;
        b=O6Z4sVLYsHkDvj/nMV//wmMzRPGhDoo3nufU4tn5ATW2StHSXZahq7f0OciojMX0A6
         zqF2kUT70w4aQQuISw1x855z6N+n5uLrwCf9LoaZmOBtBCyLe0AgFSkfpeJHwxDJVa4w
         lecnaaOAnKgddUbQQ4B/XsLzsopM6rVp4Aiy2VOPXCQSKqXtXqa6HY0P8gMrTLSkeIVn
         gzTU1xfW92Ws+gwlizWmc34RdEq1NYw88aByYIErltk/acIsygN5GshRCxjobAHLfnvI
         5sxEJEP+U5HURJJqmtlEoQ83X7b1RDihXTmr9u0OA5NNpZBZkIC/ab1fTsDU/DUdhVMG
         /fSg==
X-Gm-Message-State: APjAAAXoq3m51wqmsh2PaXIPs2TF+Qa0XtRoWLzXtFscSJXIYS7xPQWZ
	uPBKKG88tgEDFxazXEJcQTY=
X-Google-Smtp-Source: APXvYqw25prp/XRwGbpoefE0xiQ5xMUJ730WbZme9CoAJWwyI6Q3crUo814hp0pUguWd+U05pBRDlw==
X-Received: by 2002:a25:770e:: with SMTP id s14mr19201462ybc.242.1569947797018;
        Tue, 01 Oct 2019 09:36:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5f10:: with SMTP id t16ls2751103ybb.8.gmail; Tue, 01 Oct
 2019 09:36:36 -0700 (PDT)
X-Received: by 2002:a25:bccb:: with SMTP id l11mr8406253ybm.184.1569947796678;
        Tue, 01 Oct 2019 09:36:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569947796; cv=none;
        d=google.com; s=arc-20160816;
        b=LiBzuVYi7KALWkBAAG4ldbOWvYXfX87NTiEiO+o68cSKijgAgc+X6INkwrRqYH3/k+
         GnhGkJU23a6kIILqHAXPZoAeoCOo1OjqfjrUk6ztu+eR8NLgKK6Q0FzfjGFPSYZbqt6s
         PhaGAHh/vlxcisjyvo/R0BeAeFAzDPNS/IclAcnuUDx+BIsg1MvPP9sNcqqOB+XQ7CmB
         JiBBxEGlSXkPrSfyFGHoWkMzYDf79YDTGLpQ8BrYS4ti7J7/6S8OE7aMUunjsMSmO4hY
         lmdJvXgKJh37BVMmxt+SF0K9sdYtSVQEmwWoVCfVjGFdsmYTUub3uSDS5WjHBCBB0s0K
         ArwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AHMFw+xpbq6Flta24J2hzTDxt/C/G/wkt9n5+ff6Syg=;
        b=jpSO/GVA2p42K5mFPNFoA5RRwUiJ414IGtRJGgS3EOPjldsv+caKNzsT3O1ZOuMWiA
         xBaopqDQtwoNpOg9/cZu9n6SLZ7UmE7SapbG1FuQ0FMB8DNxUQf2811iSssZOwJ8JcZf
         Hunz5ezS/UmJj9Wd7yMs5H7zHV7PYDz2nD/Zze+eQE7BSx9jAsEQtqQTE8M3mLMbaCzy
         PDSsVgnQ43/c6L6zDofC8fNDd6ZL8/PSmCGBCS4ZedxqsUO75HaPnZBFiyl0ybHUdtGr
         BBgQIF33bA6fzaCuIXqlLOQNNhRUETMsINfy7vXQTB/OIK0PmXC8ZvtYXxsSfV7auS8N
         LFZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R3PPoTfk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id g203si879109ywc.5.2019.10.01.09.36.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 09:36:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id y22so8395340pfr.3
        for <clang-built-linux@googlegroups.com>; Tue, 01 Oct 2019 09:36:36 -0700 (PDT)
X-Received: by 2002:a63:7153:: with SMTP id b19mr30478989pgn.10.1569947795665;
 Tue, 01 Oct 2019 09:36:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191001142227.1227176-1-arnd@arndb.de>
In-Reply-To: <20191001142227.1227176-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Oct 2019 09:36:24 -0700
Message-ID: <CAKwvOdn7J6bvF=58UkeXA8LVAMt-g76EDFT+j5EWc0LdsyX_CQ@mail.gmail.com>
Subject: Re: [PATCH] mm/memcontrol.c: fix another unused function warning
To: Arnd Bergmann <arnd@arndb.de>
Cc: Johannes Weiner <hannes@cmpxchg.org>, Michal Hocko <mhocko@kernel.org>, 
	Vladimir Davydov <vdavydov.dev@gmail.com>, Qian Cai <cai@lca.pw>, Michal Hocko <mhocko@suse.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <guro@fb.com>, 
	Shakeel Butt <shakeelb@google.com>, Chris Down <chris@chrisdown.name>, Tejun Heo <tj@kernel.org>, 
	cgroups@vger.kernel.org, Linux Memory Management List <linux-mm@kvack.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=R3PPoTfk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Oct 1, 2019 at 7:22 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Removing the mem_cgroup_id_get() stub function introduced a new warning
> of the same kind when CONFIG_MMU is disabled:
>
> mm/memcontrol.c:4929:13: error: unused function 'mem_cgroup_id_get_many' [-Werror,-Wunused-function]
>
> Address this using a __maybe_unused annotation.
>
> Note: alternatively, this could be moved into an #ifdef block.  Marking it

Hi Arnd,
Thank you for the patch!  I would prefer to move the definition to the
correct set of #ifdef guards rather than __maybe_unused.  Maybe move
the definition of mem_cgroup_id_get_many() to just before
__mem_cgroup_clear_mc()?  I find __maybe_unused to be a code smell.

> 'static inline' would not work here as that would still produce the
> warning on clang, which only ignores unused inline functions declared
> in header files instead of .c files.
>
> Fixes: 4d0e3230a56a ("mm/memcontrol.c: fix a -Wunused-function warning")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  mm/memcontrol.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/mm/memcontrol.c b/mm/memcontrol.c
> index c313c49074ca..5f9f90e3cef8 100644
> --- a/mm/memcontrol.c
> +++ b/mm/memcontrol.c
> @@ -4921,7 +4921,8 @@ static void mem_cgroup_id_remove(struct mem_cgroup *memcg)
>         }
>  }
>
> -static void mem_cgroup_id_get_many(struct mem_cgroup *memcg, unsigned int n)
> +static void __maybe_unused
> +mem_cgroup_id_get_many(struct mem_cgroup *memcg, unsigned int n)
>  {
>         refcount_add(n, &memcg->id.ref);
>  }
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn7J6bvF%3D58UkeXA8LVAMt-g76EDFT%2Bj5EWc0LdsyX_CQ%40mail.gmail.com.
