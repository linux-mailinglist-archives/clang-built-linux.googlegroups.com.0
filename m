Return-Path: <clang-built-linux+bncBD4LX4523YGBBHHGVH5QKGQEDYQ6K5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FA6274BBE
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 23:56:46 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id s201sf5536623vsc.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 14:56:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600811805; cv=pass;
        d=google.com; s=arc-20160816;
        b=ojbCP06TKr/dkAp9pRGWgT3q2yNZo3AZ3mQNMba8hRcpcA4tUG/r05lHEAwmIkkZel
         IwTUvgWG4dQNnKZ7nm6Zt3Z6U4Gsmoev1M0ULgMpfX0uh6Jyhoa0wBCUK39xOl7paHhE
         Pct5ul9A4iE4YwvOHuE/7YcS+FleXHwUG+gnzNtHlxsercfwHhJ4EYQ76wQlkSh/TcpP
         x1UevpvkLDfWFDazlOl0zkKhxV+rkjAw6pjcWAUzsE4L+HQ0Dak03npLWT65WSGWO0Z0
         9obK9BrIJSCf9ffVpVwOyq7NSkvub7reZWsbBl8HQiIEjpTl/wZE93o3LbTN2iXqpepN
         3kgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=VUhFcs0oXsFoBtU+2lpTjdbbPsoWC3WozGTXGT0DMHI=;
        b=uc7WxAbqDtWaafF5yyVoPQkNn60Mw+Z8zeerZWiKJCC3YebfZShlWaD8f52OXQNbqW
         i89NL4EMspK1CcwVs1UuM3SxNlo1G+SVFvZ1yzSUJbVuY0K4SBcW7RNNZMWBnFsPAqGj
         /nb0UZlWm1+Ald4zIx97zkajE2YusGbY6/W5TgV1v+dTajNehBf1BH6fgRbp8UNAcoHb
         oJNnjthnvnLOMHOJhW5slaL0ZsfHFzBurHUPyYdpWHg1NDAbNmbgif+lR7MOM01TXWgH
         AiIiGOZ90ieaIqFG5U2ek9ImPTRWTRwYeBJuWsyFepHNi1twT7SeD48zxZ5GDok/HU60
         GrlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VUhFcs0oXsFoBtU+2lpTjdbbPsoWC3WozGTXGT0DMHI=;
        b=R7Z8WEQArZkv48AYlanSJpSUiaB1CIjdwi+eYFdxHWEDANIZ03Iuee5rh/qPniQjDg
         WQTChIKVur+/2MHRbt44HGLk/9QDHuGMS2SyllUiu5t8EizCuoZzXbKCYyF1SLw5iS3L
         CJzht5lZkWK5sCEGnSJI4FV7w4KV1/ZDqefUWo8c+XrL/j89Ptdcc1ECQczjBxqPEaDx
         8Ia5ZmiZQgInX56eJqKXQogCfqEETSuQhRttGHNZV4kZUy4JvOJfT0CrBCqvjesVtQU3
         AcLm7/DYjv2yuhKTSwv8/NvaB7Yb9pYOv6kzqCu6ebB59Nb/POOLKDnhvEfNVonjYVIE
         wCGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VUhFcs0oXsFoBtU+2lpTjdbbPsoWC3WozGTXGT0DMHI=;
        b=AEHnx/kk4FOblATGvZDQSqSer+MSwunGuydudrHOiFANsDH/N+R14UYThUrRSSZZWI
         g9mf/WgAPY/1ILoYAxPFJSU2Is3BUtEulqRvgWZ54V5OwpKtVIfGRtzo4U/e1KUDWAJV
         k3+k7AdStI+hvqYmIeGB+/iPR+gXSDv82SEOBf/zErHOBc16xT0qY/UdGnBIV+vEIovM
         SEf87UUxI1WCXlXhc2K+C0fzk/TKUh5GJYyar0qOsMJwSrVOdPL8LcBqKjSSujV/q7H8
         MSteAIRTxMjh8e8oKykOczpMsY28HK4+emae6XhYmWSLSDOG5omEwdMQNfZ9KNWGTBHk
         FiRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337PaAESZQLiC4Qrq+10CD2OO2Hb7osahexagwuLnNq0sEeFW8r
	w05zn6+ksJSJtR4I1/xuURs=
X-Google-Smtp-Source: ABdhPJw6ZybIQ3PGNmswqDGDdNoRvqOGdpGqCyFaRHp5gBwbRv9wLd7oM/EnzCYSmnaXJH8GAkE/uQ==
X-Received: by 2002:ab0:6708:: with SMTP id q8mr4653095uam.139.1600811805080;
        Tue, 22 Sep 2020 14:56:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:20c5:: with SMTP id i5ls2141945vsr.6.gmail; Tue, 22
 Sep 2020 14:56:44 -0700 (PDT)
X-Received: by 2002:a67:e248:: with SMTP id w8mr5364219vse.39.1600811804482;
        Tue, 22 Sep 2020 14:56:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600811804; cv=none;
        d=google.com; s=arc-20160816;
        b=fSq+wwusmRFO8t3dlONxsp4TY7yeANHoFnmGA3yTQUXHKmA6O1MvFGmjO3ac5iZznI
         A/l1VvhjJAFKeksN+D3EvLwdXxkwEP870f6TuyIcOo7w9ctU30gemAUaKUVTHban/ZOb
         hsqqskSzhlW+g9XsBC5pSk/exoJbsEhS+AeitrL3EfJ82jmVV8ComYm6CuzGEV9u8Zg5
         x0igesZ+UEfLDWwKUaZvGxZ75/CYm6OYJKI1g6L/YlYbjPj0ppg1Q1HGDDAYYJttRHh8
         oCd+k6+V7D9mvcxJrschBuEe2EjshfyUPBSK2xjaZeI+49AEA0cdV1wktUT4kxGBzY1O
         C4dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=BkUGTNI5G7+UaWuqtJKAU4oS3/0TvCDoOi1Vl2UMiQA=;
        b=ZucF3jWw79I/xcer9TZhaIjMuj4WM83xbEcm6+FVSTdfiZfndPgIXklBk0MplujBNZ
         ydoqKGL/KzIBjx/C99BVD/COtZZK2QN8WS32VGjUfswoMiQw/iBMrKXF+5v2I/3MZez0
         QcZxFlR4Xcp9P5DZlbKhR9btDCpYunHIO8pbHdHu3c9Cof80GrGAxsJDDPpxeshe7SYn
         ELO8oYOJBPvH67SssBeOMUsb4bPpq6vm6wv2irbVieQ9cIYQ3Q0+R+mm9eu0dux9eda5
         36da3E+qqA4V7Qaohuh0V8SG5v8ilNhLpEIds7ZWHeeYelpA+pi8M3Xm0y1HOvbCU8dR
         QE6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id y65si950920vkf.1.2020.09.22.14.56.42
        for <clang-built-linux@googlegroups.com>;
        Tue, 22 Sep 2020 14:56:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 08MLrRwx004664;
	Tue, 22 Sep 2020 16:53:27 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 08MLrPdP004663;
	Tue, 22 Sep 2020 16:53:25 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 22 Sep 2020 16:53:25 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>,
        kernel test robot <lkp@intel.com>,
        Michael Ellerman <mpe@ellerman.id.au>, kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>,
        Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Subject: Re: [linux-next:master 7032/8629] arch/powerpc/kernel/vdso32/gettimeofday.S:40: Error: syntax error; found `@', expected `,'
Message-ID: <20200922215325.GM28786@gate.crashing.org>
References: <202009180302.cc60Lfbg%lkp@intel.com> <79256845-c7d4-94df-adee-9cd833fbca03@csgroup.eu> <20200922163519.GL28786@gate.crashing.org> <CAKwvOdmhW_T-J98tQRoMCAgY6uPnW=bujtpDw5KauMnHDE4n=A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmhW_T-J98tQRoMCAgY6uPnW=bujtpDw5KauMnHDE4n=A@mail.gmail.com>
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

On Tue, Sep 22, 2020 at 11:24:28AM -0700, Nick Desaulniers wrote:
> On Tue, Sep 22, 2020 at 9:37 AM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> > Yes, and @local isn't new either.
> 
> The first issue is that arch/powerpc/kernel/vdso32/Makefile resets the
> cflags that we very carefully constructed in the top level Makefile.

Or, it could be said you are relying on no one else daring to touch a
generic variable ;-)

> > > A new clang issue ? This code has been there for years and been building
> > > with success with GNU tools.
> >
> > Does the clang integrated assembler handle embedded relocations at all?
> 
> I believe so, but each ISA may have different levels of support for
> all of the different possible relocation types.  TBH, I have not yet
> tested Clang's integrated assembler with PPC.  These are to avoid GOT
> indirection?

This is the 32-bit @local relocation; its history predates binutils CVS
(so older than 1999).  It is the same as @local24pc (which is documented
in even the oldest ABI documents).  It *uses* the GOT (or PLT).

If you do have @local24pc, just add an alias @local for it?


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200922215325.GM28786%40gate.crashing.org.
