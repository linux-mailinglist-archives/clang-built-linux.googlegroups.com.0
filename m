Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBCNZY6DQMGQECB3ZOCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9C33CBC63
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 21:22:50 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id j2-20020a2e6e020000b02900f2f75a122asf5430969ljc.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 12:22:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626463370; cv=pass;
        d=google.com; s=arc-20160816;
        b=kLZ4D9uZbJvQ0evjwBY097AXsNRdv0Vw0TTy/9WQ3LzaoOBKPQsV6XzpL8ly+mErJ1
         5hKV+zk7KReB6IKLbaIpNSGvWhjLY6PSRYrf9Aa7jwitmza/kECOxMmZ1YHJdhbuATeO
         fXJDet3plffiYYSHfZb3hV+Qevwj6qMpyakmWKgEA0SGHYAIFsu1iS/gJcQAQQXS62cZ
         yfdBsdTtH6FOduV/isuoWpt93ZGBQ/KLzJJNn9nfGg3mJPod/gfcgVqtdUks0TLx3ERT
         LWPkShX7J0kK5ODCA1jaZK3fFdPXWZ99hM8DCJNz2zIRlcJ35d6gFD6uBME4raVfvX8+
         u62g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=rUci1Jbw/mlOHYo4WSR71Qs4QpOSPyO8z4MloqBVdF8=;
        b=hqTn0ocIFI3C2WDVP28UN75jbDjwMLrdjOFi6YO14IamtC0lwzkGURKaJ7A/JfRBge
         PgZCFnk4az0siVvTfwrUuPZLUgUQpqEsqnvVvQaUfWQVrlKf4TRO3epZdtvgBQaFUlVX
         rTRKOXZDUvO5cdpkYD6J3eZo24X2pB1ny3cDpNnoH+5+xSNaHnEoJQ/BM00YfiPGem+P
         FiaHtocLM6nbP9flevPCI1gyLegQ1aVzQQtu9uVmLYshqKS22mr3aG8TFZ/z4J0GnjVZ
         bFL2AlOpsgdFalYCSUzHG2QFd4UPmOzF1g9MAV4gfd/hN9Actg77LEM5p4m/hf2JQTRj
         YuVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=PiTfme1H;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rUci1Jbw/mlOHYo4WSR71Qs4QpOSPyO8z4MloqBVdF8=;
        b=Lt4+p94WpDsEJkw3X9dIRyn4uiL2XruDkIvq515sbzo3FQconoCfYFfeqO8Mi1uLP5
         cDHg1SrK8GdRI2G2C/xbaArXaFKaeoBtwc3MW1tjF/J6qQBeGqf5ok5UBpd7p1Jlkbvh
         9fEUUk5b8WPlC70G9sCvIVkW4Pa8oG/n5UUOik9C3M3JJdxfr4WITt0yKSmFg2jj1dYs
         oockQUUESO2XLUJ0S4ce0ra3MmOGFCxrg5UKtRNqcyldD5iHrEcsInxnauLbs4YquizK
         dJCVU89zrmjpEkY1IG7yJYXdjzxPmHB0Mw85/3UsyVW8OLBY/Gw34wZkY4i8DXrAEdvm
         UhVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rUci1Jbw/mlOHYo4WSR71Qs4QpOSPyO8z4MloqBVdF8=;
        b=WU6mynhKwJtF1nP50JgUJR3/qwfKPYi1XPxZxQ4//QDt/+WNG0iSGVWoH3sBxPyqhq
         xTKEIfNkvZXTnOfCvW+MOGTfI3JH1nsCapjOqAM9VOiPbFZnnsVHrG4c3x4ikU7lPtwb
         KUuHGPFJe4QtegeP9w2PDoQM0+xtD/1az3sRZLqsnTdoLcVbwMovBa8T127vXLjmLlM0
         q96B64YZzhI4s03gmgTbU0ZahCi+2nh0FYJHS/OnZb3PeygDwh/AZzCHgAm75koRldgY
         FaSdkYZo4BzV8g7xAresy5h8HInB46i+NEngeT07MIWoi0SzQHlbOgbxXhrDRf/MHoI3
         Ndtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wTcQkFAnu7m/2BbYlo5KIu4bpPYNh451LG24vWU9dpsafEIVJ
	ZrS5ZLQPLBuy3c+StDqUqzo=
X-Google-Smtp-Source: ABdhPJxFo3MtIBYeeNxEMTzvjhw5qQgq4yqYSowv7WTMydZzY05K8NOyKZbRBs8ao3CFM5aaqpRDNg==
X-Received: by 2002:a05:651c:285:: with SMTP id b5mr10561935ljo.339.1626463370238;
        Fri, 16 Jul 2021 12:22:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf01:: with SMTP id c1ls2620504ljr.6.gmail; Fri, 16 Jul
 2021 12:22:49 -0700 (PDT)
X-Received: by 2002:a2e:a884:: with SMTP id m4mr10133213ljq.406.1626463369073;
        Fri, 16 Jul 2021 12:22:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626463369; cv=none;
        d=google.com; s=arc-20160816;
        b=BHoQJlGsFNUoXuIRl9fiGvWAyobXLrAQgt0ehCNmLa+aXCL3qiyf5E7LexFuR47ri/
         Wz6VULncWvjf/cxXD37fzTQfRNb/6qhNksRjsfnIaMeqO8vYCUNGVCPIHveU+g7evXPK
         EW5GyW9Hy6pI8FXEmQnJ5MXdThtnrFRSFI676+NrmzjK3TK9xrRF3cvzoZnaEABuVg5h
         g3LCPVklDHHO5VXYsf1bw/VZra+xG6po1QXPFxfl18Gl5kt7kx8O6vQ+D7XDiVJSQvU1
         JGho52UIJ07vKPPkhGvsOE8X3nZJn8LhxZzLGiayaZqBmeODz8PMx+s5JES6iqI0MXzP
         KzIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c7SncrRVXEiSFd5s6P7BNWlKCS7FA25Smw587Zq+ifE=;
        b=gUTYXPNIqEHaErjsnePDv3tfkTuYhIhrPsA3m0TpZEmQcK0LIgh8PwajVrpzAUbPlV
         MkF2GwHvsjz6Y0b0qjzymPn+lGzG8zUi+NJkEC5FDwjck4pshTAfcI9JTGbqAT+Suw2b
         VEpTJwJLA26Zo2myXjig+TYFilapQsgC02+W6/sPISbglqI4vXyqnC6r4OvTltYhZYom
         P2xyUAC5FS4JtetqEF3Zi8KDngWvviCuUQMf2lx+iNh0HkClfkxDkn4Ym6AVE26GsMSf
         1d3bHD4sa4tUdrgW4T1T2JmQePi7/WuiwatgLjyw8H3Ogspx9bBVMImlHHV9/ohJqvtl
         owCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=PiTfme1H;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id v138si497240lfa.6.2021.07.16.12.22.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jul 2021 12:22:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id b26so17765083lfo.4
        for <clang-built-linux@googlegroups.com>; Fri, 16 Jul 2021 12:22:49 -0700 (PDT)
X-Received: by 2002:ac2:5d22:: with SMTP id i2mr8805101lfb.371.1626463368629;
        Fri, 16 Jul 2021 12:22:48 -0700 (PDT)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com. [209.85.167.49])
        by smtp.gmail.com with ESMTPSA id k11sm1062565ljj.132.2021.07.16.12.22.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jul 2021 12:22:48 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id 8so17709142lfp.9
        for <clang-built-linux@googlegroups.com>; Fri, 16 Jul 2021 12:22:48 -0700 (PDT)
X-Received: by 2002:a05:6512:404:: with SMTP id u4mr8574325lfk.40.1626463367816;
 Fri, 16 Jul 2021 12:22:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210714200523.GA10606@embeddedor> <CAHk-=wjQeeUiv+P_4cZfCy-hY13yGqCGS-scKGhuJ-SAzz2doA@mail.gmail.com>
 <YPHUJsiaOuqzW0Od@archlinux-ax161>
In-Reply-To: <YPHUJsiaOuqzW0Od@archlinux-ax161>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 16 Jul 2021 12:22:31 -0700
X-Gmail-Original-Message-ID: <CAHk-=wg-qBVjhqoRiV0EdkFSpP1FebmRYwjiv-=GM3EVQYbBqg@mail.gmail.com>
Message-ID: <CAHk-=wg-qBVjhqoRiV0EdkFSpP1FebmRYwjiv-=GM3EVQYbBqg@mail.gmail.com>
Subject: Re: [GIT PULL] fallthrough fixes for Clang for 5.14-rc2
To: Nathan Chancellor <nathan@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=PiTfme1H;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Fri, Jul 16, 2021 at 11:47 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> I am not really sure how to resolve that within checkFallThroughIntoBlock() or
> fillReachableBlocks() but given that this is something specific to the kernel,

It's not at all specific to the kernel. Yes, the particular example
was from the kernel, but the issue is very much generic.

Yes, that particular example was from the kernel and used a CONFIG option.

But I can actually point to user-space code that looks very much like it:

   https://sources.debian.org/src/libreoffice/1:7.0.4-4/stoc/source/simpleregistry/simpleregistry.cxx/?hl=223#L223

look at that code, and tell me it makes sense.

You want to have the fallthrough for the case where abort() isn't
marked as noreturn, but you don't want to get a warning for the case
where a compile environment *does* have that noreturn thing.

See the issue? EXACT SAME THING.

This is in no way kernel-specific. The fact is, code can be
unreachable without it being a bug.

A common example of unreachable code is things like this:

  https://sources.debian.org/src/apparmor/2.13.6-10/parser/libapparmor_re/chfa.cc/?hl=338#L338

Look, it's a "switch (sizeof())", which means that only one of the
cases is ever going to be reachable.

That code doesn't actually use "[[fallthrough]]" right now, and just
uses the implicit fallthrough. But imagine if it was converted to use
that fallthrough annotation. If the "sizeof()" isn't the largest size,
those fallthrough's will be fundamentally unreachable, because the
whole case is unreachable.

Warning about unreachable code is simply WRONG. It happens very
naturally in C, exactly becuse people do conditionals based on
compile-time constants. Those compile-time constants may be about
things like "sizeof", they may be about things like that "abort() may
be no-return or not".

But it can also easily be about patterns where you always check error
returns, and some functions are inline and never (or always) return
errors, so that your code ends up having stuff that is just statically
always true (or always false), and then the implication is that there
is unreachable code that the compiler will just compile away.

And no, this is in no way kernel-specific at all.

That warning needs

 (a) a different flag - because "warn about unreachable" is completely
different from "warn about implicit fallthrough"

 (b) point to where the warning is

but honestly, it would be better to just remove the warning entirely,
because it is just fundamentally wrong for all the reasons outlined
above.

                  Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwg-qBVjhqoRiV0EdkFSpP1FebmRYwjiv-%3DGM3EVQYbBqg%40mail.gmail.com.
