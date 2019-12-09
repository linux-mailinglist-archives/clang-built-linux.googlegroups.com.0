Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBS7SXLXQKGQEEHUDTVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E01117821
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 22:14:52 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id o34sf8592166pjb.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 13:14:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575926091; cv=pass;
        d=google.com; s=arc-20160816;
        b=L04/T3ZcibJEILqY9cD4TYoj8QH1Flxwju1CvyJZkre4isNfZbt3aDvFiBeZB4M0gO
         1SziCA8ZO8Q82GPSOnt7VZdnxKoMMxJG17XXg6FFCj/qD+iYK37DtY/yWML7M1hjxTGP
         E8VdEhN32NLGm4ADtNmjn14kW5uYgYEZ7xc9c073ZhFigOnj5wTVXovj0IHDEWrWmgGt
         nrkZQujyaqwsNYgX4BNkEcMXy1Gqd6odLS54zjxnZSC/KlFoBQO6UlkbFYaMzoSNsYsg
         oan7eQtgVE/qWYMFmDZGR4VCneDkdCGaZPFskUma/Kv8m+vj1qEkMLUPFQex0veK7Bl9
         SwLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=EZkiSzRT90Ivw8FoxP2OPofW9/tTY4svUv7qIt0mJdQ=;
        b=SQJY7+XprR9LzJtOCfbo91MMxYqzZk7zdDhp24mjVN16QUmTf2jKyn/FC8taLXPvop
         Z7ZL2ie0ifj0nEwpf7U05FoF6+OemVdfrm3lf7PIngNosqZ8ytcNAV+ru8rlM07eIgA/
         bLsMtp3YatYwVmk+V/hXgcWXI++31BlP81RqPWJGJndHzkeHYnKnT7IH5TV8RuqBDnnv
         J4a3wXCCAPhxLkrvn2tZmY8uUWAvawru/f0josW5upuhid309053yS3fYWiTECLIezSB
         WncLxYfDOvB414HmQO1MCSx0Bn4u9MnSiKel2mmb8tkCYN2QNwO3Q8bVQ5S9j4QDoFB/
         8jtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tFBqaJ6E;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EZkiSzRT90Ivw8FoxP2OPofW9/tTY4svUv7qIt0mJdQ=;
        b=VXECb7iGGKNndr25HL26VrF+HepmHBHXptkbjcNVWia6PGAqOK9Ke+il4nPQEm2lPn
         9RM/5qWCMrcFUKeEOjCxFH6erRLRlHTOC2ZKGU2BcEVPyrFEpaqpo7+F7nO8rbpmxHEz
         remprsXYEnjxRKdRIzO0Zt3NdZIbUDsooSDHkJ5sPA6gCFXOr/EwKSMX+I0pDschxKHq
         Wqjgf7FoHJfMaPIH6YGmIKRBEz/3TyRpZEnzBSnAq/Y5Ezkn/0wdBuqhQhwzNfMlHpYI
         IDmA+19IOifrwDv3t5IT8biV7d1ylPXpMhVO7Z+gJRM2y4oclwi1sDwSMEGF/HCp6uCQ
         P5cA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EZkiSzRT90Ivw8FoxP2OPofW9/tTY4svUv7qIt0mJdQ=;
        b=mOi0VvSm5gYkuTL+gXWUWUlCZ5N8ycm1mXeA7I9PXtAvY8TO3KgeLEV8W8F30Gd9C+
         QmxuPdXqulmgiFgFsb7nQHr5jnKVgfGaKbT7IqgqCZwqTUVQidvVGH/Vib//kWoTL78x
         DhQJpkmD9LExQcNefDa/Z4qbio2Gxn0BpyAxN1l2XiOl80/oSCq79TjCbzeaAwx0B2rR
         IclOIYZJ3IF3YsveX0jx2vsW/hfSNJyX64JVIjlJUHcpczAYKgrLfaacY4c2c8QhtOLp
         e0P37eJ2B/PnScKJ4rj9B7vTWQzav9ZqdfIixzD/cwoAtbH6714yb4ZbuWEKdmpXIDXw
         n3Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EZkiSzRT90Ivw8FoxP2OPofW9/tTY4svUv7qIt0mJdQ=;
        b=N2O9I+k2o3k8fnA/Unj9Hy5A0axBp72YHVoOhLgfX6X32dOYtVNmNqOooHtlhzDs4y
         KusYWHlrh0RwPrrsXbaoYxcHlhegQ9UsYLuqNxPLmBoIhzDr48AgsC/ivCKVZRj3oW/n
         V8fjVSrhhh9YNiUfRlqh3LM8OXmwY2uuBVTfxwYAiHuEvNe/5GJClsgJTleXqGkB5B/p
         Wm5fVdXBpRa+bsjwIDC5oKAizVYlG2Ip7sKpbnBYwMIztjo4LP31eOEWkFi75xNTVzkN
         t8pZzCFIJOH/UDbuuV3cZo1dO4D8uPlIccSFOAScB8vOvUH+tDludJflPN4XbFHSEu+f
         bG3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXuSt+SFmKOmR7b0hHAe8TI++r+VpKF9WHV03/SwwAnGTL9ehHy
	vtylEaIIGfWvFgh9frnTFRs=
X-Google-Smtp-Source: APXvYqxflFvyr6Jahs1MOD2qi0FJjBe3QQYJtZXP0IKqOlFpedWbAabwaZhUO1clvXTHB6svXDmpaA==
X-Received: by 2002:a63:780d:: with SMTP id t13mr20110716pgc.82.1575926091141;
        Mon, 09 Dec 2019 13:14:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7293:: with SMTP id d19ls273191pll.13.gmail; Mon, 09
 Dec 2019 13:14:50 -0800 (PST)
X-Received: by 2002:a17:90a:1704:: with SMTP id z4mr1205511pjd.131.1575926090799;
        Mon, 09 Dec 2019 13:14:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575926090; cv=none;
        d=google.com; s=arc-20160816;
        b=PqsOQzNK5D7OrzaUt/07bC1Ate9PcpoayZ5PEBe6swICcLKxe8RqyNWoJLN6oFv/xT
         fipP95S0lEKVe5+/YD2bGmCfN0/87W8Mvwems/vuLwWChp2lN9UA9Z7U/yW+87CFIBjC
         IGw463Sn8myeokdf3nec5zmjYd6sI2ocinJ1jsdfx7NetQtspoyRZVpyNo6fuM3uWSZC
         LenpOivcbvhhhbMcjE8hErWJaTh0BYokS0bR/SOJAw5W/CDYytd00mLjGnzJg7kuL0+B
         iFZ8CZt6+gusF4d+5QYY0WATCLmnnUm+tI9Ku+b0RJ7M3X+HR622rmllMCCZTQF7X5Ij
         MCeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kI1cdqsohvrBZb1G7zvJRzw516Sb7QCZ7TtWVwq88mU=;
        b=EJsq6LOvOSJcIP4Wbsm7h9+2oOIvDf7a7OzylQNA9eEELEys9oX+N674EHhpox0DSv
         JX+t4p33vHsD7+7rVYopyUCxeWf2LBc5HmNncO3bLYBuQo1rwJg1ZIjBiRkWF/ZsyWVZ
         oq9dxUSnHH1TsTKN1a5Eh6OlndBgL1GJ/cbFF3z3hJ2FwjDjMDolnNd3NzThIukgmTJF
         ATCKjsfEFPixd0KWMtWZuIn1B7RBSZKkAd3Ez/vGnth/I6LJDN3ZDouqCH5vf+byRmIL
         Oh75YfQfOVln5R0CgMsVFKTKtJ43WnumZyH2H9wLkl6nrWEOceIzxHL4LACbZLZXzadZ
         B69A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tFBqaJ6E;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id d12si93843pjv.0.2019.12.09.13.14.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 13:14:50 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id a67so7748113oib.6
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 13:14:50 -0800 (PST)
X-Received: by 2002:aca:8d5:: with SMTP id 204mr981154oii.141.1575926089961;
        Mon, 09 Dec 2019 13:14:49 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g19sm397100otj.81.2019.12.09.13.14.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Dec 2019 13:14:49 -0800 (PST)
Date: Mon, 9 Dec 2019 14:14:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Juergen Gross <jgross@suse.com>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
	Roger Pau =?iso-8859-1?Q?Monn=E9?= <roger.pau@citrix.com>,
	Jens Axboe <axboe@kernel.dk>,
	Stefano Stabellini <stefano.stabellini@eu.citrix.com>,
	xen-devel@lists.xenproject.org, linux-block@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] xen/blkfront: Adjust indentation in xlvbd_alloc_gendisk
Message-ID: <20191209211447.GA43622@ubuntu-m2-xlarge-x86>
References: <20191209201444.33243-1-natechancellor@gmail.com>
 <CAKwvOdmrGGn6f+XBOO3GCm-jVftLsFTUXdbhS9_iJVY03XqCjA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmrGGn6f+XBOO3GCm-jVftLsFTUXdbhS9_iJVY03XqCjA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tFBqaJ6E;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Dec 09, 2019 at 01:07:41PM -0800, Nick Desaulniers wrote:
> On Mon, Dec 9, 2019 at 12:14 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Clang warns:
> >
> > ../drivers/block/xen-blkfront.c:1117:4: warning: misleading indentation;
> > statement is not part of the previous 'if' [-Wmisleading-indentation]
> >                 nr_parts = PARTS_PER_DISK;
> >                 ^
> > ../drivers/block/xen-blkfront.c:1115:3: note: previous statement is here
> >                 if (err)
> >                 ^
> >
> > This is because there is a space at the beginning of this line; remove
> > it so that the indentation is consistent according to the Linux kernel
> > coding style and clang no longer warns.
> >
> > While we are here, the previous line has some trailing whitespace; clean
> > that up as well.
> >
> > Fixes: c80a420995e7 ("xen-blkfront: handle Xen major numbers other than XENVBD")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/791
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  drivers/block/xen-blkfront.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/block/xen-blkfront.c b/drivers/block/xen-blkfront.c
> > index a74d03913822..c02be06c5299 100644
> > --- a/drivers/block/xen-blkfront.c
> > +++ b/drivers/block/xen-blkfront.c
> > @@ -1113,8 +1113,8 @@ static int xlvbd_alloc_gendisk(blkif_sector_t capacity,
> 
> While you're here, would you please also removing the single space
> before the labels in this function?
> 
> In vim:
> 
> /^ [a-zA-Z]
> 
> turns up 5 labels with this.

That should probably be a separate patch since there are only two labels
in the function I am touching here. I'll whip up a v2 if the maintainers
want it though or I'll just draft a separate patch when I am done
addressing all of the misleading indentation warnings.

Thanks for the reply!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209211447.GA43622%40ubuntu-m2-xlarge-x86.
