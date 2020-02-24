Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTXO2DZAKGQEZJZGDUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 459A216B12E
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 21:51:28 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id 3sf4834462oij.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 12:51:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582577487; cv=pass;
        d=google.com; s=arc-20160816;
        b=nZMIvmt+W4ETClVGnJ1Wa4t3ONhE70Wce4F6E8myOjDCp+ehTK8gmhyUj49GO6sKMi
         xJwA0H5LMwWXnzjoU1TkNzzr5X9+HfTEMqRgjyUGALQrUeqQ1etIoC+o+JSFDLpCpmFs
         +bfLHK9iMJULOKXcQWFO41GaIgRwzAhMQf8trfbRM0jyygktW1RbtwQUfotM3dKCC5dL
         4kn2Wv9u7ug4xEiNgPMl5KvKKWn1m1hdXwHKfCSJPFirwd+gsyc9MwoYrLhJMcHhAuED
         Kbn6ka9F9Zlk/kTNHOHShXZTX56DPV+Cgc5B4EPltlAI1tEva7UMwCwPNDQRUH73EiUd
         sWNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WfFkg5VXGftQ6QxYw9YimpZJM18KNjQmuUFBaJAQxXk=;
        b=ZqtOKZwc52V7gVUudCPMVKGXAfoT1qaLU//UD2k/tgvuT2iKJrOW5/+KVS2NXNngL3
         KnCs3fioGHaiDDquQV78k7veG/ptvwvRT+jrX2K/ceJEurOocoq4eD3MFPRx36wQhHAQ
         npXY8IAogBkvr+Lvrivvih6aKP8YD4hefMOBdeyA9b/3VxJvQQBY+ykY8qvPWAki/wKk
         LmDr6mJKJz5n1nD2gxwN6AOFHScrJ/QzirV5zGvlWajGlJ+1Iuzx7UMrCPfu1w2e0/0F
         M8bVc7jsjgdlSYPstnvBx3W+E/RIvyDan1dXcIZ2O7Si3KFYaJjuSOFlrnxGMrsL6KQH
         b+dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="IU480/eX";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WfFkg5VXGftQ6QxYw9YimpZJM18KNjQmuUFBaJAQxXk=;
        b=QKHc/POqka5N3aOabpOBR3BgMBQIJoMBclJSOM10FfB88S4c5wt2Vdgyx4Mcj2gZQK
         +B/3yLvZ5qjlHWlzHGpdYvoZRkuxFIMuW98RxYAWcJQmtRIIByP0HUBnn3SN3k55s1Z/
         epO1p/T4lRmKZJ0WXpc9Gkr+Vb/3e5pDd8NAE5kA6NHT7l94DypopWJJ1WwkDhwdSVt4
         d9FzmcYaeVkabCo6ht3HA6Gqy0Dq/4mCFmTPNYPqFYjuPbbdmqD1onoVnEJMyb1D7Ial
         TSyE3EU2DzVDb+CgqYDAC3kOX1DqU7aQVm9GFJG9aHBklA7LKyjyfoZv6UPYy//9UJnW
         JAIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WfFkg5VXGftQ6QxYw9YimpZJM18KNjQmuUFBaJAQxXk=;
        b=ALVhRq/NPbtvpaQIrsH7NOHlmmQkegvo+iDjgJDh2HizibWyacCHhfeC0G1Hx4b+74
         f+834aWcOF0TCbkLKM5LkJ82coEs/5LMM4CzrpGs5LqZRhaC3s7SlIppCrN5u/N61IBx
         yLP/YQnwb56bquvn/xWDcqYJLAIpshav5HepE6I4Z7aerlRSdkArZukSuoXde/kpobKT
         +y4miRvHzev9vfdup5nCcHuKblc0vYN4O8xMKmPnqxsDk7YasuOjx2kMQ7voAw2NexYw
         sczNijy+QBGwzwxPbWWtlb7ZfH6ccIrBMp3UKUI9pw3W2Z16Zrr4mPMoeoMq3i0Tc1Dm
         H+RA==
X-Gm-Message-State: APjAAAXQYunw4NdfKBGjN4NLmR9bexbRS0O4kGucWL2Yt5UyTEA6A/Ms
	jX548hcZPu1BOgjNt98mFfM=
X-Google-Smtp-Source: APXvYqyf53Fk3myY1tola9xCbyCyTWZ5O1sdaKszzRWjFk+CmLLfqB6+Cd2JWTmLsSqmNGb8mF4NAA==
X-Received: by 2002:aca:3554:: with SMTP id c81mr73923oia.0.1582577486598;
        Mon, 24 Feb 2020 12:51:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:611c:: with SMTP id i28ls3294660otj.3.gmail; Mon, 24 Feb
 2020 12:51:26 -0800 (PST)
X-Received: by 2002:a9d:58cb:: with SMTP id s11mr42888481oth.55.1582577486190;
        Mon, 24 Feb 2020 12:51:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582577486; cv=none;
        d=google.com; s=arc-20160816;
        b=beq9AwfHRSmHBycpRKjkcdaaf9IivjxYI6TSvrl2MrSuc8luDYJTok5EbxypTz/gSM
         6QgDlLOrh2UT9AQGvkA/Dcc7kLqsWhunoyyFZ6N3GgJv2gAi+oJ8RhyShtZLhtBbbME1
         YilyFckcruQgiMG/dNbWCcvAh+D6cFfVjzPTNc/hDEc89dsimVZCjUYlidRdcqDKHaoa
         SiKkZ8dUVyD4BIuuhOdX2MxW+WYJwIYvA0sJDre4aHL/kbFkdMlXsUJEF4YGJME2wmxi
         3SzLD/e+jt5CAy3oHJ9FiJ3mgbFRvmky0vfBChUMwvyKlcsSWnryxNMZf7BpxbRvl8/s
         CACg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jRq4pHDxuVRc7aayKg6MpqkDQ8S3ZSOkFs6fEcDKK0o=;
        b=H1itI2251/D9zAoKaYqVB+93FOR54XKE25jHAPMeXTttYe5Vwy4pX79S4kO4vRyxjU
         aI/0S16vJTHEuWMF/k4Aurj8DQO6X3JjoyyxhCN5cV6bgNNjNiftN5xcfk/5rY7tU+Ua
         zoGiAUxRx82SwfwJOwh8BNjjl5ZxMukVT0XlKMaMldTQDU7DjtLo/bvw0KXoatBnZxYi
         fVboP7x/qFImAtPi9A05EqZ+vs0Z+VZQII61telV0KA4sOOdjW2NrwD3leN2P/YJR9L5
         guVk3LvYmbu7qEt4k6QychUO7UDxYo4dlORMpwaBGQ87XDJfrkKPUWicYZ3PiDpFGASV
         fvog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="IU480/eX";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id b2si605893oib.5.2020.02.24.12.51.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 12:51:26 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 6so5756468pgk.0
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 12:51:26 -0800 (PST)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr18743179pgb.263.1582577485165;
 Mon, 24 Feb 2020 12:51:25 -0800 (PST)
MIME-Version: 1.0
References: <20200109150218.16544-1-nivedita@alum.mit.edu> <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86> <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86> <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic> <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com> <alpine.LSU.2.21.2002241319150.12812@wotan.suse.de>
In-Reply-To: <alpine.LSU.2.21.2002241319150.12812@wotan.suse.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 12:51:14 -0800
Message-ID: <CAKwvOd=nCAyXtng1N-fvNYa=-NGD0yu+Rm6io9F1gs0FieatwA@mail.gmail.com>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections from bzImage
To: Michael Matz <matz@suse.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Fangrui Song <maskray@google.com>, 
	Borislav Petkov <bp@alien8.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="IU480/eX";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Mon, Feb 24, 2020 at 5:28 AM Michael Matz <matz@suse.de> wrote:
>
> Hello,
>
> On Sat, 22 Feb 2020, Nick Desaulniers wrote:
>
> > > > > In GNU ld, it seems that .shstrtab .symtab and .strtab are special
> > > > > cased. Neither the input section description *(.shstrtab) nor *(*)
> > > > > discards .shstrtab . I feel that this is a weird case (probably even a bug)
> > > > > that lld should not implement.
> > > >
> > > > Ok, forget what the tools do for a second: why is .shstrtab special and
> > > > why would one want to keep it?
> > > >
> > > > Because one still wants to know what the section names of an object are
> > > > or other tools need it or why?
> > > >
> > > > Thx.
> > > >
> > > > --
> > > > Regards/Gruss,
> > > >     Boris.
> > > >
> > > > https://people.kernel.org/tglx/notes-about-netiquette
> > >
> > > .shstrtab is required by the ELF specification. The e_shstrndx field in
> > > the ELF header is the index of .shstrtab, and each section in the
> > > section table is required to have an sh_name that points into the
> > > .shstrtab.
> >
> > Yeah, I can see it both ways.  That `*` doesn't glob all remaining
> > sections is surprising to me, but bfd seems to be "extra helpful" in
> > not discarding sections that are required via ELF spec.
>
> In a way the /DISCARD/ assignment should be thought of as applying to
> _input_ sections (as all such section references on the RHS), not
> necessarily to output sections.  What this then means for sections that
> are synthesized by the link editor is less clear.  Some of them are
> generated regardless (as you noted, e.g. the symbol table and associated
> string sections, including section name string table), some of them are
> suppressed, and either lead to an followup error (e.g. with .gnu.hash), or
> to invalid output (e.g. missing .dynsym for executables simply lead to
> segfaults when running them).
>
> That's the reason for the perceived inconsistency with behaviour on '*':
> it's application to synthesized sections.  Arguably bfd should be fixed to
> also not discard the other essential sections (or alternatively to give an
> error when an essential section is discarded).  The lld behaviour of e.g.
> discarding .shstrtab (or other synthesized sections necessary for valid
> ELF output) doesn't make much sense either, though.

Hi Michael, thank you for the precise feedback.  Do you have a list of
"synthesized sections necessary for valid ELF output?" Also, could you
point me to the documentation about `*` and its relation to
"synthesized sections necessary for valid ELF output?"  This will help
me file a precise bug against LLD.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DnCAyXtng1N-fvNYa%3D-NGD0yu%2BRm6io9F1gs0FieatwA%40mail.gmail.com.
