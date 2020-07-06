Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBE63RX4AKGQEWLYYICI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBCE215E4E
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jul 2020 20:29:40 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id c16sf36534829ejb.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jul 2020 11:29:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594060180; cv=pass;
        d=google.com; s=arc-20160816;
        b=bvOyv7xOzaVSSNMrBBku+P5GdAiMUniP8yvZeeGTVZxy+X2DC0x//ETARHfvtl1yLz
         kU/IMv3yutHD5RD3d09Cm4stK3oSItwsRBSBU63D0pBeYsqwwDK5KIZVE1lMTs/ZP1ZF
         tbR7YRy3s4djYPXcvoFAHupyTR8W5bOQVx8CgzT5Nhg//pV4YRp0UgQt9GU9ExL/IHDH
         nLnkPME9bMBwUX/b7sHXknAA8JPt11QnIKCRiAWDJ4ylFYwoZ1+9MDEKNFnRy1m8vsJ7
         agY3vjqKs6L9EK6v2cR8QtvwHeAkQWCIzON+ZyJ5Ozc7tzNWXiERDGJCnXZKbtwr/42u
         ibbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MRy8b9WmJ2FBDwjysade3tuzhv1KyXK2H9A1kkE8PnI=;
        b=xtTQHJC0m/LsoxmLBCzcD4jHsHWQEHIws+BQ56m9PZiBLVF8Lo1QdyyRYoyxY7Dlwc
         dFvHUwxNOAO4Y3rSOnqIuumpReFyt9yFaETFKyQLXIImRVu93urrxwTJkfchqrfw9WuO
         v0hCIY1hdxr7BMKd2vUNde0k0Ob9UdVkvGJNQkg9qyscomAU46K9y/72RgdVXG/fIDYI
         RxZIYXEIf1rejlGKzBb3qOfm2u75GYPleGIOmDdI+kp8xLYsBYZm/Kfdd/8qPSQEO14I
         8/bduIsLDQjuDFHNToBS9BLoCx+HGfYBEAcyLs4hXUpsMRucelWhzybYEdhbY52TRrWY
         5cvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=qbfi+0eU;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MRy8b9WmJ2FBDwjysade3tuzhv1KyXK2H9A1kkE8PnI=;
        b=tmjB+Tyntn8+BTweM5XPviZVeUdNEiQaOkYAGkpuj+N4bFko9D0cDlQK/jewCO0kCS
         AB6NK7jH1YrQM0PwrFCJmc8wH/oSjuotmN+rPRv9FiQotPPhverFfKwdGbcimCOeB+Qd
         7akmDF9sTq5zCjb5GhK0osnUZ+ppY9SWrQPdlFMfe9yOXmSrXb9ASQoUCkIbyyrm8IUU
         L1/oHiZid3OofFSFx6ytEdFtP/1+g9i5pZAeE//iXyTx/QscSYymOpAl3vvzo2E9cTBL
         akSNQxSzun2E0ppi9gVHrWcfTCI7FKh775Hpdiawb/pB7bCkHB1MZtsrfDR+vYEN4Pqe
         gKog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MRy8b9WmJ2FBDwjysade3tuzhv1KyXK2H9A1kkE8PnI=;
        b=P+cQZGb8fU0YehPSXALD9fD0St8WMFJyo9mhnZMnvhTxacdbsmzda/lswqdah/dvp8
         8HMl3lv9+P+6Q2nj2lqFzKiGRxQaMORjU6zJcjkVSV2GjjsoP+H2ok2fmswXgfetA9QQ
         aXugXa7+6XVdLt0umHpMrFQ1j+hPRI2sL0rolp1tEdg6mHNyCjnqqutGQ5zy9tMmpTrw
         aEx84RMmWDleLiY72gA3Jg+qHB+uJpXKGNEMZDwkY5El43TCdjy4R4RZVYNaZgLokzYo
         35jjrwKD/U+26wuxwS8+igT4gw8qginHRc7PDtPXnV46WVdghTwjtCHw7+PsqQVVnuw+
         HUaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iDyA5tN1zAa/e4GmbmzUlTUAt7Fx2TIBIhEexAhpcO6vH4PU4
	G2RJUSnnbvVaDYrEZLg4ul0=
X-Google-Smtp-Source: ABdhPJzf047N+a0ykieOIPFdGjM6GHly70jR2bCeAH4BzqhLkwjd/DkgGhA9K7++K419FTGZ7spgDA==
X-Received: by 2002:aa7:c583:: with SMTP id g3mr58315126edq.228.1594060179890;
        Mon, 06 Jul 2020 11:29:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:db04:: with SMTP id t4ls92986eds.3.gmail; Mon, 06 Jul
 2020 11:29:39 -0700 (PDT)
X-Received: by 2002:a05:6402:3048:: with SMTP id bu8mr59095500edb.367.1594060179311;
        Mon, 06 Jul 2020 11:29:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594060179; cv=none;
        d=google.com; s=arc-20160816;
        b=F3VPSrFNA2Hg+A0tuCZ1TimbFSL1ArSk0SJSo+opzr2ioOlBwZDQcABkvqJzfR+zZ0
         QTJlDyQdagvuCGFY9DSO7ouk09a+dvQlZ4UAYSeeX2BKAilwMIuPFuY+mEcEi90R72lp
         GGqSKCbbCrfIGQKjjh3UTpx/DNHbDovHwv2tGj0HxGAodPZLPshHX9blUCe7taviAtsH
         nI95uGstE4NQmjruVWJ6G160BuSmPVzhVx9YD2EOpFsOUO26WmyfNDajLl1qH2FJAtDx
         QBN6o63jvSZ8tgoRN0MOT7Q0fsj59xBNwJdnUwaW9Uv/K1oebGPS2kyGCn+8eeEvywep
         Cp/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Do5ubF9fSscGPClrokRq/R+dJR1UND+xOUqU52LNcLY=;
        b=taO6G9Qf4dbdHaozHjyKMQS6OaoOYOsfcVRMNX95/xk0s89Wr/bAFtacMplEV5NNuQ
         bDugtOfriWOeAc3NN6jI0/mkonzpfq5g8mVYU062ndouuHEQg8I2k9IzvX0CKFUiirCe
         G9WLgPMymjUwb0KFcV2ngy+iQ7crsfnRbtu5gcz3PYx4HVYaKeK34ISl6sviMvp0MAc8
         pGNaA71FiK4Z8oE1q7GVwRhrUAgpZH6hIM9MZdAWuU1VWlxR/ydyDky2nn0uvPfBwQzD
         xY+A9EA1OG99ISqCN6DGMzcPID/359OWJVFPQvWhdqmWwRIBjuti0QaKBn+wLykNSEGl
         TFgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=qbfi+0eU;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id x21si673412eju.0.2020.07.06.11.29.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2020 11:29:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jsVrx-0007O5-Sd; Mon, 06 Jul 2020 18:29:34 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 13EBC3013E5;
	Mon,  6 Jul 2020 20:29:26 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 06776213912F6; Mon,  6 Jul 2020 20:29:26 +0200 (CEST)
Date: Mon, 6 Jul 2020 20:29:26 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200706182926.GH4800@hirez.programming.kicks-ass.net>
References: <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
 <20200701114027.GO4800@hirez.programming.kicks-ass.net>
 <20200701140654.GL9247@paulmck-ThinkPad-P72>
 <20200701150512.GH4817@hirez.programming.kicks-ass.net>
 <20200701160338.GN9247@paulmck-ThinkPad-P72>
 <20200702082040.GB4781@hirez.programming.kicks-ass.net>
 <20200702175948.GV9247@paulmck-ThinkPad-P72>
 <20200703131330.GX4800@hirez.programming.kicks-ass.net>
 <20200703144228.GF9247@paulmck-ThinkPad-P72>
 <20200706162633.GA13288@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200706162633.GA13288@paulmck-ThinkPad-P72>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=qbfi+0eU;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Jul 06, 2020 at 09:26:33AM -0700, Paul E. McKenney wrote:

> And perhaps more constructively, we do need to prioritize address and data
> dependencies over control dependencies.  For one thing, there are a lot
> more address/data dependencies in existing code than there are control
> dependencies, and (sadly, perhaps more importantly) there are a lot more
> people who are convinced that address/data dependencies are important.

If they do not consider their Linux OS running correctly :-)

> For another (admittedly more theoretical) thing, the OOTA scenarios
> stemming from control dependencies are a lot less annoying than those
> from address/data dependencies.
> 
> And address/data dependencies are as far as I know vulnerable to things
> like conditional-move instructions that can cause problems for control
> dependencies.
> 
> Nevertheless, yes, control dependencies also need attention.

Today I added one more \o/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200706182926.GH4800%40hirez.programming.kicks-ass.net.
