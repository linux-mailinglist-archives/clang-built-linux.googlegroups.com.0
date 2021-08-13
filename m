Return-Path: <clang-built-linux+bncBCYIFQES4IBBBENS26EAMGQEU5HJO2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9973EAE97
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 04:29:38 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id o5-20020a2ebd850000b02901b783135369sf2656801ljq.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 19:29:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628821778; cv=pass;
        d=google.com; s=arc-20160816;
        b=eGrVluR3Q9/NxyetoAsIWnKxKs4rvrQTXhyfiAewJ2eNx+24bhUuegx+Y292RIowiV
         FLEv5DYdpCtr5VPVY112AgeZ2UlzyD7diIUrCQ6Qheb+MPMKWztrXEawCLmdFKhF6ctX
         2xK+/t1ND9vR8pQU6JEf/gyXBtlwruW/EAA+nZ6hFKsF3RjxUfg29HPVjoR8nFfumag9
         ox5EiEajyKKzXDx+jYFaGASHd1ChDS6YEy2f+StnfNDMfr9xXyJoq2QoU5ggUu6D1YYw
         bGB3JocUdTkqaKS9yFxWQNxM9eyPfe6jmJDx6A5lWG2Aq6E+Tax30099JWppPqFWaQh9
         h21Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=LbjeUKNhAhxozrFwPy+owvcQmOQloJhbkC1jm6LcfoY=;
        b=F3mnZtRyWSkmV0woJZPSHrOkQS45MXVQZlueWE01Poz9rC6j4I4z6ylWC6LrRh4oAz
         qvPQQoRfkYdtw9RRwgQeAK5KvqwfPteQUszDH6ISnv1zZqaMEtmHiC2jrlEASn6zWOjp
         0fx0SkSu9nwC12At5u/KL+q+ZsZC8KpdbZL9tBIsL0zBt2R7IKGRAZnO6FCozSvtZ2BD
         O13z6oeXjPRoW4L34XCI2o98qq7sJBQ1T8C/IgwckWFEi2GlaC3k1X9m4OymWkJBVSlF
         AtYoQYnkerTcGlBf8BsIxPF+/udr7FP7vHoZy1NGzuEXYbl+awKsP60loXbhEWwZJ0PU
         eQ4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pyt+KggU;
       spf=pass (google.com: domain of zhang.lyra@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LbjeUKNhAhxozrFwPy+owvcQmOQloJhbkC1jm6LcfoY=;
        b=rNSyQFYhydzgPchIqVuJYFrZF/DXev5uybEFC6xie9wxbxBEusi7a8xSzO0fUp8Gy2
         cHGo2/PLXTtskanMMh/ZS55u+X2i7t/w7wO49PH3qxxOnRvK8jq7wVpXM3U5MDinNQs2
         mLWnCHBX0c2GCT8rFQXtvjZ+ddUOLPqIhQy4KhHGrfqIaeZgIGPAaQ/1wVSQePV7mDC6
         b83vaZ+YvxqpMBaFJ85Q/cJcJVd2iv6sh37xLpknmaUz0McgFTqtMKYHVTwAO3+Q6dRN
         IJSSH9Tv350gtQzpXodP7hu91Sih8dhDhfTG5qw0hc9tTzdXPsgASp28rtFloXdu2T4s
         lG6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LbjeUKNhAhxozrFwPy+owvcQmOQloJhbkC1jm6LcfoY=;
        b=nsYbfVUuqZeyu1atfFs/CgEydcqz0PawnRKcl9cjlIRaPqrnE6MXnH/3HmszBfM/IE
         d+CsuZ0I4J/AS6b/SZ1v8gfVV8dM09pwDRflDUFI03lAHO0TyGFxXnDDrRQagO2NuyL7
         txDBFjPhn7rQ0nqIcVX4mnEkiGOuRTz+PqoCmO3w01kQX0d3ilOTOKmMXHF3jNhQIsL1
         gXySP8963qu1J3a7Z02n3ZnlIIPd4WYZbOVfZP1dwuX5JOczchk3JjH+HIXy6tPZ+iTk
         Kemh5vjaEa0n38TiVmsHXi0ayvI9GDBTeP/PExhXu6eK9b1y3G4bSH9sCbwaqAJcOHOt
         ZLwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LbjeUKNhAhxozrFwPy+owvcQmOQloJhbkC1jm6LcfoY=;
        b=UU3TK7vCL9UP3hhfUbL7ovKhfIhbcUltcJTdnuNGJEtVC7BY/3RvVtMQvcJ2iuMe8d
         A6vhjNM1FM2muDOxCCMRwVyysJ9QZt7qXQifpOQ/c+aqv4PbMJfdNH5JOKkZZHJeNQBy
         o7jI+a7ANVPAUC4wCLOm2eAiAR2W3bvgX73LP6jUpfnrd0kZkAyawq3sI6a9adsJfpcZ
         KD7sEvMe4Gn5fyO0Bq4CaxmvZsGhUbulWCiT23z5QWchaQAi3FcibnFfKOxvuJljWCvN
         CBjNxhEdaA2bsXPoh3j2lDowTONWFWxUzBthFTc0gkoBYhNvfr+lWQHXo7ux1GuWqGzG
         WF1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hOcX+ycMZ9e5MbwUYJS3XdReh9Q9M8Fx2I1M0UrjJjdQ90ZIk
	tTIr8ijPFSIdbjMr+QkINto=
X-Google-Smtp-Source: ABdhPJwNx89UWhcMqU5NlRQV9F/yuQ/f3Mb27I3W9vkgSaBs1tafGQijK0ox/bWC68wpwZOEV0r0rA==
X-Received: by 2002:a19:5f04:: with SMTP id t4mr31017lfb.297.1628821778247;
        Thu, 12 Aug 2021 19:29:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5395:: with SMTP id g21ls112339lfh.1.gmail; Thu, 12 Aug
 2021 19:29:37 -0700 (PDT)
X-Received: by 2002:a05:6512:3044:: with SMTP id b4mr38839lfb.35.1628821777059;
        Thu, 12 Aug 2021 19:29:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628821777; cv=none;
        d=google.com; s=arc-20160816;
        b=XtUOoR9JYbNuUxWYBIRZpLoCGMdHpK/540pIPghX28Uh7QOI1D/SfPtDZZHgfR8aLr
         OFrGi5vWhLSHA2IbtAMU0USuHw767Pc2nHvveRshqdoyDSnN6Z8LcQznh6eMho5B5LCJ
         57NJV3P7z9dVjIxe9wU3MoZo4LoIM2shmK4to602/p/rqPhETx3oMwPg7qvO5ObF6zwz
         uMMJQlaJ0vdPKPcmizrZWKC45MpojyGDoxrUpe3XWlaPBwpcq6ncy5vyvnLAs2Quqp8B
         m8vW6rrg1ni5foAhUM3W+Cmxpzk7gAFy2VfPJGzCntsx4in78Vaqg7YDbJSHuf81z+Qg
         b10Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sKJWG2wYefEMFzSTPD/O3cAcigf3Odbg7bAq2foda4E=;
        b=IUnZkdeFcYi9HgD+7IjmTeOWdx3we7YGqC4DE19Nck6jMleGBe9fY4J8tq5/Z0wTJt
         czaEeeplmnmU9lT5actMkNgg3RFH+vFjtBiv8AlPIltlppTOBO8NFoLRGMYrPN23OWDT
         85M+uszrbAqGktxXj3ztpBw/Khc7TeofnQpaZtTJ1ij2nbtjQFBudS6cU17EZ+uDk8A6
         /FR5+Z3bhzxG+d0PzHoSN+3KGovQSHDzkb3K3UX9xhUJIclcW0oF8IOen0OyRUFPE4VC
         8djbFH7I3U86IfD6TyIprtNYKgWTNNIeeo65qUQIpxcyT7hsp2KPd/emBiKTdjerK4q7
         pXpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pyt+KggU;
       spf=pass (google.com: domain of zhang.lyra@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com. [2a00:1450:4864:20::329])
        by gmr-mx.google.com with ESMTPS id i12si12275lfc.10.2021.08.12.19.29.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 19:29:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhang.lyra@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) client-ip=2a00:1450:4864:20::329;
Received: by mail-wm1-x329.google.com with SMTP id f10so2774340wml.2
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 19:29:37 -0700 (PDT)
X-Received: by 2002:a1c:e904:: with SMTP id q4mr297827wmc.26.1628821776591;
 Thu, 12 Aug 2021 19:29:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210715065455.392923-2-zhang.lyra@gmail.com> <202108011431.Nx7sS0uY-lkp@intel.com>
 <CAAfSe-vY9bkLb7Q2Tn=2ug6pau9VHkfZyvmoQNMqeKmxfquOHg@mail.gmail.com> <874kbuiupn.ffs@tglx>
In-Reply-To: <874kbuiupn.ffs@tglx>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Fri, 13 Aug 2021 10:29:00 +0800
Message-ID: <CAAfSe-tf9GsqFnSdBa2xkRLD5ffUX+4FT7hUJ2d40AE196_cUg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] drivers/clocksource/timer-of: Remove __init markings
To: Thomas Gleixner <tglx@linutronix.de>
Cc: kernel test robot <lkp@intel.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org, 
	Saravana Kannan <saravanak@google.com>, Baolin Wang <baolin.wang7@gmail.com>, 
	Orson Zhai <orsonzhai@gmail.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: zhang.lyra@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Pyt+KggU;       spf=pass
 (google.com: domain of zhang.lyra@gmail.com designates 2a00:1450:4864:20::329
 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, 12 Aug 2021 at 22:49, Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Thu, Aug 12 2021 at 14:39, Chunyan Zhang wrote:
> > On Sun, 1 Aug 2021 at 14:18, kernel test robot <lkp@intel.com> wrote:
> >> >> s390x-linux-gnu-ld: timer-of.c:(.text+0x306): undefined reference to `iounmap'
> >
> > Seems TIMER_OF should depend on HAS_IOMEM, but this error is not
> > related with changes in the above patch?
>
> Right, it's not caused by your patch, but if you already analyzed the
> problem, then why are you not sending a fix for this?

Ok, I will send a fix.
BTW, if no more comments on this patchset, could you or Daniel please
apply the patch-set to your tree?

Thanks,
Chunyan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAfSe-tf9GsqFnSdBa2xkRLD5ffUX%2B4FT7hUJ2d40AE196_cUg%40mail.gmail.com.
