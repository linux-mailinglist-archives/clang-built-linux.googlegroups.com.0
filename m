Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJGWUCEAMGQE42SHJLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D001F3DDE7E
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 19:28:05 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id w200-20020a25c7d10000b02905585436b530sf19734838ybe.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 10:28:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627925285; cv=pass;
        d=google.com; s=arc-20160816;
        b=UNrQPs3TFKMMuTr2ikkYWkYRvvbRLU0CKFe87i/lP1W9T6UAcU5k21JmxCQnAH6xPM
         VsFjdZXFKlq2ck0MrFp2ecWZHSjISraER5zJxAK0WG4ebVKCtRUdIQFL23E3ymnY13AG
         +HSCy+n/YAqB9cQmMjJ/I+RMok6pwShU7DK32rDWohaP8rkxJnekHGiWpv07nUvZOYg2
         R8F8/M4rbv+UQI1eSIiZ/WQYjsjAzJDA4qcuqvqJbj7HgdF3OT83abFoq+GxN6Mqiorg
         lAuSUP7Xzxv/QH4V0yAL+GcZ8Rk53LELAiMcPlUPtGTF9fmawGeW181ZjIiN4P3QivwQ
         Z08w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:cc:references:to
         :subject:sender:dkim-signature;
        bh=bJDXaFVNMn0eViFcR69HGszZpWgJ/3zhP13EMV9QC2U=;
        b=xmqTIdwPLGqxAV2C80EcLVzXoW3XZoxVTLtt7lxmd/uUGix+VkHaBzNdo/Fvjt8peB
         udXETi3UbRwiIvw+cx5TbKyCztQCuG7Iwpd+umZ/hAqcSx1TeTVXLWwKeSf5yiPZQmYR
         8c1scnv8tQEOP7Ew+RQtTInSvhKjUuU+pWXiqtZul85mh3lHRKlpQrLBzVls8UdDqSfw
         Uw4zzVlaFjP9JL48n88ODosTCWYYxa7ZQUUom7M+CGuiB1EKKQpdFmdudMIGSlWyqCrl
         sCNrAaTB5sq52AmQbzLcvRz9CZ8V2lA6ip5/GFTguf/L07RT1Pg7Lp03WZY4SUP+uMG0
         msrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gH4Hhnbx;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bJDXaFVNMn0eViFcR69HGszZpWgJ/3zhP13EMV9QC2U=;
        b=SKuvuRq2GCWRi6687rtanrfbxGEE9n0flfcNUqOZj8ohRilmc5iOs2B31AFRuo26jx
         7HLJ5OLh8UofvM4zqo4i/zgply9FixVBT4sZMNvJEUGfvUpS3UoFrqUtvntN9Jwl4xKK
         7Qo3Ojv8d8W2IUoj6gChNtUTdWL1oiY8jkDCWQTf6IfK40jnS2ivZhrw90LQQHRKSYri
         XOFreHMfWHZe+2XMug/da6uveK1JUJ4bkSNjbcB0PXzn9DfwJWdhURziXAqA+dTf7Hsm
         83ZAL10Ua4fHw+NjF8DUBoHne4GcUE9gEkWPZt2UI1ZOIPJcvfIX41HPsg3VUGvhoh50
         WDTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bJDXaFVNMn0eViFcR69HGszZpWgJ/3zhP13EMV9QC2U=;
        b=DnO/gjgbIndVuAX3bCN2aGCGBDe9tf2T3NfQ2JODVNI7QmdfBqjE3q0SOCwfbi/OHi
         N4CwOuij7hNcGY+0YDluT/3f5/Jzjqn/Y3RhJybYK2v+DnWmFaPibR1Khk67BHmaVhBa
         quMrRYcd3ProLssiRpubvhHkonD32VD3qiWth07QK2hbmoSCV19sS9LmgFdg1NEvErkz
         6AD1VJamVWhKAL+MDCkt5n5qELuxMUeQVQ429xLY82PJX2WZCuhFcuKzrOiibWzq3N5a
         3agVVU9Y8kq6EGNRlg8fqYXuTf5gMVZ6IEiwBlRaE+l6DiYWLA1rm/0Xsl5LUjpKIPgi
         bl9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339nvEV9jKQV23xbogbyAMSdR2ErNxk+7xk3yG/0hh+dZywpBWY
	06DocXQLYEhHFO149Be9COg=
X-Google-Smtp-Source: ABdhPJy37EkPXoi5SXseXn2QgxvEFCV2mTYXcrVx+ckzDBue8lqH0U+xIKdagNwxuXq+6vLg3sjFvQ==
X-Received: by 2002:a25:74cd:: with SMTP id p196mr21321509ybc.145.1627925284909;
        Mon, 02 Aug 2021 10:28:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e04:: with SMTP id j4ls112495ybc.7.gmail; Mon, 02 Aug
 2021 10:28:04 -0700 (PDT)
X-Received: by 2002:a25:cf91:: with SMTP id f139mr22429398ybg.292.1627925284454;
        Mon, 02 Aug 2021 10:28:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627925284; cv=none;
        d=google.com; s=arc-20160816;
        b=q38bWzTj8xY203JwD5cvpgEEzRuQ2e7hh2Xuc5Ql3tYuGpbjFFgq78xTLcFd7839bd
         KUgzSXYgZrFhQcNXgQpKCJMi9HKHgm5h/c5uCrUCYmr+5DTBxyIsC3EAo6WBXZVHtN4J
         rEg1d/5oIEyE7O4KOS4CDF7k7EdjpuQXopamoNeu0SmadWAf+e5o+9D2kbtPpbkchBTf
         upG9H6N5bAHy3IW5QT/nxeCYcvz1ds+6o4VbJeiaNlRUKpfKq2jaV5lf+ecBe/lqiEz+
         bDVC17m5kwYZtg27ciIqVZppXztaisM0j9wmEcYbtAjeP+If1qquTgDHCcxuYqBQJ6ML
         mOPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:cc:references:to:subject
         :dkim-signature;
        bh=sjxTy/bZVFFWADTWzfAtVhR2njk9nt/URlUtK0OaZVA=;
        b=eExtRrjP0zHUu1XhU5iU4JufQncJrM2NH9T9tCB4UgQ/zqPffAtLr6rlP19lqY5K3K
         Hu4duCHDMv08dRkT/mmdR+f/hniKE8w55jIX59GtyeTBwrWukyABGLAUC7i1fwbHGGRR
         3xMQipDz6XLt7aGaI7ZfDbNddcAaLa+UAlB/2MVe7heRlvScuRqkNFIaDTFm7pSWI82g
         uZk3LZs61wCAes6vjMVfZ+oNCa6lXAqeW8YJHMbJYvDfjF2JRrZIF2mhW5Hcs/cC/HBc
         zn7JIRqzwEt+RDOt6fo+0jMx4aatKGUFjno+e9Besp0QWX3yk9BF6Cla96HupEQHM2cP
         MPWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gH4Hhnbx;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o8si736007ybu.5.2021.08.02.10.28.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 10:28:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D9EA060F9C;
	Mon,  2 Aug 2021 17:28:02 +0000 (UTC)
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-stable-allyesconfig - Build # 4 - Successful!
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sasha Levin <sashal@kernel.org>
References: <1406720038.945.1627915387982@localhost>
Cc: linaro-toolchain@lists.linaro.org, clang-built-linux@googlegroups.com,
 arnd@linaro.org, Linus Walleij <linus.walleij@linaro.org>,
 ci_notify@linaro.org, "stable@vger.kernel.org" <stable@vger.kernel.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <a41ca429-9480-9ecf-242b-5e68fade3c10@kernel.org>
Date: Mon, 2 Aug 2021 10:28:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <1406720038.945.1627915387982@localhost>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gH4Hhnbx;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 8/2/2021 7:43 AM, ci_notify@linaro.org wrote:
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-stable-allyesconfig.  So far, this commit has regressed CI configurations:
>   - tcwg_kernel/llvm-release-arm-stable-allyesconfig
> 
> Culprit:
> <cut>
> commit 341db343768bc44f3512facc464021730d64071c
> Author: Linus Walleij <linus.walleij@linaro.org>
> Date:   Sun May 23 00:50:39 2021 +0200
> 
>      power: supply: ab8500: Move to componentized binding
>      
>      [ Upstream commit 1c1f13a006ed0d71bb5664c8b7e3e77a28da3beb ]
>      
>      The driver has problems with the different components of
>      the charging code racing with each other to probe().
>      
>      This results in all four subdrivers populating battery
>      information to ascertain that it is populated for their
>      own needs for example.
>      
>      Fix this by using component probing and thus expressing
>      to the kernel that these are dependent components.
>      The probes can happen in any order and will only acquire
>      resources such as state container, regulators and
>      interrupts and initialize the data structures, but no
>      execution happens until the .bind() callback is called.
>      
>      The charging driver is the main component and binds
>      first, then bind in order the three subcomponents:
>      ab8500-fg, ab8500-btemp and ab8500-chargalg.
>      
>      Do some housekeeping while we are moving the code around.
>      Like use devm_* for IRQs so as to cut down on some
>      boilerplate.
>      
>      Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>      Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>      Signed-off-by: Sasha Levin <sashal@kernel.org>
> </cut>
> 
> Results regressed to (for first_bad == 341db343768bc44f3512facc464021730d64071c)
> # reset_artifacts:
> -10
> # build_abe binutils:
> -9
> # build_llvm:
> -5
> # build_abe qemu:
> -2
> # linux_n_obj:
> 19634
> # First few build errors in logs:
> # 00:03:07 drivers/power/supply/ab8500_fg.c:3061:32: error: use of undeclared identifier 'np'
> # 00:03:08 make[3]: *** [drivers/power/supply/ab8500_fg.o] Error 1
> # 00:03:10 make[2]: *** [drivers/power/supply] Error 2
> # 00:03:10 make[1]: *** [drivers/power] Error 2
> # 00:04:05 make: *** [drivers] Error 2

Greg and Sasha,

Please cherry pick upstream commit 7e2bb83c617f ("power: supply: ab8500: 
Call battery population once") to resolve this build error on 5.13.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a41ca429-9480-9ecf-242b-5e68fade3c10%40kernel.org.
