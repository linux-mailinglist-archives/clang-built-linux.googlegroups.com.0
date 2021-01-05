Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHEA2P7QKGQE4M5OUXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6162EB38A
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 20:38:06 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id h75sf781399ybg.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 11:38:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609875485; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ybhci09evaytaLitMqqvKObKyndfj28Ln0XckPFu12Q35menB39vhNlrhlXWG6cLJX
         ssSjyzY5qT/LSmMCL2cTgzzALM3hhFF53LgMFVcwAU8j8ksp+xHWnIUxuyJlWDfg3C3T
         4oiUz3qareCt1ZnXxQCQjSHjnUO2wnAF/Xwp/qNu74iqs+iZ2vcXMOuiOtB+8OnDPAIM
         lNnVv12CwL//eVEmF6JAB3PNjqADudbTX5+CkJCzWW++1v4Gy8t0Qnda0d16FTl7ZgaT
         URCNolva8nPX1OOJl62Ly9IZq8DmzsAOI/Cu5V24gvCryJMM3GsVVTgDFIkgSmGXnRBn
         QAvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TKnMPiTK9+Wgm2Pf3OI00qscnXmSz1VSCj3+vNgDs+c=;
        b=fezSZL1Go7IwQnD9lc8HUExYGsVz7fC1Ix7iVLvTIMhAFrXNrODbBvaw5n+Cqozf6D
         /4SjlqK618nPtftczzDK351VUs+LFrzhK8pcEq3WXvB47S4HqOZrU0Gnqz+9F0+gNPMs
         QHrZu3ta+cBMspMHYrVWzv/LZke/gfgKcHvkbfUR0POnkhI1H/QVqixYImVbZ8FFlSEQ
         gNZ3rCm30gd5TEtKD59Fv7exekFZfJAuQ7ucse+LvP2jb0whKl2qeowLZv+koEXyerBS
         7eMjxQ2u+m4wd/0A0xQYGpkNCH+wzymiMpCxoCZY84xVprY2ZMq77a6xw2+yEo9QYF38
         CXLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=efGnQJXL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TKnMPiTK9+Wgm2Pf3OI00qscnXmSz1VSCj3+vNgDs+c=;
        b=rRM+JuYeJYLg4sbK283sHiLUEVpXDapd4dtVwcBeIqQVN2yZqiuqblW8KjbbE+cr/b
         YPbDik3fh895cX/l5H2ubUu2EktfqC/g/4URxvZkMbGhN/OXs/QCEx/oXPG+NtJ5Y5sg
         vKRRglSoavKcoVXVKBHclqowEPFFuixbVEKQbblkQGM4EVC8Tp58wG5vR5Tt1/atYy0U
         Hq9aXwcnlL5N01yeqXJzN1Tmjelst8eQOFlQp+YJtKmWpJLG2nysJ4sWIPOFrdaAxgkC
         wdRvBrWneVMXyqI5jYHBrSzV268p8jhzNvSXbxSWPOCJip7BtG6bfl2D24/2sNmSL8nL
         nOkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TKnMPiTK9+Wgm2Pf3OI00qscnXmSz1VSCj3+vNgDs+c=;
        b=dOA7t6NySLOzzX/nIc08lWw7x+N+YDX20sdVVHV5RaAehyi9C2l+cZMvHB9NB56x7J
         QoiPzYDqmAv3ivXfZ5nCRMZzFnXwamQQ7i423aW9yoUG92xJb0AsEYLgt2uX0v6JgFjw
         8c+4XGhMybFiD4lvZckPdZcDmq8RAM1VLgoRntEGt+JmyiRQrZ3YRd5BMXYRaGzW69Df
         Rrrmp1/5ooh8MbXUMa5Ohyjg249ejWGJAdCxaOZnJRdEm/coZv6gZuZJKbExY7Bzy1F7
         AruTHlbLNnATAsYosmDAPeeqMQf0WAUuoDuzFdxilouZ1kONF0vX7QMtOWNsw9lrAUBG
         bTEQ==
X-Gm-Message-State: AOAM531NWtEqo1dZBQlMNhBgGhkD+ERMzm/o1sD3jjss0bZUEsJu8Qzn
	Z7d8doA2hEn3lqqjzg75ueo=
X-Google-Smtp-Source: ABdhPJyfp8ri8jihSaLvsYFJp9xC1e2bxOG/D+i+I5R6mmPD47YpdFgdU6v5viD439ZlceksjnntEg==
X-Received: by 2002:a25:5b82:: with SMTP id p124mr1556464ybb.117.1609875484791;
        Tue, 05 Jan 2021 11:38:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:6af:: with SMTP id j15ls403483ybt.3.gmail; Tue, 05
 Jan 2021 11:38:04 -0800 (PST)
X-Received: by 2002:a25:2407:: with SMTP id k7mr1587132ybk.82.1609875484349;
        Tue, 05 Jan 2021 11:38:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609875484; cv=none;
        d=google.com; s=arc-20160816;
        b=KLtoMGc14FNHXgyYBAsXiyHykHbTcbyYOzRFl5qzWq9h2GKBXoWQGmFbimBguz+PWn
         Z+AikXEVRxBAyFWTl/yVQl50hDL/Q4N9GUcnBImWaMusq3CSacg4eto+/KiDuDgrnFMw
         qZv+LMQnaL7CeG18g5Ra1co9h2qVKd2E61eAUdsIZJ3ybYZdwwOZDQ1hehJp9hOGjbLx
         Z8e/UlZqw7E1Nnjo/KKV1a24J1LUY7w/nxTisDfzMmX8LM34uG9wKQ9T0h/OOyg9O1H/
         16eljK94F47cVc1KpH0H1zOueRl75SFyJIsiorCoYevtS110onMyd2f6+PxKYilUXINR
         vfog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2oCqu6lZwFBzT2yVHSFErG6jDdrfnhkGaRpmRP+AbnU=;
        b=fqG//QHbgxkRfthj484wAwfiPsAMQ2A75TXlkaagXGDtHveQhnp9vzTCKBgemgbMaM
         m/7zzCW8QQaUpO9Q6rE0YQEzBo2X1Ka4EO0iLKUpZSVy37FK/tiMCtLGjqUN7Bf2Hrsj
         zrd+kfvOR9wuZArOeOaBAP1U3QHGVbUrHBpbtINY93xZ4Nw+VSRYOQYVciyRB45YBELh
         TJC/uW3YOlwK7Mc8uZGBmmZ8g0Amr/W0TWyiC4Tq4gumbOJ68eWKl0TWc56IG3ZyyaYk
         oQmUqwYy1Do3gcPoboOXICXYIRHhfeFxUj/k+eS32LpIKFV07yT/NaNvgRTNugmgZb3I
         CGCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=efGnQJXL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id i70si17723ybg.1.2021.01.05.11.38.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 11:38:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id w1so1500811pjc.0
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 11:38:04 -0800 (PST)
X-Received: by 2002:a17:90a:6ba4:: with SMTP id w33mr785818pjj.32.1609875483392;
 Tue, 05 Jan 2021 11:38:03 -0800 (PST)
MIME-Version: 1.0
References: <202012270950.HNbQuTpw-lkp@intel.com>
In-Reply-To: <202012270950.HNbQuTpw-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 Jan 2021 11:37:55 -0800
Message-ID: <CAKwvOdn978FV_FmikQXjMwKYZi_OUXw_f3t56NnMXHiawXDOzw@mail.gmail.com>
Subject: Re: drivers/i3c/master/mipi-i3c-hci/core.c:780:21: warning: attribute
 declaration must precede definition
To: kernel test robot <lkp@intel.com>
Cc: Nicolas Pitre <npitre@baylibre.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=efGnQJXL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030
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

Fix already applied:
https://lore.kernel.org/lkml/160943653614.132002.12499200411415721355.b4-ty@bootlin.com/

On Sat, Dec 26, 2020 at 5:29 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Nicolas,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   f838f8d2b694cf9d524dc4423e9dd2db13892f3f
> commit: 95393f3e07ab53855b91881692a4a5b52dcdc03c i3c/master/mipi-i3c-hci: quiet maybe-unused variable warning
> date:   10 days ago
> config: arm-randconfig-r011-20201220 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=95393f3e07ab53855b91881692a4a5b52dcdc03c
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 95393f3e07ab53855b91881692a4a5b52dcdc03c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/i3c/master/mipi-i3c-hci/core.c:780:21: warning: attribute declaration must precede definition [-Wignored-attributes]
>    static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
>                        ^
>    include/linux/compiler_attributes.h:267:56: note: expanded from macro '__maybe_unused'
>    #define __maybe_unused                  __attribute__((__unused__))
>                                                           ^
>    include/linux/mod_devicetable.h:262:8: note: previous definition is here
>    struct of_device_id {
>           ^
>    drivers/i3c/master/mipi-i3c-hci/core.c:780:49: warning: unused variable 'i3c_hci_of_match' [-Wunused-const-variable]
>    static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
>                                                    ^
>    2 warnings generated.
>
>
> vim +780 drivers/i3c/master/mipi-i3c-hci/core.c
>
>    779
>  > 780  static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
>    781          { .compatible = "mipi-i3c-hci", },
>    782          {},
>    783  };
>    784  MODULE_DEVICE_TABLE(of, i3c_hci_of_match);
>    785
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012270950.HNbQuTpw-lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn978FV_FmikQXjMwKYZi_OUXw_f3t56NnMXHiawXDOzw%40mail.gmail.com.
