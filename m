Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP6G5P2QKGQEJTBTH3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F11C1CFCB0
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 19:56:16 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id 2sf13711620ioy.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 10:56:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589306175; cv=pass;
        d=google.com; s=arc-20160816;
        b=GxY4ali0jWu2CxGxHXk93WN2I02XaW5Wke93szyXxhqRdE8gCJY624EkP3pP5VZ1E1
         jaUiTPidLdcspEkg5t/OJBqQzEmwiOh16/bLIqVNazfNpi3LEThjjb86GDAr6mIAWjwm
         RHB2cZMGtvi+F/09GDHamt3P186ELva4p/Uz8NzddMp4dnG6+ytS6bzgQgjg3/wz4BEp
         m6xkKVrwxL15ADTA3aHw6VrgXMHd0YPSOKOi+3QLLy71UoiByR1eNRpOFdy6Bkjmc4Xt
         jT1ToPZQ9VW5OdlYcb8VI/0R6iiAlwzh4o6WJTBqoCWQD6zjSIcuoklqmybV3K0ciddi
         9AWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5Klk/L1QXqcP4nGuAAJSreBqvIQqPRs+XqaQ9fmBVNg=;
        b=gJSf8DmF8MV6r4WyTWDNpj1K4yUIiWm5klbKUZEkd13c4xKA/n8Md7HD2s4+hlTWxm
         zh9zhBx545tman0i22Uj/WFNw/uarW+bmbB5U54WFgSIzgAxZCoRIEbXP3xm0dK3AX2m
         kIEfG+gIsqj0mMpAqzAg57i5sCzTqvdJV2UrZykwc86X6NpjZsfNi3rNersuecnpZT3S
         Lzzb+36+AiFi+kprumf8ZS2Nrb8jPT3LujWh/hcl1KTBbRukE/if60mXdkmQNMbAO2xD
         3CF3SDxUoZyc2Jw3VaVzp+iIMLULdbiJ3uaDV/TC8lNchKvKK5y7f7hJdb62I3ohfzwM
         Ue5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SiI0qUbo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Klk/L1QXqcP4nGuAAJSreBqvIQqPRs+XqaQ9fmBVNg=;
        b=b8k5wTSempewFFnMi1E566J9PKvUiYJwz4VPLUDFSkVvDLYhRUEpRs+s3z3iAdg1l6
         As9BZSeC67+2/rtr2rR6fl2Ck+dOm2rHgEge9Cc7Bje/G9/w6TSG2O9xV1TLck4dN2GT
         t2cAwCo9RMM3nR4UQ8t/UjQIl+5bXVSdSSfVywhvLRHaHppgWire5CZb5uU9wHpkqn9/
         gCOOY9r6KsiE8mf+Vr7k1PYiGvPFA8KMHVr9e0FkGKH19lf7gEUO9WLcOPnwwztQPh+2
         Q0ZSO57m/U5MIoOC3TWBfnp5B3LqgcAZhvNZZeFI8tBDNtuu1GzDX2VXAnmzBTxwjSZV
         Te2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Klk/L1QXqcP4nGuAAJSreBqvIQqPRs+XqaQ9fmBVNg=;
        b=k6zkUH02eqAgni9g6oL7jPxbpqe3dQv2RXGNWlW70dvx5QwUdgKvCEclNoPk99FT1E
         qCag4txRWKLNsDP0xS6IcgngNHqHWXYxbZX8jxomgs9RCUCA6HkAmtyc0MuZut704r8I
         tRUNQtTxprM0SDR1R2SdwuVBsPtAtlpGm23yX5gPVsh4LFhSEq/gopyaeIT+fhA/LNL+
         T4R7LHP/WM9+yeY1A5UNcXzSLZh2bPyB1mhLFm52JtOFh70mfpQwCe7eSZXHPwT/bEHX
         lNAJPfpORtHTbLdHjaQRHyGJAv3cPApcIyShsLzwg7nt+11D8JIY7Egplgou/z/X8c66
         vzXQ==
X-Gm-Message-State: AGi0PuayKEdfDr5R3QJGhZ+JcytrcDuy5ngl2pZpxj6nh4UWvSh6SC/A
	05V581J6jolckX25exRGmQ0=
X-Google-Smtp-Source: APiQypLvsP+LlqNYlaLkXwYAB0m2rjPeCsHgsAk/hZB2aYVaQxUUBmT1CSk0dW/UjpLAa/qAACHCJA==
X-Received: by 2002:a92:d341:: with SMTP id a1mr23597794ilh.130.1589306175585;
        Tue, 12 May 2020 10:56:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1b96:: with SMTP id f22ls4429623ill.3.gmail; Tue, 12 May
 2020 10:56:15 -0700 (PDT)
X-Received: by 2002:a92:1593:: with SMTP id 19mr5909876ilv.291.1589306175272;
        Tue, 12 May 2020 10:56:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589306175; cv=none;
        d=google.com; s=arc-20160816;
        b=GAtFmRIVsUOVctzW1nGNazIcFcYehtRGvA6tN/jo4e2+e+Ont4Dw9PozhSlkeTh6Kf
         BrnTi9Xg552FuuxPbujoTkMseIuo2wwcbj/76zh0pCKwr5z2rNA6QR0W2arPsZnKTvd8
         sYHWfwHPD67gW0eNWC5cppieipWGzZlD8YZ6GfX++k3fCC0CqEqy20gsNui5Oatea+pW
         mVzmuWveHCHWog1TUJsT6mf33/ZN50HYdZ08zqKqRqqr5+RYsu4Woc/36jGwKko1tWQf
         OmEpyDYtFHB4a6npwLWMYP8lF4pf47V00Cx20GAl62j2EXdUtmIKhRwoJ0tVhp450cnd
         crKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=232a3UeI1DOJlN2Hl1VV1JacE9AzAHhltRJ2VYXnP1w=;
        b=WWpHP7ruhzba4bdtadU1ynW6yAuCM+nbW1GpU7K52wD12UtSyDhapByfHg6nn0+Scx
         92lIES1awSQPZDvx+Kdr3SozQbUUV5p2SZiVAiTTV3MgATJC9qtRqfVdZnZ9L2cPVxDy
         CgTu5ixpHUADm+0+Mb0oHJoEQO41mozDTrpzHNxElsNRLL9w/DXCf+SPpRhMhrss94cT
         lRQsO59TL9J8bBYGRkZsz/tPItJ4nete1ku/jBSJ89Pd7KO0TzdNYaeAJp7keFxctuBB
         8/MdqI5z4i96rkq7qt8TqqtQK+4geLA/jqAbky/gj+Wt5erKTO/qpWYWgK0Pr9vxwqO5
         PMOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SiI0qUbo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id p18si304556ile.5.2020.05.12.10.56.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2020 10:56:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id p21so640649pgm.13
        for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 10:56:15 -0700 (PDT)
X-Received: by 2002:a65:5b84:: with SMTP id i4mr21255326pgr.263.1589306174309;
 Tue, 12 May 2020 10:56:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200508204751.155488-5-lyude@redhat.com> <202005101057.9xhrjs8z%lkp@intel.com>
In-Reply-To: <202005101057.9xhrjs8z%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 12 May 2020 10:56:01 -0700
Message-ID: <CAKwvOdk16Wa59kPYSM-51P2xcJ9E_RDhTd=7GvGXwtvvvZiHug@mail.gmail.com>
Subject: Re: [RFC v4 04/12] drm/vblank: Add vblank works
To: Lyude Paul <lyude@redhat.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SiI0qUbo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

Hi Lyude,
Sorry for the noise. This report is unrelated to your patch.  It has
to do with Clang validating dead code.  At least now we have a
randconfig to reliably reproduce.

On Sat, May 9, 2020 at 8:04 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Lyude,
>
> [FYI, it's a private test report for your RFC patch.]
> [auto build test ERROR on drm-exynos/exynos-drm-next]
> [also build test ERROR on drm-tip/drm-tip]
> [cannot apply to drm-intel/for-linux-next tegra-drm/drm/tegra/for-next linus/master drm/drm-next v5.7-rc4 next-20200508]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Lyude-Paul/drm-nouveau-Introduce-CRC-support-for-gf119/20200509-083258
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/daeinki/drm-exynos.git exynos-drm-next
> config: x86_64-randconfig-a004-20200510 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 68a9356bdea69dbcec1233f8b1fab47e72fca991)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    In file included from include/linux/fs.h:34:
>    In file included from include/linux/percpu-rwsem.h:7:
>    In file included from include/linux/rcuwait.h:6:
>    In file included from include/linux/sched/signal.h:6:
>    include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
>    _SIG_SET_OP(signotset, _sig_not)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:165:3: note: expanded from macro '_SIG_SET_OP'
>                    set->sig[2] = op(set->sig[2]);                          \
>                    ^        ~
>    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from drivers/gpu/drm/drm_vblank.c:32:
>    In file included from include/drm/drm_crtc.h:31:
>    In file included from include/linux/fb.h:10:
>    In file included from include/linux/fs.h:34:
>    In file included from include/linux/percpu-rwsem.h:7:
>    In file included from include/linux/rcuwait.h:6:
>    In file included from include/linux/sched/signal.h:6:
>    include/linux/signal.h:177:1: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
>    _SIG_SET_OP(signotset, _sig_not)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:167:27: note: expanded from macro '_SIG_SET_OP'
>            case 2: set->sig[1] = op(set->sig[1]);                          \
>                                     ^        ~
>    include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
>    #define _sig_not(x)     (~(x))
>                               ^
>    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from drivers/gpu/drm/drm_vblank.c:32:
>    In file included from include/drm/drm_crtc.h:31:
>    In file included from include/linux/fb.h:10:
>    In file included from include/linux/fs.h:34:
>    In file included from include/linux/percpu-rwsem.h:7:
>    In file included from include/linux/rcuwait.h:6:
>    In file included from include/linux/sched/signal.h:6:
>    include/linux/signal.h:177:1: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
>    _SIG_SET_OP(signotset, _sig_not)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:167:10: note: expanded from macro '_SIG_SET_OP'
>            case 2: set->sig[1] = op(set->sig[1]);                          \
>                    ^        ~
>    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from drivers/gpu/drm/drm_vblank.c:32:
>    In file included from include/drm/drm_crtc.h:31:
>    In file included from include/linux/fb.h:10:
>    In file included from include/linux/fs.h:34:
>    In file included from include/linux/percpu-rwsem.h:7:
>    In file included from include/linux/rcuwait.h:6:
>    In file included from include/linux/sched/signal.h:6:
>    include/linux/signal.h:188:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
>            case 2: set->sig[1] = 0;
>                    ^        ~
>    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from drivers/gpu/drm/drm_vblank.c:32:
>    In file included from include/drm/drm_crtc.h:31:
>    In file included from include/linux/fb.h:10:
>    In file included from include/linux/fs.h:34:
>    In file included from include/linux/percpu-rwsem.h:7:
>    In file included from include/linux/rcuwait.h:6:
>    In file included from include/linux/sched/signal.h:6:
>    include/linux/signal.h:201:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
>            case 2: set->sig[1] = -1;
>                    ^        ~
>    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from drivers/gpu/drm/drm_vblank.c:32:
>    In file included from include/drm/drm_crtc.h:31:
>    In file included from include/linux/fb.h:10:
>    In file included from include/linux/fs.h:34:
>    In file included from include/linux/percpu-rwsem.h:7:
>    In file included from include/linux/rcuwait.h:6:
>    In file included from include/linux/sched/signal.h:6:
>    include/linux/signal.h:232:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
>            case 2: set->sig[1] = 0;
>                    ^        ~
>    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from drivers/gpu/drm/drm_vblank.c:32:
>    In file included from include/drm/drm_crtc.h:31:
>    In file included from include/linux/fb.h:10:
>    In file included from include/linux/fs.h:34:
>    In file included from include/linux/percpu-rwsem.h:7:
>    In file included from include/linux/rcuwait.h:6:
>    In file included from include/linux/sched/signal.h:6:
>    include/linux/signal.h:244:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
>            case 2: set->sig[1] = -1;
>                    ^        ~
>    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
> >> drivers/gpu/drm/drm_vblank.c:2376:2: error: indirection requires pointer operand ('void' invalid)
>            DEFINE_KTHREAD_FLUSH_WORK(fwork);
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/kthread.h:146:36: note: expanded from macro 'DEFINE_KTHREAD_FLUSH_WORK'
>            struct kthread_flush_work fwork = KTHREAD_FLUSH_WORK_INIT(fwork);
>                                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/kthread.h:132:2: note: expanded from macro 'KTHREAD_FLUSH_WORK_INIT'
>            COMPLETION_INITIALIZER_ONSTACK((fwork).done), \
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/completion.h:43:3: note: expanded from macro 'COMPLETION_INITIALIZER_ONSTACK'
>            (*({ init_completion(&work); &work; }))
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    49 warnings and 2 errors generated.
>
> vim +2376 drivers/gpu/drm/drm_vblank.c
>
>   2364
>   2365  /**
>   2366   * drm_vblank_work_flush - wait for a scheduled vblank work to finish
>   2367   * executing
>   2368   * @work: vblank work to flush
>   2369   *
>   2370   * Wait until @work has finished executing once.
>   2371   */
>   2372  void drm_vblank_work_flush(struct drm_vblank_work *work)
>   2373  {
>   2374          struct drm_vblank_crtc *vblank = work->vblank;
>   2375          bool scheduled;
> > 2376          DEFINE_KTHREAD_FLUSH_WORK(fwork);
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005101057.9xhrjs8z%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk16Wa59kPYSM-51P2xcJ9E_RDhTd%3D7GvGXwtvvvZiHug%40mail.gmail.com.
