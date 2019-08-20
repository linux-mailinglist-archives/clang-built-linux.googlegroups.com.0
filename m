Return-Path: <clang-built-linux+bncBDYJPJO25UGBBN6I6DVAKGQEJMIS5SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD4B966B6
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 18:47:52 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id 100sf4229320oty.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 09:47:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566319671; cv=pass;
        d=google.com; s=arc-20160816;
        b=o0DgzJultvQVj7BVjD8HemlcqImq5Gueq1Xm/GG4A50tCZmOw5sHebAYcZZaL/a6Nd
         oD3xGBooudXU7z8W694QmLcJSHn078u0jRSDlV7vB/TejfJy8KgwkAR5iVZUjQn0IrXn
         XKc0R9AFfEsbZ2tVBjNWNHzNsy751yboVsPYxr4/EGRTfvmRJrwGDmOIZG4342eAZNfI
         NcT11bNgs5OUo47Vu6lhar1Mv8JBNJOf0Ff7IAbGqi1kLGp2QgXIUVQCNQhQCNo94myz
         CGTYmT/vxv6IS+JhDZFp0vbas7DQd5cus/QqWFwEPqUNDN8Y+0zDPjfRBO+87tsSPeOt
         fOFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7/YHg2vvcLX0oYDa0efHnCvYb7DwQ6S1nn0ulzdPrQc=;
        b=taiaJgRyU9uZxJEZmWVONqGOrFIlziiMPGERVFVl5NTqnHwzA/XVhu24fK8eFwdAUd
         ld0RXhT+RQVyluNWSSS/8iPxxaqb4GnGNIHElkH1EmuB2jp+CSvYegJ9DcszSX8ckYBV
         fo7JD/JEvh1ZlZwLwZKD0CFuTB4X4ICPhAAiTroSIRBE7GEJwMTolE9SFtc5YUd/jjsr
         lIld71fgJVTo2PwtemviwJjSyAtB/ffuaMqJ5NAs8imRTJY6xM0P6pJClab/vMvFxow/
         /VYly90ORdUsgzlpAEUlVqU0e7Z2jY6MJ5R4KQvrNe1kyxNQfz05AdXfsaqDUfl+Mdac
         jKwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pzBrOnlH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7/YHg2vvcLX0oYDa0efHnCvYb7DwQ6S1nn0ulzdPrQc=;
        b=Z8724VEPY3Ym2tDAOgH6T43yao1oN1wtPiugdoQSeDrpy+4+7pjtiM45mqAIhKojCE
         MhGm/XNBeG0CDNzAfg+USSbuiPznxIoLk8iEA36hh6YQO5Qygz6mova12nLxLmn+qE/p
         nIVTtYzTgQYqYEbXVz7pp74O40tyAO/ylLXEnyMS6PFPDzVzXo1hFCdWlKaq8bV7C6mE
         2xnkUR4aqsAS3A2B/ko9JSmDcqQMaFwTNDXNHvVe23Di3wGhE+WfZtYsmtIMD1PKKmzl
         ZUqxppt0ZeTQYpXxZydukTjfpi7rh6+joIS6ggHxJ/2Z30tFFHeNFSMErlEoPKvZhXli
         A3Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7/YHg2vvcLX0oYDa0efHnCvYb7DwQ6S1nn0ulzdPrQc=;
        b=rZC2xsQ4uHrgdSrMI3O+iQhNhuIBM72OF9mFnw2caKC+QX3ECKw83KR1GbXPqvCAbi
         1J9Y4iz3gksnp98WwyUjpEZxhv2nUVhWyQJidE39nBdxdJHKD/SH2+KwZcozn/H371/t
         UR6pTsJ4ZmYWmC4gwlyyeFEkaBlXzhNrILEdhE1zJOmENBiUyl2+YQ5Je1qbCwbnWQgu
         xQm5vNC78eYrdbBg8HLjYxUeQYhVJKPq2WJ5/+KK1n3jANy9ZSkVV+SfhYF8Lxwj8h9a
         B51GJ/fL7qxkMkIzm7O7U1TqTPjssGR2D/lLfw6TFXDZrTmiVjQXTZucqIAKzgNP1yjD
         V8hA==
X-Gm-Message-State: APjAAAVuF/IDZTiGugPHHfyu7fZejc5tZ2/9lRU+E9KN4wW5hqsaTLOW
	s7a6ijztUY/l0Ipcuvx4j14=
X-Google-Smtp-Source: APXvYqzvcI6yEVO+PSBVJ8GcJBwRTciSxQDPwgzg9FFp7/mF06YUzNi1sZechuRHmjaJ33OSBm/uEw==
X-Received: by 2002:a05:6830:1095:: with SMTP id y21mr21558710oto.173.1566319671388;
        Tue, 20 Aug 2019 09:47:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4717:: with SMTP id k23ls929570oik.9.gmail; Tue, 20 Aug
 2019 09:47:51 -0700 (PDT)
X-Received: by 2002:aca:d449:: with SMTP id l70mr750979oig.88.1566319671051;
        Tue, 20 Aug 2019 09:47:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566319671; cv=none;
        d=google.com; s=arc-20160816;
        b=HlrGiIdigSWGwgQH9m9oyLVCPOkzSxSe8Vn+AoptgAYvPfbr3y7bEBOt/1uxIh+KHZ
         wQoM3mXe1Uju+huuJXc4s2fCBa5cimvWSqfN+GKpWLYWAgLlKlznAeQTIEHRHUscv+Zk
         LUZbx1BcCkbtT5cqyQMvR0LEKj6l66Kf33VptqN6NutfMC7dTJRBG7zY78Ae3Wxjb6Ld
         f8QGfO4fRlN3ghhQ5qWG4pgpJJcGetHaN+ABjYJh5GKlnqZFUoME712Loj8Bl8CoDzjL
         /DkP55PDxihnVIyei8J/dylF+/2D7vd0kwIB9MEQcC76s1xRNBqGiPGogo3O688/h0eG
         BRcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=87qRgLgv+VKj7DNCCINh63dPtEAC5BEDSq4caVRwQJ8=;
        b=fbJ703+/7jO1DXY0+Hb0DISuk7I4owFz/1BWv9ufnvQv6Zp1KYgIv9hT3Ve20pCwm1
         Vcy4ME4f4gRmAjvDJETfbPQmLXFqzI1nzfYTTMQNjtb4vK7a533PDXmSfC1XrL6lRjVc
         CjZsRMZF6EdeuZx2kBiRyJzbcviSxlG4Yb2uZ/TDkiruCpwvVKOZTZX639knjPpeMW2s
         EGQjsV3X8lBH7acld2GbtMkjibJXQytXb4094Qe8iYUGmZtxSVvYnspiY7ZfnrBLz12C
         pU91wbs7EPCZqzTmdkCdEYcWG1wWIBAKslHdTTyp99JstQmQS/WxG0m43GAY8V9+qTUT
         C14w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pzBrOnlH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id u18si741298oie.4.2019.08.20.09.47.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 09:47:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id y1so3021039plp.9
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 09:47:51 -0700 (PDT)
X-Received: by 2002:a17:902:8484:: with SMTP id c4mr28340691plo.223.1566319669885;
 Tue, 20 Aug 2019 09:47:49 -0700 (PDT)
MIME-Version: 1.0
References: <201908151845.xO92AhOS%lkp@intel.com> <20190815201931.GC119104@archlinux-threadripper>
In-Reply-To: <20190815201931.GC119104@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Aug 2019 09:47:38 -0700
Message-ID: <CAKwvOdmngsGmO8B3H9L7CGZBVvSpiXtnCi_KUW4r7A8VSFZ3pg@mail.gmail.com>
Subject: Re: [chrome-os:chromeos-4.4 34/35] arch/x86/kernel/irqinit.c:157:2:
 warning: if statement has empty body
To: Doug Anderson <dianders@google.com>, Matthias Kaehlcke <mka@google.com>, 
	Guenter Roeck <groeck@google.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pzBrOnlH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

+ Doug, MKA, Guenter

On Thu, Aug 15, 2019 at 1:19 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Aug 15, 2019 at 06:09:51PM +0800, kbuild test robot wrote:
> > CC: kbuild-all@01.org
> > BCC: philip.li@intel.com
> > TO: cros-kernel-buildreports@googlegroups.com
> >
> > tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel chromeos-4.4
> > head:   5a6016061c6229a93ab01182469242faac59f3ba
> > commit: 2e62e34f0efe804c7e229ab9ea6b259510a404b1 [34/35] UPSTREAM: include/asm-generic/bug.h: fix "cut here" for WARN_ON for __WARN_TAINT architectures
> > config: x86_64-allnoconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         git checkout 2e62e34f0efe804c7e229ab9ea6b259510a404b1
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> arch/x86/kernel/irqinit.c:157:2: warning: if statement has empty body [-Wempty-body]
> >            alloc_intr_gate(ERROR_APIC_VECTOR, error_interrupt);
> >            ^
> >    arch/x86/include/asm/desc.h:396:3: note: expanded from macro 'alloc_intr_gate'
> >                    set_intr_gate(n, addr);                         \
> >                    ^
> >    arch/x86/include/asm/desc.h:373:3: note: expanded from macro 'set_intr_gate'
> >                    set_intr_gate_notrace(n, addr);                         \
> >                    ^
> >    arch/x86/include/asm/desc.h:366:3: note: expanded from macro 'set_intr_gate_notrace'
> >                    BUG_ON((unsigned)n > 0xFF);                             \
> >                    ^
> >    include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
> >    #define BUG_ON(condition) do { if (condition) ; } while (0)
> >                                                  ^
> >    arch/x86/kernel/irqinit.c:157:2: note: put the semicolon on a separate line to silence this warning
> >    arch/x86/include/asm/desc.h:396:3: note: expanded from macro 'alloc_intr_gate'
> >                    set_intr_gate(n, addr);                         \
> >                    ^
> >    arch/x86/include/asm/desc.h:373:3: note: expanded from macro 'set_intr_gate'
> >                    set_intr_gate_notrace(n, addr);                         \
> >                    ^
> >    arch/x86/include/asm/desc.h:366:3: note: expanded from macro 'set_intr_gate_notrace'
> >                    BUG_ON((unsigned)n > 0xFF);                             \
> >                    ^
> >    include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
> >    #define BUG_ON(condition) do { if (condition) ; } while (0)
> >                                                  ^
> >    1 warning generated.
> >
> > vim +157 arch/x86/kernel/irqinit.c
> >
> > acaabe795a62bb arch/x86/kernel/irqinit_32.c Dimitri Sivanich 2009-03-04  154
> > 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  155          /* IPI vectors for APIC spurious and error interrupts */
> > 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  156          alloc_intr_gate(SPURIOUS_APIC_VECTOR, spurious_interrupt);
> > 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11 @157          alloc_intr_gate(ERROR_APIC_VECTOR, error_interrupt);
> > 47f16ca7631f9c arch/x86/kernel/irqinit.c    Ingo Molnar      2009-04-10  158
> > e360adbe29241a arch/x86/kernel/irqinit.c    Peter Zijlstra   2010-10-14  159          /* IRQ work interrupts: */
> > e360adbe29241a arch/x86/kernel/irqinit.c    Peter Zijlstra   2010-10-14  160  # ifdef CONFIG_IRQ_WORK
> > e360adbe29241a arch/x86/kernel/irqinit.c    Peter Zijlstra   2010-10-14  161          alloc_intr_gate(IRQ_WORK_VECTOR, irq_work_interrupt);
> > 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  162  # endif
> > 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  163
> >
> > :::::: The code at line 157 was first introduced by commit
> > :::::: 2ae111cdd8d83ebf9de72e36e68a8c84b6ebbeea x86: apic interrupts - move assignments to irqinit_32.c, v2
> >
> > :::::: TO: Cyrill Gorcunov <gorcunov@gmail.com>
> > :::::: CC: Ingo Molnar <mingo@elte.hu>
> >
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> >
>
> I think this would be resolved with commit 3c047057d120 ("asm-generic:
> default BUG_ON(x) to if(x)BUG()") upstream.
>
> Cheers,
> Nathan



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmngsGmO8B3H9L7CGZBVvSpiXtnCi_KUW4r7A8VSFZ3pg%40mail.gmail.com.
