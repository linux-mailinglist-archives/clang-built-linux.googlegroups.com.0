Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB25P4KJQMGQEZQ6RHTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E00151F373
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 May 2022 06:26:21 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id d127-20020a633685000000b003ab20e589a8sf6758760pga.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 21:26:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652070380; cv=pass;
        d=google.com; s=arc-20160816;
        b=oRI254Yj+7Bv9f9u9nybU4+MLsplH97b+FZt3V6OYPHLfNxX5ewHUKr37y1P8X8byb
         vbPqCXpuS73HnZYu2eUB1R6PMl6NjpWV6CaTTn/yNkuhyFt8U3CzAqCaA6oMt+iwAojW
         VzThWNb+RYJNq6hAsuEtxQXNJSNATqWW6FeKnKYc4vUJ4gSNm73/cBHPH91PojdrFQnB
         uF5wHgqS1lIKVPwtPSKZyeuJwugiJNUB43sZw7nE7n7JBKYyLp9ZnLiBeJm1sPLe9+nU
         XeXPdiVNA+vX7mZf+0hyq++VPFzO+HKLBDZcrqcsMsgn/lG0jonkxD6PnP8cD+btquP0
         40Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=ZQhhZ5lonfNvwVd8D/mPfqskA8hOZtnGkQVM7jfsMmQ=;
        b=04CBVq77Bl1LYllKP97c1F/dPY5g3gj4G+vvODThGKcMBhF2621CuHYIBn2k794yDx
         MaFNP9Bd5axpW/vH22+s/ftVL9MM/h+rvZgAmcoV8TYFVtEkSKsXSMgWwCUT94hffV4f
         EMx9lcnogxJhXo5Va+u4EZHUoC5usZPHVcRqoIgynZNpkDfn5e6yZwhUj7C2HgTpGrUS
         7LjZI/AeDqnfLdTwTYl60/GVNJhc9IeKwCzSG5BF4n8Dv5uZsdIH7ft2kQRFD0HaDguK
         F893Wjf8AuQHGz1i0vH0NUhqHXCriwHTTYbY+FZ9bTCczrmx3eOhgCADS/hjXOBOmkS8
         lonA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ik9NLTAT;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZQhhZ5lonfNvwVd8D/mPfqskA8hOZtnGkQVM7jfsMmQ=;
        b=ZTBamxb5Hw+aFXrqOj7ks6lavHlDqyjG1q6FadFHPL5tIp72zkdRgVWv/rFrXscyMP
         jb9JKI7RaTXxRSdexwSjUZIK2MycQoeqtZIroVcELO+81PbkdfEogUYvyOq+hDgyPuhT
         9tvPOXd5oYhK0hTGMtc2uRs5hPCcDmhcT2lH8kVpGVJotcR/JNtHHUupfuhR0w8iQEr+
         VsNJKJaWB/LnfS5gbdWg14RTyyQTqx8bOkTHQs0m4oRJZYUdhhk9udWJ6L5JHR/nX3aE
         RHGgGqTpGL5zYXRlI+afUfkHshI7lB076w/+ZjkRz88f6EiFFu2Fe2Xa8dQ/Khqljetu
         bVLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZQhhZ5lonfNvwVd8D/mPfqskA8hOZtnGkQVM7jfsMmQ=;
        b=cW2VFoPBW7srHBqUGI+ddZaCydldjYPqv61oqGg/Vzgzz2FWhxNUrKl1fyi7DczEWD
         AgnN2jMT74ZFT9A7UX2XUpcNKvAzcH8Rj4Z0Dwome3cSZdQ2bh4pYvbfE7LFC4Z01Cyw
         iRzT/LqeE5To2OMHUDfMw85gzsnteU/tffcD8YVBO3NXoSor2jMhQZGauvDcmvy23Dnn
         Z3XLH8Z1Nbu6KddeM/GxEBUf8qZNQp/oOE3jZksp8kTexkuA8XMEqlbnADsYtK4nIu9h
         NKmXpvrmitCVE0HJ7h4xnJH0MQI+znUH3d5gnjPUtLaWKbkE6q4STteyAEltiGi6jOYH
         ykBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ugk6m+I6ee91SouAXYQXlDlDU/cmnvMkcbMaqnouWd3prSWfr
	hNhAp9PtYCv94thJM79P5dc=
X-Google-Smtp-Source: ABdhPJzZOD3KDU8estNLSBYQVIbeE0vRHt7puKWxM8A13GxM4UAzBMSvwLNT/7lncL2tvBacqhqeRg==
X-Received: by 2002:a17:902:9a49:b0:15d:1da8:81fa with SMTP id x9-20020a1709029a4900b0015d1da881famr14342295plv.114.1652070379914;
        Sun, 08 May 2022 21:26:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:185:0:b0:3c6:ab6b:a05d with SMTP id 127-20020a630185000000b003c6ab6ba05dls919518pgb.8.gmail;
 Sun, 08 May 2022 21:26:19 -0700 (PDT)
X-Received: by 2002:a05:6a00:1501:b0:510:7ab8:71c8 with SMTP id q1-20020a056a00150100b005107ab871c8mr14457318pfu.63.1652070379252;
        Sun, 08 May 2022 21:26:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652070379; cv=none;
        d=google.com; s=arc-20160816;
        b=LH6OR+SQhZ4L3Bs4GXVBzbzO4TBThF+SAUkKORp/2Aqv7ecdwrCSAHub9gKcR6bqwz
         ru/kPy351DJOFygnNfrrZzPf2pp0L8zUjJ1bpz+lvzNBfYRcNqLULvDgC47q88hWcTPG
         YR8viUM8HLTnmNpQPom/e7YzhC5Tq07nBt8hX82RbcbnxAkBiu8uzDWKaNxuHz4DNx51
         bi+wv8sBLzOwV8j7eEz1bljJXVRL/JF7Xs8vJyKhJ528j1uX0GgKM/YA9wQpPWqhDHMC
         sxUfAIPbICo0zC6p0E5oXz46spobsAZvapFtJsYQZi/UT95yQWt/e5CjApj0W6B05OoL
         cNfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=DM2Qvk/KSJwggZQc+f9r/EEPApKQ0miaQHjxBSW8IV8=;
        b=eTN/v1iQc5YkysBn7OzN8Rz+FLRHliEvp5m4RQRbdM7lTCY6HQCOkkW3Uk7OAcF43V
         gjdq8uLhj5LqKTbflL6lYc7l4Wjn00iOt4MKIRBE3otLC2x/zbl9tJ9XK8kb2lofBFgB
         xjfaSs2yB+pVOT729RUMfjnhhqRusKtFe0RGqbLrTZmzQDh3rHevef/BkGjOsQ3loFM1
         GeMlJ6G52Ns1p5L5yt+9QbhhQ2lR1fTpAWLUGqrd2jCAOK4Pu/iuf6pkr+iYMXZgbY8a
         0rjNOXkhnDM8bWl9QMAZZftS95Zm3RZbNpgdSRBBVjjClYJaLBD9ZVxaiqNR2tnZKVTT
         ThXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ik9NLTAT;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id f9-20020a17090ace0900b001dc5c02d737si806365pju.2.2022.05.08.21.26.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 21:26:19 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 2494PhJJ014644
	for <clang-built-linux@googlegroups.com>; Mon, 9 May 2022 13:25:43 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 2494PhJJ014644
X-Nifty-SrcIP: [209.85.214.180]
Received: by mail-pl1-f180.google.com with SMTP id i1so12730180plg.7
        for <clang-built-linux@googlegroups.com>; Sun, 08 May 2022 21:25:43 -0700 (PDT)
X-Received: by 2002:a17:902:7891:b0:15e:cae9:7620 with SMTP id
 q17-20020a170902789100b0015ecae97620mr14626650pll.136.1652070342778; Sun, 08
 May 2022 21:25:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220508190631.2386038-1-masahiroy@kernel.org>
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 9 May 2022 13:24:33 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQtedww_RiemfTV7Ls=M01iKJhY14G3TiuAg=C3bvJjww@mail.gmail.com>
Message-ID: <CAK7LNAQtedww_RiemfTV7Ls=M01iKJhY14G3TiuAg=C3bvJjww@mail.gmail.com>
Subject: Re: [PATCH v4 00/14] kbuild: yet another series of cleanups (modpost,
 LTO, MODULE_REL_CRCS, export.h)
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>,
        linux-modules <linux-modules@vger.kernel.org>,
        linux-s390 <linux-s390@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ik9NLTAT;       spf=softfail
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

On Mon, May 9, 2022 at 4:09 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> This is the third batch of cleanups in this development cycle.
>
> Major changes in v4:
>  - Move static EXPORT_SYMBOL check to a script
>  - Some refactoring
>
> Major changes in v3:
>
>  - Generate symbol CRCs as C code, and remove CONFIG_MODULE_REL_CRCS.
>
> Major changes in v2:
>
>  - V1 did not work with CONFIG_MODULE_REL_CRCS.
>    I fixed this for v2.
>
>  - Reflect some review comments in v1
>
>  - Refactor the code more
>
>  - Avoid too long argument error

This series is available at
git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
lto-cleanup-v4




>
>
> Masahiro Yamada (14):
>   modpost: remove left-over cross_compile declaration
>   modpost: change the license of EXPORT_SYMBOL to bool type
>   modpost: split the section mismatch checks into section-check.c
>   modpost: add sym_find_with_module() helper
>   modpost: extract symbol versions from *.cmd files
>   kbuild: link symbol CRCs at final link, removing
>     CONFIG_MODULE_REL_CRCS
>   kbuild: stop merging *.symversions
>   genksyms: adjust the output format to modpost
>   kbuild: do not create *.prelink.o for Clang LTO or IBT
>   kbuild: check static EXPORT_SYMBOL* by script instead of modpost
>   kbuild: make built-in.a rule robust against too long argument error
>   kbuild: make *.mod rule robust against too long argument error
>   kbuild: add cmd_and_savecmd macro
>   kbuild: rebuild multi-object modules when objtool is updated
>
>  arch/powerpc/Kconfig            |    1 -
>  arch/s390/Kconfig               |    1 -
>  arch/um/Kconfig                 |    1 -
>  include/asm-generic/export.h    |   22 +-
>  include/linux/export-internal.h |   16 +
>  include/linux/export.h          |   30 +-
>  init/Kconfig                    |    4 -
>  kernel/module.c                 |   10 +-
>  scripts/Kbuild.include          |   10 +-
>  scripts/Makefile.build          |  134 +--
>  scripts/Makefile.lib            |    7 -
>  scripts/Makefile.modfinal       |    5 +-
>  scripts/Makefile.modpost        |    9 +-
>  scripts/check-local-export      |   48 +
>  scripts/genksyms/genksyms.c     |   18 +-
>  scripts/link-vmlinux.sh         |   33 +-
>  scripts/mod/Makefile            |    2 +-
>  scripts/mod/modpost.c           | 1499 ++++---------------------------
>  scripts/mod/modpost.h           |   35 +-
>  scripts/mod/section-check.c     | 1222 +++++++++++++++++++++++++
>  20 files changed, 1551 insertions(+), 1556 deletions(-)
>  create mode 100644 include/linux/export-internal.h
>  create mode 100755 scripts/check-local-export
>  create mode 100644 scripts/mod/section-check.c
>
> --
> 2.32.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-1-masahiroy%40kernel.org.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQtedww_RiemfTV7Ls%3DM01iKJhY14G3TiuAg%3DC3bvJjww%40mail.gmail.com.
