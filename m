Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBFNXYX3AKGQE3TNXMKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5D41E8712
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 20:59:34 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id t2sf126237lfq.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 11:59:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590778774; cv=pass;
        d=google.com; s=arc-20160816;
        b=SZXn2hccZoCsdzTWzz1GxEkWbpY+BsSq7lqvIDeUrltASJKtFeG4nBynX5LV1FS1Cj
         SQuY2T28ehSxqQYd/NyJOuW/CzbNLIQMz2Ij8JOqUsGWBhhshhZwUL9r+cgCeRAyUZhz
         rP3jsC6aVV8Svwl5AKRryefkek2Kjzw6oX3WFkGbfC56lJ8vQdslJfkUjFszPwWAbgC+
         FYKihdVCRQ2N10PfVCzXo0vhcIxO8aRlCUTK7oCPco/fc/QXL4uJxviE2oWbZ93WnE+8
         8opoQth+ngaWlIRljyfncnAGgIpZuHTrbOjDib4nOMC/SJnuL3Vu/0ba7pi24L5emQUi
         XwxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fT7/tSC/65mahwjPAckzLIF1B/wZWrCxTy8Cx7hvImM=;
        b=ZsHg9d+Gx0iJYrHMqsw0aBIpUpl9mRZ0xQess62gElgxBbSrLnPsGdvGwpHJQclKkt
         qPflTrsyVw/Po9ITBadgEVLRVQRRFj2YWf86tPfzjKJx/KYXx9bu5vDW01ZkPqjucslq
         Cswj5HC4b3Jqgr70x0EQPxthawA0vw+9WVpG4MtiI8NjEZGA7wjBy0MzDw+SsD5/5znY
         AYsH8/2gfNZi/pAV0zsYwRzVaFrBRP2eOxfcacfizWIwEVrr1+JeZrUlAlNMexQDHq1O
         cinBZ5bXsovfFOwwDAuBFBA/2OFzLJNvRvNBbl0KRkfqc9m4M9zGUCSIjKlReO457Onm
         TSKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=rYVhBf3F;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fT7/tSC/65mahwjPAckzLIF1B/wZWrCxTy8Cx7hvImM=;
        b=XZpI6uRI6Y/ztte8rXq0dwquctzhWNQD6P3THSTaymNMTdOrIbGjT3e0MbzqMpvh5e
         zk6rhItytb++L50Mu6m7b6bNFx1ehMVqepImPAeUMnjcKOV+JjE/DpRgq8RD0piqEfiT
         GW2djAeqNwM4nNSPb+FYePFiZTm+8Jskg+0af4rxiOwvPR3iSqmNcADGtmY4geEeMdej
         nRjUbbdJzHkeCKoOMlMrpmR5VgsSX8Y/vb/SKeUWOo+HI5ct/KAoxAO2Umb/t948nKOz
         F/UWT0rqUSMoB3jbLUeEF1FrE0/xbW/IkTT6YKXAtJvZcZSyl5figZ45S+9MAp2Dwulm
         Qc3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fT7/tSC/65mahwjPAckzLIF1B/wZWrCxTy8Cx7hvImM=;
        b=Joodk6zL27wzMp61q33m/ilVoC8j0EKRdYlLp2QhqtW8kCcSnfMsgbqcDimdz5P2MC
         rBDv0icXwNvAI5ZyrsyI1gdR+b+ogRPELL1PjmLDQuS5UetxBXHz2qT/jeQ4iPwDEge6
         yk7aTpyY4ZlbAfpAeqJLl6MFGrBWktm3BRQQ4te0jwnAihBJ31qzpCWZukaNLxz+ZK7O
         Sc28LaGW9FbSzoHW+Cw+cz7E0hrxO8Rxkwx4kT9tNbwD6tGKko875U44WPJJPLrtIG2G
         bpibWGUqRxQ9YW8xi1Vy/zCqmdJF7MZjQoBeuDRipBSkLZqOU4qihXgySkDF2Q8zNYQ+
         UOKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UQJ9K5xoeaZonhrdTIhHKKkknBUNKh4VZ+Ele1ZSW5WdBa5G/
	c5YGhNZZ/D3M6enIz2uXgBY=
X-Google-Smtp-Source: ABdhPJzFg3w4DL9e2+JPqL3J4AY9L/7llgNalP1H5g3mP7GWncJnBz3LnOIuZxTEgqDWPOOt0C37gQ==
X-Received: by 2002:a05:651c:118d:: with SMTP id w13mr5111791ljo.304.1590778773842;
        Fri, 29 May 2020 11:59:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:95d7:: with SMTP id y23ls395044ljh.5.gmail; Fri, 29 May
 2020 11:59:33 -0700 (PDT)
X-Received: by 2002:a05:651c:1187:: with SMTP id w7mr4805083ljo.438.1590778773114;
        Fri, 29 May 2020 11:59:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590778773; cv=none;
        d=google.com; s=arc-20160816;
        b=bpkQOsZCFhteOc8P6myvp89ncF4RbZrCsdhmMhzAa3rz0JeAbiOgj842wfFHz2QaNx
         ZJiTx0pYfhLgH8tD2vw6l7GSdh5dQSTDxX4hE/+VHmim3OHFyrZwXxuTxVEolMGzrhcN
         FxJMR9KWZkRTjP5OTpsd0JFwV9RBXAJprgJxn7u7RbxcNyQs4I04qB9Koxp6S9IZ4UlH
         2xr7hhLmWGeVdt8G0ynLrpVqx5i6o5VnbAj1CVTcUvt/qwCB3v/LVeYnzneCDqSQ+h4e
         zBBJ9os9yt23YmBfqRtWRPWJoxN0UxfMpfkF5ePpC6mXke899FfwXLO3YCfIDHhxV1iw
         Q9xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sY/tG9kiE2VS5p/SHx6PtXudEGBk05lKgFcJLmAGXLg=;
        b=sHEj7wcjV9c72YqWDs1IEyCDrTgt0ASrwt2TH/TpNkNoCP6yDvJPWFUxWodNOAJJPm
         2EO1g5mKYjW2CVnl6c3OVpMKc6iEi/7FBhdPMksf3rLiB2SnKflAkh8p5TLLfdpNkS1m
         IXMivMk1lydemmOamCFQYnAw9m/gmHyxUDcjDzTT4j82FPHCJJg1CyKqJlw1UE6ie/u/
         2pE5OIJtHEstIhJuVJewEPW5pYuiR2TQ0Q5ZKlSP3r15USgwpzTkeEHs3Qcq1UEhBnfm
         jClsVOcjzmBIcjGPZD6gm2QBjdIXRhZsfaKqVmNFLinRrArvxYTk9RJJ8UZT6kGTKPwG
         ZRPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=rYVhBf3F;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id b20si657466lji.6.2020.05.29.11.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 11:59:32 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekE2-0006zO-66; Fri, 29 May 2020 18:59:26 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id A315830047A;
	Fri, 29 May 2020 20:59:23 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 983AB2021AF65; Fri, 29 May 2020 20:59:23 +0200 (CEST)
Date: Fri, 29 May 2020 20:59:23 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>, Will Deacon <will@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH -tip v3 05/11] kcsan: Remove 'noinline' from
 __no_kcsan_or_inline
Message-ID: <20200529185923.GO706495@hirez.programming.kicks-ass.net>
References: <20200521142047.169334-1-elver@google.com>
 <20200521142047.169334-6-elver@google.com>
 <20200529170755.GN706495@hirez.programming.kicks-ass.net>
 <CANpmjNPaL=HRvaJOC37_Cf4S4kskZezmgRiDSGn460rO2dM4+g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNPaL=HRvaJOC37_Cf4S4kskZezmgRiDSGn460rO2dM4+g@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=rYVhBf3F;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Fri, May 29, 2020 at 08:36:56PM +0200, Marco Elver wrote:

> > +/* Section for code which can't be instrumented at all */
> > +#define noinstr                                                                \
> > +       noinline notrace __attribute((__section__(".noinstr.text"))) __no_kcsan
> > +
> 
> Will this eventually need __no_sanitize_address?

Yes, and __no_sanitize_undefined and whatever else there is.

https://lkml.kernel.org/r/20200529171104.GD706518@hirez.programming.kicks-ass.net


> Acked -- if you send a patch, do split the test-related change, so
> that Paul can apply it to the test which is currently only in -rcu.

Ok, I'll try not forget over the weekend ;-)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529185923.GO706495%40hirez.programming.kicks-ass.net.
