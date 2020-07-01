Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBJ5G6H3QKGQE3NMFLFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AA42107B7
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 11:11:04 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id s67sf192121vss.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 02:11:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593594664; cv=pass;
        d=google.com; s=arc-20160816;
        b=sBCMjr+Q2IfK5zucQ5vZsECF9kutEg7JlPMIWTqTdBKHuMAosc14AbKiJRzbXoz+az
         bTHO5CORUwCFz6Jm79+1z1EC6IDMbzmdLYdFFhI5FreT38J0ckqC78AiTd9iUHS+/FUz
         tZsMCRQMiX6P9fiEGy/yR+HPIb2C6/2ctKx9fA1ywyr+ICjE8JWmWfVaT216TcIXrpLs
         kSRnPALRQzXoHerG/QE76JjJ83+wBEPbH983AQMl5tW41sUUDpVnSps2vnBE8DtkYIAE
         jKyZAMB47eAkQrMkFOGr9+111CzSz2JRsNnO+frrIstUB3gDpKBNxa3NgDcDKKPuIfwt
         +BoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wlNYKbVrB6AtgWi1saQ1lE+XMNPF8QZjOOTeydvk3pw=;
        b=NaQT9HRo7hjjLoOeF0+Sc8lN6/oNxuw/YQGnQjvB7iPtyFcPI8+7x78Cq8X5uDEItD
         sjMmzGXD+zW+eNWkhUnkY8DEwzEknS26AnoWi4dIUBNaRNomSYp0KNXZTyQZKFyi8fUg
         g/MZhdivBpgeu/jLAaMr59bOR8CFk5UcQwoUIr+hKBklIODiZ9SQSk1/DADI39nhpzdY
         xV8cy8hOOwTSTx8xC5H5yNDtB5oP1VC9Ga4J+LLUDtnvx2l2Qm0KUYlHnbUDYbYjlhG+
         prd81pVud1Yw82OEPH8vea2X9SsNBivV0/4wQnnAMepzyDBYIU7AFZq9/asehEtlKnnW
         od0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=EBZVsbt8;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wlNYKbVrB6AtgWi1saQ1lE+XMNPF8QZjOOTeydvk3pw=;
        b=C02oK+F9tyYlo5WCOoh8NInC9bzqyQKH+37B5cXeIxudVldfNdbODd3AXD+fX56LvG
         8fdFU+bxO44aZbYmQNqFXDwzTcCyMMC2/lYqy36L0Bd0y2Sw10d1s2m39mDqdqM0oqIT
         Smsf8z8NZwS7m/07zAfXMMxzr5BzDliZwUS3ugy6OZdWwD+YdsvBGMAsU6ODs9xE2EQD
         XIeJ5Ks+bIjZKax708gTgj0GS6Sgy0iCMcXkPtszDySa1ENa8E01dH2JWIAjkRgieiiX
         iSt2St3zXXv0VcjKY7KvRJIERln3f3SGBFljUKsCUZ7+sFo6xd6ingPLGlNcZllxg9nP
         CPkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wlNYKbVrB6AtgWi1saQ1lE+XMNPF8QZjOOTeydvk3pw=;
        b=V4LNEMdiAwK6/oLFuDjU9srposSZRcBqbGWFzCJon5/HO3tWHgWhDNDGn13bHRFNqM
         eh2Mo2Dt6mEH9wH2SXjYryD1gpjlaivdwsXQ8bS9CgtTe3ki7XXKuh7WrxZcSgRBB1eo
         Gltsd52OZJZZaB80x3ahQDELwp32ZghYAy0z2s5QnsbpC7GfVlKPBJJMLoeYVtUVA5A1
         EI1IpP7BtqzcoGhb6LnufMWxQsh1ZctirBoCj8YJiFkBLKjH1hgHew8DlI43LNI16dyd
         TXVnUHczT2u8tU3es9aM3ktxT/rvM9kHMbT2yvXswgXveBRHV2uMXqNFgQpzd4OCjQfF
         xFOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TkmuRKjLKhVHTmfx1NR88p2QY2cszNFKX+iJzeh+QoeckrRrj
	69wEGEXbnilCRwMbzMb2Ork=
X-Google-Smtp-Source: ABdhPJyjCfze8w+SBFadWomYcU6RevdgWF+QWIfAIY/GAQhY3CFW/VnLtmHtc0TrQRERXs5rKWWN/w==
X-Received: by 2002:a67:6ac6:: with SMTP id f189mr13218918vsc.146.1593594663811;
        Wed, 01 Jul 2020 02:11:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2912:: with SMTP id p18ls100520vkp.1.gmail; Wed, 01 Jul
 2020 02:11:03 -0700 (PDT)
X-Received: by 2002:a1f:9bc2:: with SMTP id d185mr17253718vke.32.1593594663430;
        Wed, 01 Jul 2020 02:11:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593594663; cv=none;
        d=google.com; s=arc-20160816;
        b=0gRxT9effc8aUM6xCeKY/pkJcp/CgZRaBQPRwstBMm4bp3pO/aYAALKGrcNGTpqKgw
         T+ojkc6INHpg33AIjXcMFZrvLd3xFOafC+ac1jTZPBJUeakNQ+5PqwXBwxPxXHtwEsWP
         9ndXEjHRpwRxuqjLcf+EpaMlPLzyz/+fBAIzyvpIxV0edo0zAuPBvk1LFXjgOlEcco2Y
         271vbfEXtqUK4lP4mOV1eFBnL8kyC2MBrGokCYeE6XBhfdecor3r0Az6WFAnOOv9cjKT
         g61g3C2kB9m6CkP+RTlBSSAMsXuRl3UXVIkOhgU5QT8BfczDQfgYIhyc3CPjFpakU0s0
         xTDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6wLa3Z5Tnqc6pIqvd9Kuq9IIUcvVwIhLZPWeRnHbIeA=;
        b=qksAZDu4uY6yDzagAeub7Onm4JItkkkBFzuM/dI/J58LkKrTFkkX2U2P6Uo6acg/KN
         jCqXJDWqq31PW6w/Ymf5CFSS1C33JbDCVGlg+YDJE38ZTmI4q97KJ2xLIxmm9JfAUrJG
         XSeTHUFdpJwQP3KDGLmu28/HKakQA/th2lJrmiG6rnY+5moLhjumMdZ2H3ISQZUlp7uQ
         LV1UZ778DTLzPRcuSsVTyoSbwg/Gr6zcvQZSeIA0HWJ8TxvIPHFMalEgZB/n3QZa3f4r
         c3P0K39sdWhvLbB9PPHaB5wylnbIkl40qJcJQlKpOku7kV9TPImKgqHmvuVjbt3NUu+9
         Qfiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=EBZVsbt8;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id v13si306602vsk.1.2020.07.01.02.11.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2020 02:11:02 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jqYle-0002ST-A3; Wed, 01 Jul 2020 09:10:58 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 33CD9305B23;
	Wed,  1 Jul 2020 11:10:54 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 170A4201CB82C; Wed,  1 Jul 2020 11:10:54 +0200 (CEST)
Date: Wed, 1 Jul 2020 11:10:54 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Paul E. McKenney" <paulmck@kernel.org>
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
Message-ID: <20200701091054.GW4781@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200630203016.GI9247@paulmck-ThinkPad-P72>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=EBZVsbt8;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Jun 30, 2020 at 01:30:16PM -0700, Paul E. McKenney wrote:
> On Tue, Jun 30, 2020 at 10:12:43PM +0200, Peter Zijlstra wrote:

> > I'm not convinced C11 memory_order_consume would actually work for us,
> > even if it would work. That is, given:
> > 
> >   https://lore.kernel.org/lkml/20150520005510.GA23559@linux.vnet.ibm.com/
> > 
> > only pointers can have consume, but like I pointed out, we have code
> > that relies on dependent loads from integers.
> 
> I agree that C11 memory_order_consume is not normally what we want,
> given that it is universally promoted to memory_order_acquire.
> 
> However, dependent loads from integers are, if anything, more difficult
> to defend from the compiler than are control dependencies.  This applies
> doubly to integers that are used to index two-element arrays, in which
> case you are just asking the compiler to destroy your dependent loads
> by converting them into control dependencies.

Yes, I'm aware. However, as you might know, I'm firmly in the 'C is a
glorified assembler' camp (as I expect most actual OS people are, out of
necessity if nothing else) and if I wanted a control dependency I
would've bloody well written one.

I think an optimizing compiler is awesome, but only in so far as that
optimization is actually helpful -- and yes, I just stepped into a giant
twilight zone there. That is, any optimization that has _any_
controversy should be controllable (like -fno-strict-overflow
-fno-strict-aliasing) and I'd very much like the same here.

In a larger context, I still think that eliminating speculative stores
is both necessary and sufficient to avoid out-of-thin-air. So I'd also
love to get some control on that.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200701091054.GW4781%40hirez.programming.kicks-ass.net.
