Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBPEEY32QKGQEV2YKZXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C871C5AB6
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 17:11:57 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id g1sf1350625pgk.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 08:11:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588691516; cv=pass;
        d=google.com; s=arc-20160816;
        b=PqwFw7ja4uqNuOufLjnnIwQkosO0AlC/78gsStFKjXhzn//miMIeb70+gz3LSUSMYT
         1nnyW/EIa1fRjNf7Lwy0NnZ8sXP2bxhyJ6RY8r6guexQZbXeUlK80MIp8Ab6FbpSjM3Y
         yJTcrrAva5oyRw0KsKFxeG/H4cyrJO/LlwdwTLWtRYChpTr2yPLWvD8E9Rd+bO4jyAmK
         3jvMHTz7gbabS24LRUv8A6ApeTv/PJG/vgN9zodBJGKVJ2Xv1NQ2zvMSGUx+YBZrODmM
         3H/BBfqeOnj4HBxTciZFNA3g+rsocY2hXHVB4wo2s6YJ+odNC/nOsvuGJeamoDsqEGFh
         oJgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=PRSeoZPkXqP7Xv7EXvTQXRzK8jIQnYUcg1Hi+voszcE=;
        b=U3LA8g6iAbogPGQAdWudI/35rwpNWv9XJkv+Ojbda3zSB2mbp9wlCCtY7k4/uO3ar5
         j9QNENwJPB6fVVELMItN+uKkcdjkwpEyqXYwWGNitZUHkI0T/U7+zhSFggfw+LLX0ljx
         yWuiPCRSQvrGypExuxhX2me9M0njsekF24mkqGp6icgnwsj39vtXvs3lkm/VwLg4lX2M
         S8Cfh37OeBT4RHYMtegTSmP0lIX6c4Nh/8t4iAsgPVfSsU5OWEoTRjND/vxeFc6BGvWz
         LfcTiCaH6ArlwBqwj2Y7boiXJEHEWiErogcgchUfx/4sWdt2NL8TYIjMLCPTnZnZdwiM
         1zFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dbxK4diA;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PRSeoZPkXqP7Xv7EXvTQXRzK8jIQnYUcg1Hi+voszcE=;
        b=RZyHZZfHinYOFKjXaGDZHXRTsP6NoMVklt3TMnA79nJyVxGLTjs3O35KiclsrOnY7T
         S5mS5ArWmS99NnHo6XAmvsRbDLB1Zcly5H4h6qpBEkv7DSXcVTbhH/kEglt1dRT9Dp7l
         OLuNDLYM3sZCDuPwySt1p2ByTUY4hrtuuEPurEmg82xhqQgr1PFIixGFo+PA+pu9CPLt
         S6SCOT7fTI7sBzQgM89Q3pi1D62QrrOl4AXvlwLbhHzpa91da03p0/wiBBsX1HK7EC0b
         vQp6BeF48z2fzJYbX19Gb4ha8jFe1zGhxIjOw0drovGubwJsKiTMFmgVganXh6RN/RJR
         lXlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PRSeoZPkXqP7Xv7EXvTQXRzK8jIQnYUcg1Hi+voszcE=;
        b=rJm1nr8YMmPeuCue2iOUzovsLUahspLYia3GoyY9iRixWSpMvgI6ShOYTJZ8a9jVF9
         RXp2a/SSGwCYvyaDcRa6a4DdRMst0ccISdNApTvlMDqK82PBtD6Uy0Jg71gf6NGM0Lel
         pRhXSF98SJpwOpgC2u8Zc7b6pUaxAAF+2Oh8QEYQhNgyGXEpThscc2UwEoNfpt3X9fDj
         mpiRKvAFebQiRUUzhcO5T6e9UAjt5WY/WeS1H0fzXVX3PlVKXVY4+IKRqGcUhs4+uh2h
         tPY4Au1WLro1Kj10kRvhdUIdWgnknUW06sxDBSbuySl3Zaz4eH+mpO2FDgtzhqxvyTOi
         Befw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua4ptnf+ig27ConVsPWKLLxaohpmh3uYCVD45jbUricKTRFBu4Q
	tUFTDWDl9MVcSC7cauPR9As=
X-Google-Smtp-Source: APiQypKg5Df87fa6KwRY6az5e6ojYBvwfKRMHm/snVMu5tapbeBKN136qfCqfRl/vG6tkdWVh72ZOg==
X-Received: by 2002:a65:6497:: with SMTP id e23mr3266711pgv.347.1588691516390;
        Tue, 05 May 2020 08:11:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:c31a:: with SMTP id v26ls39471pfg.2.gmail; Tue, 05 May
 2020 08:11:55 -0700 (PDT)
X-Received: by 2002:a63:1645:: with SMTP id 5mr3354790pgw.145.1588691515914;
        Tue, 05 May 2020 08:11:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588691515; cv=none;
        d=google.com; s=arc-20160816;
        b=Jw3DAj91PNIf1LVoSWWpg4IAyHDynCbLFbsEYC+5VoP/AgXnf1FnLdKj86/qOQyLIt
         qU0g59+q/xoG+PuDc+Y7vn6bNkA0TdsMJB8UohKj8NMWZetGexW9mf59/1LAOXiQh2oa
         n+N70nfEfSNFfqSOK+ZbQG2FpB2FA+mt+hC6Qjr7rTyGKD6SdEjl+MsrcEKicppvaudb
         V4X1R1cZj8HodNmPH4p3Kh0vexwseK1TGt3rGQngwxpHrFd0ezFwhYXgmsvFw/qPyLsB
         mDsrgpT7hA7Id8ePlUvS9V1vwZlM7L8m6EE7cZRtfOuwSjYXd5GhX1UipSu+kuKpijMo
         25wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6N9h/79S5thCIJujNMHtFVhqMN/KcYyufjTMZxXcVwI=;
        b=Ve8suPvgbFQNd5kzPh+5xtL2s7Z6/fkhel/2ntZuBfCxwLcuTdZFwuGMGiCmIjXR55
         iELGm7d9ZXJ2fnsz0URF6UasUOa13MrdBMmDy2o/DuWe07O4zvkVqYIKqdF0I6aKdzO3
         EeFjd1SyL+8LHQCVXOJrYkUyifmuE5OORyDFqaXt06BIWP0Br8DZ2MNyjXl3kdrlz93W
         RH+iF6/QSYVgjLN336CwAJNJFxQOAtrAVnFuMv6l3VgOvCM3IOTH5laUrq0QeWSG18bz
         jtvpcLF1Ar2q/itvBkSRY4b7bl2iY2oz5S+2OvcW1UgwCKH7sai9NbKmpvAROo0+L498
         oi2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dbxK4diA;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t6si353298pjl.0.2020.05.05.08.11.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 08:11:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8050B2078D;
	Tue,  5 May 2020 15:11:53 +0000 (UTC)
Date: Tue, 5 May 2020 16:11:50 +0100
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Marco Elver <elver@google.com>, "Paul E. McKenney" <paulmck@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Kees Cook <keescook@chromium.org>,
	Mike Rapoport <rppt@linux.ibm.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Dominik Brodowski <linux@dominikbrodowski.net>,
	Alexander Potapenko <glider@google.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] kcsan: fix section mismatch for
 __write_once_size/blacklisted_initcalls
Message-ID: <20200505151150.GD24239@willie-the-truck>
References: <20200505141137.665940-1-arnd@arndb.de>
 <CANpmjNNwgkVR6kjFudrR4ga--PigU5Mx69HZ1mhCAQ0GCLqQGg@mail.gmail.com>
 <CAK8P3a3r35VrKVfpn_q2YYhxkvH9j0+3MnMqgRM6R=QOcsE96Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a3r35VrKVfpn_q2YYhxkvH9j0+3MnMqgRM6R=QOcsE96Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dbxK4diA;       spf=pass
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

On Tue, May 05, 2020 at 05:05:36PM +0200, Arnd Bergmann wrote:
> On Tue, May 5, 2020 at 4:17 PM 'Marco Elver' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> > On Tue, 5 May 2020 at 16:11, Arnd Bergmann <arnd@arndb.de> wrote:
> > > So far, my randconfig checks found two such instances, one for read_once
> > > and one for write_once. There are probably a couple more in random
> > > configurations, but I guess they are rare enough that we can just work
> > > around them like this.
> >
> > [+Cc Will]
> >
> > Thanks for testing and fixing this. Note that this may no longer be
> > necessary once Will's patches land. Also noted here:
> > https://lkml.kernel.org/r/CANpmjNNw6M9Gqj6WGTHH4Cegu8roTVu5x6Vqs_tCBxX3gPwL4A@mail.gmail.com
> >
> > For reference, Will's series:
> > https://lore.kernel.org/lkml/20200421151537.19241-1-will@kernel.org/
> 
> Right, good point. If that is going to get merged for the same release, we don't
> need my workarounds and I'll just keep them applied locally in my linux-next
> randconfig tree for the moment.

I'll send out a new version based on the kcsan stuff this week, so fingers
crossed for 5.8!

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505151150.GD24239%40willie-the-truck.
