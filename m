Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBNGX5H5AKGQEEVY6CKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 65618264C51
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 20:08:54 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id l14sf4272665pgm.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 11:08:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599761333; cv=pass;
        d=google.com; s=arc-20160816;
        b=kIqHD2ye2wNlpIGNF/aXV89XhigfzFsjq64iAJNhkc7Il3ZaY53gjX3Ayi4T1VjoOy
         W6OLOJfPFBTmKbTFklFn+9ImStxh/M6D7Y8RHp0w2KMH/hzkiPP+OoC0l8TgVruR0kmU
         yI3tTMJatiJL9seJqFEEYyoczOBZEX809f4jF7kKSFBuwoWWuPR2aYj6UmOIbR1nSRvr
         oi0HBZRPJQBNubY1TPMYWLSxfmwLePV9FlnZPfJf0DWV2p88z0rVgNhSamtehZWZkwVF
         zgekSZJ7kxgoFYRIMf+SYuv3q2VS8tKS47H0UOT4/sWPV+ulkUU+NmVw+kwi6gpd+ZR5
         xJ7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=plS5mbhCSAk/UmlJ0cbG7ZcMn+UlXqE5t20GS5F1AnA=;
        b=i+8DD8H1qNrjOJ3T9NO5g9Z3yzn/zxexk45CfsaskqA/sLjUj/LEc111UfB6m7HSZZ
         IH/T3P1MnjsD+0N+N/gsAQr/vwDt7D19IqxqhjmGKgX2XZEeH6/2ruBpNUC32qTzM+d7
         0Eh1edCZc/UdECEExJanEGrVr7JcxPZcIn6qIKLKSyawpTOM+p6ANBPY4suR3V79ngu1
         JJiGxTeh5MaxHBPpQAtMk90x2DyOdza4yFExXJVjDXM1w78ODrxjIXqzqwJCFwNxJQ3j
         QKebSt+5q1IIjU6qqPK6pqQyunz01pZtPOroBfM7W+YgUVfFPbGcNFvcFZGevnO4S7ih
         cTwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=k4cPC+75;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=plS5mbhCSAk/UmlJ0cbG7ZcMn+UlXqE5t20GS5F1AnA=;
        b=K3FV8WljV6wogtSe432SidtjduPEAB2+8YXWmlLjaFdOZEK5A4zzw06beQVJcjzFwH
         mUOyQ5LUUzL8Zsk06ojTwReEitKZJZJ80yiqdul8nWltILVsXTemVC/mYTS21pMCHhh2
         irPgcw3VbT3m+hqJo9hUYAfMFRlcV+FUf0BzRo6VTaFaefIGBr7S/UvX5ZevMF5AmtnD
         2PY95ut+txClMAIcSfl+4stlHVW3zQf3hDzhvxFFC0hc3tzsnvHtSicSCtMJIGV6N/s3
         hP+E1qF3h40lDlVabqllOFm3rmzuKfYEyAZRameH6VTPvaxCfbzu1OWL8B0kW+3iAhnm
         0sZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=plS5mbhCSAk/UmlJ0cbG7ZcMn+UlXqE5t20GS5F1AnA=;
        b=MTfZT0WQtagmB4T3NJjbpCkUYLKgflIxouAzrC0qr+pgwYOVBZs0wrAr4T+TM60h9f
         +/5ckzprt1CDrmPj63Uf555DWCAqGTwXCO3wZu+XtAS/oyY/3rrQkqzi+0AOG9drjgG5
         0l1A1Mce2IsB/SwWgzeNfP/byx8ri9S7Y7T8X0T/5zxHuotx594v+4YI3y0wL3tk8rf4
         Vk9xntEKQJEOHFP2ckMyGc8C/26KQg0xgW6yKYPKYRcFfW+rkqBD3s5vOgyNuumOxcIK
         stbaScdTjH8p5kuQ+dAn1cMDHJzRsBvLPPSDuk3yYM83erl3FtFoEq/DDrs4jMqejnW0
         KuJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kmEWPM057VCy1RQreqPT5YVdSWDhlECh2HbFvVwW6SjNCUb/T
	vpRrJjLvmsoHC+Wj7Vw4yv4=
X-Google-Smtp-Source: ABdhPJxqvIHmcD3iReDat6Ka+DLbR10C/JeU/8RNCdzOS/t0zsqMtru7oGmP+P5stZtNg6vsOHPFAQ==
X-Received: by 2002:a17:90b:198:: with SMTP id t24mr1090169pjs.107.1599761332960;
        Thu, 10 Sep 2020 11:08:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:fe98:: with SMTP id x24ls3006250plm.6.gmail; Thu, 10
 Sep 2020 11:08:52 -0700 (PDT)
X-Received: by 2002:a17:902:d20b:b029:d0:cbe1:e713 with SMTP id t11-20020a170902d20bb02900d0cbe1e713mr6986556ply.33.1599761332159;
        Thu, 10 Sep 2020 11:08:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599761332; cv=none;
        d=google.com; s=arc-20160816;
        b=Bl10n+eKfMQ2bPjHpq+GSrbqGrTbryYOhIB5F5Ns3h0rxRn/RNWqxoZhRcmIyCoOes
         lXx7k3e09lpDabSdRUWrx8rhywLmLx52aoanr1eTyHCHM2yGzVttwSO777zLiGmEN+LZ
         rH7cTFpPRS9BKdBDsT3jl++rPl48AOIho9r8JVowSNnfoALrqBF2JoWIKIwC9p14C8Cv
         e7NL74pTpOsyWlX7wLU8caEcLvPAl1mZGFf8OY1na2I9qIuYid7pOxVqlHrm7YHrBsNY
         10kitdLkjwqMO5ibgK+tABx/KTck1eteFc54a93W1lSf/c7CVsUmUBTRSCUNtIyg7/10
         0aQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=vpW3QPcHXr6bjmCLt74cvbbZngeiHu+cInhD9vnp9CU=;
        b=wDdjPYAZ2VQpzABBQvGFwsNG5SQG2tp6+9eBfmuGbk8oFyHYmGmQ4h4/wUJYt5SUpj
         jl5fi2Agtbq6JcKc6PetFgVkOM2hwttwU/be3OamIQ9v/TVgLFtkJYMRjwrubJqu02VJ
         B22z90vOXwUDASDMfUJ7EwQnBecz2L6TaeiAHx47dRJZ4oGajv1Z2O3UORThMt+XnUd6
         FmO5Dc0v+khY5AGML3hsTWYWLkvSJgZqZRjrTpnbcv4RhukqvNFl9WlLvpgzM9tjH8j7
         f9SeOIDmInAkJSZd8jb7/KkVWIiJ9gZBB06YpZ73gRLjgWFfslPdv9i6LqN9VKpsegHP
         +HfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=k4cPC+75;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id lj12si240021pjb.0.2020.09.10.11.08.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 11:08:52 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 08AI8SGZ026503
	for <clang-built-linux@googlegroups.com>; Fri, 11 Sep 2020 03:08:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 08AI8SGZ026503
X-Nifty-SrcIP: [209.85.214.170]
Received: by mail-pl1-f170.google.com with SMTP id k13so1319076plk.3
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 11:08:28 -0700 (PDT)
X-Received: by 2002:a17:902:ac8b:b029:d0:89f4:6220 with SMTP id
 h11-20020a170902ac8bb02900d089f46220mr6888021plr.8.1599761307850; Thu, 10 Sep
 2020 11:08:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com> <CAKwvOdkbkvXdfXLzTNOj8m8_YWjL6=bSn4-AbRyd-5oYGJVNSw@mail.gmail.com>
In-Reply-To: <CAKwvOdkbkvXdfXLzTNOj8m8_YWjL6=bSn4-AbRyd-5oYGJVNSw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 11 Sep 2020 03:07:49 +0900
X-Gmail-Original-Message-ID: <CAK7LNARfoNg1wFi8oGar3bhzUXtNRMyuz0ksSh2hhzG_PdAMVg@mail.gmail.com>
Message-ID: <CAK7LNARfoNg1wFi8oGar3bhzUXtNRMyuz0ksSh2hhzG_PdAMVg@mail.gmail.com>
Subject: Re: [PATCH v2 00/28] Add support for Clang LTO
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: ian.bearman@microsoft.com,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=k4cPC+75;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Sep 11, 2020 at 2:46 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Hey Ian,
> It was nice to meet you at Linux plumbers.  You might want to take a
> look at this series.  It implements builds of the Linux kernel with
> LTO.  It would be good to get eyes on it and help review it from folks
> working on this from the GCC angle.  The series has some configs that
> split where Clang specific changes need to be made; it might be of
> interest to think about what would the similar changes be needed for
> GCC.  Also, congrats on your LWN article!
> https://lwn.net/Articles/830300/


FYI.

Some people may remember GCC LTO was posted in 2014
(and rejected by Linus).

https://lore.kernel.org/linux-kbuild/20140407201919.GA15838@sepie.suse.cz/


In my understanding, GCC LTO does not work for relocatable objects
because GNU linker is agnostic about LTO.

GCC LTO was implemented in the final link stage (i.e. vmlinux)
by using $(CC) as a linker driver.


On the other hand, Clang LTO, in this series implementation,
works in the pre-mospost stage (i.e. vmlinux.o).




--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARfoNg1wFi8oGar3bhzUXtNRMyuz0ksSh2hhzG_PdAMVg%40mail.gmail.com.
