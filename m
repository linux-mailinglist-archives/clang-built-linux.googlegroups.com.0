Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBMLRWEAMGQEHJAFSNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BAE3DB034
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 02:19:19 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id x33-20020a0565121321b02903ac51262781sf3269396lfu.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 17:19:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627604359; cv=pass;
        d=google.com; s=arc-20160816;
        b=SHziEBhZWuru3P9GKSZa60IhlFDfaFisvoAhDIzkO7M2AcriVukhG2KCJ/cuApAX5n
         NQnvUemxDxU8/8Imb1q6CmbF71JRMKYGzYlNEUbFRoQl4JM6MUsoATWKAt8uoxyGWAIL
         7AVOlMMXveD91bTRRLZSX1/b/GdnetK8l044CV1FAvnkJNeX/B+iD2SrEV519Sl4Lkgn
         tpN1UmxQTM+re/WXhCjjCOo1URc57yAFCjwgdRQzsT72KKTCIF1ILOw0W4pRTZwxcXpZ
         NTvs27xZTd4x9wxDTgretjPjJw3oxOpNbP28L1oREKcAIMt7IM6lc76H9tTwpTsCpHBq
         JTiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zg2O6yjuHqlizVU92qvfQ9/2cC0epQU0GexDvwmP6lU=;
        b=O/KaIwMCiwt7rT0ycMoJpGvZcjGugU/7KDbcY395z6rpzdHsrAqMlJmS5eSwHD3snn
         ux00n6pjonJ83sb/0ByzISrsyHJ47idl7K6ICRftML1HkPQIPVf1NBlYz8cbzINS7McV
         TYS+13dVH4Zihes6l1wZ5kNNbf+lOZx4e0nwgZJdF5Ayxno6+LpPgd5K2A+AcfbuFN5w
         e8FvfvWp/lfuyrybyHgaOsuxWokWsikZQIEh2N5cZvtEYLKZAqB+VI8PiJlt/dK8Hr25
         5V3rmOO0D2TRjUWaMB7jqvYKW6XqjqxPzJNQwXz8fnTa1lrkTesNgcjxwoXmnS+K/hXd
         i8WA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BALfDfaI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zg2O6yjuHqlizVU92qvfQ9/2cC0epQU0GexDvwmP6lU=;
        b=MpMseDr/H/SI4wCGAOIjlRFxPJCnI25DvR28/OcL8Le7OHnA5FQCz1dd074oGZTXRo
         6mf7p7sTvOm/cGb86DrQzVXZ5BQPRlhliG8YLqparYY7hp8Zy8kKxuA0/WHJNq43fBIV
         +6trixYB1fCD7tTbVIe00k5DerwEhPV555tsY7lkOGsyhmwNdo2vjHTiIqKZDkKzCLkR
         cY09wm/k5XArlunuYH44w+NqHPY6TZ5pMx2uyRbyJxf9nGe8OkNE2+RZOgDAPIAJ5NLq
         NdJmXF0H6kzHJh/dott7sbERvtz4KAFTL1ZBAMWhsh4UbgxyQ4orP3dGtF7AhesyGrsM
         BkaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zg2O6yjuHqlizVU92qvfQ9/2cC0epQU0GexDvwmP6lU=;
        b=pxA38MjYbVFw9yjcg6vYz8qrSZeGUHznZ2vnsw4UD+DaAZq7hNidOGnLlBPyS95EuG
         Ou7u8KFdtT+7Au2EcL2y/FwMt3so2GAlCFuI/6RSUUw/nZAqtLrumK8sw4S4hkbapsIw
         meIFbBkxHahF20J0ylOHYYdxld1sEBa4rCZKwn/An6PxZ15Wo2oqHfnUiBwvUW4H78/s
         eAGEEPEFpHQeclHH/0SyLPtNxL/NdNd4x9WcVXaVuu6hXbEjPYcPfhtagM8CQ4alLyda
         TP1szKHSajWyUcKEEEd54rIfrf7472OGzK+pEH6wQYxzcxPypRKi+rcZ6YTWIjI2yFYv
         +c2A==
X-Gm-Message-State: AOAM53050F0skvlr9GmqkBRaxYkBPPllTuSfMDMDErLy8us5X/KKXsqS
	4h70saBtptu9WswCXj+oQnE=
X-Google-Smtp-Source: ABdhPJzlyXWk254SzXMPQ2w0YkAOZ/A1Jrt8r4R5V6Cl2BcEw2LSgFnfNwolIRJIb7glSQsKJ322XA==
X-Received: by 2002:ac2:5f41:: with SMTP id 1mr893078lfz.223.1627604357872;
        Thu, 29 Jul 2021 17:19:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b1e:: with SMTP id f30ls9063lfv.0.gmail; Thu, 29
 Jul 2021 17:19:15 -0700 (PDT)
X-Received: by 2002:a05:6512:942:: with SMTP id u2mr5507997lft.501.1627604355339;
        Thu, 29 Jul 2021 17:19:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627604355; cv=none;
        d=google.com; s=arc-20160816;
        b=OuM68enJnPyyDXgkP+mC+ywtAxP9WgQ/SHvXgVLx26/kr795kuO9oHaKVLhJQM19u+
         zAbZt7UYtEqAKvhpyc/5h82VCf8Gw9lACoxHreBAFtZzRCkHUSe7O7Q+jNpK1J1usI46
         8J46SiMe67IYojuT3jy3EfPeHsEXa1AnyNWDfhHvZswiSINVkf/ML8YFsHkphdQKn16+
         PqjPK9DXog2xCh4/ulPWc7vOVE87YPWQSkeq2YJd9WOhgvuMwZJ/+IZTYS1MeU3FAt0O
         IcZV2R1GvNCsyF6TH1oOjAd4+cW1HJDcJRZYXHcUCULtrgiZ/zeDRUyJFvPsDoBCgwgR
         yq6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sdWfDCJ/BnpSi88/sBE0t81V5bfAq7zpAMM0ZeL7bXw=;
        b=q6H0RfzZ9/tnTsrTXWDEZNPcHLXSQSmhRXef/CmoxiDz+1l25toPAfZTUpd3e1C4/i
         bXiRQN7pySMGuWoSoYbyvt9eJlQ/MpEQkqv++SHWuTST3AG5JZ/mkBVcqYVuxwDvD7su
         MmBc/JbeGnufHqf9wVTj5uSq8aIYZeubOugbXJh43G1TVgXPY54W6sff6ZWT+hp0yCod
         cGiTZEbi6NgOGRIuiQn8XzrNmBVe3L6kXN7PVsH3eg96Cvt9cRYOEJtQcX9K2o1AdzEw
         X2Ny7jmG6k/Md0+Ry1+vDOSN5e6NOmsagMzCYLUWae9W9PCuWbQ7WpIGctoFQIQcaHCi
         KycA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BALfDfaI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id a2si264283lji.5.2021.07.29.17.19.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 17:19:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id e5so9843297ljp.6
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 17:19:15 -0700 (PDT)
X-Received: by 2002:a05:651c:329:: with SMTP id b9mr4549340ljp.116.1627604354847;
 Thu, 29 Jul 2021 17:19:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210729165039.23896-1-ndesaulniers@google.com>
 <20210729165039.23896-3-ndesaulniers@google.com> <44117d0c-51b7-1f68-f752-ba53de503b14@kernel.org>
In-Reply-To: <44117d0c-51b7-1f68-f752-ba53de503b14@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Jul 2021 17:19:03 -0700
Message-ID: <CAKwvOdm0xs4ikb0K0_b8Az0T=Kxu_-6AHjWHOhjsKZb3hTrH2A@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 CC=clang LLVM_IAS=1
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BALfDfaI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f
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

On Thu, Jul 29, 2021 at 2:00 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> While I understand that the LLVM=1 LLVM_IAS=1 case works perfectly fine
> with this series, I am of the belief that making it work for CC=clang
> LLVM_IAS=1 is a mistake because there is no way for that configuration
> to work for cross compiling without CROSS_COMPILE.

So with v3 of this change, rather than:

$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang -j72

If you wanted to omit CROSS_COMPILE, you'd need:

$ ARCH=arm64 make CC=clang LLVM_IAS=1 LD=ld.lld OBJCOPY=llvm-objcopy
STRIP=llvm-strip

or

$ ARCH=arm64 make CC=clang LLVM_IAS=1 LD=aarch64-linux-gnu-ld
OBJCOPY=aarch64-linux-gnu-objcopy STRIP=aarch64-linux-gnu-strip

That's straight up worse IMO and defeats the purpose of "shortening
the command line," which should be the goal.  Not "making CC=clang
maximally flexible."  We don't want folks generally using CC=clang;
preferably they'd use LLVM=1.  I need to rewrite our docs to make that
more explicit and straightforward.  And if folks would prefer to use
CC=clang for whatever reason, let them explicitly state CROSS_COMPILE
then.

So I agree with Nathan, and hope Masahiro will reconsider that perhaps
the v2 variant that required LLVM=1 maybe makes more sense.

Either way, I need to fix the comment in the new script, commit
message, and docs, so v4 is necessary.

I'm tempted to add a rewrite of our docs to say "just use LLVM=1"
front and center, then get into finer grain details below, moving this
second patch to be the third in a series.  Let's see what Masahiro's
thoughts are though first. (I do appreciate them, even when I
disagree).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm0xs4ikb0K0_b8Az0T%3DKxu_-6AHjWHOhjsKZb3hTrH2A%40mail.gmail.com.
