Return-Path: <clang-built-linux+bncBCS7XUWOUULBBBNOSSDAMGQEWB3VXQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 683D03A5089
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 22:20:23 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id k9-20020a63d1090000b029021091ebb84csf4031753pgg.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 13:20:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623529222; cv=pass;
        d=google.com; s=arc-20160816;
        b=mJb05eZ4hY82J7H8ZzMGPkTP/F7UTbBLif8ktEE9Ds1l17h5EMATAIOmRQl46c0KY1
         4WVU+7sI7EIG9KlovjFInDdg/f2/pBZ89PFzefbH4PAbqTC/YhZzVZNgzTyFg0+DphTW
         fOVELb6HCIB9hjovDmZi6sXR0Q25CUXLuB46UqREXMj0h+WIQko+7jZod4Osd2SHjlDI
         uYENwX5K8MX14wMgziyiaARWkzm++1DxcmBpZCmpLhT61cTaHRglil3gcZaAYY08vlrF
         CKxfxuTdXYal6Piq0ZSEfEZRtU40INFWO8WKRCSPQ3oLjNJQDVgy4QXPetroIcpunQiD
         PIWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=fYEK8wpM/AT3OR9anRg63JTGaa+/yRwOurM6jGWU3TE=;
        b=Lj+v8G4cufR9bz7VQr2nnDnZnCQEEQC4h4iWR6nbPFws4SDykkTI3qKUrbc7Hoy1jv
         yrkQ40oKi2+mU45D54GPzGg1FaDYGR+nVU5cWmniGsbzQOwrZwY9D2QIlbvlsa4EDcRw
         Z+7fTG4Wk89tVILd2phQpbIm5OLPos4fugdwlESGts8Q4wSa8HANndWyav4FY8OGtLO0
         FxeFgV/soqrpT0gt3sj+rrbmUYPYQIA9rq20teMUbR8kw1QPveQHArFlUfRd8XrLLxzC
         hEIv3lh55gU24yoMw439O8Agnd81hGHFW5rbef8svcXuxQArrTlbjadpoDuKiYz7rBBa
         0qVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QUEhRvwh;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fYEK8wpM/AT3OR9anRg63JTGaa+/yRwOurM6jGWU3TE=;
        b=ajPBDudIGopirDxpmxHmBcCHAW6xV+wfWH5ALRTzyf+RimedYvoUmaAxRytNdHwIYN
         mz1vOlWCkxfQRjkHJAebAmeRHEdUgcTLcItNq65omTrQ0acsAiopuc3wS3TLGJ0DkDre
         RxC+AcgcNW98X+OlKKLXrbq8i+Q9U2FKr/gkYvjzdomFlfqFFirpPZu08J9NkpbTQlOH
         DdNrdSkvzwFP5BrUVanlBeUluex5pSdD9p+ll2IW7B0yA1MD+dF0IFHldOVkPbobOj9f
         Je4CsjxmE0nHPJxZxeFosk0Q2lW9Hia73aFQ+79ubnvE9a6oeZoUo8vne6P8y4cQLyxA
         uTiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fYEK8wpM/AT3OR9anRg63JTGaa+/yRwOurM6jGWU3TE=;
        b=ep1gKZR+tyL9ymd2rUMt6rY577kzAYGVnveCRU0/XzP1za7Rz2yeH2PoeZouNedUCn
         dBgqycalzGc050ulDX8Z3Cn3c27c2gW1CsgnD/14rRMi7ilsa/+MZO09Z2tct7lMLQiN
         EPTOZwEDVKG80A58IK6f6vXd23fu8AaZXu7fcTDLNn7xq2XCbCzVbsn2K/nUpfK/fDMX
         MlQopOPcbNdYWMPkSpvZr0iXfUVdD9qiSIy86szQOkhEDouWx2lqBjRd78DDVRi9so22
         H9mUYm4xqfvRkgeqTMAKio4CDQF/0hD5MFVRW2BFxGFfB84qDye4AXMpH1nDBlNR9YUT
         pzZA==
X-Gm-Message-State: AOAM533it9oZd2ecd1q85JmxO3am6xW62oZYTHtpsxLuxRgiFNHaMklt
	YgttiT+hYT0635QljT+Tgqs=
X-Google-Smtp-Source: ABdhPJxuvKVkWA5cMtLX5kt6llw6p7HB4d2MnsmbNt3dbmIDvtaSQlC/ZUvoKdoOe2gki06pJCQ6Ow==
X-Received: by 2002:a17:90a:a116:: with SMTP id s22mr10807905pjp.218.1623529221910;
        Sat, 12 Jun 2021 13:20:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8206:: with SMTP id x6ls101935pln.1.gmail; Sat, 12
 Jun 2021 13:20:21 -0700 (PDT)
X-Received: by 2002:a17:90a:66cc:: with SMTP id z12mr15459116pjl.93.1623529221380;
        Sat, 12 Jun 2021 13:20:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623529221; cv=none;
        d=google.com; s=arc-20160816;
        b=rvllX6wMNOiPSEDiKaMBqB2MU+0mAfi7FsgWC2rI9vYlMqqvsmPejSUWSDtd7Xggvy
         wfgRQnxNJusA+5Y7f8XafkIPHp1xK+BA88HV/qlW2oVbac3CIKZSMgRW2Aeke3hRIcg4
         kk3On20ldUXwdkaHoecucM6lOmOg+RRgBNWgDmGncJR1SjGP24irclovTi/iBB0dRiZs
         AY/DVzBNpMznq2DIroPvMSJRtOFCRRWHGKH/9M+ebvO5IWaxKR9T6Kewkcd9KCf+L9+8
         BJB7GyuPSaNrwel4K+SJfDqYmgdMBhE815FQMgM6mW3IWpNmVB8b8vakBgxW9RqZntbA
         DicA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KSRBKv2aAWVPJTwPuTubBt5RbpntSvBl6+11N6OojZo=;
        b=Vcc3oCgjsL3bautKmM8ns3Wi47T+I+GAW3ygAjUyf5EBxihM5AbiIPetEvT/GPCjwT
         sP6XZxgyc8Oj30zJNOnS+2BVjqU9IMJTVgevbWRsDJ2jojZRwyyT+D1TcvNXvzr+YCF3
         65FRaazmFEnnG3d3TzyZFFEf/JdDGL0Hbz5zN74Fu1T5kSmXkgXl7h2w4J2Ev3/S5XpE
         U52lbLLGAKihChP39Esdmq6JR4YcBf1a701/BUVc8IJfGXUkJucM/AZiwm/CSR8Sl7Oa
         +o1CNlKMTY1u07JAMyB+pJk+zVu4ysu3fGZyg4wzrR8UA32oIm50zJt8ycJwNwUF+gyb
         qTTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QUEhRvwh;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id bk15si936286pjb.3.2021.06.12.13.20.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Jun 2021 13:20:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id t17so5364964pga.5
        for <clang-built-linux@googlegroups.com>; Sat, 12 Jun 2021 13:20:21 -0700 (PDT)
X-Received: by 2002:a63:205b:: with SMTP id r27mr9947707pgm.95.1623529220871;
        Sat, 12 Jun 2021 13:20:20 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:425c:5da8:ed33:260e])
        by smtp.gmail.com with ESMTPSA id i10sm8523806pfk.74.2021.06.12.13.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 13:20:20 -0700 (PDT)
Date: Sat, 12 Jun 2021 13:20:15 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Bill Wendling <morbo@google.com>, Kees Cook <keescook@google.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <20210612202015.s4743sr6d3lv3lgf@google.com>
References: <20210111081821.3041587-1-morbo@google.com>
 <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net>
 <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QUEhRvwh;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::535
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-06-12, Peter Zijlstra wrote:
>On Sat, Jun 12, 2021 at 10:25:57AM -0700, Bill Wendling wrote:
>> On Sat, Jun 12, 2021 at 9:59 AM Peter Zijlstra <peterz@infradead.org> wrote:
>> > Also, and I don't see this answered *anywhere*, why are you not using
>> > perf for this? Your link even mentions Sampling Profilers (and I happen
>> > to know there's been significant effort to make perf output work as
>> > input for the PGO passes of the various compilers).
>> >
>> Instruction-based (non-sampling) profiling gives us a better
>> context-sensitive profile, making PGO more impactful. It's also useful
>> for coverage whereas sampling profiles cannot.
>
>We've got KCOV and GCOV support already. Coverage is also not an
>argument mentioned anywhere else. Coverage can go pound sand, we really
>don't need a third means of getting that.
>
>Do you have actual numbers that back up the sampling vs instrumented
>argument? Having the instrumentation will affect performance which can
>scew the profile just the same.
>
>Also, sampling tends to capture the hot spots very well.

[I don't do kernel development. My experience is user-space toolchain.]

For applications, I think instrumentation based PGO can be 1%~4% faster
than sample-based PGO (e.g. AutoFDO) on x86.

Sample-based PGO has CPU requirement (e.g. Performance Monitoring Unit).
(my gut feeling is that there may be larger gap between instrumentation
based PGO and sample-based PGO for aarch64/ppc64, even though they can
use sample-based PGO.)
Instrumentation based PGO can be ported to more architectures.

In addition, having an infrastructure for instrumentation based PGO
makes it easy to deploy newer techniques like context-sensitive PGO
(just changed compile options; it doesn't need new source level
annotation).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210612202015.s4743sr6d3lv3lgf%40google.com.
