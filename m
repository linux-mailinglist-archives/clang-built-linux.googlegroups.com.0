Return-Path: <clang-built-linux+bncBD4LX4523YGBBPH23WEQMGQE3O5JEOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B003A402B22
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Sep 2021 16:54:53 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id jz9-20020a0562140e6900b0037795ee01absf15314802qvb.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Sep 2021 07:54:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631026492; cv=pass;
        d=google.com; s=arc-20160816;
        b=pa3qRiNc7sNGMabkmeSQH3MUv1FIJGx8RKyrtd/7s54yVOqNjM9LHJ5ZZCgu/1hpos
         xrZ9S13yugPBU8NqbB5a3Kv+zm1gsB7DZzMaYZ+4oLErBgHj2/yHIWJSCcXUzgUv4zdV
         PPYWPqi6BsOTkKpAxWgtGLLKGukgYMlDdgsF/VRAOs4Zp5BSWeuvviImd4wTWJVaLBDU
         AfCQYLmsTBIagjmKTrVGp6PDNv7HfckpXID2gC4OqPjCfygXZGdY6cefmkUrh8DnrroC
         QNvXVNCR/PLJ7F3QzBhxs1gqS/XzNbFtKQCdC43eisvigkFv3h+J+HmpbR2lDqTy3jKK
         7QTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pIlh9LNR3vlAn50cp0qrk7B38+LxA7LRXGcT+1ksMPo=;
        b=Jmc1IWsmV9yKnbrNmkayfdwaeiMFVIoq/NQOmN5/q1FJxaOeN+oGSt7iMVrFpSrwOw
         tuGaw1UzBFrKOsqUzWO0ESuk/1yomT8pDdGoN/i91V9rM+f8pzc2kVFI9m5zIxTwwGdj
         +lhggnQ2sel3qvYoYOCzZb8v+OmguFiBnOYzOjFbfiBD/5To3qJsTwktyliGc62qQ1ZK
         OP0et868oAwU8kyvJ+F19GyBWy1pMayBg8ZIcpPB/PX6A7I+t5v/IMj+XzwlwH8aYMuH
         Wn+YyWm9+sxfo3dyS8zJAMniSch3IHYHXOYbXi/J2PcfIjWr0RLUbOsLzDomq7W44JEC
         dbzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pIlh9LNR3vlAn50cp0qrk7B38+LxA7LRXGcT+1ksMPo=;
        b=BiakIuAt8YwhtPwxseqSDvYqkU+Pga3IrzMPrbPxQMrDU/F8JB3vv15nMEIH7YS+60
         XtMfqytVFD5aUBrEasVtW2EWH0dESGneyWyrg6GKBMw2wY+kkkc+k+PUFnPd9vGjle60
         mrAnuLdFR9hJySMiQghrTAuiywgN5R3zfoElTlWMD6dybpXGYfg7QfWuB8t76YDzs83K
         jBPaRdEQ2Aete9a/vC/3HC9E+8FGSKBh8Sm+XD4VYprp2/rw61ZcLvE2Crv8/3cg8ZZz
         zwLDr1FXYlfyjE/TnC3cERyiODKYq+Nc71DXez7KgFeNz2qHw8oIooc7KUp+m3ejeOsQ
         /1cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pIlh9LNR3vlAn50cp0qrk7B38+LxA7LRXGcT+1ksMPo=;
        b=WXUtgFzuRjHkG+CeuQuChfd9XqJBzJLEASA9t8NSS/tj/45grPFqiJRroOcewtTZD6
         0THtHVkzLBdQQoC9JV14MkJCPXZ29iwUMLHQF3kc4/RqRcus76U6idljvpkEJx9TJUid
         jOJcwb5LsdpVkP9loIZCvJDyzo4kI2KINtX2EJmRn055Kw6LHAybPMAXWglAOPxSr9hw
         oyRDJvZEb1gXsjrP/wJlCA1IkEGr8bpuhz0riuItNXKlHe1fvyFZv+lspteJa0byfRfT
         gzDhU6oKmbV9hnRANwhqmhLUIAsdDXDMIlOdEgadqovzbIAEWMhngw0AptAsROZoA0MO
         jKdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XEXDdXKKoTz3HbnLpT387yFQBaI4d9J1CwS1h7elhE7pceE6q
	rJCljIrWZPT5uLZ5YSbzhXg=
X-Google-Smtp-Source: ABdhPJxb6tYcunLm2T4OcWiyeX45cDGtqO2yaiIbjNEWc+j1PVUEJmq2ndbWxALllVAt2QiC7zsIQA==
X-Received: by 2002:a05:620a:2298:: with SMTP id o24mr16396560qkh.235.1631026492810;
        Tue, 07 Sep 2021 07:54:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:21cb:: with SMTP id d11ls3439944qvh.1.gmail; Tue,
 07 Sep 2021 07:54:52 -0700 (PDT)
X-Received: by 2002:ad4:4e2e:: with SMTP id dm14mr17705935qvb.54.1631026492326;
        Tue, 07 Sep 2021 07:54:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631026492; cv=none;
        d=google.com; s=arc-20160816;
        b=s1D0Zg2iMc8BFwQJ+Y9g3LtHxCoVPa/x/l1Wz3MkOt7ouLP6sNMIfy8hXv+gfpD+SC
         gL5CR2o53F/TD7kLSKOVJH8IzktqUCPURlTJijyXuEz6d8/gCOpbjHUfDW5d82A5vfB0
         CSuT9+GIA8MAfHXP8MVNuZflbUdOISgOsPMF+p1PI+EugbQ3sUozq+ial1qBtmOyG2BS
         P94pOUmOf9k/R6OpgZwXBrVhVpO7aqTuRkqQnAFH6xiNq5nXmPUNRKon8RxUwSjdW9nf
         VTRk1HntLoCGoEyboQGd/tRd/SzCjJETRf3dpIuDfAtg4H6FoTI1P1IClf4dyL1pQIDJ
         C82A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=0CReOansv5wNg6ac4tGq4MabawfaxjOTZeS+i3ZR2zk=;
        b=lN//PB0U+lsxpndAfco7+XYzquvbQS0VXzjE0NLPFVO1JqHgujJMVhehYbUjaQbzpw
         68gSlPM0XWw+AZz7uklXxJaR50JzMGnbFyE26oDkvkXw238KfnTPCWBrI3IaZLbQOSmh
         v6BkLbLsPOfNOLuk83ahoFlC0oeC7YLNV/QNiKeiK0ZbaCYexoab20oVfCohA3v+NEmi
         o/RuCa4WeM3E9SmvMR4d0KHdQ6uoc0tPWo+uR0cSDXs7Y2bIix3sVCqcxeQX0R76pS3I
         6tWflcVAeZcHS9M3QGW2/zt4LhGkiMET6W85h0EEiEBIXgx2elIryLAfGc2s5qzEiBh2
         6Dfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id d201si631091qkg.4.2021.09.07.07.54.52
        for <clang-built-linux@googlegroups.com>;
        Tue, 07 Sep 2021 07:54:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 187Eqm0Y009137;
	Tue, 7 Sep 2021 09:52:48 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 187EqlAQ009134;
	Tue, 7 Sep 2021 09:52:47 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 7 Sep 2021 09:52:47 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Jakub Jelinek <jakub@redhat.com>
Cc: Linus Torvalds <torvalds@linuxfoundation.org>,
        Florian Weimer <fweimer@redhat.com>,
        Nathan Chancellor <nathan@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
Message-ID: <20210907145247.GH1583@gate.crashing.org>
References: <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com> <20210906154642.GV1583@gate.crashing.org> <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com> <20210906172701.GX1583@gate.crashing.org> <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com> <87lf49wodu.fsf@oldenburg.str.redhat.com> <20210906194808.GY1583@gate.crashing.org> <20210906201432.GZ920497@tucnak> <CAHk-=wi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ@mail.gmail.com> <20210906215218.GA920497@tucnak>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210906215218.GA920497@tucnak>
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

On Mon, Sep 06, 2021 at 11:52:18PM +0200, Jakub Jelinek wrote:
> On Mon, Sep 06, 2021 at 02:08:58PM -0700, Linus Torvalds wrote:
> There is a stddef.h include too and that's it
> (I must say I don't see the reason for that include though).

Yeah me neither.  Maybe the header used NULL before?

> Other compiler provided headers (not talking about C++ now) also have no
> or very limited includes, including stddef.h, stdarg.h, stdatomic.h, etc.
> The only exceptions are tgmath.h which isn't usable without libc
> math.h/complex.h,

<tgmath.h> is only for hosted environments.  That requires a C library
for GCC (we do not implement this stuff ourselves).  The compiler and
the C library have to work together to get this done, and the relation
between GCC and Glibc has been a bit too tight for this, it is true.

But a kernel build is not in a hosted environment.

> in some cases stdint.h and limits.h which are in some
> configurations provided both by the C library and the compiler and include
> each other in that case (but e.g. stdint.h has an alternate version that
> only uses compiler provided builtin macros) and openacc.h.

On what targets is <stdint.h> still problematic?  And <limits.h>?


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210907145247.GH1583%40gate.crashing.org.
