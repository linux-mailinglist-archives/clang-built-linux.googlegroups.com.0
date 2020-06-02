Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPO73L3AKGQEQJIT2YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 474571EC349
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 21:59:58 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id q123sf633160vsq.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 12:59:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591127997; cv=pass;
        d=google.com; s=arc-20160816;
        b=fYmYiRlwMExvJr5/Ss41UJymIJ6GQ3waYQFanS9Jdc9KwFo7wZ7EivvpM0f/QHAvDl
         0Kru91+GGJ4mMKOkHZ7ZTawbYpZZSaBSrisv558+cGT1PJlziJqKri/IQCtkMMrAm1DA
         fd61ujhKXtnQ5DIxUvCYqws0i+5kTiso+i0N0GyBfXZ5lZ8hdxK3KSeBBrFI0KBQJFz4
         ksfToyULo+LtEHImeXuDRziH1AGF/RwyiCP3BrRfT0/WHVQcotEILxmANVY9CBx6dc/5
         Kf+RkL/2vy5+cNlWOA2P4X1DnZKqlfMN12k2sfIgBeIvMv3ouzqoIUlUJArQHCTeHSvi
         nAoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=s+QhW5ZJAjxGVUfzdvPEsUxi2hcjlAxUBWlEWl1VLv8=;
        b=Q7O2h46GgnyK/LkQySDyeASNc/q7ktY5aJegqsNfb+0wjiVINtxVV4da5ruIxBxuTY
         t/vxnDztym7I+QJNAMRRsmu8BLX+tLnpMdYn/aZjqOgEYzVs64b0hOvqlselZN8N1UZQ
         ynNZpsLw/8SMdLPrBf57F8piqqSDpAYdq3BV5Nc1JI7ywDyRm45Mi116E4tMkfRKbcNP
         YiXewpphS/nlyEwoCcC3VK8DKJH8K+h5PEHag58HG7l9JuHRB3ezMfIWTeKv+qsgYXg2
         ewcqc9powMxnyHAMP6OgWDbpcmxHwujIGO2j0Iq594TymQMoCNZ+XLpzxqUFZGe+GmZx
         GS4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dM8oqfer;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s+QhW5ZJAjxGVUfzdvPEsUxi2hcjlAxUBWlEWl1VLv8=;
        b=YM7nTLUSgYvfSPLDxqOyw7nSHbq4mtBEOOh3Gme79SwkQuwVCEITpr5RCk9IaCgmzh
         m9FUUquB5g+I/ASnN+QJ59hrbnyeFTiiyh6XTJX9d8rqzkEG+crBHaASPZWd4m6xh99a
         OleVkPz6eHf/bDYNDE1uDGY38vzwspCLev12Q/7NuRF1F/aK2ptusProinskTixxUmbb
         nxvS1K+NVdOpUkWYEVYg4NeFdvtKKxJdigtiGedmxksOxqIl72OLSt6ZRKuMgwQ9q8R8
         6qxoohzjPkv8pkaZxlKkBfWaF+VkHhbBufScWD2gfHq2Gy5u9tZR75fBNSZOzdQpvzdy
         7/MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s+QhW5ZJAjxGVUfzdvPEsUxi2hcjlAxUBWlEWl1VLv8=;
        b=Gqp+9jrMVnBFCvVkID+5c5RIcYrg1O0ONRjO02l1K6spWpBTx3zSLrcNnUjpOwbZza
         VR9gZoQIlwNLcbl8h2kN11Jppon7s+aEtXvpkl+wi9lW9mjJ7PWIAJZN3YY992j0bdOC
         pioAlXodoGlvCgIBgbgNLSTIHQupN5NsPemz9yb479Z59JgsddQm9vQbRtGuWx2BSawW
         lTybtsNY2Py2lsctkZj/DtCulQ9wygmWaFkwIzpODlWzb6FNYIrtHYYYgsNRtbxsGg4P
         pclh+Qs3SjmRozITlnowUgEen4V4qQwSZRevkC9ty7JKQkXdckrp8H8mjpRi5fDFLcH/
         JmgA==
X-Gm-Message-State: AOAM532vlKksgKFWYMTwO81amgCA5KJQbdDNQgRatZdhCYQNtTMFtLbS
	bhp/F7DKus/SgMfp3vwRKKc=
X-Google-Smtp-Source: ABdhPJxo/2pZpyblPEGSVm66MHGDbgRcOWsbKUuD5LQ9AVz72H1n3Jo1OWcrOBc29IfaM/46NmdMoA==
X-Received: by 2002:a67:fb4d:: with SMTP id e13mr4626458vsr.15.1591127997311;
        Tue, 02 Jun 2020 12:59:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:138d:: with SMTP id m13ls1279074uae.9.gmail; Tue, 02 Jun
 2020 12:59:56 -0700 (PDT)
X-Received: by 2002:ab0:5909:: with SMTP id n9mr19872704uad.12.1591127996887;
        Tue, 02 Jun 2020 12:59:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591127996; cv=none;
        d=google.com; s=arc-20160816;
        b=OvdWuxY0HmAs1QpSe/VT9A4xDZDcP4Kc+g9r5zNIpGLwQAMJIptTEecoQJNUcn/8wh
         TcD652IY5hVqMnT4NtSQson3tAjIYVC5M1o1h1apDUqO4VnOMX0kGzLp63Vr15b1P5Kj
         QRDqyLvViH0i8dJBwYQfhPoUUhro/W8Dm/siEmitec07yKJpDS96Cytb8HXse6RoDwo+
         O/DQJXYuc1NUBCgNRiVgpPYQy/7FsLSwSu8PSwjiefaQm3TQRfub6OgLz5BI815b8eRf
         J9qgEsHFbR1eq5NzHl6Qak30EDHwXnE3ZfztB507l6cKJ0TW9WqopoMTuGWTzUPqvf2S
         S0bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pDJvPNaeJdVNz7jP499BIJ/LDFB76CjtukHr7y52odE=;
        b=gYb9DDoW/U4g9ZvOclOYyttswUSCWajc5mCy3BIOrZXG+ibvn1YlHbhufvFSabUDj7
         fOApXqlZOpBlM0nq65MwtTOsUgoFpCRt6WJVHTztcDWUN32KE/3RiZri5g7chDUQUzZ+
         D6AtXLSER4NLFgygEYlP+NTRHm0yquolVYYdfHNg43Gk+XqfsaCQtuVHzpcSi3LNsukb
         9sYMAxVLyxAUasBDZNVyIEaMbFxUGFcUmBEGsXaEiyndi69zPYcDvLNCzjvVS1cHcert
         C7QQsTfQ7eZegX3KGx+qP5beTSvllw/HZPmkZZvAvOndno26pZ2n6X3uLapUQ/0TvlUc
         1A6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dM8oqfer;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a126si196921vsd.2.2020.06.02.12.59.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 12:59:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id b201so1625264pfb.0
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 12:59:56 -0700 (PDT)
X-Received: by 2002:a17:90a:4e8c:: with SMTP id o12mr856663pjh.25.1591127996304;
 Tue, 02 Jun 2020 12:59:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200602184409.22142-1-elver@google.com> <CAKwvOd=5_pgx2+yQt=V_6h7YKiCnVp_L4nsRhz=EzawU1Kf1zg@mail.gmail.com>
 <20200602191936.GE2604@hirez.programming.kicks-ass.net> <CANpmjNP3kAZt3kXuABVqJLAJAW0u9-=kzr-QKDLmO6V_S7qXvQ@mail.gmail.com>
 <20200602193853.GF2604@hirez.programming.kicks-ass.net>
In-Reply-To: <20200602193853.GF2604@hirez.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Jun 2020 12:59:44 -0700
Message-ID: <CAKwvOd=TZsioqoUU+xZSUMooqux6Meu54PBCxP2mbtRb3Yp5pg@mail.gmail.com>
Subject: Re: [PATCH -tip 1/2] Kconfig: Bump required compiler version of KASAN
 and UBSAN
To: Peter Zijlstra <peterz@infradead.org>
Cc: Marco Elver <elver@google.com>, Will Deacon <will@kernel.org>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dM8oqfer;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Jun 2, 2020 at 12:38 PM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Tue, Jun 02, 2020 at 09:25:47PM +0200, Marco Elver wrote:
> > On Tue, 2 Jun 2020 at 21:19, Peter Zijlstra <peterz@infradead.org> wrote:
>
> > > Currently x86 only, but I know other arch maintainers are planning to
> > > have a hard look at their code based on our findings.
> >
> > I've already spotted a bunch of 'noinstr' outside arch/x86 e.g. in
> > kernel/{locking,rcu}, and a bunch of these functions use atomic_*, all
> > of which are __always_inline. The noinstr uses outside arch/x86 would
> > break builds on all architecture with GCC <= 7 when using sanitizers.
> > At least that's what led me to conclude we need this for all
> > architectures.
>
> True; but !x86 could, probably, get away with not fully respecting
> noinstr at this time. But that'd make a mess of things again, so my
> preference is as you did, unilaterally raise the min version for *SAN.

Fair, thought I'd ask.  (I prefer people use newer
hopefully-less-buggier-but-maybe-not-really-suprise-they're-actually-worse
tools anyways)

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DTZsioqoUU%2BxZSUMooqux6Meu54PBCxP2mbtRb3Yp5pg%40mail.gmail.com.
