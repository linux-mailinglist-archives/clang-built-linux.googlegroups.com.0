Return-Path: <clang-built-linux+bncBDS6DTHSSUKBB3XS6DVAKGQETCYRCBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8803096874
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 20:18:23 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id x10sf5366345pfa.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 11:18:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566325102; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vc8VPc9NCMWmj+fjqC09+Waw+oBqMZxHhJ3sxLRWRfxcpQKFgRWqwMpen4m5tYHBoE
         2w0bea4dl4F7SEWItTH60cu/eOwqzcG1bgtbRl+zXN5R7kv6YTaZyCF5rIiwmm0shANL
         TFfPRD2/494utM5Z98cM2DvCZANr1QgTDxNUIRpAOPyEREiGGKA8U4a/bq+P8Lxpu6sQ
         eDftD0bSmaVB2gPYCbYExbZZaoUzb3Acy+qRN44wk1X+3tCYT8mKI3fch6R6qaJDv7hV
         SFozyraZlsQIO9BaNLXvXSKPB/rKXJo3dMRsF0px3GEyR0dwcVhWT/DrT3x8pG9B9Cdy
         Ryrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=F3YREOTKf2P6fbbGhntmEkNruhuCVxQs+udmldCKysk=;
        b=eW5mZQ5X3yVoGqgNke1uELqeZva8/dvgYTT2qvHcXT2qi64PM9P8vDo5OQg/dd/Rj4
         L+zQKN86yb75iziw1chlUjM8gEVZ8i2dYDSMD6m1iNofpPGf1a/p7fdMtB5TP5yPy1hs
         n3Itdm0jygp7w0ZvWYALQis3UmlLCA3zTIfeeh3TfxZBhk4Iao1bxNF6tf0MuNslUXu7
         zzD/o1Ul5gPgoQ67HRklZ2uhZrIs8iOyM3ms5naYWzb2qWm1KNjI0gQrrEFzGOedMEXR
         yGJwu0GvkZ7OnMO4f/SmPnRfg0Muyx/CotfigBnl4CsRjzdrPyarmYQlKRDdT2lEUzuI
         tBsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D6MfQC0V;
       spf=pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3YREOTKf2P6fbbGhntmEkNruhuCVxQs+udmldCKysk=;
        b=EaPjyTMYVgkdeBH3cZXWuSmEwgdfifKyj5IronKr+H9dv83YRxHPq/fhuDhuXtCVxB
         PobFrSM5RtiBWXWemO5CJizx7WShqorajUjU/NZB2MeuzPtXsts+Kafau3YJFVbauKPq
         RE/Ivqjy7IhfqeKqHxiB9bkNrjkYgKlR20wJavOmbQU4eCjol71ExEZ7kysMpUeNQ09Q
         kZCuyOcOx4bP+cvfiiNi0xo2DDdOtP8y0iFhSo73rRg/32DbHgYJCj+xrrp8mM5XZr4d
         MWCqE8qO5bvJlEHjcjqgSIgcd6I45cydBT2EtSExVti9McMWP0+74rVq0rq5HzciJJaM
         vOCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3YREOTKf2P6fbbGhntmEkNruhuCVxQs+udmldCKysk=;
        b=beqvk1NBG6s0E6TRn+RT11gpckDH3Ij2MV2XG667SyRBzJoblsa4aJ3ff/QZyZkeKz
         YLUtA+tvnlEcpX81XMZxunoXivBNS9gxYMlkABPCgDqmzFwAHgnrJ89ZXJ4Lqe7CpnTu
         0h7JMpKQlezUG/zyC3YIME7hyncxtL+ke9qhTK1pKKK+Cw5XBm/IPGYDlUYmBcrGCHKH
         bQaAH8Q2SM98thsR7UDvqcKjp5PJgW+EuXop9MS4dz3nEqz5QaWGIlb4jR85BJ/ZWhj0
         2FwwlidR1MR71Zf2IGzQ8zE/y8vBntHdyUYkXxxvw15G8pQz4/56hRHmV/0BJUi+t4ec
         02Jw==
X-Gm-Message-State: APjAAAW8P/m+y3pqUBmC6ZR933OsKzPALR0LtxFOJET66R125BODOmQs
	O5uIUb8CDLH9ypxy6Reztgo=
X-Google-Smtp-Source: APXvYqzyg3RE9T0k6quocT8Ineg7Ogt3UPMF4IDcSEEjafmv05iuovr7dSZ7LPE3sHK/CRvRlMydmw==
X-Received: by 2002:a63:4612:: with SMTP id t18mr26045908pga.85.1566325102130;
        Tue, 20 Aug 2019 11:18:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9a89:: with SMTP id e9ls1127418pjp.0.gmail; Tue, 20
 Aug 2019 11:18:21 -0700 (PDT)
X-Received: by 2002:a17:902:142:: with SMTP id 60mr3526379plb.155.1566325101780;
        Tue, 20 Aug 2019 11:18:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566325101; cv=none;
        d=google.com; s=arc-20160816;
        b=NAw4rX/IxxYmbZOyLBK+UAAGMj90/FjAzEJKJ29SaGmTvxA+eYqO1rjisO4kvN5KEo
         wYOBMM8ZUwkH8/6Zs1eZIfZFz5p7He1uSpIMFsjvhXOTLz3tu4oibpAYae5IRuv1Eizr
         jfH+BxT8XMsLhYvkHhxDHJXGcLBKtr/8zA0rZcttx7442uL5zmRTiNvn4BqJyKtLIxmc
         uAel2h6JgnYdmLZALzAd4iZbwkFwAfM2qd+0/3nBNQz2hU37kss31XVWIdvV0tzjIj9Z
         WywescPcYpLBeQElMfdZ7HwzZTwgXzh5q5Cc7jYv7VvOwXIWr84kxaNZzianMQeXcl4z
         DPQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2bY3SJaMuMfzp5MkdLIsuG2VKTzZbsxyWUD2y/JcyBI=;
        b=t6+WJjTh/ZZ1c9HXURiq9SdIPXwNRHze8aPDZE45Oig3zO3ZcCf1X2ydbZ6cRj/6RS
         BX14DASBATqK5L/41rfBXfG70cPkqMtGBF4P/BTFNZCmlPHyAQGQw/Iako1IZ+B3M5Lc
         2Yx60lfNH4kaYerDercMEztquzenImfb1vtGFhhlDctdlHKBhZH69Vcb/GAYKgEhCYDR
         GCShYyC82r+1zRxgAY1d0MoHlp4eI0LcZTIWpHGsJT68fXXO/crx2bW6kmhzEX8D8W0x
         XMY1vvAzYwPlw8G45a/7vPt7soz1q0ZbxJ8+ERE6O2IikhwxomVdQktibdNBdvdv48T+
         FmWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D6MfQC0V;
       spf=pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id w72si949000pfd.2.2019.08.20.11.18.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 11:18:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Received: by mail-yw1-xc42.google.com with SMTP id n205so2771667ywb.10
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 11:18:21 -0700 (PDT)
X-Received: by 2002:a81:99c1:: with SMTP id q184mr21997965ywg.70.1566325100683;
 Tue, 20 Aug 2019 11:18:20 -0700 (PDT)
MIME-Version: 1.0
References: <201908151845.xO92AhOS%lkp@intel.com> <20190815201931.GC119104@archlinux-threadripper>
 <CAKwvOdmngsGmO8B3H9L7CGZBVvSpiXtnCi_KUW4r7A8VSFZ3pg@mail.gmail.com>
In-Reply-To: <CAKwvOdmngsGmO8B3H9L7CGZBVvSpiXtnCi_KUW4r7A8VSFZ3pg@mail.gmail.com>
From: "'Guenter Roeck' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Aug 2019 11:18:09 -0700
Message-ID: <CABXOdTeSvWcgENC71xoKu=6Zj8uU2yzQvduEFm+ZKBrw_6EnAQ@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=D6MfQC0V;       spf=pass
 (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::c42 as
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

Hi Nick & Nathan,

where did you get this report ? It is not in cros-kernel-buildreports
unless I am really missing something.

Thanks,
Guenter

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABXOdTeSvWcgENC71xoKu%3D6Zj8uU2yzQvduEFm%2BZKBrw_6EnAQ%40mail.gmail.com.
