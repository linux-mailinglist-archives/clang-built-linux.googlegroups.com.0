Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB2MSS6EQMGQE3YTD3MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 591583F6E82
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 06:39:16 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id n14-20020a5d824e0000b02905b010868ff0sf13669476ioo.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 21:39:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629866345; cv=pass;
        d=google.com; s=arc-20160816;
        b=XdPRzDX31N3F+9HKx/JNofrlJKA2ZG+0CkZNjqw7vMrNr43IXpE4tNcTF8Ly7eADke
         4LQ97ABet1PDfHOSv2i7H2Zf/YEvolQzk6G4m/jR11uNPod/hEx2Ifc9SC350z5S5t4i
         Ydb5yBShZfsi8fLtBhfl6JXRiSOltSj33ysXNEwgEwObnJT0W0oVfBZb1OVLmmn2rrG0
         KgxmpTyNPPNBu1oZ/Iq2SN5VfP+EeksZEAWXQBt8WN19CWpyWlulP2PKI8Nki0aWdwBN
         NVqblPEVP9YqZgUuodEsfmGl/rqFmK7yZVL4Anxrp4GOM8yX+U0NLG+d92PShbqmnZS5
         jJQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=L42v+3K4GSESdaPW+u+QdUilK6kB8RvnYLVk4rAUtuU=;
        b=myCLTs/u4xlrME59OXTqNIQBTRaodZldUjGJL5wMOCHVpaezToKXo6YBbB7Z4OvafG
         rDdyA1+L0ITBZU6UmRTeR7F4cbOrxV6/ajTpjeVSuKb4ZHCBad4kapTLM9fh7CISHhs3
         dKHVYiVe6m1HdA9cjYClS5xcM8F5bva7LTDW3hMK/6NyZohknji9it2H9rFsc7XNkYVR
         fSueldejpK13uUrT8R39CMjSw3tmoikcrRuihOPuwpBI/p6uNyA5cnDu59pEFbA/PhbY
         N/RM0TF7r81mlshr2fozudwk/CW2WLDrQ9MNg2iPzjvF3EOgkp6QSmq8fx6/1IcZGH3h
         hbig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="HkNK6/Pm";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L42v+3K4GSESdaPW+u+QdUilK6kB8RvnYLVk4rAUtuU=;
        b=qPt74ijX6vcBRpaec6SNxKOHhGxCy+V4RaTviWVweOtyZ25QJ97JPeng1aH4FZe5SG
         sALdsoWH8mzDhMiXy6XBzTGMUTsnU8dz7gLjby3tp7vd8EcnmV+GcuofhNB/XT8MbUoI
         QkVXRoEVADYGPebmjnnUtNGrAnKuH4/nBKJVd+qFKP3B/nXWb+LxryynsL8hhkFycc23
         QaQeLMIs/CItVXJZcyO9GgmXuKX5G1ei7GmIEkFGfzU5kpD/XpHiHcnGnxMHRtsB3IlO
         +b6Rf7+ngTasU2L6NYN6xKoXM2rhOU7vSTx5ZmrGxhRtjxdlnXsDMnBITvbitrOYcHTn
         OVrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L42v+3K4GSESdaPW+u+QdUilK6kB8RvnYLVk4rAUtuU=;
        b=bFnC41igL6tToaBCCvAquvj8ts8+MPG4rl8eotRwh+Blirr6hdjF9wkmuBI5hAhpyS
         iUN0aQ9dZVKWK8aIS1K4OB+EQDPHmpHN0GY+xjhD2+iq2tVMeSI+SwKD5J6Q/3KxfhVw
         19GnpEanC2PYs8d69P9PmyJIZE0h/1ZbkUPAjFlNIugSBB9p9nqy8P4cWFB+qznVJ/XJ
         CJl4DnZcbDSaOC8qMQW08gxWwt9Q5VtKokDemHqxwrXnSoZBMd/1BNHX6iaXNTZspntU
         t9nsNHsgP+JJf/d+HtvFb5CDVCjdaFHv5xYkPZJJRB/yn3c6Q8jlesi2MEi9YelqmxBJ
         n/zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Uv1NgSvHOaChn7ZVQ4hxE8Y2cYqI4cFAQ+4aZ9IJNk/a5sFar
	m3ZtGSy0qf2eAWhscdHXNSk=
X-Google-Smtp-Source: ABdhPJyhQFisuc+2p8EGD8K8/Bl3bOnZ9H+7/0vg71E06EIR7RTXM/B/rvH3sei0uVgcSR25O5OpDg==
X-Received: by 2002:a05:6638:2213:: with SMTP id l19mr33553048jas.115.1629866345147;
        Tue, 24 Aug 2021 21:39:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:81ca:: with SMTP id t10ls158560iol.0.gmail; Tue, 24 Aug
 2021 21:39:04 -0700 (PDT)
X-Received: by 2002:a05:6602:2cc5:: with SMTP id j5mr34349550iow.156.1629866344787;
        Tue, 24 Aug 2021 21:39:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629866344; cv=none;
        d=google.com; s=arc-20160816;
        b=AALo9e8M4J54pOKTgwDsix6+4vqAxjIWvOcuZJNBkLCqb52fARpvvTLI4vgyu5T/86
         NoBrqodljccBoM4utYiDVb8GZRkF4CeFIqe65Z2H+Fb3oiCJWwcjDcfz8ETQnNk4RVik
         RaUgXm5CxYCrPBT20H5napmnNJCNIs+7PkJsThRM5Vxral/UHcu+4zdL/DC2uwy58IDZ
         s+85ThQVuZPwVny/Frn+5tGtdmmAzf30wLW9lr/fd4K4YXxyo927f6aRqCqIwt0J5myk
         Gc62jdGUqIkJX+0hbS/3+Xq3vcgQGP4d9VerRvS0s3xBXKZHWakb8bU5XEhSUqKHf5Qz
         JEvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=ghMeldz2FSJgsGbHpb2xXDwEpCxBtlcCW3CPZ3H7dro=;
        b=I79LCMbyrDsvzLe3BbUlrsBHCGbbBDG5rPjzRxIBdi57xEVf7wiQ9cUET4/d6GvRSH
         3D6qaYuUBO04ou6Qucv5rZBKwVLvbFQ+hrTv7CkkSDkb+ow07Ex/Lw+nuVfLAowGTXX+
         o+jkXDxiD9fBb3nrrAzcWp/4p3wtLskhyrxe+c00M6bb9J8M7qFOKKfgKq93ymy64O/M
         0TEz/gMc0evEh49ntmSVqJ+1qH3SENQ0sB7Wa4zhP6KMP0ZdIJRV+wx28gI3OdvM28p1
         4sA76QProjBYXRcHVF+/w8oM7ymB8eR2qiyEFd7pv7CAvVI+m5v4estALWCUNr9klv+M
         FYHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="HkNK6/Pm";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id o21si122693iov.2.2021.08.24.21.39.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 21:39:04 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 17P4ch5q015104
	for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 13:38:43 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 17P4ch5q015104
X-Nifty-SrcIP: [209.85.216.52]
Received: by mail-pj1-f52.google.com with SMTP id mw10-20020a17090b4d0a00b0017b59213831so3314773pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 21:38:43 -0700 (PDT)
X-Received: by 2002:a17:902:a5c5:b029:12c:a867:a839 with SMTP id
 t5-20020a170902a5c5b029012ca867a839mr36578125plq.71.1629866322644; Tue, 24
 Aug 2021 21:38:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-5-ndesaulniers@google.com> <bc8cf0be-9e51-e769-0685-2594802eead0@kernel.org>
 <CAKwvOdkO3ax7gN-n5OJO7-320BVK+B-JDs0v=3vZs9fPezwjDg@mail.gmail.com> <8b9bf97a-8f6f-80b9-3bab-32bb525adf9e@kernel.org>
In-Reply-To: <8b9bf97a-8f6f-80b9-3bab-32bb525adf9e@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 25 Aug 2021 13:38:05 +0900
X-Gmail-Original-Message-ID: <CAK7LNASN2YmH5kxzx8XMxM5UfJOEc9JJ0AWdKsP8=Fr9wqSN0Q@mail.gmail.com>
Message-ID: <CAK7LNASN2YmH5kxzx8XMxM5UfJOEc9JJ0AWdKsP8=Fr9wqSN0Q@mail.gmail.com>
Subject: Re: [PATCH 4/7] arc: replace cc-option-yn uses with cc-option
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Vineet Gupta <vgupta@kernel.org>,
        arcml <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="HkNK6/Pm";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Aug 18, 2021 at 10:40 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
>
>
> On 8/17/2021 11:07 AM, 'Nick Desaulniers' via Clang Built Linux wrote:
> > On Mon, Aug 16, 2021 at 7:05 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >>
> >> On 8/16/2021 5:21 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> >>> cc-option-yn can be replaced with cc-option. ie.
> >>> Checking for support:
> >>> ifeq ($(call cc-option-yn,$(FLAG)),y)
> >>> becomes:
> >>> ifneq ($(call cc-option,$(FLAG)),)
> >>>
> >>> Checking for lack of support:
> >>> ifeq ($(call cc-option-yn,$(FLAG)),n)
> >>> becomes:
> >>> ifeq ($(call cc-option,$(FLAG)),)
> >>>
> >>> This allows us to pursue removing cc-option-yn.
> >>>
> >>> Cc: Vineet Gupta <vgupta@kernel.org>
> >>> Cc: linux-snps-arc@lists.infradead.org
> >>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >>> ---
> >>>    arch/arc/Makefile | 3 +--
> >>>    1 file changed, 1 insertion(+), 2 deletions(-)
> >>>
> >>> diff --git a/arch/arc/Makefile b/arch/arc/Makefile
> >>> index c0d87ac2e221..8782a03f24a8 100644
> >>> --- a/arch/arc/Makefile
> >>> +++ b/arch/arc/Makefile
> >>> @@ -18,8 +18,7 @@ ifeq ($(CONFIG_ARC_TUNE_MCPU),"")
> >>>    cflags-y                            += $(tune-mcpu-def-y)
> >>>    else
> >>>    tune-mcpu                           := $(shell echo $(CONFIG_ARC_TUNE_MCPU))
> >>> -tune-mcpu-ok                                 := $(call cc-option-yn, $(tune-mcpu))
> >>> -ifeq ($(tune-mcpu-ok),y)
> >>> +ifneq ($(call cc-option,$(tune-mcpu)),)
> >>>    cflags-y                            += $(tune-mcpu)
> >>
> >> Any reason not to just turn this into
> >>
> >> cflags-y += $(call cc-option,$(tune-mcpu))
> >>
> >> ?
> >
> > Yes, you'll need to pull up the source; the diff doesn't provide
> > enough context. tune-mcpu is used in the body of the else branch
> > hinted at by the diff. PTAL
>
> Ah, fair enough. The warning is a little unconventional but oh well :)
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>
> >>
> >> If $(tune-mcpu) is empty or invalid, nothing will be added to cflags-y.
> >>
> >>>    else
> >>>    # The flag provided by 'CONFIG_ARC_TUNE_MCPU' option isn't known by this compiler
> >>>
> >
> >
> >

Applied to linux-kbuild.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASN2YmH5kxzx8XMxM5UfJOEc9JJ0AWdKsP8%3DFr9wqSN0Q%40mail.gmail.com.
