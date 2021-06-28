Return-Path: <clang-built-linux+bncBCU73AEHRQBBBDEA4WDAMGQELENN5KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D3C3B57C6
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 05:20:45 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id v198-20020acaaccf0000b029023e1b5f79e1sf693206oie.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Jun 2021 20:20:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624850445; cv=pass;
        d=google.com; s=arc-20160816;
        b=FpjEZFpRRIlrKjfzhBUfKr3P/6quONA0VUm9wb7qT2QXZxrLbm/C65oahvg0o6L6Sn
         CkQB2FXCBN7lGUzSA0HbCuhpuC9+8EBamEw+dHee1QgryHXPXDqPv3CBxTJkrFJeoQnP
         AgSWldbe32J/G8uKS19P3AqBGIg+FhlAYr8uWzFXz+2ZdUll7VryzOhD+mqNstnr7S7h
         2772vYlHgSwE05IkaNE5Arx+wnpOXG15vD04ewvSczHK00NTWFuE704QGNAeLjV/LxzX
         iJTnePX+tIRu1hABKtDv7hrcqA1S5i/J+0lm4INBjiU7yOkE9QXPKb5WD2VlX9ohuISI
         FFtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Ms17ZNVcFvgftM9k5QVpTzhkNBGM5IqXxyAJYjGW0yo=;
        b=0Ppg+NZIaEk3pBivoPxZFEk3t5hoPRqMa+KAM9GxS3a+1ZC5IirwCxWfKECPW//ArH
         yUpgTxnxgr8cEVnRl4Ff5x1e0pSHBdgpxmboYTkGPFH/Jgae7bsLOk+l5/EyXOGauC9y
         HTvAHri8x4JbdQTcJ0XP9+C7FIYKvfG+BIHkTtK8oHCxpbrGvtiLWrfSdm0JAY/N+q0h
         N/mGIG5dFa69uWsWazxaeI4G6lHnqFFCbXoT/gJu6zbS6Me1s650DzDxeK9pWtxS1+4C
         VwvT0lBYL05+H9Gmshes9pXDHXsfmcUYQQRc8Yt2SSwjx2Kz6hygR4tM5KA0eWMM9cVD
         9+Vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=lpcy=lw=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=LPCY=LW=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ms17ZNVcFvgftM9k5QVpTzhkNBGM5IqXxyAJYjGW0yo=;
        b=sCafgZ8a5BqhsvRo/UOchuWxggX5NG7fGVx3ZfOTmE1k9I+SWqN6Zg+S7Dptl1JEZb
         oMUEKoTpet/L+vRpXwt5SoL5caAczi3jt/QO3rZdBIuyDL2mZBECNMkjkM2HyfaZjmwO
         5sRHjT8z26GYkgQx6rjw9BO3k4KQiht3bEc8nWpapb5ox5dlZJs+BddfxEtmsqludL6N
         J5stsjtjqpNVtN/cshCYhNKVMFkBJC3Cbycngn04CCuJ68wB8ig3iBt4KHZ+NC2+F+l+
         hYa4d4nN/WvCu3pjqMKvFcFjxD6I5YWnJFTjDOM93b6BlrbnD4cmn4RZYV8rYiBnYXYO
         EjSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ms17ZNVcFvgftM9k5QVpTzhkNBGM5IqXxyAJYjGW0yo=;
        b=WrLis7qMCixOFT1YS3FNvKyeHZ7GnUdx9zE1xL7BD7K6jeicBqIFEBCqvijHm8GhEJ
         VCFz1Pma8IklDGEF+xZIiXsgntm1aHGQ7S7DB8P13G1XsEelP3jBJx3oVZmCR+s5Szu9
         ONW2cb1XXM4wjGpX+PNQSZjbm48D1wKmzDWM6xtT1F3vyl+c4dwcP30nmMNXPkENUSES
         ctAWyCTlNMd2yryhUf8XkcSI1xbkqHJ/o8iILE6KC6DlW6CHIJyUa2OU34/vqH0TH19j
         izoGmh3kOTwcKxcRdcikd00xJEWrjFEbsg29/K6B0nUt5YyqIkw78ptijV7tjtuf5Wl9
         G0Ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rW5QK1sE32bu0Ab1fhL2WX3q8Eh+am3LJMKudj4+cspUESC1u
	YfCw4OSXvUzuDvWHV33v2cw=
X-Google-Smtp-Source: ABdhPJx5qLyJF0Q41M9owL+6tX/mdU/ZnKZz2aBdj6SGtRqShoOwnBseZCZ4uyctQ1N2XKfbehLlNA==
X-Received: by 2002:aca:4f83:: with SMTP id d125mr3321756oib.117.1624850444777;
        Sun, 27 Jun 2021 20:20:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f24:: with SMTP id e4ls5976586oth.4.gmail; Sun, 27
 Jun 2021 20:20:44 -0700 (PDT)
X-Received: by 2002:a9d:3c8:: with SMTP id f66mr12600113otf.326.1624850444375;
        Sun, 27 Jun 2021 20:20:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624850444; cv=none;
        d=google.com; s=arc-20160816;
        b=aZ8x1nMf3vKyAGjPMaVi4jNWxH/2mc1YR7B7zK7pkVxC0r88uVRYMwISHRxI3VU/4x
         MpovPLxoPVL/1ifHK0n/ZQ9X2AFCErRrTxd8MvPAe6J7bmf+jXHSbtgoDuQ3kIEPNR5X
         afpyLZ5fydUZRizMwntKgrfXM+xT5OuRZcSKflaejNozJqH2DS2tpqAt8XK1PigJvD22
         wKC91jBxNi9vTOZvUjEQQGMF2HZyNMfTi0b6UhRWrH6P3MGTeS1LRGEPIZGQUydpuTGr
         GPO6//CYgMQ+y9hyaAWdmSi2TDUpNIFLwNnlsUIqKJIEo9hme7jHC2MhHH/75unJBnxm
         i08Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=IDwmpgllyi2nROm6TPpYz+2HwQewm7QCKvZ9VW9Kj4k=;
        b=KSMAu9o2UpNbI6kpWeQu7bvtcbIDLSwbcW03cva00d9nnBSO346kgr0U1OunBgaVdQ
         ErD9aPrhYkuxAHRR9XtWrQCO3UdFvBwYx3DqqCRBmLR1JN1pnjWsz8KJ8SXvvE/vp76d
         GC00/gw75IK/ws6vQmNeG1Na/VyItDxz/Zyf7KCAej5oeHNBup3+AU36fiXDiEM6E56I
         xHqKlhzmM86O43An1yYBYXRprPmyUjEql0SfBECGH6JNbd6b9io+XMVn/n5xkwa++nsY
         pZdtOhcYi28JolL+yXSsKVdlQGvlkiilsiC371OHK8nzLt4AE0bPuGbYYCYnp2ckkxPf
         KljQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=lpcy=lw=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=LPCY=LW=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k18si1780353otj.1.2021.06.27.20.20.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Jun 2021 20:20:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=lpcy=lw=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from rorschach.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 112B961465;
	Mon, 28 Jun 2021 03:20:42 +0000 (UTC)
Date: Sun, 27 Jun 2021 23:20:41 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: kernel test robot <lkp@intel.com>
Cc: Daniel Bristot de Oliveira <bristot@redhat.com>,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [trace:for-next 34/40] kernel/trace/trace_osnoise.c:438:6:
 warning: no previous prototype for function 'osnoise_trace_irq_entry'
Message-ID: <20210627232041.12b1971f@rorschach.local.home>
In-Reply-To: <202106270416.HRtXdK0A-lkp@intel.com>
References: <202106270416.HRtXdK0A-lkp@intel.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=lpcy=lw=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=LPCY=LW=goodmis.org=rostedt@kernel.org"
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


Daniel, can you write a patch to fix this on top of my tree?

Thanks,

-- Steve


On Sun, 27 Jun 2021 04:22:20 +0800
kernel test robot <lkp@intel.com> wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git for-next
> head:   6a2cbc58d6c9d90cd74288cc497c2b45815bc064
> commit: bce29ac9ce0bb0b0b146b687ab978378c21e9078 [34/40] trace: Add osnoise tracer
> config: powerpc-randconfig-r031-20210626 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 557b101ce714e39438ba1d39c4c50b03e12fcb96)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git/commit/?id=bce29ac9ce0bb0b0b146b687ab978378c21e9078
>         git remote add trace https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git
>         git fetch --no-tags trace for-next
>         git checkout bce29ac9ce0bb0b0b146b687ab978378c21e9078
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210627232041.12b1971f%40rorschach.local.home.
