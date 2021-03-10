Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB2EBUWBAMGQE7WSAPAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id A83D6334A37
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 22:58:01 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id q1sf11732512ota.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 13:58:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615413480; cv=pass;
        d=google.com; s=arc-20160816;
        b=VPILvi0B8wkzpXDNNAObxFL2y2lkZjaaIEOKSw4YKKwc4lEHwAY2zGFr5FvlY5+03v
         mQuVKErsEwSL38LxcMQmbncjO8w2++ZC1BZ74s1TKjEq41Aq1v/Estf1AR8kmw6DvCOs
         n/CfuGQ04C+7eHzE05yfXB+Cbp+a5nZ5UjqbOhSGhKy+V1QfhrEAABmREtcgySBqyh7k
         Oc/CkBBQ01rIanrIvlrwIc6I8h8UhKK+jiu+SvoF9AR0pF5koSHc9bs0t/XE7elreK/f
         8WwryjNphYqfzfDmH7/4V82MVuZuQG06SCtMJljTPijyvj4l2dRAczS8NKJvvf5Dbydp
         Koog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=y6uS2e97sZ4U6mRouEZWpsjXz3Tp4DnyzDH/76Ecy/U=;
        b=GK4WptHKdnzCwXlMbyzCHQMvQ6/jnnIiOFj60laS0WmkLYh5fBw0tlciD0JjqCqeXj
         4S7X9xIL31TfI8uuP5zs+XVXxRF1dD6frp1oJGGy3V0Yryo/AQqN47ock9YPdLd1usMu
         N0DJGKhX4kR7orvg4qullgCMlhFGZQihImLP1TsfJ/7SSiO4dylGaKyhERhOlC/NcJap
         FtGQhgPayApKXGxuKNzaNahH5Q7b8npWgGMzg4c3zMgoA+cdR9F+rbdPFp5/WPkpHvxF
         CyprDD9hOgsII+HwR2SGBGJU0K3Sq4pwBl6XYKomcDcYK9Wje4qXuKtHoEFVZJzAmR7m
         hDIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eKpgHXtO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y6uS2e97sZ4U6mRouEZWpsjXz3Tp4DnyzDH/76Ecy/U=;
        b=lDrqxnRDYsWu0EZQ7LWsinHqVxfBqe33y4Xci0mJvMshasMXQ7g2IFIKyZ8zWFrtIv
         yaz7hHIxC8iIql0fjldUeJP1ITcxe5LWNC1IdiQnMitntBqg8g+45S5fzWZ+LCRgn3b8
         Ijz/yJwrCD9WWD/GAs3sS7lhJ5zwpKaKVCMkNVT/GxKi1TUSv4vXojoRZcXo/hu4OuDa
         FhyBSNbruKKesSgiNmHTKcsBSPMqdBbE/9jUYvFSwPlEJc86Nbpqc5nb6pJhivPadqpu
         dPS3DNClJr9n7zQgTE0vpW8miIZmv7mH86ZuVgOhQItyTWooNLoebIYXQNWCA4+ogpxd
         OLTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y6uS2e97sZ4U6mRouEZWpsjXz3Tp4DnyzDH/76Ecy/U=;
        b=E9l8+dsJBElNu5KO8GYDF8JXGQHqbekjwv4oAvWCvFQS00IvJTBmoHB75uZkFFm0Ub
         tjfL8uwht9WcjVJqB1R3oahuh1dLKgMRwXNEQLQrr6W1Kfq9LSKBlO9XvmI30J/t8RNS
         Ovp91i6gKerI40Y97C0vZCKMZQ4hS37mYjnWSODEzE711y3kNpQuqzoYj0ZJC0tIuFSm
         j+hI5vNSOJDaWD9WorlLcUZRWL/5yl9TztXnuVdQW/HPcjvKX1FXZknaOtJ4rEbHaT7A
         rM8zfXyIgey4IoDFHgCn/lUmSUmE1Hg927dTRw05t10sigktMOzS+zH9mnBKMm4KiSRy
         WWgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y6uS2e97sZ4U6mRouEZWpsjXz3Tp4DnyzDH/76Ecy/U=;
        b=PK2tIwB34RhYORa3pW/DlnWOQlb4P8Crs8iq7ovMXFj6r2gXwA9c1HFIwHg22uUCBn
         CkQWulQMWEZBuQ6t3oyyGwlwNQzmg4tWBcJhAf7oObFlno2r+WfDu5llUJxwmHC2i95w
         q7gfcEvje3Yds81Fj9oLDxA7WDUSBLgLYcD4vNEdvjlvo7MNLL/OcJuhLvbOA6Pv/fj+
         XlrjelICh8JV/zevT/U1y8Udqk8+g3B3hxrvW7e73KFwdTLqKBoPgbKpSF3lZSRV5zUm
         iLgDgPa2bKwyOo7xsv97dmF1xmhkzK/FhTF5K4EEhRZAQpaMHEesKe2xYWO38VH/6z/h
         jSIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533E+7rfxQfJIp0pD1adxIUwjrky7+ktmLUvpABsgpaeeT8uk7fF
	uSIXbgCBNJOJDJr+csdnKdM=
X-Google-Smtp-Source: ABdhPJxB7jAgdkHyc2RVlsqExkgH3jWhGs23tXHlSxcglbkVZqMQ9JOvqKaGSfwOcv0b26sNv1P8LA==
X-Received: by 2002:a05:6808:13c5:: with SMTP id d5mr3794003oiw.103.1615413480698;
        Wed, 10 Mar 2021 13:58:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c650:: with SMTP id w77ls855166oif.1.gmail; Wed, 10 Mar
 2021 13:58:00 -0800 (PST)
X-Received: by 2002:a05:6808:114b:: with SMTP id u11mr3784869oiu.52.1615413480308;
        Wed, 10 Mar 2021 13:58:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615413480; cv=none;
        d=google.com; s=arc-20160816;
        b=NJqos5lwgSeqG0MP9weAwQR39FIXeUTAztfEjq0/Ys/N4gBIkpgKAGkErZpnb5Z3r4
         2kqTw0OnYl6q/arHblb6bllgfdUotMIygkmXplUY3UhEEmMTEFqMjlG/old6iYvqNyCd
         jUrvj3hiYht0PCiRrFBjwjPk5P6EnpIvin32IoTEZN8KcBhJ3xASPxTiLw08cmAMEJpe
         4bPUcIanTIISCUrxYrliBL7xeSoOHiOfvi8VmXEGckDwwwmaqXbAWVY9uLrc9VFZg1Hd
         8QyJzAg//NY56B2UFOm381m4Ol8uNQeTrSooIEKAOtkS5HKySBY/kiCpNhn9dBEuyDfZ
         N8Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Wt/aYrFcnMjEbcU8t+EUxk6Pl8rJHj95cuGNfpHyPQg=;
        b=ymseKy0YDeRsXvaL6GMb6tGUJghfRiG32GSKaiNtvzsMYB+91FT3L5vroN4N81DYf1
         BInRhbBnMSg75/LDpBI8g6aUdMD5TDJH87cIckolre0Y2cEPA56znBUELmIf6hSlCVDP
         snhPqVlsgJtzGsk7VgAr4uVWsRLuaolimtIHDUHDXU7jrSKeRMmkSPnmTarEaywv9zy7
         IDcZcQy9v7S9VVYFuYrbp2aoBb5qo8dhkN0zd6Nrjlw6RtE9dlp91ZjmPCiYUheeQqqX
         BVHwOsht0DQGJFomQsThomrKItXBJ1eqDsdIl5uPnvpZEgpdJH4zzdqKeL0chtWi41+M
         4I9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eKpgHXtO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com. [2607:f8b0:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id d15si45520oti.2.2021.03.10.13.58.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 13:58:00 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) client-ip=2607:f8b0:4864:20::12c;
Received: by mail-il1-x12c.google.com with SMTP id d5so17057298iln.6
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 13:58:00 -0800 (PST)
X-Received: by 2002:a92:c7c2:: with SMTP id g2mr4389474ilk.209.1615413480036;
 Wed, 10 Mar 2021 13:58:00 -0800 (PST)
MIME-Version: 1.0
References: <20210225112122.2198845-1-arnd@kernel.org> <20210226211323.arkvjnr4hifxapqu@google.com>
 <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com>
 <1614559739.p25z5x88wl.astroid@bobo.none> <CAK7LNATUSJ5T6bs-aA3sMQgXKWfcyWJLDfhmteBhQ5FuUR52Zg@mail.gmail.com>
 <CAK8P3a3yF+JV3+Xq5QtD_59JqxA7akz=u=0t05Gv-isHD9Kv4A@mail.gmail.com>
 <CA+icZUWk-9i8BSf70qE_9f=mekscQ063q+aUKzSNBymNLAbcTA@mail.gmail.com> <ros2o1p7-r65q-n4p-3o38-oo36rr58q041@syhkavp.arg>
In-Reply-To: <ros2o1p7-r65q-n4p-3o38-oo36rr58q041@syhkavp.arg>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 10 Mar 2021 22:57:23 +0100
Message-ID: <CA+icZUW8SqpTuANz7brtR+QSxKn+UnYOVve-C+TOMh9RqdQh+w@mail.gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Nicolas Pitre <nico@fluxnic.net>
Cc: Arnd Bergmann <arnd@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nicholas Piggin <npiggin@gmail.com>, Fangrui Song <maskray@google.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Andrew Scull <ascull@google.com>, Mark Brown <broonie@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, David Brazdil <dbrazdil@google.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Ionela Voinescu <ionela.voinescu@arm.com>, 
	Kees Cook <keescook@chromium.org>, Kristina Martsenko <kristina.martsenko@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Marc Zyngier <maz@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eKpgHXtO;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Mar 10, 2021 at 10:47 PM Nicolas Pitre <nico@fluxnic.net> wrote:
...
> > With CONFIG_TRIM_UNUSED_KSYMS=y I see a 3x-loops of building .version
> > and folowing steps - got no answer if this is intended.
>
> Yes it is intended. I explained it here:
>
> https://lkml.org/lkml/2021/3/9/1099
>

Ah, cool.
Thanks for that link.

> With CONFIG_TRIM_UNUSED_KSYMS some EXPORT_SYMBOL() are removed, which
> allows for optimizing away the corresponding code, which in turn opens
> the possibility for more EXPORT_SYMBOL() to be removed, etc. The process
> eventually converge to a stable build. Normally only 2 passes are needed
> to converge, but LTO opens the possibilities for extra passes.
>
> > Means longer build-time.
>
> Oh, absolutely.  LTO (at least when I played with it) is slow. Add the
> multi-pass from CONFIG_TRIM_UNUSED_KSYMS on top of that and your kernel
> build becomes agonizingly slow. This is not something you want when
> doing kernel development.
>

Thanks for the feedback.

> > I did not follow this anymore as both Kconfigs with Clang-LTO consume
> > more build-time and the resulting vmlinux is some MiB bigger than with
> > Clang-CFI.
>
> That's rather strange. At least with gcc LTO I always obtained smaller
> kernels.
>

I cannot say much to GCC-LTO - I never used it.

If you are interested in Clang-CFI (see [1]) - which requires
Clang-LTO enabled and LLVM/Clang >= 12.
Some hours ago version 12.0.0-rc3 was released, see [2].

- Sedat -

[1] https://github.com/samitolvanen/linux/commits/clang-cfi
[2] https://github.com/ClangBuiltLinux/linux/issues/1259

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW8SqpTuANz7brtR%2BQSxKn%2BUnYOVve-C%2BTOMh9RqdQh%2Bw%40mail.gmail.com.
