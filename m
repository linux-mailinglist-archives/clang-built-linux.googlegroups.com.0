Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBGXFZT7AKGQECV4W2YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3582D722E
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 09:49:31 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id i7sf2646045lfi.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 00:49:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607676571; cv=pass;
        d=google.com; s=arc-20160816;
        b=O6W7KOAsqoz787qHuLxDdBcB4SyWBTAasfercXf5CglEsZH1u5/6IuRnD8V2TCVkka
         Fyw+CrY2IcCu200INtgzJ/bcRA6SjXV5t7+9sm4Tt+3FcmjDuFjHt+6SMCfFav4CkQBL
         RP1PWJJ/aXBUgWrTOltjb572KajIG0VME6NQrlCB6ccqwfRVLXDTYnFCJzVEIri7CCCN
         R5x6CsYncQtG6eAlaHmd5NkdBOJyTYzaBqB7zYgH1HumrC9TgCxbeNUfY9qGXcdC9lLx
         Bf1D8uYgIdbzlYc5rDS9bynBASGPzVHcS7u+117/O9PjLbxrrqpex2FvLjS5DCkFP05b
         jx4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TwkAuscJNFWC0grHWdrMcYkuVq51BcQaNI70O4hNXKI=;
        b=hQ08g6AinizXSnVvrY4H5GyQCDseYZ7VoOhJ0yiW82tt3AabOjlP3EGcLJOCSSH3z8
         JZ44AuYCL6Ztuw8J/fUJBb/LK+0KmZbSeXalSWi0i9FHWDll4DkLWaH61LaGAlB6h+M0
         hcmW7RYciIYDZ0i0b0R33VWi07ZSfDdGu9vsPLlDKb8i9LNCyoOVNzSi1c1U9KNx3ucS
         YfFQawMVPlxTldR2uUsZ/nNtBOoCAVIJTeHnCLgpmQze/mTei1ysEcCLFMIh0As6G2HK
         auOWJR1YdEYaPB/DeENjQ6AWsFGl7QksMybSpbzzQ6b37c4dCluuy8i3NRWlf8guiLrU
         3DzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=oqCv07yw;
       spf=temperror (google.com: error in processing during lookup of peterz@infradead.org: DNS error) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TwkAuscJNFWC0grHWdrMcYkuVq51BcQaNI70O4hNXKI=;
        b=jYvrTVgt3RgHlLoIPAbhF5iIpuXHlfrz1hFd0uxVQ98pv8bSONsyrj7UAwKTTPWwjL
         cJZqzyJvj3uUBInemVbabs2Q1o5ewDlQiojcIMej6B3KO/dEsT6d+bydssICJeHuUJ9P
         NP62DvZUFOb2AQP4zwEqzZiDehQwOMM67FvaCrXLR0VuJ7Mu+u8ysWZ/2uiv3W/t4sGb
         vRWhJiomjBx6ugX2/Oq/zh8y5WhDltRtUpmYNa6IMm/KB8zeu4dW+CIUAD1aZL//Alqq
         nfF9+ZlqWtQhpYdqrNWOKgroYBapE4XN56MbbowdpbNKMj6Ac6EA2dsliW7WzD0msXsv
         fUEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TwkAuscJNFWC0grHWdrMcYkuVq51BcQaNI70O4hNXKI=;
        b=dmfw6mTDDf76Z5j8yB+Vbi3Cu78bk6JbL3JLMa2G60EPLs9uZRs9QZKTVom+96RvnK
         wLtyFtAC21uz4jaQ/hjqBqULYvH2BpCtO7OijIHzLnCuPhqxWRY4blJ6mtyMkS/BiYSc
         AHcWtgsT3pFzN+9w0vwcc2g64NqzzjO7dlx2IWuOxu53PNlUyS9GjzzCxtDgEnEy9wYX
         /Xvm+/5aj/tZfGV8EZ8E/6Ki3IFWmdQ2EwTyhKb1J9VaiinTjiJ2Q/77ZQRHMvjfAK0n
         o5I/x0RL+mktZJ1O5O3h9POT3Mzl8PgB1pCSsKRG2T/XOM1coPT/bit3fkDR7oaGtQxT
         Lh+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fC13V2g0Le8l2olxSDR++Y4PcfOFAlVPm2L7wB1XqUwbqcwtj
	VMJYo5e+bAU6YuJlclS49mM=
X-Google-Smtp-Source: ABdhPJyi6mv1sU/TB454ih1LKXhf9+Ayz5kXUK8kUS54wdp8hpe0XtlMBwNfD4clvarkfM+em5O0GA==
X-Received: by 2002:a19:7b16:: with SMTP id w22mr4151846lfc.657.1607676571053;
        Fri, 11 Dec 2020 00:49:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c1cd:: with SMTP id r196ls1210349lff.1.gmail; Fri, 11
 Dec 2020 00:49:30 -0800 (PST)
X-Received: by 2002:ac2:4255:: with SMTP id m21mr2936862lfl.321.1607676570081;
        Fri, 11 Dec 2020 00:49:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607676570; cv=none;
        d=google.com; s=arc-20160816;
        b=MMNoqTP9kWpolXVmb6NLHbea1ScGFu9V4aIx2YssRsqaRyF1RsGKyu+HSETaCyhPKq
         jYkqNxMAeiCAHfoeUrB6wkUfnF7rPlRMy1Xrm11WJWcKKVSXtv9XF5xUHrpfsEcO9Oy9
         4p2Cm1K+NDqtGFCbVwrWPXDPJZHXhlN2U9q/81n1bBXQKfMG3ZNKphvwT1yRWWQ0s1VQ
         5iWumZ5Cr1H4KUCiaOXZb0IkFjglTZaB986Xypi+E+acjl1OQrkr09ziP1LhNPuP1iVn
         en/KcVK32WQ9cdA+2GmhQObCkTh58bvsk+6wvN+tyo1H6Sui984ixSLLdXEwRTTYeo/9
         csqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2KLxFX4cpBCUA9tI9eovULMW3sKQYah7BmVmmunzsj8=;
        b=DxBZuP4jBQlvtWYCFq5Z7wwPyTHfdXdJBwgr3vG4U+xQW5Ru7MvoQOT65Hb52irpGh
         g6W8YGL+gmH9d4O8Uvugpf4J5/PcDcbg3dSE1UZqt8do4PelS4azh4fgMpptl+2fAZO7
         2FkX5+aAuHXcLBP67hIpFF+zHvXPpdqkMsw6E+O19lF6bUfvWns/vQQTl65niPk4mUvq
         CSfeHPVyzVK8eAc3x2Y0PSY/HI/9AqSejU6D0XRD3mSL3Ltvd7EipJg1KR5JxburBUHy
         bPHlPmD44/CuHQaXk6EPibbZCv0q0ZSPwWPe20Yet1bc53NKaJMeBuqhxvTqilt8yhP8
         3Mtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=oqCv07yw;
       spf=temperror (google.com: error in processing during lookup of peterz@infradead.org: DNS error) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTP id d3si16994lfk.7.2020.12.11.00.49.25
        for <clang-built-linux@googlegroups.com>;
        Fri, 11 Dec 2020 00:49:25 -0800 (PST)
Received-SPF: temperror (google.com: error in processing during lookup of peterz@infradead.org: DNS error) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kne3N-0007Hi-1i; Fri, 11 Dec 2020 08:47:46 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id DA8B13003D8;
	Fri, 11 Dec 2020 09:45:19 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id BD28A203C67DA; Fri, 11 Dec 2020 09:45:19 +0100 (CET)
Date: Fri, 11 Dec 2020 09:45:19 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: objtool crashes with some clang produced .o files
Message-ID: <20201211084519.GT2414@hirez.programming.kicks-ass.net>
References: <CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g@mail.gmail.com>
 <CAKwvOdn79V-jaTH0mEtKyc-O+=Hj22bGtjKkZ1jriY2YABj-Lw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn79V-jaTH0mEtKyc-O+=Hj22bGtjKkZ1jriY2YABj-Lw@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=oqCv07yw;
       spf=temperror (google.com: error in processing during lookup of
 peterz@infradead.org: DNS error) smtp.mailfrom=peterz@infradead.org
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

On Thu, Dec 10, 2020 at 03:35:45PM -0800, Nick Desaulniers wrote:
> On Thu, Dec 3, 2020 at 5:56 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > I see occasional randconfig builds failing on x86 with clang-11
> > and clang-12 when objtool crashes with a segmentation fault.
> >
> > The simplest test case I managed to create is
> >
> > $ echo "__SCK__tp_func_cdev_update() { __SCT__tp_func_cdev_update(); }" > file.c

> So some instruction in .text that contained a relocation for, we could
> not determine a symbol for?  I'm curious why we're even in this loop
> though, since we didn't do anything related to static calls...


No you did, you called a __SCT*() function, which is a
static-call-trampoline. objtool does indeed assume it then has a symbol
for the matching key, which should be guaranteed by the __ADDRESSABLE()
in __static_call().

From linux/static_call.h:

/*
 * __ADDRESSABLE() is used to ensure the key symbol doesn't get stripped from
 * the symbol table so that objtool can reference it when it generates the
 * .static_call_sites section.
 */
#define __static_call(name)						\
({									\
	__ADDRESSABLE(STATIC_CALL_KEY(name));				\
	&STATIC_CALL_TRAMP(name);					\
})


Let me go find a copy of clang-11..

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211084519.GT2414%40hirez.programming.kicks-ass.net.
