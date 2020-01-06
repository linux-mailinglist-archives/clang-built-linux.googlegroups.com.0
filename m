Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFPJZ3YAKGQEBFCF5IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 513CA131B56
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jan 2020 23:28:39 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id bg6sf11592036pjb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 14:28:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578349718; cv=pass;
        d=google.com; s=arc-20160816;
        b=hmQaBdv+MEZoLdLq2UtyoLAVB8M6tycwfbo87NmRPfrxqQ/hqK5dtuXpUI4m2QZJ8Y
         CXyLuCGW7zO4yFki6k6EvF2/w2rjC6l266V6/MK3KmYEJ6sCFypCsEOjIHSgWVF7LxvH
         qvsvJHaYbk5DVgO0RjYtYQObhjhCrFGXNeUbdWmVL7iGVc4xo1yFcOnitxGRzCPcBvdB
         XAYBD221MvH7RTuzMJpXL0yHserWH0D1bF6pDKFi+3EYBIE3d9VXH0ZYGGItLklgAabJ
         fOv0KU28Gk3jkV6N+6cyXbpmDMh9TIiaiQ5ypxunDRTlSP7lWdWtI+TlkQgDE+7wHj5d
         BkUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=P+HLXjsvzcSCnrWU4qYLSnfQVICYiWDFd6J00sm0uHY=;
        b=ExfpvcPI9Nq4ityVwi+hO0dfyligspeP57zo6Gt62rJCrI0uxSpz7AHoN6Yez/gt7I
         0C3npjebLwQbHbQ1QwNFtdtRODbHZg6tKH8nxLPW7xMAiO/S4PC5qv5fSrqUbWwIXb5A
         8icGgeXQ8mHSIH36Cp5KQgbIEboVceel0sEVdW8HrHzLxcyTSdNYA9q5AcoG3RHM/fVe
         aaO+pN5O+hyEqo996o8k5YjkKGPrb3B5/2tPR06fmjKIPP3C+490qTvrmpLxzmhYZ3Qv
         Inhbz0tgYrjMGYeAwXLNv1bYnQJtPwKjnkYdgoaliXhUtFIbBNbfahD4D7808W3Cxu4a
         7Vyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tfg7Z5OL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P+HLXjsvzcSCnrWU4qYLSnfQVICYiWDFd6J00sm0uHY=;
        b=CcKlLH1Nce+ombo7Ax+pST+2zzwnFIHiZQW1qPGTsXjJKtldha5y8ch7gLy60RouF2
         ekCetnKR0eKQGVkcRFTKMZx0BUg5lYvi9Ro+xvhSESd1v7N038BMjmxPi0AzCDCFL/XW
         oK6bGBoTKHpoWoKcARShHM24VKhY6HX0evgGaCNcR5mZj/YWfEV4GeVBMOMd21mz+3mT
         LM4Azo4PUtVuU7fdeHK9hgcO5Fjqaj7gEcKZZJIoHk5jOT8oA/YY6g8sDZW9eNExjzrd
         zJrd7WQMCMInf9Rh3yqWFgqL1s25GOJeWOLtln/3FCL1gH6/5LIEGZiEbSriRMVF52m8
         J3yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P+HLXjsvzcSCnrWU4qYLSnfQVICYiWDFd6J00sm0uHY=;
        b=pkUXSSMv+/t3qHZMbFl50ClSuCiTBNv0OkN6GykOlpVzh/zKqa1QnpbnDeMBvQTBMK
         E36r89DEVbTP/IqMHcVfdtyB7TtkFNcg0xkbGvjbP0Nf3BSLhCfDbi6pso9wE+z8nORY
         +uRWsBoHXL+TAl+MqB+izTqVH1vdcEHqt+BMaQDoW+5eoSgEmb/SzRhKcCBk+3WsC1Lu
         rRQKboceo0Z8Rg6PvqgCVGfxIxdhzQceiaFHFSDLIn4ozq7Q/+52prI/SS+dJX1avYOz
         XoFettE0q60C+OPeIA3uTp6ZOSb213hULfwWdz5kE9JAKdZSEr2R697Y2ubDMX/i6sEl
         3JvQ==
X-Gm-Message-State: APjAAAWRmFGmiasyjfWt9ghgjnstXdoa8kPSF9LwIzhIws6ESbSKEfF9
	7VBsrwGGckjaO22pbwmNwxw=
X-Google-Smtp-Source: APXvYqzsk461WT/DJyOkmELOUqAys5azFOeWuwyRsWvHKYPLVZRfyemGXCOqyZn3a/qH351aQE+mgw==
X-Received: by 2002:a63:d94b:: with SMTP id e11mr113215532pgj.79.1578349717959;
        Mon, 06 Jan 2020 14:28:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:cc:: with SMTP id e12ls15915946pfj.6.gmail; Mon, 06
 Jan 2020 14:28:37 -0800 (PST)
X-Received: by 2002:a63:1c5e:: with SMTP id c30mr115446120pgm.30.1578349717430;
        Mon, 06 Jan 2020 14:28:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578349717; cv=none;
        d=google.com; s=arc-20160816;
        b=PxzvQd2hEer3owbHozkgtTPRebLvixNkfPFZ5JzqrqXjn3yn6YQddy9s4241axN4wA
         NV5PEY7YcH0RjUPQ7I63ZCA3Iifsh1SnXB80t9OuSs5LA0jJInjwvn152gEV6Aa8kEA9
         2hkuoCTUtty6mShtUMyo97O5pQWmLxS+O9bE9LlwaaJBF4Pc5mqqhel+YlkYOG7lE3n+
         Ef6pJgeQYdhRoEpnMvgZU1rv2Gh4hpwSJNblZl5kPNH6yWDebM3z4hVLwgsccnUFk2bT
         sGVtHhn2acsLaIQz0WcaB9sqY5nTfFsy9odZReGrLxrD3Oz7Q5tnyWcenka9bui6na8L
         kj/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Vf9ttPJhDSsiFoZSeNMC+dt5EAn/wJH2YIw7/vURJ1g=;
        b=XWPNFkAyqLVrvFPFIfB+konSWFOjOdIXXD6HqY5Hav4cKSC7HwBWX9sG61aFXYEuTu
         OLVlwESJFIvujJp8xinUZiv2RLmptLvWZe0aJpGK30AjzFokFrlk7V9ZFwYk1TKvX1td
         bEAzUA+1MvmmQdrrLHolgKutjuGjz6v2jGathG8XQtijVr//vvesT5lELphKc7Fidu3O
         hLq24ibpEtIhu7bi6kUymbU5HkYeXNmKJuzRGjLGVDfSJxmfYxwZG1C1K0ffTnYM5x5a
         7uLLPrjCqWmcwox71mY5BNNTmvM573Ehtu0pmCdHZd3rj8CF52ydP5Nt3Z7jL1OI/UaI
         DNhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tfg7Z5OL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id d9si2261412pls.5.2020.01.06.14.28.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2020 14:28:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id k197so27496098pga.10
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jan 2020 14:28:37 -0800 (PST)
X-Received: by 2002:a63:590e:: with SMTP id n14mr111132636pgb.10.1578349716776;
 Mon, 06 Jan 2020 14:28:36 -0800 (PST)
MIME-Version: 1.0
References: <202001041127.OfJhgtyl%lkp@intel.com>
In-Reply-To: <202001041127.OfJhgtyl%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Jan 2020 14:28:24 -0800
Message-ID: <CAKwvOdmnMHwOy3sUmtiKpTTwX6nLRMxPmpqkDAu=L0Azi9_k0A@mail.gmail.com>
Subject: Re: [PATCH 2/7] bitops: more BITS_TO_* macros
To: yury.norov@gmail.com
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tfg7Z5OL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

Yury,
Apologies if it was already reported (working backwards through emails
missed during the holidays), but this warning looks legit. Can you
please take a look?

On Fri, Jan 3, 2020 at 8:20 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20200102043031.30357-3-yury.norov@gmail.com>
> References: <20200102043031.30357-3-yury.norov@gmail.com>
> TO: Yury Norov <yury.norov@gmail.com>
>
> Hi Yury,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on linus/master]
> [also build test WARNING on v5.5-rc4 next-20191220]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Yury-Norov/lib-rework-bitmap_parse/20200104-032153
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 7ca4ad5ba886557b67d42242a80f303c3a99ded1
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 8ca79dac559219358b0c6bb00bded30935c7aa6a)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    In file included from drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:63:
> >> drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h:299:9: warning: 'BITS_TO_BYTES' macro redefined [-Wmacro-redefined]
>    #define BITS_TO_BYTES(x) ((x)/8)
>            ^
>    include/linux/bitops.h:18:9: note: previous definition is here
>    #define BITS_TO_BYTES(nr)       DIV_ROUND_UP(nr, BITS_PER_TYPE(char))
>            ^
>    1 warning generated.
>
> vim +/BITS_TO_BYTES +299 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h
>
> 619c5cb6885b93 drivers/net/bnx2x/bnx2x_init.h                   Vlad Zolotarov 2011-06-14  281
> 619c5cb6885b93 drivers/net/bnx2x/bnx2x_init.h                   Vlad Zolotarov 2011-06-14  282
> dbedd44e982d61 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Joe Perches    2015-03-06  283  /* congestion management port init api description
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  284   * the api works as follows:
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  285   * the driver should pass the cmng_init_input struct, the port_init function
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  286   * will prepare the required internal ram structure which will be passed back
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  287   * to the driver (cmng_init) that will write it into the internal ram.
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  288   *
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  289   * IMPORTANT REMARKS:
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  290   * 1. the cmng_init struct does not represent the contiguous internal ram
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  291   *    structure. the driver should use the XSTORM_CMNG_PERPORT_VARS_OFFSET
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  292   *    offset in order to write the port sub struct and the
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  293   *    PFID_FROM_PORT_AND_VNIC offset for writing the vnic sub struct (in other
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  294   *    words - don't use memcpy!).
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  295   * 2. although the cmng_init struct is filled for the maximal vnic number
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  296   *    possible, the driver should only write the valid vnics into the internal
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  297   *    ram according to the appropriate port mode.
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  298   */
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03 @299  #define BITS_TO_BYTES(x) ((x)/8)
> b475d78f464195 drivers/net/ethernet/broadcom/bnx2x/bnx2x_init.h Yuval Mintz    2012-04-03  300
>
> :::::: The code at line 299 was first introduced by commit
> :::::: b475d78f464195cbdeeda0d80a2ffbd54653a4bd bnx2x: congestion management re-organization
>
> :::::: TO: Yuval Mintz <yuvalmin@broadcom.com>
> :::::: CC: David S. Miller <davem@davemloft.net>
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmnMHwOy3sUmtiKpTTwX6nLRMxPmpqkDAu%3DL0Azi9_k0A%40mail.gmail.com.
