Return-Path: <clang-built-linux+bncBDY3NC743AGBBANK2P5QKGQE2V7JUVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id BE61D27F1B5
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 20:57:06 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id c18sf1581988pfi.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 11:57:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601492225; cv=pass;
        d=google.com; s=arc-20160816;
        b=e6JhVw364Hc/BDO/s/LPGP2RhkcR+RwjvGiUybKIB6ihylyEb0BRSt/sJBlirg7ROd
         hdEjIDOpvT0YjT8x7M33zhbAu5h7g6oVEEfs5mMIs44iZR+TN6LBlehnOG4pW4MPTgTS
         bqA913+uepDFGYvwDicH1uMJxavzcv66CH3SishB5RSG9UV7lBzClsK2oSHJ1zO7Orat
         bpLkbWQazpjmXQxp2p9Z/UEAKPgT937VGuSNPQyC3J+3NRvZMTvWnURtIKd+5BHgfvy0
         sbpivTI/S+jpT+tlnhDunRU0J/vZWTpjotc2GUG4kOffS6pWb0Suc6bFjq8Vp+D+bcd3
         8BtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=zoH/aF3yvAAqURKGoSAZ6jayod/hfctKg1x16qzU89Q=;
        b=oJ66iHNi14zV3FdHkBnb+WvNUxI3KXO8HfXuzHVPFiKCzWBwHVOdUBCDPB1/vuMejB
         DZ3jsehVXDaql/af4RZ3Z9kcEBOcBj96x/mqrm/B6ZNXxezuGlBWgpxE6CQ/wHZW/YfL
         0IEyMYxh5YN7GnMlEMWcDjtPoYNWwfhFaQSRchLyy9sA6DEGP5GzlXJk0Axg3dw+C4LY
         udc4bKo9X7Z7PrSYlr/FkcaJ0v49y8TTjZKjL3n9fwZG0DaudJ+8gLExToFltHR7GcNy
         GOtB+RNnvlo7HJWUDfDyRl/uhWutd/PZ38HYv4BDp1KpyfvdybrE3U8NsfCSBEopxN9N
         z32Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.11 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zoH/aF3yvAAqURKGoSAZ6jayod/hfctKg1x16qzU89Q=;
        b=evhhiTEJD14HLH3q2TH5LWrmhYr7WcY4A7hZpEeMW0Lp0SW5dRYyLpb0gurYRIgegO
         5yB84UWEEahAqViVNOSgw9tYboNHjlybJH7Ob7auPeLZYR2a4LXcdvieda3Atv6QtisR
         G5kcRwolBMgse5XDABXUN4YS12isWqmrIg+eOcz6DUJcw2+/mIVHJ4fhrGfMoMqOpE9C
         JLZMjZFE3IChVWlHLLpLho/dm3DYt0EGtWguVYtBUoSgeGlCyboeIeIoWuTpIieQazxh
         r8RMV+pnMFxLi5aOUJdF0yReBLAaz1Is+jiWj9cSjObm+Y1ClbeZvGbwznsVKvFU8u3S
         loAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zoH/aF3yvAAqURKGoSAZ6jayod/hfctKg1x16qzU89Q=;
        b=EokFYL+z4rTGvtsjdwIiqtamNIZhAygcHM3DA1aNk9J6c3bKkuLNfCp4USFTq+nrhW
         8p2eC6KXAvtf7ZreZtvvG+SGLJH4K4PBMEK8Y+FT+2w8g2Mb+gupQwv7wSO1pdBzLjeG
         9ClocHtYcI4yAV3VN1Cmrc28LDZCKoq2tv7mlYkacMeyYS4ZzW43V0mpxt+ffEx0HYq4
         keCZ6BdEvSNhsKEb6GLfKcl3QMT3mMXRY6pVtOMyEVaf8XkIKWmnx4id6nTDcs0keNWC
         STaBhEZqq6+qBYtQw+ox8RoN8SnTHJaTBBNXUEn+mW/1Fq5TnLVTNfppyrIbLJRfAU/1
         i26Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bMtuTi2/nWYUQSMO9hfXx9PkN8525Z9g0I0vB9Eb+tnU6psFR
	EOsowgk8vmwJ7q+24jycZII=
X-Google-Smtp-Source: ABdhPJyQPvqPPcld6xThfflTbPKBVi8LAeXGfch6LdlOQGN7njO11shLz0QTOt2b9eDGdi2Y/dgsVA==
X-Received: by 2002:a17:902:684f:b029:d2:4345:716 with SMTP id f15-20020a170902684fb02900d243450716mr3847313pln.27.1601492225406;
        Wed, 30 Sep 2020 11:57:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ba81:: with SMTP id k1ls1423795pls.5.gmail; Wed, 30
 Sep 2020 11:57:04 -0700 (PDT)
X-Received: by 2002:a17:902:9698:b029:d1:9492:745b with SMTP id n24-20020a1709029698b02900d19492745bmr3938021plp.26.1601492224695;
        Wed, 30 Sep 2020 11:57:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601492224; cv=none;
        d=google.com; s=arc-20160816;
        b=MFGpjIvLbqLbwPT8iPKdj8N6wfVcE1ANq37vKXrFEnCJMJxeXUbx8aTN2pnyKbwan3
         ia9ulYnbPzn7n1Od7XVFRcpVyuC4tIZDhl6070Ek1hMP6dNB/V0EfTgQyOYRR1wfGh/S
         sNLw4CS928+GHgvRgJnRxNPnkGftn32y7WpK0tTpzeIsf/SkQXI2uMl7y7+AYLD4haYQ
         AJ3xdSUgAbcto3CJ1oeZslIy2dAH84MoH8FM1fyYdhxId6BwbDM6FQECpJFBtGDvyj5J
         Hbkfs+9zAZDBLDiboOQ9M081mOeR2gVgBdAnz2ycrv3ubpq5YNzRLSiYQXtMYZynOLoV
         VT1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=ypeAQMbJsqxIZ1/XFKliorK0A9Emj5Iog6G/5y5VFCo=;
        b=0Q4FYXE11O3u0I4z7Wqk2ZxKPVH37x0/OC3FOdDoRF57BuSs5iT/PXBuASO4t97rWk
         sSetflBVJonmr+DOe/njAW0oAInm6kNYL+jreGl7ER7wOCANsSKvNjCQj+ZDrvIiNyFe
         +3d5CbvNu/IAh+OX2d2X/o10oEAu2RoDPnaZmpWyyTW+5NBOQQutMAHctRWzz68GmJUQ
         wWYBUNm3SD2fEAGSSzN+NgntW+dHeJrCI3ROWNkgZ12xHszPQV+qTJkrBn6yerdTrXtz
         pwcpDFySi5EqucE3+mvn8wkkgXhzeYfr0YfKPGpCjOi8GqNDVMoecWdP5uEfTrNDiCKm
         TUQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.11 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0011.hostedemail.com. [216.40.44.11])
        by gmr-mx.google.com with ESMTPS id w23si206932plq.0.2020.09.30.11.57.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 11:57:04 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.11 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.11;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id B102C2C9D;
	Wed, 30 Sep 2020 18:57:03 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10,1,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2561:2564:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3871:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4387:4470:5007:6119:7875:9025:10004:10400:10848:11026:11232:11473:11658:11914:12043:12297:12438:12555:12698:12737:12740:12760:12895:13069:13311:13357:13439:14096:14097:14157:14181:14659:14721:21080:21451:21627:21811:21939:21972:30029:30030:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: soap41_0b0aa1027195
X-Filterd-Recvd-Size: 2464
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Wed, 30 Sep 2020 18:57:01 +0000 (UTC)
Message-ID: <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com>
Subject: Re: [PATCH v2] srcu: avoid escaped section names
From: Joe Perches <joe@perches.com>
To: sedat.dilek@gmail.com, Nick Desaulniers <ndesaulniers@google.com>
Cc: "Paul E . McKenney" <paulmck@kernel.org>, Steven Rostedt
 <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett
 <josh@joshtriplett.org>, Kees Cook <keescook@chromium.org>, 
 linux-kernel@vger.kernel.org, rcu@vger.kernel.org, Clang-Built-Linux ML
 <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 11:57:00 -0700
In-Reply-To: <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
	 <20200929192549.501516-1-ndesaulniers@google.com>
	 <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.11 is neither permitted nor denied by best guess
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

On Wed, 2020-09-30 at 18:41 +0200, Sedat Dilek wrote:
> On Tue, Sep 29, 2020 at 9:25 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> > The stringification operator, `#`, in the preprocessor escapes strings.
> > For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> > they treat section names that contain \".
> > 
> > The portable solution is to not use a string literal with the
> > preprocessor stringification operator.
> > 
> > Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> > Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> Puh, remember one year ago an overnight bisecting to catch the root
> cause for "escaped section names".
> 
> The two patches I see - this here and "export.h: fix section name for
> CONFIG_TRIM_UNUSED_KSYMS for Clang" were new cases?
> 
> Do we have a check-script to catch/avoid such cases (Joe Perches?)?

Try the script that removes #S from #define __section(S)

https://lore.kernel.org/lkml/0e582a7f5144a33f465978d97701f9b3dcc377f3.camel@perches.com/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/133589afbe999347454dfcc46ae782897bf9e3a2.camel%40perches.com.
