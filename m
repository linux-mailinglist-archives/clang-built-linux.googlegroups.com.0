Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB6MUTLVQKGQEVFGUVXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CB9A0438
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 16:06:50 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id r17sf537261vsp.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 07:06:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567001209; cv=pass;
        d=google.com; s=arc-20160816;
        b=m81rbFIdLokNyJUuTH81isgYm5pqneW/eNhlAXB5UolMKYtx6u+dPDnLmTSB2NkCGX
         5hA3S9PFVIuM8P0Q+0lrKfIXb6xrNQ/lyB9S5Alm32cvuSuG8EjZ9PM76mH/vL1EGj4O
         8pe7aojP5eMIm8zXQfYHadVm2Ux9HJRllWOxoDoCOLkKBje8KtP1thXwsMAWs/e21O5y
         4BMIThlFrRQnY2mzJHC1oESHTm+tE8BBMfL48sQtpSXLSEhYYVqtuGNTpGErsvkrK46g
         BD9EVTnC1/GGqzEj8yQ7dsw4FftiwuuBUD8p0UeQdAXci3O3+XqgsAFeoSS69pUEFt5c
         LUHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=eqiWN7uQQkj1oGwQtRHVtOFKQq3GPC6N5D+YhBdR/kM=;
        b=qFUxh3+BWyyPYoGdymhP5xYcfPjmDSzYN5nFvOphz00HatcFhBeOFjaXFlZGt2ab2l
         sgeMwMvoPmgzixZlYIkPZ2UszlTV7KA0pBNmsCeuYuACurqi6YUjN+TWlvmuNw9sEC+t
         B4YWzAfnxw+bmcBWFIDXKrx5+EW069ZswbQEq51M7Rn0MCp/qtmtQY/k85ljTBqJoHzc
         0YIapBIiU2aniXKUjyaL+LXnoCSf1x0lGECHhlichha1/jotMM9MG7ulv46LtH/82T1A
         C3R/vJML/DV8Rns6aqu73jBaGWund0V2mljw1aurP7zu+cp4cfbVfYwKrBimi40N8lfn
         ApcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eqiWN7uQQkj1oGwQtRHVtOFKQq3GPC6N5D+YhBdR/kM=;
        b=c2a/tq70HyqJ6DyLC7y5QilyUmVJIRdhdVXW7cuAKMGFxe89vw6+BOeq8IlkZZER89
         WuMWpx0R0eYpWxirVtNQxnRbMI3nBiYbctodU3rfeCPEUJ59jM3LpUiYMLV6QeuubZvA
         8AhS4BGxWvcFvuCx1PPwm+ofXoOCGOgEJ52WuRLI9DhUPsdOVuL6P3lVYbPDT9dUgrnd
         3Qz5CxNbzwE67iL4U8ATlLoJAVGrpj8NwrmqulUlWgvN29y00n45e3ZfsIDJD2PcTfPZ
         vvMGneMVGGK/iygKZNRZR+8hK3zvC0K+OuUfkG03k3X8itp1v/VcLR16shBqGZAsobuA
         RW8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eqiWN7uQQkj1oGwQtRHVtOFKQq3GPC6N5D+YhBdR/kM=;
        b=pu/2+BkYiyOt590GiEB5+fmG0vYebRYnhDTCu02k97pVUhr+TQ6KsrXi2yYTzso59u
         ULOa2++YiUAqSxApj6/4xLh5R7kl8byd7MRBSfRc5AxfPIYxwQ5FFLGrFq8BGsdgiMOp
         i7uowJPIMqO8bn1iVumPwbdLc2rBDvIKlqZuIhA1htBGuF9oIGczIn/xCBnxnoHaYsq7
         2k6JMt8jlIk7/sp2OFeZu20N07HHoymSV6sLjq+rHqUr7H9gyvs2DiHj1oowjS16rjor
         P081/RqBR9O9BxyYq+yKYzusj767x8EK2JJ+8gbI49uXyI2Y4BTrhSYlK9NSN6Qx8on2
         44xg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWFdQXp1Cf+W8lGhlLiOQoX/KTc5LLu4DlhD4LHuV2+7WZ2TyCx
	UDzDxQQjHKjTebw/kmgrEng=
X-Google-Smtp-Source: APXvYqxEYp/SrvrzcejHrici1TanWu2+eujmx/2RxYqfil8BS5ji0e7iYkbFRSDMV7jiKcmpvr9Oqw==
X-Received: by 2002:ab0:443:: with SMTP id 61mr2068530uav.127.1567001209217;
        Wed, 28 Aug 2019 07:06:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:8887:: with SMTP id k129ls107423vkd.10.gmail; Wed, 28
 Aug 2019 07:06:48 -0700 (PDT)
X-Received: by 2002:ac5:c290:: with SMTP id h16mr2320974vkk.59.1567001208783;
        Wed, 28 Aug 2019 07:06:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567001208; cv=none;
        d=google.com; s=arc-20160816;
        b=UdqWgKk/ZB+X5BaC6tM+CG++AaE1bp4Jt6SaGTVnG3QxyqTrJ1uRXolYDCBKZHvYcj
         5p1iP9jopOK5EfGGc3GwcwgKLt8c66zz0zXrkHX3vI7wJ+e6fNot+1i2DewXM8YwdbqG
         SifygMa2XvBKpTwnO6kVN+b1QmAQUtIMJOQDl1QZwFOgYTYLTwhcNICXLY3mXyknIEDe
         jXDYyEQGIXeBUYZw0iC6HXTudXGavq8hg9G0yqiT55jUvLqIpK02TsMiZHlwzjx160dC
         G61D2fo9UPyxroXnvM4Okb5BxS+L4p1vvO/xwMSIGxuj9mmEMRBJNhWxCIt0203/bmSB
         uODw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=HCYlD95JsHarElAe+L4VlohLW1cThA2+xRRSBnbJqFM=;
        b=V9glT0p4ORRVpk1J1mH8ggGn4kk9bymw9RfAUmeFtO5udp3rVyWoqJFmuGy5LV+q2m
         F4CcMuVJVoqai6isme+WoBW+MMtZ+EcbTdI8hCKyqFk8BuLkOPCfkTl7KXE1hxExyrYC
         s5ak+pmlb1K6+44eNiMtJ0ssrYDEBvmQwurqxf/rru7ekVIDrKTNlGfMw/SgXtTfgj3b
         ydB9VQOCxsNwPgxhkyz20AhHBRWe26EA42kboK+M97Y0hJiLyP4qKbv9oZB9GvKx+b+T
         Y8HJGf7mJTKlclwdV1mjXfT3OkvVm7/0skRugjka/kKmK79aQaiQCCqIn5ftfVP+nVW4
         KWiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com. [209.85.160.196])
        by gmr-mx.google.com with ESMTPS id a128si152318vkh.1.2019.08.28.07.06.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 07:06:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) client-ip=209.85.160.196;
Received: by mail-qt1-f196.google.com with SMTP id q64so3123607qtd.5
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 07:06:48 -0700 (PDT)
X-Received: by 2002:a0c:e74b:: with SMTP id g11mr2805518qvn.62.1567001208190;
 Wed, 28 Aug 2019 07:06:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com> <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
In-Reply-To: <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 28 Aug 2019 16:06:32 +0200
Message-ID: <CAK8P3a0XqxBwRH2mkge0Ah87BnqobNWGkE4rhpmvNxGxjgExww@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as
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

On Wed, Aug 28, 2019 at 11:00 AM Arnd Bergmann <arnd@arndb.de> wrote:
> On Tue, Aug 27, 2019 at 11:22 PM 'Nick Desaulniers' via Clang Built Linux <clang-built-linux@googlegroups.com> wrote:

> http://paste.ubuntu.com/p/XjdDsypRxX/
> 0x5BA1B7A1:arch/x86/ia32/ia32_signal.o: warning: objtool:
> ia32_setup_rt_frame()+0x238: call to memset() with UACCESS enabled
> 0x5BA1B7A1:arch/x86/kernel/signal.o: warning: objtool:
> __setup_rt_frame()+0x5b8: call to memset() with UACCESS enabled
> 0x5BA1B7A1:mm/kasan/common.o: warning: objtool: kasan_report()+0x44:
> call to __stack_chk_fail() with UACCESS enabled
> 0x5BA1B7A1:kernel/trace/trace_selftest_dynamic.o: warning: objtool:
> __llvm_gcov_writeout()+0x13: call without frame pointer save/setup
> 0x5BA1B7A1:kernel/trace/trace_selftest_dynamic.o: warning: objtool:
> __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> 0x5BA1B7A1:kernel/trace/trace_clock.o: warning: objtool:
> __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> 0x5BA1B7A1:kernel/trace/trace_clock.o: warning: objtool:
> __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> 0x5BA1B7A1:kernel/trace/*: # many more of the same, all in this directory
> 0x5BA1B7A1:kernel/trace/trace_uprobe.o: warning: objtool:
> __llvm_gcov_flush()+0x0: call without frame pointer save/setup

I had a look here and opened
https://bugs.llvm.org/show_bug.cgi?id=43141

It seems that CONFIG_FRAME_POINTER is ignored for the functions
that are generated with CONFIG_GCOV_KERNEL. See also:

$ clang-9 -fprofile-arcs -fno-omit-frame-pointer -c -xc /dev/null   -o null.o
$ ./tools/objtool/objtool check null.o
null.o: warning: objtool: __llvm_gcov_writeout()+0x3e: call without
frame pointer save/setup
null.o: warning: objtool: __llvm_gcov_flush()+0x1: call without frame
pointer save/setup
null.o: warning: objtool: __llvm_gcov_init()+0x15: call without frame
pointer save/setup

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0XqxBwRH2mkge0Ah87BnqobNWGkE4rhpmvNxGxjgExww%40mail.gmail.com.
