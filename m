Return-Path: <clang-built-linux+bncBDZJXP7F6YLRBRE5RT2QKGQEAHXOAGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 774A31B7B18
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 18:07:32 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id b203sf4425220wmd.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 09:07:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587744452; cv=pass;
        d=google.com; s=arc-20160816;
        b=vfwwgqzihCwTNlEKrFp7+1bTI/AUeEOnrkhrek9L2eqyCHcVW/LSt/BYA4Fa5QwSBZ
         WodHDoY/213gYL98ToZrQPvwjwWETVmNcWauOPFEMPDzO105kSM2l3lKqQRXjFM9ZnLp
         spb/o7exp0zTUQxShTgFC4KLStn7B9c6BeHSp+yGlqLahFRtfP15wz4vaNaCF6+Uqw3Z
         fN/rocc4BGGMgA+oVOTfXKfHt/Cl622PsiJZcGS7A6B++XsZHdm2Zq4etTEf7QXhpw+D
         rGhawQ/2k0WHfUUc+TlICy9boL4wWqHhZR8lYyW3X/kr+XBfNMNV5qwoKG+RFzx0H9+S
         n3wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=onXSeODyrnByYrNeb88B7lI0EDdlnakpUoHMkoiuwsU=;
        b=V2f8pgiNv3X5OZo5cuth6yUvpMMDBoThvN5UiA6ZAhcn0lSlNT0VNmrmYEsxfnSRqW
         jYCCYgAnFeTdHQUgfY8Cry+lx0GmiZjBp/dXAy0j7ztIJRhUYfNkwuY2Q1A20Jzqqttc
         mko3tKziGY0gnkaM/ixb/DIJfNMIrieu4dg8yof9v+GomMM9B6i6EhZZaL0k5fKIJJx2
         7EKmV0TTruoo+w/lKB+9IOtCB8NogAywSWVqJ1+xfoPd+SZULugi9llZ14m82jDfQtMF
         g2Wxnwt8cVGxV0ip34vRBmB9kCg4NEtX21lqhq4UPikMUWBBqvZhQG0i2IotL+vOJ4jU
         qrcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=onXSeODyrnByYrNeb88B7lI0EDdlnakpUoHMkoiuwsU=;
        b=ly8euXxXKy5oegyA8kMezKoFLN9b2dU3aF9ym0oRm3ARHsz4PEIL6gxKI0zzlMwShn
         Ua+UHTp6fumzO/kyW0kxL/C4jqiD12rfuaYuRIM1UM0yraasoXqHwBj/7xr1AHj5Trtl
         zlc7Rec3dFQRS0l7LJIWHZRhsaTAi3ttHDW1Gm6YCfzsQ5ZhksEyo1E/PzF/SrTxTYQD
         uMm/nKF5SCdGphF9GGsI3B2UFkA67Z6sqr51Eb1x/ZKD13aRBCW3vTb7+L9sHAL+U5Os
         gRylDwyKOAfIB3OdAva3uK1V2QGQbD8I+QZ6BnLxJG4FH49rbfp3O0TETG+AXA1MV0lW
         tmWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=onXSeODyrnByYrNeb88B7lI0EDdlnakpUoHMkoiuwsU=;
        b=p39zMzKewu5tO8Qd4qdXSu+DPV6xLemr8IcrBpbdLQYRCyitRlfqk9S/9xwIYgE9Hd
         wNjdYBktSxUOF3JqMR3OvIXW2CS/N5+bOkKwx8nbOkMG5VWk2lRQrCmIlhL+dhMHHG4c
         VB6Il1ZGw2hFUMqrUo4zcp2yDi06MyIyG6Zvc5UBYyG7qULuBKX4xzY5zT2pJvY2wno7
         rUXu9d/lPFFKGV7+rvEOa0Ny/VCiZAM97VvzHXifD+rJdWosR0NEumFN7i1U9PG9fBTa
         CXp8a36pu6YPzNpM5TrB4VbTsO6mtmD+G5YPbo8yOJqzjVjNKVZF1Xkqyuzupq2IW2ES
         2icA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaHTfnck1O7oB+kLhrq8Jcb45lyy+cSzQJMEdXEFB93UB5ygkoX
	+abb4i90a8UL/wmhW9VTtbU=
X-Google-Smtp-Source: APiQypJ/ElWRPhOg+hEwi/semjX9a1WpdTx8NVNnKfzZwpLjjeeEaVJmaBTXw8E3ipruhiFOQwwDuA==
X-Received: by 2002:adf:aa8e:: with SMTP id h14mr12865361wrc.371.1587744452156;
        Fri, 24 Apr 2020 09:07:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:668b:: with SMTP id l11ls9798143wru.0.gmail; Fri, 24 Apr
 2020 09:07:31 -0700 (PDT)
X-Received: by 2002:a05:6000:11cb:: with SMTP id i11mr12107452wrx.339.1587744451591;
        Fri, 24 Apr 2020 09:07:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587744451; cv=none;
        d=google.com; s=arc-20160816;
        b=gmUNcrcSWAu4Y3ucbuKJ1pTxVvD4W8Utd34AicPTo9T1Iig8maV6OL+U0d9o0MciyQ
         64ZEK6s1q36gjEmQURMrzUhq3Pi8HHR0BX85dTlOe9qzsOGp48QuZHnWuWBvA1Whfn1M
         R3qE9srLBMlTA+MmAMvRNTZZI6icGg3pRmuzEnwbt2QPdfwJ+sJnlrXn0R1f6v+AZuxc
         ln3keVhMU28dbgqXLFYVG7qKfeh8byVRArMyJF6qoxcPQx0C8B9D5V5rD095+vlIBET6
         Nk0e3MQYeNuxzzrl0FXtdJXoahkPYvQeXgmnvzZnoUb/Tsbd8WU3wTHFIcXGIjgsZs9T
         lV3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=AIwpluvlrsL5SLEYT+O9atoJBsrUK0uTSuv5pX28WSM=;
        b=R9oj1seD13t62rq1Jdd46cDjFcBPCo/6VdCfN4fc4bMChvvhKGihTFNyOF3pJut24m
         1R/5jvgN8JfxoStLmnY5kFHoAfLxMmPQPd47PMo42l8+HGdAkQJupbDs1ZP6+N+4/ih4
         AQavjXhPR6dOoQWdn4TbScO51rCzcBGpzSC3UhVGqHD4KS8vuC3FAccLHngboF/TkGfN
         wJr3YNN2IExnenMmmO5T2phPAGc5vjOB5NQWdfepe8kARPBTEVCkGZbrERwH9f3nzIig
         T7XhFN4lvk1WJYWj0fceXUIE39SffLVYblk4X9/sYEoMwPK/swYV/WPJq6iPY2PkOYB3
         45bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 71si153101wmb.1.2020.04.24.09.07.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 09:07:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
X-IronPort-AV: E=Sophos;i="5.73,311,1583190000"; 
   d="scan'208";a="446777922"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Apr 2020 18:07:31 +0200
Date: Fri, 24 Apr 2020 18:07:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Nick Desaulniers <ndesaulniers@google.com>, 
    Dan Carpenter <error27@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Greg KH <gregkh@linuxfoundation.org>
Subject: Re: linux-kernel: Unused static inline functions
In-Reply-To: <572b03bdc3eed286c5ed20887d42f674bd93336e.camel@perches.com>
Message-ID: <alpine.DEB.2.21.2004241806220.2344@hadrien>
References: <1583509304-28508-1-git-send-email-cai@lca.pw>  <CAKwvOd=V44ksbiffN5UYw-oVfTK_wdeP59ipWANkOUS_zavxew@mail.gmail.com>  <a7503afc9d561ae9c7116b97c7a960d7ad5cbff9.camel@perches.com>  <442b7ace85a414c6a01040368f05d6d219f86536.camel@perches.com> 
 <CAKwvOdmdaDL4bhJc+7Xms=f4YXDw-Rr+WQAknd0Jv6UWOBUcEA@mail.gmail.com>  <4603e761a5f39f4d97375e1e08d20d720c526341.camel@perches.com>  <CAKwvOdnW-xvSnT3RS8MWufyp+3=NM-Mb+bv0r2u2soNnyVvXBg@mail.gmail.com>
 <572b03bdc3eed286c5ed20887d42f674bd93336e.camel@perches.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Julia.Lawall@inria.fr
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as
 permitted sender) smtp.mailfrom=julia.lawall@inria.fr
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



On Thu, 23 Apr 2020, Joe Perches wrote:

> (adding Julia Lawall and Dan Carpenter who may have ideas too)
>
> On Thu, 2020-04-23 at 11:57 -0700, Nick Desaulniers wrote:
> > I've been mulling over teaching a class internally at Google on
> > getting started contributing to the Linux kernel.  I think this idea
> > (removing dead static inline functions) is perfect for having lots of
> > small little tasks that are clear wins.  Do you have any other ideas
> > for work that there's a lot of?  Like lots of small little bite sized
> > tasks?  Maybe more fallthrough conversion? Anything else?
>
> Some generic ideas:
>
> o look for always unused/unreferenced, or always static
>   value function arguments and remove them
>
> o int function returns constrained to 0 or 1 could be
>   converted to bool.
>
> And some logging ideas:
>
> o printk to tracing conversions
>
> o removal of printks used just for function tracing
>   as ftrace works well
>
> o pr_<level> macro conversions to functions to save
>   object space
>
> o singletons for pr_fmt
>
> o default use of #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>   and removal of the ~1200 current defines treewide
>
> > Happy to have folks use your script and add your suggested by tag.
>
> Suggested-by doesn't have much value to me,
> especially for scripted stuff.
>
> I'd be happy enough that it gets done eventually.

Perhaps typedefs for structures?  Using standard list operations?  In
staging there are a lot of camel case and variables whose names
incorporate their type.

julia

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2004241806220.2344%40hadrien.
