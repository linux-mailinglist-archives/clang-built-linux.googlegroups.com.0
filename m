Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDEWY74QKGQEA5VBZFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 5835B24133E
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 00:32:46 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id jm22sf712693pjb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 15:32:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597098764; cv=pass;
        d=google.com; s=arc-20160816;
        b=sgUsAuqLxi+vB3tQthBOR7KNje/xRsYBB69chtKiaWmRGEkMr1QhtU3yxIF2jxwe2e
         jp7vH30h5K8bkumyFYZZWUMsZaRcXTdARJhLInqyDcWeFN/jfph83u/eBQ7uM6fkn0fL
         Amc2KbyQGBI02aRNQ9IcNSqu3EZCe8+tK0HYSY3vC5b/F4fndrHuPI1OtMMSJPX4fuzr
         cg0QWgPrKUJuWdoVGKWqlYI70i4VUpySgZiJbn9qJtQrYeKD1rc2CtNe3C1DWdtCHeix
         6HW2s03JbWXZIQX9Y8d695QPiPohugiWjj1fMG02Wg7TU7nK1dK0RmTkcZG3X7BEVCYm
         9GUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Z77QUWtSkPFgQpa/ILlkv+HZE3D3T/lqMPXkvUBxDX8=;
        b=x5H1BrAWxJwKB+YfVfXum4X/IQLNy2Qh4fTzIybFBh24aXm97VQwVVxE147QEKYQ66
         8LasdPFx9X7kzna85ugZ7isAl3cUAhfk69ztmABkYI+R6jhcwdvAj8wW/EXZIkclb9t2
         6QLoarpZSNh95Wz+EnUps2jtPq1MFHOOYYpgAOmJE55SNOQtzY7xtUXhiWBt4KlcKSIe
         V2o3H5j/n7X6tbZcVSGkif9pNsyC3HlWeW/D8b04fq7FxNqvk+aft4gXv0UemP98/cAe
         AfxgsqTnJXKhPiG4E5BaxUaFqx9qksFjemLTw3jQH9IE5czdniWzGjbAPKHlZtrlSWSG
         KPJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A5gGDmYj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z77QUWtSkPFgQpa/ILlkv+HZE3D3T/lqMPXkvUBxDX8=;
        b=GZkckqXcWq+RstEFqa65j6Wo0Y/MlgpQcMBxACUAL2NSvEfio9QfKLj4zeqZLjMMQS
         aCW4331vDzTulo9qn09HcSY02sGwW8woVPOT5Sm+k2qvka1E0su4+vquwQmNM4CbkG6/
         j4l0Omu5j8YmyHvJVuRHvgHvvOq0y/WrvOZt+vq/ea/xemdtUS8ECT4sUwOjRMhHSId6
         tuJ3arfbKW3MehSdp5zoPg/msNGQcfw+GX5YDUTSjbBY2sG/bR+XbHGMDkRIvPZFdPUc
         lOXcDgLKQ+qZA0Y1pFu23FDmhAd5WQPFGlxsAwczzfhd8asGXSganS5HREP2GHRsXU6t
         vIaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z77QUWtSkPFgQpa/ILlkv+HZE3D3T/lqMPXkvUBxDX8=;
        b=pICmFOkkd/a4SFZrgcbtz4iuhmg0jyzpWGqcn1BjlD+DEkpoGOT+tRaY7mvf6feXhC
         2pOp3qb8nk30shvcfMj9Im2f43jKWhm7uKTRe7D+SZA+QIYKXzpDr46IxWBalej1kXU/
         HKzGt6+gCAMqBqMwsOQWbqYjTxShcyWxC6PhhwVRZioCDWCqbAPZDaMR+hMyhfHBW7ew
         mM/I+fPSYR0AI0Y2ftVFWUU97xiu13wxwARp+f2hf60i+mmNUyyZc6pMOwXZb+pttj6m
         Rhq5CTFmEQOZAb3nNdrSdkZsQRmh0d8UiclPWZtkqFDDaueac/g4eDr2nSR8wXDdk24R
         eLOQ==
X-Gm-Message-State: AOAM533qn5JEOgZlzx/wi8HxwbrbEp64BsFGeMxOi0Om/GZBz52W9LSw
	UJJYZKqKLy+rTzGZVHIzWTQ=
X-Google-Smtp-Source: ABdhPJw7reOH9aQzPLsD4V7bx3bzheMF2qYoLz5zqC8x5SxjlXNhN8GDNWVrH/GTN4f0dv+5q6JpZg==
X-Received: by 2002:aa7:972f:: with SMTP id k15mr3321358pfg.209.1597098764736;
        Mon, 10 Aug 2020 15:32:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b93:: with SMTP id y19ls7419351plp.6.gmail; Mon, 10
 Aug 2020 15:32:44 -0700 (PDT)
X-Received: by 2002:a17:90a:ea13:: with SMTP id w19mr1604312pjy.18.1597098764329;
        Mon, 10 Aug 2020 15:32:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597098764; cv=none;
        d=google.com; s=arc-20160816;
        b=kye6eylHATmv4PEP35SAW7vvuJ6gzDCKlCxgUwbj28eLKqiAC3MYQpddnafYqP2iLB
         lWNOBeeUiOP9PhGIduJaPbNB6b/fXeZ9QKUUGIYofZ3yztafgmN+S9QG0McPMP3IxxVs
         1s0WVas/0/8rIiQu9djpIoT31baEZ+BDYgU/qt17bwgv5yApHk3HVmCclb+4rLchtMqc
         viKJ8FRtATtspNX7uC88hEzRYKs5hgD5G+H/4B40jjE2vPDT8C2zTWDw8yZNgPKnIXQr
         4pqUHoUZV+yt7gyVnnL0Ma/GyOWI5tOwdskV4CZAm7PBiK30NlB87i4QfxxVJVsTPb1z
         Yucw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XXQVV8QzuLxMQgNKr0LaFyD2ve8ZpOBor9lL6l9h4Ds=;
        b=IPZWKN6FZfVqWyX+K5MbV+6JLdrCnt+QW1IBd1UVtcUyUnV4UwD6jTtauCISJIRz2y
         VmvSHAXZjm9Lpn8yfv7iC5oYV5ed8SUd1vRB2T5Qd4//lKMPnT4kmd4KQEpgJssYR8kO
         KavxCIsfn1u0fcYLIgc979gft5w8ZZn/z5ifJHPtccRLccOGF5vUrUnSALeK/sPGs8ZN
         tiUx20gnDg1Si+Y0jtjUyatMvvK0qq3ISrqglf6vR+PMsve3E5htllkC2yyzCf2p7RjJ
         9nOrQ5HvMyRzYR9A/9q8EMGG8af8WnF/XlBkBi6Q5zAqDrHRAoNt5hoL/holD/hT4xba
         rqpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A5gGDmYj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id q18si179379pls.2.2020.08.10.15.32.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Aug 2020 15:32:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id bh1so5842705plb.12
        for <clang-built-linux@googlegroups.com>; Mon, 10 Aug 2020 15:32:44 -0700 (PDT)
X-Received: by 2002:a17:902:8509:: with SMTP id bj9mr11421853plb.179.1597098763680;
 Mon, 10 Aug 2020 15:32:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200730205112.2099429-1-ndesaulniers@google.com>
 <20200730205112.2099429-4-ndesaulniers@google.com> <CAN=-RxstJBjJUcOf9iuAxEcxYUhJTdF9JhPVWwQuefnE+3s52w@mail.gmail.com>
In-Reply-To: <CAN=-RxstJBjJUcOf9iuAxEcxYUhJTdF9JhPVWwQuefnE+3s52w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 10 Aug 2020 15:32:32 -0700
Message-ID: <CAKwvOdn+MGgYf8k9uAUT55vBL+ERTjv+jx+t8SD9HO98-h2c0w@mail.gmail.com>
Subject: Re: [PATCH 3/4] ARM: backtrace-clang: give labels more descriptive names
To: Nathan Huckleberry <nhuck15@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>, Andrew Morton <akpm@linux-foundation.org>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Dmitry Safonov <0x7f454c46@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-mediatek@lists.infradead.org, Lvqiang Huang <lvqiang.huang@unisoc.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Miles Chen <miles.chen@mediatek.com>, 
	Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=A5gGDmYj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Thu, Aug 6, 2020 at 3:39 PM Nathan Huckleberry <nhuck15@gmail.com> wrote:
>
> The style cleanup looks great. I just have one extra thing that
> can probably be thrown into this patch.
>
> On Thu, Jul 30, 2020 at 3:51 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Removes the 1004 label; it was neither a control flow target, nor an
> > instruction we expect to produce a fault.
> >
> > Gives the labels slightly more readable names. The `b` suffixes are
> > handy to disambiguate between labels of the same identifier when there's
> > more than one. Since these labels are unique, let's just give them
> > names.
> >
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  arch/arm/lib/backtrace-clang.S | 22 ++++++++++------------
> >  1 file changed, 10 insertions(+), 12 deletions(-)
> >
> > diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
> > index 40eb2215eaf4..7dad2a6843a5 100644
> > --- a/arch/arm/lib/backtrace-clang.S
> > +++ b/arch/arm/lib/backtrace-clang.S
> > @@ -121,8 +121,8 @@ for_each_frame:     tst     frame, mask             @ Check for address exceptions
> >   * start. This value gets updated to be the function start later if it is
> >   * possible.
> >   */
> > -1001:          ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> > -1002:          ldr     sv_fp, [frame, #0]      @ get saved fp
> > +load_pc:       ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> > +load_fp:       ldr     sv_fp, [frame, #0]      @ get saved fp
> >
> >                 teq     sv_fp, mask             @ make sure next frame exists
> >                 beq     no_frame
> > @@ -142,7 +142,7 @@ for_each_frame:     tst     frame, mask             @ Check for address exceptions
> >   * registers for the current function, but the stacktrace is still printed
> >   * properly.
> >   */
> > -1003:          ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
> > +load_lr:       ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
> >
> >                 tst     sv_lr, #0               @ If there's no previous lr,
> >                 beq     finished_setup          @ we're done.
> > @@ -166,8 +166,7 @@ finished_setup:
> >  /*
> >   * Print the function (sv_pc) and where it was called from (sv_lr).
> >   */
> > -1004:          mov     r0, sv_pc
> > -
> > +               mov     r0, sv_pc
> >                 mov     r1, sv_lr
> >                 mov     r2, frame
> >                 bic     r1, r1, mask            @ mask PC/LR for the mode
> > @@ -182,7 +181,7 @@ finished_setup:
> >   * pointer the comparison will fail and no registers will print. Unwinding will
> >   * continue as if there had been no registers stored in this frame.
> >   */
> > -1005:          ldr     r1, [sv_pc, #0]         @ if stmfd sp!, {..., fp, lr}
> > +load_stmfd:    ldr     r1, [sv_pc, #0]         @ if stmfd sp!, {..., fp, lr}
> >                 ldr     r3, .Lopcode            @ instruction exists,
> >                 teq     r3, r1, lsr #11
> >                 ldr     r0, [frame]             @ locals are stored in
> > @@ -201,7 +200,7 @@ finished_setup:
> >                 mov     frame, sv_fp            @ above the current frame
> >                 bhi     for_each_frame
> >
> > -1006:          adr     r0, .Lbad
> > +bad_frame:     adr     r0, .Lbad
> >                 mov     r1, loglvl
> >                 mov     r2, frame
> >                 bl      printk
> > @@ -216,11 +215,10 @@ bad_lr:           mov     sv_fp, #0
> >  ENDPROC(c_backtrace)
> >                 .pushsection __ex_table,"a"
> >                 .align  3
> > -               .long   1001b, 1006b
> > -               .long   1002b, 1006b
> > -               .long   1003b, 1006b
> > -               .long   1004b, 1006b
> > -               .long   1005b, 1006b
> > +               .long   load_pc, bad_frame
> > +               .long   load_fp, bad_frame
> > +               .long   load_lr, bad_frame
> > +               .long   load_stmfd, bad_frame
>
> Load_stmfd should get its own fixup
> handler since it should emit errors about a bad
> pc, not a bad frame pointer.

Yeah, I can add that.  It's a little orthogonal though to this patch
that renames labels. I'd consider more so a pre-existing bug.  Let me
add a patch to the series that gives it a new fixup handler, separate
from the label renaming, in a v2 of the series.

>
> >                 .long   prev_call, bad_lr
> >                 .popsection
> >
> > --
> > 2.28.0.163.g6104cc2f0b6-goog
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn%2BMGgYf8k9uAUT55vBL%2BERTjv%2Bjx%2Bt8SD9HO98-h2c0w%40mail.gmail.com.
