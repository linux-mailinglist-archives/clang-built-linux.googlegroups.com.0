Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBWU5QSBQMGQELU3E7II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0D934BFC0
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 01:18:51 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id d15sf3370390uap.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Mar 2021 16:18:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616973531; cv=pass;
        d=google.com; s=arc-20160816;
        b=0JhFu8uhkPN838cHIGQ4TWUzb31Squs/Odh00WmfmaXMDuTpcOIe2RRbcfk8a70x40
         LcLcKDHtazPY/F6E5y/i6HSMcLN8k1IdlZSU7V3n+tkz5SErqU+i50coINnX6ja17i4p
         TFWJ6sWCEP2MDCv40tx/m2JQKnr1FY6T7dYqI8+Owpm/UhVtA3AUeZaDFrI2nmXjZq4l
         MoXve6UOXLwZ3cVXDZBDIDhliJiQBksR2qTAoIa+oab7ugpqCV2gPJT2Vi3L6I5H7Y20
         U543Ey/5PWeK23hSWHvcLFrlL738QhIvkj0I9L3pYPdhe1VO5d2w/jrihFMxJC4PWGRP
         RTeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=M4L1fjSplAGDG/tXmEO9g1YhPCSI77f2mbgpJXSxCXo=;
        b=jorB42ceZnADFo/ikG58j1UCW4DdV8li7SLrT2R9cCDOWkOgpodGj92BWjNA0C+r+W
         n+eN7ivB2gfIQ568qjgCiwc/GjnZfI7cuWkSvxlMX6tVXy4B2NFXXqeziEpctAcAlZUW
         B1BtoYa8lXh+OPxAQSGd8NAYR/PMCSHDPoM8sJ6A0cFZKsX77DWQXredVXyk1iK9qmS8
         +O4YWVhJIq6RPj9bY7agHLDJR2VKusVqATmNWfKMH/5mzpFiE/dTsoVK+I49sJyVN1Dk
         Xam8hbr6QJq8y6VHdC+IWkL3fwTGqHQrW8tmwxhfQgkLYQhO5pjP7McCSG77nWjFOqBV
         9hEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="DX+/muN9";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M4L1fjSplAGDG/tXmEO9g1YhPCSI77f2mbgpJXSxCXo=;
        b=hvBYCxXgY69Q9j2mLdHorjber2RTmgqUMcv8pjkk1i6x6JbOGjYUXWFEkWw7en7mY8
         h1X6ECfu8XRkMVE9iygYq+Xg/R6QERgZm3/YxQ12PkCj1JhDpef/XWMTdSjKXEmw0haF
         EvQ+TLopT1A05mmbsgU8B5YoTs3ewwbTFEDTilhnvadEngz6FuUyR9JrP/0KeaQ9VmgO
         1fzf/RxnwtHgXAte/3Re5gYIxueHAzsm4radMZabxjBY99ENfRY5EKDefYdPRsMCc9cB
         +EX0B2IJGazUFlY/K7agZGOnI2YhyhuAv50PNa/CqSZoNajivKVHgxkvliZTJQXuvH+p
         kDcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M4L1fjSplAGDG/tXmEO9g1YhPCSI77f2mbgpJXSxCXo=;
        b=hmaEABFZwCtuoobEON0uO5R/Di/2RW+h/HfL0yd/+/PJe7My6m71KRU0vve6pOMeeG
         lu/6JM+g+qMXc7vHVBLZgBhEJ2NvGiYSfVL8f8EXU6VlAI+/VbF5HVwdIMyhYAI6W8N3
         9dRYV6Fdkmp/t8zt6kDnyJORRKsy6p5KRNRNHCvMvKeAbxcd4ijFuic/8QIU2evaVhNv
         lFYrggvUj85wdecfrlc740/h1kdnM3Z2ed/CM5DNbINBqr0v+6m6YSVxYQSL7TWNY12w
         1vbPlRaP7lLiLR3r26Gv1oEQ5s3PBWygQRXzH5YiNKCJIYG1EtCtjrMoNRjGNArf4u2y
         vhiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531L4wbmgUv2O8qfouykvezBRK/ml+GlezGx2bGiFMjb2KA7trT3
	oXYwKEEkmCahlLdE1butn2E=
X-Google-Smtp-Source: ABdhPJw2k8Nw8HoL1iJGtWKv8705/qA5UVySFuanltoybVa/gVa+vCP905uAsBZJACZ41xF5Oivm8Q==
X-Received: by 2002:a05:6102:22c4:: with SMTP id a4mr3070806vsh.30.1616973531032;
        Sun, 28 Mar 2021 16:18:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2e53:: with SMTP id u80ls190412vsu.2.gmail; Sun, 28 Mar
 2021 16:18:50 -0700 (PDT)
X-Received: by 2002:a67:a41:: with SMTP id 62mr8992646vsk.28.1616973530544;
        Sun, 28 Mar 2021 16:18:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616973530; cv=none;
        d=google.com; s=arc-20160816;
        b=JkVzeV14SDULtFiBt+hF+T1zdoxouzTe7x8CxcvpjTLb9jdR8QmRXFm8drRLz6DibD
         E9kAkwBWVBBlZNiiinAIXexiUhLlBTi9yK6Utket2gQJgh5ThRBTjDanCHF/KtBqTUWw
         ES505K5qjbGrVngh4ZRj3bleswBa/kABRu2y3JRtkJtAiCuIdKm2js/akOYlnUKE8pvA
         uQ9kGKMAPq8OuU3xJFkLrTWiMzKxYbKili9h0KuCYjC6caYt8RHVou8KtCzfbkmSXwjQ
         W+pNykPcvGAT+trCajc1L7HGMNDP5PdHv6OwOV7uH2j6ja2ijDhpIB9AqUJLwPaqZZN/
         ttyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=f9EJkysLwp3pvhhrWTkcaxf0QBTfNStpd5N7vlTG4Rg=;
        b=Y/M3w2C9bmxdAbgzHLARhHOxr92Q6SHa4i9H7tFYRV34zNIGTBawTUemMW1Wk1XS/d
         YNr//t41mbBT5EN9JNtEbV28MG9/ODw/+R0uwu5U/cDjRLDCMDP4WQhbbJP5jFVJ9YF9
         et/SprxIxwt6G9vvFycXZoUvDoGPxlEYQXjXGcwMf1dq0YOJODbt+ael0C7brIfCCMFZ
         BIRQYfzaTJNOMDyXOHQt4R2gOej5/uwNzXqj+SyGftUTRxvALAVHPZnOt1dCaxENujc3
         q8xCaxz4OeIdx+lbQf1qd9gG0HMeFvId39gcv86p9qtorqRAnrivaP31wRET6RjO+FWv
         g1mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="DX+/muN9";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id i18si699982ual.1.2021.03.28.16.18.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Mar 2021 16:18:50 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 12SNIUAF007444
	for <clang-built-linux@googlegroups.com>; Mon, 29 Mar 2021 08:18:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 12SNIUAF007444
X-Nifty-SrcIP: [209.85.216.50]
Received: by mail-pj1-f50.google.com with SMTP id gb6so5153013pjb.0
        for <clang-built-linux@googlegroups.com>; Sun, 28 Mar 2021 16:18:31 -0700 (PDT)
X-Received: by 2002:a17:90a:3b0e:: with SMTP id d14mr24265661pjc.198.1616973510439;
 Sun, 28 Mar 2021 16:18:30 -0700 (PDT)
MIME-Version: 1.0
References: <202103290524.GyaqJAZU-lkp@intel.com>
In-Reply-To: <202103290524.GyaqJAZU-lkp@intel.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 29 Mar 2021 08:17:53 +0900
X-Gmail-Original-Message-ID: <CAK7LNARDFcaN9YWB5a3HTHrPnZfj1OvRftGORY3WV55ABC4K6Q@mail.gmail.com>
Message-ID: <CAK7LNARDFcaN9YWB5a3HTHrPnZfj1OvRftGORY3WV55ABC4K6Q@mail.gmail.com>
Subject: Re: [kbuild:kbuild 14/16] Error: kernelrelease not valid - run 'make
 prepare' to update it
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="DX+/muN9";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Mon, Mar 29, 2021 at 6:47 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git kbuild
> head:   3f482040592dd9aec4578cb49af7664f4a8375d4
> commit: b0600f0d9b549348ec6516be2596eb81cd04c55d [14/16] kbuild: check the minimum assembler version in Kconfig
> config: x86_64-randconfig-a015-20210329 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 821547cabb5819ed42245376a9afcd11cdee5ddd)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?id=b0600f0d9b549348ec6516be2596eb81cd04c55d
>         git remote add kbuild https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
>         git fetch --no-tags kbuild kbuild
>         git checkout b0600f0d9b549348ec6516be2596eb81cd04c55d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> Error: kernelrelease not valid - run 'make prepare' to update it
> --
>    clang -no-integrated-as --prefix=/usr/bin/ -Werror=unknown-warning-option: unknown assembler invoked
>    scripts/Kconfig.include:50: Sorry, this assembler is not supported.
>    make[3]: *** [scripts/kconfig/Makefile:63: syncconfig] Error 1
>    make[2]: *** [Makefile:617: syncconfig] Error 2
>    make[1]: *** [Makefile:726: include/config/auto.conf.cmd] Error 2
>    make[1]: Failed to remake makefile 'include/config/auto.conf.cmd'.
>    make[1]: Failed to remake makefile 'include/config/auto.conf'.
>    make[1]: *** [arch/x86/Makefile:283: checkbin] Error 1
> >> Error: kernelrelease not valid - run 'make prepare' to update it
>    make[1]: Target 'prepare' not remade because of errors.
>    make: *** [Makefile:215: __sub-make] Error 2
>    make: Target 'prepare' not remade because of errors.
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103290524.GyaqJAZU-lkp%40intel.com.

I will fix as follows:

Author: Masahiro Yamada <masahiroy@kernel.org>
Date:   Mon Mar 29 08:17:03 2021 +0900

    fix

    Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

diff --git a/scripts/as-version.sh b/scripts/as-version.sh
index 11f1e7b24bff..8b9410e329df 100755
--- a/scripts/as-version.sh
+++ b/scripts/as-version.sh
@@ -45,7 +45,7 @@ orig_args="$@"
 # Get the first line of the --version output.
 IFS='
 '
-set -- $(LC_ALL=C "$@" -Wa,--version -c -x assembler /dev/null -o
/dev/null 2>&1)
+set -- $(LC_ALL=C "$@" -Wa,--version -c -x assembler /dev/null -o
/dev/null 2>/dev/null)

 # Split the line on spaces.
 IFS=' '


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARDFcaN9YWB5a3HTHrPnZfj1OvRftGORY3WV55ABC4K6Q%40mail.gmail.com.
