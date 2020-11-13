Return-Path: <clang-built-linux+bncBC2ORX645YPRBNM5XT6QKGQEISJUXTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id D71FB2B28CD
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 23:54:46 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id n16sf3959636pgk.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 14:54:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605308085; cv=pass;
        d=google.com; s=arc-20160816;
        b=tynkQ8zvdfXBXkiLmDgFwYL4+Hyx9sqUhJLYiBHvvMkKKkTRPBnRXAMvVY4qhwQdVo
         B/YVZL4F7tP54kbhk9yPR79GBtrbCSxfb53iLEWZ5RW92WWyM8oYG25usyIjyKuyLbh5
         wtWZ59iRXuJsWvg9UtDtVvzdqA/wAPMj6Nql5hNk62J4/KpxjXKs40PDj+dSzbUaFeLZ
         lVUczBOermKQ1U3vH/3rvBtKCZeEJaRJrArTf5o0axr4NuToe3THhkyRPRd1l+q29OM0
         6pBW5OKO06Q2PQ3RrAVXbRsrxFfIjslk95JjzDl+y5zyx+gEKDkLxq0ksmRGKenmZ5BP
         Kgkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=b//LCmtLwNnw07FCeJiEqpaCgvUjT1ba+lQX4pSUvug=;
        b=y8ey8sGmsqxiL7yegU5/kzTf0cFw+LmdYWtJSb+1qOf7q1ltAeE2EDltMpU8Sm9MsJ
         dLlrnXEkmF3nZfDsTarfuQUNWyzqgKVWYIOwQtr49dGF53qw8b0JJ7TW6mq/wLXnTR4G
         bHKQRuFqvDeX524Lz7vlprQsSTe1lNRP8PUyjnvkDUd2LK6EyP9CCA+YuTYwREoXMz9l
         rm9G2Ryl3DZ4qkWaykksoB7+n+o1Q+2Bt5fkh6xoa16gzqzP4SXhZ8yhsXJjuebvEPrN
         WxlgplpV4WkycTQ8uAdJD4P3A9UyrQFCqsxhxN2f9OpDSPlIA4SdfjHmsAaJRXnWMx/q
         qn5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="E/DaHCUs";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b//LCmtLwNnw07FCeJiEqpaCgvUjT1ba+lQX4pSUvug=;
        b=OygcL0pelhZsXgIDGYBMGDW60RjOYiwW17qdG4vs1G33+iqPpUTvsBONq9zuz1XuA1
         3m1liVTqCu+NEa7boNYxjKw6CSrzPFg7vLt3XPxdktgHyRsBrlL2trUsU03f3HvZXfk7
         0QOyxgRZ1LNOfY+2c1P/Jlqad7GXokR6Uj0wyEpN7EqoH8kn+vpxzu+Okv3DTBDFpwNL
         TYbRsqyxDEkxCr/dnHjgZ1dosBHHHjAScBcJ5PXJ6lcuIinorc3O/mYhZgWir4SpLZZT
         Tr8ZK7dBD/ClUDFS4f+S7ii2MY5D/xk/w3C6uQNWui3rQQYNpXh8gf0UJ9P25J0HX/4K
         YVOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b//LCmtLwNnw07FCeJiEqpaCgvUjT1ba+lQX4pSUvug=;
        b=NpGllf6l5QBSeEyxlQwSt+xu2/NxvCCkV5sRLro+qxlgB/fycgD7g3HbIlNoCdthXd
         wOz3+zvpe97fvRtHvjt3HR/hY5FVaOvlszaONwTT56JB/ZwWpQpbfRoya8EoYHjrLb9h
         y8KxntQnYUWthfKmshpIypvOpvCiKajEp8T0XXtv4/2NbS12J06Yj3+Q9T2MAF/VAi6N
         Uk4FYwPNfqrqsZUzTjk0rmuDEzStTvyv1aiM4Tr6CmGulavQQ7NmeiL2R6qxotp8Gu95
         aZ9dyMS+6VdAwKRsmUpaP2aSkj4Rn2uvdiCbbEhOdTGDWRs9HAnTER/LrkJahlwIhtS4
         g3vw==
X-Gm-Message-State: AOAM530pd/YQxbhEIf3RvOpDWnAmiPKHiW5wzIHjt6oY2enVRWMEEteM
	cDDVoX9j/202nU1y9QEDw0Y=
X-Google-Smtp-Source: ABdhPJyhrCZn/Xgn/thy2QEwgTDSwiO0CHa/6/9ayt1SH9Hjq5iw9CWVOHYdvFR3vQi8ch3vdaHvsQ==
X-Received: by 2002:a17:90a:9dc2:: with SMTP id x2mr5345745pjv.98.1605308085605;
        Fri, 13 Nov 2020 14:54:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a0e:: with SMTP id o14ls4427683pjo.1.canary-gmail;
 Fri, 13 Nov 2020 14:54:45 -0800 (PST)
X-Received: by 2002:a17:90a:940c:: with SMTP id r12mr5375653pjo.201.1605308085032;
        Fri, 13 Nov 2020 14:54:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605308085; cv=none;
        d=google.com; s=arc-20160816;
        b=ouXmn31+L3ZP/21JQ4P0BUmP21N5Jzy1QKONFgS21gaZt7pLaY31kCBA/m978qT6LH
         gV+kkj4j/G97T7oQ5K1AdcTnJlGWhz6fxI0kPEjbtICDMT4N1HXYWdrmI5T5TViLbaxB
         kJD6kuZrKJT4nCHTlnXPplxERzbDz+VdnqZPVuzryFA5QaZtb0x7MUHPMdTYo6aApAPC
         dZ2X+eSV1JDTWhYkbHLJB4mWbyf91FHrv3ShFqTJ6JJcCbuZC/jeGb/klmhTzl2kJYqJ
         85vBSi/0Z9naxf2hpnyPOY9ijQQI4AyhesCv/184j8Us3RvSeMQ8cFBwdVF4aVHWA2Az
         egaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x7PN1px9ytV6KoYCs0MN8nIig7IfEqAMiUFMKSdwj8o=;
        b=NSa1f9tJYDOzD0HE+aHRPMb5zV6eJ0q4fStt433sJsxvwjW57KWIrfNjQll5RF3h5w
         zGncVYavXrtWHimNnJdBmrxfkHYuoq1+rDYl5g3kA167/kBec6vDDyLcwpileOtgpFA7
         samouYC3y6K7l83w4EuttHcEL8NHpCxMngChKGLr5H+cite+TDsm3Ngsc8Hu2/pt6z9v
         S9fJ8ETC+VTBeJ299UWVay1spojttjiI2VFgbjNUdyJD0SXeitXdv5L62wwENkiah0de
         z/d+JLx863EMiGx8e+K0HsFycInWF5SG4xuBsc7nGs2oAWD9vqxX/dNtIyL04irukrCZ
         Tt7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="E/DaHCUs";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com. [2607:f8b0:4864:20::a43])
        by gmr-mx.google.com with ESMTPS id o24si731506pjt.3.2020.11.13.14.54.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 14:54:45 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) client-ip=2607:f8b0:4864:20::a43;
Received: by mail-vk1-xa43.google.com with SMTP id w67so2469860vke.10
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 14:54:44 -0800 (PST)
X-Received: by 2002:a1f:3655:: with SMTP id d82mr3109788vka.22.1605308083978;
 Fri, 13 Nov 2020 14:54:43 -0800 (PST)
MIME-Version: 1.0
References: <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net> <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com> <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
 <20201110022924.tekltjo25wtrao7z@treble> <20201110174606.mp5m33lgqksks4mt@treble>
 <CABCJKuf+Ev=hpCUfDpCFR_wBACr-539opJsSFrDcpDA9Ctp7rg@mail.gmail.com>
 <20201113195408.atbpjizijnhuinzy@treble> <CABCJKufA-aOcsOqb1NiMQeBGm9Q-JxjoPjsuNpHh0kL4LzfO0w@mail.gmail.com>
 <20201113223412.inono2ekrs7ky7rm@treble>
In-Reply-To: <20201113223412.inono2ekrs7ky7rm@treble>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 14:54:32 -0800
Message-ID: <CABCJKufBEBcPPrUZcAvh1LXX_GwRG1S1sg2ED2DPZ53MPy_VbQ@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b="E/DaHCUs";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43
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

On Fri, Nov 13, 2020 at 2:34 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Fri, Nov 13, 2020 at 12:24:32PM -0800, Sami Tolvanen wrote:
> > > I still don't see this warning for some reason.
> >
> > Do you have CONFIG_XEN enabled? I can reproduce this on ToT master as follows:
> >
> > $ git rev-parse HEAD
> > 585e5b17b92dead8a3aca4e3c9876fbca5f7e0ba
> > $ make defconfig && \
> > ./scripts/config -e HYPERVISOR_GUEST -e PARAVIRT -e XEN && \
> > make olddefconfig && \
> > make -j110
> > ...
> > $ ./tools/objtool/objtool check -arfld vmlinux.o 2>&1 | grep secondary
> > vmlinux.o: warning: objtool: __startup_secondary_64()+0x2: return with
> > modified stack frame
> >
> > > Is it fixed by adding cpu_bringup_and_idle() to global_noreturns[] in
> > > tools/objtool/check.c?
> >
> > No, that didn't fix the warning. Here's what I tested:
>
> I think this fixes it:
>
> From: Josh Poimboeuf <jpoimboe@redhat.com>
> Subject: [PATCH] x86/xen: Fix objtool vmlinux.o validation of xen hypercalls
>
> Objtool vmlinux.o validation is showing warnings like the following:
>
>   # tools/objtool/objtool check -barfld vmlinux.o
>   vmlinux.o: warning: objtool: __startup_secondary_64()+0x2: return with modified stack frame
>   vmlinux.o: warning: objtool:   xen_hypercall_set_trap_table()+0x0: <=== (sym)
>
> Objtool falls through all the empty hypercall text and gets confused
> when it encounters the first real function afterwards.  The empty unwind
> hints in the hypercalls aren't working for some reason.  Replace them
> with a more straightforward use of STACK_FRAME_NON_STANDARD.
>
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> ---
>  arch/x86/xen/xen-head.S | 9 ++++-----
>  include/linux/objtool.h | 8 ++++++++
>  2 files changed, 12 insertions(+), 5 deletions(-)

Confirmed, this fixes the warning, also in LTO builds. Thanks!

Tested-by: Sami Tolvanen <samitolvanen@google.com>

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufBEBcPPrUZcAvh1LXX_GwRG1S1sg2ED2DPZ53MPy_VbQ%40mail.gmail.com.
