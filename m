Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUVFQ6BAMGQEGAAPWZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF2632E26B
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 07:42:27 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id e19sf749150ote.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 22:42:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614926546; cv=pass;
        d=google.com; s=arc-20160816;
        b=KIan8Fw5vyeAHUS6+DLrQol+Pf6ncq/lLG689wZV9eHwMOeVTOp+MJHDEb4XZSZmu5
         zPswMXaJAxFNIo10HdKJG60l0PHXo3Zgk6VGWQpiN6TVfOumtS+H7UAR5L6U0MXHM5C2
         3HldM1ZTMVCh5PusCpd60DX9fQQmjxXH6yIrTgXzTA4O4Biyf0iuXTnZ7WoFdOkUltbs
         R6lTrUT72jKJtJVV/Hps0tjVF1yoeh2Kxz9IyNl3Ycszoih0ihI4bTFTfiwHpjDrlFsu
         CEa9NUZzVXdfLxI+GTgeA3eva5pDXGhSO8s16GLvATZikTb0ipWTmBAH7Dz0wHkJQsxw
         wq2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=wayBkcn4Zkk/ljS7tpHTi8GpZ/XL+uD0nkXgjq11s14=;
        b=gDtEw1KFQngw78HPKJq7IsrCw2t8mNeeajLQD4ggDfbFda3tLsVyoICA1T0nsFQsEE
         t3NFiaJJ/b2minZEOvxZmKRRm0NNsirqwgX7W+SiYOfaPHlGM21uNIKUlhXBYGem2Alz
         gnsCbv5bcGZG+jQI5UdXrW9ex4RPnC3Vh9sKYlwQ01y8ZFeHT4X7T9a1vS96Q5CMiMkV
         fFZm61BHtao1QBWb6y3cjHOkF3+vZL6p4+FMl0FfSpWbxFlvTFd/TWjhDSN493sP2ycE
         2jcpGe5oEkZa/05mL9PwtFyN8Zfgk3kH7odqA0EuFRrVty5cn5AKUS9k5BnWPvlT+9iZ
         Y15g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=upFq2mWj;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wayBkcn4Zkk/ljS7tpHTi8GpZ/XL+uD0nkXgjq11s14=;
        b=i/hwoDHFM28EY3/BbLPXBNie9yCCvC7bInO4uqZFj9C37ocX00lX+wxg981ZiPTkWa
         kUwAAju3XkQmBl5bXoQj/jnrzql7/zYP8N1EcpQd9FzkIj5vkjPBe9YLV1mDm36CHf/V
         6S/f2ohGVagDBRWQyNx+TuFTFQd/SnUkntmwj6yzS2o5cYLiz5IBuEsSckBHGVBjTvY/
         eCdGUuwOnDjqD2Is6IfVZWjyA/cmH4b+X4UGmaBDIQAWRagMQWrRSHclKjS1muKJ3feH
         lGYZgiqKcnoa+a1TsM+GAbafmYLtvfViHkxaCEoQpYgxuAErOLZKeiaTRjXfcipaw/i6
         VWyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wayBkcn4Zkk/ljS7tpHTi8GpZ/XL+uD0nkXgjq11s14=;
        b=juHTEbKMUF8BlTMZKGhUqPqNw7Wfh9XkjMJneSFNndvoRdndzGSrkEMzx5LRgulMCL
         GFf5xlceqjMGlZW23YsnslWR1WJGIjG8m8fjkI1Nw3/cR2OZ5xAiFqjCYHDTQihJQS7H
         52/fuYBdhAVDdxYrn1Fx1jGcDlziQW/YsPf2eRacIEJ6+mUILfkqAsCeR7Pq8hqYIcFP
         u6zRcBfj2rNVKpWTXEW/VF8NenByXN7dXusYldNPPMuHR4P4W0joQdYIgIfMNT4ZNwQH
         uDe7S1kDcwOL2lQq9Bi0ChjvR9svcnzSe3gklx74dlXEebslEOdZQjUycF3LVbJXZaBE
         Mojg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vojWk+s0RoMMXCqO4I1S4XPDSb5cPGIHSqkfWFYa8uk3K6IDs
	7SmYqIY8T2t2wQ4o1zmBrNY=
X-Google-Smtp-Source: ABdhPJyuTVXMvg4CwV3MQ0SMvf8tXHg/7BvGnfWV55RTKTI21TCL9EeBRFerl2lzX7XJiegzsv7zvQ==
X-Received: by 2002:a9d:19a3:: with SMTP id k32mr6748341otk.189.1614926546545;
        Thu, 04 Mar 2021 22:42:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2309:: with SMTP id e9ls531262oie.5.gmail; Thu, 04 Mar
 2021 22:42:26 -0800 (PST)
X-Received: by 2002:aca:1b05:: with SMTP id b5mr5910671oib.96.1614926546216;
        Thu, 04 Mar 2021 22:42:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614926546; cv=none;
        d=google.com; s=arc-20160816;
        b=RzlT0htbcHm1zANHlIuYbxScIbw2drZGeyU20cC9vUy84nHhFCV+nVa/nreGRuW8Yb
         rS2Ec/GvjYudD/my3XgKglXQlGjHtjuBNDn1zHvaFKFL82LWS06y0iCB4ErDt1I9RlP8
         d5Z9GxqrulYB2+WdMYPxozhJEg+jkLaaWqX9U9IGsNYicThZ6WJ/z8i5SD7Ot2Mv0ksR
         qSrmDW9ghyOn9pUVAd+JVgVMq9I94uTsv6/Tkwpf3zVtUCyoNpLLySEhqLItM+AeQ72j
         VUwL7lHx6tu63h1xXxQtCAW1B1asR72MMxMfFh7o15HbiYjP9SsIrL4DcBZyJzElqvTs
         Pt1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=QKZEElj10xbGd/NNJdyWgOoxYJZM6VFwThohLXMmU6g=;
        b=qek3Jg6uAfav0WjE62s152x+wyt15YCC8rf+483JqL0/UE8tuimhrmmyRFa22hVUPs
         hU08BDqe5CtCVjF4X9Ft0nioeoZ7XomaAmTyjHmB59+H39UyjYGWdMc1wzmTqM4iJwIy
         /btnNz+3rMYS8D64VtgVyGFVlIekGx+1SKz7chMu8MaYql6Xonk+YjAgbv7dz4zw6VOZ
         N4kMrS65SMOtlsY9fFvYtPRtaolPB3lnLMwtUWgbMT/EYEfAvSWuUkdHkcEIwjJ10mTr
         89hLD9tLtBE50WUqURpZ7+dTwVPkP9Msys0/8l+yf+MCSODzPAokedztAoXPI4UFyI8a
         BQeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=upFq2mWj;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id x143si74353oif.2.2021.03.04.22.42.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Mar 2021 22:42:26 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 1256fx3u007958
	for <clang-built-linux@googlegroups.com>; Fri, 5 Mar 2021 15:42:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 1256fx3u007958
X-Nifty-SrcIP: [209.85.215.177]
Received: by mail-pg1-f177.google.com with SMTP id x29so701354pgk.6
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 22:42:00 -0800 (PST)
X-Received: by 2002:a62:1b53:0:b029:1ee:8ff8:c706 with SMTP id
 b80-20020a621b530000b02901ee8ff8c706mr7180886pfb.76.1614926519528; Thu, 04
 Mar 2021 22:41:59 -0800 (PST)
MIME-Version: 1.0
References: <20210303183333.46543-1-masahiroy@kernel.org> <20210303183333.46543-2-masahiroy@kernel.org>
 <798s9r5n-5nr8-1p1s-837-s07p72q72031@syhkavp.arg>
In-Reply-To: <798s9r5n-5nr8-1p1s-837-s07p72q72031@syhkavp.arg>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 5 Mar 2021 15:41:22 +0900
X-Gmail-Original-Message-ID: <CAK7LNASsCokxgsMiOWq1wPyzpJN8KNprLb0YMSWiC6phzkTAmA@mail.gmail.com>
Message-ID: <CAK7LNASsCokxgsMiOWq1wPyzpJN8KNprLb0YMSWiC6phzkTAmA@mail.gmail.com>
Subject: Re: [PATCH 2/4] kbuild: collect minimum tool versions into scripts/tool-version.sh
To: Nicolas Pitre <nico@fluxnic.net>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <nathan@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=upFq2mWj;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Mar 5, 2021 at 7:10 AM Nicolas Pitre <nico@fluxnic.net> wrote:
>
> On Thu, 4 Mar 2021, Masahiro Yamada wrote:
>
> > The kernel build uses various tools, many of which are provided by the
> > same software suite, for example, LLVM and Binutils.
> >
> > When we raise the minimal version of Clang/LLVM, we need to update
> > clang_min_version in scripts/cc-version.sh and also lld_min_version in
> > scripts/ld-version.sh.
> >
> > In fact, Kbuild can handle CC=clang and LD=ld.lld independently, and we
> > could manage their minimal version separately, but it does not make
> > much sense.
> >
> > Make scripts/tool-version.sh a central place of minimum tool versions
> > so that we do not need to touch multiple files.
>
> It would be better and self-explanatory if a script that provides the
> minimum version of a tool was actually called ... min_tool-version.sh or
> the like. Otherwise one might think it would give e.g. the current
> version of installed tools.
>
>
> Nicolas

You are right. I will rename it.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASsCokxgsMiOWq1wPyzpJN8KNprLb0YMSWiC6phzkTAmA%40mail.gmail.com.
