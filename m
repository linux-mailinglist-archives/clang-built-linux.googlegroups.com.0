Return-Path: <clang-built-linux+bncBC2ORX645YPRBQ7QWSEQMGQE7GMGJCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 938943FBD34
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 21:58:01 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id jq13-20020ad45fcd000000b0036c273baa23sf751427qvb.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 12:58:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630353475; cv=pass;
        d=google.com; s=arc-20160816;
        b=yLjWdgs402P3DpxXq+BYzib1ukhanvvdp5xWg4SI5kY8s1gCqe+Yaqha439ZMYBTNB
         7PijKDE81Lut4bsQtJLfD7HKB3PXDJ9bmLEE0QCCg2KsL4VFC+Y+JK6ccf042CXVK6uJ
         OFsiVRmjYQLgzL+w9Q7IkYdIstdtILAoEvNXpCG1ljo2CHWSHFBJylluTu8AejA9M3Oa
         IE5aq+80FQbM4QUj111vvM4l2A17YikgC6EaYApe3/fskgeiVf0nxiQ0I7ABPC+D9ral
         /woDaluKFRTmechLOPc85VzHfUSHo3L2LquUjGMGzU+oeTfDMTYiGcmvMTpWbn3z+dgz
         tquA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JjbJpUJkMgDYG7wRX9Vg5GWBUlQFSPRx+nJMqpzZBj8=;
        b=JDWOZz1uh844lIu1+0ZXTPxp84jsnPR5XJXWDlgYeVPWXe1faxuHIBEucJGtnfg8hB
         QImcjT9ij+0qMtN7dZG3nIgSLkxnOHKuwez3o6d4h5vLV1+M4Ha0HI7Qucs2+0P3roSt
         jOa/xX0joagDMzRfsTkx4MDa2aQnuS+2XOcDYZILcqQTS2QRBGVfZC0bYkPjkQoNq00T
         X0pjHsfqeVljspGVtz2CoxGtQPHibVSwXjHeo49eXRkCpyvbjrOt2cscfP7oAVA865Pp
         ZgWRgOxkLmwhwttuq8Bl0srNB/OHQT7VzZeuMd6N++4wg5dPGPZBwIluz0wChp/NmkrP
         AP2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OGS3yhWX;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JjbJpUJkMgDYG7wRX9Vg5GWBUlQFSPRx+nJMqpzZBj8=;
        b=AqyjIW7+gfe1odau/NqxocFFzLl8GK8lNzbyUwk6r7cy/bM8285ef5jkN6R8DbRtz0
         1/+YbRz8C0QMMG4kgulKAHs+LgKkHiFTX3cXkyBgJEi2eZd4DMrRtDVx8/m9slZ5jP26
         R1NRZObQRpUYP9PWQREEaqpOrRZeDwK8IjdrhbprvbRokhFdQLbxUTEisRzpWeo/J2AN
         iIG8/V0Zb/sgnTt6AWIZhSrRqpSjupfw4cSGphfeTXPBUCYtFd5Y3x/72W/Z5Ypb20tx
         /uuDn+AHj2iggMDmQbZADAU+givB3Py7v8qJJ+luc5ncmX0pSNPrt8uKFkdlKT+xW7Dm
         XOGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JjbJpUJkMgDYG7wRX9Vg5GWBUlQFSPRx+nJMqpzZBj8=;
        b=FyQVsJD0R8qZBeEtb3kT7jXY7OxT7aNAsCv2N61AinGBlkeEET6v7Iw7DoazXOQiBt
         G5WQgx/8rI6hEtD7UGSzZNOkUm4ULjwqqiNDW5CG9G2bPPIZamFsHPTxyFQKwcMMzGBb
         IWHteqdHGKMj1hMduEOb3GLVkUUWOPW5NH0wAEhIMxZF0+9N6824kmhR+FeZkTytpBr8
         WMjlrm5darR5Mhainz5Z6SIGKxuKICKidQCzRvT/wUsOamBEeg6jvWYkq+xRlMFkDcJW
         X9lSx5rxqG5d2XE/0MmE4TOlzwRnJVqYI+tLoAvpepF61oUuRAvTwKrsaoZE0RD3b5eP
         NOtA==
X-Gm-Message-State: AOAM53333LrSf8iRjYgwsxdfprl98SWZgUuKypFb23UUUWElX26Q/UCY
	0NiWnDWz5SJ/zoUnveamW7A=
X-Google-Smtp-Source: ABdhPJzLdT0bXZLAEPrd28V76mIobbNGtFB1/H8681zOKNM1e/hDsgLsfDOeVCJWkjMMNQaE6o/X1g==
X-Received: by 2002:a05:6214:1843:: with SMTP id d3mr25517617qvy.10.1630353475534;
        Mon, 30 Aug 2021 12:57:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f4c6:: with SMTP id o6ls5290288qvm.7.gmail; Mon, 30 Aug
 2021 12:57:55 -0700 (PDT)
X-Received: by 2002:a05:6214:250f:: with SMTP id gf15mr25148469qvb.2.1630353475074;
        Mon, 30 Aug 2021 12:57:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630353475; cv=none;
        d=google.com; s=arc-20160816;
        b=Fx4nYntgUwXqDY9Ra4g16WMN8zkt2knXH9smpK9JzFiSnMLexUlZ6G8DZ3WtTD5GJ4
         9nKBswtOPHY/RZt29fbxOmFoMqxs8MOq9yo6e8iDknjIDaAFYqtasqHrzCKC71Yab8wa
         b2p9YHyxNvoiKfqpHlu20RqIiDEYC0cbzBMz212Y0BXn0j+40fmLj4wUQU5sr9S0iidt
         y7R+RjXPEu9Vx45vh+Bv1a55XJHx9k5vLM+Nlyo7evBADQlZLAauMIpkkSly0ZoYVTQ7
         lFM6JodB9MHEwj/0LyHr5yo6lyn1lMhGHf78/VL2y3QQmARu4x1VAzH8ky/GytDDmX/T
         dWIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E4eWYvLXqtDCW55gS9rY1AWkuU5oblAvUHBbE8tFwPM=;
        b=pccU108PqcCJ5eI1o2HQQj4mvgaHMoWPVI5jSx1pTTtfsspuaBhg626PR1lZafH0Cs
         sa4eLLlUftba6dyvPGKpLS+UdXwgemtiW+CH+6YKN6JEkBdvwZzMXL76uQoipmBfPl2c
         Mlp1urZMxZA/dwzXdYDrZJ2FYf2Lr8kgo8eFuN5UgTMLbNWjb2oOaHPgfa/xQp1Fo25w
         QVSue7ZKX6qhltUhEmBoUnx3LbKQtHHb2s8NYuXpUiCIz4RDYYtm4kGAc4rm0zhPvpjB
         QbTofZbKQWzqPZW6EDa5iOiSfwFfTDCuU9sCFvels0MH3Mjf4hkjINsvY6aJK9hl77p1
         bW+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OGS3yhWX;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id 6si1100512qkh.3.2021.08.30.12.57.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 12:57:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id f15so30451146ybg.3
        for <clang-built-linux@googlegroups.com>; Mon, 30 Aug 2021 12:57:55 -0700 (PDT)
X-Received: by 2002:a05:6902:703:: with SMTP id k3mr24784014ybt.47.1630353474553;
 Mon, 30 Aug 2021 12:57:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
 <20210823171318.2801096-9-samitolvanen@google.com> <e33bdfc8-6de9-0e91-eec6-39e6aca61758@kernel.org>
In-Reply-To: <e33bdfc8-6de9-0e91-eec6-39e6aca61758@kernel.org>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Aug 2021 12:57:43 -0700
Message-ID: <CABCJKufsdcfdSQ4JMx1dw1HXgqk4rtqGRoHMUdK6r5cxzrEg3Q@mail.gmail.com>
Subject: Re: [PATCH v2 08/14] x86/extable: Do not mark exception callback as CFI
To: Andy Lutomirski <luto@kernel.org>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OGS3yhWX;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Aug 26, 2021 at 9:56 AM Andy Lutomirski <luto@kernel.org> wrote:
>
> On 8/23/21 10:13 AM, Sami Tolvanen wrote:
> > From: Kees Cook <keescook@chromium.org>
> >
> > The exception table entries are constructed out of a relative offset
> > and point to the actual function, not the CFI table entry. For now,
> > just mark the caller as not checking CFI
>
> Does this *mark* the caller as not checking CFI or does it actually make
> the caller stop checking CFI?  What are the semantics of a __nocfi function?

__nocfi disables CFI checking in the function, so in this case,
fixup_exception can make an indirect call anywhere.

> > The failure is most visible
> > at boot with CONFIG_DEBUG_RODATA_TEST=y.
>
> What's the failure?
>
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  arch/x86/mm/extable.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/x86/mm/extable.c b/arch/x86/mm/extable.c
> > index e1664e9f969c..d150d4d12d53 100644
> > --- a/arch/x86/mm/extable.c
> > +++ b/arch/x86/mm/extable.c
> > @@ -155,6 +155,7 @@ enum handler_type ex_get_fault_handler_type(unsigned long ip)
> >               return EX_HANDLER_OTHER;
> >  }
> >
> > +__nocfi
> >  int fixup_exception(struct pt_regs *regs, int trapnr, unsigned long error_code,
> >                   unsigned long fault_addr)
> >  {
> >
>
>
> This at least needs a comment explaining what's going on.  But maybe it
> could be fixed better by either having the extable entry resolve to the
> magic CFI table entry (can this be done?) or by marking the actual
> indirect call or the type of the variable through which the call is done
> as being a non-CFI call.

We can avoid the __nocfi here by marking the handlers __cficanonical.
This attribute tells the compiler to rename the function and point the
original name to the CFI jump table, which allows addresses taken in
assembly code to also pass CFI checking. I'll change this in v3.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufsdcfdSQ4JMx1dw1HXgqk4rtqGRoHMUdK6r5cxzrEg3Q%40mail.gmail.com.
