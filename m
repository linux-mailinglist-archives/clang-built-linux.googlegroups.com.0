Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB26R2SCQMGQEHEVRF4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ECA3967BD
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 20:20:28 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id j14-20020a0cf30e0000b02902142ba51ef2sf9540079qvl.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 11:20:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622485227; cv=pass;
        d=google.com; s=arc-20160816;
        b=SFGhQ7913g1NS5P4kVegxqo0UpE1kY6Z3ljBLZeeksHcxFSNiwRWGrvXg4buww4FOZ
         IYoOBqdIyaeHAD4EwvTvh1csHv5fPc9UYlnqRUGecMjQW1lCCWaiPByj/GtcUkILM3BS
         RNk0nVVSkuc0/A9uvlkWdKbHt/TnhweHGAsZJC8iLYLkCdtoGF5nqUIOutlPdozWGyZZ
         uxUomzxxjwCYluzWmlrsW4RxXjAb0dOAYnvYZacjxZrJcha9SAM9ozm29BzytmOn6Mmq
         vmmlZNqBETg9ErlYNXKjKYSC62Qs7egBju9WbXjAaC3OlzEPPBrhzNBbz5nrJoNU6GZe
         JHkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6Ok4rDoeo4Pq/kwGY73zYJZ7URvv1uO7QjgRsqcgwxs=;
        b=n7lhDb3I6VminGC4aDPJTDoBJ8KIKn3w8fU0zMTslBdKSiOo4P9PSg8r9fgKpQ6rmw
         2b7RgfX7p/vfvJvF0hAFoGOHMciu7iAubCN9BJPltxIDuyRYwQcbHvo4nC/FcqbdGYll
         VNzfj7ygQEcbG2ogLlD0JQSNrsT53adWyQ63G7dUn0xhMMVJQpuyAfG/NPVg9z5fsfHd
         p7L4K1to6Wpu06ko71mVvtinnLm0v5v0JeMP7ZgdMJyZsd3/9rn15oHxkUfzSh0Rkv/3
         TXYrUfbHuyM3Yb4TATr9rn2c7cpE6Oy4XeEm0nB9I2f07JzE7+IilD+laPawM/d9BX/i
         O6mA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I9BUxpgl;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6Ok4rDoeo4Pq/kwGY73zYJZ7URvv1uO7QjgRsqcgwxs=;
        b=KpIiY+rIbKvwtLpvla7nuiCnFR6qEK0/DEYCydAWP8ph/rEZgyDWzvJ7j6ED2KP6Po
         VbQIfI+nQOozYNLzh9yN5jt6mEH7Du/LKBIVP4dqFjt1wUkY8CsEBVM5Zw0GUhfRFyVD
         p8QkzsMCKVOw4tzeDkXubLYSXU3TPl2/nyp2vnMbN7/X6KvyAyI66fF8WJfz7sT4iH2o
         A5j9x5Ac7FrfcJJpm1I8iwaIDck+k+oZnp77H1wb5sQvoCi16hWPxP99C1LAmR8uQlkD
         jceZr5iQoEpX+kwYAZPC9fIGTLvPJx2baoEBdUnwxadLy9e83yaazrG2+UAbFj4MfZae
         xVUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6Ok4rDoeo4Pq/kwGY73zYJZ7URvv1uO7QjgRsqcgwxs=;
        b=GKgONo8zotEOOtSMonNgESxmA+KUCmy4whNXHsbfHzW1I4OcYyd2IgzNCZ5DibLg5A
         DxigTyfr091l6xaVxcUCXpSbW6vyO/wn742zfuEywbd2R3BJJmNRfKOY84Um9WXaivOS
         p8tYxPnznKI8hzfVtghhMlWBtQpUfUULqBBgTnRdktn3hhSk5NQ6aH40z/mUmWF8Hqrv
         NB710jjknsBhgAeIanKg3+ApivgP41LJKRsjvo/kAepts89sgPlTmOqmESIgXdgmvWN7
         fsrUIWmROfuWR56/+c1mgoeJCKTjMf5SCJj1jBnz3tL53UispZ/RVjmqUuIo3sb0qWRU
         jOaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Nw9GBXSbdStncE5CWHziua7oAAynbRMaY0MsfR1bN8hJnnc14
	f+FALGEaWtQa954P+/4Ic9g=
X-Google-Smtp-Source: ABdhPJxz/ms3mNAjTjD6sMPKBRPxSnCsbzqkxkK9YVfRlisDndZDWhGawHTBno5/Fn6VybgQBu2DwA==
X-Received: by 2002:a05:622a:1347:: with SMTP id w7mr16071314qtk.261.1622485227356;
        Mon, 31 May 2021 11:20:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2452:: with SMTP id h18ls7576245qkn.6.gmail; Mon,
 31 May 2021 11:20:27 -0700 (PDT)
X-Received: by 2002:a05:620a:1190:: with SMTP id b16mr17277103qkk.455.1622485226964;
        Mon, 31 May 2021 11:20:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622485226; cv=none;
        d=google.com; s=arc-20160816;
        b=JxG67dbBWd8uTWCBGHS/FjcyeCh7gQBMx9RCvB/6d/0LMAmUOu67lDUE8835SWF/Lz
         xyjBAZLAJCFBTFDbTmE1RhOEv6nngJ8IAsqDVE5K5leviVv8aVvR8ClFWkyc6dQYw+Bm
         dj1SyrXbU7sTBgpYGMXWCL4xUwWyqBWFElT4A1qT1LaYsCBDYAhliiwRgS2OS6vtalp8
         LOxxGZNB5Dn/wHkx6vhh9G3noRiCfSdljQ6xGbriLLUBK1uPmPUtfxdZ+KSOa+imi8UF
         hCfHlVTAeBfUAxg2xEwSkBt/DPfSOW0oKbKng+JYQAQ4EkyWUSaeBXeMf+YFsPSbfTtD
         OEbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8OI4Ivk/me8BDPwhGAAe+tVQyzgxbbtNoXzaG5n5waY=;
        b=wrVk4lMtbXyarSG+ifs8uo1SoclAVIRfa1iwP/2tLTv9F52ZybD+DJgUg6yHc1rCPQ
         lH/u23FiQr4uRMOSBfijMHL+p0uP95XM+WqUQ/HJGgbu35adUmBJXGsyqRhWfj7MwlXX
         TPPJ1a+OvxhLPuv9whSfO7/3x3vx8phmyHX60y8ngisqGa5Vd3Ko/TIjStEctYuksJdW
         VcoOOmBENK0QRPr0f9ze6WWnAUHJrj52crM1Q6izBprTSLync0mUf4rl4mz5CqtZSsbG
         q0lAAni9g8UqCs/FLRGSMh+IAG5mWxgq9cSjP2suYSWwAsw2Eiv6wdG9JGsTrNapKQvz
         3bSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I9BUxpgl;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y24si1298230qtm.0.2021.05.31.11.20.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 11:20:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4E90561263;
	Mon, 31 May 2021 18:20:25 +0000 (UTC)
Date: Mon, 31 May 2021 11:20:24 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: samitolvanen@google.com, wcw@google.com, ndesaulniers@google.com,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 5/6] pgo: modules Fixup memory leak.
Message-ID: <YLUo6HrhWmeg2g1w@Ryzen-9-3900X.localdomain>
References: <20210528201107.459362-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210528201107.459362-1-jarmo.tiitto@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=I9BUxpgl;       spf=pass
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

On Fri, May 28, 2021 at 11:11:07PM +0300, Jarmo Tiitto wrote:
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>

Similar comment to 6/6, squash this into 3/6.

> ---
>  kernel/pgo/fs_mod.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/pgo/fs_mod.c b/kernel/pgo/fs_mod.c
> index 0808d44227f1..2d1ff99e7982 100644
> --- a/kernel/pgo/fs_mod.c
> +++ b/kernel/pgo/fs_mod.c
> @@ -261,6 +261,8 @@ static int prf_module_open(struct inode *inode, struct file *file)
>  
>  				if (!pinfo->buffer) {
>  					err = -ENOMEM;
> +					kfree(pinfo);
> +					module_put(mod);
>  					goto out;
>  				}
>  			}
> @@ -373,7 +375,7 @@ static int pgo_module_notifier(struct notifier_block *nb, unsigned long event,
>  			if (strcmp(data->mod->name, mod->name) == 0) {
>  
>  				mutex_lock(&prf_mod_lock);
> -				/* remofe from profiled modules */
> +				/* remove from profiled modules */
>  				list_del_rcu(&data->link);
>  				/* mark it stale */
>  				WRITE_ONCE(data->mod, NULL);
> -- 
> 2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLUo6HrhWmeg2g1w%40Ryzen-9-3900X.localdomain.
