Return-Path: <clang-built-linux+bncBCU73AEHRQBBBZUQ7H2AKGQE5OVFPDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5361B1B1A
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 03:12:07 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id l15sf4975560ilj.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 18:12:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587431526; cv=pass;
        d=google.com; s=arc-20160816;
        b=reAHIQHF15w9l+Oh+zseK+C5O4/AIoxoopx27cnAUvgXUHxJLn//mSburGhPB27EoA
         vAMNerZs913l+4YXmw2h7914Fzz8Oiw/Eb1E3fP6F9byZnDSCZr75bVG8TmHehRhI7M8
         Z9iBifTjaTtlRm6ev4DVc1yF3ukhTvmoE1rWTX94Qmxk1u6cuDdRt2bYDnwotGPgweHn
         sLIhKNQOn2VTyDxQad1/rAGooOZlNtKSPtc6McVEABbRXumj8NWH/NrGJ+YQNzaGHLyx
         RiRdKSv5EAHyrxCrZ0SM42ASw4ONqtNWVf2N5lUzFvuHIv/oTpcIFCJ9Vuk+17zHdsqR
         ie/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=s2GnZLj5V4hE6wO3AAB3Z07inZ9cuEgHjeZeu/lqTso=;
        b=tD9BTvEo+FbPVcXG+t1hXgRhTMqbOeQ8BWd4b4jaHFxj+aELNhCWWnUSLcryVAYbLL
         AySwHCNgmcp8zDI6R6i80Y4CS/OI2xee8z9PCstbqS2vJZMAqNF0zdcSku/axZFlVwOp
         qn5NfPNc+r1v/EZuaNb9/goG462FHeY5Er9Se65xq/vP3giTn781xkpYn5XW4sp67Qqb
         cZExLfz0S6mNS0Zl+B8KipZMLxDKE04qP+g6skkL0l0TnhaYVqeAlOH1QIZvjmclk71K
         dUX4XKljzIn18MbBrIoE3HZAZfE2iH0ptxxLK0NBUQA+ZO8I0tItD1Tiisls/+LtcMn8
         m9hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=m4zj=6f=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=M4Zj=6F=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s2GnZLj5V4hE6wO3AAB3Z07inZ9cuEgHjeZeu/lqTso=;
        b=WDEaMwTokqSDu3gnfhAuiIXv+2ueTF1LmBfLiOfKpIzkg0pGHZm9jIoF25PbdQUjyS
         hVY2CGzdoRYMSZ95ZhtVkdHdEh6BJi0rqBVxHazlZiO2Cf/mqeC44M5sEZvWda4bF2BB
         TYAG9yPDVzt8z7SvkWbWNDQjPCSdYA9O7fTHvfmDdDUYnbI1FADdCtGyBXwFTTWln2GS
         pGoDYUlQ7C5czPfLIWW1g+QU23sXKlwxE0cErJmUHbt5aZQDKsKk4AfnKC+tKCcxgAuH
         nhvdRlG6MgacZwTd/2OJx0bbXUEr+m3JN4/yWIYTZeryMMx5R7SDSFST0oh+Qk7JZRSa
         Olsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s2GnZLj5V4hE6wO3AAB3Z07inZ9cuEgHjeZeu/lqTso=;
        b=CqfZVeqXm2UxVaFVIsuKPTdGAuf3Nr48CxDVZGA8/ZA8N3dRETBoH1xwMYS5WcfG9+
         xRCeHf06PE/K0xynyNzltDPcDSHqBGLpnZXxd+2sdNR8LizA6f4YmWOa2yp7WWkUYUDy
         ux078u/1bC0Hlpl56l2M9U1LTW2GRC14B3P5fzjc/Sp6vIrbuycJw0hTuUO5sv7JpvDG
         rjHTBQOomn+0OQT+M8OidDCeFAyAIKWtqY7b4CT1oTLpwNA0NlxzarOBp7oBSBgD4RCT
         GJiLXw0/dvo7JOWRpOlokrzRaHtsMIvX5XlXVuZZYPc5EfjtMoH9Ne4grI5IbUpcMye9
         XeoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaBq8t0diiW9cOO6jX6iuCOfgGm40gj2lz3Jv9IVE0jf6vTwmnF
	rqqFEjnUSlLLmyxjOkmMDvk=
X-Google-Smtp-Source: APiQypLc3TNHC8OXqADe1wSEWAjJlbU2WzSTYM59ozK8IIW+Vj/x44SMW2oo9N9D1ziB6NuWujpI2Q==
X-Received: by 2002:a92:90c:: with SMTP id y12mr12184284ilg.49.1587431526201;
        Mon, 20 Apr 2020 18:12:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:4ec5:: with SMTP id r188ls2608409jaa.6.gmail; Mon, 20
 Apr 2020 18:12:05 -0700 (PDT)
X-Received: by 2002:a02:a806:: with SMTP id f6mr8783832jaj.22.1587431525872;
        Mon, 20 Apr 2020 18:12:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587431525; cv=none;
        d=google.com; s=arc-20160816;
        b=Ghn9KZk6c9O6Ud8q+URTWMZxt/2jA2Pd9hdfxcFIZSS2GRM3gNvj2I3M2m9NasJPuk
         04DpjIv33k1rYYM9qPsyPxLuPIR9avlIw67vadqTlIbR2rGTdR3qnGQUK7DH8u1m5xWZ
         7fFGDsavJC6pfca4wp4dFqm8seaCdYzYOEcBWXeru5aLD6LP2cXanD0s0tZfg6KgyVnl
         +wNPx29SCAH5rPGpq8kloWmmiULf3AGSz3Q3pEPRpcJSEaBcZlQvk+l1ojEvtz4sqjz0
         V2dAbQ1MGYJ0Wcn39AB3Q7bByClTGZcrPPGhGWqkG3AWFIKoz6P6Y4np4S2L8dCQmsOR
         EISw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=sHexzJzistiW5qMDlThD40vV2Ir+iSbKn4xlVjSg7TY=;
        b=HM0RhKaUSZx7AkIh2xm3tfSV8uB3Du6YQVK9l4DQ3AltwOdrhL6eYl4eFoc7kw/sRc
         ZkXl1wa3XQEceW3PNbJIcqS1ta+5GbZlAbaADtmC9JiKmSzq9iRKEeRBKBrhbd0xbjIq
         oKbLnbuBEdq+QrUOvKZArKXkshpl/S2iCYXva5E9vmeryGbYra/7AXVrnUDpoPjQabML
         lzoeUwQo5wUcU/tP+SKyldNIy6Rnh2ZGP9+XjOAE2hGJfe00mW+aM9HHCiYenh8qldHA
         t35RMdLhkK5N+XDmY2wvlak1tCxxE4pTL0M5y7EXgQvjrNrhEyKUfd6hDlAe6fVzvqDe
         M37A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=m4zj=6f=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=M4Zj=6F=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o6si113027ilo.4.2020.04.20.18.12.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Apr 2020 18:12:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=m4zj=6f=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0534E2078C;
	Tue, 21 Apr 2020 01:12:02 +0000 (UTC)
Date: Mon, 20 Apr 2020 21:12:01 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Will Deacon <will@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Catalin Marinas
 <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>, Ard
 Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland
 <mark.rutland@arm.com>, Masahiro Yamada <masahiroy@kernel.org>, Michal
 Marek <michal.lkml@markovi.net>, Ingo Molnar <mingo@redhat.com>, Peter
 Zijlstra <peterz@infradead.org>, Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>, Dave Martin
 <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, Laura Abbott
 <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, Masami Hiramatsu
 <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Jann
 Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack
 (SCS)
Message-ID: <20200420211201.7fea9561@oasis.local.home>
In-Reply-To: <20200420171727.GB24386@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
	<20200416161245.148813-1-samitolvanen@google.com>
	<20200416161245.148813-2-samitolvanen@google.com>
	<20200420171727.GB24386@willie-the-truck>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=m4zj=6f=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=M4Zj=6F=goodmis.org=rostedt@kernel.org"
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

On Mon, 20 Apr 2020 18:17:28 +0100
Will Deacon <will@kernel.org> wrote:

> > +ifdef CONFIG_SHADOW_CALL_STACK
> > +CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
> > +KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
> > +export CC_FLAGS_SCS
> > +endif  
> 
> CFLAGS_SCS would seem more natural to me, although I see ftrace does it this
> way.

The CC_FLAGS_FTRACE was added by Heiko Carstens, and the "CC_FLAGS_"
appears to be a common usage in s390 :-)

That said, I like the CC_FLAGS_ notation, because the Linux build
system uses CFLAGS_* as commands:

  CFLAGS_foo.o = x
  CFLAGS_REMOVE_foo.o = y

And "CC_FLAGS_" is only for new flags and easy to search for.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200420211201.7fea9561%40oasis.local.home.
