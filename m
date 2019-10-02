Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZVC2TWAKGQECDVLCEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 98032C9341
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 23:06:47 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id 9sf194155otc.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 14:06:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570050406; cv=pass;
        d=google.com; s=arc-20160816;
        b=hiNRlsVLmjVcmacxyIBMFdey/0H8Cly4SqqjtQdhJ6aK9yuGm/+mfQz8yGoWoW33OR
         We96TWrnXP0uRDo7pKSmAqibZpfEB7GqVsvk7WSb4CoSRiI0NLoHze2CXS/WKHIPSp9r
         8eiDL9IziQBE+0hqJ3rxC4vWYJlEdyzzr4XW2+CzXbooI/ZMFIig7xoRbrJXPIs5k0jl
         wpS0qi+kCF4Hc0WxxSqp8VRVesTzh4C+BPMvVVzyh9Bylw+jEvMabGetE9mWbAX6sWlk
         sr0y9kX+xo0/FPkcNkrEr1GdwNYc2DRijNpTZOA8NGkoG3VgmCqtF3djC3ipXdReWJ8q
         /mVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XY4SRWlQwIMCa0xLlzAboVIkCF+PnJO11RB8Ugk3pyg=;
        b=F2SVMSEf09+B08rLwf5X4VXYbDwSXY+ZHB1FcHNnbKSyrIMRiqi5NR6b5ngb2V99fu
         9IKwOTQDDcPIDZYa2JMPP+W3pipAGfkJKfzADjsmU9ClElBxM67SLM8aHdV6lygT7Mrb
         tNH9AnBbJEuIzH+gG+n3JfmstjBsCbpc/op/pIRBlzEtZ/ts6Ij32DBynR6wiUJALftK
         S1u/stytot0nbfJohc3lxef7U1UuEPj4mFNpGtwwsMMeX0Da1o1Kl1t1xLsmDuks/Vlm
         DW2YQSg3SKZg2BYFKSPQoT1gdMG6cjtrbJVyAEu0oulZpjHb6pqpP5NKdAhpJB6rFMCt
         MhMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T4cObNtQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XY4SRWlQwIMCa0xLlzAboVIkCF+PnJO11RB8Ugk3pyg=;
        b=gPY4CPMd3vuhP5qAQiKd9chq6QwGZK5frj+fTgApc4AOaIrN6HF9LZL0d/2rQo4/Kw
         EN42puhX2LceiTIWcIkF30vdSRB6QIcWto1vQ0UOaXUFIDRrJjfKB2s2S4uoHvMGmwy7
         gpavR/4rkh+zE+FpdjtsmAeqC1B159u0cW2hYVfqzi/Joa9x6JPGaMZjTSOCxqZwh7J8
         /brHBYlk3XgnxRZ5h1RXLCGbiqgceloL+hLsCioYNNvtq1hCB0EfgGs4scaogYRW5IGJ
         ydZJVfhyGH7oTwAEr8NAq8U6HiPQ5f18YqAS1vJlorn5qJHk5PjarVQvdj18lv/qDGXE
         cuIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XY4SRWlQwIMCa0xLlzAboVIkCF+PnJO11RB8Ugk3pyg=;
        b=RcTS788SBRY/Fr5V5njAEA7vw2622mogU9JMcM5XdNjRKQLl5w31y8rsqOXTFvf80O
         UDrYnsBmp+MpuR1WuQHs5SbSIGI9fOymzM1jiBWXn+85NAwWoiredN0oYo/YUfBMkqQq
         qW5Wyad97Y8ZUWJcLtl17o277FPl9BJXJ+1XoYZ9HziPYn24J7WwZOfuYzj4Ei5b99qi
         rW2CSDCIGrwPFmGVJl1PDQhnzbzh8B12PXMg4NpoDI5RnEi4oOWUfPtClJYEoBst3T9l
         PCsmRSjE/Xtk98kAjTL3Fk43rplXevJnLBp8OYEwJ7nk52FnUAxynK9HyUv7BKQ/YxfE
         knOQ==
X-Gm-Message-State: APjAAAV6VAldbYanUU04zmsLE8j1cExlk/t/ZowjLU/+1CR1cDm9NGMd
	Y+Gv+Ac0sqWex0PvU/ZBS6Y=
X-Google-Smtp-Source: APXvYqxONpQln5G+YL3ulNZ/nIO6zenAV1l4kzdDqi2UNEVAucD1E212nedQXjz5ieVMqZvSaKr8Mw==
X-Received: by 2002:aca:5510:: with SMTP id j16mr35979oib.121.1570050406222;
        Wed, 02 Oct 2019 14:06:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66c3:: with SMTP id t3ls727513otm.3.gmail; Wed, 02 Oct
 2019 14:06:45 -0700 (PDT)
X-Received: by 2002:a9d:7a98:: with SMTP id l24mr4283558otn.311.1570050405331;
        Wed, 02 Oct 2019 14:06:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570050405; cv=none;
        d=google.com; s=arc-20160816;
        b=p8DI8+kANxVKGq5sBVe0w0+79hMSPn1ZV56zk/90SIoWNWjQmC1LBB4TyYeBi3y2z+
         LLo/b5cp+NTCZLiXhdDORFbPXL+fA/SnK2hqcIfUbKIevq9ojfzBWcJLLK4wM6j4TouW
         0o1ehabUmJLi3zfbsnaL2TcY8RDo360E7QPfL5d2rP2tAkYhuku942Mwd3ZCoYxKxqOl
         7uu7EsjLMr+0EMedgf+dC79HaixD2EBEr0N1/nMq/G87z5uK+SANzBDQaxHo7Xlha77J
         gjjLxg4dTDbGIA9wL6pwhuQapRLpStO7xpLLx5xDG0yc3+UBp8ulX9qVlfQAg1TG+dll
         CTlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nnuWp9o1RpgvITnmL7LTsPFljnPiknKKHQUHm98mrZ4=;
        b=gPDlH5njpzrdThdiaTAqoq1ONBj9wjQgC4avp/0y9HE3plV/96O+ED07/E1Qquzzdc
         kzj9YGGQiec2wC823K46VutOI56W8y2YUF7D1rOA/9wDemDnRwTxWfPurDAeLbIjDkmP
         /NLeRrcpDSweESXrRbl2uNULy3M8YM191XCO+DCWpvZYVruQ4C942wOsaP5fywMN6VsC
         J06ft8Jnehd223JRABZFl95trSARKlbzoIsYM+sbjgRh/D39yNXRqYZRQh9NfxHH1/VZ
         /ZLXbiPI1/Di9e3yfK+WvxoUqfkpYvCrpha4fY8xyG5eXKQznnEMlyLe8ut+e9o2xu9R
         E3bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T4cObNtQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id k184si19705oih.0.2019.10.02.14.06.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 14:06:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id w8so409912plq.5
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 14:06:45 -0700 (PDT)
X-Received: by 2002:a17:902:820e:: with SMTP id x14mr5819917pln.223.1570050404239;
 Wed, 02 Oct 2019 14:06:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191002120136.1777161-7-arnd@arndb.de> <20191002165137.15726-1-ndesaulniers@google.com>
 <20191002170733.GB1076951@archlinux-threadripper>
In-Reply-To: <20191002170733.GB1076951@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Oct 2019 14:06:33 -0700
Message-ID: <CAKwvOdmfD-vYNw=YZKBhZhaK04BSMD9xjPJ4seqDe+keHb42_w@mail.gmail.com>
Subject: Re: [PATCH 6/6] [RESEND] drm/amdgpu: work around llvm bug #42576
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>, Hawking.Zhang@amd.com, 
	David Airlie <airlied@linux.ie>, "Deucher, Alexander" <alexander.deucher@amd.com>, 
	amd-gfx@lists.freedesktop.org, "Koenig, Christian" <christian.koenig@amd.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>, 
	dri-devel <dri-devel@lists.freedesktop.org>, le.ma@amd.com, 
	LKML <linux-kernel@vger.kernel.org>, ray.huang@amd.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T4cObNtQ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Wed, Oct 2, 2019 at 10:07 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Oct 02, 2019 at 09:51:37AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > > Apparently this bug is still present in both the released clang-9
> > > and the current development version of clang-10.
> > > I was hoping we would not need a workaround in clang-9+, but
> > > it seems that we do.

Here's a fix: https://reviews.llvm.org/D68356
Can't possibly land until clang-10 though.

> >
> > I think I'd rather:
> > 1. mark AMDGPU BROKEN if CC_IS_CLANG. There are numerous other issues building
> >    a working driver here.
>
> The only reason I am not thrilled about this is we will lose out on
> warning coverage while the compiler bug gets fixed. I think the AMDGPU
> drivers have been the single biggest source of clang warnings.
>
> I think something like:
>
> depends on CC_IS_GCC || (CC_IS_CLANG && COMPILE_TEST)
>
> would end up avoiding the runtime issues and give us warning coverage.
> The only issue is that we would still need this patch...
>
> Cheers,
> Nathan



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmfD-vYNw%3DYZKBhZhaK04BSMD9xjPJ4seqDe%2BkeHb42_w%40mail.gmail.com.
