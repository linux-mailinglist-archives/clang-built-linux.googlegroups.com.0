Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX6GYPUQKGQEVG5ITCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A27A46D661
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 23:23:44 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id q16sf16004070otn.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 14:23:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563485023; cv=pass;
        d=google.com; s=arc-20160816;
        b=gF8Y/gDFDyVb0RbMDn93Uq433ZY10NxB/4idmBkBaZ1yeuJktmGaG/mtJMzG4dO3ky
         L6AAyI1+HQNhcIWmRiV0QmdtGKxu6HMoznTZjKQyKvvbxxPZ5XoQecsuaTLjW2ZXmmKs
         qikfSNxf8ZReFBKa9HPbB/gqSGzDsZvbmn5CTjtdm/+6OYH7bH25ZkkImILv9dmpEe38
         /0wl71AYH3aV4JXntXDIpJz55aGa+HGObMv0sFBxxZegEkTsjT+OMLNX+AU3doDDHblu
         i3LMaHx/Mp9BQMhTGw++kGc9md9nMPoXtfASahNZFg1LqbugbTaNaSfFbCOOJndr+hc6
         YhbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YKDXwkxZ89/BKPgJ7cFQ1maKUXL2dBiLXH+oks2yZ4k=;
        b=cFmGCfGdckJlzaUq5VshIRE40reWmIOfYBEna6y5sQQSe+FAguBtyzPWKRmcX90otk
         G7RS7W4YbKRZatLBDZwBs6dnb/1ztSb2aoskkKwWlXMmrgMF18n1Dl5oNNqKopEOKx6Y
         n+JhTCf84COPoXX8XmDdBQwc10eAScJ7fi5+WmXs+yCPx1wevFVtl3emobq5q8CTNBWb
         SRMG2MtD0fvCu+yzXBo9UsNuwYDrHu/5ZN33wk+D9G7RB5cfhBPof1Bi6Rqv2i5ziZxM
         oIE2zGeMHWmKULIY8u5N6s+px72bvIFdop++B9mhOuNhipIVCHMFIFvciQxVQRahJNAG
         8/Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="A/Jgq0UA";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YKDXwkxZ89/BKPgJ7cFQ1maKUXL2dBiLXH+oks2yZ4k=;
        b=fPUvVM04thl6tjh2EkWDEceJKWmHr31CwONGYeEpEY3viZl55PajCSS0YlQSwFggYZ
         9UzYlSBvyZlEGQMKj6m4tIADv8+uLZjYGbfdsFLu+7xwdD78Q94nHaFus/50ZvpAIjNS
         DEXH3++qhLOfrXQLi5yIDlmX/+R6LZTc+1/OH/ISlwIrDG08ABOyN1KJ3CQjcMBcuycX
         hxUHPHaAXtbG8a1SRef5JWk8PQrVmNiHfXLTTZ9epuNC7jfSwrn75Nu1dsKWD35QGbMF
         /vr7u/7/N/arj8kCHf6/idMVCGzxKyQIJ3xnAEqzEyOFIUWXo8+5FpSsO80BFoDSjCiU
         7oMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YKDXwkxZ89/BKPgJ7cFQ1maKUXL2dBiLXH+oks2yZ4k=;
        b=gJ4VORyOtuZj1sv7M7nwEVDpNSr5MlR2vZfxCHAEdC7bZyZrJLJ4iFpmnn1SHOxB2g
         gYKYDoMWQgBiDQ2kbs39T7/i1hTxDxNw9+DnwO96XmTLG5vZ+nAb+hr371bggJud9PLG
         I5sJ90P53RLyv0LwP1TvIu0u5b31SkYv/5jb1qTsPD69toX6TxwtOblh84gOaahn4gtg
         4EYBz2vU8D5QXa1wiTyzHVitpVBfiby+h+QyrODBfc0wP07FMbqimViVEasbh6nqr8qn
         Z1ZMRbMqD2NbUlYTIS2FNT0D5bb+MqW6xWDMXz5eDvsDaaj/lU+/5t8GxqY4CpINkAlS
         MAaA==
X-Gm-Message-State: APjAAAV8RMp5dGwhZNOKeYP7kHsEIxcg0mGRZLJxcbyMdOjEPtHzqz5J
	QHt8DXatNBYqN9Oy811yol4=
X-Google-Smtp-Source: APXvYqxGuXz6ZzMG7oDMD5uvYP7SqCnIp1wuAOjKEkhsBiXeGRZQknudt+tMj4eUExh17ILBCtej6g==
X-Received: by 2002:a9d:7d02:: with SMTP id v2mr27537426otn.112.1563485023338;
        Thu, 18 Jul 2019 14:23:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:afd2:: with SMTP id y201ls3846039oie.7.gmail; Thu, 18
 Jul 2019 14:23:42 -0700 (PDT)
X-Received: by 2002:aca:cc8e:: with SMTP id c136mr25430122oig.18.1563485022316;
        Thu, 18 Jul 2019 14:23:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563485022; cv=none;
        d=google.com; s=arc-20160816;
        b=nnkQhWkoRzhBI09tgaTCNkPGQjxXUHmcIE/bvmxhHk4S5Jg8t36UMauZaPrSg5QpJh
         jFl5iS9OfTlMobVjfKX4jri9H/DRdCJNhqliJgqROB6sDmA8QVr7MjqU/sjAg9gPY66+
         4oYEpYc+1FJezTnp+vnPaVTQ8GdnTF1Xc0dYemEEdDJHx6FonCAxmcDdzNFYs0dmNo3M
         ulZ0WhA8Ge7HoL7Wc4Yo/GNTjcE0PW5J8kv2EiAZrNtzHmAz2e0YJ79Wt3J8mzemKvwT
         1eK9foXKW4d+LS1LC8DDbjsB+DiDBD3FLkxucev84cZQzkCXvBR7IGO/ronLdGwiEB6O
         WfrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qMusGExo/4n7tjYsdiRBxr2+eOsOxIvhg6GNsS6h/VU=;
        b=oXc8HhXaVu4wooIs/RMLzQZCzzATPX/G8UIJxoOKWo9djXSJlVG3lC8z3xjv6QLHHQ
         3Cv5qTJT19U5WNGweXQ7nq2z8A6MvXqpdbAwWK6BM8D9fdDHsx3ZCzPEFvRdUCP0SsTo
         5I6bsaqeOOdxcgVLO9vbxSslpFvXjTWXo6FiZmZyxz87sn+m+fiXP9EsN2pFVLFlnRiY
         K7SKoPCfjsT4GansMhHtoB9SwF3vGWxH68OwCBgI6PJSqMg5zhi3oxUyuIvuN8FmTiEv
         O7WyK4b6krAgxk+zZBP7QgjQl/1fEmPNiaX5Ik2BSMp4z6op+cMyigfRJgdAW52Oz9+L
         eqiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="A/Jgq0UA";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id b17si1451221oie.4.2019.07.18.14.23.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 14:23:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id u17so13451608pgi.6
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 14:23:42 -0700 (PDT)
X-Received: by 2002:a63:2cd1:: with SMTP id s200mr46339342pgs.10.1563485021175;
 Thu, 18 Jul 2019 14:23:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190718141652.3323402-1-arnd@arndb.de>
In-Reply-To: <20190718141652.3323402-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 18 Jul 2019 14:23:30 -0700
Message-ID: <CAKwvOdnEnsVOu+kJUF8=pppAZ7=nSBe6a-nZdnChH_YmhA-jcg@mail.gmail.com>
Subject: Re: [PATCH] media: vivid: work around high stack usage with clang
To: Arnd Bergmann <arnd@arndb.de>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Johan Korsnes <johan.korsnes@gmail.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	Gabriel Francisco Mandaji <gfmandaji@gmail.com>, linux-media@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="A/Jgq0UA";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Thu, Jul 18, 2019 at 7:16 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Building a KASAN-enabled kernel with clang ends up in a case where too
> much is inlined into vivid_thread_vid_cap() and the stack usage grows
> a lot, possibly when the register allocation fails to produce efficient
> code and spills a lot of temporaries to the stack. This uses more
> than twice the amount of stack than the sum of the individual functions
> when they are not inlined:
>
> drivers/media/platform/vivid/vivid-kthread-cap.c:766:12: error: stack frame size of 2208 bytes in function 'vivid_thread_vid_cap' [-Werror,-Wframe-larger-than=]
>
> Marking two of the key functions in here as 'noinline_for_stack' avoids
> the pathological case in clang without any apparent downside for gcc.

Thanks for the patch, should be one less warning for CI.
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> Not sure how much effort we want to put into fixing clang to not
> get into this case. I could open an llvm bug report if something
> thinks this has a chance of getting fixed there.
> ---
>  drivers/media/platform/vivid/vivid-kthread-cap.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/media/platform/vivid/vivid-kthread-cap.c b/drivers/media/platform/vivid/vivid-kthread-cap.c
> index 6cf495a7d5cc..4f94897e6303 100644
> --- a/drivers/media/platform/vivid/vivid-kthread-cap.c
> +++ b/drivers/media/platform/vivid/vivid-kthread-cap.c
> @@ -232,8 +232,8 @@ static void *plane_vaddr(struct tpg_data *tpg, struct vivid_buffer *buf,
>         return vbuf;
>  }
>
> -static int vivid_copy_buffer(struct vivid_dev *dev, unsigned p, u8 *vcapbuf,
> -               struct vivid_buffer *vid_cap_buf)
> +static noinline_for_stack int vivid_copy_buffer(struct vivid_dev *dev, unsigned p,
> +               u8 *vcapbuf, struct vivid_buffer *vid_cap_buf)
>  {
>         bool blank = dev->must_blank[vid_cap_buf->vb.vb2_buf.index];
>         struct tpg_data *tpg = &dev->tpg;
> @@ -670,7 +670,8 @@ static void vivid_cap_update_frame_period(struct vivid_dev *dev)
>         dev->cap_frame_period = f_period;
>  }
>
> -static void vivid_thread_vid_cap_tick(struct vivid_dev *dev, int dropped_bufs)
> +static noinline_for_stack void vivid_thread_vid_cap_tick(struct vivid_dev *dev,
> +                                                        int dropped_bufs)
>  {
>         struct vivid_buffer *vid_cap_buf = NULL;
>         struct vivid_buffer *vbi_cap_buf = NULL;
> --
> 2.20.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190718141652.3323402-1-arnd%40arndb.de.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnEnsVOu%2BkJUF8%3DpppAZ7%3DnSBe6a-nZdnChH_YmhA-jcg%40mail.gmail.com.
