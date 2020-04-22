Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB4XMQL2QKGQESMXWLNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id F31681B4F53
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 23:26:10 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id g7sf1707952wrw.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 14:26:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587590770; cv=pass;
        d=google.com; s=arc-20160816;
        b=xGBLftNkdG8mYRRZvUhgdQaKdqER1jFukrYXWDf6MdSvLLoDOmaupIU9NQI575OJOl
         lbGkO697VNmGtsgcI9z0i1QFLUPRN2A+N+eLm6ckKTUgqbgbEda07LJs/sxg2XM7xMCZ
         58KEMmmir3xbrtAoo8y8mzc4SxEZL+KrXMmwjOqH2qDehBz0VnUqSHWKTx/uKGfRkmwM
         poJOGkrXCX7HDdSQkedvOxN6Z0rCLHIa+X9cWfbdIE1FqhY72tVUAITfaeoXBmtV4v+3
         FMv+uWrp7+D3kohBcWdnH1AijXrZVmlT1guUE6eyIoBPaM7rs4eGhA++v6b2BidFGB24
         MJ1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qCg1cBHZ64TRNKc4gb1kI3p48nOUbloN71YVcUrDrig=;
        b=JsEnvojvZ2b7G65HdDkzbo9StGywIcHSoDzWmuRRKKeX838yWz6+vCzUaHIYLdpHTY
         cmYnCWDACMG4gsjVXoTDzTW9/fkHjx9ohnbDD3mw/IA+H8+pVyFCaGWy653CDT7ynhp3
         N0d7JzXf47D9DSZbE9TVLRPkexw59Kfw0MSEBsH7HqvjINh5hr9cdLr4oC+bdk9jbHgm
         9ln1FgBTsa6LdJL3pwbdEIYs8WFMbMhAlSd9CzChmLOsJG6pdvqlzK0RIn6XVCUwNVQo
         r9Eeh++aonMRv9ov+jHBikjnYLZQbeavDUaX73ByMqn6PvC6nwq44YpYpOCUTgZ6hgFJ
         evdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ErRlwMxX;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qCg1cBHZ64TRNKc4gb1kI3p48nOUbloN71YVcUrDrig=;
        b=O7/I4vLdIlAvVjhfPetZbPzgg5NNu2wvsdYDJFcaXpXIxBjNCVQaYZVVccVMt0qjme
         GxS6YpYiMUxH+zEyguHAUvV+ke2qbk/GLrwhClfWNxSXfdYIaGjZBcu/IAGfWBcYGuCs
         3O231RR8TKdj9+6nezlqKHsRkgf0swaTi5jr0SIM0mENxdhKM7XsTCGYVnuHQGRBcWyK
         B4Vsg3hgHE+eBsZ4WkfwoVBbYtiV1F2zSIvKDd3ipU58114eBTV2p3fCG6DkbmJEn9mW
         YyXEHMNq65xo/LOtO+WvkL3Rz48O7Y/6L0KXv0e95XSeiADWyt+EnzKV+LYWB/cvlTc9
         SWOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qCg1cBHZ64TRNKc4gb1kI3p48nOUbloN71YVcUrDrig=;
        b=U3e9RtEFB78J/QYcMKtMxpxDrjDdVY6XQhdNPdjmFVPHoaDbk+aVeaU5e6Z3D8WUqf
         5yLOJqbyoumq4G5jhFZrmGCg1+PWystP5tIAIYgfVSIVP4fQb+kOSgxppOS1BJFtn8g3
         RT159+bwLaVSDNYM9bdX0w/xn82BWsDdfSKu4i8Bi6rsPTRT6HJx42CLoOE6gy6Dgh/1
         /8Uz47YDAen69GlBEykX/w1JXh6eK7dxDb/HXQwQN+T/Sre3/mFwfIVMt9XHlMvsVSiP
         LYEq7L1Y66q5UqQ4v8DTmDKeB8fkuxygyAOwnTPCW9PYFIt2TjiCYDcmDhWkWMuTLA/M
         /2Yw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubB8ZUT2kIHC9wcfQhq3KHAtYmqljaSE+GhvQ4S9YB15ksJMoLk
	OY7lFzxGjhRoC9vnA5NGRuo=
X-Google-Smtp-Source: APiQypJL414Fy4CUkKTa4q0YMpqwKQ0rA4QWDd/DBeYf7L86CgL6NrNeaZryFMKfkKCp5cRhKQC+Fw==
X-Received: by 2002:adf:e791:: with SMTP id n17mr1162998wrm.217.1587590770737;
        Wed, 22 Apr 2020 14:26:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f6c4:: with SMTP id y4ls3038901wrp.2.gmail; Wed, 22 Apr
 2020 14:26:10 -0700 (PDT)
X-Received: by 2002:a05:6000:11cb:: with SMTP id i11mr1100271wrx.339.1587590770259;
        Wed, 22 Apr 2020 14:26:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587590770; cv=none;
        d=google.com; s=arc-20160816;
        b=RlLX4QK5qwpoTnRtb81EecNbea/l/G3u/emseDrFzelY7FxtiZ+vFHVXTMQdopw7c8
         QHEKwXormgj8AncbW13A1tLtREftfKUfxYml8DP+dGuBBRdiE9BrtVi/PI8FFEYGLEvX
         6cjoK/O/Wot7MfdYmEsgwmWF2cSC+dcK3WfmYOlyxvK7vtVendk/cVUZVmAgGe0bA9dM
         GgFS+kDS4wkaQTuuYxvCAP1eJyjosNsucOwiYMBLpGehYe18GUMSAo7ajHObkuht0Bgn
         PJnkx7nYQqPqKjct7dGfKacvyW5ItYYBWfraw3owSFIjCws+LM9YUI68o2XgvPkN5AN+
         9FKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=X97GDs7zUOOEwi+VzwvV8BMbJR1hFYVTTX0qpebTCh0=;
        b=U4gvq+l6f/Lg3lQ/Z/Xyibgrv+uASRedLDeuvkuFJWWPIi1Lua3WhiETYeCJ/8slRC
         6L+wedDlQ7Wy8Y/ImqpEGHyOonMCLx2Rwwg9frTNFYSwbuVluxwE+qlfggPt7uXx6deY
         xI1hRjjWab2E/CL5qaVPYv7j+xMuwOI2tb7+wwY0vNUQdrTpi8l2VbM26y+wKMZ0hLsW
         8cM3uS5XAmGMER9PG4J3XKmGwGDgS/OVgkGBd5TFXeRVnu2ab7JpLu/rzSGRkjvs31QT
         lkvnyHZ8Fz+QRT4+0MX4JdqPOVd4hC1MgIeed5N9x0GRlhmpNT2vF1P8jGSQ4kjaBvfD
         nGZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ErRlwMxX;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id q17si30252wmg.1.2020.04.22.14.26.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 14:26:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300EC2F0DC10035D7F52705C6D57D.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:c100:35d7:f527:5c6:d57d])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 7B2511EC0D10;
	Wed, 22 Apr 2020 23:26:09 +0200 (CEST)
Date: Wed, 22 Apr 2020 23:26:05 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Matz <matz@suse.de>, Jakub Jelinek <jakub@redhat.com>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
Message-ID: <20200422212605.GI26846@zn.tnic>
References: <20200417090909.GC7322@zn.tnic>
 <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak>
 <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
 <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
 <20200422192113.GG26846@zn.tnic>
 <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=ErRlwMxX;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Wed, Apr 22, 2020 at 02:05:13PM -0700, Nick Desaulniers wrote:
> s/functions/statements/
> or
> s/functions/function calls/
> 
> Sorry to be pedantic and bikeshed a comment! *ducks*

Yeah, you beter duck! :-P

> With that you can add my:
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Ok ok, will fix.

> Filed: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94722
> (Maybe a link to that might be helpful in the comment, for future
> travelers? But I don't feel strongly about that either way, and
> trust+defer to your judgement).

Here's an answer to that, also from upthread:

https://lkml.kernel.org/r/20200316180303.GR2156@tucnak

Btw lore.kernel.org has this cool mbox.gz feature:

https://lore.kernel.org/lkml/20200316180303.GR2156@tucnak/t.mbox.gz

This way, you can grep the whole thread, open it with a proper mail
program etc. Very useful for catching up on threads.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422212605.GI26846%40zn.tnic.
