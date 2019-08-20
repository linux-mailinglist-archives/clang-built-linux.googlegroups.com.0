Return-Path: <clang-built-linux+bncBDS6DTHSSUKBBI7G6DVAKGQEBZL4TBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B41796809
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 19:51:32 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id n2sf2256883vsq.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 10:51:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566323491; cv=pass;
        d=google.com; s=arc-20160816;
        b=hm5gR7twSrr8G04RbPU9aeRMUrDYoRraExqDs+a7Z+V5pcayQ2dB39NMQG6eUvxME3
         7CgV8oiN3TfRM/RdoZLo1vZmUOOPKR7tg+79yAO0iQziDQRjJuodmhx4FRng4YVomB5l
         WQDlv7ZJOwt7TvTOXHRckiMCwwpxBJOYZCcv9b85JXQWfBg4W6M+42rcdzjBlGy/fZ4Y
         sexLsvrLYnNs7Sszhoa7ZPz9+G6J6LhDaLzIiKdXtIgxTULOM2mOgxvbnJkLUC8SycIq
         W7ZSwnlpfrxC3/qUJAzNORsAPTLxh3ofOmmiQbDb0YNbeUrnXGProgM6UeJfptkw0i8M
         oPrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YQaBDOm8BG1lnTyRcVKZNXyG7fKA3MMtWVnT4Oi6Zcs=;
        b=0TlrXQeaJAZhbuH47kQizh50Cq8an/JdYGlmNiX2LpvOGizZ3xCoEZBYNvMKl26gNQ
         2hvQ9j16jT+e8vdGy+3BeTlOa+6A7LOXZBrp7aBTxP7/hXb7oGuXtHlu7FqMNEu8/AsN
         9W6hDUN5V5ftHGfiJI2uUVA0/AuS57f7Im4HUv9hS4V7RwW9lb9PvQFLtHb8vQHhCd+L
         lSKxrKOKwNMhmIhFXzaGEx76V7gouYQjEhhEPTVdNKSHSFm+T9+m5/JlelK2ci0byZBd
         ShDAyq+WZgcjwSSc9DSWFWh6qQFwEZGpyEYx8XopbgH7VeSjaOjIbI77z0gc202onFHl
         EwOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jechC4yZ;
       spf=pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YQaBDOm8BG1lnTyRcVKZNXyG7fKA3MMtWVnT4Oi6Zcs=;
        b=Hyy7ZQ860y+cLCXTpC4dPjusV/fECGmsC4vnBwV+zdQHcQOsApolAzlGIBzm5QF5nm
         mIIFE5lv6fSfZU77zoVIryB1Iek+dbTmMeqnDmSfmM59FNguMGvcI9atBL628gVYWCjz
         g9Kce9Lg4fLxHW69gIDkCgKhb73/t0ZDyTxRN9VqSu3srP14fwLJtAksnE83KodyoFxO
         EjCWKwmYl3wntlUVNYEcuq8q2E5tziNMgBdwEARy8gnawxjnTXeWQcbbQUPX+tgckobs
         obBP4xgjOfyjg8/Cb/hkTcqGJzJoi+erExRcuuQ2Y5/HMb3fiQveq1kd6mFD+HDr3dgj
         py3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YQaBDOm8BG1lnTyRcVKZNXyG7fKA3MMtWVnT4Oi6Zcs=;
        b=FRZuHmxAX5UWF+1yZJJ5TtzG0/+/6HjGrkDI2eJtMI8dwm4kZdbXFdotOf8Kh51May
         c2IRlaB0N0zKQ4xxTa4MGKV4jFaqca2fUXK0oCvDOn3i69ZaQTJvMgujvdRBXir46N2I
         mKm2TthFKDZkEfXuf7Jtv4nLcUVVaSP9Hgjp3z+K022G22udPY8hX0Sx0uhmDqdkgSbw
         Cpo/PkGXiuJ+q63IVeSntf0DmMLDe4r6uHaRXT16M41ip5UKLHMj9cmJoF/G3R2v+Qyn
         nphiUke5br+bf83uxHFLjPQ90bj/5Ux4hBjbgD/fF8XlDBZBFRehmSt6/Xs4eyMt80VZ
         1JYg==
X-Gm-Message-State: APjAAAVByLAtZ63n4RiFgWgizolzF7a/NC1mRW9uH9OgutnNgH1d5qrI
	GvN1ZRoM3l6NajNeEm/xYBY=
X-Google-Smtp-Source: APXvYqxMPdfFO6pWSnCcOiF3Up0Sf0ppJ1Gx0OKXFrLRPXcEIHbwipzXABdj9qxYuhhcg7TAc9oTtw==
X-Received: by 2002:ab0:690a:: with SMTP id b10mr1866884uas.17.1566323491091;
        Tue, 20 Aug 2019 10:51:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:d905:: with SMTP id q5ls90027vkg.16.gmail; Tue, 20 Aug
 2019 10:51:30 -0700 (PDT)
X-Received: by 2002:a1f:591:: with SMTP id 139mr1801902vkf.23.1566323490667;
        Tue, 20 Aug 2019 10:51:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566323490; cv=none;
        d=google.com; s=arc-20160816;
        b=dXcWq2JdEnVp+tTHNE3TjYCON7wb9vUGjiY3L8FaaAgj4DOV3YyXm+r/m95DsrLyFS
         Myf0oxh1qnjbW4vJPeVteeS0FUoFHdk7bJUTC24rvhIDHbc98RASJygoEILehuoIYiDt
         zrUE06aDB0VdwtX3l51j/0SYMBFl9hAYFRjKzuxYi6psOu/poDhSXDO9qCeInmg8UuuR
         2Xkn+FI15nmMC4GYmz1h62/CXupTIaOxKO+r8f65TLr6BcDiRtlfwv3GtRyyVNgxznSy
         9g8qAKDsdTghKIv/uiMirgbTGdzs9kjb+02e9zTmIie6cSrDp28Bn1iCkPZLWadYCWmK
         KaMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6HuX5J8uMeStRjjzY5e8EoXnQQGGvpKM6jfjclwH6as=;
        b=U18qCdLFnOP3Ku7lNNxW92qAvsd5QcvmFUPXSKDPYnQBcB9Ya5ebzE2VAkH2nzHtaX
         edHqGGKPbGX/p1wYaCtqUaye9l4BqH/1v8/XISK0+I3JBbLS4MN3ygUsOwm5+RUW+b5D
         I7bhSxZHq0EZK6IrUt3jp6StSnOEB8HFK3Ul7fPtTpnpUq10oXvnELMWnVN28wOQVwSi
         KFiLeyUTv0JCwIqVcjwUsqVJU6da9waWBTB4JHnd6/YszkWlkdSYIC4eEG9zPGFGVHDt
         atfLyxIRzCsKCJPNan29MzEpYdF9RPMwj2ac5KugaZkrzG/IKA1kNiPI8WftkrZUUHXA
         Jz6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jechC4yZ;
       spf=pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id v22si971526vsm.0.2019.08.20.10.51.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 10:51:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id m9so2380532ybm.3
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 10:51:30 -0700 (PDT)
X-Received: by 2002:a25:8309:: with SMTP id s9mr20071740ybk.61.1566323489896;
 Tue, 20 Aug 2019 10:51:29 -0700 (PDT)
MIME-Version: 1.0
References: <201908151845.xO92AhOS%lkp@intel.com> <20190815201931.GC119104@archlinux-threadripper>
 <CAKwvOdmngsGmO8B3H9L7CGZBVvSpiXtnCi_KUW4r7A8VSFZ3pg@mail.gmail.com>
In-Reply-To: <CAKwvOdmngsGmO8B3H9L7CGZBVvSpiXtnCi_KUW4r7A8VSFZ3pg@mail.gmail.com>
From: "'Guenter Roeck' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Aug 2019 10:51:18 -0700
Message-ID: <CABXOdTdHNA1oLtSr4V2a+dxn45mb_5YW5HmnBd13Kg3Re8UjrA@mail.gmail.com>
Subject: Re: [chrome-os:chromeos-4.4 34/35] arch/x86/kernel/irqinit.c:157:2:
 warning: if statement has empty body
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Doug Anderson <dianders@google.com>, Matthias Kaehlcke <mka@google.com>, 
	kbuild test robot <lkp@intel.com>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: groeck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jechC4yZ;       spf=pass
 (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::b43 as
 permitted sender) smtp.mailfrom=groeck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Guenter Roeck <groeck@google.com>
Reply-To: Guenter Roeck <groeck@google.com>
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

On Tue, Aug 20, 2019 at 9:47 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> + Doug, MKA, Guenter
>
> On Thu, Aug 15, 2019 at 1:19 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Thu, Aug 15, 2019 at 06:09:51PM +0800, kbuild test robot wrote:
> > > CC: kbuild-all@01.org
> > > BCC: philip.li@intel.com
> > > TO: cros-kernel-buildreports@googlegroups.com
> > >
> > > tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel chromeos-4.4
> > > head:   5a6016061c6229a93ab01182469242faac59f3ba
> > > commit: 2e62e34f0efe804c7e229ab9ea6b259510a404b1 [34/35] UPSTREAM: include/asm-generic/bug.h: fix "cut here" for WARN_ON for __WARN_TAINT architectures
> > > config: x86_64-allnoconfig (attached as .config)
> > > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > > reproduce:
> > >         git checkout 2e62e34f0efe804c7e229ab9ea6b259510a404b1
> > >         # save the attached .config to linux build tree
> > >         make ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> arch/x86/kernel/irqinit.c:157:2: warning: if statement has empty body [-Wempty-body]
> > >            alloc_intr_gate(ERROR_APIC_VECTOR, error_interrupt);
> > >            ^
> > >    arch/x86/include/asm/desc.h:396:3: note: expanded from macro 'alloc_intr_gate'
> > >                    set_intr_gate(n, addr);                         \
> > >                    ^
> > >    arch/x86/include/asm/desc.h:373:3: note: expanded from macro 'set_intr_gate'
> > >                    set_intr_gate_notrace(n, addr);                         \
> > >                    ^
> > >    arch/x86/include/asm/desc.h:366:3: note: expanded from macro 'set_intr_gate_notrace'
> > >                    BUG_ON((unsigned)n > 0xFF);                             \
> > >                    ^
> > >    include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
> > >    #define BUG_ON(condition) do { if (condition) ; } while (0)
> > >                                                  ^
> > >    arch/x86/kernel/irqinit.c:157:2: note: put the semicolon on a separate line to silence this warning
> > >    arch/x86/include/asm/desc.h:396:3: note: expanded from macro 'alloc_intr_gate'
> > >                    set_intr_gate(n, addr);                         \
> > >                    ^
> > >    arch/x86/include/asm/desc.h:373:3: note: expanded from macro 'set_intr_gate'
> > >                    set_intr_gate_notrace(n, addr);                         \
> > >                    ^
> > >    arch/x86/include/asm/desc.h:366:3: note: expanded from macro 'set_intr_gate_notrace'
> > >                    BUG_ON((unsigned)n > 0xFF);                             \
> > >                    ^
> > >    include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
> > >    #define BUG_ON(condition) do { if (condition) ; } while (0)

That code has been there forever, and isn't really Chrome OS specific.
Upstream behavior was changed in 2015 with commit 3c047057d120
("asm-generic: default BUG_ON(x) to if(x)BUG()"). Should we ask for
that patch to be applied to linux-4.4.y ?

Guenter

> > >                                                  ^
> > >    1 warning generated.
> > >
> > > vim +157 arch/x86/kernel/irqinit.c
> > >
> > > acaabe795a62bb arch/x86/kernel/irqinit_32.c Dimitri Sivanich 2009-03-04  154
> > > 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  155          /* IPI vectors for APIC spurious and error interrupts */
> > > 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  156          alloc_intr_gate(SPURIOUS_APIC_VECTOR, spurious_interrupt);
> > > 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11 @157          alloc_intr_gate(ERROR_APIC_VECTOR, error_interrupt);
> > > 47f16ca7631f9c arch/x86/kernel/irqinit.c    Ingo Molnar      2009-04-10  158
> > > e360adbe29241a arch/x86/kernel/irqinit.c    Peter Zijlstra   2010-10-14  159          /* IRQ work interrupts: */
> > > e360adbe29241a arch/x86/kernel/irqinit.c    Peter Zijlstra   2010-10-14  160  # ifdef CONFIG_IRQ_WORK
> > > e360adbe29241a arch/x86/kernel/irqinit.c    Peter Zijlstra   2010-10-14  161          alloc_intr_gate(IRQ_WORK_VECTOR, irq_work_interrupt);
> > > 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  162  # endif
> > > 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  163
> > >
> > > :::::: The code at line 157 was first introduced by commit
> > > :::::: 2ae111cdd8d83ebf9de72e36e68a8c84b6ebbeea x86: apic interrupts - move assignments to irqinit_32.c, v2
> > >
> > > :::::: TO: Cyrill Gorcunov <gorcunov@gmail.com>
> > > :::::: CC: Ingo Molnar <mingo@elte.hu>
> > >
> > > ---
> > > 0-DAY kernel test infrastructure                Open Source Technology Center
> > > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> > >
> >
> > I think this would be resolved with commit 3c047057d120 ("asm-generic:
> > default BUG_ON(x) to if(x)BUG()") upstream.
> >
> > Cheers,
> > Nathan
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABXOdTdHNA1oLtSr4V2a%2Bdxn45mb_5YW5HmnBd13Kg3Re8UjrA%40mail.gmail.com.
