Return-Path: <clang-built-linux+bncBCQ2RKHTQ4IRBPPL3TUQKGQEE2S3PVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5D371CE9
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 18:28:46 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id a11sf11617376vso.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 09:28:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563899325; cv=pass;
        d=google.com; s=arc-20160816;
        b=CCryIgeoeuilP02vjsv2SuyO/lbMykO4x2NKWBOfYUlCel5IFvg15u+YPYbqtP4AcX
         DuIQPN6YtV3x7+MAcBz0Ir1780gNsrCDfYsMJA/m9TenWW1zcYqf3MZt/2G4nNcUta21
         My9s1YN9S8cp+1ExiQUdZuOYn8uwBb8O9y2y96B2/dij3BzT7vIIxzb3MGQWACrFo/A0
         OP0DLkQO2wiZrpi06G5Gk3OpOhE6BMc/liqqCVPb0/QeWC67a5XfW6teTsCWlw0nMdNH
         ItqRWEK5GEQ8PyjKzH5vBSveekXHAigb7mYZGuPx8INBfCKcWDZTh/3nOPKr3g8dyr5E
         j6eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Y3KQy0HHcnYhiGO4xwEchv9oLXXpzVztN7Oev/pW0e8=;
        b=R+6J+KSub6t46xGexSprn7q/bLRJiVldNX92XhHNHnv3wYez/e6+UiOanOqVFP52C0
         sXpUxxCNWFXsQtfMvN2M2HeU1fi9yun/T9mZwztjLugZTPUtbpdl3+Iw9NIWAbAHefv7
         0fRFxjKQBXQyF3cMIEkZX8zPDyiuo2iDrDLu3V0dP5Ni1xjORW6zm5dJUlVreVG21duu
         OmtATuQltGMs9NnGzaFQp11k17Zct/5NmwBz2IE3+9dzAy5zJowph3EAR26oc6oFMc2O
         sTSCu+8Wg+ZtAsKdB/sDA/ZQY31u7GUYKN/jgIHZpkaIn/zEc2sfZSby9uH026ipDlH+
         v+lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@utam0k-jp.20150623.gappssmtp.com header.s=20150623 header.b=Vjo+ESpz;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of k0ma@utam0k.jp) smtp.mailfrom=k0ma@utam0k.jp
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y3KQy0HHcnYhiGO4xwEchv9oLXXpzVztN7Oev/pW0e8=;
        b=Mu7SE9ckdxYsMyeQFQswGkjRblFSZv9I/40xee8hq2LmXeiI8O1VH8tuJJPxDDBoNY
         NPqTFbomsFpXbQn9jWLEFiBorHaGPI1XlkQZc3ffJltfyPuO1U/bP+Xl7LckXC4PrKQo
         gHItR7ZaoGZu9tq6Tppn8tbOFA3XnfxaNkP3WNy3KHRAnw4kNeQjs+dYoXwxW+RXfM9X
         zwHPEXZPvvhX2fdrLiXul2Chc6ZfVU98J8Ne1A0H9IS2V5fdl/bWAozwv7MD6RbGiY18
         5IwOCjDKGoownxvP0PI/gxGsZaZt0vuMFgxM1Vo2ut/jPYUsqMTmq2hCpQBiM6cjuBww
         a8dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y3KQy0HHcnYhiGO4xwEchv9oLXXpzVztN7Oev/pW0e8=;
        b=uHdSSR6TTJK6Vr82EGbQhNd3o6jTlcWu5i3RPjsz3HdhnYlXw2e0H6UegQ1ZVM7y/x
         Hy04WlEgXJzm8L7+ibp+wvoJHkv0fVIJkpycWs4Y7AO9Q6/nXh7Cwl5zaYs7b/B5+MoN
         lcZzVJAJ6URvy27G9nz9bcks5LIFKAmXQV3TiRdjohiDyEVBa728G3IGHKXBqGebXU25
         pOrmtS9lfKL2v7UlTrI534ZUXMZSHDufCXAA6efzWVWMYRfc/R1icVKAPpGoeo4ZVBJg
         3j7VyD1dUcrVAN0J1OJGFWvEc8TWupoWKrQLjWgbHZ2gcUy7yy1r4JZj8GCiJ4BMWnG+
         XnNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX5oWmGrMCa/9k15AC5EXKMwbILe9JHlGrgiKmt263V87RYrVXJ
	WXkeX0J3GNDTYtdJUmZO+f0=
X-Google-Smtp-Source: APXvYqxVH62N3ilsiY4VGNvaOHg9k/nz5zlVkixhA+Vi7q2vipVqLlULQJH/MyQ+qyPZ7z3UnBhHvA==
X-Received: by 2002:a67:3187:: with SMTP id x129mr24935433vsx.139.1563899325550;
        Tue, 23 Jul 2019 09:28:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8002:: with SMTP id b2ls5469626vsd.13.gmail; Tue, 23 Jul
 2019 09:28:45 -0700 (PDT)
X-Received: by 2002:a67:80c8:: with SMTP id b191mr49292197vsd.113.1563899325256;
        Tue, 23 Jul 2019 09:28:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563899325; cv=none;
        d=google.com; s=arc-20160816;
        b=WGdAFMFkcnSnGqPEL9WlcDm6dK2q2FWJP7EfhbVoZmBo8kDKyDCYkCJd/h/eAfLlLw
         r93GPhwAzTolD7Ly4bIV6nQ5MhKE4BLgblNWgEDHHOUF1zWKzoyuOrIM/D7PVtBbTbSS
         tAPTPLUiC4D0AbXtoVFLwuMQFtA91Xm56xgB7ShNoLZOw1JJ3fz2SeIkB2vawWn4lC69
         0YuuNJfOmhyAurquidVxxgNLHzvrHhdTKGbnKbwxo5Tg1/Iljr7j9LmcHJNxnvQh7NU3
         pLKFG/FGaCWr2TOKVJbnbdQN79QHY/t7cYidHSysBmJRbW2DYASqZ0eitWPwqT5zxKdj
         Je5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pP/B1LW4qOPWYHcHFyf3ZeNn+CzDaAPWjIpJH8sJAfc=;
        b=Jlihp4brqDC+PCpxndD2CNUMZdgeG78pG7MgSpm9gp+BkjB8KJrwbq1nq1mmzMsh9/
         jYNtTBH6SdGH+7As2MsdcCq5UcoRe5gr+mIjCCY34mpOp/ujWfB2Gc7+EheGNh1iTU1i
         /VEkx1iNwTpasVb3zg8l4SBrTa/stiWWGJgi4ppQBChSvVSbSHTN1+KZAFvF/KvG1+wT
         GxbBb8qkVtU5A70zgIKc3gDAkhUGytfT+5UyyurLHUNRnIeaDSOJEdhbSiOQ0crWdT8d
         8pruPs/shdlpLcm+HJtXcxc7l9Ba2y8Z3rnRnBmVtWi/uDLtxHFgAd0Qt0YNWrH59P3x
         iOAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@utam0k-jp.20150623.gappssmtp.com header.s=20150623 header.b=Vjo+ESpz;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of k0ma@utam0k.jp) smtp.mailfrom=k0ma@utam0k.jp
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id d8si2043165uam.0.2019.07.23.09.28.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 09:28:44 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of k0ma@utam0k.jp) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id c2so20784871plz.13
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 09:28:44 -0700 (PDT)
X-Received: by 2002:a17:902:2868:: with SMTP id e95mr76167194plb.319.1563899323634;
        Tue, 23 Jul 2019 09:28:43 -0700 (PDT)
Received: from gmail.com (124x37x165x227.ap124.ftth.ucom.ne.jp. [124.37.165.227])
        by smtp.gmail.com with ESMTPSA id z4sm32904868pgp.80.2019.07.23.09.28.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Jul 2019 09:28:43 -0700 (PDT)
Date: Wed, 24 Jul 2019 01:28:40 +0900
From: Toru Komatsu <k0ma@utam0k.jp>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] .gitignore: Add compilation database files
Message-ID: <20190723162840.GA7110@gmail.com>
References: <20190721085409.24499-1-k0ma@utam0k.jp>
 <CAK7LNARBjkYHkmv1michYYMd-2_70d+-Gvg1Kv4FyPeeBShvdw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNARBjkYHkmv1michYYMd-2_70d+-Gvg1Kv4FyPeeBShvdw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: k0ma@utam0k.jp
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@utam0k-jp.20150623.gappssmtp.com header.s=20150623
 header.b=Vjo+ESpz;       spf=neutral (google.com: 2607:f8b0:4864:20::643 is
 neither permitted nor denied by best guess record for domain of
 k0ma@utam0k.jp) smtp.mailfrom=k0ma@utam0k.jp
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

On 07/24, Masahiro Yamada wrote:
> Just a nit.
> 
> The patch title is:
> .gitignore: Add compilation database "files"
> 
> Maybe, should it be singular?
> 
> 
> On Sun, Jul 21, 2019 at 5:55 PM Toru Komatsu <k0ma@utam0k.jp> wrote:
> >
> > This file is used by clangd to use language server protocol.
> > It can be generated at each compile using scripts/gen_compile_commands.py.
> > Therefore it is different depending on the environment and should be
> > ignored.
> >
> > Signed-off-by: Toru Komatsu <k0ma@utam0k.jp>
> > ---
> >  .gitignore | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/.gitignore b/.gitignore
> > index 8f5422cba6e2..025d887f64f1 100644
> > --- a/.gitignore
> > +++ b/.gitignore
> > @@ -142,3 +142,6 @@ x509.genkey
> >
> >  # Kdevelop4
> >  *.kdev4
> > +
> > +# Clang's compilation database files
> > +/compile_commands.json
> > --
> > 2.17.1
> >
> 
> 
> -- 
> Best Regards
> Masahiro Yamada

-- 

Thanks for your review.

 Sorry, this point which you pointed out is my mistake.
 It is should be "file".

 I'm begginer because this patch is my first time,
 What should I do next?

> Thanks,
> ~Toru Komatsu

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190723162840.GA7110%40gmail.com.
