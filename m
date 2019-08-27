Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBR4RS3VQKGQEM2LVJ5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id A78B79F370
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 21:47:20 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id f71sf101877ybg.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 12:47:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566935239; cv=pass;
        d=google.com; s=arc-20160816;
        b=rIm9gjNPAs5+/TYivEQ1FaAJSLF5QtPg/at6fQp3/f02LnTj+6UY2tkCYHxHAo+PVp
         qPhQDWc+h728cwulkMXldUQ3zGezsYF1CTyI91cakLr7LdwMXXbTW0hFjkrYFNzFegrD
         TFagp+FW87IR0JN1UzMu/SWNbLIO6c7dF/U14lbBY1/vf4Iqj8SOQlt1unG5A7e8B0Az
         zpIGt2JYlWgY2LaCYlPjuwoH7JNTekvi8/VVX9gcuI00K5M6xvq1XPY6ysU6PCQZbR/X
         MkfHO68bZbNw4cOKPxt/92KoARaBlDEx9m7eeyh1tgejQ1F0TDpqr/SVP/atfuVX4TkJ
         4nmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=AAKRiOU701CGUFRrbDxGaBN4YJCfyH+TSWSY+C2gKJw=;
        b=tieExatNChKi6vzY5ul6lG8hMABT7fQYusN5wIkt1UfilR4Pw73iEqVVtvw+8+Dp2j
         JdcQYx9vzyu2MbdRyYnbGJSmWQvBc+VDA3Cx9BUVbF4Wc60l0/GRxlNaJz+n1VIpM0ot
         4wCVN9TSpIieoaZGoAOZGHcj+OPbd19M9efDYNuMwnYru7g8Zxj5M64fj3mTK19oHrbz
         xsjEYMHjgnywTju2QMmAlsvk/SdEXWiPuq/PVnLLXbKt5uKr14s7ao0FX3AzZtUa9+/h
         EOSt93uEkMoJzEOU6RxoQD62SpUQsVIB3a1fOVfEMCNKBFbPd2PCVLdNHEH3c5cTOpS9
         L1Tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AAKRiOU701CGUFRrbDxGaBN4YJCfyH+TSWSY+C2gKJw=;
        b=s0CK5/JN35GOEzKEtR1mbyfBVtpbceMGYKEHKNtjcoPwCSukg0a5fngBPSkbr/1oJ6
         c4jkBVw5weOEjDzNnAjU7ZeoP+/xCLynS2HRBW1Y16xzwNqJrmcavKrUMcEGMH5MtqZw
         jMo58sVGQoTmaT/mJXptMhzzXVyp35x/nUFyCVhSiMZ8t3NW0iyrQsm0qmh4YxJMRHbv
         Yg3LrlvgaamBDI7u0IR/E21joGXU+KY1lzg8aq3edzgkRG9yJ0Sg5qX9B99A4mk5Fp2y
         tsZnrW8jBf0emiUiOJtSMAQdu/NgERvG9GdaF3Lxq7WyIk9cFT4bdXyDVXBxcnkRFRsN
         H8HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AAKRiOU701CGUFRrbDxGaBN4YJCfyH+TSWSY+C2gKJw=;
        b=aF68XxtDiVOSffa8Ha5fWlfJxSSWh9tvDYaESmAPF+jtyjeyY0iJwEjHkNhfQyotwx
         CHQ1W+RNp7f8SyhenOmbTnnBzh2FrMv5WVfjD51zSEQO8Kvy8wT0ym6C3QKojI3bwcM/
         STjN93zk+3XrF4eFuVzq56bYVoGKbbjW1kjtMABEHWQEqnQ/w4auW9JFNcLetsoU/W93
         ej3vKNI8AJsA0QyIB0WQHyYqGBcYR4/y7oLygp87e7cTMGRYjgMLPIxJ8guloOR2rfrl
         PtKiVcdopCXeu7kCxEkJMjKhjT7ayrWi4dak913cR1Is/3Pt1awrmi0CldJNnFbm9KfX
         DY+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWH+OYNsi2bFAp0Rw0/1uA7ypN2RT0+OpbdfLeeYpG1/mKoB5Zy
	/yi8QOR3zXjCg/EZnP2RmNM=
X-Google-Smtp-Source: APXvYqyMzgGMWKgMeAhvOU35apeDHJTxVMPOLcBc7EPBIn2EGr1KjPYTAFRFFgggY+tTnoZh/oPNAQ==
X-Received: by 2002:a0d:c804:: with SMTP id k4mr446067ywd.63.1566935239450;
        Tue, 27 Aug 2019 12:47:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ae98:: with SMTP id b24ls47417ybj.12.gmail; Tue, 27 Aug
 2019 12:47:19 -0700 (PDT)
X-Received: by 2002:a25:4189:: with SMTP id o131mr383499yba.191.1566935239121;
        Tue, 27 Aug 2019 12:47:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566935239; cv=none;
        d=google.com; s=arc-20160816;
        b=XiIltAz0sOuo8gd4LEXg55aiGm3fiaRPPac6CjIngbUDD3cLgyqwP8xltXXwjT4A/Y
         2616PM+dB8updlcZqqzBljfdL5iniPc8AixtkbwwhafbafWr2+VmKChdSwC1Ziwbvv6a
         bqOsVLBtvPLD5jFwc6mhEeS5Ep6z0vibrGbhhWSMrNM6GUjipCtUP/7wWKp3pf/C7m9z
         b2CPDoSbFiQQ6TkZqdTHM5gdZ3bhBLA1sxOADoNksVSgoKdEQPnWGGW+npanzRx2pj3F
         oGQKdbiVy4SSRSkYzlfW9HXGCsTpTl+L0rIiAQCKxdWF5OxvCVCjzDFq6w9Y6mEWxxew
         Kj4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=4To99pYhN71BTubz3nGrKNYdHAubr+/NI0V79/X3hJs=;
        b=hpRyyu3nNf2EfVmGH58zOPn8s2zTM1wNus0tF+QgVo28yTtaNyriBewpvun1V5fBFi
         Vn6Qu8OUyIUnm8Gn0Ivn68h+jjJeiHUnsfvI9JHieAhQlwtYr3xPgksusRmxwePfR7dN
         WuJrGckz3v1ii2MAh+sO0WSH/UeDShq4BClTOUVgKnCztkrL6PaCFdt4pZVtmxM782yk
         BC67mX1ZuDTkGd1uaDb+C/6gwv3YJEgD0PBeiS2WrpGUB8bgRCKhvcYe2/ACqgDg8o3p
         9FNSR7bWh3BamF+NkBzHLwaqcJfAHWojzl0XJsNk+Xy4NzI8436liCYZ4OBv5jJEYCtd
         E1CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com. [209.85.222.193])
        by gmr-mx.google.com with ESMTPS id r134si14601ybc.4.2019.08.27.12.47.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 12:47:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) client-ip=209.85.222.193;
Received: by mail-qk1-f193.google.com with SMTP id 201so249644qkm.9
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 12:47:19 -0700 (PDT)
X-Received: by 2002:a37:4fcf:: with SMTP id d198mr228694qkb.394.1566935238574;
 Tue, 27 Aug 2019 12:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com> <20190827192255.wbyn732llzckmqmq@treble>
In-Reply-To: <20190827192255.wbyn732llzckmqmq@treble>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 27 Aug 2019 21:47:02 +0200
Message-ID: <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as
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

On Tue, Aug 27, 2019 at 9:23 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> On Tue, Aug 27, 2019 at 09:00:52PM +0200, Arnd Bergmann wrote:
> > On Tue, Aug 27, 2019 at 5:00 PM Ilie Halip <ilie.halip@gmail.com> wrote:
> > >
> > > > > $ clang-9 -c  crc32.i  -O2   ; objtool check  crc32.o
> > > > > crc32.o: warning: objtool: fn1 uses BP as a scratch register
> > >
> > > Yes, I see it too. https://godbolt.org/z/N56HW1
> > >
> > > > Do you still see this warning with -fno-omit-frame-pointer (assuming
> > > > clang has that option)?
> > >
> > > Using this makes the warning go away. Running objtool with --no-fp
> > > also gets rid of it.
> >
> > I still see the warning after adding back the -fno-omit-frame-pointer
> > in my reduced test case:
> >
> > $ clang-9 -c  crc32.i -Werror -Wno-address-of-packed-member -Wall
> > -Wno-pointer-sign -Wno-unused-value -Wno-constant-logical-operand -O2
> > -Wno-unused -fno-omit-frame-pointer
> > $ objtool check  crc32.o
> > crc32.o: warning: objtool: fn1 uses BP as a scratch register
>
> This warning most likely means that clang is clobbering RBP in leaf
> functions.  With -fno-omit-frame-pointer, leaf functions don't need to
> set up the frame pointer, but they at least need to leave RBP untouched,
> so that an interrupts/exceptions can unwind through the function.

Yes, that clearly matches what I see in the output where it does

   0: 55                    push   %rbp
...
  73: 0f b6 ef              movzbl %bh,%ebp
  76: 8b 1c 99              mov    (%rcx,%rbx,4),%ebx
  79: 33 1c aa              xor    (%rdx,%rbp,4),%ebx
...
  95: 5d                    pop    %rbp
  96: c3                    retq

I just did another simple test: an x86-64 defconfig build with
UNWINDER_FRAME_POINTER shows the exact symptom as
my randconfig, so it sounds like any configuration with frame
pointers would, and there is nothing else to it (this also makes
sense given that it happens with a relatively simple test case
outside of the kernel).

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2DWh54eroBLXo%2BsPgJc95aAMRWdLB2n-pANss1RbLiBw%40mail.gmail.com.
