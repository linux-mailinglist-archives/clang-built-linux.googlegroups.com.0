Return-Path: <clang-built-linux+bncBAABBZWFY36QKGQENGLNIPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 888DC2B39BD
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 22:51:35 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id q8sf6471558otk.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 13:51:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605477094; cv=pass;
        d=google.com; s=arc-20160816;
        b=dM/XfRDhSYlJ6tVD/3uk/kSvyUBfFn4s9Td/IlOURPiE9JrTCTDqPY2OiLWLEkBRVb
         cTLCyqg8rnnNwUSs+fZ2boFPQht5WTC7FkgPa+3bsrS8NF1rMp1zCUa6fpBbfyaJePJX
         0qwThrB47TPQm+2yr9tnRPFXYfWAt6+ViXOqVU7Zd8ICQIDbeH4vRZm2OInVtd3m7MIr
         1OS19n/fJHQrvjfFB0P2f6e8vVwy1cgVMmBFBC1+EQ9wr07Ph1YDO8gBYuN4y6pPfjzS
         4kYEQaLyKMsk2i4tPqdK+cnT7HX1c0wsbphXy76n4neFywVrSFvJLW/V/J2u9XxPOt7V
         DP5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4r6tAuzpHnXmyo7PI2klKT6bwSVs8oTqF8UwUOtPaLg=;
        b=rT1xWPOGm1RV4pt5+t7zJCUM8ovFwnX71KjBl7gwbY/CYjPtXXk8TUacj8FRG/FW6q
         vnkH8kX+rc4FlkbXKiwpEdfzDUsVVqmuDrP4K0M7aSVwFAV1k3E5wxmEu8XL/TqerFdw
         Ev1J6TUCNhr2k77JHXyPRTy1Po6UK5SuSTLVDMJHJPJBsxYbDhDEoAgoI5bEU8WM7GuW
         hSyO7m0JsUopIArHOyxLXiFaq2qds0TdsHfQnmZW6ps97XSzSRwVTfY0xxMUiqnC+S3b
         yKs7EXVe9ke2RjwWnWtN43h+y6SuZxHTVOSmh2MQ5npew8ccxkqJxlXUfSixGkIwT5QE
         g90g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yr8ehzE1;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4r6tAuzpHnXmyo7PI2klKT6bwSVs8oTqF8UwUOtPaLg=;
        b=XRCbNaPIpF6qldebEGWBNWMJU48ptdn61RSoObjjrdVg2j0pRkE8vF/nXZj5kIHpRO
         e7tZArtQ5GL6m2A292GULOInKl2BmNqV3d5Xhg2AHD5jkHcX4SCRm6QRJNJpg9j7RNEF
         T14S11LYv5C7eShlj08+dvTxSEe4nTOGo/jkKF2SA2FyTZjFUkNPGeyrI/Xt+8IuLQa1
         HvfGoeIEPgwA6eYmfFafXHOR1s9OpWkSzLWXqIddA8dlgi/DoOcR2Q9H0Z+diAbDmgIV
         UI/QpMPDoFRKd34XKs99Pnevcz4w/LT7/1jYslh4b2/1VolcW3/5RXm/1pADqTMnTME9
         3qEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4r6tAuzpHnXmyo7PI2klKT6bwSVs8oTqF8UwUOtPaLg=;
        b=n//zpT9xZB08JQBHA19LTk2ojJmFIJ89Yto8l0/aQob8n0z8DuTYsW1F8VmcLHj3vV
         GWVBMWcGy8u1+lwjR5BYtGv18szlP1UI2mQvCKxyAqkgpcxoadbGvmwaQZ/qDp3P7rMp
         PGvx99nBj8ejEsbqB1VTP8piJJRM0iW0UJV64R7/iHOPF9Z9Yp+CSSxgCtb6NSzvRxSQ
         +4OIafMIynnFkjaedHfb+UftimUthHpHzJE4KdOwUZ9/TAaQMcZGH/ycV7VzvD2WSS6w
         //T/swN4oWzHqvbNGt7OrdxNPzCBPMOOMU/Bt/Ztl0Q8eLlcnWUXmCG/lyQQX5QDOqQF
         to1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322SVVowVQvFLecy08sDmAz+mmdvX9PEPnGxORMsn7V7MNdDlYL
	67lhWDCbcL6nP+65bOy6lXM=
X-Google-Smtp-Source: ABdhPJyUWmh28R42DTdSMkuNbySpjcEDY8zlNLNuVINXxmtaY3mxj7FHGS23mSSZSWMTYw5oPsCETQ==
X-Received: by 2002:aca:570d:: with SMTP id l13mr7940401oib.96.1605477094138;
        Sun, 15 Nov 2020 13:51:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a95:: with SMTP id l21ls2831512otq.4.gmail; Sun, 15 Nov
 2020 13:51:33 -0800 (PST)
X-Received: by 2002:a9d:4715:: with SMTP id a21mr8605686otf.220.1605477093843;
        Sun, 15 Nov 2020 13:51:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605477093; cv=none;
        d=google.com; s=arc-20160816;
        b=BK6qxQCNXQ9qcvYAl0RFmMN+akvJmg7Ifc4Jpi1y9nAUb9i73PWtw81Z93O3PyZdOe
         RxJHhOUX/okplgFlNa+KsZritZpoXLIAf756JF2BIQbT0NoM+Mycg9PmFxelLfK9v1xq
         3EKJCy8vguBn2IHxvaiDv9THH3veO4LABaTIlnmOy88MtMadWTi+9sBn/CqOjm6qGMNU
         rf2z4tMDe7/oENVSRSxHsc7864kwFlMY+1yvIAHwWfNKEPv7G0i6AJCxTiOW4iS++SF6
         3BZPgWkX2HDAwgyUlEeZLgKWZ7ePqCfX+j3OPr4KWISHfPHQwekosmxkYbEoZPS1tv8N
         j5Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rKTFLT5Fb6fLB6Qw56A54QFsRnKDv20o6jMmnAWm8rg=;
        b=pwRbBcO1U3WJt3NcJWzytnFkyWIIfxCWhQSBnT13B89ZLk3XtaYxLwEyjqVyCSt9Dp
         DtWS1ROWdTJqMPU0g5s+n7ky4HivvbrshbxEZM8IVB+GstoExEzRg/yMYaK+JDtDW8+Q
         3GhFLJ3vjQ+pkNKu8U+adji3JIiT9QBRSJ/s7bjDhFlGCWoZi3TYa6TQzNvMnZTsyPk2
         ta1jxaC0XjnW+4K6Xkox4Wa0hw/hvILeItR0VOL4Qy3ryAr4DbNMfq7q864v2yhNdH5X
         +fBvJCaWV0upavgZG0KSyf0BBv8DLC+1ZgDj/Bs5ZQgJC68sejeqEflRT5fizva10mxb
         bh8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yr8ehzE1;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r6si2041746oth.4.2020.11.15.13.51.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Nov 2020 13:51:33 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DC9C72244C
	for <clang-built-linux@googlegroups.com>; Sun, 15 Nov 2020 21:51:32 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id h16so10013872otq.9
        for <clang-built-linux@googlegroups.com>; Sun, 15 Nov 2020 13:51:32 -0800 (PST)
X-Received: by 2002:a9d:23a6:: with SMTP id t35mr8208434otb.210.1605477092225;
 Sun, 15 Nov 2020 13:51:32 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYssjT9+BBwGrjgVOwqVM923GmEtShQV8pVFnsu3X09-ZQ@mail.gmail.com>
In-Reply-To: <CA+G9fYssjT9+BBwGrjgVOwqVM923GmEtShQV8pVFnsu3X09-ZQ@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Sun, 15 Nov 2020 22:51:16 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3DAVK2Vy-Hb7AbbFwfRnMCkwtmw1L5EivSRdoZ17hJ9A@mail.gmail.com>
Message-ID: <CAK8P3a3DAVK2Vy-Hb7AbbFwfRnMCkwtmw1L5EivSRdoZ17hJ9A@mail.gmail.com>
Subject: Re: [stable rc 5.4] arch/x86/events/amd/../perf_event.h:838:21:
 error: invalid output size for constraint '=q'
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Anders Roxell <anders.roxell@linaro.org>, =?UTF-8?B?RGFuaWVsIETDrWF6?= <daniel.diaz@linaro.org>, 
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Brian Gerst <brgerst@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yr8ehzE1;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Sun, Nov 15, 2020 at 9:48 AM Naresh Kamboju
<naresh.kamboju@linaro.org> wrote:
>
> Hi Anders,
>
> There are a large number of build failures on  i386+Clang on stable rc 5.4
> We may have to disable i386+Clang on 5.4 and below branches.
>
> Because from Nick Desaulniers
>               "With this, Clang can finally build an i386 defconfig."
> meaning this was enabled in 2020-May-04 which is recent past.
>
> please find below error log,

Hi Naresh,

> make --silent --keep-going --jobs=16
> O=/home/tuxbuild/.cache/tuxmake/builds/3/tmp ARCH=i386
> CROSS_COMPILE=i686-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> clang'
> In file included from arch/x86/events/amd/core.c:12:
> arch/x86/events/amd/../perf_event.h:838:21: error: invalid output size
> for constraint '=q'
>         u64 disable_mask = __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);
>                            ^
> include/linux/percpu-defs.h:446:2: note: expanded from macro '__this_cpu_read'
>         raw_cpu_read(pcp);                                              \
>         ^

Adding the clangbuiltlinux list, Brian and Nick.

It looks like the problem is that Brian's cleanup series is only
applied on mainline kernels (5.9+) but not the stable ones.

Is this the only problem that prevents us from using clang for
i386 5.4 kernels?

If you apply these patches, do you run into other problems as
well?

c94055fe93c8 x86/percpu: Clean up percpu_stable_op()
ebcd580bed4a x86/percpu: Clean up percpu_cmpxchg_op()
73ca542fbabb x86/percpu: Clean up percpu_xchg_op()
bbff583b84a1 x86/percpu: Clean up percpu_add_return_op()
e4d16defbbde x86/percpu: Remove "e" constraint from XADD
33e5614a435f x86/percpu: Clean up percpu_add_op()
bb631e300284 x86/percpu: Clean up percpu_from_op()
c175acc14719 x86/percpu: Clean up percpu_to_op()
6865dc3ae93b x86/percpu: Introduce size abstraction macros

It may be a stretch to have these applied to v5.4.y, but maybe
there is some other way.

         Arnd

> include/linux/percpu-defs.h:420:28: note: expanded from macro 'raw_cpu_read'
> #define raw_cpu_read(pcp)
> __pcpu_size_call_return(raw_cpu_read_, pcp)
>                                         ^
> include/linux/percpu-defs.h:321:23: note: expanded from macro
> '__pcpu_size_call_return'
>         case 1: pscr_ret__ = stem##1(variable); break;                  \
>                              ^
> <scratch space>:168:1: note: expanded from here
> raw_cpu_read_1
> ^
> arch/x86/include/asm/percpu.h:394:30: note: expanded from macro 'raw_cpu_read_1'
> #define raw_cpu_read_1(pcp)             percpu_from_op(, "mov", pcp)
>                                         ^
> arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 'percpu_from_op'
>                     : "=q" (pfo_ret__)                  \
>                             ^
> In file included from arch/x86/events/amd/core.c:12:
> arch/x86/events/amd/../perf_event.h:838:21: error: invalid output size
> for constraint '=q'
> include/linux/percpu-defs.h:446:2: note: expanded from macro '__this_cpu_read'
>         raw_cpu_read(pcp);                                              \
>         ^
> include/linux/percpu-defs.h:420:28: note: expanded from macro 'raw_cpu_read'
> #define raw_cpu_read(pcp)
> __pcpu_size_call_return(raw_cpu_read_, pcp)
>                                         ^
> include/linux/percpu-defs.h:322:23: note: expanded from macro
> '__pcpu_size_call_return'
>         case 2: pscr_ret__ = stem##2(variable); break;                  \
>                              ^
> <scratch space>:177:1: note: expanded from here
> raw_cpu_read_2
> ^
> arch/x86/include/asm/percpu.h:395:30: note: expanded from macro 'raw_cpu_read_2'
> #define raw_cpu_read_2(pcp)             percpu_from_op(, "mov", pcp)
>                                         ^
> arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 'percpu_from_op'
>                     : "=q" (pfo_ret__)                  \
>                             ^
> In file included from arch/x86/events/amd/core.c:12:
> arch/x86/events/amd/../perf_event.h:838:21: error: invalid output size
> for constraint '=q'
> include/linux/percpu-defs.h:446:2: note: expanded from macro '__this_cpu_read'
>         raw_cpu_read(pcp);                                              \
>         ^
> include/linux/percpu-defs.h:420:28: note: expanded from macro 'raw_cpu_read'
> #define raw_cpu_read(pcp)
> __pcpu_size_call_return(raw_cpu_read_, pcp)
>                                         ^
> include/linux/percpu-defs.h:323:23: note: expanded from macro
> '__pcpu_size_call_return'
>         case 4: pscr_ret__ = stem##4(variable); break;                  \
>                              ^
> <scratch space>:186:1: note: expanded from here
> raw_cpu_read_4
> ^
> arch/x86/include/asm/percpu.h:396:30: note: expanded from macro 'raw_cpu_read_4'
> #define raw_cpu_read_4(pcp)             percpu_from_op(, "mov", pcp)
>                                         ^
> arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 'percpu_from_op'
>                     : "=q" (pfo_ret__)                  \
>                             ^
>
> Full build log link,
> https://gitlab.com/Linaro/lkft/mirrors/stable/linux-stable-rc/-/jobs/849409973
>
> - Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3DAVK2Vy-Hb7AbbFwfRnMCkwtmw1L5EivSRdoZ17hJ9A%40mail.gmail.com.
