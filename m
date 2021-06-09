Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBPVUQODAMGQEOQ2DPBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7DD3A18BF
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 17:11:58 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id u20-20020a0560001614b02901115c8f2d89sf10825311wrb.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 08:11:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623251518; cv=pass;
        d=google.com; s=arc-20160816;
        b=H2yWwGu1BFxTQkwv/rF/3dqpMNQ1zorqy1QSbaNi0nnbPH8zfmf4wwykx6MCahf7EG
         N8jEx0HmaKqYMxHtf9jh6BaDKsgXSCs4baGIUEx3D/6BiIv9rOUs3iytrqgldvZlAXIw
         JRv/0t0dpwqv5/pI99rPfxLyC0y3TdTOgHbX+pr78oCK+hXJFrmUwjeYCuamJMgcNf22
         KaeL+IcBk/3onEfZgYfeOW0m4F03gRkaQndTzAPsLp9HwkBrQDF5jZKfPBMqeGmQ0Zl6
         fcsfMgdMDBjjqxGmTXAa1ctQV/nLFptiqnhWlvrRSOq5NhsOGTEx50EnUe2lTA3mYHGK
         ZluA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=me0IXcHdIZqbHDsQBSrYeE4l3J76jFLmw4H/dJtlD5M=;
        b=wcY92MnN+SAkX/4Kq5s4MTm04H8bsKjWB8kiXob82+GDVwRoiQATr70YYhXWn7PGxd
         DwPN877F601PgpSGOQo+RZEMAooSzyDYsvFB9Yrb83t30z043SpnZqGy0DD3jbtMq48u
         P/drJ7bDglxsE6WeYGumRpTwd98guaqch0lucd4BXed1XupWtIPo8T5JVwoEt66gLOXw
         a5Jato7UkSJILYxCs1UuIIifjUe/jjOI8QAIzqcx0se8GPNBjG7akDjHL5kQ6nB2BFDf
         8Sk2qoFzWM/znOioM3G0phvF8pr7EnIpHTFOjPlIuZY5uBVtTJGKfP+q9EiT948Dr8n+
         aRWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=h4emPA3L;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=me0IXcHdIZqbHDsQBSrYeE4l3J76jFLmw4H/dJtlD5M=;
        b=ioeTB+zX7rj/4QflHI7KzXXWOLoc+kqkDYmv31bvY3mDKyZbMvOC/NJeviADCyEtKq
         2NM/6c/hVLTe2XMevrMem20+cGJ7d4fGRJr1z3At6m2jszZRaKlL59y1LgT27J6T6QBs
         uBHmkuvoLPuiqEXAlGmfrHz1E7mOtoAxajgGVn4DKzE0cSsphgjdLRK90zR2YyrDbJR4
         VjBQ3P1mToIXt67T3m9c7D2ndFKAodxpOZki+j0r6UYBA65RcAvgR/CWuX7AD+6INR6i
         enLGPN9X8mKjWi/85aFfceO7N/wKeOhXf0oYt8xfA1nrurPwqLiM8sRsBqAUF17l1JZ/
         cp6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=me0IXcHdIZqbHDsQBSrYeE4l3J76jFLmw4H/dJtlD5M=;
        b=D77m1f75+6oCLMmG/vf2BfZUIJ5zEuA+JCWxx2eaGa6KS8i0S62NjScTsgQ4o8BuWH
         9hZcWNdj2/jn3mbjpLkATsT/+jLt9M5jVaILIO/c5wzxV4yNWSZldYvYfwIj8kCUk8tB
         oCUwCp1Wx7y2ZOvQ+MHww2kjFxzLssVbZtCBbyE8dDgfyY1yj/tVtLNakapNbf+YTyTB
         MInp7n35xKhJ/91hs35ZJ3UUiaPtnhM5NRXjrHGIjsFyC2ILxvQY2LIybdt5GjM9Y70e
         ul3utnOS39PBD9xQiOfehVKHJq6RUkJLmWXSyXowqyWOUDENQ9OMU8lUogDUgjo80TiC
         vyxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XRJ3s4Ah9sNMTtQZf9g1tcfGqlcmAI8jC/9fpY5lr52A3roe8
	xhhNCUi2Bb571TXHWDHqhAI=
X-Google-Smtp-Source: ABdhPJxdUUNGomp/txBAhEZnuZymwUxWD23xSNJQoMiLpScgBlqM36JlviSpeb7vNwKpNN+kZA5hsA==
X-Received: by 2002:adf:d23a:: with SMTP id k26mr365626wrh.68.1623251518242;
        Wed, 09 Jun 2021 08:11:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls339996wrr.3.gmail; Wed, 09 Jun
 2021 08:11:57 -0700 (PDT)
X-Received: by 2002:adf:d1c3:: with SMTP id b3mr354256wrd.110.1623251517380;
        Wed, 09 Jun 2021 08:11:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623251517; cv=none;
        d=google.com; s=arc-20160816;
        b=pigV7P4ihEr+Fa1Jzk5nj5v25eXlay26EB1IHC+sZ7ZhrDZiznXiyyXyb0VoTXk3lH
         eIvRGlhu2pIS7/v+Y2/YtohR/orVWME55vnRDThrTei5KZ+r73CZT3ZOcomsa3xZQaKd
         h74HlK2nJtXIy0/NsHc8TqFZJeBMRZV/PeF5HanSLwsB8UPv3Pnq8DWmVrCCrxekLFm0
         xCjwyCtHwctQsV8nIzbwqkoJdk4u0p79D9NPtbHEro2AbJH3Gn3IykCWfi7qWPzLlnwy
         B+3h6jRe7Vvj239FzxpB1NZmUwUFcPuOsyc2Yu4fNuZAB26CV3Xc0lgQITp+5JPH66WA
         nqXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=o/kyvcpjlRGPMvTdqJ9HOqZDedGFgnLgJbX4oTJFC6k=;
        b=FiJA11cEadHFRIAVdwEr6U/2elKbMIsyMkP3S1uCEfAIXjWMRw5zQubwIbaScQw/Bj
         tlXvMGdKO4nkabS34I7o982oAlLVhDOVwyHQfq7GJDQB9C9qUXNKODHzMvlUkbg7B/XT
         nrP/TCdgi7wXNx1lS2YcEsg440+QTmb9kHejIAFLkGRywpN0L2ZvdGFPknVz3+WDY8Hq
         zJAwcixfx1Jj3rwaan8gJjl7w2fBnpTmA/i8p6V89kTQq2EaG9BS9hWiGEoh1kN74psJ
         12YYB3kNOpVcZa+yQAlIb29/rIBFePzBjbGyDALzFifxv6khRDU1E5kMtp1YBeuPDZjy
         5+Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=h4emPA3L;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id j15si2216wrb.3.2021.06.09.08.11.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jun 2021 08:11:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lqzrb-000d8l-8i; Wed, 09 Jun 2021 15:11:39 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id 2E4CA9867D0; Wed,  9 Jun 2021 17:11:26 +0200 (CEST)
Date: Wed, 9 Jun 2021 17:11:26 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Lukasz Majczak <lma@semihalf.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
	=?utf-8?Q?=C5=81ukasz?= Bartosik <lb@semihalf.com>,
	LKML <linux-kernel@vger.kernel.org>, mbenes@suse.com,
	=?utf-8?B?UmFkb3PFgmF3?= Biernacki <rad@semihalf.com>,
	upstream@semihalf.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
Message-ID: <20210609151126.GD68237@worktop.programming.kicks-ass.net>
References: <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
 <e351ac97-4038-61b5-b373-63698a787fc1@kernel.org>
 <YL+nb235rIfEdye0@hirez.programming.kicks-ass.net>
 <de1a21c0-f20a-cde5-016e-4b8ca92eafa9@kernel.org>
 <YL+0MO/1Ra1tnzhT@hirez.programming.kicks-ass.net>
 <5dd58dce-c3a7-39e5-8959-b858de95b72c@kernel.org>
 <CAFJ_xbp5YzYNQWEJLDySyC_bWUsirq=P03k8HHW=B4sH0V_uUg@mail.gmail.com>
 <YMBrqDI0Oxj9+Cr/@hirez.programming.kicks-ass.net>
 <CAFJ_xbodWTQQaJ-3yJ4ZQOiTFFXo6M+cn_F0p157o=80BwrQAw@mail.gmail.com>
 <20210609150804.GF68208@worktop.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210609150804.GF68208@worktop.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=h4emPA3L;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jun 09, 2021 at 05:08:05PM +0200, Peter Zijlstra wrote:
> I wonder if the compiler will also generate conditional tail calls, and
> what that does with static_call... now I have to check all that.

OK.. static call patching infra will give us a nice WARN before it dies.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210609151126.GD68237%40worktop.programming.kicks-ass.net.
