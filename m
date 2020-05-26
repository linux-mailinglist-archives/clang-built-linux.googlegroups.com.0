Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRV3WX3AKGQEKYTZ5GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id A29B21E29E7
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 20:19:51 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id e65sf4796451ote.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 11:19:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590517190; cv=pass;
        d=google.com; s=arc-20160816;
        b=YDxspdD5DvqHWaQ7EmpPwe8aq/Sfd1AdWQdYOjI5fn0y7HQA2Ff2kOvAZ7vFS+aT++
         SJpc4Gv258gZGV/EjpzT7KUMSe0HaOpguYeual7lLsSsGV90naWqMBjHo7/9RbRMpbnJ
         avBjf2WFwPlRd7ab/KcHEtqDrXWRWJWjMfmuFLyyr+qilpn/7dUfEghu2PhAmTcqLgiR
         d3O0ghTgaGNYKAYgZjIslASMiM03W1AGaIV3rIOlP5BYuK7dLHI2J/6T4fiCuTR6WfoZ
         UfUfVGMulhhqCQrGCrczQMk0Tuxz8f7B5WRpshVQcq6A8cic4lH3n/hS2OS0XJJ8sL4d
         TfUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ChwPZC/BZZlDuYX+x5gn82KB/TPvyoPlT15KX/2K2zw=;
        b=pIoaZnbzbuK7nrk3HPGSiVW6k1puGGMjtqCpHDMAPZopLJwM10OrGLnHymiOV1Cxl0
         lbsBZmmBHedUvtIKce0IKSREAh7XYoR0Rd4qw3WZVP5FEFwz67DIeBXLmzmgO2bZ6C/2
         aE3P/V7AoicerROajaJ4WNFxoVyc1qUbDWgAM7fdFZ94D31/LUUYr/fA77RXB/8piFkb
         EDz70Wavt8CMOb0H9tAeJO7hfpiN0jZMvA/xUJoI90DMeF0Qs4wWS/lPwWPoLyM8RllE
         32CuxCeWQwXjwDW/1nOESdrH25Si/PjFiq9abdi26Xjmb1BG0wP5KpeUGIlXg2/Q5mB5
         WmOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UK4byS9S;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ChwPZC/BZZlDuYX+x5gn82KB/TPvyoPlT15KX/2K2zw=;
        b=baFx1pKmTRAPgnJHqOjMLBQEaEICjZENr54JY7OtP1O/w/LgGLOc4sSB49urA8S9La
         iSwpBj+dEAKyHzwQc2PRmMhBEZJQIBD85jTw2NoD8fXdSPwyVSNjxgV8ypOt/TP5yI3m
         EQ7D590/G59P5ta62ao8JSldy9C81AlPoVYMxM7uhbbtPybWBrwrMAXH6BQAom9LRapb
         ruQ4zXVzTO6RFPZnSJ3/V1xgb2EsOPCBeUujYuGBmEVDuG/3cxQf2Rwv/tPVR9dVcs/G
         4BoTiOTHec7Xl5U0pfEs2HDi2WdIc6gHIgouPDH2bT2EUu0Oz4HUf0j/AtZryCneBj3P
         kI9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ChwPZC/BZZlDuYX+x5gn82KB/TPvyoPlT15KX/2K2zw=;
        b=cKjhADspIKQ9kXpYk7PUqd25NuwITYu3csyk7aFjp3jdFwuodiWVQcUxkzCXo7mlnf
         0U0Lwshim2fIhBgFwwQmjt022asB55ZatLPDq43Vhauvxbkj9UGcH+4LU7aR/+IrWB/5
         /gec0bh0wO6zuf/7ZRLidqQ+bTC1ulJfc7bQDstbJOIaUH9FHSn1kcO+cCUFPA9ygV0G
         PeUsIZup1LI3/1hrRlGXJN5EJoi8+cp2sPMZ6mZZ6u4zKPharu+DAwBQqKkEXDzA9gHL
         qDgsjGU3WoLNDrORrZE0h4F9EypqU5x4UKqnB/9gqtZvv4EYYIs7jjyAH9OGBiT3Cumg
         7xzw==
X-Gm-Message-State: AOAM530oQ0aW90hJUYc42fueoqsiJwiKaVl7dk/XL4PSlCvupCSAkpnv
	OWdsipvnNnwedcRhmgnxE+I=
X-Google-Smtp-Source: ABdhPJzCGi9XryfbpA5g8iRq/RV/w8vccx19xZNp6//zOwaXrbi0tZIgiz41a2rZ3CDBi3Y5K2Ly+A==
X-Received: by 2002:a9d:569:: with SMTP id 96mr1676230otw.6.1590517190567;
        Tue, 26 May 2020 11:19:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf10:: with SMTP id f16ls2309034oig.10.gmail; Tue, 26
 May 2020 11:19:50 -0700 (PDT)
X-Received: by 2002:aca:c34f:: with SMTP id t76mr115327oif.95.1590517190060;
        Tue, 26 May 2020 11:19:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590517190; cv=none;
        d=google.com; s=arc-20160816;
        b=Ws7/1n4ON+YFY73GiWScmmG7CYSMZfKHLaxhNBLBfU119MkLkOunrUSXM7g1qWzWe5
         ZIUs4d7dyzb5dReRjGaLQnunDNrGkboa8VfDjchHPEJ4qxyZoKeQBlJovOVr8FV7PYM+
         PbjVhzpTNU9/cpUWDApLP7qunOcUmWWzT1aBotmCRbJ15nblsIU0OJI5eEXwB5/xR3pr
         kGuVKy3p67SQGsvgOpD+8iC015zv8j6EviqlY+9fG09s/dgeihfyNkfARZPU3RMKjiE0
         KBh92Rh4L6QyyWL4zx/Bxf4pkzFm4HXtXDZQlVKTEExJLBipuHSnQjA43zajy9IdImWX
         SkYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QUWGqAktyAyVHVqHB7sEGDJU8Vip0ew9s4nviisTZjU=;
        b=TKt8362kvoMU4j1tvJJGX0nFkQDWYgbyzUtR45HQkSlwpN/83sn6VAa8bZniF6g7dd
         BldH2QL2J6uEpSIQGXS/pmonbGdre/8zdV78zirjPA6k5/ix0Ll9/pLHrB2ri4qo8OpO
         wUjIM4Ulbwa3pv4NJf0HgJOK5yp7borF5QgWGXhJc4wTG+HZYkHmD+x6OT0tVHfLF3Gp
         xEcaS052CsmdDtkIT8Wfc4vNY9r92ndalCkq1M0+wsGwNBKHB7jEjN972HR0oTTHVNy7
         nglkpiM8FQZWXISGHzydS63keUCCUJ2fORrurCetWOLO5IQUcovDRFdtHwsZFj0ypjCU
         /D+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UK4byS9S;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d25si29212ooa.1.2020.05.26.11.19.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 11:19:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id 185so2210485pgb.10
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 11:19:50 -0700 (PDT)
X-Received: by 2002:a63:f00d:: with SMTP id k13mr147710pgh.263.1590517189321;
 Tue, 26 May 2020 11:19:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200413190644.16757-1-natechancellor@gmail.com>
In-Reply-To: <20200413190644.16757-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 May 2020 11:19:38 -0700
Message-ID: <CAKwvOdkwQSCr8E3Cx3nBfw8_xsd861a3W8jOt1CCQU-_XJS12Q@mail.gmail.com>
Subject: Re: [PATCH] powerpc/wii: Fix declaration made after definition
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UK4byS9S;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Mon, Apr 13, 2020 at 12:07 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> A 0day randconfig uncovered an error with clang, trimmed for brevity:
>
> arch/powerpc/platforms/embedded6xx/wii.c:195:7: error: attribute
> declaration must precede definition [-Werror,-Wignored-attributes]
>         if (!machine_is(wii))
>              ^
>
> The macro machine_is declares mach_##name but define_machine actually
> defines mach_##name, hence the warning.
>
> To fix this, move define_machine after the is_machine usage.

s/is_machine/machine_is/

With that fixup, you may add my reviewed by tag.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Fixes: 5a7ee3198dfa ("powerpc: wii: platform support")
> Reported-by: kbuild test robot <lkp@intel.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/989
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/powerpc/platforms/embedded6xx/wii.c | 25 ++++++++++++------------

^ I can run Linux on my Wii...think of the possibilities!

>  1 file changed, 12 insertions(+), 13 deletions(-)
>
> diff --git a/arch/powerpc/platforms/embedded6xx/wii.c b/arch/powerpc/platforms/embedded6xx/wii.c
> index 67e48b0a164e..a802ef957d63 100644
> --- a/arch/powerpc/platforms/embedded6xx/wii.c
> +++ b/arch/powerpc/platforms/embedded6xx/wii.c
> @@ -172,19 +172,6 @@ static void wii_shutdown(void)
>         flipper_quiesce();
>  }
>
> -define_machine(wii) {
> -       .name                   = "wii",
> -       .probe                  = wii_probe,
> -       .setup_arch             = wii_setup_arch,
> -       .restart                = wii_restart,
> -       .halt                   = wii_halt,
> -       .init_IRQ               = wii_pic_probe,
> -       .get_irq                = flipper_pic_get_irq,
> -       .calibrate_decr         = generic_calibrate_decr,
> -       .progress               = udbg_progress,
> -       .machine_shutdown       = wii_shutdown,
> -};
> -
>  static const struct of_device_id wii_of_bus[] = {
>         { .compatible = "nintendo,hollywood", },
>         { },
> @@ -200,3 +187,15 @@ static int __init wii_device_probe(void)
>  }
>  device_initcall(wii_device_probe);
>
> +define_machine(wii) {
> +       .name                   = "wii",
> +       .probe                  = wii_probe,
> +       .setup_arch             = wii_setup_arch,
> +       .restart                = wii_restart,
> +       .halt                   = wii_halt,
> +       .init_IRQ               = wii_pic_probe,
> +       .get_irq                = flipper_pic_get_irq,
> +       .calibrate_decr         = generic_calibrate_decr,
> +       .progress               = udbg_progress,
> +       .machine_shutdown       = wii_shutdown,
> +};
>
> base-commit: 8f3d9f354286745c751374f5f1fcafee6b3f3136
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkwQSCr8E3Cx3nBfw8_xsd861a3W8jOt1CCQU-_XJS12Q%40mail.gmail.com.
