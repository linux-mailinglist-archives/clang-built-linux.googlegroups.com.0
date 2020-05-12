Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBE6X5P2QKGQEPPRWIFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id F07551CFD4C
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 20:31:48 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id y8sf8619310ybn.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 11:31:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589308308; cv=pass;
        d=google.com; s=arc-20160816;
        b=iOjNflBhUrnUC7B/dgg520SMQBUY/sgnPBZImoIl9QaVYWInql/X4May3OyY1JCJPV
         XR0Vvn4CRRyQ29g0d5LiAPD5+PUoGvMWWT2bBo5u+l3eFPDEoG4YZPPatCKxrYB4cspW
         UaoJI73QM3S2GmRII1b4q/JubNVGKR5JoDT8Rb9bj9t/gd9ll1BcfIA6gc8jvFxfyGTI
         g2s0bM9sQVd3P5cm0PfSZ/zEv2fKSfcTXeik/kqFTRHxeJpz3g+GSnNs6x0kBBtM9yyF
         QZyjlNZx1lEzOmdt3+3cs+golIp8GvTGvkT+A29yB/5w56PLjQAu13e3iRkyW+L0m+Xg
         Y4gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=FyiVGLS3VRVE/LE0Zlcv/y7t4M+W1QpB6WDKkhUs6T0=;
        b=T5PHRlM7uhFvSuOfoHtcVWsUbjC+MbdMRNDl0/mQpoLVWsnjB0WTY5d+zEqsvwiRnU
         78W8J9TLSCSxZYgEtQwRwNZVuY4hPqoNUZH8lv14qlM/Z00gI79vKM5/IjwjtnUheY7X
         PozPLHKhQDy1iNds73MVThfraRtttkZ/fnuWFRnrWxn35lEaTHpRXZLs/q1K0Ctx7U4N
         Hmd6VUOt86ZjOBmeC7OlJmZq5Z3eunEmLaobeiBekQ2Y9S/uHzTk8/Tk1yIve1rdG6pw
         x38XEsDz7QnahJ3z8ivIMZxCN+JkBj3XmL0uQpqruCQuy8snSXnnKRtvTIswrX49iQjJ
         omXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OWXp0zpY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FyiVGLS3VRVE/LE0Zlcv/y7t4M+W1QpB6WDKkhUs6T0=;
        b=sANQngO3LMm7lVpoOv9U89tu0bEZQIXEYMJWDgk5C409nDtJcDIfLRGYirSMphcxO1
         lmRD1sz+ibEA20cTj6MWKNFIx00ilbHT6SaSl4RJJdJn/O+ptpZ7CE2pMd2F7VoZR5AY
         r1imC7cZOFIxkZc2oOe/dTrGTrOHWoX3ft/YFjwmOOT2RV/nILNlJHcCLaMFshI2UtmL
         sO4gDviXjDDVTDvVj8JnPXGjxadJrecob5+jsZmTwKlQ3U0xfQm40TCLcpBN+CjAuuiT
         yqdsv+MJJFGYwZbLAmh6XWCqfMKYERe8AHWW6vXcXe9ZHJw6hQXFlxbdSXgqktT/OPtG
         FGVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FyiVGLS3VRVE/LE0Zlcv/y7t4M+W1QpB6WDKkhUs6T0=;
        b=jWAvhsL1fcPaesOZDw3O6YZlGfNStI9x9ZNj3xA5WKD4466JcWpaWyhqEUcsQYjm82
         BhLPn3oQh/UQm7O3qFxgqRxA3xFudwLNmrE8mYulowpfHWJMk74B3a/3dX8VTZZ19sGM
         bE3tj2u0WS6ijWfFw+6dFth2vpORsGFSlVD342wSgz1NzqoOhJA44EU5rSZokALYjsAz
         OnPQm1LmF7+DyAD2GmFx4abxuYTKyHtIIKg2ilQLws3IzCKnJM6J+L3vGT+DI+6aoB6D
         souxp3dVobgkU1G8bu2F7u9dUR3Au2JQC/VEGjMUIHca+nRuIK1N6R5LU1hGCmGuQhRv
         tO0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FyiVGLS3VRVE/LE0Zlcv/y7t4M+W1QpB6WDKkhUs6T0=;
        b=jI6Jy5KZQD8Koi4TXsG2EGr7EYxUxF2ECH8wXByEXc4Qz8yrWLF7Sfp/mZhv4e/xxA
         ZdJJGtpC8IjxVkT/uzkL1dxAbUe4TLrRIAJaZe+vKHNX5uiLX0/kBdZ8v4FfMuSrAfA1
         /1N2ebOFjn5jYpL+RWczfbIuXE5CaYbq6DtVi2spYikmXTVCXsQ9IX81sCTrjqkvM6pu
         dZeP0PTsxD0IwSi46VIs9s+s0fJTAiK5pZT2ugFySA+CHPoxf3Qq3vzpdBKlGxEd2leS
         6qQMjfKFfITOgSD7X+Og2TVIxWIbOOYmHG+BrymghDvdNmrVKYsLRjRA2KtiDbsBk2/n
         d+uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua/vFGtkaUrzXLDoMv+MY9MwM0PDTbNpkyfO9RM0mlj8fFoWs/Q
	cEimF6QmeZA3V/xMmrbS5QA=
X-Google-Smtp-Source: APiQypJsaO3K5C008y9X+PFXXM+R0jQeTMbwkQXTt4nfvk90lfVlP38v1IzpBpF6j9vAOqFiW0O3gw==
X-Received: by 2002:a25:ca88:: with SMTP id a130mr27412304ybg.229.1589308307806;
        Tue, 12 May 2020 11:31:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c751:: with SMTP id w78ls5118321ybe.4.gmail; Tue, 12 May
 2020 11:31:47 -0700 (PDT)
X-Received: by 2002:a25:8b0c:: with SMTP id i12mr24276852ybl.371.1589308307381;
        Tue, 12 May 2020 11:31:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589308307; cv=none;
        d=google.com; s=arc-20160816;
        b=hBCQhBusMJIxH/6k/NnmE6/r9oKF7f6GT7ogp4LkSKjaS9C0i8AC4dl2uVO306dUFN
         3aqLCEr5Bt22QO0jyuqCyPOftNGiEH8saXY5sCBxJe/+GkH3dcQBZicvStZseL2/lrBM
         W4vCXsus0AEnb3f5bWeShEvcY2/LS14lUHRoVPM+Zie/CfakDcp4Z3dygzyPdl+2f4Ns
         NPx0VQXWcQnWL38Ybr7M3RbR5KGiCygSs4sot67gziT34kTWi56mdVUhqPCJS7173pNI
         UMh02PjG4QeHff7dvQFQX+PSZbWagDxzM1V7nasrnY691jcsFf8m3AeN3wiIWbZOuNcj
         izLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AvpN1jDTGtNRBStxvUbP1R57dyanneBRFIZicFmufjE=;
        b=jOFtj1wN4clYQr4iSTc+3OBqjuGkNd2CKdtI10qE0sSFggaNFJbckxpDmOlmxX3rxO
         OktCV5xps/8Txvyb7vHen+mr7l0WxZV5T/KSctC+WMQoRSVNfiDDs7LYX/JTuwd2ivQR
         dJULmeAFHjNe2k71cW+gp07TWvj61KFY7OoiLh52+techeucFzFyIZGUR7cl9ObD1rxr
         qHk9TbawptrDxQRUgb7T1PKIvVQEANMrHSI5MmSrANI+SPD2P6FRT092PED7IkO6NXVB
         G26+LZQcW4Ij94pKt6iRTZiRCEj//62uDy39PiOrK2PsDWIVkVPEHnbAGXkv9278jz2Q
         /pvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OWXp0zpY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id s14si114336ybc.2.2020.05.12.11.31.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2020 11:31:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id z25so11300894otq.13
        for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 11:31:47 -0700 (PDT)
X-Received: by 2002:a9d:6f12:: with SMTP id n18mr13793882otq.100.1589308306700;
        Tue, 12 May 2020 11:31:46 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id v207sm5475668oie.3.2020.05.12.11.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2020 11:31:46 -0700 (PDT)
Date: Tue, 12 May 2020 11:31:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Lyude Paul <lyude@redhat.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [RFC v4 04/12] drm/vblank: Add vblank works
Message-ID: <20200512183144.GA3648763@ubuntu-s3-xlarge-x86>
References: <20200508204751.155488-5-lyude@redhat.com>
 <202005101057.9xhrjs8z%lkp@intel.com>
 <CAKwvOdk16Wa59kPYSM-51P2xcJ9E_RDhTd=7GvGXwtvvvZiHug@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk16Wa59kPYSM-51P2xcJ9E_RDhTd=7GvGXwtvvvZiHug@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OWXp0zpY;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 12, 2020 at 10:56:01AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> Hi Lyude,
> Sorry for the noise. This report is unrelated to your patch.  It has
> to do with Clang validating dead code.  At least now we have a
> randconfig to reliably reproduce.

The -Warray-bounds, yes but...

> On Sat, May 9, 2020 at 8:04 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi Lyude,
> >
> > [FYI, it's a private test report for your RFC patch.]
> > [auto build test ERROR on drm-exynos/exynos-drm-next]
> > [also build test ERROR on drm-tip/drm-tip]
> > [cannot apply to drm-intel/for-linux-next tegra-drm/drm/tegra/for-next linus/master drm/drm-next v5.7-rc4 next-20200508]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Lyude-Paul/drm-nouveau-Introduce-CRC-support-for-gf119/20200509-083258
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/daeinki/drm-exynos.git exynos-drm-next
> > config: x86_64-randconfig-a004-20200510 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 68a9356bdea69dbcec1233f8b1fab47e72fca991)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    In file included from include/linux/fs.h:34:
> >    In file included from include/linux/percpu-rwsem.h:7:
> >    In file included from include/linux/rcuwait.h:6:
> >    In file included from include/linux/sched/signal.h:6:
> >    include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
> >    _SIG_SET_OP(signotset, _sig_not)
> >    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/signal.h:165:3: note: expanded from macro '_SIG_SET_OP'
> >                    set->sig[2] = op(set->sig[2]);                          \
> >                    ^        ~
> >    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
> >            unsigned long sig[_NSIG_WORDS];
> >            ^
> >    In file included from drivers/gpu/drm/drm_vblank.c:32:
> >    In file included from include/drm/drm_crtc.h:31:
> >    In file included from include/linux/fb.h:10:
> >    In file included from include/linux/fs.h:34:
> >    In file included from include/linux/percpu-rwsem.h:7:
> >    In file included from include/linux/rcuwait.h:6:
> >    In file included from include/linux/sched/signal.h:6:
> >    include/linux/signal.h:177:1: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
> >    _SIG_SET_OP(signotset, _sig_not)
> >    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/signal.h:167:27: note: expanded from macro '_SIG_SET_OP'
> >            case 2: set->sig[1] = op(set->sig[1]);                          \
> >                                     ^        ~
> >    include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
> >    #define _sig_not(x)     (~(x))
> >                               ^
> >    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
> >            unsigned long sig[_NSIG_WORDS];
> >            ^
> >    In file included from drivers/gpu/drm/drm_vblank.c:32:
> >    In file included from include/drm/drm_crtc.h:31:
> >    In file included from include/linux/fb.h:10:
> >    In file included from include/linux/fs.h:34:
> >    In file included from include/linux/percpu-rwsem.h:7:
> >    In file included from include/linux/rcuwait.h:6:
> >    In file included from include/linux/sched/signal.h:6:
> >    include/linux/signal.h:177:1: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
> >    _SIG_SET_OP(signotset, _sig_not)
> >    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/signal.h:167:10: note: expanded from macro '_SIG_SET_OP'
> >            case 2: set->sig[1] = op(set->sig[1]);                          \
> >                    ^        ~
> >    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
> >            unsigned long sig[_NSIG_WORDS];
> >            ^
> >    In file included from drivers/gpu/drm/drm_vblank.c:32:
> >    In file included from include/drm/drm_crtc.h:31:
> >    In file included from include/linux/fb.h:10:
> >    In file included from include/linux/fs.h:34:
> >    In file included from include/linux/percpu-rwsem.h:7:
> >    In file included from include/linux/rcuwait.h:6:
> >    In file included from include/linux/sched/signal.h:6:
> >    include/linux/signal.h:188:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
> >            case 2: set->sig[1] = 0;
> >                    ^        ~
> >    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
> >            unsigned long sig[_NSIG_WORDS];
> >            ^
> >    In file included from drivers/gpu/drm/drm_vblank.c:32:
> >    In file included from include/drm/drm_crtc.h:31:
> >    In file included from include/linux/fb.h:10:
> >    In file included from include/linux/fs.h:34:
> >    In file included from include/linux/percpu-rwsem.h:7:
> >    In file included from include/linux/rcuwait.h:6:
> >    In file included from include/linux/sched/signal.h:6:
> >    include/linux/signal.h:201:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
> >            case 2: set->sig[1] = -1;
> >                    ^        ~
> >    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
> >            unsigned long sig[_NSIG_WORDS];
> >            ^
> >    In file included from drivers/gpu/drm/drm_vblank.c:32:
> >    In file included from include/drm/drm_crtc.h:31:
> >    In file included from include/linux/fb.h:10:
> >    In file included from include/linux/fs.h:34:
> >    In file included from include/linux/percpu-rwsem.h:7:
> >    In file included from include/linux/rcuwait.h:6:
> >    In file included from include/linux/sched/signal.h:6:
> >    include/linux/signal.h:232:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
> >            case 2: set->sig[1] = 0;
> >                    ^        ~
> >    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
> >            unsigned long sig[_NSIG_WORDS];
> >            ^
> >    In file included from drivers/gpu/drm/drm_vblank.c:32:
> >    In file included from include/drm/drm_crtc.h:31:
> >    In file included from include/linux/fb.h:10:
> >    In file included from include/linux/fs.h:34:
> >    In file included from include/linux/percpu-rwsem.h:7:
> >    In file included from include/linux/rcuwait.h:6:
> >    In file included from include/linux/sched/signal.h:6:
> >    include/linux/signal.h:244:10: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
> >            case 2: set->sig[1] = -1;
> >                    ^        ~
> >    arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
> >            unsigned long sig[_NSIG_WORDS];
> >            ^
> > >> drivers/gpu/drm/drm_vblank.c:2376:2: error: indirection requires pointer operand ('void' invalid)
> >            DEFINE_KTHREAD_FLUSH_WORK(fwork);
> >            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/kthread.h:146:36: note: expanded from macro 'DEFINE_KTHREAD_FLUSH_WORK'
> >            struct kthread_flush_work fwork = KTHREAD_FLUSH_WORK_INIT(fwork);
> >                                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/kthread.h:132:2: note: expanded from macro 'KTHREAD_FLUSH_WORK_INIT'
> >            COMPLETION_INITIALIZER_ONSTACK((fwork).done), \
> >            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/completion.h:43:3: note: expanded from macro 'COMPLETION_INITIALIZER_ONSTACK'
> >            (*({ init_completion(&work); &work; }))
> >             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    49 warnings and 2 errors generated.
> >
> > vim +2376 drivers/gpu/drm/drm_vblank.c

This one ^

is definitely related to that patch.

Clang's error is kind of stupid here... GCC makes it much clearer what
is going on:

$  make -j$(nproc) -s CROSS_COMPILE=x86_64-linux- O=out/x86_64 olddefconfig drivers/gpu/drm/drm_vblank.o
In file included from drivers/gpu/drm/drm_vblank.c:28:
include/linux/kthread.h:110:20: error: field 'done' has incomplete type
  110 |  struct completion done;
      |                    ^~~~

This fixes it for me:

diff --git a/include/linux/kthread.h b/include/linux/kthread.h
index c6fee200fced..824ba7573100 100644
--- a/include/linux/kthread.h
+++ b/include/linux/kthread.h
@@ -4,6 +4,7 @@
 /* Simple interface for creating and stopping kernel threads without mess. */
 #include <linux/err.h>
 #include <linux/sched.h>
+#include <linux/completion.h>
 
 __printf(4, 5)
 struct task_struct *kthread_create_on_node(int (*threadfn)(void *data),

> >   2364
> >   2365  /**
> >   2366   * drm_vblank_work_flush - wait for a scheduled vblank work to finish
> >   2367   * executing
> >   2368   * @work: vblank work to flush
> >   2369   *
> >   2370   * Wait until @work has finished executing once.
> >   2371   */
> >   2372  void drm_vblank_work_flush(struct drm_vblank_work *work)
> >   2373  {
> >   2374          struct drm_vblank_crtc *vblank = work->vblank;
> >   2375          bool scheduled;
> > > 2376          DEFINE_KTHREAD_FLUSH_WORK(fwork);
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005101057.9xhrjs8z%25lkp%40intel.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200512183144.GA3648763%40ubuntu-s3-xlarge-x86.
