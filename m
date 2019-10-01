Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBZ7ZZ3WAKGQEFX2Z6YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7740EC4211
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 22:54:01 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id z4sf11107491pfn.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 13:54:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569963239; cv=pass;
        d=google.com; s=arc-20160816;
        b=liow6zPEXPdt2nZmpLpnYwtS1oNzti9ePKUVd2YzUXYL+edglEv8PxYsHOjFNELUOF
         qZ/ZiIGtQTRSl3FZXOOyI48crVxULBuCPJqEJwGkJ3PS0eJYUvwBF+a52GTJYWlgDRtK
         gnQ+g4C5PqbpNQat96dheDQgRGaVulnHXh8LT6JMvK8WbjMm7eAYEfu3q0Akd+KSZLhn
         iLPYLHLfWzc6fvtCcyZN61X0pRD3sHRNZ3ZqKF7tAncL/34DswENvZ+xu32Z6M5tBq/7
         IJfDZfiQvuEkzv3uwKjebh1dme0tUHJrTQSAddrzQYx4CBWLji4uGdLqkPy2Sth+4jDz
         hwug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=QgPFKVHSG2ylZa622uo2P33jmcvdbbnfxJZT+KwVHOg=;
        b=ZP0ru1JNJtwIBIiRr2SZp8g7NktuBLCFnGP0oTTzlI8psughxE1BnRdSXz0X+lM87X
         GvohrIG3VVwjX+iG9zCqHjAteUT0DhnHC/itvk3QAne3RZomo0kM9JXiwVPbo4RthPMP
         7NB4krdlfKJNEGUoKPSh/DfBxecp7k8N2ZEzeGNO/Pd2IIRTE7J8GJ09lQC1I/uaaLH+
         QgJyJ5v2V9Vf01ZTKB+RisZeD8S+eHrPnoWHPAUbc172Q87vce6FZQXnBi+/fblIG31/
         WMtsI1CEAkNmGOa5g6xCiXEoWbKiJ5nbD8pmYoTTGptHPd6z6d6F6wZRUxNm9hFGcqHf
         TzuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QgPFKVHSG2ylZa622uo2P33jmcvdbbnfxJZT+KwVHOg=;
        b=T504bCBGG8ne7a5YWwtjoabd5kCexVN/3fFhh73hvHDBqgJq91zcdfSU1P2J/86MR9
         3m22iqR1JZ2CqhJYh5KA0mTS/PG2+51jldM3xscEkS8Or1e3LWjQpIlyy4juBRG6E09b
         56tSlCQcSG2JM402T6rJnjnY9wO/qNmGrzMbJw25ldz25FgpK50/uEplk+Z+y4AjLYo0
         AwmhIQf9RL7tIVzYANtjD7o0A/ClYDP+eIO+T3OBi9KuBJOEMpsL2sD5Ci5oPRpLw0MN
         U686Ck7ixwB764NpkzH+w9NoBKdnnqeNn+eaipKznRnIq1qk4Rv8xPuciBDu9X5wshIK
         QWLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QgPFKVHSG2ylZa622uo2P33jmcvdbbnfxJZT+KwVHOg=;
        b=iAOX9I/8/lhpbkCn5VfC8R7JJFU98SB0EQDeSTxPaDg7nB7zTYqAe5pvq33fpK9p0Q
         Gc5cFp9BYUQaZhgVYJC+jfBI5aUOYr39RZcyB5eKXL8aKEzvwmD9ru1+3UohMTtWuOzk
         HEXsIeQOT97x7QFtpkSgC3OaQBJRRm5HTknkEqQDOtOyAzHmwp+zAuPEo+L+WlyVrm9a
         sLWNe0Z/mL7GiYyHuumIrv56al9J2c0r/8Jw86LgHxyuFPE0NAR32skoST6gCLTerc15
         CQURP16NnVIPm/PUX5U2xaWR26nkfus9Wy3VVdXHTQyI490AOuwKSyRRIebih5aORhK4
         d0eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXW12c2CkYJ3sC6eOepQZ7AhLsuEcEqbWXDvhvyP+1igzzIiBqp
	yYzLuN+AucWhyI4BGCLJlfY=
X-Google-Smtp-Source: APXvYqw9MgEB9QTO6bCp94EdWNddbVnHclnYHSniMza9TrpszEkIt27l9FWljYfFYB87n5kOvcl2MA==
X-Received: by 2002:a17:902:8bc8:: with SMTP id r8mr27481434plo.338.1569963239514;
        Tue, 01 Oct 2019 13:53:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fa7:: with SMTP id 36ls6544pjz.5.canary-gmail; Tue,
 01 Oct 2019 13:53:59 -0700 (PDT)
X-Received: by 2002:a17:90a:b289:: with SMTP id c9mr127881pjr.1.1569963239109;
        Tue, 01 Oct 2019 13:53:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569963239; cv=none;
        d=google.com; s=arc-20160816;
        b=S/CWmKwWU1BCk6HuTxsfMmU+0XCQ29eenaQiZ+Hx1Bwk2djZH24zzxHXfvTfYdcW5r
         BCCvPiR1GyPdt8dGp+d2m7dlPWrOgx3cni1wv5aLy2OgeXqBeSgk1gGvNGNCvBpGOrkm
         zwhd3jsOIoaBanWa9w/lstFaQxfLeFaa0nrinMRbcYx5wStziun6IbioNVqqex/EBIp1
         cuDRK2sN0pFtl0UT858Ue2h7jXWna+gHYKXw/8hKgbjqUj8XXgx7sHWSadwauSWlkF6Q
         1XJVGa/hFFYhJWwzDgip4CqHBk4hUahBgsO8ikYqAOvaLmFdl9W8Vf3W3uS+P14Vc02b
         BtbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=v7MUChZMPK1zb+gMXHU9XAGkO5pYjaFnqTcVSPFdTOk=;
        b=S/HyUTBX1n72UurVU6+7ZCVoxfhU4SgtO2+L7+HX/oSSToO+cX3OXEQd3OZZwHFIRd
         Nr95frYzmjEinZ8Svn/uu4T7jFhi4iAT52YK3CM2qL6hys8quRTW5b0BSzWgHw0/GEJK
         gxCRbXaP26ZwIbIi0qJE1/GP/jubqN3j2lbhguUbrPPjnxHb/0OH/wyi2DTfIQLwcu/D
         R9/gbX9OeVjBR/LN8IvaBDwIi1HXinEYXLgTW5YiFnqlbFrYOlMoLrVw8uRhys+XLslJ
         vd7qzu6/tCqRDfiuDYK9tTNg/vXZnyZ6GUd8fIan2hNnuEzQg5UA/nPmMxpJTqe6AJ7S
         UBsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com. [209.85.222.194])
        by gmr-mx.google.com with ESMTPS id t22si97453pjy.1.2019.10.01.13.53.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 13:53:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) client-ip=209.85.222.194;
Received: by mail-qk1-f194.google.com with SMTP id p10so12697204qkg.8
        for <clang-built-linux@googlegroups.com>; Tue, 01 Oct 2019 13:53:59 -0700 (PDT)
X-Received: by 2002:a37:a858:: with SMTP id r85mr72574qke.394.1569963237942;
 Tue, 01 Oct 2019 13:53:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190930112636.vx2qxo4hdysvxibl@willie-the-truck>
 <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
In-Reply-To: <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 1 Oct 2019 22:53:41 +0200
Message-ID: <CAK8P3a0eKOyJRjp1P8HWfSLWO=d6Y3befy3kQBgTPVX+g_2q4A@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Tue, Oct 1, 2019 at 10:21 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On Tue, Oct 1, 2019 at 11:14 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Tue, Oct 01, 2019 at 11:00:11AM -0700, Nick Desaulniers wrote:
> > > On Tue, Oct 1, 2019 at 10:55 AM Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > In any case, I violently disagree with the idea that stuff we have
> > in header files should be permitted not to be inlined because we
> > have soo much that is marked inline.
>
> So there's a very important subtly here.  There's:
> 1. code that adds `inline` cause "oh maybe it would be nice to inline
> this, but if it isn't no big deal"
> 2. code that if not inlined is somehow not correct.
> 3. avoid ODR violations via `static inline`
>
> I'll posit that "we have soo much that is marked inline [is
> predominantly case 1 or 3, not case 2]."  Case 2 is a code smell, and
> requires extra scrutiny.

1. is clearly the most common case, but there is also

4. Some compiler version (possibly long gone, possibly still current)
makes bad inlining decisions that result in horrible but functionally
correct object code for a particular function, and forcing a function to
be inlined results in what we had expected the compiler to do already.

The problem with 2. is that they are largely not documented, and often
unintentional. This also affects functions that are simply 'static'
rather than 'static inline' but are broken when not being inlined.
E.g. we've had a number of kernel bugs with 'static __init' functions
that gcc always inlined into a non-__init caller, but that produced an
invalid call into a discarded function when clang decided to leave
them out of line.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0eKOyJRjp1P8HWfSLWO%3Dd6Y3befy3kQBgTPVX%2Bg_2q4A%40mail.gmail.com.
