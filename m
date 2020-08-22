Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBSOTQL5AKGQEIEYNLEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDB724E594
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 07:14:50 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id c189sf1445925oib.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 22:14:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598073289; cv=pass;
        d=google.com; s=arc-20160816;
        b=YGInWQy6KiJ0Pgcbt3W8sIOEFVjXdyDqHp8XSnE7HzNF6atQrjs0W0QlUTjCAznQPC
         Z6QQt19lhNQHT2pbFaW0iyiz+ypR7Qk3qtvcjduxzlyKcVGX7gXkk6zx1JVw5kMJbJli
         mOStqad0CwXmUKOPaVNlz5RjE3EYziaxJFRjoT/tFw6a3iqEBiuQn2wlhAhaQwU+T7LT
         hkoP3nZoJym5HkiTYca9qJ/sez9YI7fq5WBN1BQSLPM6DLqlvrQmdh5/BRK9G2h4l9E6
         qU8GawmobmYO8W7UqzckHd/+cGglVYLfMGK7F9iDOMAtULsW5nZamj0puMclhECtUEae
         a1RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Gk0xb21zGBym8Hlpam1ikQ3aUUmeQbuy0NL6GAmRlEI=;
        b=XJ/LpORSf/s9Ppvpgrek+BUG5ED7hV6bVqs5vqXmAWveELPKmFK2MsntypbSEH1LkP
         aAARSfYslXS9r2a+7PDgo1963AgegNaTHXP0klK+tZCpyg7HcGavsdxQM+XSPcsATHll
         ZUa4r7uC1iS+uPd4Fd3KC46vfK5pfYOpzgzAUMn5f1NF5guzXREZV12hdHqW1fwkaBHv
         swzSn8jmYekMA/t64rQUYOa6k0rB6VfjH88sczxqyNtKJNxlKn3rnFv2GSdxJUDk8Bu/
         IRrcGX/Udd/9va0zR4JPwAs2d4dMGwKDnXZiT9UZqWTrkanxZ6O0qtLyXJXCljZs/r57
         TkpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=abWVB3xa;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gk0xb21zGBym8Hlpam1ikQ3aUUmeQbuy0NL6GAmRlEI=;
        b=CkwssitBaVkxDZUZqeS1zx7tM0TaSdYSsrSyT0PILzy5zliaB7pqmDx1pc0FS1DgjF
         Lye3nsJOlQpjR1jmYdzmMbHv89kdJ1YGzJxhNV2Mmrb2VgFDj986pGfe21pk/N5IexTQ
         QCq3I2MzDeoQjNZZ81nG44KDgkAZCj0Hh7S4zwhjueagB3CKrxT/BB080qwNTsjBOVfk
         jdRNNSGfzNh9nrInVtQvkgULoANUI0AJZju2rWqhGezJNjr9AMQXOWAVaB7RjY9ASF5K
         vFlIfhWUcKB6jvZBcToibn1YA7NKqNFmoIc+Zes0I2W9QxKi6Kzzt7K0cT677Ace4RCT
         HYkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gk0xb21zGBym8Hlpam1ikQ3aUUmeQbuy0NL6GAmRlEI=;
        b=JOlmxmtDYXabUpkff/EbkhdaZt2kUk57KMgEjyh504UwPn6iiW13qs+Aww0RsQ780q
         7/aze4X5XxEt5qNFY01mpb9daam+bmkAAqma9XhPdm1mEFLbSeAzgnveFgYARucFQAqV
         K0ilEV0r0RE2ytwZ8UQGLXZoxdAU8/5h25aGvK+V/jrsJgNcIJBXeW+IC1gH2hNhlspw
         gi+ZS8wZY1JM3MSSrq2F4SYYsMmFvAf/Pqc5nXy3Zpyii8+cvv4G2cX684IcYD1gRrNw
         NkKUTaGLjAgM2snqDL2GD/eoE3aGJvpniaoNC02o/iMQTJPeUssL1zY0LrOop7OknaHl
         JxJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CuFe1dXJbBMvhHsFttrPh1nzHuqKP3FghSnt5OalajfXmCpeU
	Lo+vaZW3z9daLsTKLlDv5Jw=
X-Google-Smtp-Source: ABdhPJzrCYrr3692+FrDglYcGIIqc2soq3YMLyP1XZN/QMDFtWBl5CCvs40vXbU2wAr82Qd6SQkrQQ==
X-Received: by 2002:aca:4a49:: with SMTP id x70mr3640642oia.173.1598073289359;
        Fri, 21 Aug 2020 22:14:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d555:: with SMTP id q21ls266371oos.11.gmail; Fri, 21 Aug
 2020 22:14:49 -0700 (PDT)
X-Received: by 2002:a4a:be0c:: with SMTP id l12mr4773292oop.22.1598073289002;
        Fri, 21 Aug 2020 22:14:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598073289; cv=none;
        d=google.com; s=arc-20160816;
        b=XA6cuqpZvQPt4PmEtT+3P57knzdfeNl9986QhWRSDgL7enkvjP+Im78vFPow7XrFcC
         dWQRtg1Ecg6SyOUACsdFNd6kCYqFAFh7dAy905dDpPwKyTZ75UnthovApTYMqKVDoPsz
         SlukXgkEV/soOxVhOiVzmIhlPqvN9dj8tYB6mNKQ0hz0j5+/GMPQOCbL6Wqjlk7gxtNx
         oxyNZzPCliTcGWZwirI+C2hJAgAI9VchtPaw1AUIzsz38vL5qR6ix6lihWPKZdh2H0Rk
         MsUlWaxT3NFrgxfujb2Zsav8VPP82emMyFdn956Pweu6KtoIti0OHk0ZqkR6jGjTGMay
         esmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=4FjA6DiNrgZGC6Vw0nWpQF20KUNU2N4bk2zh75rtHw0=;
        b=ATYuRHeg0oQRzO/BqflaxpPbRdQbRZGbdYxSBp1cF7NbjEaLQzG93QcrIWZfB5l6PJ
         rRieGOLsW8VKyj5Fh39C90TvUOiZguhnVmg2Won6ZxJTmq+GXbRyTHQUDB64Jm8HaTby
         +dr4iUpEXiJRvFSaMMjqosXAK9xF1f0bmwk/rnudFuRb/ysLQD8lJKXGNKdRD7F0d7lw
         1Gu9OfsYvaxHPmWlINdqOT+W0YpedbJ9waOmH+YvQy4nc3U+UG02ODdhW02dT+kgKQa8
         /EtExBaKVjTjc5XvPpGlIjfhw83vsYiJrso416FTpSWFWZm6omo3SbHMhpzjS4XG8mw5
         yhUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=abWVB3xa;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id w1si222261otm.5.2020.08.21.22.14.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 22:14:48 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 07M5EFh7000936
	for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 14:14:16 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 07M5EFh7000936
X-Nifty-SrcIP: [209.85.221.174]
Received: by mail-vk1-f174.google.com with SMTP id k1so874945vkb.7
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 22:14:16 -0700 (PDT)
X-Received: by 2002:a1f:8f52:: with SMTP id r79mr3870370vkd.96.1598073254960;
 Fri, 21 Aug 2020 22:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200820220955.3325555-1-ndesaulniers@google.com>
In-Reply-To: <20200820220955.3325555-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 22 Aug 2020 14:13:38 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQO9sKw=7RLPSnsChddrwNCc_si-XgSDQcGHTSxeq4_Pg@mail.gmail.com>
Message-ID: <CAK7LNAQO9sKw=7RLPSnsChddrwNCc_si-XgSDQcGHTSxeq4_Pg@mail.gmail.com>
Subject: Re: [PATCH] Makefile: add -fuse-ld=lld to KBUILD_HOSTLDFLAGS when LLVM=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: stable <stable@vger.kernel.org>, Matthias Maennich <maennich@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=abWVB3xa;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Aug 21, 2020 at 7:10 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> While moving Android kernels over to use LLVM=1, we observe the failure
> when building in a hermetic docker image:
>   HOSTCC  scripts/basic/fixdep
> clang: error: unable to execute command: Executable "ld" doesn't exist!
>
> The is because the build of the host utility fixdep builds the fixdep
> executable in one step by invoking the compiler as the driver, rather
> than individual compile then link steps.
>
> Clang when configured from source defaults to use the system's linker,
> and not LLVM's own LLD, unless the CMake config
> -DCLANG_DEFAULT_LINKER='lld' is set when configuring a build of clang
> itself.
>
> Don't rely on the compiler's implicit default linker; be explicit.


I do not understand this patch.

The host compiler should be able to link executables
without any additional settings.

So, can you link a hello world program
in your docker?

masahiro@zoe:~$ cat test.c
#include <stdio.h>
int main(void)
{
        printf("helloworld\n");
        return 0;
}
masahiro@zoe:~$ clang test.c


If this fails, your environment is broken.

Just do  -DCLANG_DEFAULT_LINKER='lld'
if you know GNU ld is missing in your docker environment.








> Cc: stable@vger.kernel.org
> Fixes: commit a0d1c951ef08 ("kbuild: support LLVM=1 to switch the default tools to Clang/LLVM")
> Reported-by: Matthias Maennich <maennich@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Makefile b/Makefile
> index def590b743a9..b4e93b228a26 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -436,6 +436,7 @@ OBJDUMP             = llvm-objdump
>  READELF                = llvm-readelf
>  OBJSIZE                = llvm-size
>  STRIP          = llvm-strip
> +KBUILD_HOSTLDFLAGS     += -fuse-ld=lld
>  else
>  CC             = $(CROSS_COMPILE)gcc
>  LD             = $(CROSS_COMPILE)ld
> --
> 2.28.0.297.g1956fa8f8d-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200820220955.3325555-1-ndesaulniers%40google.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQO9sKw%3D7RLPSnsChddrwNCc_si-XgSDQcGHTSxeq4_Pg%40mail.gmail.com.
