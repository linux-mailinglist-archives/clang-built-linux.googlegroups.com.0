Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBWUGSXVQKGQEPCNJSYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFFE9EB85
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 16:51:08 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id t2sf12146470plq.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 07:51:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566917467; cv=pass;
        d=google.com; s=arc-20160816;
        b=sNmrjft7ryvN670Bhr3Ja5wZ9ny3dZ69xJkt9kaUmekSHKeTA8/tqArY6hV2IlLNOm
         xgw4ICrMkvBnff7EOiwyBVUm9szdmCOj4ITxBeScibtAm6gdNdejS78K0raJOxWZphr9
         h3KlkOpPM3i5NJRPJgIOPAKfnWGfRerb3AzbPX+tnUDWuCMV1E6bNOjhw5bGqPMN+uPY
         PJ6OtOZIWtZdK4KVf9sIq4tK0eW2woeBmW94CxU7QsdqlwLzqK6BMKj9fwIqv+vh2BLs
         G5JT3MMoiD7EsCjewf8PPTE6RovAX3l8s1if30esqHadET8B1Qlk8G7GeugHLB10Dq2c
         K3PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=4Owv9Hm/B4efQ4m6xuflbkPb9P9rAYWb31pDDHx7Y+A=;
        b=gacxeR7iyf97jbZn0Sv8gj6DE81EKKcAIQ/QC9pfnD9CDfGwlCOFGy7gi9pdwQvyAC
         Z/0ghHjCKIlBAQj8m/gQVQy2sn0eXjZu0wXFiZ31dLDvzkW3fe7VF4v35xfKLp+ItCWR
         Zm2IzvCpWvtCibBRzKXskM0gwpwN2X/v+RaRjGxh+G1IcjY3iXPIpsuCmcAETo9xQA94
         fYDzyu4XLSOcJitRCCYsnkKhT1NOqvUAyLog4JYq45ilTAabTAEfnvtrCYEgChFpKw69
         TIaOj3KlxiN6zR2nKJAxSIWQ2sk40bYGH9U5kZZ02Nz1y8/qB5i3lrqd0KhfzKL4bxWO
         JlCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4Owv9Hm/B4efQ4m6xuflbkPb9P9rAYWb31pDDHx7Y+A=;
        b=qxAZYOypAPaxbyEyC6C803LOgEL9cqQHM8yoDgZ0WyfBmwx/3M6hRPY10p7IQUuavE
         rfLKi1xN650N3WmeWcQi0rztoL+TcYwmtjHTbWCk6UsPAWn6ay1l7vwfiGIFaqoBB9UD
         +5IsgC3VXfdbj+dIgcERGPeTSoEYWh08KkfWXsxmubkqfD4TVn8Tp0kSC/LbuH7ZtvL2
         dKZMnIppixDCUJoh0fpRNfhZxeG8ZClSkeA1ErAp0nDDMBAKP43tcyHKAcFzoFINoAGY
         1qQktw5j9XjfxVAtQCondvGc5KE8jMZ3+foL6IAoYo/AxTeboyPNEhNcUfu6OzJj34t/
         6EqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4Owv9Hm/B4efQ4m6xuflbkPb9P9rAYWb31pDDHx7Y+A=;
        b=Ks6c1+/3qPML2dnvsTWlSYFfd6EPicPyUJ9uq/UVqFOgxOtsDRunCi5LPJUc2uwrZ9
         7+Pl1ov/QROQJ0Sgn6aUvNXyF5AuKRI2ZB1s2UyGxigaScpY5jo9NySLciHROrLIx7Ih
         yOnHQQ/scNH58nRTZoSTSV1h7rvYpMdXwnM8rceRH7v8LBPEBBaMvqgfGrivVC1w0bG+
         QgcWrwmyWi9+WYXA4cvI7xcktUL0EBAS/F0QfEXmrQ3b6p4Yf3g/IzlU83K7LgZ3EvYn
         rdLy5vKcjaY9iUGc7vmy9HSFAMqKROPmVAAXNSRvQKgFIbFxvR9EuQME7UmPbnsYV/2c
         VKgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXfRnfQ10DgvrhcsgQYZmrQf0LgiOov70HsfnNgDjzOlr0DikJh
	d88ZN8Uj0fO61WoqRoHG9TA=
X-Google-Smtp-Source: APXvYqzCADGbSG0rCcUV0DIeWqSmH8PyFVMXg4qSh7H01vom9Pn9rNc7XRLGYAKAoMbuM8GEP8P8/w==
X-Received: by 2002:a63:3fc9:: with SMTP id m192mr11677578pga.429.1566917467032;
        Tue, 27 Aug 2019 07:51:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:62c9:: with SMTP id k9ls258890pjs.2.experimental-gmail;
 Tue, 27 Aug 2019 07:51:06 -0700 (PDT)
X-Received: by 2002:a17:902:6b88:: with SMTP id p8mr23030546plk.95.1566917466394;
        Tue, 27 Aug 2019 07:51:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566917466; cv=none;
        d=google.com; s=arc-20160816;
        b=HPN67ZnNWrZaLLnLbKauHLAxrNjMbjj2izhREgbUiYHyWEQF3qVnOjArhLFYN6ECY4
         AtH5OXYBrCz7sDemc5a/sPI9R6iKoZDcFP5cPkzw1Ofy3LxVW1qEgVOwPRiVbyb4a5K/
         LzLne07BGeEtIFri8kAkGt9vMyJ06EV1Ts80PCuGsYeYQ15GKo3hBqBxeuzN2NfSmq2T
         BMCcgmz7P/2d3DpGHervM93TNoIb9B9E2vI8LDomdoCpgLlCtb8zf7evgOvee/8T1BrL
         xJ+bnOy2IxYoj+Y2sw939KwPnH1FgMD/cdBi63MjFWSzW48KE9PO3MQEx0C5UXd8GnWV
         2KLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=60vxhOfvjuNK5O03o+Yjdv4WdYfh2Em/xmqpiqy9rtE=;
        b=lCs/uIw7KHTWJ39AvfNvuinRD7ggKJOsC9j0wWM2bdB2IsmL5FPw22/m6MchhGEczt
         HS8+Y2wcHyjSdwV1kM5Eq/SvQmru1J/jYPVnyfMPfgzkqzKmRYx0TKV2UlW2+9/GdJ9R
         p5AzTPKBslg3Raw0isJ7sGT8pXoB++fD0dL5HCY+SBgFL7DLS79AKxqnCubMf3/cnLy/
         o2N2Sp8pRyymoRlUMN0zV+0Zu1YAIhO6yFkZJ03SO8vQ3p4aa2hJbF+SZZjokJqYjW3d
         BhehUrmLgKSAlsEQiHXuuJyTOzDRlJwG2VpN+goa7H1VKUWYphiau9xB2uj48fOif65S
         +tjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id h136si699185pfe.3.2019.08.27.07.51.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 07:51:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E98633084499;
	Tue, 27 Aug 2019 14:51:04 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 580AA64020;
	Tue, 27 Aug 2019 14:51:04 +0000 (UTC)
Date: Tue, 27 Aug 2019 09:51:02 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
Message-ID: <20190827145102.p7lmkpytf3mngxbj@treble>
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]); Tue, 27 Aug 2019 14:51:05 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Aug 27, 2019 at 02:30:06PM +0200, Arnd Bergmann wrote:
> I upgraded to the latest clang-9 snapshot from http://apt.llvm.org/ today.
> Many problems are fixed, but I still get tons of warnings like
> 
> arch/x86/kernel/cpu/mtrr/generic.o: warning: objtool:
> mtrr_type_lookup_variable uses BP as a scratch register
> arch/x86/kernel/process.o: warning: objtool: get_tsc_mode()+0x21: call
> without frame pointer save/setup
> arch/x86/kernel/early_printk.o: warning: objtool: early_vga_write uses
> BP as a scratch register
> arch/x86/kernel/sysfb_simplefb.o: warning: objtool: parse_mode uses BP
> as a scratch register
> arch/x86/kernel/head64.o: warning: objtool: __startup_64 uses BP as a
> scratch register
> kernel/time/timeconv.o: warning: objtool: time64_to_tm uses BP as a
> scratch register
> kernel/trace/ring_buffer.o: warning: objtool:
> ring_buffer_discard_commit uses BP as a scratch register
> ...
> 
> I created a reduced test case:
> 
> $ cat crc32.i
> typedef unsigned u32;
> long a, c;
> u32 b, f;
> u32 *d, *e;
> void fn1() {
>   u32 *g = &f, *h = e, *i = d;
>   for (; a < c; a++)
>     b = i[b >> 8 & 255] ^ h[b] ^ g[5];
> }
> $ clang-9 -c  crc32.i  -O2   ; objtool check  crc32.o
> crc32.o: warning: objtool: fn1 uses BP as a scratch register

I assume your config has CONFIG_UNWINDER_FRAME_POINTER=y, since objtool
is doing frame pointer checking.  Though I'm not sure about that, since
I don't see -fno-omit-frame-pointer on the reduced clang command line.
Do you still see this warning with -fno-omit-frame-pointer (assuming
clang has that option)?

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827145102.p7lmkpytf3mngxbj%40treble.
