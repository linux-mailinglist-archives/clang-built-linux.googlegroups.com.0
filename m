Return-Path: <clang-built-linux+bncBAABBCEM7X3QKGQE3SSBWVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 97324213C17
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 16:51:53 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id s9sf33623024ybj.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jul 2020 07:51:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593787912; cv=pass;
        d=google.com; s=arc-20160816;
        b=MkqU8Nn/Mu/XWJw4WGGxvF0VgRgCW4DixhAepqxSE7RtWMsXcUvy6yfvZ3r0Wi7VU9
         T4soZ8Y2BEG2lO6J1a2SH95KM8NXvCFlgvskAerf3D2cT74zkx5p9D3kBYXKtsol/8yP
         AfWucvyJK/4R/AI0yPRByE3GM5+2wQmHfbb/I0d+7BXICYymAv3soesXJTYcqyU1TLH2
         XbJ7CCN6eBSo8IrUKqJ6Bfhuctb2Q3yq92WNicR0mT2wAHgjeM5/1ybHZqavs2MsFBhS
         tDED5pMkrbSnHAZTqlo1K0L662HoIJoi/uw4KEYj6ojdbqhJqT+2v6CGZ2F+41Kp9bo0
         PZeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=O5431crN3TlgMeCLnAbJXzvPRCQbXiHiO6QvtBguuG4=;
        b=IurPo87HEwgMDS2JoHqtQ126x1vtOB6nsxMtufRKyrOC3spX2cTfyf9nRDeJZQWsmj
         A1CFBIS/BD0HTLq/h9/zhDSXakjE+1qvRTxm8ZYr5bDQuiHDupewI+wIl3jAvEzGf9qr
         an94fMfnQ5yKX9r/YSIPF/0/f1RHn58+PXFKIUNtp0V7BNSmY93nAdnsOsfGkM5iiyRk
         1uR+QiJj+J7A9CqWU1Qgb+cmxDhb/XdCMCiejNyWDvqy/1aVHFCujmgfZh/aIbAqrU0d
         ph5OcD0ijwQV+eLK49OaBm+umhEVOEqUv0qPEF9+rgKfSre5jHSfq5wGirXqEAfOK9yL
         X0rA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=P08qXOSK;
       spf=pass (google.com: domain of srs0=s+ul=ao=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=s+uL=AO=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O5431crN3TlgMeCLnAbJXzvPRCQbXiHiO6QvtBguuG4=;
        b=dFb6VleK8ZY579PrZjDqeve80FPyOfR7pRylOM5O6E9jHUek1xR8h6YWQDWtKmv/Ma
         +qdLWOC8OYyRFPbCD3Z8JZby5JxI9k1fKmq+UjiHrm/NXCOBlTL5QL9dAjq+5SZJSIIK
         B2F1VFv7Uyrnx2NfqH1qsAfB810ULKxg4NIVvG+8D2kNsJJ3hTOwV8/x4dtZqVI8j6bb
         B/Hf9zg/CNAE+1rvYuXVPAgCwqJjEXq0bk1wOzApL9hkRJemkg20ENvr2JuUKc8OkGc9
         o8xFEO8+euP6K2eNO7EC1X+oKIx6JTD3Dt5hoUPKPNvsJmk/4hKPJN8HvbpgmehwFC1S
         pIhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O5431crN3TlgMeCLnAbJXzvPRCQbXiHiO6QvtBguuG4=;
        b=n9N24gp4AMpCZGajLQDsVMGcJyUGfqx/V2hsuEatCRwSxu61zJeyc/YnpevvbdOrzD
         tXaMX0KlgraHx2l0r/3gjFscnBTHf/I5fYjYbY0g3GXBpoidwGEKFccCowMCo4BfbVTM
         oF/vlcmyyE/79cvDCIJEJIPf1RldEj1m1gNOJI82HfO7bF4YsvqdtGO99dlfWjz+qhsK
         uqPwuiSoL/HOgg2Co+3TyRwwCljFCM18SRXzLZVQm3guYZLNUu8AZpkXnQOS31SAdD48
         DHZZMij0KcTHlDakh3FqvhWsCcyguT3PsLj5CuwFSxDWnVfmfvGEgFY6nolDYwKztZ57
         nKLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aOwpJengXb5b8IK+7vimtPI7hGNIlnxMi5YiGVelMktdJKdh3
	UqieeAsyxepIhdvHvxsq1kY=
X-Google-Smtp-Source: ABdhPJykY0fiKbc3uJWQ5baamGI1eUug3fpKh7z+VReokZU86ZBTXvtHzXhxkBpfpRXgHVb5CEfpKQ==
X-Received: by 2002:a25:d38e:: with SMTP id e136mr10666ybf.359.1593787912679;
        Fri, 03 Jul 2020 07:51:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2c46:: with SMTP id s67ls3647155ybs.1.gmail; Fri, 03 Jul
 2020 07:51:52 -0700 (PDT)
X-Received: by 2002:a25:b511:: with SMTP id p17mr62680530ybj.86.1593787912394;
        Fri, 03 Jul 2020 07:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593787912; cv=none;
        d=google.com; s=arc-20160816;
        b=IZqs0P2bufLQ3WOZHABBWh8cS5u2qk6IUtr6fOd84NW/m66dw2Z8AAfxHWiAm3t+l4
         MgUoQNbTvMos5PYheclK2HeIa2E5QXVFSsBE139NjZPIC8AkpPJDHpAqVTYcGzw1QPC3
         Y7sF8/qqPvon6z3KPpbhxiMTWOBpakhSik2b2GFdNiyNEoZCcp+6mLH8/Zj0eFquFzMW
         6b753hlAvK0f3IvUxKLFGmseWuKQprEaW6FJWP8KnPuEsPdDBlDTKQOhVdhQuR3ua4fA
         b/bW+WPOBKsRzJ/Wk9laFOQ1TkzYny/vFWqd4UjGezzP9qHEpEnSqPZ9Oqo3eZ2fWFb4
         OVlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=SyA2XF8gBhRMlAlca1znUca9Qc+pEU1CSVbA7zNn4B0=;
        b=c7fBlzjSH4CTjE0fivKbC1mVQqXMtST57CMtprK/4F2pZJ7IXjr4L1S71IiLNu3Bdj
         ZGhcE76qGBJIGmOHxaIJTRxSicPyG4Rf82wOA9JnhsxuPaSm4AWDFfptwJ6DgzoP7ueO
         iJBIYnT+LgEvQQ5cZTmJ7qrVhj7VBKixhtXIWsVkX4pQzJoM9FYEp+IQzq5loBTv7Jsb
         BFN9vX8FMOicg44QKTG41U5WcQvsxNz7qhdfYckVIpazQ+Vbo7FfMnjmxV3n+Iw1S5i9
         RnJZYLTxFkb6M4nteyXjGdV6Y0QnK5VCQlJ1sAJCDPYmMAKi5cxzpLSDvz8w2eWBgc5+
         7+jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=P08qXOSK;
       spf=pass (google.com: domain of srs0=s+ul=ao=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=s+uL=AO=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a7si640489ybj.5.2020.07.03.07.51.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Jul 2020 07:51:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=s+ul=ao=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 61D192088E;
	Fri,  3 Jul 2020 14:51:51 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 4C40135206C0; Fri,  3 Jul 2020 07:51:51 -0700 (PDT)
Date: Fri, 3 Jul 2020 07:51:51 -0700
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
Message-ID: <20200703145151.GG9247@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
 <20200701114027.GO4800@hirez.programming.kicks-ass.net>
 <20200701140654.GL9247@paulmck-ThinkPad-P72>
 <20200701150512.GH4817@hirez.programming.kicks-ass.net>
 <20200701160338.GN9247@paulmck-ThinkPad-P72>
 <20200702082040.GB4781@hirez.programming.kicks-ass.net>
 <20200702175948.GV9247@paulmck-ThinkPad-P72>
 <20200703131330.GX4800@hirez.programming.kicks-ass.net>
 <20200703132523.GM117543@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200703132523.GM117543@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=P08qXOSK;       spf=pass
 (google.com: domain of srs0=s+ul=ao=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=s+uL=AO=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Fri, Jul 03, 2020 at 03:25:23PM +0200, Peter Zijlstra wrote:
> On Fri, Jul 03, 2020 at 03:13:30PM +0200, Peter Zijlstra wrote:
> > > The prototype for GCC is here: https://github.com/AKG001/gcc/
> > 
> > Thanks! Those test cases are somewhat over qualified though:
> > 
> >        static volatile _Atomic (TYPE) * _Dependent_ptr a;     		\
> 
> One question though; since its a qualifier, and we've recently spend a
> whole lot of effort to strip qualifiers in say READ_ONCE(), how does,
> and how do we want, this qualifier to behave.

Dereferencing a _Dependent_ptr pointer gives you something that is not
_Dependent_ptr, unless the declaration was like this:

	_Dependent_ptr _Atomic (TYPE) * _Dependent_ptr a;

And if I recall correctly, the current state is that assigning a
_Dependent_ptr variable to a non-_Dependent_ptr variable strips this
marking (though the thought was to be able to ask for a warning).

So, yes, it would be nice to be able to explicitly strip the
_Dependent_ptr, perhaps the kill_dependency() macro, which is already
in the C standard.

> C++ has very convenient means of manipulating qualifiers, so it's not
> much of a problem there, but for C it is, as we've found, really quite
> cumbersome. Even with _Generic() we can't manipulate individual
> qualifiers afaict.

Fair point, and in C++ this is a templated class, at least in the same
sense that std::atomic<> is a templated class.

But in this case, would kill_dependency do what you want?

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200703145151.GG9247%40paulmck-ThinkPad-P72.
