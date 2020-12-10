Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHGRZL7AKGQEZVDUZ4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 182DB2D6ADF
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 00:00:46 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id x15sf3178524otp.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 15:00:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607641245; cv=pass;
        d=google.com; s=arc-20160816;
        b=N31zPFm0taOC0udoDuefvoWK46YNAOHws2ELUb9e7V2iY8TkaY9NFWQo1mzmCnyYls
         h/TH7CD1jZaxUN80NV5Y1HKQFNyNU/VNgdFrQn/SqJgE9aiX3SsdMGGQdHfgwt5o9k78
         ja72km3zZiZmRfHXcE1izFmApdoSoODRHK53IzoRGdh7N4u8oVNCBTAV83kUSvJ+qCRr
         bZ59B0HVRDqVT1EaduupPFmO5JZg+seRp0m3uedG5b/siB2/XgovK49QY9nzwhIrDN2T
         Al4coLpzyMld6V05MEAOKZxckZMuAks05x5V4lz9WMN2LaYvHm5amp0sEyMHuZoPDpUX
         S6bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=muGVwsk8Kn570g6GZRzSNXnZLRkHJu3T2cvtrBEfNN0=;
        b=0iy2IdG4v8jzBGVVH9JthN7eGMZSHP9tBC9W1aWjvtbBtU5w4yXSC+MKzKIrxp8ydy
         P3XzvqzouqPji+hSjRi9aaSi4kfgxG0Ybw0cRHgHPZMKYN7zCiZwzzsxgZvLTbHQzgoC
         4jnbS99KDjKt7nKFlRg707QjTaSSNWK0FFy9anJ/rOTIHkdyldPza+5IXv6GtBTPTLfX
         6w/UeS6uCFUUz2DT8ImK7fyphZs97qNQuwR4YWZPEqbdUo65gqkgejORnRnr/Jm2WHuh
         1oWNWoXHmsmPvSl2/Z03dMAaiG5IlbEvL+4hprY695d99LPhq9uUbD79lEvHs7LHn4Ut
         nBZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oJI7rUjA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=muGVwsk8Kn570g6GZRzSNXnZLRkHJu3T2cvtrBEfNN0=;
        b=fmaNZkYlN9WoMIHNrqAjtjNudSHbFLPkSykCdF/DvANpaIZk8AzPfzEqgkqmk38A1i
         wi+crr4rawpt0souDE70jEM+ZVWVd4REaU60SZubR8RVu7bBuEwJbEUD3y4mHr06xB4N
         Wd+QL08gwtsjFKNvOoOWacXHc3/LOh+jfLyqpQRBsp0sRA8Afnl5vCRPkJCisIRpFyBH
         L8AgTMHqqrYqgjT6rvlgr0KfH5xIiJ1/7Xz1Zq1KOcOpelQ9xy9Gcvd8067hy/gedf84
         kT05Kw/eaeeqLXYv6O3y2k2mpoVCO7TWEJ5dhhWEDi94K+glUSnuo7Wa6W3uBhVdPTVi
         3QXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=muGVwsk8Kn570g6GZRzSNXnZLRkHJu3T2cvtrBEfNN0=;
        b=lxrCkdsrY66cWt8EacS3wyBJrAAALdgGMDIqu7Wt7DF4TczpeTp2scx8KVd2ChBsoJ
         +KBYWGr7t6xG5dpRaMo2joVvhczEOZCGfEQiPpEku2AD93BKBxMLTagarkU5M58s8RKN
         uvk5PLhaBn/8HxUjuXd+QmemkU1nTbnIrpj7AG+uDLlFftePiQI6iaa2AdvDhlWNCCP8
         q6KNtdv0Gie2naG6+d27Lez2GVAfzTeCgu72DfW86pGrhcNgHzP591vkP1Cdx8/R8Zo6
         2RZL2YsLqb06YDGiPxlQkPDHVWEWTeXLVr2j6bGZ8isNt3DwuDGRDqgCpEqs/ogYkcLV
         lNZg==
X-Gm-Message-State: AOAM533cp+7ahBPNQaH8YXkbUraUVtWYb9sRxNAcgwWGnu6nouM5iyl8
	MZq7Erd9aphcIIBJC9OPwJ0=
X-Google-Smtp-Source: ABdhPJyUHYZH6KsSKHYOdEQLfgjzecD48Z9Bx3zqBmnDl3YValt0ofv28OeJTe6fN7z3MtVeYSPCMA==
X-Received: by 2002:aca:1109:: with SMTP id 9mr7375792oir.131.1607641245030;
        Thu, 10 Dec 2020 15:00:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:155:: with SMTP id 79ls1950469otu.11.gmail; Thu, 10 Dec
 2020 15:00:43 -0800 (PST)
X-Received: by 2002:a05:6830:84:: with SMTP id a4mr7853197oto.261.1607641243330;
        Thu, 10 Dec 2020 15:00:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607641243; cv=none;
        d=google.com; s=arc-20160816;
        b=NaMDNtEsVLvL/vvsziEWSZBrH/8UdDq8x2I0qKMlVtjK1uXDZnwLD/59oPV03KPGgB
         KKcOs/bj/NG0sP5RDigm4UBc4j91Hdkg5K9znIWkaKZUFYAN5Wtou3d8OQSoIOzLOPxp
         yVpIGOnC/65a6MjjzTmfFuyaDwR3C3tO31POin2AFsYWDBYemb0Y8kg/u9iB6wS+UKuI
         wpqlBkpWUo7Jfso/ntsCJAdzn3dgjo1TRlZhc4pMU24Y7kOQ71KfYtEpAbslnflxwDs0
         +FAzCaICtTuJfo0NmiWFxfML9CQFmfYVzQhOPvctlZESb7wQJr+ETQpvjqgGbVVhn4uu
         3sCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zQXrB9GHmdvtRuHXM7RSGkfWQJp8dLu6UhfyqtSRnns=;
        b=TbL42VJwSt+8B9jNgppEpfAXETr/JohHEkR697Kx7YMj40X5Wlo2rQQvGXGrnNg4IL
         kBQeOlmH1X6tnMMJKr1a15Vk0AFDNWficGVxTVIpTlFtGOjPXJ1cqQ+TeSskUcvzHrgN
         XOoTuFPX/6/ttwOnx66+2tqO09qhvPOCggf3s7Gp/piVM7p6dwztdjQsSW2KKAfOS1+f
         tOjQOxEcpGC7qlE5W5oVhN34hmZkevE1bywu+QO0FjCcFy64/fca9PWmKz77s406wbvK
         g0ojEWra4kDReW94emXHvGQ/IBHUYofXX3ESOe2HtJ+Beuuq+ZnTegKV10C3nt+svll5
         sPgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oJI7rUjA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id u25si446722oic.0.2020.12.10.15.00.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 15:00:43 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id v29so5678438pgk.12
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 15:00:43 -0800 (PST)
X-Received: by 2002:a63:184c:: with SMTP id 12mr1301455pgy.381.1607641242592;
 Thu, 10 Dec 2020 15:00:42 -0800 (PST)
MIME-Version: 1.0
References: <20201203223358.1269372-1-arnd@kernel.org>
In-Reply-To: <20201203223358.1269372-1-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Dec 2020 15:00:30 -0800
Message-ID: <CAKwvOd=i6DFLrPAe5KihT+ZK-nFZ+L7troC300q-9Jpa=i4Fqg@mail.gmail.com>
Subject: Re: [PATCH] watchdog: coh901327: add COMMON_CLK dependency
To: Arnd Bergmann <arnd@kernel.org>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, linux-watchdog@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oJI7rUjA;       spf=pass
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

On Thu, Dec 3, 2020 at 2:34 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> clang produces a build failure in configurations without COMMON_CLK
> when a timeout calculation goes wrong:
>
> arm-linux-gnueabi-ld: drivers/watchdog/coh901327_wdt.o: in function `coh901327_enable':
> coh901327_wdt.c:(.text+0x50): undefined reference to `__bad_udelay'

Isn't a linkage failure against __bad_udelay supposed to be
interpreted as a value too large being passed to udelay()? IIRC, this
was an issue for someone building an Apple touchpad driver with Clang
at -O3...you sent a fix for that:
https://github.com/ClangBuiltLinux/linux/issues/678,
https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git/commit/?id=fff2d0f701e6753591609739f8ab9be1c8e80ebb.

>
> Add a Kconfig dependency to only do build testing when COMMON_CLK
> is enabled.
>
> Fixes: da2a68b3eb47 ("watchdog: Enable COMPILE_TEST where possible")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/watchdog/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 8bdbd125821b..32fa6de7b820 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -631,7 +631,7 @@ config SUNXI_WATCHDOG
>
>  config COH901327_WATCHDOG
>         bool "ST-Ericsson COH 901 327 watchdog"
> -       depends on ARCH_U300 || (ARM && COMPILE_TEST)
> +       depends on ARCH_U300 || (ARM && COMMON_CLK && COMPILE_TEST)
>         default y if MACH_U300
>         select WATCHDOG_CORE
>         help
> --
> 2.27.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Di6DFLrPAe5KihT%2BZK-nFZ%2BL7troC300q-9Jpa%3Di4Fqg%40mail.gmail.com.
