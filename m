Return-Path: <clang-built-linux+bncBD4LX4523YGBBF4N3D4AKGQEGVSPDHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 1698022701E
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 23:03:21 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id h93sf615441pjb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 14:03:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595278999; cv=pass;
        d=google.com; s=arc-20160816;
        b=KSNsp17P3OJcjg5CvH+zS8rAbxnrKrcuHSt6Wo3YR3IsjhEKZxx0yYlEn5tYKT8gJg
         Psxc0pD6tZqfOSWUaoS17oOBsDxLHi/czAv8aYce9xXhm51PCK2+M/RFYlkppj0+J9tq
         DeWcZT2nEU7JElpN2GWy0J5xCmo/koEev7HcZP5CqVXG6wtk4DkS6Sf00YXgtU/V0WyS
         wyaS/01TrsrPPQaj2k/BWWcqIFK2pN2LvfUS+BN4qGA6NA/ehw+jz47t0qDKsoa3WgWl
         /X2HwQiD5uJ31CG7dmDbcbnB0zRXX4jVU0cu9XlfPbmr62JARMMH3ijBu6ChUlzjsCJw
         qfRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=BxKpux7rK+L9NbgcAmF7Q7kYeZpPKTiG17kF2wyPSzg=;
        b=JryU1cJCXXwFW08NNQhNl2u+OYSyXi6yNZTj67da61dhuwEJ3y5/51dPC9qWgC3KxR
         5oPWq1+fUA0FEbnh3Cl99fcEvAIsIXFwGDmdnKnt7otSs9RVekRjnr7oopllQZ805DAk
         GN8Kfd/V5Go8aayXTHZaHEhyrYlmnDzYT4NFP0hmC8yvID8qdeW873diHBb2MPSlhVE+
         S5oiQHLKdHtYlchRmXjyou/r0uS599wul3EiCOVN+wOFjNkVCUeOxd1r8FyWzb2nZJwp
         lV/HWnCnzOb75EbPdAZV51R2tkYQ1YEzlmz4ctg7yK79RvxkLqF9ruI+/nwjZ65MLlQW
         g0Zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BxKpux7rK+L9NbgcAmF7Q7kYeZpPKTiG17kF2wyPSzg=;
        b=alv4ZwcLBVsNr66ogi4yAdNfwLjMggQ9obZGPMtXkPODWXQVYEP2CVSiWt0JGvHPlc
         RVH7MEds8cJ0/YN10Cmrv1+3N6JXr3SPrx+B5sQ8AZy4l4KIOdfl28MDNgA0RZAUtW3z
         i3DyPqvaGU6Y73K7iFeA1XxenV/cbc8lThAg7eqjOSCo2OsY0GA+UFUeVtmj/a/ln7+k
         0lT7ZTpOIqFcq7OeC4oZRVyyaI+EVVzulOYNrjWrY6wzgh0xTSsTbRMFqcHIJm/XgWHb
         CsmcemoBNC7dEkcj4rPzF5F8NaDRioCmesKXRd7TRfv6mPTBqmed4hnK2KIpsV2uD4MR
         zWdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BxKpux7rK+L9NbgcAmF7Q7kYeZpPKTiG17kF2wyPSzg=;
        b=kms9jERMZrvU/2WXVqcBVbqO7CuXHhzRlycPr3XkSNiMSQ3IgBoyYwugr/V2vxSu6d
         RKqX/1lG9dOhgbBz1kf03Ok5lkmUxjZ5Os1wuA4kHU/YC2wNAKAPa/Sun8bAvXqIwzSq
         WdRAfk9T+0MOPoZrl4EoC7Cy2whWIuYzPNlCnX2OeWrnqvYvQzpjsM8eybqg/D7QUjs1
         ylQ3niXjVeU+KxfO+I3mpSaFwgrIAqYQ+NpEQszN4Slj6TwP+7/W0M+6E/J88g75kKaL
         BvwhUCm2+OAV5zHvJLPyai3MKDVzEwj1QkyJTa7Y5W/fJqAlZA0r9+z5Q/Rn94UDG0ZF
         PCGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Khf9hsnlH23pjJuTfRDx8/4m0hCZ0Bfa1q6OIv2SO6/Yly4uF
	boqj3juEcj/V9sA3dx6uJT8=
X-Google-Smtp-Source: ABdhPJxwtZXFiHjzOc9yna0G9wbqGce7PIx0iWjJQO2TOkE6Lhb2LfJj4RhM3fFVBPuGMaAuQTnViw==
X-Received: by 2002:a17:90b:19d4:: with SMTP id nm20mr1331400pjb.206.1595278999486;
        Mon, 20 Jul 2020 14:03:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9798:: with SMTP id o24ls5009517pfp.0.gmail; Mon, 20 Jul
 2020 14:03:19 -0700 (PDT)
X-Received: by 2002:a63:d10a:: with SMTP id k10mr20308225pgg.382.1595278998908;
        Mon, 20 Jul 2020 14:03:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595278998; cv=none;
        d=google.com; s=arc-20160816;
        b=u6Epxv3H8218q0rh5V9aEQ792t2ecb5IRwu3Oo3jixHp0p8McQAk+6i5PrhX7t9UAw
         roSNUnGGZrHOp3vD4nZlGiVWymT7u5smoT/0c4/epd5Q1ZBsv3myBYLG0I5f4Haivvd7
         i/btTpjkx1oHu5N6Otvvqz65vcRJDGJpOK7gp4Pr8+zLts9+/F4RFkpuBj8lqImta+AD
         vXQXAAiVC0xm8fK1dIvP8QvwbmR1eBQXivd7oP9TT+Ipst3pURROfXJWZFZoIeIIZ2XM
         0fjWJatm6TQLDNa6hjVJpYyxUrqdY3ieYJWhp3MJcImEx7CuRzpYh+b+IfZXy+Ep5KlX
         0ogA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=vT46eOrxeH04MP6A8LGKznD4ZE0eV0FsQaf9bS3iSzk=;
        b=YKtmmYg+vbwaYnfI8mPdd4CVbYSyxlb5oAqsndPJKJ1R9POOPth9sy8nr2KFP9uWst
         NPwPokScMNx2iSmacymGA7WKzGNIzObqKcEP6CXBM40Abw9Oz2e59vExid+YTdLfJRCN
         l2TpmVpqtJ3ibAGZZr+W2KE1GIbxqmJhjEWbQsKd7TRjLKkN6RaJks4zOrwC8kmYJVl2
         Yloh1CizmweNKPmKtRPfzc1utlkuVQTkQyTY51cZu3EbP/xc9MFygDSZr+kttBy1bgTw
         ehFPsLWr8TkN/JeU3DHMaOPlUlOfr9Gj7Z5dqH/9h8XxRouCfPf6MdIXWKYNUc8ZEDFy
         jEdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id l6si20309pjn.1.2020.07.20.14.03.17
        for <clang-built-linux@googlegroups.com>;
        Mon, 20 Jul 2020 14:03:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 06KL2tAD003247;
	Mon, 20 Jul 2020 16:02:55 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 06KL2qPF003246;
	Mon, 20 Jul 2020 16:02:52 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 20 Jul 2020 16:02:52 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>, Geoff Levand <geoff@infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Paul Mackerras <paulus@samba.org>, Joel Stanley <joel@jms.id.au>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [PATCH] powerpc/boot: Use address-of operator on section symbols
Message-ID: <20200720210252.GO30544@gate.crashing.org>
References: <20200624035920.835571-1-natechancellor@gmail.com> <CAMuHMdU_KfQ-RT_nev5LgN=Vj_P97Fn=nwRoC6ZREFLa3Ysj7w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMuHMdU_KfQ-RT_nev5LgN=Vj_P97Fn=nwRoC6ZREFLa3Ysj7w@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

Hi!

On Sat, Jul 18, 2020 at 09:50:50AM +0200, Geert Uytterhoeven wrote:
> On Wed, Jun 24, 2020 at 6:02 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >         /* If we have an image attached to us, it overrides anything
> >          * supplied by the loader. */
> > -       if (_initrd_end > _initrd_start) {
> > +       if (&_initrd_end > &_initrd_start) {
> 
> Are you sure that fix is correct?
> 
>     extern char _initrd_start[];
>     extern char _initrd_end[];
>     extern char _esm_blob_start[];
>     extern char _esm_blob_end[];
> 
> Of course the result of their comparison is a constant, as the addresses
> are constant.  If clangs warns about it, perhaps that warning should be moved
> to W=1?
> 
> But adding "&" is not correct, according to C.

Why not?

6.5.3.2/3
The unary & operator yields the address of its operand.  [...]
Otherwise, the result is a pointer to the object or function designated
by its operand.

This is the same as using the name of an array without anything else,
yes.  It is a bit clearer if it would not be declared as array, perhaps,
but it is correct just fine like this.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720210252.GO30544%40gate.crashing.org.
