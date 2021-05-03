Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBWMVYCCAMGQEEPHQ6SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 203F83716BA
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 16:38:19 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id g144-20020a6252960000b029023d959faca6sf2893573pfb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 07:38:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620052697; cv=pass;
        d=google.com; s=arc-20160816;
        b=ygylhmaDkYuLQELyYvEpqCH0498SWKaCTZQ4s2F3pppVI0XtjD88DsWM3ac5wkitlC
         wNx6HPCtA/p8x5DwsywOZqVEn9nzd9+0BGOJ6+Oj9B4/HWavgbMxuq97uVX0WBFr9w7U
         sYxuc6UTc151ZyEAxjNDQzszq16BOdrFvkpDlAOIHxzqX3D6bm350PBGVU9ymIoFA5YM
         MAnTRJ4riHDIJUF8ZigBeooZxInXI6sSo6CylcORSNfXhCzqGkYb/mKqaxuQWkgjKIXb
         88rpg6OwiWUZjAVW0lXQSCwl+5nalTQl2qFGZT5H2z8lbPlWn6lym4Pa6FyzClQqTwf6
         tXPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=A7RDrHKJwJiFQORIN07TBoCcNDPjU0ORoQLnSq+Xm/k=;
        b=Qpm9sBWMTnkNHBM5uySz1lvHpay/QjBA5aefCNWOGNd2RZL44R3NEL1isTU5fHorNW
         EZbYcmLB7R7D0wSrk4CRDyAj2Trh+/aqjr4sLoaUy51doBU0uxqE7i7MsjTOUfpvaJXN
         JhRfJFjocrETY6WuE5+AXwreO9jUsJScmn4NjTJ5mNOiH7CRhbpIzhtR5jZPKvaX/Wl4
         +Wtmx9ZfjeVHpFoR73Wnfnzdq1FYzfQyKubNrC5Od0YiPfJh8HG6ABibBufQ//qZRMQa
         KOu13u9nfS3rtbwTFJ1hWHDH2v2pXFn6JFRTw8tP5GDPR3MY9l2haccrNjdj6puF3npT
         gfgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A7RDrHKJwJiFQORIN07TBoCcNDPjU0ORoQLnSq+Xm/k=;
        b=EPqq4ChbZwbRjfZJmamPwEeSWx2X6O6jPTSfQyeRxL9MG/DJnKrpXUgvIfmE0hmAhW
         fRkVFbyZr8QnuT83EXQHbvPQLtx8QnSsp2xsYYY/2uc3d6dmYdCBRGBlvqMFY+X/Ykc4
         Gta8x1o7TBvdQLN+TB2X/o1eKtCSRiEgJw3MsECRVx+aB4PQYmoVEuvpyxCD5is1YKFP
         vY90N6IG9wksP0nMfO0OYer0xY6XFmeAw1PFOWIVb5SoAZ0/PwFxVZ2FsziVmWYSvuO9
         ok4cETy/uVrzlWVSQV/lm4IvyoV/ZQPPaoy4M2HaCxaAP69V9pSPsOR5odbpZDaMyIkt
         FgrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A7RDrHKJwJiFQORIN07TBoCcNDPjU0ORoQLnSq+Xm/k=;
        b=YUAoRbQ4PED4uHKJQTpRFTk0euU4i6n/dNXGvVwrRplL6nW+6T8EgYCF1ABudklHty
         LDJbMvhfuQ9xKUOc4fi3A4KGNap+bBuErhgKvS9ImR1pRa2lQTSNM5vCNPgJtUz036g6
         dgdShtOT87QGVaXqH8e5sTcpzyTiQjeWtG0SzF0wtMCtLc56LiBwJ12YHcqTHuRBmxt/
         BrauNAvNYifqZJ9wqZUxLNrZXJnRJ7uQRIVVVIZSaTBO8RyW6m9emQr8Sas1q3erleTz
         ts2lvrzXqa9vm4NVj7a8cpwzRY4iWThQsWcx5QmsSdmGqNEtWAgUA0/5qBE0bjs1CgoC
         YwuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533a/XMM3PCYUXVo2LIpdh0yM/WsKT/Ut63ja5/KCMJZJENqeUeg
	k/dadSpyql2P49hWs1R3FJg=
X-Google-Smtp-Source: ABdhPJwDE03JgEs06mVAMH0emX8+4nyckAfDbaMbfHvxLfWsAbzsKS4yzsgtGxWpYGPbN+/HJEI0HQ==
X-Received: by 2002:a17:90a:a589:: with SMTP id b9mr21355349pjq.80.1620052697468;
        Mon, 03 May 2021 07:38:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1656:: with SMTP id 22ls5816118pgw.1.gmail; Mon, 03 May
 2021 07:38:17 -0700 (PDT)
X-Received: by 2002:a63:9c01:: with SMTP id f1mr18764540pge.427.1620052696973;
        Mon, 03 May 2021 07:38:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620052696; cv=none;
        d=google.com; s=arc-20160816;
        b=vZs4mHrIs1jwEla5eHbd+N2/LUxEIEkfYjRo1L8d90QyclGo2RvwHymyPiRegDPLp8
         Mbl26B62s12x5WQ0nEFhwJz0pVnYcBXmJD4Zp4CzLVT0UuJ+StMfeLTk1YuvlgLP0yxB
         RPEGfdU3NYWjK6HDpkIUYEL0hydr339Zt015p2lMge2GOcaTbbCLLFqvlE0mmK4r8Uvv
         dblx/iCQE32MQQbgzUioytG3ZMSMUplgDLK6yY/ivCBfulL63oTM6xIKIs278Tf6dlG3
         3pBuJ24r74bTv+gdWiRUlptPffBBOzNj2Ej3ZyO3gqG19I3VcaZgH9UFkt6dhzUmrw4v
         AbFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=6ep0oY26lJOHBq9ouE0kBB8RpBBQNutKyljIaREMmRI=;
        b=lCsnCtpO/K9E/XNb3NmT6ryyFOb/4oswaspADdYJnWiVEllLXaqk1lEqEOU67M12rd
         Z6FNK2Jxg7Sj7icMtCInFBnhOFqfsl8Cp2sPLqyLLDO2JUyursWnwIMy8hnNW12fH03e
         xS5FqKRnghjFVH0ADR3Olh0P1uv2+5dfYghNVOYWAfaYCiA6q1F/juiuv5tSpAT3hRdE
         CVJyMTY/gZq76/mHpQcdyjQcy6nUVbuPE/v9MpEs/2cX2a9+caEu7hqjhINRFU4NUVoA
         H4qx4zLikOf5r/u2mfGJdSnWSWKJcZz3Sl2ljdYTG9sgwVq8zeF9Wyr6Z9S8bYI8GKC3
         aJ4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id b17si1618541pgs.1.2021.05.03.07.38.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 07:38:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net [72.74.133.215])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 143EcCRA007521
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 3 May 2021 10:38:13 -0400
Received: by cwcc.thunk.org (Postfix, from userid 15806)
	id 471AD15C39C4; Mon,  3 May 2021 10:38:12 -0400 (EDT)
Date: Mon, 3 May 2021 10:38:12 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: "Maciej W. Rozycki" <macro@orcam.me.uk>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
        Tom Stellard <tstellar@redhat.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>, Serge Guelton <sguelton@redhat.com>,
        Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <YJAK1C1uLknYGYrH@mit.edu>
References: <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
 <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <alpine.DEB.2.21.2105020346520.2587@angie.orcam.me.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2105020346520.2587@angie.orcam.me.uk>
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

On Mon, May 03, 2021 at 03:03:31AM +0200, Maciej W. Rozycki wrote:
> 
> People went through great efforts to support shared libraries, sacrificed
> performance for it even back then when the computing power was much lower
> than nowadays.

That was because memory was *incredibly* restrictive in those days.
My first Linux server had one gig of memory, and so shared libraries
provided a huge performance boost --- because otherwise systems would
be swapping or paging their brains out.

However, these days, many if not most developers aren't capable of the
discpline needed to maintained the ABI stability needed for shared
libraries to work well.  I can think several packages where if you
used shared libraries, the major version number would need to be
bumped at every releases, because people don't know how to spell ABI,
never mind be able to *preserve* ABI.  Heck, it's the same reason that
we don't promise kernel ABI compatibility for kernel modules!

https://www.kernel.org/doc/Documentation/process/stable-api-nonsense.rst

And in the case of Debian, use of shared libraries means that every
time you release a new version of, say, f2fs-tools, things can get
stalled for months or in one case, over a year, due to the new package
review process (a shared library version bump means a new binary
package, and that in turn requires a full review of the entire source
package for GPL compliance from scratch, and f2fs-tools has bumped
their shared library major version *every* *single* *release*) ---
during which time, security bug fixes were being held up due to the
new package review tarpit.

If people could actually guarantee stable ABI's, then shared libraries
might make sense.  E2fsprogs hasn't had a major version bump in shared
libraries for over a decade (although some developers whine and
complain about how I reject function signature changes in the
libext2fs library to provide that ABI stability).  But how many
userspace packages can make that claim?

	  	       	    	 - Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJAK1C1uLknYGYrH%40mit.edu.
