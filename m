Return-Path: <clang-built-linux+bncBDAMN6NI5EERBBXK2SEAMGQESRZ5TPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id BA59E3EA6C9
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 16:49:42 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id q11-20020a5d61cb0000b02901550c3fccb5sf1912443wrv.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 07:49:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628779782; cv=pass;
        d=google.com; s=arc-20160816;
        b=J3QTfYqK2Oitwo+6xAYdXBPrTUzXe74jlvZRWruZEQc6ldGlrmM50IDzJ+mtP4LCZm
         fiUy5Xbuc7R1H9U4+LqyGxZZwOdsfP6oO2zSiY5uFIAohY+k9mMbSFGJs3dwVu47U3fP
         E7obNKmOsI9oj+MCmYDzhuX/nia9r24PJ169iASwl+NE0ZRwuD/CRvo3THMFyYcSX6sv
         6uVv8/W3dCOqKoLz0mghylTAecGbMics99otIXkX+uKbgmkalDjPhuLN0HEm38+zMtH2
         dMkCnR5Vq9W+oDKeEXU2F3T4gV8cYsDuxi/OkQ8TmHb0IEYW5EYi9z6f/hOLUqOjI0+i
         VYng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=FfLsDuhJAeSWynItNJop9qZV3olRHMk3HXI/IMVyipo=;
        b=WBD73bX3JQcagzhhh5gkkSR7x7lMO99k8j+vZO+jXQ51RAp7kr0jyxw49OwI0lwOeI
         NF6hItfNlhrFT49hbaCJAP81yc6rVf+fl48KId9/GSValYRthWYsXrKy3CsIIZE2HZEi
         V9umpKszq62ZpqByG/7XMsxgg0H6+l0u1JDLsHwjPiDKGx9I2EIm+HFFSWBdlXYKOYDg
         UhwLwp9obYe34y9+6uqavspgfeBpxyLdaxKVngAoTvbdid7yZ96ZSCkLMc3M1mdqhh/B
         a+3KCVOvCk+rsqbh3hhvulzqew1830CBCAFRKeYXZfyFhLnSb9t80cMDoEqDtpSjKVjn
         PG3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=wsI73nLF;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FfLsDuhJAeSWynItNJop9qZV3olRHMk3HXI/IMVyipo=;
        b=WCu6b63tPVp+QqwNV1ANGnfzc7YFNbBAplwAofB/6tCvMMpVPUTkmT2H7ZE5x4lDIc
         yhJ0o67tAik0RAaaPUMVif324T/j/sgyqIXvc71KHjjR4+xAeNTKlOjkn/U+qOp5Bj6W
         g25ONwKjKTvwiZDbrWjCTy3bsVGtZ/Y3lzZM+vyxFCeEpKLxIqh77Jncjwv7IIeJRepl
         leDJ71zIsok/pD4/LR+QacM/EXAZQXkmB7XPj7iqGQNkkPPf6yptqkAtVnX8nJ50UC31
         sWMr4OD/6SYFF/oxVowl2vKebR+4eARq2ksjmnk8iaEyhjd1pbjK7J8V2vXtBNv/DRJM
         JG1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FfLsDuhJAeSWynItNJop9qZV3olRHMk3HXI/IMVyipo=;
        b=lKrMup2H1voa73iN6fXlghzmIS/Wstb88Qct+BG1JizVbDwZXR/mBJitwqp3w18HsO
         eq6u7CNo8sDGSVvYhhCSr4fzmOzS0tKfYOhp3DZI+cyGyp6xWHKhrnKzPFrOKsMzzXGz
         5ePf7Xi15pZLQ730KTGqlbyTm3idKL1UBbpJTBIkvghb7mMINfHGlu2/nTeQvT1XjnfU
         FVfmjQD+JtZkvWV5953aGkvDtRcE7vzjYCk5r8n6spf01/DFH8FfUgwFaI48nzvTzIWL
         oqdBzc6zUPaHbpEAu4jNhZP+Dz7Vc5MYcgwq4NV4Kn0gGvTgwsh3wfeI5TuBKSmpbkBS
         cImg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Y62Qb/+WUTEmivHDAeRZhgd6pNF/gz9BgST21gg8WvKSvWeKN
	fqk0nTvMffv1Mts9oSbe0n0=
X-Google-Smtp-Source: ABdhPJwV3SEtIicIXua9x7giyhhBe2J01J3CmnNpTrgnyKvJVLT0jHSBNI3h+spmwUApjcw6IrAl0Q==
X-Received: by 2002:a05:6000:1012:: with SMTP id a18mr4414367wrx.426.1628779782531;
        Thu, 12 Aug 2021 07:49:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db90:: with SMTP id u16ls1373725wri.2.gmail; Thu, 12 Aug
 2021 07:49:41 -0700 (PDT)
X-Received: by 2002:a5d:610d:: with SMTP id v13mr2530586wrt.199.1628779781675;
        Thu, 12 Aug 2021 07:49:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628779781; cv=none;
        d=google.com; s=arc-20160816;
        b=G/Knggx4i386zU45NkJTHFeXhCL/UBjutMdLGZ/vgajQpu8vMd6Wyymrd4Fdg5GJsv
         9gA4yTJdH+WDmzd/e1ZOdihICLBw+2kr7hzWDo0+Zg2As2GugfiYtaMuC1cJGEngONp6
         UxR7PtgMz/01bzWBY89WSRM5ibidMH7dMyZ0U7tT9iWEnQLHFbGDYXGqjF6vaUhFVfQv
         1kqzH5okccHS+Sw8TNCfUfejAgOe5CQy8fvdOeG2Zap6OTRTjoE3Un+QksNyS0rOqw0E
         /poAOQW0R4i0c4KQu4mLrh3MDQpmVCPqKOrI1qMB577XawZIILl54FXYIGVbO0g2EIDq
         AuRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=t7QfrgkfBcYFUetsP5IAsMFhEXMWAQKKKsPElvr4FwI=;
        b=rslo+JUQjAcamKZ4G5LUrP++mFFL1Z8QLLs6BBtIuEOV1kUT1ktFUULN+rlMEeAXBj
         bGK5aznTDCUwxVlZ3WrHtJ8DrMkin1whOrmU8FXPjX7Z83PWDAjtEuLWiMfB37khrUXk
         Z61pJVQBlGhXkKljSPm2e94/qLOfssodNl2USlrMDecj50Am0WvoGeHu1HGaYhYRqHfY
         aQquewAa3lmzRfMXk1ysym0a6NAxqzqEACyghipj6lwioA7sWfg4NIloE78WMyi+ZHKc
         ZFBBi4Y4jWIVOo4ceTjVMKveqxpaaDPHH9SUSP+esiki5IG6oviVBVgn23y9mHeHWlhe
         Ko5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=wsI73nLF;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id j198si43293wmj.2.2021.08.12.07.49.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Aug 2021 07:49:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Chunyan Zhang <zhang.lyra@gmail.com>, kernel test robot <lkp@intel.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org, Saravana
 Kannan <saravanak@google.com>, Baolin Wang <baolin.wang7@gmail.com>, Orson
 Zhai <orsonzhai@gmail.com>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/3] drivers/clocksource/timer-of: Remove __init
 markings
In-Reply-To: <CAAfSe-vY9bkLb7Q2Tn=2ug6pau9VHkfZyvmoQNMqeKmxfquOHg@mail.gmail.com>
References: <20210715065455.392923-2-zhang.lyra@gmail.com>
 <202108011431.Nx7sS0uY-lkp@intel.com>
 <CAAfSe-vY9bkLb7Q2Tn=2ug6pau9VHkfZyvmoQNMqeKmxfquOHg@mail.gmail.com>
Date: Thu, 12 Aug 2021 16:49:40 +0200
Message-ID: <874kbuiupn.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=wsI73nLF;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On Thu, Aug 12 2021 at 14:39, Chunyan Zhang wrote:
> On Sun, 1 Aug 2021 at 14:18, kernel test robot <lkp@intel.com> wrote:
>> >> s390x-linux-gnu-ld: timer-of.c:(.text+0x306): undefined reference to `iounmap'
>
> Seems TIMER_OF should depend on HAS_IOMEM, but this error is not
> related with changes in the above patch?

Right, it's not caused by your patch, but if you already analyzed the
problem, then why are you not sending a fix for this?

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/874kbuiupn.ffs%40tglx.
