Return-Path: <clang-built-linux+bncBD4LX4523YGBB34YSL2QKGQENNHRUBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D851B88CE
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 21:16:01 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id q7sf11562476oom.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 12:16:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587842160; cv=pass;
        d=google.com; s=arc-20160816;
        b=yeUAmkUFwmzyXFhu0URYp/72Tkhrv3PdcvtcXay2Op2WxwC+BA+pSh2pLjAfGyQgLg
         rI3bwO12N8wv6Je+flpSvUfKgdZ7LeSCOy6eT2MSvtNq9zH+SxNTdU4R/ygDG00PIIFs
         bWxbG1ktjnpU1bM6aoue1bCeJb26r1PDjCn73ZW+Ol5Eb39SIM+hBUvFvVTka8IDJ0j1
         UOiQLT2C3AU6h6wusEm9KyI9ZGap8l45k2dHMEmlwByIp1ByroVL5vEeCDf+gth4fuAS
         FBhG1Ot2fXquNc0R9uQKNw64xHPcBCWw7OlSJM5ecknU9OMhm9LHbeD42XLXncRm7yzV
         /Lbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=YXAQxE8vfvQ0ojTRz9KGscqRSueeZnYvWjCEo5vKFag=;
        b=k87QtPEYoZkBmiwhZqAgZReosItCaq9+ZyS/iyIjJQWdhxd085VM6ziw5D04RxJdDl
         cRoxPezQ/46S+jQlbXGxmBJCSda0bgePD8SDtmdzGeJ4HbuE3xupn0D2ANPO83FxypRK
         Zxh2kcZFUuPMc6bARfUdh19ua/INNGlNaAZX7R8rgj8NSFJW56Jbw7NPghwqlLcyGssM
         +Phdt6p8+4ELiAkptitnyPnoHC1LWTo/eeud7aF/mHQ3Fs2tBaj/jZfTs7bGAUFSaDjp
         gIQktU4k6hAlWwmcVXNO2FNnHAhy5kMvVOytGIy9xraHzx3Wl6wz5mVDD3Jop7u8O59K
         D2rA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YXAQxE8vfvQ0ojTRz9KGscqRSueeZnYvWjCEo5vKFag=;
        b=H8YTtdJgOn853ZTLcxae1AyBmObwCNpjkv2jnkzIdUKncFuXvVXYviwv1QJKvpaAB4
         bSE2q6Txfou8CEYIfE7zotAKzdZ34vjQVbpAjgyBjPc81x5xBLMU1JvLyt08kh6klIGn
         5QalUmx/w0H57SUm3fTjcdF4cm8K9kvRG7s2yFjtPf9Vn9HSlsBrTRkJt9JPJqheUeA4
         4UcIfjxqFbeI/44NdySghtiuK4R/5wyxBuC4Yual7rnf0MVAzzrDV73yRhYHg9BSD2hg
         vOBp3FwEHFTdkCP53ZHxzNfY5ROitJ3KxXjrhON+Q/JQevEOdTlhtPMDKu/+AVAIiSvA
         0Bjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YXAQxE8vfvQ0ojTRz9KGscqRSueeZnYvWjCEo5vKFag=;
        b=FKtjl9996k0+sn2k55KNiYwxdOCug9eerCnq/bGerFKUPY/Z5iduUB0F2LEoZIj0BA
         W7Sl4DShju8+60AuJvS5HV45ZXB68JZssVMOmQ/budIA0Mh1QaYWSpap+IDuHTUfWZxP
         HCH8o1VDQB+0zOHej8zAVi4jLXbXoMwaAi7RvvrkwJ56PLgpCrGlNEKEnhYnrHYHBkUa
         irpeE5G77m0VCi/iFRx7eEwuE0xmieqyKvYJkhAVaNtDVRje3jM/vIBpemCBhUS6OT+2
         HNIcN+rG0v0gpQNURsrc4Nkbg0+ITRMvzNum7Zx9kcpTLJGh9z3jyvdKPcKtaSoYuqdu
         fXZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZCno42dKYM8fJz2lE0BwSmE5bpTtaktO3B2Z8KwCpBW/uCdlPn
	Ue4gMPjoTyMK5kmXAiFOgrg=
X-Google-Smtp-Source: APiQypKKgtc8wT/F2yYFY+xGe9tHDytUs4o3Y974E+fdeI8r0+KItitEeICkInjqiEUhfjY19OxC+Q==
X-Received: by 2002:aca:5014:: with SMTP id e20mr11499945oib.34.1587842160028;
        Sat, 25 Apr 2020 12:16:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3104:: with SMTP id x4ls2633376oix.0.gmail; Sat, 25 Apr
 2020 12:15:59 -0700 (PDT)
X-Received: by 2002:aca:670c:: with SMTP id z12mr1166886oix.57.1587842159649;
        Sat, 25 Apr 2020 12:15:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587842159; cv=none;
        d=google.com; s=arc-20160816;
        b=efJLMUOOuNZ5ET5PvpdKgubZQek6KSHSrozqWrdS7c7Hy4D0ywmDLqbHi5pPW6pa7A
         C0rktr6an16GyVHh9QyFRelSOamctTtFwcmhiOVNAgEox7jYK+VmhMjTlyDYw3JG3uS8
         8JKpJNC4B8UD0Ah6V+Pe28ZiQiPvz5gv0Tudg0t53JaBDwlv6ccByeb0hn1Dh02cRDAJ
         UJTmoqcO+S5ri41BbOs6GzW1n4vCQ+TiHupQ/i7AXC4fgfOCYpNcWVjgoxWs9Pjsm84p
         EwH26vc92566Bn9dMOqzfqW+fiYgH6irFQVADBNbprWDOvTVJX8N9a30qxH8WPVJpjgf
         Uncw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=noXs+QTArKCyNSbM/BFSP4S1AYLOO4rBaIcd7De0+Kg=;
        b=OYS/uqksoJIVCJL8KAPWkHOmZlnInhTnBuLbqFvoLpUFh8UJ2+CflZkAewgkYqsnbd
         OMGewrSVE1k76hUH9a0oAtX0fQCwUcCNqf96P+amUtCTlhK8L0+DKUQcgdsU9e1iRCWK
         1qBk204ywlqDRj/IM4eX/M7zsIDDalVgaudXlKgP1mAHTcKXGv4PZdEWeeCdkZr907ki
         d81J9B58uvONt8NvB9e92NRTCG/LBwbnkO1PRNxiXqOZAQN8ffCkYuKXaZ2AeoYSliEp
         0JahNrdo0bkuuxbDRrd7/F06V/hXlGhxwDJRSHg6/wGDXtJAJS1OdRVXdXyGH6doVzcd
         HOGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id s69si757043oih.3.2020.04.25.12.15.59
        for <clang-built-linux@googlegroups.com>;
        Sat, 25 Apr 2020 12:15:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 03PJFpQN000983;
	Sat, 25 Apr 2020 14:15:51 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 03PJFndY000981;
	Sat, 25 Apr 2020 14:15:49 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Sat, 25 Apr 2020 14:15:49 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Borislav Petkov <bp@alien8.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>,
        jgross@suse.com, x86@kernel.org, Kees Cook <keescook@chromium.org>,
        Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
        Michael Matz <matz@suse.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Sergei Trofimovich <slyfox@gentoo.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Ingo Molnar <mingo@redhat.com>, Paul Mackerras <paulus@samba.org>,
        Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
        =?iso-8859-1?Q?Fr=E9d=E9ric_Pierret_=28fepitre=29?= <frederic.pierret@qubes-os.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>,
        boris.ostrovsky@oracle.com
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <20200425191549.GF17645@gate.crashing.org>
References: <20200422212605.GI26846@zn.tnic> <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com> <20200423125300.GC26021@zn.tnic> <20200423161126.GD26021@zn.tnic> <20200425014657.GA2191784@rani.riverdale.lan> <20200425085759.GA24294@zn.tnic> <20200425150440.GA470719@rani.riverdale.lan> <20200425173140.GB24294@zn.tnic> <20200425183701.GE17645@gate.crashing.org> <20200425185313.GD24294@zn.tnic>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200425185313.GD24294@zn.tnic>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Sat, Apr 25, 2020 at 08:53:13PM +0200, Borislav Petkov wrote:
> On Sat, Apr 25, 2020 at 01:37:01PM -0500, Segher Boessenkool wrote:
> > That is a lot more typing then
> > 	asm("");
> 
> That's why a macro with a hopefully more descriptive name would be
> telling more than a mere asm("").

My point is that you should explain at *every use* of this why you cannot
have tail calls *there*.  This is very unusual, after all.

There are *very* few places where you want to prevent tail calls, that's
why there is no attribute for it.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200425191549.GF17645%40gate.crashing.org.
