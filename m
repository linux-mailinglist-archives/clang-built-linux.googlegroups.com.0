Return-Path: <clang-built-linux+bncBD2IBN4NQIERBKHG37WQKGQEQ5Y7SSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 1079BE82F1
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 09:07:05 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id bu23sf5346724edb.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 01:07:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572336424; cv=pass;
        d=google.com; s=arc-20160816;
        b=v91jzL4ckYpludRf6EW+uAtjAt72V1AS8MuNyf/BwzovQruYOyFZXhGO+a2Ilfih5P
         X0oUJ1HosZcUDomfWOAoGFCdto1M35LsicYXR87xpEe1wbsSgvqBRmsUj2zToJcoo+jq
         W3gjtqH15r6SyVkQ8UzwQlheZvAnPvgHrYFUaPMSKMBLqscyY1/GgXVuzn8JwCzGpbCO
         XLAQVKjm99JYnDoNQJgnWi4EzIil5w1apEWGC1HgnB7+Xo5Rw9834aPiFXYxwhiDqkdC
         6tRYD+pZBYgAURCVZombqJLLe6o/egPyFy69DTCe4S8zhoDCnG1sqLNHgKLsVcWPJCOY
         LsVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=h3Pc4Gc4Uad5CPhNy9h6t0OidLKCyYwyBO/n175a/lk=;
        b=Om3LBhZdX18IKYeP279MVZcWUMuHjqMXMAC3T0wOIIe4/RcxAVVsbPyDy5/XygpiF0
         JPJ2fOY9CysKvW0ygHBvCorOTtMozqtyQpH7fqqcaxqBW7foDMHbNxtIXfp0HbFRxYrt
         McYQwAUEdts8V7w4lXbBddfU9ze2mNFoIrStRWLrEmDKPgXHyrmpPQQj7IDsNjH02JaU
         X76nHPaBgIDNqFz1jpAMwyL0G6gA4dxBptVNxpd+9p1xYTjh4QLcjho8+VHKYJt58h3g
         UQMWf3gV0zD8Zti2ct/IpC/fts9GwqtfYw1ejoFzQa1EGJtpyevUhHCfAZr1w35+7Art
         zZ5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sqhQDfcD;
       spf=pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h3Pc4Gc4Uad5CPhNy9h6t0OidLKCyYwyBO/n175a/lk=;
        b=Ycg1GtD8CP4oNQzTfpyGiYaDv/pdS5eWFLFpEBap4ESH7/Wdft0ZWzYIBOiNHo1CzQ
         uQ8coY/3ngcij2/ssm8cIDIQtEpx9fn+1zKi/d8/SbCYGCV6kzJbtaJa3s4gT032vd2r
         h0FpWDDfTiClCXVWBFNK2Doi0HaNoV9a86+tsro7RMN2h5BtAVTWbRUjL3zWLjg3hOwt
         /3XVvcOU/YwZelXkAjjN76z17IQdbc2FANykLQqLEzJJX/05jJUvaydjldE/GVKcF/PK
         HS4Tq3F52rIsczlvUSWpPIwQ+vDw4g90bmm9fVN+o17wjAXBrWjGk4O1ampVnCbKjU5E
         o5Mg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h3Pc4Gc4Uad5CPhNy9h6t0OidLKCyYwyBO/n175a/lk=;
        b=eOrm7c6CKAoVn2Zo1PYEiNGMwnImhgDviUnIi/iIOwmL6fGu52UKF1MbpnB4ZAA2Xz
         SNxQzS/Q840PdTySMKx1fYUYn0/Z10LRtX9GqeSNeKF4Gl16ZZ/lHHdg/vHfFE15G82L
         +KbkOkxk4R/BYP66KBLCJr9s/KE/kvtcnYfItC2gjk4fRFTpr1n3g6wisuOIJynxS3h/
         YHjf8nAU2adRmDiuKNK3a+ZIxTkdZCFK57b377LuZ711cVuiABi2PZOL90QJLhaRbB2V
         aesCZh4ZEgcZ/abSEmnO6uClHbRw7vWHCaDp9ApMcfGj2Iqw39yIX+HBKQNiCb8RtEcC
         p9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h3Pc4Gc4Uad5CPhNy9h6t0OidLKCyYwyBO/n175a/lk=;
        b=JbRqCXokNXAhXTrQVVeL7vHUs2MSbgnD3VRlHtijzJdgLP68jD2zi6GbddcgyiK9xM
         cIa4apvL/q689XI4mDpvOaCr4VOHZYP3qSFndylD7PWZKai5BYAugHBf/PNzn/zAR0u+
         ZDxYhUN+vEygG3/11M8e3DNCrFYNEOUGgTuA0u9sUm89ca0PgXxTcUdsfw2Z/kDqLVGS
         W82gSWeTw9X0WCJbCi+oU//ANW+xmVTDqN7ipDIPW2PUeAhkbiSpmiTl/lCu5XB2PGU2
         MwDHvKZuVrzG9ZPsL1uaaDqd3oyc68PR99AHv8l8rIAqhTxDyQwJhwhxEo31qfwpZhAS
         8k+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWiyMHdPr0HnoIIpIVunbUeCx/d6kWOfscFVaCaYURvEBxKLXS+
	f8nKCchZ879p0/FMIlwYGE0=
X-Google-Smtp-Source: APXvYqxsKFW+7wi7GzySiNXF6DGEdGZ/AvTRGwDJWYdOWH4qmHRtU9t6AouKmmCdr4Kc0q7hWamOEA==
X-Received: by 2002:aa7:c48c:: with SMTP id m12mr24583269edq.152.1572336424773;
        Tue, 29 Oct 2019 01:07:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:cd10:: with SMTP id b16ls144555edw.1.gmail; Tue, 29 Oct
 2019 01:07:04 -0700 (PDT)
X-Received: by 2002:a50:ec0e:: with SMTP id g14mr24296837edr.274.1572336424200;
        Tue, 29 Oct 2019 01:07:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572336424; cv=none;
        d=google.com; s=arc-20160816;
        b=lg3cn7JT4NSWUnqwvwx7/WQml573F1cg1tYCoCFfJl5paCEdsftg14apsxBEjVdq3i
         QXMbg0ShNJvr/cqRFqcyOGGncfGZoZFMRkpzfl+QHlBowV2FS/SjdRZT/NZtoMxyRd9x
         dY09AoNNYBUNkhvGSqGfaOojjIjwv38SJ+P1lzWK5UoLCFx+4UpGhPseIZa/69lm0clm
         D3LyTm0yG7j2nH9qlRTH1Oe1Uns37NpH65NrlHY9w98YmEbubQZJcrVDqpU9OY2laXtd
         NDfKjhAJ8mMMh2oYbSqCH2+oDmcdmg+449S2bX1sI9So8lJFVdaCoDtmIbOcQpVm2sxT
         3erQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GfXU1iwRgOcekEGBFraoPf4Q3S7itjMXcEa/+TYa5iQ=;
        b=dc2ZYXKSupYP/ZGByV6u7mCW1/IKW6jHqdNvjidhcrgGcE3JvxNKKVU4H52/1uhBrg
         SmMwPvm2qYPvxMy9zNQxuwVbPXONwGwKAqiDIUVQav65T5njyS+gArq4OhvT2DnYqx68
         8yYGg/gvrAXEwcUE/j735YWtXjBCIr18sTiYzY8f0RUAllg/iIToqx4x0hgV9B9M4CxC
         CNM9LKldtzw1ePTCbyZFWE0nqq9siGhk23CqQK+6U55ZhOG4MWmcP6sjw8qf/yqgoHsh
         +TUU+8fPyzLBsMWC76RjnBwL+azJGfEas2cm1x8Dw77sVcUQ3EeFTSauoJZVia9K/K6q
         3Yvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sqhQDfcD;
       spf=pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v57si847368edc.3.2019.10.29.01.07.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 01:07:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id l10so12532937wrb.2
        for <clang-built-linux@googlegroups.com>; Tue, 29 Oct 2019 01:07:04 -0700 (PDT)
X-Received: by 2002:a5d:4047:: with SMTP id w7mr18366744wrp.270.1572336423968;
        Tue, 29 Oct 2019 01:07:03 -0700 (PDT)
Received: from ltop.local ([2a02:a03f:40ac:ce00:c1a7:4ac0:2d11:a4f8])
        by smtp.gmail.com with ESMTPSA id o15sm13468325wrv.76.2019.10.29.01.07.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 01:07:03 -0700 (PDT)
Date: Tue, 29 Oct 2019 09:07:01 +0100
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Ramsay Jones <ramsay@ramsayjones.plus.com>
Cc: Joe Perches <joe@perches.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linux-sparse@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
Message-ID: <20191029080701.qpvscbz3xptadhbd@ltop.local>
References: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
 <CANiq72=B6XKwfkC9L4=+OxWtjxCp-94TWRG1a=pC=y636gzckA@mail.gmail.com>
 <19fd23e98bab65a1ee624445193bd2ed86108881.camel@perches.com>
 <20191028221523.vlzdk6dkcglxei6v@desk.local>
 <00c5ef125a4e62f538de7ddddc9d8fe7085794a3.camel@perches.com>
 <20191028230349.xlhm42ripxktx43y@desk.local>
 <61eb73ad-5c30-0005-5031-6584df72ad5f@ramsayjones.plus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <61eb73ad-5c30-0005-5031-6584df72ad5f@ramsayjones.plus.com>
User-Agent: NeoMutt/20180716
X-Original-Sender: luc.vanoostenryck@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sqhQDfcD;       spf=pass
 (google.com: domain of luc.vanoostenryck@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
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

On Tue, Oct 29, 2019 at 02:38:54AM +0000, Ramsay Jones wrote:
> On 28/10/2019 23:03, Luc Van Oostenryck wrote:
> > diff --git a/parse.c b/parse.c
> > index 4464e2667..4b0a1566c 100644
> > --- a/parse.c
> > +++ b/parse.c
> > @@ -345,6 +345,7 @@ static struct symbol_op goto_op = {
> >  
> >  static struct symbol_op __context___op = {
> >  	.statement = parse_context_statement,
> > +	.attribute = attribute_context,
> 
> Hmm, so why is do we have a context_op and a __context___op?
> 
> >  };
> >  
> >  static struct symbol_op range_op = {
> > @@ -537,6 +538,7 @@ static struct init_keyword {
> >  	{ "while",	NS_KEYWORD, .op = &while_op },
> >  	{ "do",		NS_KEYWORD, .op = &do_op },
> >  	{ "goto",	NS_KEYWORD, .op = &goto_op },
> > +	{ "context",	NS_KEYWORD, .op = &context_op },
> >  	{ "__context__",NS_KEYWORD, .op = &__context___op },
> 
> So, can '__context__' be used in a statement, as well as an
> attribute, while 'context' can only be used in an attribute?

Yes, indeed.
'__context__' was only parsed as a statement and 'context'
only as an attribute. But now we also want to be able to use
'__context__' as an attribute (because 'context' is not a
reserved keyword and can thus be a used defined macro).

There is no reason, though, we should now also want to use
'context' as a statement since it's a sparse extension. Hence
adding attribute_context to '__context___op' and keeping
'context_op' as such (but moving them together).

-- Luc

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191029080701.qpvscbz3xptadhbd%40ltop.local.
