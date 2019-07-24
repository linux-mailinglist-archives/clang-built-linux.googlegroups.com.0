Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBHM24DUQKGQEIHXRUJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA7472939
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 09:47:43 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id i16sf17723597oie.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 00:47:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563954462; cv=pass;
        d=google.com; s=arc-20160816;
        b=mKUN5cQkyfLU0AwaJMR2d1PqcIvkWxOPNi4LYNTWaX66rUvS4VH0SZgkrakt0AG5Co
         53ZpxiSIEt2WFceCKUBL4ifNzNail1KtdCwcJwrZygwet8CTXoHNfacTHUlt9dXp5iEg
         ZfW5hJ/8eDIeax2V3/RdlgBF3RoHmGj/Ahc4YrmDNoDNfNuZ/PQGIdSpebjwAx6Nak34
         zaBJV+r7Waxk55I2c4eu5urgAhsr0ffZui7xq1AYB6XiRXBX2Fvtvbb9YTZGJef28yt5
         Mxf8IrP8gXZii7ZbttvVNur53N3N1l8rWAQDXM/XE/IH5smi3OyghR58bPebUw68Nod3
         AeAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=vuCAGjBuHYrUuFGAimgfFBVlXE9PGcHVcvM/CmCVgb4=;
        b=W0SVWHA3iFqNX0DA9oSCVj3FHfodmhTXACYtlLZPn37JaGYtRauD0g2N3AxsKwabQP
         YEPVI1FEtxijAbXkir+kUP2UhzB1I1q5P75JSlsR3S1LApl7hyESmpM8TriflfgiB9eE
         Oca2RWF7T8NqCAaMIsB3QaGeUPgYhjpD0vNk4daV41m3YWwLTn4EIBpPiq1QH0q15vul
         O41Hechh3P3tLtfKCumM4dct5/DsQ9dbNCBoU4nyZKSvxxxx2OU7pghrkpSXHedXqeYc
         k/KOigdA+7KK80+XRwpm3igOKTI5xKaFmnQNm9VyNSEAzY4oQaZWNoeK3f48/xdxLdvn
         2FRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ymnAVmy5;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vuCAGjBuHYrUuFGAimgfFBVlXE9PGcHVcvM/CmCVgb4=;
        b=dSogziA/+mN76hIajgyo6+tRc5CnG42m0JrzLxx3UDOevLckuJ18qBUWM/Q3ryLuOM
         z25zDTjsiCC8RChtj8DHWpH96piogpVJOJKxyf/qWRs2u4bfF11UqNRu4Tx2S0UQfR2v
         tlEKLdEdMICfUUM+NfU38rwefdbIeZqlTtWqLwHgk66rj3/6vc/DvvV3+b78ZZtvRm0u
         95t14vkbvsKQyofQkkJ4vqwKJLDL94Ni6SZ+qf/vSD7yMwsJ5UfoH048/exxUCajDKBr
         31edXM1l/588KvgUioQrm/OUyYUCiG1VHx501/AsY9j5n/htWofVXnLDyP93CokVJaCZ
         7O4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vuCAGjBuHYrUuFGAimgfFBVlXE9PGcHVcvM/CmCVgb4=;
        b=sHt/lXCgg4oyEwChv/RHN5teAhnj5DkUYdv+K2ZNzppxtsI52if+fTlku0E9+80cP7
         7z211iec4JkjoE551TM5VLK/k0KiNfNTxYLz6ehEi8fE2UzJNNJDhK5WkF1rZxtVJvna
         db03yLZ6Vz6qyIMJfIEY8fOrbhwlTfOThe34zZyhiIXWHkBScbWhzHyrncwkk2lJJ1bb
         9p0XKDEue5CW6Mk4g4HYtR3w3+KLANX1nB5S/b70haPRz8WJgUXEL6pc8SOvCo7eNXEq
         x7Q9eNECcdycy0EdXirAcalBHVSUyJq90XHO8SFdd7pcjN2UhCg6lcB3mVGyxGOVqCp+
         jXpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUmj5aohIR0TSO7pkzkioAcMki0iOXsL9JVNCDdSqXHjQBnY1b3
	GBIWtD4tyvEw/83/oy6b6ic=
X-Google-Smtp-Source: APXvYqw9/KUUhGwI5REX32CLaE+7mQPHWduCKvZ3hd85dg94cSePNA80z75gXIP8OOZEFm7/4YJhAA==
X-Received: by 2002:aca:fc92:: with SMTP id a140mr42275064oii.19.1563954461913;
        Wed, 24 Jul 2019 00:47:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:47d2:: with SMTP id u201ls5896801oia.2.gmail; Wed, 24
 Jul 2019 00:47:41 -0700 (PDT)
X-Received: by 2002:aca:1c11:: with SMTP id c17mr38355644oic.170.1563954461498;
        Wed, 24 Jul 2019 00:47:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563954461; cv=none;
        d=google.com; s=arc-20160816;
        b=FvbxkeSAkeW9fKm/tF2wWCNHrTy4WHGIUmdtC4XSS6YtwWoig5xM8iWUoLff5/p4ni
         NyGHX2gwa+QMOZZFfYtVeRuC/E3080X9BsRFYd2OgVOomtWheYMQtsdfyIrAeN5NCIR8
         07zEXLFqwvA+0MavZBrPvWs6M6Q9Q9zb/UDsNVOzJwLYIPWJZYRzjK67We5+xCXqMg7E
         KtKgVaOuilAqGJWvkn6UYroWkkvlDw9fO/6r+SMHGVgf76HH/0MsuTAN0BjlEkwO9Q/o
         ce1672tKKzD1vmG8Xf41So2i/7A+hqI+aCSHIry7gXI/688zUmy+WczsYF6pYsP+c50Y
         DnXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=abkHvxAJvwMKBCZu1/vRafgARA6Z23deu9xdjglWdiM=;
        b=HqiEd5jUjVealSc0qDSfTl1zNBZsCuz/qSZKSt/EhMopM2xVwuX95jVM2i9/Yc4vWQ
         o3Br/JeNPWNfa8W/p/KIAWgJKintHkPOivbrhFmLQKKWN0a1UkdP+7vv35pYSldWBvk+
         w+9R/XN44UTlZb7p9trZ2R1huP+e/vNfMOEEkw34eOinavQ2mkV17oTc5bc4a0TZfRU7
         nmRB0ANp1+/zugiFP4gHWFlWeSOUzQovpZsZpdpmLfp7G8wHoDTAq37f7kGtAAPc9+qa
         QZFYDY5wgY4ONsOi+BS/+RDRIz8Y/kj9u2r9PsMUK/v/txnV7+wr8NNxejDAjdjp5iC1
         gQsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ymnAVmy5;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id n27si2240566otj.1.2019.07.24.00.47.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 00:47:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=hirez.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBzq-0001bb-2N; Wed, 24 Jul 2019 07:47:34 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C4B4A20A5F8E5; Wed, 24 Jul 2019 09:47:32 +0200 (CEST)
Date: Wed, 24 Jul 2019 09:47:32 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: x86 - clang / objtool status
Message-ID: <20190724074732.GJ3402@hirez.programming.kicks-ass.net>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190724023946.yxsz5im22fz4zxrn@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190724023946.yxsz5im22fz4zxrn@treble>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=ymnAVmy5;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Jul 23, 2019 at 09:43:24PM -0500, Josh Poimboeuf wrote:
> On Thu, Jul 18, 2019 at 10:40:09PM +0200, Thomas Gleixner wrote:
> 
> >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x86: redundant UACCESS disable
> 
> Looking at this one, I think I agree with objtool.
> 
> PeterZ, Linus, I know y'all discussed this code a few months ago.
> 
> __copy_from_user() already does a CLAC in its error path.  So isn't the
> user_access_end() redundant for the __copy_from_user() error path?

Hmm, is this a result of your c705cecc8431 ("objtool: Track original function across branches") ?

I'm thinking it might've 'overlooked' the CLAC in the error path before
(because it didn't have a related function) and now it sees it and
worries about it.

Then again, I'm not seeing this warning on my GCC builds; so what's
happening?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724074732.GJ3402%40hirez.programming.kicks-ass.net.
