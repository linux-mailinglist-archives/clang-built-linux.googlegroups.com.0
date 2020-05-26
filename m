Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBWESWT3AKGQEZIV3N3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 151281E21B7
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 14:19:37 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id y7sf9727863wrd.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 05:19:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590495576; cv=pass;
        d=google.com; s=arc-20160816;
        b=R37OdzcFT21zZBUKVVERTq9YxlUANvntwdDFJGoHvPhaT7XTYlA+hVZkCp1M8ZX9Gh
         j0zPiqsxBmjBLlKNRvH043RtS5MzAfq+hvilmSXjyF/T8IYy4oiMbeqWl0Nj7lnXU1mJ
         yXgmwXEHtca9LoJLYzU0u/GaneokzhJvFruF8dgndlTa3Lz25BqQp6gp1YWNnl5sequd
         zYZ9QRbdtp8QKV0N8qgc+H7V2v0qRXA1TpxRHvksRLskodxpHiV/aMndgya3Oc+fUpiz
         bIQrtV+6iqtTV0VhLtvJRsi2YgBki1LXqmFHbx6KFYEjWYmUvEneiOsNrooZa4CyIXZS
         5R4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=B7yp1X/F2fIhlu7Aohq6z3MbfWYOpjEBlmJiLB9r8iY=;
        b=l9TMEuGJicfNAIjuKelizfeKjwP0XhnD2azr1gA4ZKVznsXhyexPSBpMTS1Uk0mXc+
         UT+MBEisNvc4AOYScRT9RYyN7aLUaWKetOXAEiwtZS2iM4l1KkFD1IwjFiB/ss+BfJI5
         3m+5KNz2Uo/XkA5dIq7Muj6jwtPmatVN7kibqi/C5alKrlfiyhkD+DmrcaetUx8yNv1i
         GqWimgOvmZZ9qogwlisEYADpEg9XkouxuxoH2zRnh9OflG2gAlodWg+g73K/JPZtq3Bv
         A3+NEKvBxQpkwmYgE9pkiG64KoWXvoaF1pC117Q9HEuhqcPaJmWEkXuyb1iRQwjiHG8O
         1Akg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B7yp1X/F2fIhlu7Aohq6z3MbfWYOpjEBlmJiLB9r8iY=;
        b=YrcbSbLespJSS2b2OP+IB3PwZm4Et25xNe0SnETB/MzozSdMpsDgZFBSrG0U13W+g2
         X/WIqBz3AMg8tlOlbyfEwXw23Gx6ezaefuT0VEtdtaYLwoDowNNtFGeBOhEbKh5iqA9b
         7LjARrFDUrhe/Q73KyyqYpbwofi+VWXuE0tsr3nG8wRACctBBWvr6ZpEineYXV5rP9nW
         FHgQVKvHbXlKZU7TGtW7l+J1Qjh+pbDh6sBlSS9VtOjeQAGvX5rQt7waaIJDTuCSB717
         hiQ7wZn6eCw6LTgY3jf1Ank7/Z9kS/Fhno65K6bjflbOfdnk70154wHopOScMSRsbMNJ
         gyQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B7yp1X/F2fIhlu7Aohq6z3MbfWYOpjEBlmJiLB9r8iY=;
        b=HIRNzhnQygIVQKo+RMOMu7CdcI6DpvLqelIAmlBJfcqxAknq06NnnwyEGqzDDfwgRj
         vD4qZgkKY9luQVjqGEN3AmzemEi6L7aEy7ev56RJrALiEbFmxOo8oUYcCvq/mOIxqO5E
         sR/ZzwZYfRTN2huU5subeDE4TlSUstjQguHlKnNaGZ+1sKkRCfVPRteBSdFWl7f6QXcT
         giUptMzEHl6CCS30d+whcMuJ3oeiZGn3i0u6x8yyM12RSJXhyT0uSgVdLgB+YLLNcsVB
         e5fONo2WpwG8VYGm118ZMZ8H5f1N80zx7+/A0xSuuMMZ3IYhHd7lz/8V2pS2CQIsWgkf
         nF/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vzMjeeG1Po/pC32+49+iJ/26x10800QQ2qSLgKNtU90zLIeZy
	cOi0e8Db9OaXSmOseXL7Qjg=
X-Google-Smtp-Source: ABdhPJyIvN95kawcPKQjncqKdw+KTXqy2AQUyfswABHuXYTyhRysrcuqlcE71VHs2faq9IqJc9fxgA==
X-Received: by 2002:a7b:c385:: with SMTP id s5mr1224206wmj.121.1590495576848;
        Tue, 26 May 2020 05:19:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fac9:: with SMTP id a9ls13872157wrs.2.gmail; Tue, 26 May
 2020 05:19:36 -0700 (PDT)
X-Received: by 2002:a5d:6504:: with SMTP id x4mr21748658wru.340.1590495576388;
        Tue, 26 May 2020 05:19:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590495576; cv=none;
        d=google.com; s=arc-20160816;
        b=dKOQ5od7vqXeGrfQNtf5wQoKfTIQ2QVdRcWje6UGewe7YVr8YZ+rlkNF32K+aPfWCM
         7utZP5zB6Mwp7MgsiUW1/PofCLFaWvVGaESUEBJwDMjWaJaZmnBmTd+fdo3e29XLfdLM
         +aSUmm72ukM7z4vG6cmRMZm1+wn75rAk4ofz2T/OTA0MR36bS5cjjp1jzLBjLvcZMq8Z
         VtP3cUOoUdJMx8LecuJX60I9pMW3/5MMLS7LJqhMhK3z5+c9UvtNqY/uNrqngKesR9qY
         JRPc5u59nm0skJvrc503ukt19HbH2AnanovxColymNhfokavxiLsmxImc7fVHm7kH1A7
         pbog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=4CKhBtuNMDgyW4jX0W6TS+npQ1MRH07JFIe9TY9Pcbc=;
        b=QlP1T/Pgtn8FofwWQMrkMN5XRfA/3bkOFeozeWTVJ0Bqwa39rPXn/2tY8LkoM3GLgc
         B1Iciy4PFSwUYcG9yHXPfUwUgA4PDMMxVZFZzFhK+LSmNri0Rok5GFrqFvxSrHIcnfqy
         xVXtxj6lmGsErwJRqtZYSHzxIDqdR3F1MR++El05TrQ5nz7uLM1Zp0uEhCOdEA+nrgrh
         bkIeZ6uc/v55WIYt7nx3z9Fm8ebJlv92Ln+nc6kP6SGmrbEg8z7nhC/8+w8bnq22VFKP
         kZ0wq7ujCaDteN0gZGoYx8zENJLrF6eJEONFgwGVJzmhiX4BoXMmPq1dDhaHKAZzqI61
         NaDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id r204si450865wma.1.2020.05.26.05.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 05:19:36 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from mail-qt1-f177.google.com ([209.85.160.177]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MNKuI-1jOmp33cmw-00On5f; Tue, 26 May 2020 14:19:36 +0200
Received: by mail-qt1-f177.google.com with SMTP id y1so5190025qtv.12;
        Tue, 26 May 2020 05:19:35 -0700 (PDT)
X-Received: by 2002:ac8:1844:: with SMTP id n4mr902345qtk.142.1590495574644;
 Tue, 26 May 2020 05:19:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200521142047.169334-1-elver@google.com> <20200521142047.169334-10-elver@google.com>
 <CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA@mail.gmail.com>
 <CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com> <20200526120245.GB27166@willie-the-truck>
In-Reply-To: <20200526120245.GB27166@willie-the-truck>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 26 May 2020 14:19:18 +0200
X-Gmail-Original-Message-ID: <CAK8P3a29BNwvdN1YNzoN966BF4z1QiSxdRXTP+BzhM9H07LoYQ@mail.gmail.com>
Message-ID: <CAK8P3a29BNwvdN1YNzoN966BF4z1QiSxdRXTP+BzhM9H07LoYQ@mail.gmail.com>
Subject: Re: [PATCH -tip v3 09/11] data_race: Avoid nested statement expression
To: Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:e9oCrvdJ2FRY+F05It+ZEmrRaIMKDvOrmcdCcYMdHyuXvfpssiF
 MYUAJe/Qfaod4w7mhJ0CzRDUXAWi9g8tWDn6LC+XQ7+A3nZ6W3gMdarHhSYANdsgPnbdXp7
 ra3roYuXypZI9eHeyEIuyZAg4fdTlZZ6VgP7qxWgRNa9Ff9VxC5TRTpRB4ChAw2OMOIocoR
 OtiOpTwCRkePT25/Z2hSw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Kl0AnJCU6I0=:7EflLnae+Hj1up/xzPa4uX
 0JLsZNPl2KPou/jPtylnhOssRDaXqrf3zq04q4D5wTs5qs7ZMw/xOemWujThCBw5YOL1AzuhH
 VNni2p6yxp+3yaC2Xo1DVpsbYCdAUT6uNu++bCzPJ62F6EmFgNr5cAhzrHUGG0LeNvWmGiTvm
 lvSa6sFYJmNGMOyHZVT6mu9D9wjMN3Xq4I5OFCpwqwyt+D3j5O6ezSPAYlibcqDxtGG5wNgYu
 cwP1bhugIVvqUmoY7I4ONa37vq0/zntbDCo3/7m4WrKhsqPHmm8QeE/Gk/XYaI61VoZo0UT9m
 uG3C5mNOKG/xnxraMxU8cTHphO9qL7HaT7L8Mi3ahUjYFUov732bfKeUQJWMS6XVkrdLwt9XG
 IrEjJ/qgtMiTowoLm8GXG2DnYNiRTFrD4kE29RtUi69ufVMuvgceo0JccUVXZjuf2qnmv22MK
 ETijHrW+aDNVW2Q3wlI3BUgN4cNvLV3m0sdua+DQkyKuslcUo/PylPJml1uxdrHZR86oNkXmh
 N6oyp7RJ6lvC5Q8MWebpDlMCr2qhtenSPAz77dhBP+HChfVcaB9sLLZj6bhj3EexOvtgmp60w
 SSJN2pFNoHYJg1rp0xF3rJZvfIFhLekoqRyZXMi5sLvmCfJJiyfETJtG9dSdoajkUHFR9kQdU
 ndziYbfltwwv826xucRdcNgfQkJFTk4foG5jo1jt+Hv8mn4ZdXc7bMwtXCguShYPKCJwFrAw7
 QthDXHbWP6EgR4ot627wSftyVEeUR1gV4STSB3GJa1Rvc4l4JhEpDE4EProXokjcEqV7CivBQ
 i3jVWtmPjTs6jy0IpLLAIvZj05JeTe0kNDPyjLqNR+4juTzltk=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, May 26, 2020 at 2:02 PM Will Deacon <will@kernel.org> wrote:
> On Tue, May 26, 2020 at 12:42:16PM +0200, Arnd Bergmann wrote:
> >
> > I find this patch only solves half the problem: it's much faster than
> > without the
> > patch, but still much slower than the current mainline version. As far as I'm
> > concerned, I think the build speed regression compared to mainline is not yet
> > acceptable, and we should try harder.
> >
> > I have not looked too deeply at it yet, but this is what I found from looking
> > at a file in a randconfig build:
> >
> > Configuration: see https://pastebin.com/raw/R9erCwNj
>
> So this .config actually has KCSAN enabled. Do you still see the slowdown
> with that disabled?

Yes, enabling or disabling KCSAN seems to make no difference to
compile speed in this config and source file, I still get the 12 seconds
preprocessing time and 9MB file size with KCSAN disabled, possibly
a few percent smaller/faster. I actually thought that CONFIG_FTRACE
had a bigger impact, but disabling that also just reduces the time
by a few percent rather than getting it down to the expected milliseconds.

> Although not ideal, having a longer compiler time when
> the compiler is being asked to perform instrumentation doesn't seem like a
> show-stopper to me.

I agree in general, but building an allyesconfig kernel is still an important
use case that should not take twice as long after a small kernel change
regardless of whether a new feature is used or not. (I have not actually
compared the overall build speed for allmodconfig, as this takes a really
long time at the moment)

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a29BNwvdN1YNzoN966BF4z1QiSxdRXTP%2BBzhM9H07LoYQ%40mail.gmail.com.
