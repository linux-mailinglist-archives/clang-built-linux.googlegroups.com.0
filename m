Return-Path: <clang-built-linux+bncBDRZHGH43YJRB2N6R36QKGQE6AX3SKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8F82A7784
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 07:44:59 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id f5sf758749pfa.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 22:44:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604558697; cv=pass;
        d=google.com; s=arc-20160816;
        b=mzwvazRxTisem4w8HzIENcuJeOUcjPg/6KLAmUlWoP+fCl79xAXX/JJzAzNkPyt5Vh
         GGC1THMP0ch3xN/ezv2weoOuH9R3D1vfMSRi+Ks8sTEr+uqFBkbzmyq+po2g5dBrACrf
         E7/vYyQQ7kKd9O0R31YuX+HFU4XLx7WzHg3Oi6lNs6IHZkxP0L52qZc8c0EmBWIvGCT5
         0wqQF5igmZInGL8mvap3wYFOrrMdKNHQMmrAAkQ2dy7VJR1HubL+WZx57JxXkjfpVib9
         wq8LfxkUhUh9+9YugxcO6Yf2iF2V3w2sSp7U9Zats0MDSwqiLr7u8Ptx2obHDyeVv20b
         fICg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0nP4XgPbSlVsbHePgN9GkW8aaGMqZphKPRIja96zNcQ=;
        b=nix20/5vPecSiZ8taMkoyMYzaTTXjhCmsjofd/GgWuwhjC1BQEkehH0iI0Y5RRerfy
         KTHOr9ZlmYIUnYd1Ah8zkAW5+xro3tRQFc/H+DFNXT5RQHadaf1WreXvDEOmD/PNPsAC
         bNcakfjlg00MYrUIxTVkjUoosNcKLW4OWoqjwTbaQhQmFwgpdkakLzCtsvOaHj+HWS1q
         uaW/drzhzGAK9GrIUny1iIHJnE52ztnCxKjoC0TrL3zE1dnD0iUWgCBbyzdGRDQgBkX8
         75T/G+sZ6qBKPPsZ3WImVb4S5H7fig6/qQtpWAJ6ykaUCQLSttfz2TYcgMFVcwYR2V7c
         bqZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NQPhG2YF;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0nP4XgPbSlVsbHePgN9GkW8aaGMqZphKPRIja96zNcQ=;
        b=ofl2wpmuY4f9kjWl4/q32irYSV8HrXmOxQKHea8ZNP/LBYHpmfBW1fJ9Po8YDRJuMx
         c24r/YHF/NtrppocdNEe/Hf4K2ZmPjw48FMi+9DWTxpjsp1+l0uCFvT+O3zHWAubCB9l
         TVn0hOHSgIRl3qxRK28WWW+SrGXskY+L0o2ouiaMCPLJz7jpbwNuFFEH54+XDMZBC/w2
         n/spKWTtv3vIGxvxHILWZwUQL5hAsUK1DWnB/eMwSokvNbUtkbSeRxv5+kOhOqA5Gz3m
         B7tZgTSv9AKRzjR3iwUBcJNxtzlU7wyIGsHibZhJaEha4BLBkhXT6OzD1OMS1VvrqRLF
         rXVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0nP4XgPbSlVsbHePgN9GkW8aaGMqZphKPRIja96zNcQ=;
        b=XTTI5NgSaMIi2tWwcfQo1nGl5niXVviPnpVd/6SPxd2STn07L8jcYZtZ028yTkax+9
         P7Owfk/2rVUYl5unLrekhRU6Z+55j9zdskADjeuEyl18apC4r9+fMhFCixDmOZWQvFeD
         XlJVp2quGrLb9QNd1KkJOjRh85nDN+EpeXRkEIbl3q08kGy5eeVDTaO5ly7tooMAK4aD
         pp97o3WIvlyFz/4U5gM6brtVVt06D86jlc1E//FWE9FHcMM12x9Rh228uSKYODs4qWSq
         YhtgJ+iL+5rWHhQteNLZzTcT5AnzlZ+ZAQ+TaJhrJMC1qOxV4ACOMkxgFhpNGAoTOIYy
         8UQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0nP4XgPbSlVsbHePgN9GkW8aaGMqZphKPRIja96zNcQ=;
        b=jY0vEwKdulQKDNwz6hh2spHWuxt8VZZSwGL073GgCUiTLNRjc00MLZ+aJnrsXMKNPo
         k1sW5lL/n/BE/ui84NIZapLF+j9DYSxciBblUum0e2xHTLbjWM0owluLoLg3Ey4WYkUt
         3J4QTjgMYJRed1u5EySW0zwO/TbEb7Te9PfKXvNj8TMcduKAbpp6Qz0Z8FKTp89rUnkG
         WwA/1eE0Og++NLHnSio9VIgwg+scs1aWz2sGcc9OP8px2lF5NySRqet9Cbwv5VCDkGZ8
         k9HwmNpCuMZsls+LoE5yYEcBoPXFOyNxc2FaAzF4c9V3looEWa+YPzYI//DwHzret9X0
         NcBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312Io3DOlp9P5grj3/3BDX8woVEDR2E91/G9Vmw3IncR8oZnbpC
	yICozDq4CkqISqpROiVER6E=
X-Google-Smtp-Source: ABdhPJzotWfInBIrSN3PJwXygf9ZNuo+AY+GfMklVm8lQZBqunGOO1L80wB/yK5wr9vxYD3oiB+pFg==
X-Received: by 2002:a63:d24a:: with SMTP id t10mr1147629pgi.344.1604558697648;
        Wed, 04 Nov 2020 22:44:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:784b:: with SMTP id t72ls401351pfc.1.gmail; Wed, 04 Nov
 2020 22:44:57 -0800 (PST)
X-Received: by 2002:aa7:9203:0:b029:159:ec45:f439 with SMTP id 3-20020aa792030000b0290159ec45f439mr1077303pfo.16.1604558697011;
        Wed, 04 Nov 2020 22:44:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604558697; cv=none;
        d=google.com; s=arc-20160816;
        b=d7exZs5cBbjtKP7xRk/zPztT30bSBo7CZYrFRqnwFyoh3R9OXqxNtjWCeW3ZJrWWXx
         Ue0cgU9B7brgu5d325izjDGid28Gl80yKpFk5Xa4+NwTj/4z9dW3jmoVaf6JJF/cW9Ks
         Qqoy7ZC3cVKUh24hrGuVI4x1fCfhV3Gti2xOhoXsm02cLHZe5eky0QDvcj4DWblx7+9g
         ULr34qcz/j2/3z/wVzbZHL8Sww2oCTUyH6wQjs8yzfHDumn5QiGqsAthFmRJDz8ZNTT4
         9sK7LZqlsDLQ92oTCRjRVcu3JiuAh4CiZxhWXrQbA8TJQDKVwjLjgF38aLHr+EmsPf5P
         18+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=P1AEyCMpZsd/QIquE6tYX9KtCaCr8gnLL3mOQrMAiXg=;
        b=JOBNPMKSE7cL5EIVuFHblxgL0egPf0S48Sg6/zBR1Dpl9v/yZdnPqX19+kmouSYOyT
         AZEVWcny2Nk3fCW6iZBtzFCYgJbFCv73KJxpSFp7neR3n7RN4T/NV0rNm7hscH6eLsRv
         sY8IoYza35F6oWx688LbA+9zLnwcU70SrtD9DVsjMwjobkAl7UwlrlOiQti/WkjKzdmS
         FOkaP3W5HJUlsZW9Noj4nCSEwZIw5hxxPvCOZc7JFthGb6Gb/xtL86HzW+16iwiO4wVs
         JkZfHwIjZM9gHKT9IAKVB8Be6sgl9EX9eEL2noxGo4SCZZxgBmqBclsbNosXyA9Cbmke
         67mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NQPhG2YF;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id d2si62281pfr.4.2020.11.04.22.44.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 22:44:57 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id n142so415025ybf.7
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 22:44:56 -0800 (PST)
X-Received: by 2002:a25:ae97:: with SMTP id b23mr1715434ybj.26.1604558696355;
 Wed, 04 Nov 2020 22:44:56 -0800 (PST)
MIME-Version: 1.0
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
 <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
 <CAKwvOdmnz-DJ-hG5FKJZYF7W-ujPrgfMkrb2hMLhmzhk8Hx6dA@mail.gmail.com>
 <ba3126e1424c578f5040c7a6f04cdd6a334b2db4.camel@perches.com> <CAKwvOdmoR9xph_TK5zaKdh1qHX4Sh9MW9xYcxLJf6wZfxSkv2Q@mail.gmail.com>
In-Reply-To: <CAKwvOdmoR9xph_TK5zaKdh1qHX4Sh9MW9xYcxLJf6wZfxSkv2Q@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 5 Nov 2020 07:44:45 +0100
Message-ID: <CANiq72m0Rwu78AVjt71Ym55E_xvk6SSC5ZpMoS+WEt=ri2MgNQ@mail.gmail.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Joe Perches <joe@perches.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NQPhG2YF;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Nov 5, 2020 at 1:35 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> I'll help you paint your bikeshed. Oh, but what color?  I see a red
> door, and I want it painted black.
>
> Sounds to me like Miguel could win over a critic by addressing some of
> your (quite valid) concerns. ;)

I am happy to take the patch, but we need to at least enable other
features that were added meanwhile -- that is the advantage of
increasing the minimum!

If someone wants to take a look (wink, wink -- Joe, you are very
experienced with all the different styles used around the kernel and
would be great to have you on board with clang-format), they can use
the following list for starters.

There are a few important new features:
  - AlignConsecutiveMacros is probably one of the biggest one for the
kernel that we were missing so far.
  - IndentPPDirectives and AlignEscapedNewlines would be very good to
use too -- but the kernel style is not consistent AFAIK, so we would
need to decide.

Then there are a few others that pertain to us too:
  - SpaceBeforeSquareBrackets
  - SpacesInConditionalStatement
  - SpaceAfterLogicalNot
  - SpaceInEmptyBlock
  - IndentGotoLabels

Others are also worth checking to see if we can take advantage of them:
  - IncludeBlocks (and configuring IncludeCategories etc.)
  - StatementMacros

Then there are others that are not related to us, but to be consistent
we would explicitly set them in the file. Finally, for extra points,
we could already document the new ones in LLVM 11 if any, for the
future, but that is optional.

If no one is up for the task, I will eventually do it... :-)

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m0Rwu78AVjt71Ym55E_xvk6SSC5ZpMoS%2BWEt%3Dri2MgNQ%40mail.gmail.com.
