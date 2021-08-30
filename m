Return-Path: <clang-built-linux+bncBDAMN6NI5EERBG6OWWEQMGQEHOLANAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B433FBF54
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 01:17:53 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id n5-20020a19ef05000000b003e224cd5844sf938643lfh.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 16:17:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630365468; cv=pass;
        d=google.com; s=arc-20160816;
        b=fWuoAyYIhswY3foQKRKqmqfi/6MB7i8isktMXK69QBfVo4WnMxNSiZlLymSvfIbpU2
         Zghj7lqO/389iwCrtXnjZseZ7klbFfqjOi+eGlWIayVaN3/Uo4qXZxREQuPFMAITtZR2
         y/dSXWmQxjZ/gJEboSjJeEz0qRecmYcamXgyDMIyeotM/Lq2/tUsWi3CpdHA0HP1SuY0
         unL+S1nbECYVMFxbaKr4aiW8fQj76xarlDXKvTU2kqyBeD45omzuTgqXbHsjZNs85du1
         iaVqAlGFLMHWOOlVhbhQQ+bjA7sw5vEEFTJO1POBlzcXz0nqheYyNXnhH6acDNZzB5/5
         htzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=rrbhpMhTG6K0YQemNIg0WOWQXgGCff+TElkXOhGtMlU=;
        b=k3/gqoT1CrMgR17+/LIP9MUMowZC3wnghkxWV9RzhbK14HxEnOu8GJgl1boKf0CC7T
         E0CeJknO5tWE6C0rl1QpmjL8gycckFpOfI1WdClEKDWBPlJqvVpM9Shv8SOCp8CceAiM
         8An3138OZQjzBo9Cqq9aAgHcXZOf5BORAM66NT0kP4VpcTbeY5mwkryuil6cPdoVEFcT
         mZ2BVH8RzAekWboU8/+wOv8Qs5blySM4m1ZadoCAhAhmhb0ECx0rGLmXNPGnGV9RRo3m
         HG2EgtUXG7bDleDApz0LwNMtsXuy3U9CMeQXAAh+prjyImgF0TnHBHePvO62hqmdIQ/F
         ZRwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=VdMYJwvd;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rrbhpMhTG6K0YQemNIg0WOWQXgGCff+TElkXOhGtMlU=;
        b=KPZqfPZVuD9I2IPyzjIEB9p3sOBcQIXMjLvqG67PfVQjmpjaZa1QmTwvS/pa6pCk9x
         NN3U2csul2RKhnTjT1KSiyYKtTuMfdepas9jrHh/FcOFwm/JXICVlHNR3A4FXTfhZiGd
         KUEjUNv3X93Fe+Qs2k4dBeT8NRO3sgdeP4vIAlplGox4+5Z99+RFn9Mhskr75KvDhFww
         QyGLalFNmXJ2KiJGGHMZbIKdGOoc63svAQDHvBRx4YcJ8by/mlUTFuw+vQWsJDlqDiXs
         w1Wy+61CABKuN8bcE53LtsH3loY9TeRPjxzG7PyjeVItJrVnacf41Yr3CUupC8xNQa/d
         QgZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rrbhpMhTG6K0YQemNIg0WOWQXgGCff+TElkXOhGtMlU=;
        b=pduT4J+vsXhCOqMct3K0giIjNEGpfMWf88yUWSIrc/ICyFLTkakd1eyXZ2gqm/MD1R
         sZnlZbpCEvl+TYeECfW1D9THfYClgmxwAfIbr89vMM2io7vOmzDnjgnoHmtudYlkQ96e
         iqA+rLOsUOcMlsqAsNVn2yION2mpamIsclnk9yMT4HJDMNwvoE/hS+V4/HF7K39evkLH
         YOZbGApbWX1xQqsuT5DWzxUW7McnfKAlS1RZCkrLEx6n883YRhkKsO/l7MwL6uVpg3fn
         Bfs3S+4bydKYZe+n8XwTmOkzKEnPLk6+Fee+FeZ+CptlCEgt1SiRm8IFaWmUBiNl4occ
         mbhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EH0301p1rWH0rNAkQQ+g1QvUbHRgvzf5MM9uLYINoV60StBQo
	xSyCAbt5DPLtlVJjKwKE2pg=
X-Google-Smtp-Source: ABdhPJxoO/uldbp+tGPfR0pBCjiIjDHR1hovbNJoeWPB3H18hzCFNjMdrb96ugkr3igbh4Q1r7/uFA==
X-Received: by 2002:a05:651c:98a:: with SMTP id b10mr10907070ljq.280.1630365468144;
        Mon, 30 Aug 2021 16:17:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:c13:: with SMTP id z19ls2223700lfu.0.gmail; Mon, 30
 Aug 2021 16:17:47 -0700 (PDT)
X-Received: by 2002:a19:7101:: with SMTP id m1mr19703238lfc.156.1630365467183;
        Mon, 30 Aug 2021 16:17:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630365467; cv=none;
        d=google.com; s=arc-20160816;
        b=mA/0IJW5ygSOo3ro0+XBKcBfbMJecvwHf3NGYIl09i9o+UJ1GUKsAwbnvximHTWo+g
         PLYNtpg1oPbckSaCKDkkCOaPo+J6SuOYwBK0dHy97ohS2pWsVlymzsOFSEiIJizRz6Ad
         BeAP3si99esQd/lCViLKjj6VJN5di4UZ2IrJRDG7S+hxhQVyMagbm2Lyu886FbZCSWMs
         +87zoduxM0pBbDK6m/HdFh0RUeFMK2sid7qOODXUo2EHTT2C2yJDkmfgilyoHWmSWVPj
         TQgu9enG4nNiTegyJzcxysVCNqGyLBiMMuXCBDoDDVnwSHeJRamXj/DsIAFzkdH9XfEc
         Jifg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=waBPSOtEtKCExNwq33nlht3Z/W5y12JWVi4ROsYUn4o=;
        b=H+6O6cfsRFWk6Wyl64oAP341rf3idq2ri6Lco+TgdZItjxdLBdLKOXe2U5McLcqk7S
         ZXRirq0YDQB3kSPR5msmvgWJNtlHbQezzHOSbJ/tG6EEAv7EmEKETwYJrcTqErapO2UQ
         U6yekEWihOIS8TysfAHN3LzCHGe2Pcco/sm9VieXMeXt/oGUXfyd8Uppusm2gzMZtr/x
         bb5TeyywK9Ai/syQzwrLGc/0IOObLCO6GkE3cL6Sb2T7l8WP9kNNqnr9woQxVNCTkp8n
         MJeKt2e77/l7He9giGZS7yHHNgO2WAyaODExvuWFKsDJMq9PxBVaS69TWu7ZMQDf/SGi
         oVPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=VdMYJwvd;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id i12si956190lfc.10.2021.08.30.16.17.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Aug 2021 16:17:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>,
 linux-arm-kernel@lists.infradead.org
Cc: llvm@lists.linux.dev, Nick Desaulniers <ndesaulniers@google.com>, Arnd
 Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>, Russell
 King <linux@armlinux.org.uk>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Linus Walleij <linus.walleij@linaro.org>,
 Andrew Morton <akpm@linux-foundation.org>, Anshuman Khandual
 <anshuman.khandual@arm.com>, Ard Biesheuvel <ardb@kernel.org>, YiFei Zhu
 <yifeifz2@illinois.edu>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, Mike Rapoport <rppt@kernel.org>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: select HAVE_FUTEX_CMPXCHG
In-Reply-To: <20210830213846.2609349-1-ndesaulniers@google.com>
References: <20210830213846.2609349-1-ndesaulniers@google.com>
Date: Tue, 31 Aug 2021 01:17:45 +0200
Message-ID: <87czpufrom.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=VdMYJwvd;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
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

On Mon, Aug 30 2021 at 14:38, Nick Desaulniers wrote:

> tglx notes:
>   This function [futex_detect_cmpxchg] is only needed when an
>   architecture has to runtime discover whether the CPU supports it or
>   not.  ARM has unconditional support for this, so the obvious thing to
>   do is the below.
>
> Fixes linkage failure from Clang randconfigs:
> kernel/futex.o:(.text.fixup+0x5c): relocation truncated to fit: R_ARM_JUMP24 against `.init.text'
> and boot failures for CONFIG_THUMB2_KERNEL.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/325
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Reported-by: Nathan Chancellor <nathan@kernel.org>
> Suggested-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Thomas Gleixner <tglx@linutronix.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87czpufrom.ffs%40tglx.
