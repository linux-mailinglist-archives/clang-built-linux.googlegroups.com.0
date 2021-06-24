Return-Path: <clang-built-linux+bncBDYJPJO25UGBB54Z2ODAMGQE72XDFNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA2D3B3587
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 20:20:40 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id m11-20020a2e580b0000b0290152246e1297sf2124890ljb.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 11:20:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624558839; cv=pass;
        d=google.com; s=arc-20160816;
        b=zUqaiMcrVmDCNMiYd2XzdOGR9j9GPfU6DSdQ1wlcBk2OiqeTlaFWr+EePVqZN7aJsf
         ZqlRHPGwfrP85OfARixR87qLzRnvbcxblFzwRQ88YsJjm0Z42gKy741vyIKASdYZGmTr
         /XyYJT2MZYviw2ZWAavdvmmvLI4Bm3i5cblbBlMawLNSwXkwk1ZEyLHQWe9CVTs6kQMa
         BZQRthBUVesm1zwqHBaSHOwCXVq3pHglsG2xEARoVsVvhwHGzXXjzvezXN6Ezy4Ve9PW
         UReoysSYSlEFON0xpS1gIwvkE0nA0Fp5qUs36SaUtCBiabnFfXBxqrW11XknTX9eRZYm
         BKQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WATHGlZzoI5DSdUV3k8IsbINOOnSQCw9Q0No66TYw0I=;
        b=SYoXxa0K6vzI3srh5evQgEYW4ZeET3a/Q+YuJQsZI3LXgVQ9Dg1b69nCVk66LOTtBR
         ch7G0pcWIwU9zRuaowG3eMDvH8FWjmDCJkxarrWGW+2FSMSlJUY1cgpl+rC+EraJjlyR
         ZZjfMRBZ2XOpgu0YVX6YS9yvQF8sCa90meCJC+bWNg5/i1t2i879fhs78GZ3CEr1samd
         Xv5Wrs/CUpw8k2qM8t/WvYSxpg6FE2rTBRip1/sxNPFKU+3FQ1fPSYkK81FkRf0CdPDR
         FGSCkV6K3b3k1CZFroz7rjz3jSeu5rvigv04mf5s1m2o3D9Kon+9kIhvj33X7Ub4w7pG
         AOfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y0f075SW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WATHGlZzoI5DSdUV3k8IsbINOOnSQCw9Q0No66TYw0I=;
        b=Ht9QytWXQrOoFiL+p+SfeTux7aSUg6JGLpz1cYIb9h8sMfEsxlhwEyv5Q1mwvOoi1h
         NA60dX0QAiUrKOu3aQ4I0fW2SjyiLaZHN959C+Awdi3XWuQPqZ+Ye1f/rKWcLfKnt6hu
         t+0mmoM3WHBIUxQcYTBgpY524rRaPfHpNoReXiTagqLCb3/yDPIvTSz7o5I1rXNATm5y
         5D01bgwW7NZz0t+Q6Zd+1DBMKW4iO/WeYKVoNnrB44H9GPWqvyW8D29lrY3G4qaOPaL9
         7UkMcRppNab5433HY6YpdTmb2MqwOJPLUhktpfRQVIv5Pw1VKwMjALg6VwIsPCqdC1vx
         hHfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WATHGlZzoI5DSdUV3k8IsbINOOnSQCw9Q0No66TYw0I=;
        b=SregV6Nozq0zDPHJPlQE3TGvSIOoZoGAzQzWquiL5GWubo76QuQhMsJqVy3f6Y288t
         iS3bkxfW6vcFEn5j9PrciVXQoIgRLOTQUke7bbrMi25c50f3Gtgn6M7TUSkx6X1wFOpW
         IWNEcJccmzwEzEQdPvuS1soqxOAj3eJiuP7ZmdwHPEH09Pbz8EJMYEU4I0lBd23SyAWk
         jKJ8U8c+rGzpwZ/fh/vVNZ3iZkEkCySQSw63m+2/ZNzO0i1SteXua6l2H+QgAoGYxBk1
         nM5NyXDMm8E+uU0hnQgPNdp+kGf0m0CtPJNo+8mcCuW1bfpplLujSxXx6+hTLXUjah89
         BNOQ==
X-Gm-Message-State: AOAM53106YsfCtdamaRBUyxYznrdB8gJhtI9+fqLPEEdT31s45ZMAmSi
	DIlda0mPyUQio2ox2wkesvg=
X-Google-Smtp-Source: ABdhPJyPjp9ZCVZSCHAJ5TrLMOM5snRzc5YkXGF5/oQZbCBQhXaB71mmr5fFNzaQm9tX4UnFpSmtkg==
X-Received: by 2002:a2e:a4ca:: with SMTP id p10mr4927458ljm.271.1624558839769;
        Thu, 24 Jun 2021 11:20:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls1295043lfa.0.gmail; Thu,
 24 Jun 2021 11:20:38 -0700 (PDT)
X-Received: by 2002:a19:8685:: with SMTP id i127mr2158997lfd.555.1624558838731;
        Thu, 24 Jun 2021 11:20:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624558838; cv=none;
        d=google.com; s=arc-20160816;
        b=A0+T5iV3iEtsM9pvqDxeDuKwikXycb3u1nhJx40qE7iBAkt7lKLSV/IyvZLcN2BW/q
         a2zX6hnzxPAjI3BqV9YLv2CqPjw3za2pH1ZP3vEjHa0wU3L26+w9qEdyIqhtSMn7pEwU
         WnsNYtb1yWNSAgOMjdGLHNiClOwQpYkLMHfaYZPDmzuQlEcmCG5D353pdwQ5CwQ5LztT
         GerOGkZls6TZhrvwcAjB/xqpNazkpPzJDQIaZtP3mXE5FllOKkRfXU3MN+s/k50YswGW
         bDFEYFYIbwX1+0hwnpHbK6uilSgWpIBKxKm+B63DbDe09IhwS2mjJvUU3vVdCEj70uyi
         g5Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kYGnZYIV0vcnFDP+T0eld95swUdTpGs/onjFUg+aRDE=;
        b=RWmFa9nYF9h5Gowupam/Ye9j5dYfimQd/Ky6bJa2RW9v7ocoKfbUFGmdk30JLlW607
         m3Qk+hGutOjWBFs/Qr0eGyD10SpoNjH0zeoJ2Y6KFT9rhZnL/Ei20PLhivaU6wZGv/pq
         +zGqb/KpKDnLeuVsWGEY9zckUHetCOEiDWN7JqI7LQjmYixUzyyYMDDFogKOmvymecYo
         HB5yCjeh2JmhyPkvbgs2Qzh1xvA4AJTl4KGvnjm1W8eMp7+O1UXwN/CtbBgMWRR8Rhah
         ghXU8WWI9tdmCRaSm8sn1vuBgFCe5TnOlP5ky80s0slnCW3B/sQxTEKyrJK8BMhx4rJ1
         EdDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y0f075SW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id f17si145400lfl.4.2021.06.24.11.20.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 11:20:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id i13so11858113lfc.7
        for <clang-built-linux@googlegroups.com>; Thu, 24 Jun 2021 11:20:38 -0700 (PDT)
X-Received: by 2002:a05:6512:310c:: with SMTP id n12mr4817178lfb.122.1624558838272;
 Thu, 24 Jun 2021 11:20:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210624180625.159495-1-seanjc@google.com> <6146d62f-3c96-1def-a537-1eace63368f3@redhat.com>
In-Reply-To: <6146d62f-3c96-1def-a537-1eace63368f3@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 24 Jun 2021 11:20:27 -0700
Message-ID: <CAKwvOdnVUpsiaHAi6DaV7zc4tbi7t6=BcYv85pDXiHQDQUY_0A@mail.gmail.com>
Subject: Re: [PATCH] KVM: x86: Fix uninitialized return value bug in
 EXIT_HYPERCALL enabling
To: Paolo Bonzini <pbonzini@redhat.com>
Cc: Sean Christopherson <seanjc@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Vitaly Kuznetsov <vkuznets@redhat.com>, Wanpeng Li <wanpengli@tencent.com>, 
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Y0f075SW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Thu, Jun 24, 2021 at 11:19 AM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> I have already fixed this locally, though I haven't pushed it to kvm.git
> yet; my tests should finish running in about an hour, and then I'll push
> everything to kvm/next, except for the C bit fixes.

Ah, I was looking at this case in linux-next, and
0dbb11230437895f7cd6fc55da61cef011e997d8 wondering what was going on!

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnVUpsiaHAi6DaV7zc4tbi7t6%3DBcYv85pDXiHQDQUY_0A%40mail.gmail.com.
