Return-Path: <clang-built-linux+bncBD4LX4523YGBBEOIZPVQKGQE5NWBV3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 93267AC2C1
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 00:56:18 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id q1sf9484597ios.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 15:56:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567810577; cv=pass;
        d=google.com; s=arc-20160816;
        b=XwtjHnFCfa4Wq/v07phiybXHRhMB9Cd/rBkSeH+M3TTzOLsPNT3wbMUuSzzj205uMB
         bTG7rZkJ1Imj4Oskzn7KD0M9D53Y4JGSn56IbuCcK/N6crPCN/Bpcm6KjkvcZ1uAzNhJ
         /41OVocVbYPy2s3Q/wdcPSGFST+KYld5a0pYzkhYq+iZIehZUlUerVKtqyYNVJIsFr2O
         HeYT1H2diNLSEMoamMnHEGGbbapluaEOIXQiobuStqyfKZPYRG2FnTEkAsBnsRvk9IMx
         GsUdn9CR6guVkPYxwu/gEYeO/18LLoyrxwqYJs6U03d7zn/U1vubxLKRrWprZiXMPirn
         0y+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=MAlWL+9hQmxiNIZd08NXc+Sz1ZItk1cJ7ROSbpfbYs4=;
        b=S3TU+N/wXlSV7Z/FgtS3ymyiTBN8aWNe0LhpnKCLcCNewflqkWzCJ9uQL+r8i+vC/h
         gmKdjgyO2xuLXF6cH9bN/0Vp3BzcOhi/2NR5nwwnXvyV7siLlPDz7ansMYybJeBnTxC/
         ROZGP3aQNxTM9BclX6JKm7YoukYfto/Z6+4IA9FNxj/drvTKaCjY4NOA2nTm1mAHgxWE
         zlXDYT6QiiaYMYWmWm3fQyUdbloZ/CK+qbTJVbFi80qpAI+v1Jc2MGAKkBDs/w1FGBuN
         ppNSXZiphYomKFh/QVyvr41XDiAeMkBuUYIW9bnT3jy05MjkB0W5uiDHFvVrjHFyz9sl
         0AAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MAlWL+9hQmxiNIZd08NXc+Sz1ZItk1cJ7ROSbpfbYs4=;
        b=B50yZdXvI7gBGGwz7qv5Oln1d0DfYN5UkV1OxAqglpV0LRc76C6Bkj3LWv5dQnq2G/
         UYRc7FdWXs/jAYuDnUheA2EHITdgTMRL42ivxMqRLKKfY9bCJQtSw5rQkLijgNG7d3vw
         YcFoe2yib5tAeCOUqwa5XVNvg8vGKoY3ZjmW5NXzy+/uhdbtURlQrcJUJ3MV9+Ps4bRH
         pCljw4xEa5p8L1lm7h8SzpUfgIqFz0JXa0WOHKBp9/fUupPxexpGer0ZEQHU+Mm0NsnK
         P6hZlJUlyi8KexILgD2ccC7oquE6834Nom4P0oabgWtOCwbW/a5B4XtUmwzHadI48ry6
         7aZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MAlWL+9hQmxiNIZd08NXc+Sz1ZItk1cJ7ROSbpfbYs4=;
        b=Br5o8OoIN1d13pHswmQD2IOZ14Tb5s1F+n4TE+cC5I+FY+4GXDVbt4hujZTwy8WCOT
         gODkqBXMpATRAHkXZgv7sSmNIdxeQe8856fHCzJQs7vrFJuDXLFuSUp8Rn2rRhujgC8O
         qeTP8bJ9tjecEvZec27Li8teZMqBin9XgOEEGbrFSGBSWF2vEGbdIVYM0xNdFTe3Qv++
         6Av6LlS0ZQADJ+Gd/fQiEjRpBRKsD+UZWRDYYxzSykGmE+Awr7JCskxVnh83LAr9hHZg
         yijVJAgjq6uCtmfqnbmWZm2zdL809Rsl6PS/C6P4SxRgsWTH9S5wV+T3U8QYwQHKituQ
         KPeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWqf11GNulR27z+cxGmtuZLpPFMBGTJIaOFG1UYQwzorWbj8zXb
	AT661tSlOcnLX1oTmXP/WUc=
X-Google-Smtp-Source: APXvYqxCcMtA1rmw/CEztyd5lVho1qMGw/dhmXxeFERKRYHYT5Gt0CNEmt4BRtYJpfOZQJcjkHddyg==
X-Received: by 2002:a6b:251:: with SMTP id 78mr13472064ioc.23.1567810577394;
        Fri, 06 Sep 2019 15:56:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:c9c3:: with SMTP id z186ls2070423iof.14.gmail; Fri, 06
 Sep 2019 15:56:17 -0700 (PDT)
X-Received: by 2002:a5d:91ce:: with SMTP id k14mr1548959ior.95.1567810577093;
        Fri, 06 Sep 2019 15:56:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567810577; cv=none;
        d=google.com; s=arc-20160816;
        b=VuvLV62wbmN19YF84qlzxTVADNvB7oj/Vzlj+oNnCHCEJ5KpxsPaN4SShMcrVV69z+
         TxL40g8tTVZTL+jkJNgNrhggqia0IKABCYHus2WomyXGrsY/eFwIvJto/ov/efZZmVnB
         2HXWQE62/uYAh0vyoalZZogZ4X7WqKfpOUupfnZtbjefHhImXzSGnF9KLxBjwn3dmADD
         9+NbgqbjegVFs9zQe4CcUX/ywynLy50xlJPz5ij2NlBnVkjVhDdAwKeyhiILTB+/4W9c
         aK0DjjBc1Pi52qggr6NjeOdP4C0WRo5c/ou3UGKjrLWAEuaOvto6WGMWnbsosewF805+
         ZkoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=oEoIEpJE1CmfRy9elxBkOerhMuJqsODx+oY7bZXOIQk=;
        b=LL3+glfFqO4mBoKwCM5/5vJ15Kh8Mb/gdxlfyRaSR8fLVReWhyp94ANJFHrGcOBaas
         IPrc5H5FlZXTzDIZW01OmnvTDDSADXO96B63COAVqO0yrANYxiV3AHzGTaom1cUJ9iTV
         FeNBaC8bT9Vdzd5rZIc4rF74C1cu+A963YOnhViVyhHOVgAmn/k1pApL1xpWzPABjScp
         MM4wzTeO8iIVMDpT4VNcSXHvKIeQKzg22E6KtGN3Zys/ykRao1kHpGj/MCYIzERJuzer
         mBI41chfe6HJ03yVK7IzLd1KJ4mHCFWCoShxD82csOzLXTQTEr69qua+P6CaZWMEyWx0
         3bdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id b206si434451iof.0.2019.09.06.15.56.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 06 Sep 2019 15:56:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x86Mu8lf026379;
	Fri, 6 Sep 2019 17:56:08 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x86Mu6LQ026376;
	Fri, 6 Sep 2019 17:56:06 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 6 Sep 2019 17:56:06 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jakub Jelinek <jakub@redhat.com>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "gcc-patches@gcc.gnu.org" <gcc-patches@gcc.gnu.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2 4/6] compiler-gcc.h: add asm_inline definition
Message-ID: <20190906225606.GF9749@gate.crashing.org>
References: <a5085133-33da-6c13-6953-d18cbc6ad3f5@rasmusvillemoes.dk> <20190905134535.GP9749@gate.crashing.org> <CANiq72nXXBgwKcs36R+uau2o1YypfSFKAYWV2xmcRZgz8LRQww@mail.gmail.com> <20190906122349.GZ9749@gate.crashing.org> <CANiq72=3Vz-_6ctEzDQgTA44jmfSn_XZTS8wP1GHgm31Xm8ECw@mail.gmail.com> <20190906163028.GC9749@gate.crashing.org> <20190906163918.GJ2120@tucnak> <CAKwvOd=MT_=U250tR+t0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw@mail.gmail.com> <20190906220347.GD9749@gate.crashing.org> <CAKwvOdnWBV35SCRHwMwXf+nrFc+D1E7BfRddb20zoyVJSdecCA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnWBV35SCRHwMwXf+nrFc+D1E7BfRddb20zoyVJSdecCA@mail.gmail.com>
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

On Fri, Sep 06, 2019 at 03:35:02PM -0700, Nick Desaulniers wrote:
> On Fri, Sep 6, 2019 at 3:03 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> > And if instead you tested whether the actual feature you need works as
> > you need it to, it would even work fine if there was a bug we fixed that
> > breaks things for the kernel.  Without needing a new compiler.
> 
> That assumes a feature is broken out of the gate and is putting the
> cart before the horse.  If a feature is available, it should work.

GCC currently has 91696 bug reports.

> > Or as another example, if we added support for some other flags. (x86
> > has only a few flags; many other archs have many more, and in some cases
> > newer hardware actually has more flags than older).
> 
> I think compiler flags are orthogonal to GNU C extensions we're discussing here.

No, I am talking exactly about what you brought up.  The flags output
for inline assembler, using the =@ syntax.  If I had implemented that
for Power when it first came up, I would by now have had to add support
for another flag (the CA32 flag).  Oh, and I would not have implemented
support for OV or SO at all originally, but perhaps they are useful, so
let's add that as well.  And there is OV32 now as well.

> > With the "macro" scheme we would need to add new macros in all these
> > cases.  And since those are target-specific macros, that quickly expands
> > beyond reasonable bounds.
> 
> I don't think so.  Can you show me an example codebase that proves me wrong?

No, of course not, because we aren't silly enough to implement something
like that.

> > If you want to know if you can do X in some environment, just try to do X.
> 
> That's a very autoconf centric viewpoint.  Why doesn't the kernel take
> that approach for __GCC_ASM_FLAG_OUTPUTS__?

Ask them, not me.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190906225606.GF9749%40gate.crashing.org.
