Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBX5Q334AKGQE3PJP3VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4DC228DAF
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 03:37:37 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id d22sf599428iom.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 18:37:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595381856; cv=pass;
        d=google.com; s=arc-20160816;
        b=RN6NDLRUgrWt2rqEtJ1yM0lXTMdjuB3KSgfAJBsKqe6XuHDeBTi8J4a+fETEUkSnZM
         IwkpI2tSmHKG6D7tVuGpDopkj6FI8obXkoMqVl3w1xup58ih5UJxVUC7xsxYcpt+Hhvd
         YvUzYjn1IxBQWLk3PBZ0eWn30X9uTYcssLtEUaQA4+XizxNBPdAedSgI6xExN2yMJ0GS
         D0VjerLWCFrkoyrPjywKJry4I0igjox5Qv/WC4g16VJsKolH9KK9Jibsk2ZgTfayxyrE
         3ncMfUfd86TVFkl8twRA35OEnU7moS40oym7h+JcAcGKdbLuThDLbtTbtZuaiuyzIK1h
         fnTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=7uvSP2e1VUpz99eCQW8l0dIlnvNE/Ai0NNOnd9ZURsg=;
        b=MMV6TaKqZ4jVGiIxBOvf4kHBnt07XBrE8PQQPcxPdNePry2FS91Oml4TRNYnHtQjUt
         ZopJgckjRjJqxzOkd449aZr+hjDNRiDV/lVp7loOVYRTFjOyse4wEeM3feWCZpr/Ls/9
         YJQXSlrjEtqnfOrz2deATsUXrPkldg0IpP7OHGLv8bg6drYhy2tb6Ql4vlcYv9ahswAl
         3lsknd5hGAHBPNkDFToIa3Fyh/nqdzANFrwpnI+bV2GuekQAHBVDHPEDztZuLLc83PM7
         LvAqZPVNdQgejBYWtXojzdxGEPTh+uk4Ltr7can77Sr8pwM7mEAseXYGvOh1HALg4j0Z
         gs1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ZUxeHj7Z;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7uvSP2e1VUpz99eCQW8l0dIlnvNE/Ai0NNOnd9ZURsg=;
        b=dG64s3H/XL1OQp7D3bExShWDDZHXQc3NN+PsQlKlV3RKhtSXyEIVZ8JJoc4hQ190c5
         K2TQAAxeFKKs4ce7byQLMne5OBmRxiGFme5a/xFDES+aS8SbF6Pzl7zj2v9hOfnh6q+o
         7+ZVHBKm7bxPwdraWjnTOBPPRIBaseQTzikQSJwl3HF3/TFre4eFkxJtaE/aiml+KXwD
         PTWidAWLdCtQQLxS3QyhSgmKJfix7Qlwm8ijDZM+c9A4OQEu9jziZcE3LEldWGjJVq9Q
         BEY/f21rKRWxhqWE6/o89WXkUL/ZVZVhJeU+sklDuPFh6nIoIaNUXniDLuQL7H3KHG7E
         ka4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7uvSP2e1VUpz99eCQW8l0dIlnvNE/Ai0NNOnd9ZURsg=;
        b=m8llepWM4hHrca8qoWg4TZ1Zq3MdbLgtFC3umy/c5L9rHVEH6cwl8TbexlUu4Czj22
         1iyrfFQhDQy5ASvQp3/nzeYwK5tYY2Aw40XAxRQa+/m0NSUBYDDoxkORUEH3RA5PkHWW
         ZdMGiv7KJlZtR5Zl5s+QyW/Wnt6HTrH8FFNXVSM/8AbjSaJgrakhE8RAevUgBmPZC1Ev
         GHC8HQCHkBd6RikCnQ7EUkcaz8KuVzqvThebaMEXR110fZ5FJKpRZ5HUzWod7c5QswNc
         Arwv3A/OJfwyFbI+WNHdiU4DaWaEcSq5HgnZ0Xyg+BUdDQ2F2m0ji4sCwwD/SJEIoWVg
         yM3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530v1W2zYTuf5AM7hZbC54HYBzc2MkbkPWm1i8JzWdLKXZlIALdY
	IdsCzPoaBgCgSUfbiqWZvzA=
X-Google-Smtp-Source: ABdhPJwu25WYR8gE3RMZHFZ1yIp+9iQF1piFN1EX1sjYy6cA8kFHFG/qD8UgRgz82DWzoFKofRl7RQ==
X-Received: by 2002:a05:6638:601:: with SMTP id g1mr35358663jar.137.1595381855918;
        Tue, 21 Jul 2020 18:37:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:aadd:: with SMTP id p90ls157230ill.11.gmail; Tue, 21 Jul
 2020 18:37:33 -0700 (PDT)
X-Received: by 2002:a92:a1cf:: with SMTP id b76mr29338763ill.128.1595381853678;
        Tue, 21 Jul 2020 18:37:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595381853; cv=none;
        d=google.com; s=arc-20160816;
        b=KzBAR6/rSPYm6ETVRPGsdkCq6fOvX/GEnhntycFbC27FK+8h8vjieO2Y2RrS+trx3v
         Ljsd+Egym/LoX1ntyeK5gShQTW2NSc+4R/ca0Z4Z6cMmtPZ5UXx2zgql3jQ9qIh1uNpk
         qRWLvbXa2YhLddexp1yGksrSQ/IOiiPZ3f0aqaO9IIDQajflhBS30/8OTPdwRi8PzjOv
         pOgistZMd5ex2vm90ej5WkjVSM4u1G3JptlJcvKDsrOZ2s6AkNyvlQS6F5zFrljqroT+
         3iUUW/bXz4YlZmKkPEC4+4K6Wi9TspDiaRvl5LDW+O8q+LFArXsHy7Enz/Gtm8mINP5a
         R0DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=8OlTIawxGJAnm7U5ijTKoZc7UIGiiqP4rmftbHnofNI=;
        b=egA/S0GHkwfh1NTiklpzMBcS8m2GySb9afNjFvLwTKTirIOoAiZWopoveOAFFD+jec
         nDLWXzrOWcnUQ1OMON315gT0qV4vkUbQXJo65v8LG5m6x7z9hTde+XFLH3oLD1gVIebt
         Axv0fTjJxbg9vNPabHcc8E8bEUVMhsqEHUH8votzMYu+6ArrWl4fOFTjERLcIYkiIsnG
         sqhGIHH/K7q3MqvF82JA+aCpCMtCBZv49admCyFbzIJO979l5rdlb8m76D4m3pGMfu7W
         LnD43oPYqSjftu2ykBlxzgaZCv4x7iikFByTJOSMgn5eihBc9ejRThfCAelzQmO+5yTa
         OcRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ZUxeHj7Z;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id z71si1098600ilf.5.2020.07.21.18.37.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jul 2020 18:37:33 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 06M1b7A8023563
	for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 10:37:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 06M1b7A8023563
X-Nifty-SrcIP: [209.85.222.48]
Received: by mail-ua1-f48.google.com with SMTP id o25so128094uar.1
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 18:37:07 -0700 (PDT)
X-Received: by 2002:ab0:48:: with SMTP id 66mr23303088uai.40.1595381826755;
 Tue, 21 Jul 2020 18:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200721173125.1273884-1-maskray@google.com> <CAK7LNARjOjr2wSD_iM6yNSZpSGEWrkZZuWKCgCqOrYcA29+LBA@mail.gmail.com>
 <20200722001424.qor3up6357jjsbia@google.com>
In-Reply-To: <20200722001424.qor3up6357jjsbia@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 22 Jul 2020 10:36:30 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQtqdTi49cYL0zVWdqPV2QEsgN+2AACALumanu9L=OuGg@mail.gmail.com>
Message-ID: <CAK7LNAQtqdTi49cYL0zVWdqPV2QEsgN+2AACALumanu9L=OuGg@mail.gmail.com>
Subject: Re: [PATCH v3] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross compilation
To: Fangrui Song <maskray@google.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Jian Cai <jiancai@google.com>, Bill Wendling <morbo@google.com>,
        Manoj Gupta <manojgupta@google.com>, stable <stable@vger.kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ZUxeHj7Z;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Jul 22, 2020 at 9:14 AM Fangrui Song <maskray@google.com> wrote:
>
> On 2020-07-22, Masahiro Yamada wrote:
> >On Wed, Jul 22, 2020 at 2:31 AM 'Fangrui Song' via Clang Built Linux
> ><clang-built-linux@googlegroups.com> wrote:
> >>
> >> When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
> >> $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
> >> GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
> >> /usr/bin/ and Clang as of 11 will search for both
> >> $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
> >>
> >> GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
> >> $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
> >> $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
> >>
> >> To better model how GCC's -B/--prefix takes in effect in practice, newer
> >> Clang (since
> >> https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90)
> >> only searches for $(prefix)$needle. Currently it will find /usr/bin/as
> >> instead of /usr/bin/aarch64-linux-gnu-as.
> >>
> >> Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
> >> (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
> >> appropriate cross compiling GNU as (when -no-integrated-as is in
> >> effect).
> >>
> >> Cc: stable@vger.kernel.org
> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> >> Signed-off-by: Fangrui Song <maskray@google.com>
> >> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> >> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> >> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >> Link: https://github.com/ClangBuiltLinux/linux/issues/1099
> >> ---
> >> Changes in v2:
> >> * Updated description to add tags and the llvm-project commit link.
> >> * Fixed a typo.
> >>
> >> Changes in v3:
> >> * Add Cc: stable@vger.kernel.org
> >> ---
> >>  Makefile | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/Makefile b/Makefile
> >> index 0b5f8538bde5..3ac83e375b61 100644
> >> --- a/Makefile
> >> +++ b/Makefile
> >> @@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
> >>  ifneq ($(CROSS_COMPILE),)
> >>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> >>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> >> -CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)
> >> +CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
> >
> >
> >
> >CROSS_COMPILE may contain the directory path
> >to the cross toolchains.
> >
> >
> >For example, I use aarch64-linux-gnu-*
> >installed in
> >/home/masahiro/tools/aarch64-linaro-7.5/bin
> >
> >
> >
> >Basically, there are two ways to use it.
> >
> >[1]
> >PATH=$PATH:/home/masahiro/tools/aarch64-linaro-7.5/bin
> >CROSS_COMPILE=aarch64-linux-gnu-
> >
> >
> >[2]
> >Without setting PATH,
> >CROSS_COMPILE=~/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-
> >
> >
> >
> >I usually do [2] (and so does intel's 0day bot).
> >
> >
> >
> >This patch works for the use-case [1]
> >but if I do [2], --prefix is set to a strange path:
> >
> >--prefix=/home/masahiro/tools/aarch64-linaro-7.5/bin//home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-
>
> Thanks. I did not know the use-case [2].
> This explains why there is a `$(notdir ...)` in
> `CLANG_FLAGS     += --target=$(notdir $(CROSS_COMPILE:%-=%))`
>
>
> >
> >
> >Interestingly, the build is still successful.
> >Presumably Clang searches for more paths
> >when $(prefix)$needle is not found ?
>
> The priority order is:
>
> -B(--prefix), COMPILER_PATH, detected gcc-cross paths
>
> (In GCC, -B paths get prepended to the COMPILER_PATH list. Clang<=11 incorrectly
> adds -B to the COMPILER_PATH list. I have fixed it for 12.0.0)
>
> If -B fails, the detected gcc-cross paths may still be able to find
> /usr/bin/aarch64-linux-gnu-
>
> For example, on my machine (a variant of Debian testing), Clang finds
> $(realpath
> /usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/bin/as),
> which is /usr/bin/aarch64-linux-gnu-as
>
> >
> >I applied your patch and added -v option
> >to see which assembler was internally invoked:
> >
> > "/home/masahiro/tools/aarch64-linaro-7.5/lib/gcc/aarch64-linux-gnu/7.5.0/../../../../aarch64-linux-gnu/bin/as"
> >-EL -I ./arch/arm64/include -I ./arch/arm64/include/generated -I
> >./include -I ./arch/arm64/include/uapi -I
> >./arch/arm64/include/generated/uapi -I ./include/uapi -I
> >./include/generated/uapi -o kernel/smp.o /tmp/smp-2ec2c7.s
> >
> >
> >Ok, it looks like Clang found an alternative path
> >to the correct 'as'.
> >
> >
> >
> >
> >But, to keep the original behavior for both [1] and [2],
> >how about this?
> >
> >CLANG_FLAGS += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> >
> >
> >
> >Then, I can get this:
> >
> > "/home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-as"
> >-EL -I ./arch/arm64/include -I ./arch/arm64/include/generated -I
> >./include -I ./arch/arm64/include/uapi -I
> >./arch/arm64/include/generated/uapi -I ./include/uapi -I
> >./include/generated/uapi -o kernel/smp.o /tmp/smp-16d76f.s
>
> This looks good.
>
> Agreed that `--prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))` should work for both [1] and [2].
>
> Shall I send a v4? Or you are kind enough that you'll just add your Signed-off-by: tag
> and fix that for me? :)
>

I fixed it up and applied to linux-kbuild/fixes.
Thanks.




While I am here, could you teach me a bit more?


The top Makefile sets the following option as well:

CLANG_GCC_TC    := --gcc-toolchain=$(GCC_TOOLCHAIN)



I checked the manual:
https://clang.llvm.org/docs/ClangCommandLineReference.html


  -B<dir>, --prefix <arg>, --prefix=<arg>
  Add <dir> to search path for binaries and object files used implicitly

  --gcc-toolchain=<arg>, -gcc-toolchain <arg>
  Use the gcc toolchain at the given directory




It is not clear to me
how they work differently when
clang searches for toolchains.




If I delete --gcc-toolchain from the top Makefile,
clang fails to link standalone programs
because it wrongly invokes /usr/bin/ld
instead of aarch64-linux-gnu-ld.


Does Clang search for gnu assembler
based on --prefix option?

And, searches for a linker
based on --gcc-toolchain ?



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQtqdTi49cYL0zVWdqPV2QEsgN%2B2AACALumanu9L%3DOuGg%40mail.gmail.com.
