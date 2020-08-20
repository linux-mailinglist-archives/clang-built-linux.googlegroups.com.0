Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSEA674QKGQEGXQIEKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id F124624ABCC
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 02:14:01 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id z5sf355883ilp.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 17:14:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597882440; cv=pass;
        d=google.com; s=arc-20160816;
        b=vtoobmLdZjDEKvV0JgZfWy7zNrrws2zMs+A5P9X4sSMaKgSvtMKq72OI9zUb2jFDBa
         1nmQZ+37/i+ix3K85lgXhQ7lrR7sRe6fXpirwyp82IbD3MnwRgiwZjbe05Uso5Ew6Yt/
         KSn7jhp6hJKGKfrn46gxRHOXwoUHoTqrjcGhO4baiOmBnx3UUEU6/i3wqqh6TcIRGwSz
         MaciWH/5g3fc3LBmIU97Hd8Qnp3HQGrJ2JDkYIbdHF2EEKLTRh56oy2Q5ahx6wrhPevX
         qvGhISZ62mwMmRmmORBslND0VSRVBJD5ak6ecrbkdu1HIFw3/zGxS4F/Uk9738E0+PE7
         o5Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ce7jov0KmJ1eQDtrhPGlvqbXiZ9w1pNbkghhWlfMLDY=;
        b=yuGqMQiJmz6nJso9QwP5WKwAMmsJm4thq5l2hhGWH5qL7AUgyyJYJVruvEkBhBe4ar
         UYDKRW8HCsmUBMP6pcV1MTuwlPymIk2w2eyUS15+dtfiy1ueBsJPG3WCayxItnUSn3/s
         KutJW0xGPO5Z2NZmuUJo4/7SDhOlyYjiOAcZ5S46RADkTwFin3wjUYO/UxsO1KYXNTH8
         uXizaxRsIR2C/dkCFr7HXuvzUoqoQX+sKxkZqbLnUa4mpVzW8ck3+vKSGEhSwyaqSSwI
         5+3Io0nt4ORM8dCYdD0tG/CId43zDSY7A5JBY4O61QW4Z/VN/+rGDRQqP/oyFFrDFIAT
         Yxgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GZgsINVj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ce7jov0KmJ1eQDtrhPGlvqbXiZ9w1pNbkghhWlfMLDY=;
        b=bllC/FrGf6xgyoXdvh9wh1v6uKw7HnNEO5BQj3offtQN9ZleEVnpvEtKLaqPx4qysI
         3xn6ix4hs79jEPxKXuuqUbJTkzP6fdltWA0aJfFnGfbjb8uKyTzEVbxq8ib6QO9YPgLe
         cc5p7iGN4KHi3xX/YM9RJruxf78RSdxAewlrUZJiVHOLITMSiT69C0yp8OEBtYhI2ixN
         Wz5eo3UOM5E2WCUhNajhHLKv430njB5c846+4ZPY1/8eSVxxQwUUZCEeJ39acHx5z3ag
         Fpq6l+ZNGFCuIUYD/Kn6JpOAAk/7hsw3wA5F+6nIdLe1YxhY8Ip+Pf6wBPF6I98L9Ayq
         rLiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ce7jov0KmJ1eQDtrhPGlvqbXiZ9w1pNbkghhWlfMLDY=;
        b=st1mml7D25VPzpnyp4WS9TIuN6SPY4aYIoEenx/mtAW+noLzNh4yQ72H75YcHPV619
         grV5qbGgGpopponqNsCqqoVNS3orCLOrl78WSV10KT3a1uoCx9XQ98w7qI94M9ZMd+yP
         Ytg8J2tgsApntOoAmMGtwkH3q/H/BHTCXSYcFsHbSg7HzuEBapiBFw6ur3LRxHrrwUzy
         dF7K0MsQ8VbDwANXkpOfyIXpdImx5NdIU9dh2ey89XjndTBmAuudVFZsF0mebE/wa73W
         M4RQUodQ/huTNQXKhKyv3bjJGrtk/TmXmXC+MbILD3GtkgizlQphm6q7trSk83QC7Tfc
         lQiw==
X-Gm-Message-State: AOAM532toqEfDhK13EiB4bpkLpMjgf+RLQC6VWSKs4Ihmv9B/0ioCTuK
	o7zskL45eOR5l4N9yENo5BA=
X-Google-Smtp-Source: ABdhPJy4Oo5W0LkgF64OAkHN+UMMLDA2hV429vg/mokbh/86p127KU96ewfOmtuRyDMukDG+vPnG1A==
X-Received: by 2002:a02:cc53:: with SMTP id i19mr853717jaq.33.1597882440324;
        Wed, 19 Aug 2020 17:14:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d18d:: with SMTP id z13ls141732ilz.4.gmail; Wed, 19 Aug
 2020 17:14:00 -0700 (PDT)
X-Received: by 2002:a05:6e02:60c:: with SMTP id t12mr487133ils.47.1597882440016;
        Wed, 19 Aug 2020 17:14:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597882440; cv=none;
        d=google.com; s=arc-20160816;
        b=iH5QMmRbV5PpkR57MsLtRTY+QHuMD8rHIJbqeVKdwJH9JCXhpX5BbuGDFrOsEgwovd
         14VVUKYI9fkKp2ofRQgUKwO9O2fUZPyDjLLWuMHcdV3fjeg7mqG3noF18F9ke8vz/ag6
         d6nP3glelYxJ+caIg8DFKLukbnc/PlSqJdkQb8x57h7t8P58to8r6JzViONWgBXRfLHV
         MiaAP0pji3XY+cXVTscu3BDtQZkdPvUSxI41B5XPxdRfZQJGYyBtybtEa0jJVAv954+W
         FW4+x03L6GnuQNPPdLx8Po1BmNCY3pLtNeZlJSDjiA0T57aU2/GViXSol4jxa4I+glGM
         l1ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fSEYrX5ACCj62ngKp36MmVum7AWiPuR/R+X34o+7xuE=;
        b=aVt8RR/knG7QUgmp+FhSxaiB3K/Rap15O88eAHb1CTZ6NnXzeLDT6Je7X5vWSpLdSU
         5G+bBMY8iKQS72nhui2ZuX+f4eh7ApnATKq5UtTkirKuy8u8Z5S+mimD0vULQ7VEoe4n
         0u7wR6+lZhRhDFWTFaHY8g+1aYbKkQ+7txtnOTfPKbLPT/ZrdOy0CGrGflU4qoLOuSDk
         UIYiW4nQIor5CnPi3J1KweM5u2eoCJ3LhQiiSTtpbSEW5YsImYwbyM7UHSARG3Jq2rg+
         DL2y9MJ1+Aa/o1XJEu2lrRU3IURzQhu3Uuz66VrxeWXYK+EFjnsqrSo5fScx+f1yHsLE
         YMJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GZgsINVj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id h11si22159ilh.1.2020.08.19.17.13.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 17:14:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id v16so210131plo.1
        for <clang-built-linux@googlegroups.com>; Wed, 19 Aug 2020 17:13:59 -0700 (PDT)
X-Received: by 2002:a17:90a:a10c:: with SMTP id s12mr340778pjp.32.1597882439098;
 Wed, 19 Aug 2020 17:13:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200730205112.2099429-1-ndesaulniers@google.com>
 <20200730205112.2099429-3-ndesaulniers@google.com> <CAN=-Rxty=Ux5rj-VQSZH-ryj1RiNJvy7mRE7uyx_YAndGtcq7Q@mail.gmail.com>
 <CAKwvOdkNLK2cRfY+DA0u3KuY5PuEss5Qox6X3zzpL053pARfrA@mail.gmail.com>
In-Reply-To: <CAKwvOdkNLK2cRfY+DA0u3KuY5PuEss5Qox6X3zzpL053pARfrA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Aug 2020 17:13:47 -0700
Message-ID: <CAKwvOdnDyUw7TZ-ZsWQ=d7ZNPM_ziFnimmbYoVAexWmg2DL36A@mail.gmail.com>
Subject: Re: [PATCH 2/4] ARM: backtrace-clang: add fixup for lr dereference
To: Nathan Huckleberry <nhuck15@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>, Andrew Morton <akpm@linux-foundation.org>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Dmitry Safonov <0x7f454c46@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-mediatek@lists.infradead.org, Lvqiang Huang <lvqiang.huang@unisoc.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Miles Chen <miles.chen@mediatek.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GZgsINVj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Mon, Aug 10, 2020 at 3:33 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Aug 6, 2020 at 3:39 PM Nathan Huckleberry <nhuck15@gmail.com> wrote:
> >
> > Mostly looks good to me. Just a minor nit.
> >
> > On Thu, Jul 30, 2020 at 3:51 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > > +/*
> > > + * Accessing the address pointed to by the link register triggered an
> > > + * exception, don't try to unwind through it.
> > > + */
> > > +bad_lr:                mov     sv_fp, #0
> >
> > It might be nice to emit a warning here since we'll
> > only hit this case if something fishy is going on
> > with the saved lr.
>
> Yeah, something fishy is going on if that ever happens.  Let me create
> a V2 with an additional print.

FWIW, I ran into another bug on -next when trying to update this.

Report:
https://lore.kernel.org/lkml/20200811204729.1116341-1-ndesaulniers@google.com/
Fix:
https://lore.kernel.org/lkml/20200814212525.6118-1-john.ogness@linutronix.de/T/#t

Then I got bogged down in planning for plumbers and other fires. I
hope to revisit the series after plumbers.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnDyUw7TZ-ZsWQ%3Dd7ZNPM_ziFnimmbYoVAexWmg2DL36A%40mail.gmail.com.
