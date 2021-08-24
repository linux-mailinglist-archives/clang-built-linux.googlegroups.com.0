Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBCV6SWEQMGQE6EHMNWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1003F6AC5
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 23:05:15 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id p3-20020a0565121383b0290384997a48fcsf6527697lfa.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 14:05:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629839114; cv=pass;
        d=google.com; s=arc-20160816;
        b=rkukkFX8sK14wZRh6HNPFcczugKIK4t+o6eI46/CubK+9UE8ysevjtNuv8bYzPH3/z
         Liu6iaRDmIscP+/j9Ha3p59aeIRXw2M+oL6wO9+pwLqXkRZhsGfsnUku36vOo1Jpp4yY
         dWuT8qye0n45flsQa7l3WM8J58cpMHxz4pAM8MaZQWYiLsCXLtuH90gSJdiGyDfVVwY4
         E5tEdRe3UQTka0yeYDZ0PIsP/XLNoetYmemnj7ZhpRd0fmsVNr2Il3BLLC/pBUaDD/lU
         PqkWwXSBCrh16+QXOvutsGfYr/4JKrSJv9dnKDPAafKbgY+XYWADylXwyeZr8w2aDxvy
         4USw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=y2A80xQtmb7+CB5r/Mk3j+gYGrqMc8FwKK/kpNfRrjI=;
        b=k4NY4+gMS2kj/C9TLlDWsR3Jnzyf71WLQf0g/WXncpSZAKtTqvax/EajWjDGVjW1lx
         7y4A+YpaKWEnGQ3f2PCOByeDmz5NsDyCJPKC8l1DSbtyWghewgDfHckoBW448bvdQ+rB
         zC+d3TyTiVgVes3gYK2EcN/rJ8GFirazcDcC6FXHYrb0zZav+wQ/ABoaPnVJ0b3QaieF
         NUfkCZ+aUojRxp4vGPfylJigdQggy4PIqoQ4BH7NpMPvXb0yVwExEeFrX0J3Wlo35WP2
         BLlDMS+HE078d10zrryYzHKj3nB/K+Zf5X0W6myOGWbafDKkP0KclSpLE8scS2Uj/0gg
         Q/lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b="Dt9M/Zu8";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y2A80xQtmb7+CB5r/Mk3j+gYGrqMc8FwKK/kpNfRrjI=;
        b=OqSI9SfDCNX3YZQkTiPrRmmXU3+5pjYszbAyPZQrn7DC9nOxxoHo6UneLb+doIxhNy
         MLOCdMCRf3qtbhDUeWGxEpommrJfksTmGbmnD//+tTdMx2tZcC52e4/Addidoj6nFr0z
         21evdrTScQT4AAAWIS4KMAZV5cFaR+JmIUAaKHQvrGDv7eqsRGVcRFbTJKG3/SWkZ0sn
         AFcjyxGM/YBn08c0qyxPcGT3drLs+GmGSLj6OaHSYHTI8TCZ6WxrXtverZYVNINMmUQN
         Ppzw/sUMSxBmMq0J1/8/ksDt6ocde4HKghyG6PenYO5s1qje5l9H9PeLE6gTUsrOtriX
         Kr+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y2A80xQtmb7+CB5r/Mk3j+gYGrqMc8FwKK/kpNfRrjI=;
        b=Bda2hWd0hGyvxNJT82A2lp2J6FjPUvQ3aevSM7grrXtZxw2S+2Zu+zBJVp2yMP/wI3
         D7Lqr/0dvcUARgKnsdAiO/cXmyd6wJYpAcB+xK/cSKoA8nnTh5Mv4ccs311WhqQFndsw
         7EgbyixRiKwE4+QjBMpPOmkrZY6mXFI2bjjCAW6lzmjMkPDehn1O5BVi+0rjBxsqk9Nq
         P3+/C8DXsO7sZ4YtjkjGmdxg74GwY/zWcpdhgGMoe84yET/3IazHV0I1oLaiVS7oIUoT
         0gxLv9KdsXRx4nSh1Ze1/RL8qx8hxHJpCEGxRhqrQ9dRF7jsRDxSRkBO0Y5N9dgHwndK
         syuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xqZPp5R2MXLRjyNhObvoZOEkjbXyfgx8UNc1chZr6g6pFyml3
	G3l9LP48HWzUk3R7TPaM5OM=
X-Google-Smtp-Source: ABdhPJz5Kx3A20Gaexe18q18TyAo/VWsPSXl0kindMZGC7LP+t8KT3KkTjncBRhVt1E4DOJ76pXtaA==
X-Received: by 2002:a19:3818:: with SMTP id f24mr4094894lfa.601.1629839114640;
        Tue, 24 Aug 2021 14:05:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:ea5:: with SMTP id bi37ls1325769lfb.3.gmail; Tue,
 24 Aug 2021 14:05:13 -0700 (PDT)
X-Received: by 2002:ac2:46ef:: with SMTP id q15mr30977953lfo.407.1629839113573;
        Tue, 24 Aug 2021 14:05:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629839113; cv=none;
        d=google.com; s=arc-20160816;
        b=jr3NrHXLC/SJMqQJzQ3Vhf1plQ4MBv/uwH2O1G008NsdYQrr2rmpdRqrc4530xDvwO
         ielKq337bW4Xwx4MbsinoOLTDOFvnZbCiqflwGWLoroym0J0RVoHT4dMGEpaQASyEuJk
         KX44ngdj+Dz/FfIosAEBu7UfmaAdhSEOdANU1QV1B2iSbGOWyk10Q0WuUd//DGipcjiK
         QfPWOa2kOtowLM8Rn5pPxxocDjfxvQu7I0elRakX+/OgMlaSWy7mQLv3uspmo/gqSrHq
         CkD4gKRzt305yCcCLqkFzQi+7aiVb1BEHmfKUZMLHuYSlkW8C3W7Cwi2M29en0b8nhoi
         bNcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hY99dBj8BXa4nQSsll4zO9lsRBPP5TAkRTfty6KZ8yY=;
        b=AiwXguPXujh7F0QNQmJ0ytqSMW0YKt1wtSiL3AOEaDI9LgOYPYHUgmc9KoTVmF4Ipp
         IjYhkGlXkHBkNnWGXBoCCY3gbQGyGJeTg34sb0uxdZzGQtrvK9p2vv+l4HEOIUzpFndO
         FltbtBavvE0AAFyGeLs8V9ez9QBoB/UznMMTIdmQBRzC3Qs/aQP9uEmGT5CPeUa6srSo
         pFNQUT0CWc9mcByHY0IeENyny75o8fuKsS5QFFwOEGR/wyel7bgeD+js2XnJHCKp2ile
         oZ8+VU58KBiJirxxc4qDasSmVlF28kLFdHE4H2n/BYcqCPMlm2rC2CcIdLVRM/k8h2Z9
         4OwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b="Dt9M/Zu8";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id t9si1187235lfk.1.2021.08.24.14.05.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 14:05:13 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIdbY-00ChXp-Cs; Tue, 24 Aug 2021 21:05:08 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id 27492981244; Tue, 24 Aug 2021 23:05:07 +0200 (CEST)
Date: Tue, 24 Aug 2021 23:05:07 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com, llvm@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: objtool warning in cfg80211_edmg_chandef_valid() with ThinLTO
Message-ID: <20210824210507.GC17784@worktop.programming.kicks-ass.net>
References: <5913cdf4-9c8e-38f8-8914-d3b8a3565d73@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5913cdf4-9c8e-38f8-8914-d3b8a3565d73@kernel.org>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b="Dt9M/Zu8";
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Aug 24, 2021 at 01:08:58PM -0700, Nathan Chancellor wrote:

> The LLVM developers are under the impression that this is an issue with
> objtool; specifically quoting Eli Friedman:
> 
> "The backend can, in general, create basic blocks that don't contain any
> instructions, and don't fall through to another block. A jump table entry
> can refer to such a block. I guess certain tools could be confused by this.
> 
> If that's the issue, it should be possible to work around it using '-mllvm
> -trap-unreachable'."

So jump-tables are a weak point; ARM64 was having worse problems than
x86 there, they can't even locate them.

As to having a jump-table entry to an empty block and not falling
through; how are we supposed to know? Emitting them is a waste of space,
so I'd say it's a compiler bug :-))

It's been brought up before; but perhaps we should look at an 'informal'
ABI for jump-tables ?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210824210507.GC17784%40worktop.programming.kicks-ass.net.
