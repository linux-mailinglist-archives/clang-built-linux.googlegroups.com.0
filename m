Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNGIZ6AQMGQELEC3T6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id EA48A321DAE
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 18:04:53 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id p19sf8601189plr.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 09:04:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614013492; cv=pass;
        d=google.com; s=arc-20160816;
        b=rHzAR64/BKs9uXp9m/lzJnqSxwl5uR5/S3FzBpMO1xtEH3Y3bV7ptumhGhLCK0W/EG
         pLcaZM7KLM+f+/QASC24C1MuSas04tQq+s1zxYRZWQRaq2iCMOyVzauBpoAiLTTmRh1/
         96kFfUzZ/V0PsE2nAmrHLR0mHvgFRk+D7KTWRAbcY5t2KoHCPI9giKnaZ/hJabG/eHb3
         IPqEnTkvcKhwg4C7oq2Zbyk/pe7ItGCak9qRhYyS9zOdiRXWowTf6L/fBjDHe5p1K7cG
         EtiB7t0iDG5ggvyVyVLKdW71ftp5KBQp9cEX4iifQQ2/STE+AXM0WkN7rHDwCVsq4Wox
         IwCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FKQ5CD5EbtMoYHdQCWROap5lJwiKn2xult/DxRkhITo=;
        b=HrL6sBOL0v3WfD32jzFcDwjWoV6mB5Bx2hLO3sDeWTxAhyIS/XGKYbCkHqL5qKneIh
         vTpyFtTKzPTFd+GCvoCBNNP828whiL0+t8V/Whq9y7/hnuIy1UJ6Ke4b5lNlEauwdYhV
         cdEzbnyLtKihhpyAVzGqJPs+eUml2YbfOS3p3VfVJaBYGrl4OlStkY2x6GiAznTB1CGD
         FjPbLnhto2m0yrTdeBMTst3JiEDZkRNoNHlXBPynSHkqo82Q3Qw9AGyAFdP6C0QVDRQQ
         E4ZT3IyL2T/w1mvYd7lwiphBUzRFJ2991y3wuwWrWw/fkg3jEnmEm6k3cpe9IjzJgMw0
         cLRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FwrRkU31;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FKQ5CD5EbtMoYHdQCWROap5lJwiKn2xult/DxRkhITo=;
        b=S4dw3V0F53LxC6cthzBV9yQrxxFmiAihfUIjRTINcRkHYS9zik29llUMHPiY2ll7+a
         Yj6YZ73CngIASb4SaxQYCTXK8cNfyWr5dBsiZqOS0gO/oZiUoawe6XofDe7hCVZg+KaI
         D9D7Qy5S4GcRKrTih69bnKD7fsBHQ8KGlG0XeHkadt+sj+85VxjFfXaKqf8ozgy8nhzf
         qTC8rT9iijAebPGyBjDemskU+QcOTz7Wynh5RJOwdn9ukFY8/agMDKAmS86sKsxaX2Pf
         EjVVHdIrWGD4M+9S8JeKcJMr8qbySUoewRqXuknpvfaP1ueC+zNUDyEn/y5/jNQw1iJ9
         rLUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FKQ5CD5EbtMoYHdQCWROap5lJwiKn2xult/DxRkhITo=;
        b=l82EsWunA22MEawhM3ydRtEb+d9wlbHuq97CUuUCwy18xpNFfM+VPi6hQDwiSxs+km
         0vjYxOC3Vm5VBFUBpbxpLlSZ/4xhe9fvblDSS7F23zEefFODInBsmQzRyOyEToIcfrIj
         pcFLDLenpaLCWdLM3P1BX85N4cApxRgp7xj3zAfQorO8H87QLu4oYx0D2kj0p2yhoK2N
         tPbak1/Nml3ZODFM2b6ri4j/9us3nWRM5PDIDVeTwiV9CaDo+V4HnunoLrLKek630ioG
         ib8vdw+q454DgnpnbW85AAJqqhWxW8EHqOUwzx82Hiz6dSMUbR8EGaP9J32C7+MuG9Hg
         FuOg==
X-Gm-Message-State: AOAM533m2bXAL63MR1LNNnrgGIHBLRfEUOTPsN5jhvznhROghHgho+vw
	+xXkvZOEdQDnOGIa0X65A8s=
X-Google-Smtp-Source: ABdhPJyv/uD3tZWBQFuu1cUUoSIb4wshhychuXWQiDGj4pjHNdFmqCryTCW3h15decKOmxGbNwodoQ==
X-Received: by 2002:a17:90a:a4cb:: with SMTP id l11mr24653979pjw.123.1614013492710;
        Mon, 22 Feb 2021 09:04:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4a87:: with SMTP id lp7ls4657675pjb.0.canary-gmail;
 Mon, 22 Feb 2021 09:04:52 -0800 (PST)
X-Received: by 2002:a17:902:7b89:b029:e1:1b46:bcec with SMTP id w9-20020a1709027b89b02900e11b46bcecmr22878994pll.5.1614013492046;
        Mon, 22 Feb 2021 09:04:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614013492; cv=none;
        d=google.com; s=arc-20160816;
        b=kYbirXRFmR2w7MjQ2aA/vBj9VtFYNLooJaxlbgAvugv48lzvARbF1bKiVJpPLTLeqe
         u7vV7pnkv1PJR+oGavnbL9B3stP6etx85ZLkfj36UExpeu9/3CSNPweX+Z6ddiFg9EhI
         44fcUpOkkg20+qP5IiOa2OIjsEyjalQ7g22fcxUpqp01cubGcpZ8uR6KosSOgAArSDR8
         QfIJuJmBuXHFVMFbUVgsZ6s+j3HCY20DNVBM5pPp4NF+DAHEDWu9Bx8GOeqTIwuf1CKp
         lnnsitbapUYbAdNJaAGCV9DtQSmAzMpsbgeKtwFjjH9cRsuAGmR/xtcSXccTBC4ODBVA
         AD+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z7OgXqZeLnUH8RQA8mRalhelxea7D0oLKL6AR8A4Y8M=;
        b=zYTuaUZkSanN6HCSnBMYL81TeFieOHUutZ77auzw6e9xkWb1Pn5bRkcRwVcnvW+pi3
         89AivyRJquDvKpfGI88olXoYWJVUDRe0tOzEgkKkeKNdcuuCFaqUFQv41EEv/cvGCOdl
         HDX3Psb4QKgsa3gDDAWDUA3cKsK7Yeu43VfbE2RgKlmU/vDlEjirYGHoZNh5wuCTsmp+
         cuWO6+GLxr5i5QfFoGkCkBnFmqIk6TUQ1Tuluj/4n37YZhExlZE3AgrTPQgiOxYAjH3i
         144+8PUIQbwqx4Vr4kKehvodIrUE7jhVW+FYCuvQPkyK/9rwbmpUn9SkVPg8XZdPpH9t
         ew7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FwrRkU31;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com. [2607:f8b0:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id n2si1169066pjp.2.2021.02.22.09.04.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 09:04:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::32e as permitted sender) client-ip=2607:f8b0:4864:20::32e;
Received: by mail-ot1-x32e.google.com with SMTP id b8so12637867oti.7
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 09:04:52 -0800 (PST)
X-Received: by 2002:a9d:5d1:: with SMTP id 75mr16969345otd.20.1614013491235;
 Mon, 22 Feb 2021 09:04:51 -0800 (PST)
MIME-Version: 1.0
References: <20210215204909.3824509-1-willy@infradead.org> <20210219195509.GA59987@24bbad8f3778>
 <20210219205403.GX2858050@casper.infradead.org>
In-Reply-To: <20210219205403.GX2858050@casper.infradead.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Feb 2021 09:04:40 -0800
Message-ID: <CAKwvOdkV91grirj+1+OHongQriLYgL9v8m4V8PsguHecVyBwuQ@mail.gmail.com>
Subject: Re: [PATCH] mm/gfp: Add kernel-doc for gfp_t
To: Matthew Wilcox <willy@infradead.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Mike Rapoport <rppt@linux.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FwrRkU31;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::32e
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

On Fri, Feb 19, 2021 at 12:55 PM Matthew Wilcox <willy@infradead.org> wrote:
>
> On Fri, Feb 19, 2021 at 12:55:09PM -0700, Nathan Chancellor wrote:
> > On Mon, Feb 15, 2021 at 08:49:09PM +0000, Matthew Wilcox (Oracle) wrote:
> > > The generated html will link to the definition of the gfp_t automatically
> > > once we define it.  Move the one-paragraph overview of GFP flags from the
> > > documentation directory into gfp.h and pull gfp.h into the documentation.
> > >
> > > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> >
> > This patch causes a clang warning in basically every file on linux-next
> > now:
> >
> > include/linux/gfp.h:20:32: warning: redefinition of typedef 'gfp_t' is a C11 feature [-Wtypedef-redefinition]
>
> Seems like it's also a gnu89 feature.

Is there a preprocessor define when using kernel doc that you could
guard the redefinition with?

See include/linux/phylink.h which uses:

#if 0 /* For kernel-doc purposes only. */

to guard definitions for kernel-doc.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkV91grirj%2B1%2BOHongQriLYgL9v8m4V8PsguHecVyBwuQ%40mail.gmail.com.
