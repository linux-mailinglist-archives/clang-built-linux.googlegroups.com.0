Return-Path: <clang-built-linux+bncBDRZHGH43YJRBBMDRD3QKGQE2ZK5IFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 188831F654E
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 12:03:50 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id h6sf2387785wrx.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 03:03:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591869829; cv=pass;
        d=google.com; s=arc-20160816;
        b=CjMuoRTi90yCLaT6LPWU+rBtjkDOXPXgYgtpy8mkvKTWsKOTKEvi0+9JyAFEwO+w3D
         +adVkBgOERIkjw3J7WW1vSRtUsxOmo3xDZUh6Q1sTboT6r+eodisnryOHegMumqvDVgv
         I7TVkPiRjxEUiOuML5dirGqXfymH2aEouxmIubeAhTAdGPEXyc9+MbG2LBp6zOrvEX7M
         xGQ2QoQKYUqqtFsaCMdkeR458bf5h0BhuCckveXo3qrRamjMu//cD06m28+9d48voYb+
         BoWXkzSHY+zeF/9iYq9zlexgQBYWp9ApH+e0Z2N0wlKTijMr3OAasfBANjIO5U6iz1vS
         0Qvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=UjjThiudzqkzrcc6K7APxtjPd9+NoJ+NUcVB1ynDI+k=;
        b=RbiNMNaR8Bvebd5vffXNHTdtYeqoiKVJV1QxLtNE/k80Dp9ClIX8j9wo9r91RkJlqi
         lV0xNFAKGPOAQDQ4oSpZD782aQM/u2rnK+8yang0scSpEdtJqG4qRrBbstI/6kIgFokr
         fQdwKa5sn3g/5zfIeBpbE17RbnVZXDw3Zy27fpFEciq0m8Uwp+lQhssRw8GLzGKj9rkG
         wy/8+MppxutefTndSJoTipR+MMeTmgv4947GALUyCAfdxURN2PvU9RLlOXUI3BsfL0i8
         5fiqWVLKME/54uJosaLaOunYUbF5azZUUvFUU7URpT3NxdRnT8eZHZzMZZS8pyj7AgE7
         kM6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pu5XSuYG;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UjjThiudzqkzrcc6K7APxtjPd9+NoJ+NUcVB1ynDI+k=;
        b=h2s4sCJZY2D6rgyDMb/AYK+632KQHAQjVccvILgOJDaarSG9jgvxMK3GGJHb0yoltF
         1CQswYk6Ees4clpPnwzPr4XvLEopZI4DVArNK9nHA+snprNr9Wnzfja1DCnHJBxC+lys
         DfZFc2DrUe2s+KAOSHSHrVTEnoMQu/DFSrMk/sGAS5sD2dPDPHFrReUmoPdIGydpLf85
         47QfpMUDuSMjpFZ4R+OkAr0Nlgv04zphgS83/qhFrf1ZUkWtKFM/msiMhjcNdziYkPet
         GI2lnlNBwk+XHFmE6onFL5BdGULi+bEfcTAPiOkRGeZnUdmgOewAOfDZnzyrW+zUp5a3
         JuIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UjjThiudzqkzrcc6K7APxtjPd9+NoJ+NUcVB1ynDI+k=;
        b=l9YCbKXIUNdYomDHyuCdcBfECxw+gkM3TieQApwzF4WfEk1hE22Mf30WNXgp6oS4v6
         vA25IkoMfM8HPCliNImFBMVh4/fSGVqrLEquCWkVN2/j0YSOXvHUCXE5toWg9MV5a5T3
         +HQs+XuNqiu9ETVTBEV97bc7EDofixzFsZPd8vqzczNBlgswH+wqKBPJHFnMrPj2UpIr
         ARH4BKxLpv/09tZQUyN300TGNMlIU6NJZN3kBplxxwlmvr/aOni8pSils31rzwX77ZEH
         TZDGOsBq827sFTpGQw75DMmElB8SOZdE8zkM+Ml3U70Lesv0M8DT4o2XpmM8+IR1M6NJ
         HcHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UjjThiudzqkzrcc6K7APxtjPd9+NoJ+NUcVB1ynDI+k=;
        b=qY7F0k+v6Cm0COy8AMG6P4rUwA6yW/o2AFiy3rgIy2ZJoQwt+Kds8pJHALdcQPOGQK
         H+osfOLdf4pbxt0z5PPMXNekYYkcuOYDPpBN7Zw7Vb/9Dje/k3bcuAseZqhluIVLQ10T
         wnb/TQZHHaIn7SUq04DTNXHMpoSwJj0+mwypHlEkjHt8ajRxbFnyrMXcJyOQ56Asjcv1
         cKN8eQQcrVLNMxryNfrgny8g9wNBQbUxDrPIaVftKpNMFnYBu8gc+YBRkiFvBztW/ClX
         qKqcsITj1i9V/8tlljvZupFMV05dqJdIemWoCq677XtMTMUR32kdozQfeudZRVHIrqBu
         2qqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533beewrsKxDeSWIMnz/C0Z0/VPaDAACjmZurWS3ZXfyQZPVLCOv
	DQaAOeOaqJgx8vS3o8ytLvE=
X-Google-Smtp-Source: ABdhPJxcOzmgupDsiMKOlQA2ml7Pk74wUN6jMbiFSzqssY4GfMaLBJZd5sezYfVjI+YcVazmRG4pCw==
X-Received: by 2002:adf:8b55:: with SMTP id v21mr9052895wra.187.1591869829820;
        Thu, 11 Jun 2020 03:03:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ce:: with SMTP id 72ls1883780wrc.1.gmail; Thu, 11 Jun
 2020 03:03:49 -0700 (PDT)
X-Received: by 2002:a05:6000:108d:: with SMTP id y13mr9199081wrw.180.1591869829219;
        Thu, 11 Jun 2020 03:03:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591869829; cv=none;
        d=google.com; s=arc-20160816;
        b=lrqekGiMuRsShxZwuRIu7WpaPRAMfS7CAiTcVP472yIxr8vWSFRu7PfuyUTe37IhuQ
         q/f59divVofwAeinYjvK38xoRkVd3x1mD1JIvV/KnXZZcttzOjdZAAmrIC250jEjZi15
         lcfJFUhzLh5g5ZGcz+6KVq/jG53S64vZ4J42mNCt0GlBObk/abgZbUuoAmvae/9PwRrw
         iMn+qjBKWC2bWCrPk/oK9NsDe3/KZi5xqGQ9/PGmE4rr/eyHJcGRDWlxPKpMeAb9qyHh
         Bd/wWe9BTFS6WKpapc7YeC36/0L1wbJ8moCRQPcgalIoyd9fhJNU78/Fk+ltk5WA5lg6
         fqZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lHhqWIhIvM5lpxlrnRwzqP1uWQ2HNKwGR0MaTt6bLRw=;
        b=ZimUulrfpSx5cSO/AUaSOyhD7EGeTpEUYsxhXWuex37gkLOk5T7bnDaCA8093qtm9i
         l7cDqCZfLcxTKkUqgc7TyqXG4x9SdW001S4IqHhk4vN36/Vb5SwPQliENFKjPAB/JNd4
         3TMG11Pp2qA5yXzSFP/FoQxzaTDr3QkTICjfe9a5sSsoeFe6fQfJsP1pl8ehgAQspmll
         ws61BrWBUX++daGcaR6DzUDm9FHdCX9cNqVNaOGXm8n8DeSOP/yJHFdKdEWB4UNG7nKx
         AV7NhayJZcWa+9RHK4yEkMiPkQt64QZ+RIjW8/rbCkpsKBossZawFS6iBUfRpgIhNs9k
         WRWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pu5XSuYG;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id l4si172586wrc.0.2020.06.11.03.03.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 03:03:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id c12so3161153lfc.10
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 03:03:49 -0700 (PDT)
X-Received: by 2002:a19:641b:: with SMTP id y27mr3656360lfb.74.1591869828725;
 Thu, 11 Jun 2020 03:03:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200610125147.2782142-1-christian.brauner@ubuntu.com> <c8851256aa453461481233e8a7fea878f9580c5b.camel@perches.com>
In-Reply-To: <c8851256aa453461481233e8a7fea878f9580c5b.camel@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 11 Jun 2020 12:03:37 +0200
Message-ID: <CANiq72=BbGqXmiG8+1QuJnLXMTwNjUg9WuWR9eJcLMHZ=k5hQw@mail.gmail.com>
Subject: Re: [PATCH] .clang-format: update column limit
To: Joe Perches <joe@perches.com>
Cc: Christian Brauner <christian.brauner@ubuntu.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Pu5XSuYG;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

Hi Joe,

On Wed, Jun 10, 2020 at 7:13 PM Joe Perches <joe@perches.com> wrote:
>
> Ii think this is a not a good change.
>
> If you read the commit log you provided, it ways
> "staying withing 80 columns is certainly still _preferred_"

Yes, but the related email discussions were not about establishing a
new hard limit, but about avoiding such hard limits for
historical/technical reasons.

> With this change, clang would _always_ wrap to 100 columns.

That is true, but it means clang-format will start splitting lines in
weird ways because it has to work with whatever the code is without
changes. If a programmer sees that the lines are too long after
applying the formatter, then it is a strong hint the code needs to be
rearranged somehow (e.g. creating intermediate results).

Hence keeping the limit at 80 means we will get strange arrangements
which could have fit in 100 just fine. In fact, I would argue a
*wider* limit is better for an automatic formatter, e.g. 120. Even
more so considering clang-format is not responsible for the final
formatting -- at least not yet :-) -- the developer is.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DBbGqXmiG8%2B1QuJnLXMTwNjUg9WuWR9eJcLMHZ%3Dk5hQw%40mail.gmail.com.
