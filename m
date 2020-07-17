Return-Path: <clang-built-linux+bncBCU73AEHRQBBB76QY74AKGQEJXUXRDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C97D2242E1
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 20:05:52 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id w2sf4874718ook.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 11:05:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595009151; cv=pass;
        d=google.com; s=arc-20160816;
        b=PQf7LPxowc40oSGKVJjz5W6s63/yYMzctYofViVgyo2ImEeH1WtZVxSMltbspxGjMx
         xDuYB1ss27LldY4z3g3Us3X8lLjSv9Sn3VtdHh8Om1UJ7h4JE2BTxdDZnaPl1ldUFvzV
         zrvQ9vmI/6ttIMPvjadwUXioc4AF8LJygXSXPfNiCT3fURInhxNepOtzGgKREXpfYG44
         erXkWeVWVOMn3Tp7CKRfhlqDJDTUvn8JnuVBRWuMo/pwuVTEoBuqNjmrH8lFvkv/srck
         /2Rnm2pbSC+9CYBDyb4JGeyGKL83eBC7zCzneFB/ESc/0ug9GFxpsFm4/7qr/5IA7xrH
         19Dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=RJURJIHER+Y7KzGtl1eXiY7pxkyBZfF5Q5kDrcc5S68=;
        b=mk84DZaqAlywoLCPhiAHOW3IyUfR+TuzDZtJanlIaSP145rVHytEwlbPU6m8JRZIaC
         GF/nwTumKnJ3uQvc69PHvzdciAni6yURXbcxLUqY+Yex8Empr+cnM108vYi9TeUEc7Y2
         Up6rAXR89MPSbrsWmqtFw4Ph6FqlPGkiP397sQqhV7IQ5u2e7AU8wUZmD8VU5AHjm+PA
         MtO5TRo6TUx/VqvJBIZ6um0NpKTH+r1QsRwwTopNR3kRsdITmYBp3wKeFjI/fdL5vUzu
         +qeUHYyRJqyujGAWNycgmHona/EZe+y0CKy5736bp7rQvmV3QbQE2ok4dVI/rjllHFDd
         9+Bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=qwkq=a4=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=QWkq=A4=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RJURJIHER+Y7KzGtl1eXiY7pxkyBZfF5Q5kDrcc5S68=;
        b=OT5loTIsLxQk1QeddxXOH6tRYJwdkD8woWNdVogj2FWblm0jNmKz4R1bOXKeg284VT
         q59en8u50Daa5gm+pDsnntchX8wefZvpJKP7tmzUj9mbaGKKeinJebppxh9SfGikPfI9
         OTkrzV9+zTm7PDSKbFEESMyAAifd9d4Ds6l5nLUolo8WLAqhkstf2qZqQjx6s0dvqwe0
         7qlp1+AkwsrZ7jBBEdnYd0t0oNawH850IHTeQswLmjDbBY5tf+tLdJYdMY74MWW+v6ux
         gAx7JJPxDS4aDRk3ljDBVhqsN+axfeTgBUqsGBKqbQpKZHKseN5aVH7HqHqThhBS/gfz
         dvmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RJURJIHER+Y7KzGtl1eXiY7pxkyBZfF5Q5kDrcc5S68=;
        b=oRHXqOW2+VaR4bHU3c0HyeQ+7zeVxAmi63Oamh/ZzsaVFgiafKr5D2rbaSRZtrshyl
         9sPZcUHt7hLrdE+GP+8KgyS8iDDBVGzQmCvO+Yxxu/MFcDK+l3lQB9bCp7sib6aVVgjK
         zU1YNViigQ2kijRToXWF1ySGLDWI53q4bP0UMU9YDuz8O+ubSGucKK38Db+7bpNUwyxZ
         RxSpSsT/9TqJHiWFii63mJ6DboprJ0tpNYsCF6BHxGMiBjGOllvqB79lnId0g3bVoIyT
         oS64CzFyVikZk6imAQNWYNRgFAjFYcXARRRUDQ3y8uyk50J6AsZy4a/mLfkjMz0mugfn
         ieqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530snHV86HsthWPhUAQeWgppCs5nr6/bCT7dEImc+CwpuNtC2kQY
	lr5j9hr+6BJNf4kncCquhWE=
X-Google-Smtp-Source: ABdhPJx56n0VKWv11gVADRzXsWlg/SaQqq/z7NoPXL3nvqGGAFuWkQRj9+zhGkgea/EsoZs8GPo/Og==
X-Received: by 2002:a4a:ba8b:: with SMTP id d11mr9662437oop.80.1595009151142;
        Fri, 17 Jul 2020 11:05:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7aca:: with SMTP id m10ls1754339otn.11.gmail; Fri, 17
 Jul 2020 11:05:50 -0700 (PDT)
X-Received: by 2002:a05:6830:60a:: with SMTP id w10mr9848564oti.241.1595009150739;
        Fri, 17 Jul 2020 11:05:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595009150; cv=none;
        d=google.com; s=arc-20160816;
        b=yF3X0D94VtXgNdrEDolkmZe8QXWzWtX/2e13+awQw4UOIyDQ3g9eYJJcoJar8yfmas
         gcMGLAWW994SrAC4jfl4CFL4C7v5xhR/qavZ+wpgNZIVfws0z5FdpAKmOBMto51aGjMn
         YxOB9/SysCeY8/NvGktRzK8UWG5R34OApFHCKSLlMYOx3pRTVDXQ/7vFlbU4hw6c25Jw
         vkJsctdSVzwoQ71K0XpeUyk6jImXq95V0p+50f1+iaGdhhpYZPWqfFqHK1BTL85aZxZD
         GUji7/+KtnCvC/Euc8D6/K21mj7DArLnBJqrNyS6asBP5s6WiCsPBEM5wvfNtYLgYnMb
         +39Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=MFqlQql/xgvIKcog4jA9Vr0Sp/CJwfok5/ddr620+uU=;
        b=FfmFO4O1sv9rfmBX1bVCstYfhSH7nQVv/8omNrqd36vEeCZ+vZmnO1Y3QEt+16w/Kn
         ptVCp+IDDqWDTe9QkupdF7tFTsAaefcD1F25LW6NjeOMcK8sUTzfnNoWfQtTVCfQfCVy
         8Cc62G9WjT9gXhT0E6Pa+dOmfOMNLnzFFRG+uNmiwFOx281/rBS591W7t+MCFHoGU8d6
         Z1Y8G/iT2KElwUD2V/ynxwtPjlqYBN8f2ZEPh4HYLwV+oR8M7ykyq6L3NrUVzc1ey/Na
         qX7SFSBDAOUBNe2YV0CSmA8UxYeI0efR6ZTp5pVrp6rwX+40DtMeJm56JUwBoGvONyqU
         sfpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=qwkq=a4=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=QWkq=A4=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n26si560644otk.5.2020.07.17.11.05.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jul 2020 11:05:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=qwkq=a4=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 65C06206F4;
	Fri, 17 Jul 2020 18:05:47 +0000 (UTC)
Date: Fri, 17 Jul 2020 14:05:45 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Masahiro Yamada
 <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, Kees
 Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Kernel Hardening
 <kernel-hardening@lists.openwall.com>, linux-arch
 <linux-arch@vger.kernel.org>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, linux-kbuild
 <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>, Josh Poimboeuf
 <jpoimboe@redhat.com>, Matt Helsley <mhelsley@vmware.com>
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
Message-ID: <20200717140545.6f008208@oasis.local.home>
In-Reply-To: <CABCJKuda0AFCZ-1J2NTLc-M0xax007a9u-fzOoxmU2z60jvzbA@mail.gmail.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
	<20200624203200.78870-5-samitolvanen@google.com>
	<20200624212737.GV4817@hirez.programming.kicks-ass.net>
	<20200624214530.GA120457@google.com>
	<20200625074530.GW4817@hirez.programming.kicks-ass.net>
	<20200625161503.GB173089@google.com>
	<20200625200235.GQ4781@hirez.programming.kicks-ass.net>
	<20200625224042.GA169781@google.com>
	<20200626112931.GF4817@hirez.programming.kicks-ass.net>
	<CABCJKucSM7gqWmUtiBPbr208wB0pc25afJXc6yBQzJDZf4LSWA@mail.gmail.com>
	<20200717133645.7816c0b6@oasis.local.home>
	<CABCJKuda0AFCZ-1J2NTLc-M0xax007a9u-fzOoxmU2z60jvzbA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=qwkq=a4=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=QWkq=A4=goodmis.org=rostedt@kernel.org"
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

On Fri, 17 Jul 2020 10:47:51 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> > Someone just submitted a patch for arm64 for this:
> >
> > https://lore.kernel.org/r/20200717143338.19302-1-gregory.herrero@oracle.com
> >
> > Is that what you want?  
> 
> That looks like the same issue, but we need to fix this on x86 instead.

Does x86 have a way to differentiate between the two that record mcount
can check?

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200717140545.6f008208%40oasis.local.home.
