Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBYESZD5AKGQE63BL7IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id AACF225D511
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 11:31:12 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id md9sf1990012ejb.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Sep 2020 02:31:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599211872; cv=pass;
        d=google.com; s=arc-20160816;
        b=plaPiKyoK45oVrl3WlZ9Yu9ZvJtlalnKXG+LRZPz9J4fb5qoAPfmpvnfnBOda1rttY
         tKTOhtq2hKAcqoFNljjHnOPemhoxmht+fi7t+jZua7sCReYaAma1XzxNLFs+sVzXxzED
         UljJnWinW84ZGPX53VxZf18PhJhLE94d7U2yUgqykoRFO7/UxhYgBSBNqV/MCxri35Sf
         bHlrVAj8F/ZAm00xznY34LcrvhgpgL5SHGYYds7tMyEllHAPmjcWps8trvaWpTlzBxJu
         GOgPhLdFEkjoYS1fcLAynQhYF7g3SUO19NfctIrPnHxMye+w2xjY7vjaZWB1ZCLHpFU3
         TBTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xWYg7RfFFTuTkEDHDraaGYoBBY2lb0Ma9+Nptrjqay4=;
        b=DUNu0KOmtkUUaAvb0eXbqrAwvCN2Cz8EPIi+2mujvd7vnSkUMwb5p2ikVDZTLDRZos
         V3YEHY39zYe3mr1aX5au9uaEN8GRnBqxKwd9pKWjg3lV1ahN7PcY45Wn+6mw2Y8g1QWj
         Hei/yA/jCVW8reQTiG+cfAPw8tcjyuPQFalpxL638eOe1krRYxouD8Goca49+FDC9dwK
         nQSzmkyLhL4HT4xE8/AqN14r7A3CBDU7WlfdnA4j5sdMjYWffTFRc3tWx+q9rF03+MI3
         Z6EZDL9O+Ui7uIPTjUL9dfDLpizHZrgb22UdM5YBR7BPYHV3uz4O36mhmn3lnEJWXXlS
         r0JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=X6cu6bl5;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xWYg7RfFFTuTkEDHDraaGYoBBY2lb0Ma9+Nptrjqay4=;
        b=RUlKFytVEHa2H2Yo7hWklj0ZLa3giFFhC6lU4abUltl+iNSlgE+UrF63KwyNofMlUs
         VS1udyYvPSR2bYE+Y6z7jlqJOpHvLTpi+J8REInnqAhxpnKGyCLEvSn5XJCRYmYmWc6F
         RKGDfNSJHtf+xha6fQcX/+5CGnWx4L3oueO15KJBpI1a+evZBkScK8pShzN+K6V7kutQ
         hoiG078eS9jt3c4oRYbKAlavvCTJhyBzHSOLQ55FuvAmgDcSk32WotuavBcE4w/IjjNw
         1+jdl0WhgQv1TCy5EfsrerNFy2Q1ioGVZhm1Zjfb+rVL7yK/lMwizB8uP/apNxH9zSjK
         Sejw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xWYg7RfFFTuTkEDHDraaGYoBBY2lb0Ma9+Nptrjqay4=;
        b=qYLqYQXsrsT1i5JGhX31xGJtRiVv8kdPnbb3jv1JAywTFzx9i5FLmW1GdEjCM0N0HF
         iBlLF0lUTb1bBAb/K9b/SNlFlHfjXtHhWRbvkvrMLzRBJ4NF33mgiobrNU3Iv3Ra8KNM
         0VKF9Nr1Fl5nVY1Be7FAWm3H5kKGW6PnzYggAQM+H/cmGV7yIRG95+TZbhzgHVOZS+jU
         Qz7PjKd5P2xJXRjRAB+Hu6edsdvqEJVqpi2/kmhkhT6toIjQvCIQAirqEnBjkb3OWBsz
         wS0AzOcdNGcGkDS5VnJdev9Ii6vapK+uqzqeyEmA8a+q6NivqC7e6yq6Kgk8hXqJI6Wb
         IHKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wswFopEjC5th9ZciTfscIyAfZUjvRRCyqY29HPdVwdUazn9JY
	3OjhikYYGW4m6484j8e20xQ=
X-Google-Smtp-Source: ABdhPJxBgVU/1hv1s0qOlNEjAB6isM1MKk/XsHhlIwGJjVMPBSmVGFM4j9B+QR620+x06WLSxUZm8g==
X-Received: by 2002:a17:906:e88:: with SMTP id p8mr1396110ejf.134.1599211872426;
        Fri, 04 Sep 2020 02:31:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c545:: with SMTP id s5ls2436521edr.3.gmail; Fri, 04 Sep
 2020 02:31:11 -0700 (PDT)
X-Received: by 2002:aa7:d749:: with SMTP id a9mr7616918eds.313.1599211871747;
        Fri, 04 Sep 2020 02:31:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599211871; cv=none;
        d=google.com; s=arc-20160816;
        b=eS5jpx48rFf3oI0gqhbDlLNabbI1v5UZw1RKt3gXJKSV6yW2vem5Z2bDfINtLfx8iV
         SiDT4po9c8ynKEynSjPgq41nclfZuX+inj4Oq1Ryzu/NEp21iyEVZFzh708VySZg0TON
         A06f2CR9rAeZSX6UJrVcQ+8EDw+s4/jPRppycfsU8LtCfbDB363EkvXNoFCP34SY2891
         Zn/0U9kZ9KBDEgPDBswSo8ETWhdfWWwibxzyhQO1hp8mQ0GYu9Tu7PslO28P8q7BIye8
         j1BfKaXmgFYtj+rSRMoIJ7v1zn691mzSXr+LJxjiUrygEIe0SMKB4a+sBSWWdOKZtZSO
         pdUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AmeBKqJuZ2TYIisYso2pvDzyPT9l4D3l0ti74pdTg0Q=;
        b=IuJS9RFN9rDPRXOOhog8g3BTX1NU2YIWCSQPAnHuylciY30SCw1CD7RfM/N7ziREC5
         rb2PY8Ggp7FuQZA8vVez9TZzPHqlgByg5Gns/VQua7Tci98aEn8SM38NHIC+F7XQgCHJ
         9FKkq5W9L+StuKkElZ3ZqDdRDFx6Hv84TExte2WOhh3OPu6kbwQfc2lJSfm2nXiN+7v1
         IvX0Kr4OzqwJWJN2wa0vR4tzYWpa8R12vjJjOpwdaT5z5HC28pm3VNcPDVOxcHIZcIUv
         LpeP5e5I6+B5+atdtU0Z8KbeMfMVFWwr1z8Nos1x6ThwWfqXM6ucLBFxlLIZaNmo0BuP
         ymXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=X6cu6bl5;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id f17si158564edx.5.2020.09.04.02.31.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2020 02:31:11 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kE83m-0006Ta-7X; Fri, 04 Sep 2020 09:31:07 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id EA057305C11;
	Fri,  4 Sep 2020 11:31:04 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id D727B214D7E3D; Fri,  4 Sep 2020 11:31:04 +0200 (CEST)
Date: Fri, 4 Sep 2020 11:31:04 +0200
From: peterz@infradead.org
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	X86 ML <x86@kernel.org>
Subject: Re: [PATCH v2 05/28] objtool: Add a pass for generating __mcount_loc
Message-ID: <20200904093104.GH1362448@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-6-samitolvanen@google.com>
 <202009031450.31C71DB@keescook>
 <CABCJKueF1RbpOKHsA8yS_yMujzHi8dzAVz8APwpMJyMTTGhmDA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKueF1RbpOKHsA8yS_yMujzHi8dzAVz8APwpMJyMTTGhmDA@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=X6cu6bl5;
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

On Thu, Sep 03, 2020 at 03:03:30PM -0700, Sami Tolvanen wrote:
> On Thu, Sep 3, 2020 at 2:51 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Thu, Sep 03, 2020 at 01:30:30PM -0700, Sami Tolvanen wrote:
> > > From: Peter Zijlstra <peterz@infradead.org>
> > >
> > > Add the --mcount option for generating __mcount_loc sections
> > > needed for dynamic ftrace. Using this pass requires the kernel to
> > > be compiled with -mfentry and CC_USING_NOP_MCOUNT to be defined
> > > in Makefile.
> > >
> > > Link: https://lore.kernel.org/lkml/20200625200235.GQ4781@hirez.programming.kicks-ass.net/
> > > Signed-off-by: Peter Zijlstra <peterz@infradead.org>
> >
> > Hmm, I'm not sure why this hasn't gotten picked up yet. Is this expected
> > to go through -tip or something else?
> 
> Note that I picked up this patch from Peter's original email, to which
> I included a link in the commit message, but it wasn't officially
> submitted as a patch. However, the previous discussion seems to have
> died, so I included the patch in this series, as it cleanly solves the
> problem of whitelisting non-call references to __fentry__. I was
> hoping for Peter and Steven to comment on how they prefer to proceed
> here.

Right; so I'm obviously fine with this patch and I suppose I can pick it
(and the next) into tip/objtool/core, provided Steve is okay with this
approach.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200904093104.GH1362448%40hirez.programming.kicks-ass.net.
