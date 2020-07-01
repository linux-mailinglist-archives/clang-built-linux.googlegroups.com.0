Return-Path: <clang-built-linux+bncBAABBW7H6L3QKGQEYWMH6LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0C3211010
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 18:03:40 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id w24sf14479954ply.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 09:03:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593619419; cv=pass;
        d=google.com; s=arc-20160816;
        b=IX7stEF8XZOQMJfmhSUvssxNSx9+hizcPTjlpM1bYTpnzxaY1Hedcy6JbH6E033snQ
         pXnTigKqUREkUQeqoqTxg0kRiIsKU9ocXdKl8f4H/G8SA0N3+Zk6GblUrQXHJjn9aqtc
         yseJlPczqQXjQkX57HnfoL64KHK1jzpSrRnLpcIvhfIEFsg0+RI/JE5z03kbyFG6DA/g
         gTP15wibgaIY9Wn9IKYQRf2e/aup+ps1bYc+9xS/10BQCPSJngGTJuII7Af45J6JIwuJ
         gSlhrf0gnXcwhYvgg9nzTy23ZTpU2BSfbEvlAlF4jkNVlrdhLMC/fDaJrkuXy0DQeOzi
         FUbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=Acued8wTVan46tJlU0pt5Awv7PWnXhp3Q20zXanxp70=;
        b=FcOVejZS4kKQv0t9rX+dZ3+HO5cL14T507H+ZXs5/SZQV7yYuYMGFdbDvu8a7IH9Vm
         voDrmPfJBSQX+HNkcn1Q3+Bb3Fhy8jjtGvJQ+Bs/gfBSTTd2RCXGUAIiqpGUgcbZzRCo
         /tH8GUDDAyMpMBI40ZvpFsS12Gv6UQccWpU33AxZaLJZRD1YqGS7lW5OAbkWvfYoFmYm
         iN3XLswPM/t6ZoXlIfI1wSe7dCebXPSK/a+X6u3iael6xz0C8KUtXwohkQQwKr43w65M
         WVMSd29VC8xMwXTLwavEMuTR3R3EboxMQVFY2k2S8M0lRlfoy/erp5MNL/DkPR5i8Ce1
         brDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZHXG8ON1;
       spf=pass (google.com: domain of srs0=ftm2=am=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Ftm2=AM=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Acued8wTVan46tJlU0pt5Awv7PWnXhp3Q20zXanxp70=;
        b=AzCytg0mcMtQfdSgVldJmVQfKG1j48JUzuQU76UZQ7w4Cyumx/E8DywrlEMpp5FtAn
         Z4p3mJSebgE/azvgzkgYeqJmXQuu66OhGd2UWZOYI0y0RXZa7Wt8LBDlhTViel7ZFQMN
         aewagU8pxbX7S5IsHpaHSFH/ohywGoRfRWulTFU65kDaaX3vkzHRtKXOUSvYzPnoWxzk
         15LYCzVgUXTkfG4zxu7ThKqJ4PU95YZ0aXkPmhYCkfNTZrYXMe9zF2bNZJACYKQxWdF4
         7MFEqXQs9XnUk1NKSRcqBbiTowF69+tz8O1+FOKzpX4Ilr+Vt4falCXggC8GKR1e77kh
         MVoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Acued8wTVan46tJlU0pt5Awv7PWnXhp3Q20zXanxp70=;
        b=fba/16nLzQJHn4VmTt9v/PqDs4HNPEqAQKpPNc2+Js6y/qEUblE6KHhgUmHtip5qzo
         DeXu3txupTMAXjPaaMsO0C4Uv41njZAIIHSPER65zl0TO8rHzivn+evhXZ6nQR22s5Gm
         Z9f8lhZyBwWN/EKhpe43HDeXf/WGU/uORF8OHVC1oieBMFDPIdO7eLTRQ7sD9LbCgVHF
         UidnjRflQZvV9lE9bLcF8ArDNIMDzKnDEeSWfelDNJj2fmEQQp6gTwtGagbP896tnmBh
         ieVKBg1INAWgATZu5o599AG/acv+OP7kwYsOKIUu28ZJ0uABfoF8GC7Bln5OW3cfqw7j
         Ai/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TZY69xNybNoFrmNkbpEQrqv1W5ovyoVLOKew/NoOXoBVCfeon
	hy3xg81vJzKO4ohUL/VpP60=
X-Google-Smtp-Source: ABdhPJykCyuFEA8OVhpe7rGKW0O8P5vPlNbhEQNW4J894c6AFh/4ImKd8RxH6vLRFvoH0zH11hn7DQ==
X-Received: by 2002:a17:90a:9f81:: with SMTP id o1mr28699886pjp.139.1593619419195;
        Wed, 01 Jul 2020 09:03:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:134a:: with SMTP id k10ls894479pfu.11.gmail; Wed,
 01 Jul 2020 09:03:38 -0700 (PDT)
X-Received: by 2002:a63:3587:: with SMTP id c129mr21185666pga.322.1593619418794;
        Wed, 01 Jul 2020 09:03:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593619418; cv=none;
        d=google.com; s=arc-20160816;
        b=cwtvh+2A9JeOvOZG3wkDYE0dKUR4nTzI/p4w+VL3exBVLB8wZX+PY208wqe1/o7GX5
         HevRuESK9w9GyDgiqNUniiQi9EAyKdb5LfJE5hklo9+Iycb4MCYXbhL2LMB+2h195SY6
         Kdvb3Wc+6qDMfEA1Ab/XKKCgHhBCY3kkXIud/J9SZj5tSB8eQyNWtdNwSRf5Rqj4GRXW
         e2Jw147ZDPFqXpfwYw0CWUxdkGphj8g687RmvCYE6iSC1uoBS4iVHGaelVSQfjJkHrcS
         jJNrYDMzzbupi2BEr7nz2aNTYzab2ci3uZyWbq/NlunBELMh+B1BZt+iO7+ee0VmFCOV
         kfzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=usD71VaJlunmPyrRvCk7HuaZYfTyGcwyd5oewgQBRX4=;
        b=T0tT92joqRf5SNY6uh9U3z7NVz131+6j7DrkCzsoAjehi5BxQFT14lKXvYczUUD3oN
         bGF8n8xIIf+m8AcP9aGHq5PP7yioGyr5GTUDPivfZ0isXxuS8L79UieUe182GMW/AWm8
         mJKt4E8VMWtdjCmiKyKVGLE3DF8yvte68YrOUWHgqoh99e2II12Jhj5l59sDX4c711qq
         gWfDEnY5PlFEQINxCT1mHfj8rJJEjWikRejWA372xeHwbc9+H/G2KOqSIJ68wSHVpaDN
         UQK391bfdxJGg/GgNrkozbRT0yXAqh3ehbz2l5bDru/ja5JFknU+YcVcw9nYEVp+FbqQ
         4f2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZHXG8ON1;
       spf=pass (google.com: domain of srs0=ftm2=am=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Ftm2=AM=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m8si410242pjc.0.2020.07.01.09.03.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 09:03:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ftm2=am=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 776DA206C3;
	Wed,  1 Jul 2020 16:03:38 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 5F00E3523108; Wed,  1 Jul 2020 09:03:38 -0700 (PDT)
Date: Wed, 1 Jul 2020 09:03:38 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200701160338.GN9247@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
 <20200701114027.GO4800@hirez.programming.kicks-ass.net>
 <20200701140654.GL9247@paulmck-ThinkPad-P72>
 <20200701150512.GH4817@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200701150512.GH4817@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ZHXG8ON1;       spf=pass
 (google.com: domain of srs0=ftm2=am=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Ftm2=AM=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jul 01, 2020 at 05:05:12PM +0200, Peter Zijlstra wrote:
> On Wed, Jul 01, 2020 at 07:06:54AM -0700, Paul E. McKenney wrote:
> 
> > The current state in the C++ committee is that marking variables
> > carrying dependencies is the way forward.  This is of course not what
> > the Linux kernel community does, but it should not be hard to have a
> > -fall-variables-dependent or some such that causes all variables to be
> > treated as if they were marked.  Though I was hoping for only pointers.
> > Are they -sure- that they -absolutely- need to carry dependencies
> > through integers???
> 
> What's 'need'? :-)

Turning off all dependency-killing optimizations on all pointers is
likely a non-event.  Turning off all dependency-killing optimizations
on all integers is not the road to happiness.

So whatever "need" might be, it would need to be rather earthshaking.  ;-)
It is probably not -that- hard to convert to pointers, even if they
are indexing multiple arrays.

> I'm thinking __ktime_get_fast_ns() is better off with a dependent load
> than it is with an extra smp_rmb().
> 
> Yes we can stick an smp_rmb() in there, but I don't like it. Like I
> wrote earlier, if I wanted a control dependency, I'd have written one.

No argument here.

But it looks like we are going to have to tell the compiler.

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200701160338.GN9247%40paulmck-ThinkPad-P72.
