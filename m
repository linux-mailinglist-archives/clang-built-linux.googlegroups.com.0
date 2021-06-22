Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBQ64Y2DAMGQEPUFOLYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EA63B004E
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 11:32:52 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id a2-20020ad441c20000b0290251bb08ce61sf73109qvq.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 02:32:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624354371; cv=pass;
        d=google.com; s=arc-20160816;
        b=DjTSX+BfVJWa+BRQpRZCy9mk+Z5rs6YE8agclAp66eJzsspOhV9XzoJXqgQer5JJix
         dhQRpfMhjMcSojV0daP9aGwLDEtj01iscFk9polKr2fFb4DxV0DM6JjGeiDb8nqn6ohc
         hVXyNf9keS3qM8ZgSOsensO5NEa6ZJlv5EEw1+DYOBhHGIPZ22gCHvseMWapMi0cxsff
         V6xGsc5rtH+OkWxQa1qmweMLNG1aW/ipNXbLcDUBb0caJ0YtY3yYKNtrCB1ZVhtFZGsq
         kUS9svZlGjtOWQk+xUiFSCIlgju8VRM5chE0++dxcoRhvaVIxVb8IC5dBycDKoSPS5Mq
         8s8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=46gMzc02FrpFS3M2iUnabtD9DH5e26EANlE64DEOgTs=;
        b=fEsD4LI3wgEIlSIoo6p6OICR3V2dvIQbKt3bTsqBlhtzKX873Gbtju36xPgPLsBQ6T
         3wETfYOQNpEw+ndaaMIXGtAM8hoOQIX7wAJ5i8FBaQUcLpm1GXuM6+mFCR8r0AT5tHQB
         p98eK6e5Rj3qO0l7pQScxWWXjaDv10iAmUZSiPHiN7XflV11XC+uwBQuZKC90jQDWTIY
         93y7hTEivcGHIzJMqMi2vycO2EsVUGzfbu0Hb1Kfccwcj/eo3mdkE/GS9rZpiZbkzH9P
         8rmtnxAItyD9Nx4+ZsSTpg7um+FefmeqSJgLjykCYBAYWzYXPI5thSwQwjPSmnQO+uQm
         84tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=46gMzc02FrpFS3M2iUnabtD9DH5e26EANlE64DEOgTs=;
        b=PI/lhZ/U7ZnH++HPfcHN2vA3T6iLJWa1zVw3NOHLuGUQT5AGV1nmhDq+kDt+uRG9Ux
         HlEVQGjBvsB3XRVPKjtcTlJUyiQ5YUwVFWs9T6cRwHyFYSpe2D0JDZESxZDpfc9Y+h9V
         ec/KI/t4y7FFIpEhExokogpr88PAkCHmoElBE6D1986X9lucDqvYi2Fb66KgJhQZuuZ0
         kycA5v2ny6TnZw0g3xMFfljijIBXhHCcMApvXr2OonBPyaaV72TF6xvWQDxxhDoHoiKD
         XZQQnQ2lsPUQFDzewRGWjQcWB8zfpoFEhidgAHz78K/NcKyQEByx96x91rxEqBG7UN8q
         KK5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=46gMzc02FrpFS3M2iUnabtD9DH5e26EANlE64DEOgTs=;
        b=sJwfYTU3b2wuNlMGYhB7CH44MlRpcnKwzGi7+mLyFbhxzniQReEocRWR+ctWqdSiVo
         aOIhC2ImhALN4FH0Tu8/iaG43Rc7BRRGevNaC9ra2jQZ4nid45qjxJItOTbLA94U7EE4
         ZcIC+bGWBGz4vLOhWP4BQSP75mzpg6CoDmZEBeK2gx8+AfPdJci5ongilOLXWWfLj6ML
         tMwRuDeqSxURN56/kADQ7ZdIm2HfI5FJSO+jjEw7vrVZ8cxGGOlNrBbEcYW3DHnmPQrm
         HJRrv3SBeOhr/wZ2ctY6WVK5xZzqWHE3al2/QadB69cc9Fmr+Os6MHSiehHbBrwZ2MN+
         1YJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RRkDYJ2FhjmYJk9pEOIFf/AldsGBKniOhj0LWBC69g0I4QSXq
	9Bf228p6nJTVvSSR6ojoBFM=
X-Google-Smtp-Source: ABdhPJx1w4QbrBqRoOZPrEalASIs+xPLMwzyFQyMQ/cIRNVFlq41jWv0mdzE0JUBMYCgtj1BTWo0oQ==
X-Received: by 2002:a0c:e18c:: with SMTP id p12mr15822311qvl.54.1624354371598;
        Tue, 22 Jun 2021 02:32:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:1015:: with SMTP id d21ls10314606qte.4.gmail; Tue,
 22 Jun 2021 02:32:51 -0700 (PDT)
X-Received: by 2002:ac8:7f91:: with SMTP id z17mr2571909qtj.167.1624354371150;
        Tue, 22 Jun 2021 02:32:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624354371; cv=none;
        d=google.com; s=arc-20160816;
        b=kDZj8w0C0LQoIbamRVMBxe4N8BgXoFWSOwfWpvdEz0bgTcvZOZuOc0JWflWm/rRyJq
         OQQexhCzO/6IoOWd7Mti2LMV93wneRv9mhYAzOc8Gvw0elExwoSFvUZSSyAwETbPJK30
         BcWtmZxbnxBriM/Dst1TsE4lAeFmDZgfh3jNizojE4Nr2kKm+X/rZbwHTdX66RzFqRLJ
         6zKIS4EzH38QPkCtSAdGKY5Ph3V6Ivb2XbDAttgUvsZfCF21t/XffVfS+77OYj+Gey9g
         T1r1OYOHEHDx/+s9uWFjEOLLtowXqL3dSO9vFNuukGtuKIHbUHDXjx2Lw/PTaOC1aQCC
         AGqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ZpoXkhKRnAYZAqhn6wPN/jQ1FT+SphuLu/H3fWLwrVg=;
        b=xGooryrN5A8wcPh0kDUlMmU6YT86RRvthV1ef5KmxnvE6KOotH4KvHaG/1F9uTq66L
         W5Z/UkPL1UlRRn6J29koJHSwiSVkjFInUGw78mz8WmhoX5GFP6+zRCdrVtAB/yt995x6
         //Pm3M/PLKwYSo/tTZwxWBGgC+UgYSSZCQVCiNcWKMdVUv8eaB/9iJzVFtOXP6pB96qA
         GYwtE5An5G5ZxQx6Fmgwfpp3RVApMM4X+3S/DERtKP3T6gi77uBqZcnkmbyWJ52omf12
         z7q+Pj3JIZuI9+wqLas/4Je8vItLGHIth7FuHf903J7JmtTf5sGfPDJTLFNN07IOM2GG
         2DmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x10si54533qkn.7.2021.06.22.02.32.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 02:32:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1058A61352;
	Tue, 22 Jun 2021 09:32:44 +0000 (UTC)
Date: Tue, 22 Jun 2021 10:32:42 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Bill Wendling <morbo@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Heiko Carstens <hca@linux.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Bill Wendling <wcw@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>,
	Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Johannes Berg <johannes.berg@intel.com>,
	linux-toolchains@vger.kernel.org, Marco Elver <elver@google.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-s390 <linux-s390@vger.kernel.org>
Subject: Re: [PATCH 2/2] Kconfig: CC_HAS_NO_PROFILE_FN_ATTR, depend on for
 GCOV and PGO
Message-ID: <20210622093241.GC3555@arm.com>
References: <20210618233023.1360185-1-ndesaulniers@google.com>
 <20210618233023.1360185-3-ndesaulniers@google.com>
 <CANpmjNNK-iYXucjz7Degh1kJPF_Z_=8+2vNLtUW17x0UnfgtPg@mail.gmail.com>
 <CAKwvOdmxGt6nAj+dDZEPdQtXNbYb8N6y3XwoCvCD+Qazskh7zw@mail.gmail.com>
 <CAGG=3QXeAxaf0AhKsg8P1-j2uHOoXne2KCOCEhq9SKa-e2dnag@mail.gmail.com>
 <CAKwvOd=9oAGPeuQmWnAMOxZn2ii_CRmyWnheoyXGcd09-U_CwA@mail.gmail.com>
 <20210622092533.GB3555@arm.com>
 <20210622092937.GB67232@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210622092937.GB67232@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Tue, Jun 22, 2021 at 10:29:37AM +0100, Mark Rutland wrote:
> On Tue, Jun 22, 2021 at 10:25:34AM +0100, Catalin Marinas wrote:
> > On Mon, Jun 21, 2021 at 01:43:54PM -0700, Nick Desaulniers wrote:
> > > We need to be able to express via Kconfig "GCOV should not be enabled
> > > for architectures that use noinstr when the toolchain does not support
> > > __attribute__((no_profile_instrument_function))."
> > > 
> > > Where "architectures that use noinstr" are currently arm64, s390, and
> > > x86.  So I guess we could do:
> > > 
> > > + depends on !ARM64 || !S390 || !X86 || CC_HAS_NO_PROFILE_FN_ATTR
> > 
> > I think you want:
> > 
> >   depends on !(ARM64 || S390 || X86) || CC_HAS_NO_PROFILE_FN_ATTR
> > 
> > > (We could add a Kconfig for ARCH_WANTS_NO_INSTR, which might be more
> > > informative than listed out architectures which might be non-obvious
> > > to passers-by).
> > 
> > That would probably look better.
> 
> It does; see:
> 
> https://lore.kernel.org/r/20210621231822.2848305-1-ndesaulniers@google.com

I'm getting there, eventually ;).

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210622093241.GC3555%40arm.com.
