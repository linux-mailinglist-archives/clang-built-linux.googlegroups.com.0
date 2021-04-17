Return-Path: <clang-built-linux+bncBDAMN6NI5EERBDPL5KBQMGQELCTI6OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B5C362F1E
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 12:16:45 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id o4-20020a05651c0504b02900bef5ae012asf1320736ljp.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 03:16:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618654605; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZaZY6aLtCuyDG/VjFZdOZDDN47hb8Ve3Ugqgp6OutqmFahe7la7fN+0bh9/NEe1k+/
         +k1RB3/2jMHZyVlGS6auXiV5vjd9/p1OMz2DN6iiI9C5HlDH9Q/Qi6rrE8A54z0zII4F
         EUhU/f8DFbD/Wn3eFNumON6bxXq6EuDbdaWx7q34p00doaxU+zn/wqREaYnf1y/lIASF
         OgKk70uq62h0DvLrQvK65aKw3SKt8NeHJ8qvHLsN6YJ/t5VwGS659fWygZGXcgG+wVdZ
         1I+yFLnYHCIeCFdb3WsAagl8w58Pj3RDCM2nAjuZZfnOOcCG1uTnYmPx/xDdxuKP8rrW
         AVug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=/a/Vf31EAEYU5b5LcuTmR8R7A7Pq3FpnyfF8s5VK7Ps=;
        b=PgKds1S1KFkDUNo2zRK/bQAGeoUgP934pirT00haJTS5p7f2n/7Va2Ra9+O3jq3rv4
         x/nE9fOPR5RwUZXUrS4HejeIVfSCSTPHzW+5qete2GgccMVQfgFopYkcoCP2z92r9sjt
         hbOQaaZZffF/ye7Dutaawz1jXtpM7Ow2c3YIDRCQfWn81Vxo+786vm7lFzlMupDJCYqC
         yc08HAsyfA6y9mC88ab+tdRfdzssLfmJ8hmGttw2QZ67f+E6XW/7780z6ZWK8PLIpt5J
         TcRAoUU/jdf+1AUNnOCsITAT0X4YlgKOKOktPbSnayXyQccVvN4nOJdDajFBB0K00vnl
         dLvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Jk4XNHYp;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/a/Vf31EAEYU5b5LcuTmR8R7A7Pq3FpnyfF8s5VK7Ps=;
        b=sKOUDrR+IvflBQFxTzhT4db4cr7YltgJQP0q7F8tEl8z1843EYsA8AxndqOzPo0wU1
         mxZ1vFuTrs1rjl+d87xGb8/8N1JBXLsVdsTaQGMnNInCPtouZcU3bKZfJzFSys8lIHnD
         qSjwxwmZ560n+UC6NrZMCb2c2MVUwK3SF//uwskTI53GqEznXBcEeT3Tx+/xNyIyxPYJ
         WPYXmOq/WHJWiYqGV5Xzy0mly4G49yeGKWKEcQRyVeY2WiR1h5CfwCE5aJbQ8+CXI8vj
         8H2A267x8Y0bIXoH9l8DZpoDqXXVIXBno1Xm74TBrjMSboRvWu2iqv9oFKpJWHNGz8cW
         8e/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/a/Vf31EAEYU5b5LcuTmR8R7A7Pq3FpnyfF8s5VK7Ps=;
        b=CU6Pgu+AWI0PaCImLFm3nPn6hx+D0P+JciP0e10SmGtNZToyOEYCQDITKVR7sHhhce
         uC9tocL7c0IskycMIOVe/ljDXWfmcvxFf41blb+sXUcaI+ez2LTsd31J4C8+EdwOMyvZ
         OzCroPqgNgyPbWAer/EmVJgmRULlfRoFO+/RU/8VbToV3a9ZEEfu1aosikMrpG/VJkx1
         cqFmN0t2tGvyrbADUfzxt4R8CJi2uE0IPTl9daCa8aXUq7eQ1hGZiOhqMz/m3vnfo6TP
         mwjvybKbr9GJvIq3LcXI/qO6/zGzqMkHjleNhT0nzRXN5lEPBWRjrQOcUO38EON4Kds7
         jaRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xAc8Hl4FBoM0+pwmT0HZUoK/wi0czo5CZJbbiMyVf0kUE8SUh
	fGi89CxOHOA41Wb8O/v8JeE=
X-Google-Smtp-Source: ABdhPJyyWPMG+9k+/DIdWdz74yqpopuBC/dzROIePTeZnqKxZ/ccwrbLkRs/p5Dl6VAbVkob49wy3w==
X-Received: by 2002:a19:484b:: with SMTP id v72mr6239767lfa.429.1618654605550;
        Sat, 17 Apr 2021 03:16:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls3432605lff.3.gmail; Sat, 17
 Apr 2021 03:16:44 -0700 (PDT)
X-Received: by 2002:ac2:43a8:: with SMTP id t8mr5306422lfl.283.1618654604526;
        Sat, 17 Apr 2021 03:16:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618654604; cv=none;
        d=google.com; s=arc-20160816;
        b=ynaCDeeIq+0/GXEvt5ogAiXLO26Dqz5v2s1KA1dHC29sg3hSv0ybLAAL+l/k6n9Bi1
         MHpTNf7tG0I7eVBiuIv9Rf/xPOBPlZ3H7zKjQ1yTWWGYlHr19Zbn7AMg9o4MP2MUcJtD
         9CymLRHTnOX9F56Vj4UF9KhDp9CcNdBs7ZqIHrNKd8KDajff2J2mnCY5+nJ8MeYu9uAE
         IrTZ7tPVjaMMSXh9lFo441Z8dUU2H8ddZf8z1QqFFCXFrbC/2Fj1PItRJveqIUjnscCx
         9uCTvvR4GZbJitKHFgPT2NpPOHcHyOukb38W8xG+7H+RWCYopPkYOEX1z7EZME1Cg0i4
         5SaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=3NXWguBIdanTM1mMJm6zQ6PV0EHjgoeyGYbzR/j6ivk=;
        b=jObscrAZVPEH7rC8bGma5/Ko4W0Hu1FIYTdfIECH/PUwZlpgStZHX2+VNQmoWAT8Yz
         EVUcANVGnN2ikEJGHYBZfWqYcMzqRhUzTVYbGWdmN3xn0UiIfxoKd3aCkQZQLJBBBNan
         tkQ1OLtriuPLPCi2qlLvbySm//T4M60f8gszTh4rPbADD9S6aVaVIj0WDBU4Iychn8uz
         AZK8KBTY0+8i1mTUIVjDM42mZBxl0LJtY/KvGeKb+/AnQ24ndfIfmxPFUWQ9X4Gmfeix
         VEPXPnMx3FActD782cL2lP7C/U/7SDjGe6U0/LzS7EyNM6/KB0vDwaJKkQQKg6duv4PQ
         xWRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Jk4XNHYp;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id z3si300503lfu.12.2021.04.17.03.16.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 03:16:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Kees Cook <keescook@chromium.org>, Andy Lutomirski <luto@kernel.org>
Cc: Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
In-Reply-To: <87fszpu92e.ffs@nanos.tec.linutronix.de>
References: <20210416203844.3803177-1-samitolvanen@google.com> <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic> <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com> <20210416220251.GE22348@zn.tnic> <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com> <20210416221414.GF22348@zn.tnic> <CALCETrUo+tR+YmfoBPWV9z_7QhU74=7tmCBD_zsfa24ZxNvfxg@mail.gmail.com> <202104161529.D9F98DA994@keescook> <87fszpu92e.ffs@nanos.tec.linutronix.de>
Date: Sat, 17 Apr 2021 12:16:43 +0200
Message-ID: <875z0ltdv8.ffs@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=Jk4XNHYp;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On Sat, Apr 17 2021 at 01:02, Thomas Gleixner wrote:
> On Fri, Apr 16 2021 at 15:37, Kees Cook wrote:
>
>> On Fri, Apr 16, 2021 at 03:20:17PM -0700, Andy Lutomirski wrote:
>>> But obviously there is code that needs real function pointers.  How
>>> about making this a first-class feature, or at least hacking around it
>>> more cleanly.  For example, what does this do:
>>> 
>>> char entry_whatever[];
>>> wrmsrl(..., (unsigned long)entry_whatever);
>>
>> This is just casting. It'll still resolve to the jump table entry.
>>
>>> or, alternatively,
>>> 
>>> extern void func() __attribute__((nocfi));
>>
>> __nocfi says func() should not perform checking of correct jump table
>> membership for indirect calls.
>>
>> But we don't want a global marking for a function to be ignored by CFI;
>> we don't want functions to escape CFI -- we want specific _users_ to
>> either not check CFI for indirect calls (__nocfi) or we want specific
>> passed addresses to avoid going through the jump table
>> (function_nocfi()).
>
> And that's why you mark entire files to be exempt without any rationale
> why it makes sense.

The reason why you have to do that is because function_nocfi() is not
provided by the compiler.

So you need to hack around that with that macro which fails to work
e.g. for the idt data arrays.

Is there any fundamental reason why the compiler does not provide that
in a form which allows to use it everywhere?

It's not too much asked from a tool which provides new functionality to
provide it in a way which is usable.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/875z0ltdv8.ffs%40nanos.tec.linutronix.de.
