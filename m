Return-Path: <clang-built-linux+bncBD4LX4523YGBB5HFQP5AKGQE7CJJB3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5133A24E6DC
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 12:27:01 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id e1sf4955935ybk.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 03:27:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598092020; cv=pass;
        d=google.com; s=arc-20160816;
        b=RFeL+CF/tymvZW8dOdPdOeDGT2ztB12E5uHmnj2Z18DRl2HaMRsgIYOiHQ6BwVO5+R
         9MzzCmvF1i3zFKZhUhhSQbmWyXjBaIIfk1mvbfd+cRQSX/AOTyHhXImREfRx7ZOCcX2d
         NnNQbG6LltFslWU6Lf1U/B70JSuzou7qvoH4hRAsuUPQ0XUvMRBOxsgmEhTyV+8BsRuZ
         wIFDpgZh/T530xTak44fzclVjbC0c2jUTOgBnHLPL05av7SmwkhySGJHRdvHfZSCECBx
         NFmcZ8ggeOZ1a7NEErLP8jQetIBHTF0zZ6OdMzsBuh8JvpggwsC20puZrig3WHl2jRqz
         h6Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wRtpu0eNlOtkqFiqv7CQt07zrLcKaCcv5wnGtgItpBg=;
        b=NgtkAjpekyePZrWPbk36HDOvqlnDE0jPm0cUHkqIIijear3CGO0pVGawmOz02Fl7ZV
         hM6diRD/LaNvLb9EOZY4NydkS35XD/dHS26m4feNjy7woacscuE7nKCllFUBdvAwHCuz
         HoUEwj583gJqgapdMEzMoWR5UfcCSUW+/09EfxF/38HrZ/WdJxUEYO1DwiTBTQzDThg3
         l5bt9kJ6wiJW+PdWhxHKBFghCma9V9cWyUz6+KUo/dVkA1JtQ93oYqUDr7K2qZ7lrkh9
         tXSUf9CjybYy/ObbYZYjEHg3rxppSAByHLZMP4EKcnErXlN0SH3vphb7g7MtUVeEYvns
         rMdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wRtpu0eNlOtkqFiqv7CQt07zrLcKaCcv5wnGtgItpBg=;
        b=l1ZoJlpjSayusrX0j72TFyHvXUIr/VZNKImdHdtybbBHOX/Jws3G3MUNs+SL8+2r83
         /8mOzi7p0XQskQTpdkAweSA6rvj5gbdPn3sC6A7YgFvFsLtBiHPjUvyKn5PCaU66NCyd
         XKrzYlbWabnObCvl+XxHRAd7KASckE9QyhvX+GpKHp4TDj4TZBpYLreIjpMakokGZoDK
         d3Nh/Twcrj1/FKIR2/9/12KwX1NfZu3cM6/CJbM5z2lU201LFd41dZPoRTT26lBKBqJw
         l3BZwnIqL7r6GTRx2DNN74pty/rPBVDpyGHDRjC501UMGh3D+GJsZQXy6wFj5uF6qjY0
         dfgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wRtpu0eNlOtkqFiqv7CQt07zrLcKaCcv5wnGtgItpBg=;
        b=A79RwkXQ9SObNInqTvC+Z5tYq2i8qJJpvqR6r6fJji9obLUcBED7OUd/fgpVUhIc7m
         eiMwiIZhk2suCQZXRna41gbVZ0G/vSXc3vVEJW6hrGE1XxFZK283bWEIUEKYPzUrtYcr
         n61LRTwhFrJmaa3SIGyHLuL+/pn0J5k4tZVXd7ZzKbrwY603V2wf8nqmRtZmJ8zZ9m2R
         SVEcG5XMvINUODa2begTp70exCjK0kSJ2L4Wu9XBayG/N3dFdXcftKuFxJSm+C+Q5eWN
         i3OQn2S0HmvL5DaaIMcm07OuU2ho6N1nA3fbMBg72efmNeGr8y0uFFmsCOIRYK0Kiej6
         Vldw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZpMH3cenTtv+z3JkGaJpTEeBxFeufwqaB1nmIikTFS+Uq6zAF
	UzAed50QJSwgHANTHfrRsLo=
X-Google-Smtp-Source: ABdhPJwfb6A4vKd7KAGzhvALLm8BjKlSQo70e9wIL6CJrLfTnGfKI5DQdVM4kAnF+QhTDjoe1Njt7A==
X-Received: by 2002:a25:34c9:: with SMTP id b192mr9999252yba.74.1598092020201;
        Sat, 22 Aug 2020 03:27:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d451:: with SMTP id m78ls1845910ybf.1.gmail; Sat, 22 Aug
 2020 03:26:59 -0700 (PDT)
X-Received: by 2002:a25:fc06:: with SMTP id v6mr9672939ybd.478.1598092019881;
        Sat, 22 Aug 2020 03:26:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598092019; cv=none;
        d=google.com; s=arc-20160816;
        b=I+UHJGJUizvpAn906yhVpI+uRniyllihYNTe9o07VJ3iWLQ5gl9edbRFRHt6qowGUa
         IUnYtOAhgnv4aK3Ovv6TcFlNwoYpp6tXD5QnjV/mAK+Nj96k4jnWu6jkeXMt5SwgkWfy
         IENsrt2WiiNuPio5yLJJhhMzUlCH0DgqgKNfH5+juycCYAGycoZ6gHtXYMEhQH/52blf
         eiJMLd/gB/1rzm7t1ZVbfnR4z4a0TfycP124mzQ9T2RCw1wCn9g0p1Cp8BRTQ7eppOAJ
         sORD2XtLrJC0m17bz9mB4zq5RComXKoXuWEr9x26ug3kPaFmIF3UiLp1dczGkpVsZ8iS
         Adaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=0FTCB9OWGk1I+OHk3Bn1nlkof8QkvHU/hAJB0+ACyWQ=;
        b=xgl+I0v+xxnEC7ddh8jXwqPCaClQQFyQS3EnxrhxU2x4cARpzH4f6qx5MJchgPe8he
         wNJMxIBaFe3Xud9hl2bolBvhbIwsXDimkb7nTE/ro6tRavWD6f5w+vKVl44q1C//4875
         pceCaN4muIV1KgiYc0yZ4Fedmr61zbo4+hTSHg8ynionoxXNJ6DNWNWJfRc/S5GvG8Za
         RfQ+44d4HhdQADIn7mhzc8LwwHKPXCatdQ0Ong4za2AxTM9+UQ+PATr/Hph+8kTbg233
         8FZU695jCO9NdfZY500xB6/eNUVDaD8wm2FbbPZf3OkSQCPklaZaUoHDlA9fUuXPqYcZ
         OOnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id m193si292024ybf.1.2020.08.22.03.26.58
        for <clang-built-linux@googlegroups.com>;
        Sat, 22 Aug 2020 03:26:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 07MAQeoZ015812;
	Sat, 22 Aug 2020 05:26:40 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 07MAQb3f015811;
	Sat, 22 Aug 2020 05:26:37 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Sat, 22 Aug 2020 05:26:37 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
        Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
        Borislav Petkov <bp@alien8.de>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>,
        "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
        Zhenzhong Duan <zhenzhong.duan@oracle.com>,
        Kees Cook <keescook@chromium.org>,
        Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>,
        Andy Lutomirski <luto@kernel.org>,
        Andrew Cooper <andrew.cooper3@citrix.com>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Will Deacon <will@kernel.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
Message-ID: <20200822102637.GM28786@gate.crashing.org>
References: <875z9dioll.fsf@nanos.tec.linutronix.de> <20200820130641.GA536306@rani.riverdale.lan> <87zh6ohm03.fsf@nanos.tec.linutronix.de> <20200821230435.GA56974@rani.riverdale.lan> <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com> <87eenzqzmr.fsf@nanos.tec.linutronix.de> <20200822035552.GA104886@rani.riverdale.lan> <20200822084133.GL28786@gate.crashing.org> <CA+icZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ@mail.gmail.com> <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Sat, Aug 22, 2020 at 11:51:56AM +0200, Sedat Dilek wrote:
> On Sat, Aug 22, 2020 at 11:23 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Sat, Aug 22, 2020 at 10:42 AM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > >
> > > Hi Arvind,
> > >
> > > On Fri, Aug 21, 2020 at 11:55:52PM -0400, Arvind Sankar wrote:
> > > > Cc Segher.
> > > >
> > > > Segher, we were looking at gcc PR82602, where IRA could reorder volatile
> > > > asm's (reported on ARM). The fix was backported to gcc-6.
> > >
> > > I know ;-)
> > >
> > > > Do you know if
> > > > there is any reason the problem couldn't occur on x86 on older gcc
> > > > without the fix?
> > >
> > > No, I see no particular reason, at least GCC 5 seems vulnerable.  (The
> > > GCC 5 release branch was closed at the time this bug report was made,
> > > already).  There is no reason I see why it would work on x86 but fail
> > > elsewhere, either.

> There exist gcc-4.8 and gcc-4.9 for Debian/jessie where EOL was June
> 30, 2020 (see [1] and [2]).
> 
> In the latest available version "4.9.2-10+deb8u1" I see no PR82602 was
> backported (see [3] and [4]).

[ There is GCC 4.9.4, no one should use an older 4.9. ]

I mentioned 5 for a reason: the whole function this patch is to did not
exist before then!  That does not mean the bug existed or did not exist
before GCC 5, but it does for example mean that a backport to 4.9 or
older isn't trivial at all.

> I am asking myself who is using such ancient compilers?

Some distros have a GCC 4.8 as system compiler.  We allow building GCC
itself with a compiler that far back, for various reasons as well (and
this is very sharp already, the last mainline GCC 4.8 release is from
June 2015, not all that long ago at all).

But, one reason this works is because people actually test it.  Does
anyone actually test the kernel with old compilers?  It isn't hard to
build a new compiler (because we make sure building a newer compiler
works with older compilers, etc. :-) ), and as you say, most distros
have newer compilers available nowadays.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822102637.GM28786%40gate.crashing.org.
