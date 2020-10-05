Return-Path: <clang-built-linux+bncBDY3NC743AGBBI6U5X5QKGQEYQNSC3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6927A283EF1
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 20:47:01 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id g24sf7058826pfo.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 11:47:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601923620; cv=pass;
        d=google.com; s=arc-20160816;
        b=X6a8AjFmlvgGyB03B2/7mC/ZoeBSR9TaaCNDvlEL0XyontC/D7WyOguLaTH6ntKEFm
         LZNEwvldrmj1jVyNitvQvQpwa2NEEKmLAPMY1S0BN62HtKTP86b1KgbYeqUmO8flAN+6
         WKMlCohwCujON5jrHY9+YQ3tNIK+wL1eQSUylH/HKZ1U+PLF407lVoMpM3I9adFEhWkq
         ACTplv3XkEyE5z7QZQl7JHlGC98BZGz0HekpPjroUuax66v3Yf0OP064Lap6UH71hh5w
         n30JJGyUeot27HqmR6JsUGEXyLASWZaFy8eKRzIZmOaAd5J7r4xGFngCZTBc5dBP9VJx
         b0Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=d7MOKwiRmakL0B6GcjJOPHSGIkNXhcTveGqWbc/rCkA=;
        b=w5kdcxn+ahzSpOKXzn1/Yx5jbwKkcw6BTFthw7vaRnOca5IDhrsXAQJJN/K2Mnr4Ye
         fD+HW70YzhOirYQqPqiSxoNbqQqcp4yxoR/Z6z1PxydnxyU64oXb+O+kulNPSMF/xSi5
         j39h6/zGDSDhILUB7r7C6o0guae61BOdpPlauY3D0l1+nrihpcxodCtgs6n8gCwAWoiD
         OxhIeE63viIE4vZZbATy8FA7n4aLtvCOsPIUpVaVLscfoHL3SEbiUKQlCJxPA1hgsnPD
         PMyKYQU4+3OX7VUCiservhp/Xm9cLBSO4y2E1ukifGJCFh8ykq1YOnepAA22uJMS6umZ
         PM+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.246 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d7MOKwiRmakL0B6GcjJOPHSGIkNXhcTveGqWbc/rCkA=;
        b=VggFJqTjMTZG5tqLW2tm1ty5uTXHEOB1y7sbj6L08Uw6xYxRPvcT3zsql4pQtixbVn
         8MKihEC6TqSbmeFDXqe+1f+Ap/WhAxi952U9es5a0u1Jf4tGmPYuP1/iXLh1AOUcXtfN
         Zri67cmbp21yGJ+YcNxysOsa1TTdGta/sW6tv0rcVtU1AwhkjN7vl6SDPRxErbUXbIa7
         /dw/f37DABGYY/NTqZ1KmwnLFJEzB9D2MMwqQrWH+NMIACqoP+AWd8gD0r4n16c7+o1m
         ayspduPZHawWO8ttwHM/beKgAIQGdoL1mj4GrUmAJC4uL0/HY3Gg36ZEhS4GDJEukfzJ
         Gurw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d7MOKwiRmakL0B6GcjJOPHSGIkNXhcTveGqWbc/rCkA=;
        b=H7X3Hee7HYyhfTKGTDaYe4tsWGh3dmZtII68t1LJQVBNJtnb/2yx5bSHhfxVavinq9
         r3iVaZyqVT9Ybf54o7mqhPa/cZlEnfzqdJ9ShTuGLFtYg3kev2wbtGzImjZbvf8cH2lR
         U3Oic2mtQyFaXdqnEULWbnaefI7KpDxHxigAUMmyepZpBKxsGo8U9Z5Rwp1Ph5ekXFnk
         kpQFh6VHb2dw4C+0CAlqVxkvTEJ72YOW0vAT6k00DH6BQFwis8Ply82Kq1UpgPa5Yb7e
         Gu3ymArKrA9Uf6kqa7UxYzFZJQCf/K9wQF6T9Cni0trzAYDF+8Wd8u2bksflnNXOMUMk
         atjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311cpyNjmKHClix1JItHffvpV2NWj3n+CFN2m71ZsgbyUq8La4m
	48Txy6cfEX0Q5bf9YDwuwvw=
X-Google-Smtp-Source: ABdhPJz67x2NGHsKaXJNmSVUo2Nn/8Cd3Nj9iDANZLYK3R7s+69ARGzncnIwpuoxldLG1zviJtppCw==
X-Received: by 2002:a63:f342:: with SMTP id t2mr834310pgj.313.1601923620012;
        Mon, 05 Oct 2020 11:47:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b4b:: with SMTP id b72ls2164774pfb.2.gmail; Mon, 05 Oct
 2020 11:46:59 -0700 (PDT)
X-Received: by 2002:a65:66da:: with SMTP id c26mr866533pgw.362.1601923619351;
        Mon, 05 Oct 2020 11:46:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601923619; cv=none;
        d=google.com; s=arc-20160816;
        b=LfyCstpkm7j0NBC8TVHluQkucLoYZOKtZdoF0rIlbuqi3stOSq3elpSnS21CjA6o99
         3/ZQ7C77gla/PYtzPAXnhInaGUhXIudKdXl0+ILxxXzMgXZCqOwDETOEYZeuVErVHhg9
         FxtGNzt6uqYlV2wgVVnWo6Ar3dANPsuUuH7W00inTPar5LK2ZU0Rownz8qYz3fH8z/Pb
         E/S/AdCHCWnyaAlkXHNpLVAbqm9EPAMxxDiG1jqEw9a2LHbVcyIRnuaUulZv+WkUB3YF
         qXFr6VR/6rvdk/zu5hWT4vl+ps/kxArLZ+9N9p5cPWJ7Kenz0NS7xO6T72rGbR+LB55r
         QSMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=AHPU8ejD6opREwkQYXt+pyJeW7QfIZ+Hozx0xkadePQ=;
        b=KU5vAFBPeaBn4eAsbRdKKAIQSq7QSi4Eb+bHrDuUaGDD2YGPkZVWXfHFDwIluVqRrd
         haVwHsjSY+4dFFKfd55DECW/rhHoB80MY13P5DTR5TyPGYcv4NQaivmzwlab3YXwQGId
         ksIg8MMwc9OSkJ4bJ5vi1kZS25tc4s65W9wOMkLap65v4gPoLPKQsYSgkPemLoENcWuX
         onwRRIfHMH2ss+JIoqpmPpOa6fXub2U2m1BDbvVGSkoFwTKSNuyjmfVEosUjNhTbSHea
         ykPHS3oY/7Uqpm1y8cVBNCbLbdAYKWvUuCxSAkljUt123+EtVVyviaPcbf24sU+6T5S1
         w4dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.246 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0246.hostedemail.com. [216.40.44.246])
        by gmr-mx.google.com with ESMTPS id w15si99438pfu.6.2020.10.05.11.46.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 11:46:59 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.246 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.246;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 27638121A;
	Mon,  5 Oct 2020 18:46:58 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:960:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1567:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3871:3872:3874:4321:5007:6120:6742:10004:10400:10471:10848:11232:11658:11914:12297:12740:12760:12895:13019:13069:13255:13311:13357:13439:14659:21080:21627:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: sense91_3616e57271c0
X-Filterd-Recvd-Size: 2564
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Mon,  5 Oct 2020 18:46:55 +0000 (UTC)
Message-ID: <64ccf7f562b753572b123d747c43222eb99378f8.camel@perches.com>
Subject: Re: [RFC PATCH next-20200930] treewide: Convert macro and uses of
 __section(foo) to __section("foo")
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Kees Cook <keescook@chromium.org>, "Paul
 E . McKenney" <paulmck@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Josh Triplett <josh@joshtriplett.org>, Steven Rostedt
 <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>,
 rcu@vger.kernel.org, Clang-Built-Linux ML
 <clang-built-linux@googlegroups.com>, Mathieu Desnoyers
 <mathieu.desnoyers@efficios.com>, Sedat Dilek <sedat.dilek@gmail.com>, Paul
 Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Date: Mon, 05 Oct 2020 11:46:54 -0700
In-Reply-To: <CAKwvOdmW4ZSo0yz9ZUjFhjzzDkNAghKYk_hxn9tvrKLBgCXx-A@mail.gmail.com>
References: <20200929192549.501516-1-ndesaulniers@google.com>
	 <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
	 <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com>
	 <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
	 <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com>
	 <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
	 <CAKwvOd=P+j0RaQfHsXPfB0EL3oRgAu8Q0+spUOn_v-p2+3=3pw@mail.gmail.com>
	 <aefe941251d5d58062d06099afb58dea1d1d4e17.camel@perches.com>
	 <46040e2776a4848add06126ce1cb8f846709294f.camel@perches.com>
	 <CANiq72mSjs4myQQtUoegjRggjTx9UF70nAcWoXRoTeLMOuf0xQ@mail.gmail.com>
	 <20201001193937.GM28786@gate.crashing.org>
	 <61445711991c2d6eb7c8fb05bed2814458e2593b.camel@perches.com>
	 <CAKwvOdmW4ZSo0yz9ZUjFhjzzDkNAghKYk_hxn9tvrKLBgCXx-A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.246 is neither permitted nor denied by best guess
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

On Mon, 2020-10-05 at 11:36 -0700, Nick Desaulniers wrote:
> I don't think there's anything wrong with manually including it and adding `-I
> <path>` (capital i) if needed.

All of this is secondary to the actual change to use
quoted __section("foo") rather than __section(foo)

I'd rather get that done first and then figure out if
additional changes could be done later.



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/64ccf7f562b753572b123d747c43222eb99378f8.camel%40perches.com.
