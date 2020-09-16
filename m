Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBDEUQ75QKGQEIVDPCDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7668526BEF9
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 10:17:17 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id x24sf2094673ljh.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:17:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600244237; cv=pass;
        d=google.com; s=arc-20160816;
        b=xDTOM/l4KmzOpkaBNg/Tj9cGfID4uV3Lp+wuNK5XobzJb1eO7aYMTY2KLsBdc2o8SL
         Emm1WETlaqXWEI23EJ8H5Ac3axWF/85ZcvdviJFJNm22M2vuPI4l0DDaK3yCJ3VOjV6f
         cyW9c0bC4LmdcZl72WO07wAUx+s/QqALLeD5TFjZgchKvLBTNoOJ7Tc8S95cwOX0Eon/
         O0H7+jPCbjTK23OmzVGVZ7KWMPM502El/wLjkiiL1eBGaAdE+Jpj7kzvCO4Gb+AUb2ss
         xet9/8UqNaDHVXmHQFT0xctoqpppCmZy8LBGUL/2/F5rGV7tCbeZCXbRtzKC7G+XHse7
         JgTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NsncLAUmmmyUwGWSaJvZHuUT5GdQuxMGBrhdzJJN7Xs=;
        b=qs98EIa/Ejd7L1xUZJZQH+RkbseRfaniFhQCSq04eEcZ04142pJ1iBeG89cToBTZMV
         oMgFoEJGHM3oM8Oe7CLrhbyKr1MPHETBKkOwtFbYrMI3JIXtxRdJq5+LFyjnNE9jJ5fp
         sGee2KOkYAQI+jRbWbAX1JkXlMNamBwiD2//Do+V59joOfWhODuUPBY30U3+if1gkrq9
         HaV8/xjwwzpw3UpwtAFV6L/uLaUoNAfwbDrmtRRagr3u6kZwXiz4ECKNsD8VzzCJrBxu
         XHdc6xJ66JwwjVaxlAfFMUOn4KYem3xJ2EihtRAq8hpILj0ZVMDFY1Gq1XAVn1oJikZb
         Isfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Z1F+9jUx;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NsncLAUmmmyUwGWSaJvZHuUT5GdQuxMGBrhdzJJN7Xs=;
        b=pFOw2KedRxc//7ZYfJxaKeiA9a6dcX3dMvcAjhTyGgbFiBD/JUaba3HOThjGjc8NCo
         s0TzokId3csLBDj4Ia6WD1auqqiGBwI2vlzRdM+cdnRERzZNcCY8hDF2916iCpRnXeRF
         Vouu2l5LWQd+Kcgv8o74hNLOOd4cNJ67t6DdlvJDhVhTVof4DPLT4e3B3npSmR1o6hn5
         3sl8JTNzuCgCSoI0yGCevpMUbcEbAQ6d6eocoQhqr0B9XfgJ+CLhFcHs88zXt8Voicxu
         +iwDIMtARNIACbbymkLrfS0peO0bsJIiDutDRnZSXLjoJWVXMirD/4iuQVGgQ+OTRnUC
         b2cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NsncLAUmmmyUwGWSaJvZHuUT5GdQuxMGBrhdzJJN7Xs=;
        b=dSnuQ1m62i+9rJKbdXXdLb4krQw0P0S4qj/55q1G65NENyTaNw0fEMw65X1Sp8sJDG
         O9vQmHof6QFN3fkuYwntaoCrn+fh96poqqIdGmqIC+F1aYjad5QWoHJhRYxapNGYn9PH
         OPyKY3tJ8ph91Q1GU6MaO9soQg9Z2a8eXHdM/LpDBD0yg2T9PJFpZEeHQIsnPdBdVpUN
         jLcmcO54i5zOUiVfIZfQ0lw1Aoxo1lyUN+ySY/+2d4yOLrmP+TGLrJqWnLZnaR/kszJT
         DlE0iW4sHVMd4/eQozW+9a8xT+cYWzRUy/C5CQy3YDL4fMPzVQ5ymTqAU19gz3xJBJgC
         foDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dfU+dB0aAoYV/9XIy5VFVbjP+UOt4oHBu+UqiUYe0P5bxm6h/
	cuRD/diElhOlILtW9sLZij4=
X-Google-Smtp-Source: ABdhPJyFKXm+JPWV3lVYP/gdoEYCobLTnaU3o7GoJw9324Xw2KWRe88JWM/Jah7pK5a0Y/IZ0p2lVg==
X-Received: by 2002:a05:651c:484:: with SMTP id s4mr8559155ljc.391.1600244237027;
        Wed, 16 Sep 2020 01:17:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9ed2:: with SMTP id h18ls119672ljk.0.gmail; Wed, 16 Sep
 2020 01:17:16 -0700 (PDT)
X-Received: by 2002:a2e:8552:: with SMTP id u18mr8423020ljj.359.1600244235996;
        Wed, 16 Sep 2020 01:17:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600244235; cv=none;
        d=google.com; s=arc-20160816;
        b=wRRklCidBxOxMtyStGdK0Jl0u69BwCnVvhT9zR2N/lcTwc1g4BsH/LNLz5ieb1PsR0
         VT9MH4esvdKir4M+FbHlgT3I6nXjsdJvtlrKZglp2W33+m7biOcqSCOwm8UrFralrzRT
         FQBWWwy+8tumcQM9/2Kw7yxOX8E3cjhzORGh+5jknMxi2ZjgUkC808oeGDR4xaZB12EL
         ZchE1Oln93SsFmpRa1WWf6ZEuBAydfTfGdkU3f/VAx8KHWOSvH3dQnOjNmlcU0c3rKOx
         8gofeyny3T+2hn1tD1axGrwIzj9iqw574zkQhO3oEbFrmDmTJHgft+Eb+5eNsV4xir6y
         b5vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Kh6YUXUrBNEvAabKe5sOkZzm5XNcGGAK/6w734vH3zI=;
        b=guOD3AuGiWjbfr+v4Pgf/8BhpXvEu6dc4VLuckr6S7t2xp+AlNR7rgTrXT1ZO7ZRbW
         ZppOTJ9rXfHXcZGb4nIuUZzSsajJVKK610Fkpyibs7W6mZlV3oc93Yo7I2FI4e5qCKgf
         /tMDgZ+PKP/lNoywIXnNnHXez3bfsHJfkZ7BjXIlwQ9nVEXfRgJrKEnPQOtZfSNeYkBk
         hIwBL9Rf1LklSf4Qf+MfTwRkDQW1xwF6me7zjWhwwUqhoPLEVl7kwKN98sRS2b4bnDv0
         sI6ZtrT4PYMG9ky3N1o7+f1KyI0wLZo135/Pxu0Yc/J0Yj1y4Ie06ZKk6QKwQejyVwLS
         u/Hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Z1F+9jUx;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id v191si379418lfa.6.2020.09.16.01.17.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 01:17:15 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIScn-0006Eg-OF; Wed, 16 Sep 2020 08:17:09 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id A89BE305815;
	Wed, 16 Sep 2020 10:17:08 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 94CA92C27E219; Wed, 16 Sep 2020 10:17:08 +0200 (CEST)
Date: Wed, 16 Sep 2020 10:17:08 +0200
From: peterz@infradead.org
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Roman Kiryanov <rkir@google.com>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Pavel Machek <pavel@ucw.cz>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	linux-pm@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
	Alistair Delva <adelva@google.com>, Haitao Shan <hshan@google.com>,
	lkml <linux-kernel@vger.kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>
Subject: Re: [PATCH] arch: x86: power: cpu: init %gs before
 __restore_processor_state (clang)
Message-ID: <20200916081708.GK2674@hirez.programming.kicks-ass.net>
References: <20200915172658.1432732-1-rkir@google.com>
 <20200915174643.GT14436@zn.tnic>
 <CAKwvOdm9bQmL=gZypkosH0MG=S28=jJ6wZiTMCNP6=Z+NfN1AA@mail.gmail.com>
 <20200915182530.GV14436@zn.tnic>
 <CAKwvOdkKk1KuAFDoWNLnMUi3_JnV7atDFnvS7CdkgNXnNg0p1g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkKk1KuAFDoWNLnMUi3_JnV7atDFnvS7CdkgNXnNg0p1g@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=Z1F+9jUx;
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

On Tue, Sep 15, 2020 at 12:51:47PM -0700, Nick Desaulniers wrote:
> It would be much nicer if we had the flexibility to disable stack
> protectors per function, rather than per translation unit.  I'm going
> to encourage you to encourage your favorite compile vendor ("write to
> your senator") to support the function attribute
> __attribute__((no_stack_protector)) so that one day, we can use that
> to stop shipping crap like a9a3ed1eff360 ("x86: Fix early boot crash
> on gcc-10, third try"). 

I think we were all in favour of having that, not sure why it hasn't
happened yet. More important matters I suppose :/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200916081708.GK2674%40hirez.programming.kicks-ass.net.
