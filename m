Return-Path: <clang-built-linux+bncBDRZHGH43YJRBH7PUD7AKGQEJP2LPKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E482CCB4A
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:56:00 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id k4sf146401ual.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:55:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606956959; cv=pass;
        d=google.com; s=arc-20160816;
        b=pjMwsvWmL2wOVOojrMCrYVCdZDjmv56j2rgpN5RetWD2bwWrr2l3evjVUJNSxDTEhU
         xLzwmeR1XGp+H9FeFrbz0NA8EV9Bg7TQpWNPrP2hkciGqHCLw9B6E+Yxr1bTRuUeFlkN
         pmGWyAnHQkuLTUwGhyvPAThjeVeLieGKGasruCGzoSNE36hNvqJb4I1L2svfjG+LD+yR
         Zkho7/6/lQLT17Faq0wl15G5rz6TMNPL1rsLqYyZ39094eDdL332YA+b9dasLWVYlzEY
         B64aKsIVojkrQO4cx9DB7ryx+zNbvEAOEo9BC6IUx7Lrsx7IbtiujimV+21T+0eRUOzj
         o9Zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=WCFcwS/AFeaDETgBYUoW47hv9KAaEeSb+EOw0yBOWS8=;
        b=d+aCVR8b/x5zGm7gczANi0y4kMLx0mf3bidWy/+NDrtsFMjeUKV7exlCYxNXVTgPQL
         JjSxAE0vJYGtFBk+k2wngca4TGkGvlH1QAbz2jbXtqKqv88kC3efVruAd9jijcRxkIVs
         YmAURa3lym2DOTmuJ6xmgYOBsRdBFNlkSH9UkOxB7WtrhxMvTwWz7QV6bmzHzLwICnZj
         OasGiwRUSqR9JdoibNCmwWB/wIuLJwM++U3fV5laD0I118RUboFD6KOgdrXffyZDBDpq
         MsJGUxvkECwt1Z3XWosRPCilBuNe088jKYH2cdPilpVLF1dJeXBI9VsGAkRmigISiMbj
         /zKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ra2R6WxM;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WCFcwS/AFeaDETgBYUoW47hv9KAaEeSb+EOw0yBOWS8=;
        b=D1ZtuLkU5dloNOfD2N7UTkhx3nOE1OTFGdIFEUOCa1mHRI4RZykkrhwhm+t9ALhK0U
         T/tt8WSHT5UInVhJ+HOm9pYMijIlPki25hn5nDOtRL91hYEFbd6HflUF114G5mJpTaf2
         dyj7iT9T29g9iCXUcx1sV9VxlhtjGZ9UW1I2olV6yj4i9/QkGXP1c08EIBTIemAjO8rM
         SYA2E15hhC0AJg6A5kt9qNDy5LI6DwUihxuXrACmFRqDrhyaWUVPopg+hbkq4vDrGT1c
         LcJaZMZ2QDk5jbaNR2yL1kWoezqcXBtHnKN3l3e/rdbu6V9WJnpIb7f176o4eyRPL8Em
         9CGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WCFcwS/AFeaDETgBYUoW47hv9KAaEeSb+EOw0yBOWS8=;
        b=Bgx3Hs2+fNlsVw5iNJNNEYkIoTickQ5thPfa2VQFbh61eI1tZrtOZhyz10e/7nx0I2
         9iV21uI5Wj1piUALVjDYopROecrWVxUnGxHcYMvKm9ltounYWs3AA3zM72x82H5vyxeu
         5sJDxFwxwYziTnDmEZpEncgxwt/1o+8knodOFAr1hkDLMIezqSh3G1Siq+C+1sKsvQpy
         ozOY5mdCWbvAfURDVvaDXrh2tLBYmnNDDB3UsIbLZXacEz5mrHkgiftqbKcq7KmDZC89
         hYxHyp6SM6ElUNgiiLqF+fJFz1n56U7p7nsNisG4HINzJwg/fjcNNbXB/0TaomLPKXzb
         CI8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WCFcwS/AFeaDETgBYUoW47hv9KAaEeSb+EOw0yBOWS8=;
        b=P8mH82r4eoXNmsl3pq+BBZsFVJZwbVIrB/ES8xU9IsPf7Y5SAeAsHe8ZdTjKqzedxU
         1sjZULHbO1rNKufIZqNNkHjuECa1ccrOdCYJte6rJOrVvPjquip+t/Kk33ALA9iChpK/
         jByYgAMueBxPf/VboAJ2XR4G/Ef3dvvsVLNY9OxZRUGg/QJlrWRz2hsTOY02ESAx6u0v
         BKYzusIXQbPBxcNEDyyhNfhwEHhZoOybbGivfbbxdG3bqEuXvauEdBMaWsQnNA7+jCHN
         /OzCkXzc0o4HDOG/GEBqzGpHsiu57oi7wL56YqOV+2vs7SeJ2G0sc6vTLJ2qAubJaEpE
         FNZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530noLsieSXuHF1kScuHDUre04zrDAGCVNxgmr/F57IaNM0J0W97
	qdI9BnMQ9GLLKqb8t8TRpYw=
X-Google-Smtp-Source: ABdhPJy4+fjmGty5LE38TpW8k1Eq7DST75WadVHYSFR2r0wCUd0BfDh4kB0t+ueWfXEvEQcT1QfJQg==
X-Received: by 2002:a05:6122:123:: with SMTP id a3mr322765vko.25.1606956959143;
        Wed, 02 Dec 2020 16:55:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1ad5:: with SMTP id a204ls230477vka.6.gmail; Wed, 02 Dec
 2020 16:55:58 -0800 (PST)
X-Received: by 2002:a1f:5c4a:: with SMTP id q71mr409895vkb.1.1606956958740;
        Wed, 02 Dec 2020 16:55:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606956958; cv=none;
        d=google.com; s=arc-20160816;
        b=DYanVslZll95LjEtKwe3JXs2TpIh2l+D8JAJRqTmaJwPCwNk5EgV126qeelJOC1qwm
         cwJHvdfTBapw2QEOefFEEvMQdPgNgjRieRDeviYyuN+HpKk3gDhHxibmYc63POU/k82A
         8ZM9EId3enSWMI8Y+Se1/XZezOePfjrDIkVbqJOppmxifrnNBNJ/E3LrwOfyF2ZGsqSV
         9IdBFrGpqZsQUEyhrakxYFEnCHFvAo4EnSHtqKN8nr+qKcAZQmbEvzG/WbFqtlXvgV2j
         OlkYJmii2tzpVyGSl3BqBOocLaW/uWPDqSjXseYXRyu9X1QY3XHBNC3diCGkUJEBLb9/
         qyiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d2w7cLrrkzXX5HPjVxrGe1YEuI33kPqbbpjoI406Qpc=;
        b=eo3qyEJjSKUe76KoHJsAGi/VtzKLiXa7+jdnVldOoJeXPCGPIkCNb0KlCeRmP4GfoJ
         aQYzy4NKjfR5KpAAAQxdsLqset+Q8ZYkd9C7qVXZF904udCzoIrc0T1CAE8DqUTY/zj0
         lggJOKoTapM3Ufi7nfNVgb2TKDKwEZdTi0ekUoyaJ0SWBXZjra8aHuAablH1wC1dE7x1
         54ZM7xOVYPDwSQ9/m0lJUpf8pPH9B3b8eyqA+iD5de2SganN/sGfHCLdlPvEMAIUU0WL
         nOHO0fuOmlK3d+ZGZuWzPirbfbOEBSiw6qqgT8wmxn/ONswrKurQaMmZtXQHbYqVWqkF
         BQKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ra2R6WxM;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id k67si28413vkg.1.2020.12.02.16.55.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:55:58 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id t33so492727ybd.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:55:58 -0800 (PST)
X-Received: by 2002:a25:bcc7:: with SMTP id l7mr1157339ybm.115.1606956958481;
 Wed, 02 Dec 2020 16:55:58 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=xD3DQcrLC_YjRyLjJKPGTZj6mbVNBP788-KPTb-Jd2w@mail.gmail.com>
In-Reply-To: <CAKwvOd=xD3DQcrLC_YjRyLjJKPGTZj6mbVNBP788-KPTb-Jd2w@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 3 Dec 2020 01:55:47 +0100
Message-ID: <CANiq72mE24gXqmFbLVW4qRMT0qc_EoQChGHDguCD9pP2qJJwYg@mail.gmail.com>
Subject: Re: comic on automated style lint
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ra2R6WxM;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Dec 3, 2020 at 1:24 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Thought you might like this:
> https://mtlynch.io/code-review-love/verify-syntax.jpg

We can dream about running a formatting bot that half-jokingly blames
people over the LKML }:-)

> via: https://mtlynch.io/code-review-love/

It is a quite nice post, definitely written by someone that actually
values these things, which is always appreciated (not just the
formatting, but the other points, too!).

It helps with the scars I got from that one time I had to deal with
someone that wrote commit messages like "lalala" and "weeeeeee" in a
professional context... good times :-)

Thanks for the link!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mE24gXqmFbLVW4qRMT0qc_EoQChGHDguCD9pP2qJJwYg%40mail.gmail.com.
