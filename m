Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRVUUH2QKGQEOLASDZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 320141BC534
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 18:31:04 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id c1sf15760684plz.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 09:31:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588091462; cv=pass;
        d=google.com; s=arc-20160816;
        b=f3OMBF2Z567Q56J9q3Jzq5mR3gAO2biCr77i0fa4JhIppY0xnUEbEVuh/NNl7GYUBx
         ls1gRyCBaj64LIF95xKEr6wUOzG1Uw5KyH4HQ4JHhO1iATuwLbi84LO25Z15AVHP0nd9
         YP44PiZOlOMNLC1vgOEvaBzeT7jj1zFmqvpgDKnQ5WKZxkBKjOD7w+e6XjpqnsKG+sIo
         PkVnpM0ei6LvjCsiIGth9Bm05bvJeDbzs2pXGqsGdxhWkMg7uGHTNxFKEmp1q8fSNasV
         zKdE/t4oYC5PW0Fx7HML5jOfF8Dxgr3b5DpLHGUVoQmMYRk0EzEX7HDHMO6oAE8QDCDB
         fLWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Mw2lDqe2X+VCVQIk9L4ADe0SyHcMA/lMWO8sTp2wMCM=;
        b=rVrTznxlBmgeKhATXqL/o3tJsbMfjsZl/JJE4AjztjzLds88vg51WSZhxXn3FbdcYY
         HG14EHcRh7ENs1kX2veNj7CK3Ux7Erj1EdBv8BfPe9icaLdMjjE992j36srtJx9KlsE3
         NvmIuKzajz7KaZhlVDH5mEYJGMvVSrRgbkdpI7PHb1PvwvhoywgMLCiy5/OssV7kPXN8
         grPriHfj074JnMMVBQyd4pUxEn6LcH4T36jsb0Y5x49eTCT/9gOGdrScfQJU0VQEsgku
         TIn+IF9gxM4YDF1/lh8mWyw6Ozq3anqfrTXfc0m9YLxym+kFyMiPK4597gMVbnRbUnu6
         eObg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MDAJZSj9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mw2lDqe2X+VCVQIk9L4ADe0SyHcMA/lMWO8sTp2wMCM=;
        b=MSMr5PD6Rd8L72VKNvkQkYPk5DmB7S9c/I6Pkdc1TlJXehftBiImSxbjKVMrNZM7QK
         hdlmR/78lpmLYo2OERgsRTyyXCFn3X9sQs+YE/qcNMPdfbdgLk+nFapKoDxeDsyiF28N
         qGsjak7hOf/KmHDvCZyngl3uvQ857cqS4K2sTqwpuKq6fM+Mrnd7gXlapQOMQKUahiKX
         w9x9OXC+7RiHDbAeJ42cSVYQ1sM+iWe2tXLdC//Jrl38cKcAHIr5KKNc0V8AKCq0w1AS
         HCvHUE5+b0JPPbZrt1Xd1BnDIxYyqbp936gMRN7pSzAFPSRRysvlPR4WTcTpk2wtFS08
         sB4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mw2lDqe2X+VCVQIk9L4ADe0SyHcMA/lMWO8sTp2wMCM=;
        b=km8YLnzpRapnS/QcKja5/brhKi7R7mF5x4qVgBdpWQeU21S36zV8R1YI6Cu/J1bAYe
         CF0pon5WcTKSEGb4c8qhBGDPU4Ny+he44hBr5iYkaCiRzrPYvuwcoUNq8oE+9VLGkoQu
         RsjoIXZJUSOLO4GelYV1q0vt3v3bWBimXGugjr+QtZkw6rk37nasTlFheR4fwgsts4XO
         VPCb+3CuwJk9FJxuBodFm/+SwBkXBDYFVAD4NsVrwYeiLt0DIui+ximhPhROxZk8CPlR
         s2cyeZvSQNcsNAcfy7Alnkp4ltlmWywPWlKTtYd4GAWFgzS1ye5iCTasfFP+Dvfj6/RL
         r31Q==
X-Gm-Message-State: AGi0PubQj9eyXbkuLhO+lhxCt07ORDq8eC1cNx8ICxfzMi+8WNMBidLN
	Ia3kny7gYHf3t1Y+7Z7zebM=
X-Google-Smtp-Source: APiQypJkNHSfpX//mWV+XfcqL/T14RVl8do/q2QY6YCcvEBPKs60A2gRGLQFCUIvlf9xqmXpTKRm6A==
X-Received: by 2002:a63:4d18:: with SMTP id a24mr27674602pgb.97.1588091462620;
        Tue, 28 Apr 2020 09:31:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:32f:: with SMTP id 44ls20942325pld.1.gmail; Tue, 28
 Apr 2020 09:31:02 -0700 (PDT)
X-Received: by 2002:a17:90a:5aa7:: with SMTP id n36mr6285114pji.45.1588091461783;
        Tue, 28 Apr 2020 09:31:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588091461; cv=none;
        d=google.com; s=arc-20160816;
        b=xT27/GGjCOfHQ3N5Mc3TAQ7xYIq6lfWavJ5iuUcGOV6sRlG4Cx8r+hAGsoFJYP8H71
         DvS+eke3M3UIN/o0Y4qkIsAJbg7F6pFN61PD0JvGYAXzgeimK1Nphd1yL1lftl5rjPUU
         j+zT8Jt2HRiamIqsSJtYszO03BfALvUlf5wH7irGkX3DOo+kXuPrTlT4UjJ3UKWKLz/Y
         BszVoZvM9MajUP2Ndrko06Z8Pk6+Bc/uSK+bZBd8xMOSjQ/NUUs44j/pSXiMVWYx1Ytd
         vYJv81QkxEbvHNrPBzZyd3Wrt+zhNtMZmLtpKG/GI5KXhZ++/WCy0o5N191GXeZnAcuX
         i/gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=71nkZaKF7frb8pZJQ+uShI8fihNt7Nhxv+cY0tYvCYM=;
        b=i42vOs7zXi1x9+sIaTPjZQQMpD0WWBzFIiedoUpY5LVumdfxpgbyijzuSgTQfVFzsh
         N/ySnlwtClrtxAEM6063DarpL1e5PaANPzAc4qKJXGgzAN+EYVtNCNsaxStukUqtnvd7
         tE9RFZJzWgx4qBABtTolFHdZd8dAoTRbj8Mq3E8jbNUUtHhAc0hTHIdTRj62YCe5c+7/
         ORO3vyTJcf8BpkzufA0wN3M1r8nf3YArfepDdKBSi2NSIUXlBmQHvECJXjHDaQo3QBYV
         ytTztZj4H5s9S6LlFjZ5F+PX+GgqktIU4SS5SCNJRWAAb0heOvRZ9lFsf3RPLVrPCh02
         pB4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MDAJZSj9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id e6si1070450pfe.3.2020.04.28.09.31.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 09:31:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id d24so8572284pll.8
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 09:31:01 -0700 (PDT)
X-Received: by 2002:a17:90a:a2d:: with SMTP id o42mr6153123pjo.164.1588091461212;
 Tue, 28 Apr 2020 09:31:01 -0700 (PDT)
MIME-Version: 1.0
References: <202004281818.1ptgznrP%lkp@intel.com>
In-Reply-To: <202004281818.1ptgznrP%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 28 Apr 2020 09:30:50 -0700
Message-ID: <CAKwvOd=-XNzdoe_GhC6guj63Y_nfKG1FFUZ=izNGCk=qX6iTVQ@mail.gmail.com>
Subject: Re: [android-common:android-5.4 16/36] include/vdso/clocksource.h:9:10:
 fatal error: 'asm/vdso/clocksource.h' file not found
To: cros-kernel-buildreports@googlegroups.com
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MDAJZSj9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a
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

What's cros-kernel-buildreports?  Is Android's kernel team on that
mailing list? (This looks like a MIPS build of an Android tree,
emailed to a list that mentions CrOS).

On Tue, Apr 28, 2020 at 3:04 AM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://android.googlesource.com/kernel/common android-5.4
> head:   7f84f8f1841844015ce11c0606d4e57b75533604
> commit: 2b3f7bf08d3db5471d541868f201e2209cb26079 [16/36] BACKPORT: linux/clocksource.h: Extract common header for vDSO
> config: mips-randconfig-a001-20200428 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f30416fdde922eaa655934e050026930fefbd260)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         git checkout 2b3f7bf08d3db5471d541868f201e2209cb26079
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    In file included from fs/proc/stat.c:15:
>    In file included from include/linux/tick.h:8:
>    In file included from include/linux/clockchips.h:14:
>    In file included from include/linux/clocksource.h:30:
> >> include/vdso/clocksource.h:9:10: fatal error: 'asm/vdso/clocksource.h' file not found
>    #include <asm/vdso/clocksource.h>
>             ^~~~~~~~~~~~~~~~~~~~~~~~
>    1 error generated.
>
> vim +9 include/vdso/clocksource.h
>
>      6
>      7  #if defined(CONFIG_ARCH_CLOCKSOURCE_DATA) || \
>      8          defined(CONFIG_GENERIC_GETTIMEOFDAY)
>    > 9  #include <asm/vdso/clocksource.h>
>     10  #endif /* CONFIG_ARCH_CLOCKSOURCE_DATA || CONFIG_GENERIC_GETTIMEOFDAY */
>     11
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004281818.1ptgznrP%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D-XNzdoe_GhC6guj63Y_nfKG1FFUZ%3DizNGCk%3DqX6iTVQ%40mail.gmail.com.
