Return-Path: <clang-built-linux+bncBC2ORX645YPRBOGGVP6QKGQEER3UTQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5FB2ADEF0
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 20:00:10 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id 33sf10004512pgt.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 11:00:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605034809; cv=pass;
        d=google.com; s=arc-20160816;
        b=RW66rCoWxetzdN2HFHFIeZdG8A6F/41/l0erndtezBJg7SvOjc8/rLTxuN9FXAyl4M
         Phl7nM3T2C3of4EvF6lV65TTjwsb5q517+wRAvt4HWjyVFnKLUa3drukLM7JK+/h3wPl
         6mreIEJh8sqLMcQIPzvUb/F1BT1nHIWPN+7WulYiKPCBTllPmQPhp4YI2W1+gB+EHvO2
         Qm4VzSP7Gj24BO/z0v8EpHWqZ0oN/L0PVVtsjWBcTvfL3+Jh4x4uykgtqlnqIN2EoPNe
         4RpkhCYyGYLakUyhzXQs6WIKTAtu56vWjp0Ezw8XhPT57bNrPIjNpNAGYjDr7XY6Ao2n
         GzUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=NxBhinRBbyBJDl7Vb0dK30eP8OH4gDe2YzRxHeRcD40=;
        b=qtMg9+V1CfOiNNOvoYvc2dxx7GUZUcC1HwbPdumTcepb0bwT4Q+4B0yUKxtDy6Ckj1
         ePQMoaF6aRnzJj55ZbGH/zai8/jvpsmwWmBiUO1Km6vYUYtFQ8hIpx1pM7YVFpdT9aiX
         QwF7gCeJTzY09Syh/TdqDVKSZhbMZfztpQ9zhOuMEab1X1LaH3lFFhfgnmPVnHcHwtWK
         M0ftCz/uc7s7PQQ1zdqzweUZ1H2TqcEFU1wlOLhiqGn4sgBjVqrdcJHtXvgWkf8wOIiW
         k0TiEgLwMOMlSMBNElO9NSQgQy/iU76rfBhsq903VH0IAD4hHfzrAXHV8tOMqpNIyCtL
         pT5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UAf9RqBB;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NxBhinRBbyBJDl7Vb0dK30eP8OH4gDe2YzRxHeRcD40=;
        b=Gk0qnUBFKbFS5VEFRkpDQdQdFg8ZFVlSRyVz/CabjeZXpYj/EkeGA7sbcd/mKTLszL
         1IvF505qPIYt31FmZK7MnS2ZBUi6Jry7Wc28VkZ5JL0oE1ejcga6fsalUpey9NVVUVXy
         jJNlSxJ2a+QCcfAlHeh/7j2CIRu8k+lUsfbr4fBKSs5am1OSAUcqGmkDytI22IrBOvKt
         3CWLoFXeG+5RdJpRm58JV6fINgxmXIN1HZpe5TQNBpiKwWeYB0jMx3WREOZ+VEMKTGuU
         r4FosGVMjb+7VWXlYmFBEjXCBy7ABbUD0IqDbiZdkk4Z0D8ClJaRS+BZRDAx37CRUbgI
         +b2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NxBhinRBbyBJDl7Vb0dK30eP8OH4gDe2YzRxHeRcD40=;
        b=gdAIHQP9hB1sWUVUT063EtOOSoLkCu7zDM9OJAjiIwWMXPAvE0h1Go4v6cS/Sx8U4s
         hATMsAm+FTofloFt3DIznQH996SL8ljqOR0baF0xkptWJajxyyZxruROYQQf3UJ823Sc
         ozsboUPs3aJKLn90CpJBrZXRaUmg4mfceMmpOIt/F1QLg9Tfs0YF5n4uZLb1NpDPwhrB
         u3a/+9j9t0ezZGWI5xxQIRgRiPS1BpXzZBfNvwN8JH9tS+6JU9xEY7F5fvjOGUeknLt2
         Eixxz9bWvM2HW79vR9VHn6kyAyPMDckJEUirc/cQINOZl1dsBrXcN/sRSjOZUfb6BElP
         NXKA==
X-Gm-Message-State: AOAM533Gb2+Rduns04QU1L6B1QaKUO9Q1hRWmld8qBASjh1wHxiK22u9
	fMoZvKq5FMs/ntKLU84TpJs=
X-Google-Smtp-Source: ABdhPJxFdyONTwsSGyYFp5ZrOCL9won6gNMjW7a0q2dlxOPSdE1zu0cDFxhxpKFHB4hV1PECH2PB3A==
X-Received: by 2002:a17:90a:c381:: with SMTP id h1mr627807pjt.2.1605034808958;
        Tue, 10 Nov 2020 11:00:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3712:: with SMTP id mg18ls2516280pjb.2.gmail; Tue,
 10 Nov 2020 11:00:08 -0800 (PST)
X-Received: by 2002:a17:90a:9403:: with SMTP id r3mr600544pjo.66.1605034808295;
        Tue, 10 Nov 2020 11:00:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605034808; cv=none;
        d=google.com; s=arc-20160816;
        b=ZCl6UZ9sYxyYoWAQOEJYzOwN3ZQq4YwD767+VpLylsQZs2hxUceIWXRrDvHQTfUpB2
         U/jzHvrI0xivKLxnlsh50tZgOw7tyIHtJg5VaMsL/Vw1CnwC7nnV3ZRoJKn5oQCcd2av
         3YsNWA3yo+ld/Q4rVcUTy2I6XwEo/H2/VX2UVjWQW4FLuEC6+z7FphZDm66llapbJKLT
         bx9bSpfUFYbtf7ybQryKqkq0w93NJilDLxdJVM2VrvJ2sbwzXDZ498He4mGpS065jEl9
         tBrQ7T1yx/7vFurnBV8NKcM9gV3Y0DVr13jK/UVv+MjNIlkQDmF7puWVOdksaKM08n9g
         I+6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HQMWJ4qrTrrDaVP4fR8AYbnLL+HhbqUgRWbw+YSQ1PU=;
        b=yX+hUYlqRmjz4w4dA6V60JheiTfmcpw+JzVgYckPDrEMllhRfLxwHaxxl5NbIivlgR
         Gb0mBD2n6npImOSS6bl2m2E388kF2W6hjFlb5CJ8NF/5nEL0Jcc679xLgyWLfuitTVop
         lBn/d9f43g9grUaXuWcYKWCYbhMaR/06uI8gfVZEaDNZX/koZlBCZ/k7+DNm0EwVdhdl
         N1bvVyW1VBqrc7jrmP145nzK9/goNznsmKSbK+vRNvb6J22BhbiYllDxiBF8HKopt8/m
         FbRdnpBUypjbZhPAzXZ9ZRGFWIYgZh99y6IyAbyXEq9ddVOWNosKQDDP/Fs5JKYUU/qt
         oaFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UAf9RqBB;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id k24si381221pjq.2.2020.11.10.11.00.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 11:00:08 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id u24so3159880vsl.9
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 11:00:08 -0800 (PST)
X-Received: by 2002:a67:ee93:: with SMTP id n19mr12787183vsp.36.1605034807022;
 Tue, 10 Nov 2020 11:00:07 -0800 (PST)
MIME-Version: 1.0
References: <20201015102216.GB2611@hirez.programming.kicks-ass.net>
 <20201015203942.f3kwcohcwwa6lagd@treble> <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble> <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net> <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com> <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
 <20201110022924.tekltjo25wtrao7z@treble> <20201110174606.mp5m33lgqksks4mt@treble>
In-Reply-To: <20201110174606.mp5m33lgqksks4mt@treble>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 10:59:55 -0800
Message-ID: <CABCJKuf+Ev=hpCUfDpCFR_wBACr-539opJsSFrDcpDA9Ctp7rg@mail.gmail.com>
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Jann Horn <jannh@google.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, kernel list <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UAf9RqBB;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Nov 10, 2020 at 9:46 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Mon, Nov 09, 2020 at 08:29:24PM -0600, Josh Poimboeuf wrote:
> > On Mon, Nov 09, 2020 at 03:11:41PM -0800, Sami Tolvanen wrote:
> > > CONFIG_XEN
> > >
> > > __switch_to_asm()+0x0: undefined stack state
> > >   xen_hypercall_set_trap_table()+0x0: <=== (sym)
>
> With your branch + GCC 9 I can recreate all the warnings except this
> one.

In a gcc build this warning is replaced with a different one:

vmlinux.o: warning: objtool: __startup_secondary_64()+0x7: return with
modified stack frame

This just seems to depend on which function is placed right after the
code in xen-head.S. With gcc, the disassembly looks like this:

0000000000000000 <asm_cpu_bringup_and_idle>:
       0:       e8 00 00 00 00          callq  5 <asm_cpu_bringup_and_idle+0x5>
                        1: R_X86_64_PLT32       cpu_bringup_and_idle-0x4
       5:       e9 f6 0f 00 00          jmpq   1000
<xen_hypercall_set_trap_table>
...
0000000000001000 <xen_hypercall_set_trap_table>:
        ...
...
0000000000002000 <__startup_secondary_64>:

With Clang+LTO, we end up with __switch_to_asm here instead of
__startup_secondary_64.

> Will do some digging on the others...

Thanks!

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuf%2BEv%3DhpCUfDpCFR_wBACr-539opJsSFrDcpDA9Ctp7rg%40mail.gmail.com.
