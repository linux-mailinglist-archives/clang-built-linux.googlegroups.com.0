Return-Path: <clang-built-linux+bncBD63HSEZTUIBBJULTX2QKGQET53DWGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id C69271BAFBF
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 22:50:47 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id u7sf8478751pga.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 13:50:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588020646; cv=pass;
        d=google.com; s=arc-20160816;
        b=l8jXkE5mo73s1twRGR3bZEyU3xkdk640B00HnOpl7tFhBTtOnA4m/0tmmGKy0BU+ss
         Bew8wR0dmCF+YKSo6pe6YXMXQrunYuVmty02uMAoGzkUA6hghoiM7bZtI0ARgqFvEgZc
         blquBZZW+2+6EUWjoIKiUCTI79di2vAuQfN/k2mDn6gJpZ1YEx8rbM67wiGacG0pUJW+
         ciBA6ZPmmfblKc3fWl5PTLbcTNvYpAAm+gGRTbRx+ntfx5RkQGgn2WNnVeB9IjKt0w7S
         Kit48wQwZlx7ou/6nOTq34skZFM9Do7i04tM0bXmmr0RuHaF/GgzlmgFpcfkI1AtHUMc
         I7Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=OL6S/jM4YYm6BgvBh2RFoiGXPWZEJAtxcMbw7g6eXsU=;
        b=hQpFvivWrzuuIJBhsEGMlPl1sSZ8hhSFKdm/r8yz0lil+BPlvkbK9QzaYMgDEkkRKC
         V15ASGePoeuKmsB//IemJ5k1UiH+ZJKZFggLZXkaeesxRjx6kRj1j9EuNnCYE4FIl3DK
         qDLhud+3YE8BdN+W1epBK+AdcpUanXnIX/iSEfAFPS/jLPAmhAtQbPeWmty2ZP/cTSmi
         pbEbSkcZ+87bEgMEwGk4QkjPJNKLyp4K0elSv5Q0O4aPNtBps/UUZ0aIFligK0H8809a
         iyvtEOps2wAKSQN4gWOSGsgPjuSp3DUdVpjwo6vB/GBRcEGCl19GxxOWznOB/rr+0RCq
         VXkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n7znioTl;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OL6S/jM4YYm6BgvBh2RFoiGXPWZEJAtxcMbw7g6eXsU=;
        b=lIIIV4bf295Pxn0TD6OGYIHjWZYE6Ga3kuk2lkFJlq/+26ZhY/vXfpC0WjWk4Tdr1+
         xVvTBYcVUyZQJdWYPfgyc/VEPOQCLT3sko8pW+GiONrKoF6KPFCqA/6IdiT86YRTPLZz
         GQGHm2BBL9Q2ApOcaU4V2c1WWNPcN2I5l7gTzvTmYbdYk3JlWd6Bxf0m5bxAjK3jKhId
         FKQg0+m69S8WWuH1wk2SyN5o+qLlNIKTIOQEPL65AQfArSYXFUacghWzzHySFfrv9wbR
         e784dUziH0P7SFUnJrvtMwQjyNeNRU38Qiu/SGSwcSrBFoszU3rDL2X/axtuMPpZc74t
         /6/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OL6S/jM4YYm6BgvBh2RFoiGXPWZEJAtxcMbw7g6eXsU=;
        b=SRlmBVeDjRxPSg96ylZ5gZtwhIloHkrfQrUsdEhLPisMPAu7MzvSpFVwKPTxfxTsXw
         pkujdm2hWxsyRTswXW1OhRWu0VeyGrkFrsvRB6zXEaWbHIV19YEsk5UzQjuWW3DoAxwl
         G40p2Z6lWEvGRD4eXNCLWT2dbZ8SEZuKz1D2MkACfYAv9IYAS+LZb30TpHfXnIWknq6T
         49hoTozSgtvX3c5tCLUbG9IUSFVAZR9E5DsK1JJ8q2Puj/82M6I0EaikpvMJAJ9/C+yP
         uz6MdwNA0BiORsYHsIeHYyzCCXiDO1Bhid4X60WwQ/NyYHtjKLml4j763SlKXKpiWVvk
         TBfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua8fXVDkX4LUZJIM1DaayJaNBMAWVvxDqREtiMNmWWgtf+Bm9X2
	Geoiyk5s58LZ8fZCp9NTD5E=
X-Google-Smtp-Source: APiQypLrbKcWkqX2PXNTfR/SuCK7xciJD/Xf8pto/hWCm/XwqhJyX0oTRnI1hn2kkmSg6URziS6OZA==
X-Received: by 2002:a63:f70e:: with SMTP id x14mr23226468pgh.394.1588020646522;
        Mon, 27 Apr 2020 13:50:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ed0f:: with SMTP id d15ls14891520pgi.11.gmail; Mon, 27
 Apr 2020 13:50:46 -0700 (PDT)
X-Received: by 2002:a63:dc03:: with SMTP id s3mr5835820pgg.128.1588020646049;
        Mon, 27 Apr 2020 13:50:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588020646; cv=none;
        d=google.com; s=arc-20160816;
        b=gqn4XdZpl0r2po2Q5WPkyepwyML7H6z2ViQPypOKMmIPp0AYh8g7ERyOLCb48lI9aX
         u2y16fybrhYn97l8vZaaRswHjTw4DsqRMY/0t+wO3gstxNWFzoxw2BfX0HCSTgtfZsAW
         wKGQ2cBgVeZDk8MHheyMOSFjUYnfCP/PxhyLTteNg7NaZY08O7OgRHiHl5ViYpHqCjIL
         aSJGhDPpqtC5rGnS9V9hHaKxc0z1o4zHyvWk6tNHGFdLGs+mcgsUd48oVSg6NvybVCbE
         +dkfLX2brjCyoXKCICZST1X8K3hRzjpOlCuv6uSdDA7EkMhsC9rbcRKziyGP/SZtVXXU
         1Xdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bTIHOMdK7YuweFDISGpjSRjqaUmn5ybVIG5YH+MgHfc=;
        b=jFWZiApMel1Nw//eO+a7+bT/S3NVVYNbSttFF5SiAciW/PWRKOTjwDKzUze90JK1hc
         KM5C+wksugiOENo3UNzo9VxHasdrx2S8GabojvO8LCMr0ZjE9nkifEIq+yqH6hhZffi7
         qF915dPbL2cikTChSMataNEDIuT8fInS2Og187kaIBZo2aKrruaoaQVU/i5wIp40ChJE
         55mFLKoQpiic+lqXwPkDyG1gbTsh/6yxBQLsq1nnZEY/BAZ5jroA+dT/ELxR4PaoHrsB
         X2iCpdB1RuBMYHciFJzac3+481YrJs32KoR8TvZRnc/1EeilaqSf4A4e7fSTQM8iupXW
         iCOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n7znioTl;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t141si1203254pfc.5.2020.04.27.13.50.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Apr 2020 13:50:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A6E9121973
	for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 20:50:45 +0000 (UTC)
Received: by mail-il1-f181.google.com with SMTP id i16so18138218ils.12
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 13:50:45 -0700 (PDT)
X-Received: by 2002:a92:607:: with SMTP id x7mr21066130ilg.218.1588020644913;
 Mon, 27 Apr 2020 13:50:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com> <CAMj1kXGASSCjTjvXJh=_iPwEPG50_pVRe2QO1hoRW+KHtugFVQ@mail.gmail.com>
In-Reply-To: <CAMj1kXGASSCjTjvXJh=_iPwEPG50_pVRe2QO1hoRW+KHtugFVQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 27 Apr 2020 22:50:34 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFYv6YQJ0KGnFh=d6_K-39PYW+2bUj9TDnutA04czhOjQ@mail.gmail.com>
Message-ID: <CAMj1kXFYv6YQJ0KGnFh=d6_K-39PYW+2bUj9TDnutA04czhOjQ@mail.gmail.com>
Subject: Re: [PATCH v13 00/12] add support for Clang's Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>, 
	Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>, Marc Zyngier <maz@kernel.org>, 
	kernel-hardening@lists.openwall.com, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Laura Abbott <labbott@redhat.com>, 
	Dave Martin <Dave.Martin@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=n7znioTl;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 27 Apr 2020 at 19:39, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 27 Apr 2020 at 18:00, Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > This patch series adds support for Clang's Shadow Call Stack
> > (SCS) mitigation, which uses a separately allocated shadow stack
> > to protect against return address overwrites. More information
> > can be found here:
> >
> >   https://clang.llvm.org/docs/ShadowCallStack.html
> >
> > SCS provides better protection against traditional buffer
> > overflows than CONFIG_STACKPROTECTOR_*, but it should be noted
> > that SCS security guarantees in the kernel differ from the ones
> > documented for user space. The kernel must store addresses of
> > shadow stacks in memory, which means an attacker capable of
> > reading and writing arbitrary memory may be able to locate them
> > and hijack control flow by modifying the shadow stacks.
> >
> > SCS is currently supported only on arm64, where the compiler
> > requires the x18 register to be reserved for holding the current
> > task's shadow stack pointer.
> >
> > With -fsanitize=shadow-call-stack, the compiler injects
> > instructions to all non-leaf C functions to store the return
> > address to the shadow stack, and unconditionally load it again
> > before returning. As a result, SCS is incompatible with features
> > that rely on modifying function return addresses in the kernel
> > stack to alter control flow. A copy of the return address is
> > still kept in the kernel stack for compatibility with stack
> > unwinding, for example.
> >
> > SCS has a minimal performance overhead, but allocating
> > shadow stacks increases kernel memory usage. The feature is
> > therefore mostly useful on hardware that lacks support for PAC
> > instructions.
> >
> > Changes in v13:
> >  - Changed thread_info::shadow_call_stack to a base address and
> >    an offset instead, and removed the now unneeded __scs_base()
> >    and scs_save().
> >  - Removed alignment from the kmem_cache and static allocations.
> >  - Removed the task_set_scs() helper function.
> >  - Moved the assembly code for loading and storing the offset in
> >    thread_info to scs_load/save macros.
> >  - Added offset checking to scs_corrupted().
> >  - Switched to cmpxchg_relaxed() in scs_check_usage().
> >
>
> OK, so one thing that came up in an offline discussion about SCS is
> the way it interacts with the vmap'ed stack.
>
> The vmap'ed stack is great for robustness, but it only works if things
> don't explode for other reasons in the mean time. This means the
> ordinary-to-shadow-call-stack size ratio should be chosen such that it
> is *really* unlikely you could ever overflow the shadow call stack and
> corrupt another task's call stack before hitting the vmap stack's
> guard region.
>
> Alternatively, I wonder if there is a way we could let the SCS and
> ordinary stack share the [bottom of] the vmap'ed region. That would
> give rather nasty results if the ordinary stack overflows into the
> SCS, but for cases where we really recurse out of control, we could
> catch this occurrence on either stack, whichever one occurs first. And
> the nastiness -when it does occur- will not corrupt any state beyond
> the stack of the current task.

Hmm, I guess that would make it quite hard to keep the SCS address
secret though :-(

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFYv6YQJ0KGnFh%3Dd6_K-39PYW%2B2bUj9TDnutA04czhOjQ%40mail.gmail.com.
