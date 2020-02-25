Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHVD23ZAKGQEZLZ3ZQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 1952A16F121
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 22:29:04 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id b21sf221456otq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 13:29:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582666143; cv=pass;
        d=google.com; s=arc-20160816;
        b=P6VhDt6t54w1WpPiO8RDzNu6lMsVYT40OKCbMgXvdLC9Wo8C2MM9NXYI0re37190UT
         7EubpvY0WrHhfhmGTI8xJRtsSyWET2Sw88ZKzgi2TLHkc/uM1han0YNBNvSJnD+vf/wa
         OYCd9Ag2WPTUED0wBWP1j4iZdbAOO6v+9fevXAFFkXaj365LsU0BjghHTNaWXSI2ij+D
         ogxfVz9Qis0L+FcD4qzI2HobMs9MR3GmZO89bgsseM+29d5kKHlNV9nDPGvT0IKA8+Q5
         Y+k08MCppPAzb20S53OX2jOh8mDGfSMI+hhaqJWdc2PZsGnlXeHTl5oWD0sX0ToXBvrZ
         Odng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gBpW8mpRdrBPzIrwVaBZ93MvLWXvcuVV83uI3SfDypM=;
        b=nCsIF/vGhT5jtf4IpfJz5cSYdGQt6ybJOd0t8tWxlPox5EtYRrv+xGwquWAQxwjas7
         TZgWp8S5CFSskO6UXb7qV2Gg8d7lPa6WJWZY1YGADTYHnsdNyCNvIUnmlUCGM6WWcLLX
         vyFdtvkpQTgcs3Nit46SecWmwfTz6XMK2fqvyNKowFO+vW1/ET8UT417bNPVGUh7nVyo
         qBYlF12SRubwKIdaKYsOVelcVpAoPy+5VKXEXz98KPqAgmIN35zv2/GX9pSMt624iFfN
         RsUb4NAoNh+NJEy7sGin3/g1U/pjLKs4QMfiAsFcfipHnBB6EseBgzlKA6ia56EP5RLs
         ttlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XZGCX7ya;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gBpW8mpRdrBPzIrwVaBZ93MvLWXvcuVV83uI3SfDypM=;
        b=iUBHsd+SwZIEPvQhnBzmmEp1eXCxACRyp31SrG8UHKoYIAPVq0aIz+4tQyfEYSJ5j+
         jx46or9D1O2WBDK85tdxV3JUnLJ4ped5aN83VZODrn7SoUVP4C9Knv4dLrX+rMNRi49+
         kHw/sZt3wpKdHxBge9d+SFu8jrWaYMJT5wQmtpVGJapIY00R3CyDRXQCivARA7gLzZUm
         oDN2JfXGYuvkQEFiQFYrAInEBYZxwCTr8grnJG+r2MoGJBLScm/3mfodfWF2O5bsRrRT
         Ud81+9I7qf+3VGTTZnTGpPan/rjyJufGfqkVM1PWgUiqjTS/mV/3ETDEOvIz2hS4MNzD
         vSHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gBpW8mpRdrBPzIrwVaBZ93MvLWXvcuVV83uI3SfDypM=;
        b=ro6HIiUJmWvQgzMaGkJ2Q5pUDskRtIVkTrJDxz8GewFcsDsEO8JE3HuoQMVno14uci
         Fx/RMbR+1poRhdQqyjZh7vm+/JPF0/TWxfbnaoUNv2bhpVFWcfsDBS2lebMNWglSQqv6
         s6nshBrdomoNGEAYZ96A102tQZ2vPoFkay8ghH0vX5SlAm8W27JSqB8SJ1hGqW4EBoMy
         YNbYfT+zxJdNn2O/USZkjCWQTzZS7O28cjSVcd3DEjBkWXzoxv3Pg8BwzPl1DPzvs81n
         N2SkZRcLMb4PCpDvG3ItUKLY4AF0ebxkh5MmCHDi++/g5R1vckiDkg7VffNeJ9I8qH1v
         522Q==
X-Gm-Message-State: APjAAAUTvnr4yRzdf9o5Uc1NIv8iDy8WG/bjYt8dtTmTYOmzvkXHk3Yz
	5mGoc1kTJ3PreDRIkjNTcgc=
X-Google-Smtp-Source: APXvYqzFeQ+oRw/W2vDBSlcOWWUydQ7tXa8dKyxdNoYCCTGG1xYYv2jpUqXZR13f+gnAIAb0mTOq0w==
X-Received: by 2002:aca:f20b:: with SMTP id q11mr687872oih.78.1582666143016;
        Tue, 25 Feb 2020 13:29:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d549:: with SMTP id m70ls103366oig.10.gmail; Tue, 25 Feb
 2020 13:29:02 -0800 (PST)
X-Received: by 2002:aca:1108:: with SMTP id 8mr696324oir.127.1582666142673;
        Tue, 25 Feb 2020 13:29:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582666142; cv=none;
        d=google.com; s=arc-20160816;
        b=LhvY+OBjk+f9f5As0kflsh1EKief0E/DoL1xEVxM1EEnxFIWUYhWQw7cMGfpSZxRFR
         fx29GL15VtQ7eDHc+dZYXidcyYuItEw1SO2NPsZeEpsGmAENZELOdGBiPdgrpKb2hj8n
         v2tObtPXb35GH+Vda71+MH2weuq8PsRYyjWPX5oetJ6j7DkIHfk7IJJ7hnE9J2TbYNiD
         mpatuMxmzES7mNcnCNmyR14K899V4r0XLW57K1dh8mvZMRxWPHdzcriq3WeaAb3JD/u+
         jc4tWYq06FFSMXLH3LpBUdTTSpB6QFVneDkkERcEyK/4xTxlgTmG/rq/ZwcfF2WYJBUp
         21cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ujUpzqbtLOMFnK2x85J2zOksd9pIKrwiWoiPZU2Tngg=;
        b=QcUHZP+XCOZdnNdFbPgk1qvS/z2/RbeqIMkqO+Ig8RWCFts7bYtj40PmuDdvnN6n5p
         iuplB6PPZ8aYRA3/6at3yvCffBAz1wSt/BgkK0wfbsrfX1vVPoB80vTrfeTxe63f2NjY
         C0k8EMOf/toJEdTqzkopq22rlsVVMWTBKqCN3y9CFOWJL7twmUCr+BKDkBTMJR6i6PNJ
         sPllj85rSy+JP9wzIoawu+FNBwACHqFx7blYswGZg9mC+U99DBVqZtAake1GiudICLBu
         56fRAVgHzyuDcyy5bUwfHSayTiDsRGRl6YK6lElXj5NDfaG9idEszW1XNEFGaEcvzGAN
         QCCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XZGCX7ya;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id d16si7913oij.1.2020.02.25.13.29.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 13:29:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id a14so167828pgb.11
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 13:29:02 -0800 (PST)
X-Received: by 2002:a65:6412:: with SMTP id a18mr502177pgv.10.1582666141590;
 Tue, 25 Feb 2020 13:29:01 -0800 (PST)
MIME-Version: 1.0
References: <20200223193456.25291-1-nick.desaulniers@gmail.com>
 <CAP-5=fU=+uYZDb2uSFO8CTJ-Ange4Nxh4mmsOC1MS=Tedois9g@mail.gmail.com>
 <dad75d5a7aa443e39dc20972d80ee83c@AcuMS.aculab.com> <CAP-5=fXO+YMO9asspqYdvXATZONCbBYMGbdVNU_3+W3BdeunGg@mail.gmail.com>
 <CAKwvOdko+Qb=h_Pm=oFUnsiBg7Am9u=Z83g8cNyY1QZQS=Mh7g@mail.gmail.com> <7fe0ca3e6fb64ca59986584fffa824e6@AcuMS.aculab.com>
In-Reply-To: <7fe0ca3e6fb64ca59986584fffa824e6@AcuMS.aculab.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 25 Feb 2020 13:28:50 -0800
Message-ID: <CAKwvOd=vQjs=nPdCEhY0yd8E6zx6BvMgr2EDQyNztbZf1LaTsg@mail.gmail.com>
Subject: Re: [PATCH] perf: fix -Wstring-compare
To: Arnaldo Carvalho de Melo <acme@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>
Cc: Ian Rogers <irogers@google.com>, Nick Desaulniers <nick.desaulniers@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jin Yao <yao.jin@linux.intel.com>, 
	Changbin Du <changbin.du@intel.com>, John Keeping <john@metanate.com>, 
	Song Liu <songliubraving@fb.com>, LKML <linux-kernel@vger.kernel.org>, 
	David Laight <David.Laight@aculab.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XZGCX7ya;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Feb 25, 2020 at 1:35 AM David Laight <David.Laight@aculab.com> wrote:
>
> From: Nick Desaulniers
> > Sent: 24 February 2020 22:06
> > On Mon, Feb 24, 2020 at 10:20 AM 'Ian Rogers' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> > >
> > > On Mon, Feb 24, 2020 at 8:03 AM David Laight <David.Laight@aculab.com> wrote:
> > > >
> > > > From: Ian Rogers
> > > > > Sent: 24 February 2020 05:56
> > > > > On Sun, Feb 23, 2020 at 11:35 AM Nick Desaulniers
> > > > > <nick.desaulniers@gmail.com> wrote:
> > > > > >
> > > > > > Clang warns:
> > > > > >
> > > > > > util/block-info.c:298:18: error: result of comparison against a string
> > > > > > literal is unspecified (use an explicit string comparison function
> > > > > > instead) [-Werror,-Wstring-compare]
> > > > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > > > >                         ^  ~~~~~~~~~~~~~~~
> > > > > > util/block-info.c:298:51: error: result of comparison against a string
> > > > > > literal is unspecified (use an explicit string comparison function
> > > > > > instead) [-Werror,-Wstring-compare]
> > > > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > > > >                                                          ^  ~~~~~~~~~~~~~~~
> > > > > > util/block-info.c:298:18: error: result of comparison against a string
> > > > > > literal is unspecified (use an explicit string
> > > > > > comparison function instead) [-Werror,-Wstring-compare]
> > > > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > > > >                         ^  ~~~~~~~~~~~~~~~
> > > > > > util/block-info.c:298:51: error: result of comparison against a string
> > > > > > literal is unspecified (use an explicit string comparison function
> > > > > > instead) [-Werror,-Wstring-compare]
> > > > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > > > >                                                          ^  ~~~~~~~~~~~~~~~
> > > > > > util/map.c:434:15: error: result of comparison against a string literal
> > > > > > is unspecified (use an explicit string comparison function instead)
> > > > > > [-Werror,-Wstring-compare]
> > > > > >                 if (srcline != SRCLINE_UNKNOWN)
> > > > > >                             ^  ~~~~~~~~~~~~~~~
> > > > > >
> > > > > > Link: https://github.com/ClangBuiltLinux/linux/issues/900
> > > > > > Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
> > > > > > ---
> > > > > > Note: was generated off of mainline; can rebase on -next if it doesn't
> > > > > > apply cleanly.
> > >
> > > Reviewed-by: Ian Rogers <irogers@google.com>
> > >
> > > > > Looks good to me. Some more context:
> > > > > https://clang.llvm.org/docs/DiagnosticsReference.html#wstring-compare
> > > > > The spec says:
> > > > > J.1 Unspecified behavior
> > > > > The following are unspecified:
> > > > > .. Whether two string literals result in distinct arrays (6.4.5).
> > > >
> > > > Just change the (probable):
> > > > #define SRCLINE_UNKNOWN "unknown"
> > > > with
> > > > static const char SRC_LINE_UNKNOWN[] = "unk";
> > > >
> > > >         David
> > >
> > >
> > > The SRCLINE_UNKNOWN is used to convey information. Having multiple
> > > distinct pointers (static) would mean the compiler could likely remove
> > > all comparisons as the compiler could prove that pointer is never
> > > returned by a function - ie comparisons are either known to be true
> > > (!=) or false (==).
> >
> > I wouldn't define a static string in a header.  Though I could:
> > 1. forward declare it in the header with extern linkage.
> > 2. define it in *one* .c source file.
> >
> > Thoughts on that vs the current approach?
>
> The string compares are just stupid.
> If the 'fake' strings are not printed you could use:
> #define SRCLINE_UNKNOWN ((const char *)1)
>
> Otherwise defining the strings in one of the C files is better.
> Relying on the linker to merge the strings from different compilation
> units is so broken...

Note: it looks like free_srcline() already does strcmp, so my patch
basically does a more consistent job for string comparisons.  Forward
declaring then defining in tools/perf/util/srcline.c involves changing
the function signatures and struct members to `const char*` rather
than `char*`, which is of questionable value.  I wouldn't mind
changing my patch to just use strcmp instead of strncmp, or convert
free_srcline() to use strncmp instead, if folks felt strongly about
being consistent. Otherwise I think my patch with Ian's Reviewed-by is
the best approach.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DvQjs%3DnPdCEhY0yd8E6zx6BvMgr2EDQyNztbZf1LaTsg%40mail.gmail.com.
