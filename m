Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBIFJ3P5AKGQEYIJEUEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E442607C9
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 02:47:30 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id 184sf6476737pgg.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 17:47:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599526049; cv=pass;
        d=google.com; s=arc-20160816;
        b=YrRcPoUydPh3CwekPdsVQlpZPUO6Z3ldWrTk/W7dw8yNjAKbmCb5F8CuRGbW4kI+QU
         dv3w7YMWkGIckBPANOwCps8pJUtY4b2YBNIgzGlveeESARQvQrWz1rQ9p6q2hXBnKMdK
         eRW+tKg23FA75k+dHaa6nq2I1BfcmuHzIpHv0wTYYA3cplwS+MWeRIyfOo0HRqAVTbWo
         6e2WdLgPqjCKTEHdpqxUIQ6u3mpzamjbwbh7wnJBwZXa3/e2lYKkrFo5C2FDW/Ufag1J
         wo4hICX73jHwexHCT+M1bgoBssk3ehxZBRLCCp79wQTovApV4JaNMIyIVepTRIyjroRs
         eZ5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=++R55uv0BnTvbynKxYZv8YuOl8/cdLHpz4518JBLIyk=;
        b=SyaTyq03Wtu//Umto8eVIPc+zG0VEIqoL3RazltbUvcwgwQtwtYhQSima6s+vfew8L
         RsPI9b/oEqL+Xp4nmntFnouafNRGs3bh9wiRfIDya8gIa6BEU+29jzuaz8Amu9qhf1au
         mRKwtlRlkoZU5/oUVw6zlwV4YkC/sZGWrVglunyYZcuCxRYJkNaCTcgAdRXoQ8jhT6KC
         xPrBM6xGAWnfv59W21R6EY9xMnpjiV7IgUl5LKgyttwRyOw1uI2PfGxMHEMdMtePcpAk
         JBCBlc60Kj+oHSz2BHNtm+8c54jjzFQZNHnISiSw/7NICQMp0uJQahQiu6b9y5baHPWy
         4oew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=AXchgfh1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=++R55uv0BnTvbynKxYZv8YuOl8/cdLHpz4518JBLIyk=;
        b=E4o0MJUwyWL3EzsB731CYHT5uXGiq7glxmleAfs2in83LVonPttx5TlSoKSM2/XmFf
         efjOzzeC5QiWFT/VydAX3uOYrcL0q/pbUa6LfP6bc7LbuWMsEWcgRdKRnZ8bKlMdZDeQ
         tuqIAMvwFJkV4McJn96e7fMkR8A3XYCssY3AaoAcNcR2djrmckgC3iHS1XivTn5GdaOT
         995gg2mKSpfctcIKguzYSWZIGQ3WN1e3bpk0azdkiYiBCPDD1g2JJLVX46bvJ4yQpuAH
         +fcBrxkTKaZIAIrcDJWhuouF1YS+kLa0YGQ/aSRlA6rZXljSZph5LSAHLNCP35ShNat8
         ZW4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=++R55uv0BnTvbynKxYZv8YuOl8/cdLHpz4518JBLIyk=;
        b=F66u7KpTpwono/P8n5kJCMYPz4laZbgCAG38UMRX9TNIxVfJN3tQBYr2657y42BWHh
         0kX8ZuOy8rBIC7xBCQ+4KN7VhRptuFcblfQVAjMbPscgXxmS42P/7gYYWMBVWO7E/8hx
         dsKtPLZlV9yimvo5bUxqaNrBWiwGJ0A4GvOoG/FDmpA1NssJ4QMp9BnIZaGTUV9tbAEW
         m/jjemmKR4f3RwhpnFJwS70Xvf/gJiAW6MBPCOkT6L+YDVSuS/2bZLGmD5565li8nUy1
         acl1dpd36zsV8BCxt+xVPBxNkeW0HZWvnJNDVke8ULwbKAkwflC0z6qsja9CVrMqtsq3
         p68g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530w0yvMpZof2x4eN5jRnSBjGmLLkB0FKUgU/QFV+jNfobG2fP2Q
	mQEVX6AeNPJDOzt8k42EM4I=
X-Google-Smtp-Source: ABdhPJxJ3gfosqtslYRH6ArkIyjnqUemZlAHug4FpcrNbzMBfPb68ttVlh4CIW60yCNbk814Ye+z7A==
X-Received: by 2002:a17:90a:1992:: with SMTP id 18mr1589139pji.143.1599526049009;
        Mon, 07 Sep 2020 17:47:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ee0c:: with SMTP id z12ls8512210plb.6.gmail; Mon, 07
 Sep 2020 17:47:28 -0700 (PDT)
X-Received: by 2002:a17:902:221:: with SMTP id 30mr21496333plc.222.1599526048445;
        Mon, 07 Sep 2020 17:47:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599526048; cv=none;
        d=google.com; s=arc-20160816;
        b=eo6UXxgwtcIrx12J0uhmHzcSG33srhg0MHk+Guq98Z4DsvTGxhwO/5NZwFUZaGKDDK
         McmhAcSH+/SFrl2XYiwHuo4m1Tob0MCYyHQ9EHsgUVT6vHfhJ5CDxp1viLB85ExUdIwQ
         KHm4+eQ4lcsiVX540YNcJsJ0RZfoKzbwBFHgR6HPXiZhwX5SgbPLfBssK+azkHulSGN3
         EIWbGB0GbzA7M4A8Ln23NQfhCyVaHFeJvyQA8BwNr2gGBo3OjGXABNzzul2xL11lJBxA
         8SUdaHVTuIWL9XvjtMOBr8N9R8ye4jhQ+r2TkJDXrvFkkFeFtdV5iQngIauo3Rs9g4j/
         AF8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=KfqYFsb64ZBTORYbeaeCocdqzg5EgJuZJ7rI/5YLFKU=;
        b=GxkHi/td/SgXMtRp38ZmXQ8Xqd15dj1OqXbmmXXzbDHdayYSyXP1E6IDEP9l/y8mo7
         i9KQ0uhG6bBT6satcl6T5BNruh+9tO12ZaX2ANSV6AIWI1x6JFDrDJ5hf+YKcE7TTp5G
         YGJy5XNgej5/24EC7ImXnQvkU6f3YwIrDw/h38s4qCIyRXR5CJnwA4A8JAmS0TtdDEcj
         z/fhzjtE38rROeZA09UchhtyyO6BFiITdZb669RASw6jCIrJzf7Z+THpc+Ln0ClCKd14
         ++AWBEhEzOS1czwDTERuUYzPxSzJY4z1OyQVZ2JRkTK2DYq7Jt34OqXsIZERbrqtXgm6
         pyvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=AXchgfh1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id v17si945880pjy.3.2020.09.07.17.47.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 17:47:28 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 0880kskB011205
	for <clang-built-linux@googlegroups.com>; Tue, 8 Sep 2020 09:46:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 0880kskB011205
X-Nifty-SrcIP: [209.85.215.172]
Received: by mail-pg1-f172.google.com with SMTP id v15so8837746pgh.6
        for <clang-built-linux@googlegroups.com>; Mon, 07 Sep 2020 17:46:55 -0700 (PDT)
X-Received: by 2002:a62:7a53:: with SMTP id v80mr8350398pfc.129.1599526014320;
 Mon, 07 Sep 2020 17:46:54 -0700 (PDT)
MIME-Version: 1.0
References: <202009080532.aH8qq297%lkp@intel.com>
In-Reply-To: <202009080532.aH8qq297%lkp@intel.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 8 Sep 2020 09:46:17 +0900
X-Gmail-Original-Message-ID: <CAK7LNARKSEv+G4yy2k2u33kgLb316GYObCe8zKwwWdOyW7FHpQ@mail.gmail.com>
Message-ID: <CAK7LNARKSEv+G4yy2k2u33kgLb316GYObCe8zKwwWdOyW7FHpQ@mail.gmail.com>
Subject: Re: [kbuild:kbuild 14/14] scripts/module.lds.S:29:10: fatal error:
 'asm/module.lds.h' file not found
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=AXchgfh1;       spf=softfail
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

Hi, 0day bot.

Now I realized my commit is not working reliably
for parallel builds.

I will consider what to do.

Thanks for the report.


On Tue, Sep 8, 2020 at 6:36 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git kbuild
> head:   8d77c9acc14a49e4175d7e0d3ce1e256cd31c5a5
> commit: 8d77c9acc14a49e4175d7e0d3ce1e256cd31c5a5 [14/14] kbuild: preprocess module linker script
> config: s390-randconfig-r015-20200907 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ab68517e6b7e51b84c4b0e813a30258ec1ce5da5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         git checkout 8d77c9acc14a49e4175d7e0d3ce1e256cd31c5a5
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> scripts/module.lds.S:29:10: fatal error: 'asm/module.lds.h' file not found
>    #include <asm/module.lds.h>
>             ^~~~~~~~~~~~~~~~~~
>    1 error generated.
>    make[2]: *** [scripts/Makefile.build:377: scripts/module.lds] Error 1
>    make[2]: Target '__build' not remade because of errors.
>    make[1]: *** [Makefile:1192: scripts] Error 2
>    make[1]: Target 'prepare' not remade because of errors.
>    make: *** [Makefile:185: __sub-make] Error 2
>    make: Target 'prepare' not remade because of errors.
>
> # https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?id=8d77c9acc14a49e4175d7e0d3ce1e256cd31c5a5
> git remote add kbuild https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
> git fetch --no-tags kbuild kbuild
> git checkout 8d77c9acc14a49e4175d7e0d3ce1e256cd31c5a5
> vim +29 scripts/module.lds.S
>
>     27
>     28  /* bring in arch-specific sections */
>   > 29  #include <asm/module.lds.h>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARKSEv%2BG4yy2k2u33kgLb316GYObCe8zKwwWdOyW7FHpQ%40mail.gmail.com.
