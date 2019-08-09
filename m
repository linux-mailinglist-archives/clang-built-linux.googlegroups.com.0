Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQHAW7VAKGQE2YUJFHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6092C885B1
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 00:14:25 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id x18sf62288070pfj.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 15:14:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565388864; cv=pass;
        d=google.com; s=arc-20160816;
        b=0bYIDih5gJggRGh5vT1ej1ixk2FexiI8JpIFRkYn0eOBNNU6PYwZmvtvCQTvxZQorv
         zM7GxZCj6Svisw8f3u1l3a2SBpNSvhCrQPkkeRivMjSblTHadDiyuUcZpD7uZJ7kU8dQ
         7j3q22MJvw5ceej37CbJ4ITUbHDqzso0MlJV8913kXweX02+lXgEzA56XSIXA8CuXztI
         1rL6y2fxE3X1XzTNGxgqrVtrmnmQLcJ1PPlqzx/UozU83tK9PwCgQkKqv9OWBrFZo/tt
         pilWt9GxduTkyKP31r74ok4yHbTNGmldzMYlUw885IuuGwLDh7Hvg0I28gJj08V/4QKK
         w2Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=P4DFbsH8JoKHke4vHZ1cCQ4oaoUPGGGXozypbNqhatM=;
        b=q0coxupYJ9rPbPqB71VeOoxZYbn2BqeGXub2oaEXLuKi50hLigqJCYAbK/qAAZE7gq
         dLTs7yeqx+Nl6dOGpD3KUkAqq83AvXnVom1QvLeAp9loEhRkHW3EyM6UzWIc+uzPYmGD
         qWsxF7BhPojXoi8MGfTz48+yq9Ryz0ZmJObOGgSr34XZSw+xswN09NmpuSXp1fU9zwms
         BoaFLg3Ll3gXEv1J/PRsWP20XpZ0Ic5x28mOu0JO3WPi1+K8hxA0orNE8Fq2YcxzKM3j
         YJCidIfpKFH7uPyKv7YNZJat0yCE8hAuudK5+ssPXvN47uwK1sMMu8EJnUptmFnZcGcq
         qxFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZPSYG2y1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P4DFbsH8JoKHke4vHZ1cCQ4oaoUPGGGXozypbNqhatM=;
        b=rHuMS2D/eJIaeS04Vsuh1CRFdBEEaoK9+8QHKXoVehLa6akEnRu8PG036csJJ6/S23
         3gUy+UzlamnZAIj8ZNmGIDOsvYXqnDN5XIMRzs28h2ypfrG0KDzqHwOzSkf7sOF+nYpi
         MujfOYNTj1MNEVuD1CcFOaycBt/kqUKUTFVJtsQgCSIiON7oBuCxZRr5acecXBGKGkml
         q5oYpNnCVROQG/L9UsGpeBdpAmRKw8M17kGTWTJRS51G0RNAFem6YX20Jm2/Rlpdphws
         /KWtodQX249l3XUGz208PIGl7l7hR1bTX1/TBS3LTxE48hio1s6eMfrLyjj/yhFAeHOg
         U2AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P4DFbsH8JoKHke4vHZ1cCQ4oaoUPGGGXozypbNqhatM=;
        b=brv4mfWloC6Jmhqrf6sLVnX/bLMDmmGGn95g3h2wgF7cxN22UT3Rox6S3LBnaXAF4h
         2znv2rwjHPO6q9VHq11YD9qpa0pHPqChDyuqOXbh4sXCFqa4ujgFhfv/ayNdSsiaLX8x
         d1xmP46Qn19SsC6W+52/cSj8Hphh7Bo1rr7jD6sd+zS8H2jIGZpDYXMGoPmd7sW18Sof
         ja7A2V5HOlHzo+hDoGUFfxdd4PokB6OMPwoVMwWdRLVA7t/ahlCqd4/6F+I12UH5TaYr
         5qYyeLi9z1QGc2+0a2RM2udRI+REMaxoRkKDWbl2JiCF35JKfSU+iBUBjujyNyJPWCWz
         22jg==
X-Gm-Message-State: APjAAAUVgf1knP1Wmmm31czi47HUf5eUIJRKkw8qHKSzFavsBEPu0mEr
	lWt++F6ZyA27z7/JAujTopg=
X-Google-Smtp-Source: APXvYqy7Q/Slcb/Se8m+zYNCX0TcaGw9ksk6ouxMAVv6OCc2ehC1jvBQJmYGZdNF2WIwGb9NZ7x6ag==
X-Received: by 2002:a17:902:e58b:: with SMTP id cl11mr20631179plb.24.1565388864141;
        Fri, 09 Aug 2019 15:14:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7081:: with SMTP id z1ls220574plk.16.gmail; Fri, 09
 Aug 2019 15:14:23 -0700 (PDT)
X-Received: by 2002:a17:902:1aa:: with SMTP id b39mr21575272plb.333.1565388863860;
        Fri, 09 Aug 2019 15:14:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565388863; cv=none;
        d=google.com; s=arc-20160816;
        b=xJoAmmYrMN58YdtKm+597E+s0Uas62WYFOoF5UFsRxa6+/PhrK0RnrNjRbgOoMOa6g
         cNQp4BKrp748Smoq29aekLYnREAdezD8AKwV/4G9bSvSENcmMLwAEuSi9XW+K+5ZoS/V
         BVhRlYdWlIbgYTCJ5TjOqnY5AzLDdyFd5awMQee5KT/W3lOe1p+/JKwd9/gCXZjXToBl
         RO1b19T7ejMKIcSAWfv+lV9+VjhVOnHdhHAVzt1g019OYJZdOqspX+YuWGntnppB4BiR
         f/8ug104FhRsDDlb2FdSsCARfE2LTux1GCLZUd7HDb46ABin1TGu7jsEIxQckN5qp/aw
         nWfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sTGM+jKd0j/u9kKivj5QkkT0ws6UqJeC4LOf3qyOSiA=;
        b=mztJY8CKA9gOaRLsLvN86yuNt97QBktQS5zOqqsv3bkG7trzA2RUG14JPjb0it3XYe
         ZP9T3oYtO0ytvxUI88bq+hNeE/W82NnNXbA6XKnrKyYtC5quFZieuqCzggrD8kzgtdoF
         8rGNw9tbYiXIkxw2FIqw8yvX0j11OPOujv6ladRjJTjgsjSPIn0JSlM0Wwj5Y5ILQ5d2
         aaYsuTcoFi+gIbAG3RYCCUsr392qTIRpwqs+SMr8D9kGSMpnAvjuyp4zw9DlExJlglji
         r/J1Nm/EJYULSHT++BayUVxX3j+gbjkJq5S0l5oK+djfKisc6/R+4Ek846PlOqHZmYLA
         MdeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZPSYG2y1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b12si203715pjn.2.2019.08.09.15.14.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Aug 2019 15:14:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 19so46730600pfa.4
        for <clang-built-linux@googlegroups.com>; Fri, 09 Aug 2019 15:14:23 -0700 (PDT)
X-Received: by 2002:aa7:8085:: with SMTP id v5mr6610774pff.165.1565388863281;
 Fri, 09 Aug 2019 15:14:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190808032916.879-1-cai@lca.pw> <20190808103808.GC46901@lakrids.cambridge.arm.com>
 <D2A2F2B9-0563-4DF6-8E77-F191A768CE4E@lca.pw> <20190809085332.GB48423@lakrids.cambridge.arm.com>
In-Reply-To: <20190809085332.GB48423@lakrids.cambridge.arm.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 9 Aug 2019 15:14:11 -0700
Message-ID: <CAKwvOdnbZNeCHbvYMgBd-mw0Q3eP-AxM9dqWmM3pZ_BrDaTzbg@mail.gmail.com>
Subject: Re: [PATCH] arm64/cache: silence -Woverride-init warnings
To: Mark Rutland <mark.rutland@arm.com>
Cc: Qian Cai <cai@lca.pw>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux List Kernel Mailing <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZPSYG2y1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Fri, Aug 9, 2019 at 1:53 AM Mark Rutland <mark.rutland@arm.com> wrote:
> * Find a mechanism to suppress the warning on a per-assignment (not
>   per-file) basis, without altering the structure of the existing code.

#pragma push/pop can be used to suppress warnings in a localized
section of a translation unit.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnbZNeCHbvYMgBd-mw0Q3eP-AxM9dqWmM3pZ_BrDaTzbg%40mail.gmail.com.
