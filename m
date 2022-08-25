Return-Path: <clang-built-linux+bncBD5N3VM65EKRB45PTWMAMGQECGF6U2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x3f.google.com (mail-oa1-x3f.google.com [IPv6:2001:4860:4864:20::3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E595A0EAE
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Aug 2022 13:07:32 +0200 (CEST)
Received: by mail-oa1-x3f.google.com with SMTP id 586e51a60fabf-11ccc27db6esf5000340fac.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Aug 2022 04:07:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661425651; cv=pass;
        d=google.com; s=arc-20160816;
        b=WFuRAbXB8QAh1Zy0sca7weom3ewqBgbuFXQaw1ZIjqDrMt2nuRvje1Tq09t3fyeFov
         pIV5XN4rV8PkziwDb9hJHIwp2/vNlehEli8M3IhvRSxs8QGlba+msg6Sx5s1STOrzZfA
         Yf9NEfUYOMWw6rvtffGlSOwWbOvld6LsB4pf4icgP1pGEfyqmnGqBqhNG43afxI9vO3C
         ULRDEFnl/6fSwV941KbdRj4zixJzWZ+rNHg0VU0smlKWjjOeyBtvZTDWw/4LNLxnfytL
         ZdzALyhlqwQKxhejNJo98tuHBVAqXVXtXyRjO/jrugfkWA7B2PniiIX8FxO/YCp7EJ9E
         hH2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=xiPciHaMUvg1nWqtEO5X5lhnIO01ufMA0gRzXmX5X9Y=;
        b=wmjRJvtrzdz4r67WihV82mi0bzYS/ZI6JDRw1AeCJhQ7XaVdyis5rejYqNb8VlOWsJ
         7hOoM1Y4/TzxvQ8o1HSy0EOpA8DrM8Y/51eFR7w81DXSc/ZDPMtnjCiVRxoxpraCycsN
         GtYydWpk9ppXGOibJHqFOWCFW3JnSCgM05r0eC2mFkS1Pzy2Y1tfp6iUGuQUN84NMHl0
         ftD9cHoKNtGSGLk/t5hBEfCw/cpDUoUj7VpNWIK1jY38xTw3ICTpn4A66/ZwKFzPJdtP
         sE40vjp5hUJZbNNCh9HdgSnep2EB5ugObISyDuU2vfwY9xV+l4fbgBJJj4giKVwuQUYG
         WEew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EjFCQyIw;
       spf=pass (google.com: domain of ubizjak@gmail.com designates 2607:f8b0:4864:20::736 as permitted sender) smtp.mailfrom=ubizjak@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc;
        bh=xiPciHaMUvg1nWqtEO5X5lhnIO01ufMA0gRzXmX5X9Y=;
        b=I8dLC/Is9cwXjuigv4q4Mc2Xh081S6vI6QXGk0ujEB4j4SQ9NxLElWCBapsZsThXyi
         COBEX97Uf/AYfRLh86ppnB/6vzPXgmYPcDaTNhE9WUXInQcsa2AGkPQBpzlkl+O6wP1L
         0H0e4zuGyXM1sy+BMYqK3UStqcA5zO169tY6S7cw3HQbOFPum/cyTw4ez2cdY8erfkoJ
         xnijdBjaXzeqaXxK1kqhvJm1KPcKR47T3MBSpByZn7v/kVMDf9YXBflNrJUCCsjWETGL
         3A07/vTu9jQFixToKaV72You3HWYxdFmcgkGY+EPe+J99dYefsDmTUiKAtthCkkkUNZL
         O78Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc;
        bh=xiPciHaMUvg1nWqtEO5X5lhnIO01ufMA0gRzXmX5X9Y=;
        b=C0mL+4j0uKyGKSp842t2gFdcHdOGQ0gjegFrQ4duKa25LEZg/BMP0EW0MZPFv9V9yg
         flmgxpQ6oa99/v76w41vdCk4Os6TLXmOFtv/JYZHbgX1Vpb10ezUUDDgpl+F/k1RMPd7
         CVJNbqs4w2zo4RuJQGO/APXpcfjrleQmcm02CKgtjGOYrgS6RQ4Be6wTkyMmUGCe0Eh7
         jgHWDJEGoly9/Conl1iS4jOaRLT8Ejd9SKGjt3srURPwNETIkd9OWfksPK/lKZfD4gFI
         tsHWiM9z27qe7Plj5pb7jIIZXERwKQf5NWaNRZGn3I6MFNId4pHJwQFlVrNUDszhrnhc
         XxQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc;
        bh=xiPciHaMUvg1nWqtEO5X5lhnIO01ufMA0gRzXmX5X9Y=;
        b=ovLLNm7kJE2h1FsW7a4OJ5oekph7NmJtBk4dqMug2vf7A/vCbvYQ3c1FYnvUGcdLP7
         tDVXxFp/x2rYY3EDsH3m4Q6eijcEI3vVYkcxB52K8r2O0/ALpaTXqWAIl2iHcN3CulWQ
         SDON3vRjKCb2Epmv2MNZznqNjW7x/f66V77USffpTy8f7sqQIYEZnTXO1k0eKynckkjS
         Qa2x4eq7auPT91Lmexw9dFm7f4tqr5fJsZlgCCJhxlalaBZexhsmkcDYCYcX0K26tJx8
         OQIEcT18Npta5lILmYBm07xNXmqN4uNIN41eEXnEK50arkLf/CZFoWjAJXJZ42AeaUBr
         TNZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACgBeo1E6pmlasANN0p9rglOGF4gMkZSkLh5Uon8QjIq2Zve+JM/shAF
	iBIdxOGPxBwCp3j4N2VZ4ag=
X-Google-Smtp-Source: AA6agR7Wm4uNiwKTzI/2dQsx/qlocoANxVCsP/3eOeeqncfi8qZrXn70il9pw8qn8BgrFZxoe6Ew9A==
X-Received: by 2002:a05:6808:1281:b0:344:d85a:9f38 with SMTP id a1-20020a056808128100b00344d85a9f38mr1527302oiw.207.1661425651174;
        Thu, 25 Aug 2022 04:07:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:36c6:b0:10e:63ad:7cff with SMTP id
 u6-20020a05687036c600b0010e63ad7cffls289067oak.7.-pod-prod-gmail; Thu, 25 Aug
 2022 04:07:30 -0700 (PDT)
X-Received: by 2002:a05:6870:3484:b0:11e:4465:3d9b with SMTP id n4-20020a056870348400b0011e44653d9bmr48103oah.46.1661425650798;
        Thu, 25 Aug 2022 04:07:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661425650; cv=none;
        d=google.com; s=arc-20160816;
        b=SPl517ejO7fXh0Q7YeGamxvD4IRc4I6jfAgcuVnXQeylETsTxNxF8trZ79+qIPrbxP
         vAL/TlnJPOgQqwUF7TGq2RCfHnaUNVE8J7HmLFmSwfl/LmSgk0J9mvpxT1nZgkBlX3Ph
         c/jJz6hrBJIqWSDIOxVBbr2Q4wm321v6Z9zM4bt72GfJBBxWfb+6pVe1jgDHnYsC4FvK
         APkz3uXLAMwOFuGOCiauv/oQ7GYELNhVaIYXgXe55Ik3D46pokDYu4BS0G8smVMc8wMP
         0rgXrNpgBW7W1jPURRy8GuOOQGEh9nyop5xbo7B7MNczYDE2g6RqCuOjT8q8kN+PwbZN
         qplw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NFLgYkCaEI5s4PbUxMHY3+5s8XqDi7XgHlnjcMfnmFM=;
        b=RJEjHGX2qf0GbOKg/g8VWjfwHdk1k/WXvQ7/7+usmC67oSdm9sHdlofb+kiB3EkegG
         mQ6dPAAyUrEyKWkYts5wNaLDLAQ50KqZg/QcLuGSf2s+gLjluvw89UUqs0G8psrltn7T
         PTjaqJ1el/XIPRL4hMKBmhG+JoBpQL8qGVlQmhd+n9y/c3KQfZ0Ig4CJdPP3zRJ1R+vm
         Q9LnASQXSHeW0c8ntkl6KzQPTaWgA6DJ+n/3N6+jJ7LkNTSDi8c7HHcTb9Umf4uNaeKC
         UpvxzB5FtWqKwJqg+RlW1Qgi1/Y7JvPcj1bEGxgbBnO/ePrT7vCinu6owgCXnEsB9dA9
         WXhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EjFCQyIw;
       spf=pass (google.com: domain of ubizjak@gmail.com designates 2607:f8b0:4864:20::736 as permitted sender) smtp.mailfrom=ubizjak@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com. [2607:f8b0:4864:20::736])
        by gmr-mx.google.com with ESMTPS id u18-20020a056870f29200b0011ca4383bd6si2199030oap.4.2022.08.25.04.07.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 04:07:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ubizjak@gmail.com designates 2607:f8b0:4864:20::736 as permitted sender) client-ip=2607:f8b0:4864:20::736;
Received: by mail-qk1-x736.google.com with SMTP id w18so14820660qki.8
        for <clang-built-linux@googlegroups.com>; Thu, 25 Aug 2022 04:07:30 -0700 (PDT)
X-Received: by 2002:a05:620a:2587:b0:6a7:ee6f:bf2a with SMTP id
 x7-20020a05620a258700b006a7ee6fbf2amr2570783qko.542.1661425650405; Thu, 25
 Aug 2022 04:07:30 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYvHLy63+jV3qMtHtQLufoeEpAjrteQ7+2Dvdt8CcGk9MA@mail.gmail.com>
In-Reply-To: <CA+G9fYvHLy63+jV3qMtHtQLufoeEpAjrteQ7+2Dvdt8CcGk9MA@mail.gmail.com>
From: Uros Bizjak <ubizjak@gmail.com>
Date: Thu, 25 Aug 2022 13:07:19 +0200
Message-ID: <CAFULd4bT4UrdQctUdJHSV9rjpRb02PHGRwxXcg=PZF9eiAfnXg@mail.gmail.com>
Subject: Re: [next] kernel/smpboot.c:435:6: error: variable 'oldstate' is used
 uninitialized whenever 'if' condition is true [-Werror,-Wsometimes-uninitialized]
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, regressions@lists.linux.dev, 
	lkft-triage@lists.linaro.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>, "Longpeng(Mike)" <longpeng2@huawei.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ubizjak@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=EjFCQyIw;       spf=pass
 (google.com: domain of ubizjak@gmail.com designates 2607:f8b0:4864:20::736 as
 permitted sender) smtp.mailfrom=ubizjak@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 25, 2022 at 12:48 PM Naresh Kamboju
<naresh.kamboju@linaro.org> wrote:
>
> The x86_64 and i386 clang builds failed due to these warnings / errors
> on Linux next-20220825.
>
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
>
> kernel/smpboot.c:435:6: error: variable 'oldstate' is used
> uninitialized whenever 'if' condition is true
> [-Werror,-Wsometimes-uninitialized]
>         if (atomic_read(&per_cpu(cpu_hotplug_state, cpu)) == CPU_DEAD)
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> kernel/smpboot.c:449:6: note: uninitialized use occurs here
>         if (oldstate == CPU_DEAD) {
>             ^~~~~~~~
> kernel/smpboot.c:435:2: note: remove the 'if' if its condition is always false
>         if (atomic_read(&per_cpu(cpu_hotplug_state, cpu)) == CPU_DEAD)
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> kernel/smpboot.c:428:14: note: initialize the variable 'oldstate' to
> silence this warning
>         int oldstate;
>                     ^
>                      = 0
> 1 error generated.
> make[2]: *** [scripts/Makefile.build:250: kernel/smpboot.o] Error 1
>
> Build link: https://builds.tuxbuild.com/2Dpvef6uVvzHMztbfQRmxJfPXZT/

Please see

https://lore.kernel.org/lkml/CAFULd4bgdGosQ3byMW9S+ov0uDO9iK3jCmZ-fkZQbCGOpfUvXQ@mail.gmail.com/

for the fix.

Uros.

> Steps to reproduce:
> -------------------
> # To install tuxmake on your system globally:
> # sudo pip3 install -U tuxmake
>
> tuxmake --runtime podman --target-arch x86_64 --toolchain clang-14
> --kconfig https://builds.tuxbuild.com/2Dpvef6uVvzHMztbfQRmxJfPXZT/config
> LLVM=1 LLVM_IAS=1
>
> --
> Linaro LKFT
> https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFULd4bT4UrdQctUdJHSV9rjpRb02PHGRwxXcg%3DPZF9eiAfnXg%40mail.gmail.com.
