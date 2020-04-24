Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBF7XRL2QKGQEOMG5GCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBEB1B71AB
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 12:12:40 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id r3sf7292438pjq.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 03:12:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587723159; cv=pass;
        d=google.com; s=arc-20160816;
        b=gBuXn2aGai/Bqq6R8S+GM9d17hVUCuVGpotMVC5GmP4ln/UTbhROp6utN6GLTU4t0g
         Voz6j3lXgQYM2mIOrYsv8Z08j1XiOjfQhzPc67SbDiPmAMOE/BxAn6eqOZ3mqdN6Gtsw
         5bTD0Dppd4Hx5bcmIB48UN6J6HFkwDO88HPTe+4Uyq4T/h2DOmxoy0RC1BY28O/5MVxo
         M2alKo4BDCaophaeptUhDM1HARq/mSxEWtmnLJvgGoETocslFwfVLT7BC5Q4i1zIEWaI
         mkAXOi7D50Pz44QpspKvT+gHgHYk19NxZKW6sG/xSawpeg4SQLPYd3NUjo04aZP/Kknw
         umFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=zNB8SqeeREoPZPcMyPKcnRSUdAqw7Sqfv/mBZ7lQdKc=;
        b=hHUJy2No8e/iTXVlPyK5NqRlVBK3SDH7BrGKjs29Q4LDmiUbBl6j2F1jdHlRn0i3cE
         omIi9jLVaM/RGRSkQJGVrCgoNay6njebYJAhrQgLQlfkbIxeJy1XUKSZXOlQmz4NWn6Z
         fEwZ6yg2p4Jw8dAHQ7ME16AUbWN12xnAcZxzpa/DwozCpISgivKpCpOdr134rhjRXguR
         Yxn+LN7o8u1ZfZhQzvdUOmFuu2xJMdJ61NInYROU64GdrBALGQv+xEK7548hN5WyyrTP
         2xo54336hj1J2ZdGuwhTFem7QPSLZBjK5L5HeM5bTaiB6bo4FCSapynfy60v43X4usdm
         7N3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kSbPHK0w;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zNB8SqeeREoPZPcMyPKcnRSUdAqw7Sqfv/mBZ7lQdKc=;
        b=Dg7BtjW/+k6vn4jfNE0KCNxJ5mVDkvz3d9eOxLWUq9WIXNCT5oEo24a5txnbCxwfZo
         NgWg/FyCPaB8LJIrq079GJ6Vjp6NiDZ18fVnMBaJu3QQZydK7zjfb4d+aeOhiVXi16Dw
         LKcRgJJex/xgalhFSnKGBKo1xcHDKZxk69gZW5jtiVqN7BTk0w2ZXWHfOrtW+b4m7cXm
         8WzXeoly/MacwOGI/TAqRZzFQwpo+MosdJygKmY0ayz8EP7t7fXmNFcKurQeqs0oG+Nw
         UmQaQBZadxHfxz4ZD4zCxUViHUVyGJO0ClQZA2I++sl5aGXc0LUVU8DLKqNppFgCsi0n
         KaQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zNB8SqeeREoPZPcMyPKcnRSUdAqw7Sqfv/mBZ7lQdKc=;
        b=bmVEPvCXp13o3WkiF0lqz9nWsr3liH+8HdAlVkOmzwLygzWCskEN5oBwJi+ULLhRxZ
         tvZb1UewkXa1TJ85kHlSx6skoVZ0PdvcECbKwN8gGjdQrtsprh6ytAKzspAY2hW+zErM
         GfnTsS6Ca08V/LlNtlZGhvQ0aR8alXiKJ+MV88mN4zi3cQ/h1o8m4Cj/KEtiO1XMGM1d
         2VyacG4m4sAwC4gIvlWtadt+apC4siLYbHUccB3AdiWclYLyLYqxlFowsf9ZdqhvpXpP
         tdaA22bjB5li8fZnPBab6sJ7loTRnqi6bw4pEsbG1RqdNjdHo4U2myX2C8CZpUd+xJWt
         RXRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubbx99GlT0fgz/9JMV54pmU/nInE8UoAYKcP6tbXYvXCBfU20UG
	ivHVK0i7MtEodmUQzkNgfjY=
X-Google-Smtp-Source: APiQypIHq8jhAXrB/SBjG7EW4ecbhSMOSnjwZtxLZG9EAs7hwG9rI0O5ubwniqGr0U26nsgm6V1Ktw==
X-Received: by 2002:a63:4e0c:: with SMTP id c12mr8980211pgb.161.1587723159115;
        Fri, 24 Apr 2020 03:12:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d641:: with SMTP id d1ls5623449pgj.0.gmail; Fri, 24 Apr
 2020 03:12:38 -0700 (PDT)
X-Received: by 2002:a62:6485:: with SMTP id y127mr8505986pfb.11.1587723158644;
        Fri, 24 Apr 2020 03:12:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587723158; cv=none;
        d=google.com; s=arc-20160816;
        b=RISVZc3KW2yIRDOOjIzEG3KAbI5XxDW0Iyih24ACowA8QbQrUlWlk43QYUILz5X99N
         AGzh34MB7NzXJUxODgm6lHWVBtKqW+30oSlZP6PodTt20DDvXisMreSQel/IM8VGEQx5
         evfAxsn02WrsuOKIraIYr4u/Xaxr427amTV4kK0sIhngBPVtP6MxZhFE0Eunppcxyiox
         v6uvzovvnFe9DRhoSVWvpFzOTSL6gLGUq7z/FrTSEtmXfXaAlPZnHqRsEhmbKR21mGoJ
         HK1PoCupb1wjD45h+JfGHTXWuIq1jJ16AdowMEOUpjQNxYoDzgxApKsSYxKkibHOFznx
         y6oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lh1hsQ6RzR4oFBWHfhFpc6qZG1ivR8YS3Q8Hh14wQZw=;
        b=es7xL8GUq1XMcS+1ly5Djn72Y7+a/k/6P0Pdsl96Qq2UJ2aHr9FsuuabPPHiX0PB2g
         IK3eimLJwy7kQTfhSAsykehb0eSrCQYFeJCEKVm1/uMWPGIzBxFeIWr0abhelLrHdnjT
         nv7JAbrjQXxVtG56gukVQP8Mj8xSMO5XI368ZTZ2tSwyUgA8IbR41c9Mbae48GnHE6XF
         T10XFZrfoHTMsYZ8rLY0EiYhlWV5mur4eaOJkeXsqMfFBukEU047kKPds7nsWmb/66iW
         NWZmhmbsuKve6nrShJESKbHGlw+6sGnOUcPnLlEJ1bHhtpBaqbVhoxJPKuxMDvEb8g6E
         o1zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kSbPHK0w;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 138si459073pfa.6.2020.04.24.03.12.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 03:12:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 92E232071E;
	Fri, 24 Apr 2020 10:12:34 +0000 (UTC)
Date: Fri, 24 Apr 2020 11:12:31 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v12 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200424101230.GB21141@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
 <20200421021453.198187-2-samitolvanen@google.com>
 <202004221052.489CCFEBC@keescook>
 <20200422180040.GC3121@willie-the-truck>
 <202004231108.1AC704F609@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004231108.1AC704F609@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kSbPHK0w;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Apr 23, 2020 at 11:09:24AM -0700, Kees Cook wrote:
> On Wed, Apr 22, 2020 at 07:00:40PM +0100, Will Deacon wrote:
> > On Wed, Apr 22, 2020 at 10:54:45AM -0700, Kees Cook wrote:
> > > On Mon, Apr 20, 2020 at 07:14:42PM -0700, Sami Tolvanen wrote:
> > > > +void scs_release(struct task_struct *tsk)
> > > > +{
> > > > +	void *s;
> > > > +
> > > > +	s = __scs_base(tsk);
> > > > +	if (!s)
> > > > +		return;
> > > > +
> > > > +	WARN_ON(scs_corrupted(tsk));
> > > > +
> > > 
> > > I'd like to have task_set_scs(tsk, NULL) retained here, to avoid need to
> > > depend on the released task memory getting scrubbed at a later time.
> > 
> > Hmm, doesn't it get zeroed almost immediately by kmem_cache_free() if
> > INIT_ON_FREE_DEFAULT_ON is set? That seems much better than special-casing
> > SCS, as there's a tonne of other useful stuff kicking around in the
> > task_struct and treating this specially feels odd to me.
> 
> That's going to be an uncommon config except for the most paranoid of
> system builders. :)

Sounds like a perfect fit, then ;)

> Having this get wiped particular thing wiped is just
> a decent best practice for what is otherwise treated as a "secret", just
> like crypto routines wipe their secrets before free().

Sorry, but I don't buy that analogy. The SCS pointer is stored in memory
all over the place and if it needs to treated in the same way as crypto
secrets then this whole thing needs rethinking. On top of that, where
crypto routines may wipe their secrets, we don't do what is being proposed
for the SCS pointer to other similar pieces of data, such as pointer
authentication keys.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424101230.GB21141%40willie-the-truck.
