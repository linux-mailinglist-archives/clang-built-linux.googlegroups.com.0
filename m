Return-Path: <clang-built-linux+bncBDY3NC743AGBBZEWUD5AKGQENP2Z52A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E550254EC1
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:37:09 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id r9sf5632918qtp.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:37:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598557028; cv=pass;
        d=google.com; s=arc-20160816;
        b=hIKKpqB3EsoBIvt4p15JHRJHuUUPNaxXyxs42sh12StLtAsHAF+QTYbyMQqwTd7/ua
         YlAv884JHTp4ddMzR3531bONOB08Hl1fd4KZvy5JkqfupeJohrAKUwzUBJ6Jwjwzjs3l
         XMxOeAm1uJNsJUt7jVvsEke9TOr1PvdFP9hobUVJgnTJXjU1dk9z2LQ8HL4+AgOA3JJF
         n4RIhcN+OlzEBcbPRsvIFS6F9EyKVIhDHXGpq+Q/GKbvBXGi6GvLgJ61/eOGAe6wy+ht
         qnrBCDCyhGDpeksOlxN/SR+vXktqsTiTotDMbP+pxCt9l65ixDJ+70sqcgT5czG7mG2Q
         X1+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=+WIMS0zj5/urPUardtDfNpthAjshpcghWG1DXzv/dPM=;
        b=ICIg+5pSUVqShXNtbyyj+Cl2QEzhCG8I6dSpF46KbsseeDUHTOAc9Ukj7kcVKawVth
         SG0rGQLdcOnsvGx0y16Tnt4K5k35eQo5t1OnS8gqLoMHt7cE+v0vvCYWh5s1BjU4zJJp
         Np+Z/bZX8D9GjbVnwGzpHi8gB0YFFz0ek5Syu3HngBUNsG5bETpgY3EJDUEwIZMqkOIv
         ESyFxkB+1V6LKXshVGckd+4IUxMZVI3KNjYWTlSx90s3Am7PmZQ670jQ1iwjxG6S0PmG
         FcYjdBfUSOre8ANzDt4XVqULxXjj6OpSzzw+G+9fZB9s26b/VDXrcBjvscOscylA0n2u
         xHxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.51 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+WIMS0zj5/urPUardtDfNpthAjshpcghWG1DXzv/dPM=;
        b=rrpURdyNth5s87wEzgc+Lxs2Mji1YNuE6/X5qWTeTfG0IsdpGrsDte3Wnb528ktah+
         ZFPXFHVVCE2OFQNWpNidkL539/ZqrQ5VHjOm0Fv/CdAhZs02udUGNY0LwZ61fCi8i2Uq
         K4ImlrgC8hwAt7u/XBSEO4gUUWY24diJ3++WCPT63lg1zARMgPvT/NFLKoluEIwo4Jvj
         bOxs7piL0lG1ToE9KP0dJ33InrjAD1BNjz+f4OLvSROHVfWcxfXBzIE+7xH6fKf2x7yM
         y4JvNueH2vX/lkEQhYxH3pWfqijkRlEnwbRZcDuNnI0kPlmMRDxVvr5OeUeUiYpHzkvs
         BlSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+WIMS0zj5/urPUardtDfNpthAjshpcghWG1DXzv/dPM=;
        b=XXok9iyOMCz35noVSyr0ZIEC8Bvwl+boumTFlWtbn5W1nUtz+87nrpqNIwCcWg4GFu
         Uqr5LPK6LQBIgZgBXJhD/8FAWeu3TXfApYzRNBMzNep+ljfDgkHr5JGatiIVqSKn3AeE
         ZQ/AUSYZ0O90wrN+ZifXbZDHlpjfEckQNoAqv53yZQuFbKLV5cIkM9DRfoK2Wk9wbRHE
         f3PU4sSthZ/lMUG08gWkqXOvSvcq1wU7EbyXYXrX1wX8f1r0e+dHd9/tZWzShKFIX53b
         oOatG1YTtH2D8Jr38sqGjwJEHVbd9gkIOh9hQdEEFOd1TtrMSwm2mu38qRWB7KgcDJhB
         zbpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330S2HD6Ihbi82kROxqYl9n006wWRyT3dm32XpQaITJF6/mAR2U
	USyqvUGqqgWsjkkvR9oFeX0=
X-Google-Smtp-Source: ABdhPJyMom8vdSLvkDu5nTE9qtw8QFjPxN2s+Niak1ZNn577bIdbeCvPjeY7UdH9x3Rv2bF29k7x2A==
X-Received: by 2002:ac8:4458:: with SMTP id m24mr8410890qtn.392.1598557028672;
        Thu, 27 Aug 2020 12:37:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b987:: with SMTP id j129ls28949qkf.5.gmail; Thu, 27 Aug
 2020 12:37:08 -0700 (PDT)
X-Received: by 2002:a05:620a:6c3:: with SMTP id 3mr19844268qky.426.1598557028290;
        Thu, 27 Aug 2020 12:37:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598557028; cv=none;
        d=google.com; s=arc-20160816;
        b=a/G6VTpp/wRY+j2U/T8REZtKNXqg17YfvAf5IzhLkqAzo8zTwS+czBvgEBwKrnTgd0
         IrhqQNDveoUXIITfb1CpxB9+rTw4akBWalYBiUOpopEZMHHLPWboOaC0zSdCOWlYOcQN
         zX6c9MeyCtSTCabsqBoN30oEDjXTEbfsfG5MXwVwcwVxk+Xj4yc22cQd9HN2v7xC9MHn
         Ptrv17erLCpTk99+TbDDdPUYiZvvgE7lmJ7wVMhjR/1AWlZ2UXskYO+EoY70X79Cald0
         p5GqJ7A1Cmrid5bjxHg/gJ8xtZCHiohotsoMIko9pZTTNo2QHN48lO3N3GWTYP61LPYf
         mmPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=qRPBXyMs0BaIxwj6Cc6exc9O2J7poGocAUv/K0VEF1c=;
        b=StKIGGrx5M7RyXlhzJYLTXcicnmnVBGVydsZYGH4PdQ8wI2/XhJkI6fYja9qJifuD3
         kn6lMv2t8He3NkFCA07bsXAm83Pe0eigumHZuFnJjLMv7ROlw5Rhj7EbzLy06VNZIEtr
         opUv++aygBpwOH4lnSoJlNQXlIl40+jtoAfm94RaO5KffqdAsYBdyJ7uBH1IwA2I9iWE
         /bkQDQVUZn+evpZTt/b33wLoZw0UMfpfmkg1RgCR8B2epOozDPgtNPHQVnGHJE1Vl2u7
         2AyLrVA3IEd8jgYNO7e3h0qMsdQXZe/wrtQKMUxkXSjRnhkDdVounBQIspvqW8IsvWXH
         YfhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.51 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0051.hostedemail.com. [216.40.44.51])
        by gmr-mx.google.com with ESMTPS id z19si147770qkz.2.2020.08.27.12.37.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2020 12:37:08 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.51 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.51;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 548AB180A68C2;
	Thu, 27 Aug 2020 19:37:07 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:967:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2525:2561:2564:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6742:8985:9025:10004:10400:10848:11232:11658:11854:11914:12043:12297:12438:12555:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21433:21627:21749:21811:30054:30060:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: hill72_3d03ab42706f
X-Filterd-Recvd-Size: 2409
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Thu, 27 Aug 2020 19:37:04 +0000 (UTC)
Message-ID: <98787c53f0577952be3f0ec0f7e58d618a165c33.camel@perches.com>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>, Andy Shevchenko
	 <andy.shevchenko@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>, stable <stable@vger.kernel.org>, Andy
 Lavr <andy.lavr@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, Rasmus
 Villemoes <linux@rasmusvillemoes.dk>, Sami Tolvanen
 <samitolvanen@google.com>, Andrew Morton <akpm@linux-foundation.org>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>,  Alexandru Ardelean
 <alexandru.ardelean@analog.com>, Yury Norov <yury.norov@gmail.com>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>
Date: Thu, 27 Aug 2020 12:37:03 -0700
In-Reply-To: <202008271126.2C397BF6D@keescook>
References: <20200825135838.2938771-1-ndesaulniers@google.com>
	 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
	 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
	 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
	 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
	 <202008261627.7B2B02A@keescook>
	 <CAHp75VfniSw3AFTyyDk2OoAChGx7S6wF7sZKpJXNHmk97BoRXA@mail.gmail.com>
	 <202008271126.2C397BF6D@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.51 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2020-08-27 at 11:30 -0700, Kees Cook wrote:

> Most of the uses of strcpy() in the kernel are just copying between two
> known-at-compile-time NUL-terminated character arrays. We had wanted to
> introduce stracpy() for this, but Linus objected to yet more string
> functions.

https://lore.kernel.org/kernel-hardening/24bb53c57767c1c2a8f266c305a670f7@sk2.org/T/

I still think stracpy is a good idea.

Maybe when the strcpy/strlcpy uses are removed
it'll be more acceptable.

And here's a cocci script to convert most of them.
https://lore.kernel.org/kernel-hardening/b9bb5550b264d4b29b2b20f7ff8b1b40d20def6a.camel@perches.com/


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/98787c53f0577952be3f0ec0f7e58d618a165c33.camel%40perches.com.
