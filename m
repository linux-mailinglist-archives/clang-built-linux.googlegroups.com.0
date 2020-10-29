Return-Path: <clang-built-linux+bncBDX4HWEMTEBRBEV75P6AKGQEBVI3FWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id D047629EFC8
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 16:28:19 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id w16sf2259756ply.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 08:28:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603985298; cv=pass;
        d=google.com; s=arc-20160816;
        b=eWfZI49FQ0v991DWINpOV9ie0aVwniXeEnbtZUTTEpw9DYXkC7K/Elwum4iAW3k8es
         AoFXcJlBk2eubIHBJ5mI/aMfPneg9hOYAfjFq3UJ4mX26ps77T7bo1iiTIkSxmOfJyFs
         2AwdAskY8X3vsFRB7BCeAmJv+GzbTeBhxagw7FPGBK4G8dWN5DbCPZ5PJV/rsSfIyvIH
         CPd1l/ti0Dg4szpwFMACVgS44NoGt1ayfE/Lsrusi/KxWfbD3JtTVYjWICbggu1Wl4Wu
         /QDf11RYdVky4jdjVHV87nuUajhpSRqx/PZzMGpik0fDjge1z2V6knf5Q4QUs3NKgC1m
         fxNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cVX1AVgNn14swu9Dn8yx4X2NZlHY8MvRaPZ5OV/2NVw=;
        b=bRZVHwHrpjAVdXA+DPQNZdRdhxIMbtA7Hgayr1J6AgFl6xaFG390T6Wo2OGh4z7UIO
         6Y3sKxGME1xLBV9NdIXeD4l5AJBbelDqd/JXuHKreGzF91P8/hhveFoZX40fWROCp1rD
         QLjiVGZSjc0PuTvkp0Fumh35dz3aCaZ9uAF138iiUTn4jewB0U56Q8ZbfUeL/ZNtJTN1
         GT3WznWLq9DjUfqfIz86dzZ5o/5vOkTWikY37R6f2m4FSHkxRBJyEHpSuNEuTnzF+TEW
         GkHcXyrWplUJyrNYsxHJoz0SP1Nor3B7QtGc+vofx8C7eGdU6NGsv4x4yNOPTFbeKN6I
         LijA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e2b8xCUI;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cVX1AVgNn14swu9Dn8yx4X2NZlHY8MvRaPZ5OV/2NVw=;
        b=jvyDvl6mzWJXcmR803Q1eW9DiH6O2SdimjxEdpk7kXbvrPUHLgVAj4QpKAUu2AbA1L
         GBVBEBjAB/TTAfEhtqSe7kOeqdsedu5nJEmXZoydAGrnFIC3iBnggReVi7XiKiV2l2AO
         SmGlAZtjCxg6Ndbj1YDiakMHTaelRBHYJ2t8CU7vYbTkIwZiB3ri3bdsUZxxF30UDqyu
         xjs8nnAMSouY/DvMBpRMfbysMQsDCCrEkIbwxMUBWvy1P3QrMnQkaVBc4JOPLi3p8fvW
         TYhBgbnb8UF/OsjB5HZ6o+svoA8GiisX1iL7R3Ua1TH0L0q9m/MePuynsE8oDmwxUwB0
         C2Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cVX1AVgNn14swu9Dn8yx4X2NZlHY8MvRaPZ5OV/2NVw=;
        b=U3inmHRItO+V3jV7h6FNaXgTDQxd9OmVLzIYchP2tNZbXODYo4AGoNsegYTSEtiWGM
         CYTkNhPURzHdcFMd3jZVoPnqBGl6wwtP1MFvLVdSZTotk9ObMOevcLYuhyryPJ67vT0t
         RQwb7oKSpCxHnoCsb6iBEP9lM108vgx9VseAcuSaizdvp8OgYNaH69fFAolvUnKFVLPZ
         n9lQgJLBKA6K0ccUycUJepbJiuAIDuLPvtQVV6lPWi77a4jIdoBVGOK8rHCiDn9keu4a
         bIqXGPACf6IQZHAMeVPaz9dT0XY0vwh6858T8T9QRbUG8TBlJh2aRgzfwNrKkA//4bSH
         l8Wg==
X-Gm-Message-State: AOAM530baTIhBrTmQJ3XIl2XOTa1sbEdyrUHpXhoBkYobvnTo4tnsrc6
	Z69G16/30jqMasiXH9UXk/0=
X-Google-Smtp-Source: ABdhPJw9DSEMh74gE3YO7PctubMRz0OSLJjuZg6bnKXO6KDssBpqOo5Bi8kt2TEpwR2f4HDtYpr6Ug==
X-Received: by 2002:a17:902:7d89:b029:d5:cfb6:e44 with SMTP id a9-20020a1709027d89b02900d5cfb60e44mr4785726plm.28.1603985298555;
        Thu, 29 Oct 2020 08:28:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4486:: with SMTP id t6ls105867pjg.0.canary-gmail;
 Thu, 29 Oct 2020 08:28:18 -0700 (PDT)
X-Received: by 2002:a17:90a:5292:: with SMTP id w18mr53047pjh.191.1603985297984;
        Thu, 29 Oct 2020 08:28:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603985297; cv=none;
        d=google.com; s=arc-20160816;
        b=Uf9E0uuTo4s0dy1KEtEnpSmJ/IygpSk/0QeuuC8PBezZP3emtDfwd7WBk0Iccan5YO
         EbXWC2eTfYgnoJ9+7Ms7hXiBjeyj4ACky3+AapzJ3vR1hVgrcYxEewqTzKopX/H+Vq0p
         4q2knGg9GLXZWofwjqHuSMgVpm288aTxbEMQwq8QLPUoaOv8Q0Rp4xYO93VYxPqPtdEI
         naIeFALhLorPBEtN8qzLa61KT4729x9tsb6LPhu+6Xb67Ux4OhgCDbw3fmOQb27hfkr+
         eNwo5cz0zYH/Wlv5H6bLKC3Goxas5AhvQZVnOPqEvfUlzEvBVzhSOFHD8asrpHGomh1P
         APRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=apFGQpJNldG2edOQE4EMnGm/BVDPDRnfEMKqur5QD6U=;
        b=DP70qIrRobiajkd24y1KPFgjS5y+P9s9CpxfZ5jzOPjpHiT9Bjy4r8uuW4UT13pG36
         z1mhlQH6bSc2W/JNGwVqxWqcBhi0OebELOB70aWyHGFeAu749fjk77E0mtNNgn9I/ugJ
         1hW5xtz0MR7kd61k7E3l3lcgFs9Keg5/MO86+teB4nj8lT2sFPiY0MMrFmdTH+id4ssf
         +3bIMgt/nE6nhvx7YzXStraIhGW+mTFjH6mKsb9PZutLgprL7kFcTBypn24lCO/eUsia
         z69NiOzFqGGk1GAYczhFhMgzDh6MdE6NurH6HAGJQWdbTFRAXEAhl6j3tTalUt+pWcw+
         DIzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e2b8xCUI;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v8si244153pgj.1.2020.10.29.08.28.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 08:28:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id b3so2629053pfo.2
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 08:28:17 -0700 (PDT)
X-Received: by 2002:a17:90b:807:: with SMTP id bk7mr324734pjb.166.1603985297541;
 Thu, 29 Oct 2020 08:28:17 -0700 (PDT)
MIME-Version: 1.0
References: <202010260230.VivTG0Gb-lkp@intel.com> <20201025121708.04d4070a44e28146baf9a6a7@linux-foundation.org>
In-Reply-To: <20201025121708.04d4070a44e28146baf9a6a7@linux-foundation.org>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Oct 2020 16:28:06 +0100
Message-ID: <CAAeHK+wdv=X-iD208M2m3Xte9F+g2kYRDqQr4A+GP7Z1tY85BA@mail.gmail.com>
Subject: Re: drivers/video/backlight/ltv350qv.c:192:12: warning: stack frame
 size of 13472 bytes in function 'ltv350qv_power'
To: Andrew Morton <akpm@linux-foundation.org>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e2b8xCUI;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=andreyknvl@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: Andrey Konovalov <andreyknvl@google.com>
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

On Sun, Oct 25, 2020 at 8:17 PM Andrew Morton <akpm@linux-foundation.org> wrote:
>
> On Mon, 26 Oct 2020 02:15:37 +0800 kernel test robot <lkp@intel.com> wrote:
>
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   d76913908102044f14381df865bb74df17a538cb
> > commit: cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4 kasan: allow enabling stack tagging for tag-based mode
> > date:   3 months ago
> > config: arm64-randconfig-r005-20201026 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1c8371692dfe8245bc6690ff1262dcced4649d21)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/video/backlight/ltv350qv.c:192:12: warning: stack frame size of 13472 bytes in function 'ltv350qv_power' [-Wframe-larger-than=]
>
> That's a lot of stack.
>
> >    static int ltv350qv_power(struct ltv350qv *lcd, int power)
> >               ^
> >    1 warning generated.
> >
> > vim +/ltv350qv_power +192 drivers/video/backlight/ltv350qv.c
>
> Odd - the code looks pretty normal.  It is possible that your compiler
> is (crazily) inlining ltv350qv_write_reg()?

This is the same issue in LLVM that was reported by Arnd for generic
KASAN (also see KASAN_STACK_ENABLE option description). By default
KASAN shouldn't have stack instrumentation enabled unless
KASAN_STACK_ENABLE is specified. Perhaps it makes sense to disable it
for KASAN_SW_TAGS config on the kernel test robot.

[1] https://bugs.llvm.org/show_bug.cgi?id=38809

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2Bwdv%3DX-iD208M2m3Xte9F%2Bg2kYRDqQr4A%2BGP7Z1tY85BA%40mail.gmail.com.
