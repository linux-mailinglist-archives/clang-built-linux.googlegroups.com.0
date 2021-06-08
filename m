Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBUH57SCQMGQEY6CRYAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB0939F312
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 11:56:33 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id n21-20020a7bcbd50000b02901a2ee0826aesf965172wmi.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 02:56:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623146193; cv=pass;
        d=google.com; s=arc-20160816;
        b=CXyauIT2mixPVCfl9jaSTNgAStS/DTZ0qdWhCnM9s54CUhirqcii+Mg85lLM2Kl/Qc
         bJfMXPXJcF2u68jU1BFS0XfcoXEokFrrlxyh+1dCmXyfLAnrg+W4kmbWpco2j4d/Fa1+
         7M82lF0SKOrvF5CGdDDih4spe9dgLDfK57XOo5AQC+BD0tyn7y8jOOjxOUnamGtXqD/E
         ZLRNIGGdHklAu6pmDx4ySQ+9g5t/UzGYrOUSrgmrm3vMpzSDn5fGI/1wupmguoomEuOw
         WO0hljUnPsEFE7DXG36BNcjLMz8Jy6cEp/G0V3TlVhTVdwMwwxdHUSeGFklRRqFpBdcr
         sbQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+fDwoX1oyfJsjYC1ySLD2ZAWmlqT1otTa+I+zRP1Oqk=;
        b=ZsorIwWr8dF7SRowvHMGJbxoCuMv/O2OgUH1oR5x5vYTDgII4UwX7P4bfb9/iBbxMQ
         /4x0sx5YRL8E/CaQ6WYgcGlyWih8QEsq1aFB+E5Lp+KIJkGkViFaDGiBiHcuPN7DLT55
         PKUybz51kZX2sR2Ii+Q1XwfHcF+9maTLG6wf42FL6xuNAHi1WO3lgkwcwB5osoveaP2Z
         4FQMHdHr3Ymhxlv/ATmw6900ooRIr8/DmnRbE8S/KJOwdjMFAWI3LtYvJs3XJwqF0VMT
         3HPVwm+is4Gj42BJgqkQLHgqanFm8QHQ8RaAZruS7HkJWYcHXshtAHaqFN9uDHG5MTOJ
         FHig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=c7aAQ6Od;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+fDwoX1oyfJsjYC1ySLD2ZAWmlqT1otTa+I+zRP1Oqk=;
        b=XcKKsgZ54Dq7OSdDHdxB19yUkFU8OXryBeCiBKnWxjEtMcd8HcxR6zKkr20ZsbYKF2
         egj7GNCUx/NlFoZrjN+xUgF88NMyrjlNhk0jdjytmhyjNhHUWRWFOhup9Mwbtx4rYJxN
         VCAtchoNVbaCS1deL13G6FAi6eyNw32B42YHqbK69MnuR2dmD9uAtna2gWOR6SRLxmMv
         hLhPlL8Ld9NPE7vD4mUI0ew/YqOcFzMtivDlv2C2ThdjyPNfTOwYEinO58iuVhlSFrhy
         YNM9ommoimUl+GGBXCYEd/hlA3dRPR2jJ1KNNu12TCNYCqjtrcpywSsDJ08sbceQ4jHm
         7+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+fDwoX1oyfJsjYC1ySLD2ZAWmlqT1otTa+I+zRP1Oqk=;
        b=QTPhZIcD4jIpbVXmcxatS5lPpNPrHmdF3f8zdzbXYZ8wJC/2k9Z8EOxzqn3b0Hdp0q
         B4/jN6nHomNwf5nvwI9OW3lWCexAOFXGSp9mV1VuvzE8ozS6b3zxbxntN0YGZAsnJM8x
         Fxo/zV4wc2uib8ii6RvJZ3w6Zz1FfiWZtc+Y8YHEs76ZXOi/MD41ggT9m0oInsNqpml2
         qHkij9CnzLQ3hC6Hxt0r/TcODnaPZ9q7r2kScEpY5N+2UFOsGqvqAF+9xGc501tTEjMF
         A4/Xzg1ry0M8PVMDMWtC/glWkFKFt7xkxUnR9C5p4Olg2bW7+pZ2aw6BOG3d2TXfk18m
         FWfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cGp6OB7jZkI/bDI1SbrjzGXE1gB0fHnYRo0Azj8Pyc102F9yc
	3fm61p3yDNv2l+SvG1FAcj0=
X-Google-Smtp-Source: ABdhPJxN/aHB+1TSjLa5LCB0pmklNpIIW5cvCHMSrxFacNfkHkdVzSnhZiZ1fCZvgfhVoI7ie1ktUw==
X-Received: by 2002:a5d:4d09:: with SMTP id z9mr21410483wrt.5.1623146192975;
        Tue, 08 Jun 2021 02:56:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fe4c:: with SMTP id m12ls5265629wrs.0.gmail; Tue, 08 Jun
 2021 02:56:32 -0700 (PDT)
X-Received: by 2002:a5d:4752:: with SMTP id o18mr7697454wrs.323.1623146192169;
        Tue, 08 Jun 2021 02:56:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623146192; cv=none;
        d=google.com; s=arc-20160816;
        b=s9Z4F7NQNwy/xLkFW11PQK+VyIl/LrDeZF7+pfL4QYf+vpYGKe6OX+GIlsRa7X/d1a
         Dm4bcVxFjM57edYHn09+oV4M8gn2nrnu19VmTeApSeu5QQYunm/IZB5Dt5CaRglsSVF1
         eMCPHHR47EWBMPkxbzlZgqZjtmgfBjdERoAPkgV6fvbkR5zSArJ2swYQnAH58V/wqFdd
         Ws3QMEgOCs26+z9glIE9BJNK9evLFeIiiBZZ6bgpwjjBGexY7s7ipz5D5GbUXatvKiI6
         fnkIu0iTSAHj2rmQy86mkp+4CzU0obYHyjUiq+Zo3ahXviRlhwYYBc2VYKozzQf5Vjla
         5Bvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Gk1XdireRy/T2iUr4Y00HpsLt0ofHn0B8vK6rBOdSJk=;
        b=ZjoFMCJhwMVLPr0Lt/RIawIbYjsr06/2fSFO2orFMUQPsucTbe92LPnWL58skDJ8hp
         +kRa84ePL34+dVD1bVXSw1k0YVSEMN1K77ONhY7qXfLrYF4ZupblcWGQzFlEiwlfP2wR
         bxryr8kTeJnnQd/wmGSTajqLrAOVWpCXNKUEMfvBttsljcs1sIUoQHWTCF5hy/ON9kfg
         jXM9oOWOSklE53/QkKxtK5iyxqFpGhXEZc2Gwv97imAkG816+L1ZdQBz1sP4jhPfgzJB
         LA88z/tfeT8ugmGSalI98NKwzP8YH9bJwQSrnWHdwexKmZRLther+KUyQ6TJQ00zkHT2
         jU6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=c7aAQ6Od;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id t1si988106wrn.4.2021.06.08.02.56.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 02:56:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqYT9-004iSP-MC; Tue, 08 Jun 2021 09:56:30 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 427983001E3;
	Tue,  8 Jun 2021 11:56:29 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 2A21B2BF0CB75; Tue,  8 Jun 2021 11:56:29 +0200 (CEST)
Date: Tue, 8 Jun 2021 11:56:29 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com,
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
	lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>,
	mbenes@suse.com,
	=?utf-8?B?UmFkb3PFgmF3?= Biernacki <rad@semihalf.com>,
	upstream@semihalf.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
Message-ID: <YL8+zeC9xjpzA81j@hirez.programming.kicks-ass.net>
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com>
 <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
 <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
 <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
 <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=c7aAQ6Od;
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

On Mon, Jun 07, 2021 at 01:54:37PM -0700, Nick Desaulniers wrote:
> The only thing that's still different is that the `file` command still
> prints "no section header."
> 
> $ find . -name \*.lto.o | xargs file | rev | cut -d , -f 1 | rev |
> sort | uniq -c
>       1  no section header

That's not due to objtool, is it?

$ file amdgpu.lto.o.orig
amdgpu.lto.o.orig: ELF 64-bit LSB relocatable, x86-64, version 1 (SYSV), no section header

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL8%2BzeC9xjpzA81j%40hirez.programming.kicks-ass.net.
