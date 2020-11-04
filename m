Return-Path: <clang-built-linux+bncBDY3NC743AGBBTFZRD6QKGQEXXWISZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC942A5D0A
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 04:15:25 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id l11sf1932116vso.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 19:15:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604459724; cv=pass;
        d=google.com; s=arc-20160816;
        b=xLyJOtYTP6g+JTIHXca9F4DNIqHPOUYaGsPZOPkVdB2IUSnnpPNw0wdTkIx7M4Qtrl
         Gc/rBKKmOa5TCs92IJmBzK9Kg3r5nc3qNwQnyEuWtRFsrclE5yZn1JSCxOqsMK/YR/bT
         +hjmyVWCiC+WLJO9C/KcieL9QKN2t7129iy1gG+ZUj22rG4BMQnVQ7lKM14wa+3uNhrU
         oLodymDuk6I+qrFb6UrqumMVy7yFP7vELn4lT1BAWprNDGHxMD2MhjmH1woXUVqGVJPK
         yOITM7O7vI3UeQogBmPngYxohJzd6GTdOzQAeFuZRigj+uVOhk0WW5juis5EBdyRmF0R
         B0cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=oZR/MGacVZNLY5i1jQ2Hg9IXU5dleu+utMbG3KISS/k=;
        b=rYhjn2svjhjrKmhp8uXxSpVyVXwbRSoS4nQxlwoZ36jbVHoBjA3SIrsbday9JwebSf
         RB1nKM9qbMpBw5ynN9FJscS/+HOS3uzshEsgBcC9BAzauXWjA0JRA2rVPy+OiyJWFv2K
         f3OpM73kdrH1oebc/Aypcr4ad8j+TYLduXzWgk0cPjHMWQG4Pgn2tGwqygkIuKv1g2Z5
         ZsqJXhcGw3/c2+k6ZT1SPRR6Lxd9+9/L7CYLmE0uayBqKNaKVj+rpguc9gHs8X2iJVHh
         OUi9SuRyVp+u0/rdJTE1gXiW0OaCfkKuWrKYnAotjfhX3ALoFMoQ9FCctj4jzb37jjVH
         ARBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.170 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oZR/MGacVZNLY5i1jQ2Hg9IXU5dleu+utMbG3KISS/k=;
        b=CRiTeWkLb9X5TD88xIx//CuBYR3+0DdGza9M0yvE006sd+/ijTtyWUtqjdCVYMe7U8
         dVet/6bj1fr+QdKl2CYzR+kfad1ZtDej1vo/JznI4GOebSScT8SA6md9UPKI7pnerZgY
         S5EURqA4+pStfcOE5yoVOxvW4jT81PqZPDpjohIlbv7Ftd6mnVYbE53O1zveFjtShn9n
         qJf38cIPckEkChWDgnrLPtqysyFvh3oEk7lGAWTW55FU13kO/dadySI3NMfqrlidkMiK
         e8li3R4LIOPbcDlkEYMueY7qzwRMDdc/U2veyCM1nT6AoB4JuMYMcU2uUrdO0I+v8ADD
         E41Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oZR/MGacVZNLY5i1jQ2Hg9IXU5dleu+utMbG3KISS/k=;
        b=Z8bs6WWK+Jzj6JfYtJ4CgXytcllz87JOVCr14dYde7IDOLWNXFM+RPs+kI65t2Pitc
         GKS2kgMnDlFCQr8A5his3vd/YFwwD2CJhMPtYRQ5f5/X006IBZHAZUWX/DVsV2Kn8W1F
         v2rjMM+92pgupznwy2anOk/fta0G7l27YBLG8DwuHirz+PTd9c3SOtYvefgmRp8d5wrP
         Rlo4s3E4q/b4vBSH7rJ7IKGr3mhUa7r99wDbIc7qwhEtxRoGor9q5sigrMyJVQDzkc1T
         LCapS2+XZCqUg9UpjCtbKxyezYrjMG95kjndxS3JfiaiPVRVCqCQAfTLixQ8KnmLVNWE
         hYxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53268frgbCQAFJljOX0VYxGYcmr3xaZbQ8caC1S0azmNoqo7+Nbr
	bnBr5bBn7YPZRE9rKx2UVIk=
X-Google-Smtp-Source: ABdhPJwtaodWLX7YDjO5s3cMuswnV2aXMlg7J/XGpmMuTHV9hvZcVYMlyooyFEgP9Ij0ITyD/RmzPw==
X-Received: by 2002:a05:6122:10eb:: with SMTP id m11mr18935834vko.8.1604459724398;
        Tue, 03 Nov 2020 19:15:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:fe43:: with SMTP id l64ls60353vki.6.gmail; Tue, 03 Nov
 2020 19:15:23 -0800 (PST)
X-Received: by 2002:a1f:ac96:: with SMTP id v144mr17744616vke.14.1604459723857;
        Tue, 03 Nov 2020 19:15:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604459723; cv=none;
        d=google.com; s=arc-20160816;
        b=YMUaK86bHf5wo5gYDWBguOML2aP0dYAtOElLjpMaNfs4wa8tkTQRniHROhd2hKmltV
         +Zxr/rmPSqj/03LnE5l4C5TP2f+VgMl2PzSos7C6UTqyTuj+9eMid3TV9XX4lUcIgej7
         GQzOoOU6Y/PRo0xlWGTZVBrt5ucb9LDS25fo7W/zWefkVAZACniJaV5KtD+oj8z1vM7T
         aoUhPA2NRW6k91aSddFmZ3ErwMidDLDFT76Gfaewb9ZQUagDOrHXYDXKN5v3x3vnqIIM
         fh9gifnWZV1RhFFf/kJUdtV8cbFNEL/4iI7DBLDTEz5FudylIriu0DHTJTnpe2CrXBoh
         TPZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=MU4tID/ROMZFsNSKCTK4NX1fnEj85GpE7/XmG/DJpik=;
        b=NRbqRSfveWUYhtrcoqFQeJBi9o61492N+BNWk/nh99KN77rWSsecQ5fj46/pu3/SzT
         bicy9YLFs5PLaFYMDLSoilJ5LeIuaAktJJK8LWo/aD8ejisRx/BMFliw7bXJE7rKaTKS
         oWr6SpmT6FkO9Kt7slQcBwX5z/SNXqQxl0mEJrEaJ5JHHwbuAT2Go16GDnIdp7DPVPJW
         ZQpSYYGK5h3EnII1wYytioroEuI/TrCwtcawD93bv2wN6K0jwWV7L71yv8mHlJrGZ8eq
         dGrQ26IXH3a0LGzDSyWgI0XljSw4r3ijjIv9oz7D413UMkFQ2I0WL7BlEY0wELlqG47R
         kqkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.170 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0170.hostedemail.com. [216.40.44.170])
        by gmr-mx.google.com with ESMTPS id t26si38681uaq.1.2020.11.03.19.15.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2020 19:15:23 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.170 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.170;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 02CB4181D330D;
	Wed,  4 Nov 2020 03:15:23 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2693:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3868:3871:3873:3874:4321:5007:6120:6691:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21627:21972:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: nail62_3a095bc272bd
X-Filterd-Recvd-Size: 1641
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Wed,  4 Nov 2020 03:15:22 +0000 (UTC)
Message-ID: <8d02497f4565c3154d3f7bcf2968b56ccd945ab4.camel@perches.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML
	 <linux-kernel@vger.kernel.org>
Date: Tue, 03 Nov 2020 19:15:20 -0800
In-Reply-To: <CANiq72nnpdPSngjoOf=imLxZ2g0A7ZXe5nRjF0qf5AG1UCfXyw@mail.gmail.com>
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
	 <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
	 <f474396f8f47c303e3a3ac90a582c116e38e50e4.camel@perches.com>
	 <CANiq72nnpdPSngjoOf=imLxZ2g0A7ZXe5nRjF0qf5AG1UCfXyw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.170 is neither permitted nor denied by best guess
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

On Wed, 2020-11-04 at 04:10 +0100, Miguel Ojeda wrote:
> On Wed, Nov 4, 2020 at 1:56 AM Joe Perches <joe@perches.com> wrote:
> > 
> > Do remember that this patch is for the current kernel and
> > not any old version that someone might be compiling.
> > 
> > The current kernel _requires_ clang 10.0+ and that would
> > obviously provide clang-format 10+ as well.
> 
> You can use clang-format without having ever built a kernel with Clang.

No one ever will use clang-format on the current kernel sources
without having a recent version of clang and clang-format.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8d02497f4565c3154d3f7bcf2968b56ccd945ab4.camel%40perches.com.
