Return-Path: <clang-built-linux+bncBDX4HWEMTEBRBIED4P7AKGQEKVHNVFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 440032DAE76
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 15:01:06 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id l3sf14187080qvr.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 06:01:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608040864; cv=pass;
        d=google.com; s=arc-20160816;
        b=IZiseoHPWbwrdrPuck37rv9tb0aeVM2mta8akgsm+Tvyc0rn7wAmj4B8WDFM3bRaal
         Wh9I//OxZOG0RFAx/f3Mpn0EXv9TJdYg9jI2sALWyyI+pUsXYIXBXTkZPoBdWghPf498
         lfFaXig0hNBkksBw8XKCV2oWZdrCugZDphHgqxCXonbUaodp+ZjmxBS0juSGJ/fZwiwk
         699Kghes1NJqy9fNXxL6TyVZ+YgVmLodbQwDAwmpkIjj1praf68TlA+1dUJP1CH6QDGo
         xDWIzwQxatcfJm9EJw1anU/vlAgHCwHq+nutVHAS/aY6q2vhOniJbqDwyLa7rXTCT20u
         kiug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aAy02GWyVTDNCIQ6F9S+bYa7Vg8yTUs/QE1OHYUkHQ0=;
        b=G4eEHbJ1wMRN3Cp7fcnYwUBynVsk9z/PLOjNV5wUiHzCwUAKVPjwjOOFMZr/khtxQc
         dpMDsX8DaV3xIO1rvbkJEnGfRmboKty8qVJ3n3kKLG1VNc2eAJb3tLHkd6qG5i8FoqbW
         jObchlCwiNcu5CtsiX8lvNqQyg4dNLFuKmZa3IGDKQwRVuXvHu5PnBZR/VWQ9mjL0C1F
         WrU9+RDCPVXgAvHVIKGTQYbbhAmPQucGiTitCv4C36zYIIDRgRY8jpt7ZWKJoWatg/b2
         x+RMC19+9x+A7PucSmv6Ij+WZP/j94CvAq36X9DgL28O/7hN76ceQL33mE/Q/RJKMhOP
         MUaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sASorQfN;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aAy02GWyVTDNCIQ6F9S+bYa7Vg8yTUs/QE1OHYUkHQ0=;
        b=sxqRa9f/WhGavwU8fR/T6At/VV3EQjNGXRG+JGFs6yjGrhAdylq8/g+Lzq63wj9f/i
         Q6ZQfDms/Rc3i17gbTfkqPZl1VjNcagb8cKHXMunGS+RaoWnRDSHedUqSwRNQ0iXeJS+
         Ws4VIV33JMUK7wDqNTw1WYKvrBFGjdLG7BM3gwNTIomdZ/3hmtMLUP6K/dAIRQuEqMqk
         TUhRhmCdoAULv+zF10v0rIiprqnSYxv1fPmx8pBOnFTU2aLnh06iHvN92oUQl4OOnxgX
         fr8yIJybQ7/4OEfUhQKpMoAxKpgy4lsj1YhY3ZZXwAgsuEoMzMzXIP1Z1xxulLeN/Hz8
         F8OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aAy02GWyVTDNCIQ6F9S+bYa7Vg8yTUs/QE1OHYUkHQ0=;
        b=T+qMllsJI9GONCao0u3EUDAG2hsjNIwQS1c3D9cMBWbtYQ9jAZxODN0lNFF9N0TEEM
         3O8/wUacNFVTs0rHuuj6wULUOmAihvdYLASjQF0wjfW5JS4FfyrHPt7ndRWSsgky7jT+
         MHcqVc+HTh+UYO5aC1FndvXlEQw6i1v6MmkLa+lbgXdYPpTygVwPUPMdN9p+45tkFGt/
         2uCsjx1+MYc6B8tr/tH378RywwFEIB8YMpFnIMQiChWmnNKP3K1fFCfvDbMQaUAwZU0B
         +9b9xGpS6Px9upJ2M1J2DKBA3IubrsteGIN374ewzmBTn+4DvlvQw3UL6iU8Bmi68vB6
         1xZg==
X-Gm-Message-State: AOAM531DY6o7gacXeyywEogtK+b+mb9Z+1ZaFOafh1gDv/TIeGGyJAbb
	UdwangxVSCXmqrSYIiBR9es=
X-Google-Smtp-Source: ABdhPJw/S+LMgaXUe3wDhs68bga3UTX/8OMfMnuBHY6TLOCYEmU//YBAcrr+hWBCjA+Ht6c1gOMdLA==
X-Received: by 2002:a37:4b4e:: with SMTP id y75mr38049411qka.24.1608040864765;
        Tue, 15 Dec 2020 06:01:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:702:: with SMTP id 2ls2610430qkc.11.gmail; Tue, 15
 Dec 2020 06:01:04 -0800 (PST)
X-Received: by 2002:a37:6586:: with SMTP id z128mr24514194qkb.53.1608040864221;
        Tue, 15 Dec 2020 06:01:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608040864; cv=none;
        d=google.com; s=arc-20160816;
        b=M7QiScFoshyN1QX7dor8JiT8ikZ9ZguKHBSvALpXN9WB4gb81G9CQyF64DWFvp9jUY
         5jLSdcLlh56C8BWk+k0fOshh45jOiY/32WfoenQ4XjtDmmR4ReIKIoZLq3phX3SBl0It
         ZvBZj3eyOd1Gvf9QQPXyqct/FAXiKRbFNK/s4uG3scQ67J4qYb+NQiR9xfMFxqyKPvSl
         jL28VVh8V0z7r5xU8CGV/Z0mJfs4ACLYdShRH+Nh3/1F5jYGTOhtHStdJuIJnQyllrdH
         JjVQKX+g3Kvnu7/aUGr40U9SUUQ2TZRoOiNMzXnVqe8KxrGG3b9/eKYxqhumtfMxX/Vt
         UiEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A+G1WfxuzopjSGXsyyh6fV+cm5tzdzFwJFw7K7WHVUE=;
        b=g5dC1iVvQgo3e+VW9uD7itADdUQCO5xwhUYchw1RFxwz4DzM93JqPGAMSnTw7biv2c
         FntGHuFTWBhK7shB1j3gx52glWKjvaw3+Hh/TsKOqjAqWIOSAX0/HG1CFXf5/b27/Mfx
         Xf0RG19a7PUn2DCrOH5YrjwdDtTWiKYey3XgBLI299U1QZg5M3L1FAVzNFNxaH39qUJg
         ZY0kobqG02SwEgx0vP9Vq/yNQaSbw37rJ2LUXWuWTa9K6KcT5fJOr01J5NTQJErLlOTl
         PDWoTNGM6IGVhpgTV6LAuUMGmNVsk1w7R3//WhoteRZaQmlJM/q8C9WJgqImtnJpXFOD
         K+Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sASorQfN;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id n18si1456314qkk.7.2020.12.15.06.01.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 06:01:04 -0800 (PST)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id f17so15276675pge.6
        for <clang-built-linux@googlegroups.com>; Tue, 15 Dec 2020 06:01:04 -0800 (PST)
X-Received: by 2002:a63:5d3:: with SMTP id 202mr23746844pgf.286.1608040863307;
 Tue, 15 Dec 2020 06:01:03 -0800 (PST)
MIME-Version: 1.0
References: <20201214191413.3164796-1-elver@google.com>
In-Reply-To: <20201214191413.3164796-1-elver@google.com>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Dec 2020 15:00:52 +0100
Message-ID: <CAAeHK+x3w=rw3Jk3Zg-Q2H6iboWH3dqGvgm9ZXxsCaBGGzR9JA@mail.gmail.com>
Subject: Re: [PATCH] lkdtm: disable KASAN for rodata.o
To: Marco Elver <elver@google.com>
Cc: Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dmitry Vyukov <dvyukov@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sASorQfN;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::544
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

On Mon, Dec 14, 2020 at 8:15 PM Marco Elver <elver@google.com> wrote:
>
> Building lkdtm with KASAN and Clang 11 or later results in the following
> error when attempting to load the module:
>
>   kernel tried to execute NX-protected page - exploit attempt? (uid: 0)
>   BUG: unable to handle page fault for address: ffffffffc019cd70
>   #PF: supervisor instruction fetch in kernel mode
>   #PF: error_code(0x0011) - permissions violation
>   ...
>   RIP: 0010:asan.module_ctor+0x0/0xffffffffffffa290 [lkdtm]
>   ...
>   Call Trace:
>    do_init_module+0x17c/0x570
>    load_module+0xadee/0xd0b0
>    __x64_sys_finit_module+0x16c/0x1a0
>    do_syscall_64+0x34/0x50
>    entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> The reason is that rodata.o generates a dummy function that lives in
> .rodata to validate that .rodata can't be executed; however, Clang 11
> adds KASAN globals support by generating module constructors to
> initialize globals redzones. When Clang 11 adds a module constructor to
> rodata.o, it is also added to .rodata: any attempt to call it on
> initialization results in the above error.
>
> Therefore, disable KASAN instrumentation for rodata.o.
>
> Signed-off-by: Marco Elver <elver@google.com>
> ---
>  drivers/misc/lkdtm/Makefile | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/misc/lkdtm/Makefile b/drivers/misc/lkdtm/Makefile
> index c70b3822013f..1c4c7aca0026 100644
> --- a/drivers/misc/lkdtm/Makefile
> +++ b/drivers/misc/lkdtm/Makefile
> @@ -11,6 +11,7 @@ lkdtm-$(CONFIG_LKDTM)         += usercopy.o
>  lkdtm-$(CONFIG_LKDTM)          += stackleak.o
>  lkdtm-$(CONFIG_LKDTM)          += cfi.o
>
> +KASAN_SANITIZE_rodata.o                := n
>  KASAN_SANITIZE_stackleak.o     := n
>  KCOV_INSTRUMENT_rodata.o       := n
>
>
> base-commit: 2c85ebc57b3e1817b6ce1a6b703928e113a90442
> --
> 2.29.2.684.gfbc64c5ab5-goog
>

Reviewed-by: Andrey Konovalov <andreyknvl@google.com>

Thanks for taking care of this!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2Bx3w%3Drw3Jk3Zg-Q2H6iboWH3dqGvgm9ZXxsCaBGGzR9JA%40mail.gmail.com.
