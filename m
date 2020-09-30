Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTHI2P5QKGQE3RR7X4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id B811827F3F5
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 23:10:37 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id i1sf2155985iom.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 14:10:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601500236; cv=pass;
        d=google.com; s=arc-20160816;
        b=Howg9OJNueyDL74tXe8eLhVnbZsrbPlJhjixpZNqKcKdvE/X8C0/bgP+vkoPsjqcdc
         GvEzyzcroCS/LfzEXM46xhrig5GW+NkNgqpyC0vhTtlUVF6t7VNQeGeh0FCFqZ6Cn9xK
         7d3Sasa4cztxcsbf2dZS7RSXOAa9tppxO7PAuFWfj/bJ6qvXYZRNPmPxg5PRhu+U0LOn
         wxOhBWGGM4KGZ+xmLZELoSdA8Ll/xAeXlCEeeLsdGpcoEcrVQnYrYA3qR18u5WDxMCaB
         b1sdlonCO8ENdlFUvUfgK/anLP6xmTmQXG5CIaEgDCRaihu+J82Kb91BerOtMG2h7i0z
         0xDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=F9cub1VLzYnheTjY0AfZtSrUgPqIixl1ecNnWRSbmUQ=;
        b=K9t9+8RwAT5jLe0PnphovfsqCsn1s3n3/MLB43uMowiYbeZ1Ks7a9hwU3yuUITVEge
         23czmOZkQ0qoEgQEDAr9H3jzrRsLO52Mjv4HqQ9a+QqFjGyXGD8LAAjhhJ1cqIN+Qy1D
         kjdjW626k0MbkK4ZdxZ5ak6mm8pJos1enHH9tfnJRiNb1Tsx6iGKmQI2aVZ4LDb98z9h
         4ChHFBZcsYAgwpOwEVXHn9TZ6+UWeKbL1u5U82esSVd9CmQSgCYO455Aw/qIdQehFeL5
         qKI3jnehS7D1jOVbAFmCGZDW4sgkXJN5eCS+ZsDa8dfdLafcylR+qPOBg65y00mKpKFf
         2Kjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aznXL+Mf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F9cub1VLzYnheTjY0AfZtSrUgPqIixl1ecNnWRSbmUQ=;
        b=HdFhlezrE/MytKWxXBBMbul2m7JqnpNmuOsveEkSpWxKWslqlw1CqrddOyLxa0a1wx
         /u4fBVXRma9rdtRvAEiLg3x7nhBSBZlhge5eS7Yx52QNGIiXozykXJ/LZDTT9yib2T31
         ZmDO5ihOozobmr0oNpZEWRC5eHB3Ork1V/Wf18Z9UXAFqTl7YkUtDdfOgk0BMIsSEhN4
         CBesiD9LrT7tpzOj1n5TTZAl3reRaXrj+JBogpu+2MzfJCOlrVY2jogCX9B5ZfOObCbv
         TUQm+1iRSEoyLSfazsn5dEOEl8/lt0fr/kxl8vWRnMQPFZj1/oyjyJopVKq+3XEh1jJf
         ZnIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F9cub1VLzYnheTjY0AfZtSrUgPqIixl1ecNnWRSbmUQ=;
        b=hOhYvi8sSJImer0ygOJn8WO8IzTrAlsTjd4SkftMUUeldtfFMG6ER8HfnzPmZ8qSNX
         mAlfFDE7pqLWXQqmTkbZDBryTOyS3jJ6eDq6ZSN4IPeSmtviCvO6epENByZCCGG/cORx
         zyQ/f/Ts3pVur/CigoVdjgQOpPddg0e/yWTvaNNwQozpQjKoCG5EjPxjMxGM7I87TEqc
         R9NxjOHf7VS1/dFf6/O22otHXZ7pob7nq4tYX2Y/O/PMjiCc5eH2HRkaQKtqe7yLUzix
         y8nUEZw7TDFWgA/trTd0Koao3ZmfnaeerdF+3kXbbyCGExoXfoWROogoApeM+3uQfDcF
         /Krg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53361GQB7U1Y4phK1zQZPlLhuLSOZTYxSFhEGfjZtc16gbIH6360
	jzVNYqHl8j7f5h2aR8Ineek=
X-Google-Smtp-Source: ABdhPJxR2i+VSTinEG6LD54GioUeEOgdV2SU44LjX0t+iQaQRujMUEZXUyEV4yWL4SyTAGR/rhtWKA==
X-Received: by 2002:a02:a30b:: with SMTP id q11mr3445255jai.77.1601500236688;
        Wed, 30 Sep 2020 14:10:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:aa90:: with SMTP id u16ls385204jai.9.gmail; Wed, 30 Sep
 2020 14:10:36 -0700 (PDT)
X-Received: by 2002:a05:6638:218d:: with SMTP id s13mr3534963jaj.125.1601500236368;
        Wed, 30 Sep 2020 14:10:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601500236; cv=none;
        d=google.com; s=arc-20160816;
        b=WTC0FlFwHjFzeTk6wGugLKbAXyVWBruBfo8NDGmiF0xdp0NzqU/x7iSA/49ob/mVoc
         gm1PV6QHnDhOwXsoCC0ngdQeMxWHqNWXX0qG0mrnL56RKSKgsXdoUARJcyjJMjLjJXP8
         xc2PGxFsg/2WiTmgjC+x3kAh2g3/r9/e6Fq5l6sZPLsx2ghOMJFATvhWdUqjZ05ozfqH
         3jF5Ab1cb/CDLduHqJoUgXTYLkx+7Mt+emtKBHaNfxRZngBplsbDkAV5cgd4BF6mrOe+
         r6/PXdw4x+YfVPmY29mOuNzCzhesAU2fdWzL0GuQG81Xgzhoj79eFPCMg1sAlTVXNoxx
         QfsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=43NmDXRdfvytQQYY6+SkI5I3v0G1ZKlfq1R/B+8Rbe8=;
        b=mvrg+t15chwuBYclkrrS4PbY5Fo9CpNqRZiVle6Dxjx/rjqSu1b2NuIOIbWSIe712z
         J4UjgPSStwL1h+aTuOYthmffLJ7FGBQwxYH+aPVNfp6KsYljT1Ak335Wzx1+57li46UU
         +pNVlu08ZXkfSoOHGsPHvhZ1fuBPLEAx5W/E2bNllWSJGxWn4Sc+kUDYsBJ6bxdG9mW5
         6bMqBj8+DapbNtEXGxoHJmaFEffPPtuWzTqkkDo37eWu5Wl72OwTMFYShQG98G4+dhxS
         WmMNQvmN/NSmvYBH5Ch3iuKSce29nRce7C9EpOp/iCaPx7OYURN4WrtCpmO8W+m66efY
         XF1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aznXL+Mf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id z85si247267ilk.1.2020.09.30.14.10.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 14:10:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id d13so1937064pgl.6
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 14:10:36 -0700 (PDT)
X-Received: by 2002:a17:902:c40d:b029:d2:562d:db9 with SMTP id k13-20020a170902c40db02900d2562d0db9mr4239380plk.46.1601500235715;
        Wed, 30 Sep 2020 14:10:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n2sm3182853pja.41.2020.09.30.14.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 14:10:34 -0700 (PDT)
Date: Wed, 30 Sep 2020 14:10:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v4 00/29] Add support for Clang LTO
Message-ID: <202009301402.27A40DD1@keescook>
References: <20200929214631.3516445-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=aznXL+Mf;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Sep 29, 2020 at 02:46:02PM -0700, Sami Tolvanen wrote:
> Furthermore, patches 4-8 include Peter's patch for generating
> __mcount_loc with objtool, and build system changes to enable it on
> x86. With these patches, we no longer need to annotate functions
> that have non-call references to __fentry__ with LTO, which makes
> supporting dynamic ftrace much simpler.

Peter, can you take patches 4-8 into -tip? I think it'd make sense
to keep them together. Steven, it sounds like you're okay with the
changes (i.e. Sami showed the one concern you had was already handled)?
Getting these into v5.10 would be really really nice.

I'd really like to get the tree-spanning prerequisites nailed down
for this series. It's been difficult to coordinate given the multiple
maintainers. :)

Specifically these patches:

Peter Zijlstra (1):
  objtool: Add a pass for generating __mcount_loc

Sami Tolvanen (4):
  objtool: Don't autodetect vmlinux.o
  tracing: move function tracer options to Kconfig
  tracing: add support for objtool mcount
  x86, build: use objtool mcount

https://lore.kernel.org/lkml/20200929214631.3516445-5-samitolvanen@google.com/
https://lore.kernel.org/lkml/20200929214631.3516445-6-samitolvanen@google.com/
https://lore.kernel.org/lkml/20200929214631.3516445-7-samitolvanen@google.com/
https://lore.kernel.org/lkml/20200929214631.3516445-8-samitolvanen@google.com/
https://lore.kernel.org/lkml/20200929214631.3516445-9-samitolvanen@google.com/

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009301402.27A40DD1%40keescook.
