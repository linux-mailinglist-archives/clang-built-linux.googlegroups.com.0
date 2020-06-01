Return-Path: <clang-built-linux+bncBCHPNUVGUAIRB54T2L3AKGQEWAEYJPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id F31EA1E9CCE
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Jun 2020 06:54:15 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id i20sf1774361lfo.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 21:54:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590987255; cv=pass;
        d=google.com; s=arc-20160816;
        b=jzNUVNMKOmBwboJC2llyG0YT4kiRrXKhSnnXeFZtYP5/PTxaMXzgG6uHBJFxiPnrla
         0iRcmgtFjY6Oe19H3dt/s30fkOES16t4+/JEz5v3EehHdk8W0/m5XbDPBhHIpKpNNroc
         1yKJOtDN5LVElxyntZc+al4gdtfdXHmqU3UkHgg0jaWUt3O5iQTFYCtsWgpatwX38Ekl
         QhAM+RYG9LJm7XB8PyId5SipJ/vUBgIAR+6apqj8ZjzZkrUFtXJH+OKTJaOsyZ1Mcj61
         Gyau4lbibai8ySwnBRSLaIKNNSRxWY3vMmMwtDtdE1ls7zfCegracioXxSY0Bpze5YZM
         bMng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=HdhHOpa0Illx6BFlidMFQbVyF+rIwLRFFyNr0aLm3CA=;
        b=LJ5ZbHlqb9oPqO9gU9PDMR31CdXXbzXf2iAptQIF12EGr1ITwdCBH1JUnngnK551eG
         fWtoZAYd+2wbSn9qVgQF2Q8DgyGeJPtrvRFqDUHpLfLgrefd9tg+6+ZTUvBKcsxmf8pP
         7H72iCLRQ7ko4EvU20LLpMij11vyi0Bi8KvVI6H8S1/YSp3Fu7lukgWaecX10RVb/zqR
         wIt2+H6pndx2c5iO8oBgCYlsZ6VjWhEk+B+Uqt8JWL/uFwP0HMQU5XvoNfr2QruztIiY
         JAdXYnLt6gIVr3r2ea1ivsakPiMFbw6YCdsnYs9tuWQXeVoMWZkoxhB5MmIjtvSLSscb
         Dgng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OChVtVFM;
       spf=pass (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HdhHOpa0Illx6BFlidMFQbVyF+rIwLRFFyNr0aLm3CA=;
        b=Z3hfBZrIiRpqOCNk9hcv5pyw+BRqkMG0yFpB0RLlpz8nwpWth1FZCvRtthljcgAXl6
         hNv0dysl9Ce5wO/oL6sxAtOFzNCks00lCqlPO/+D/chwCIXGXH3wcjJ30/VkG3sQs8eI
         1sM6G+De5kH9yOJxMoHBIhLPUAHFv1/VqGS9FRqMh4CZKhlQW2ns3oovYLMBEJhn9gu1
         duEDajWnr6F9aLOUsvxkdOboMV+8vAVIZkj8hdj7BKeaV4q9qPC7BWzpHTsHLimTte5n
         N4sc1YI69RlkmhPhwFCtFb5BAOzlXfGBaNU3vEeK8hYPYeMp7ZvI/2ozkkQS7obvgKBY
         WM4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HdhHOpa0Illx6BFlidMFQbVyF+rIwLRFFyNr0aLm3CA=;
        b=XPIosisqHcIKeJlcDg99Ulz1QF08bzfjNAJBymwjSI7+kutIfAm1FBun/CeAMQYEJD
         hAr6HQ8X6NsvD6sL5KLOCg7OF+rl3QiIEBrhS2x09vIrhut2bUeHiGMxfQCb5HQffIcC
         7ZHxkiPZW440ouecf7wemuIJcdRoNucJc3At+cjVVoHHSqzWl0yTtpGVw4hNS6otg1kl
         c3l0Ti3YtboAOdAfHCBeVdSWzsfK456iIPINzoJVcrnjbBS7sGreZIgx8pFzwMpHP/Ro
         ubsuuxo1PlBYzYCh0CKrFTKXQt9h2th/ndd8pE78J98RL89j/ReaeJyxwqcZAWo3QiBP
         0ZtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/dhIprnnH6ydmh6nJBiRVPahm8y4PbUnAXKTJ7Crxw0WlrXwZ
	JIBAm/Bi7JsUtCPYVSaF74k=
X-Google-Smtp-Source: ABdhPJzIWjCRYQYPgd5smYz2mFGqCbfxu+X8QX4hg/U3IzaoswS+Wa0xMuqiC/KNuQ0Nyj7TjJx9+w==
X-Received: by 2002:a05:6512:20d:: with SMTP id a13mr10370475lfo.36.1590987255488;
        Sun, 31 May 2020 21:54:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:43bb:: with SMTP id t27ls2177513lfl.3.gmail; Sun, 31 May
 2020 21:54:14 -0700 (PDT)
X-Received: by 2002:a19:fc0e:: with SMTP id a14mr5349364lfi.143.1590987254910;
        Sun, 31 May 2020 21:54:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590987254; cv=none;
        d=google.com; s=arc-20160816;
        b=ibtJBmYfzvR2Aobnl1o27nl8iduV+lUeUSHGx5MOa6zmigTSw1xcc4XEKnPfzUd7lP
         UrkimdpGRiuGPoVBDl004s6W+eeL6fmB7U9oBMXYipsxNLpEe/7psScSy+MZIL0MvfcA
         SeDtJdnZuoFE/NiK+wtPMUZteb3hwf69VpGRupmxyuVVuIq7iAJFwT2fJq9igy9HqG77
         24Na8/YWzNj401DNJn8kbS5ZcOcQbSI6YsEeA4jKIhi1vzdwlYfWceP7mRUSZfChJfyw
         I+abSlQIc5Pku7JrHXhNvtFLjtPuOWWcWWB5xfz2DTdqj3b3BpnOILgVaVRbL0n6NSmo
         Lmyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PFSYaUeH6bbEPrcWmIISYpjM8SJ6UtUjsuzuTLo613A=;
        b=goUzn87Leo79sum6TvJ3oisMPSA/yRJiEycI8pGJcs2LERmfYItaBo5sxi4HPeQvQR
         c/mG/bB88iyFvS9cItSj/gmhLNphCYmtibN4VEBqonkKSjaeKPmUWW9PZCucYlGmuJg4
         KDNIjdJ+C94ilZqRr4C9XFcoo7HuZ1/M9Cr1hshSWVUciV2MBAWsihSy80Pnqm6bhSUk
         xPeaP3pen3VpH6KWYWrB54wN7XxQ579II/8oE5UuFoT72rNH0QEy0qhme4/8AD/1Fi5/
         YX5vX68Rh6L/2lCItfIjVYW6Bdo2TGAaEgOd8RWyPr66R6Sf3CdoocOt3nyUHn0Lt2lU
         Lk6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OChVtVFM;
       spf=pass (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id f16si1105237lfm.0.2020.05.31.21.54.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 May 2020 21:54:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id z18so6433908lji.12
        for <clang-built-linux@googlegroups.com>; Sun, 31 May 2020 21:54:14 -0700 (PDT)
X-Received: by 2002:a05:651c:1103:: with SMTP id d3mr24209ljo.110.1590987254498;
 Sun, 31 May 2020 21:54:14 -0700 (PDT)
MIME-Version: 1.0
References: <1590751607-29676-5-git-send-email-sumit.garg@linaro.org> <202005311324.We2amqkp%lkp@intel.com>
In-Reply-To: <202005311324.We2amqkp%lkp@intel.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Mon, 1 Jun 2020 10:24:01 +0530
Message-ID: <CAFA6WYOLApZTXkE0KyN80Fr=9cnBHqzbA9suQvzG4D8ZzOnBeA@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] kdb: Switch to use safer dbg_io_ops over console APIs
To: kbuild test robot <lkp@intel.com>
Cc: Daniel Thompson <daniel.thompson@linaro.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, kgdb-bugreport@lists.sourceforge.net, 
	Jason Wessel <jason.wessel@windriver.com>, Douglas Anderson <dianders@chromium.org>, 
	Petr Mladek <pmladek@suse.com>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, jslaby@suse.com, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sumit.garg@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=OChVtVFM;       spf=pass
 (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::241
 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Sun, 31 May 2020 at 10:58, kbuild test robot <lkp@intel.com> wrote:
>
> Hi Sumit,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on tty/tty-testing]
> [also build test ERROR on usb/usb-testing v5.7-rc7 next-20200529]
> [cannot apply to kgdb/kgdb-next]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Sumit-Garg/kdb-Improve-console-handling/20200531-075431
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git tty-testing
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>, old ones prefixed by <<):
>
> >> drivers/usb/early/ehci-dbgp.c:1062:24: error: assigning to 'struct console *' from incompatible type 'struct console'; take the address with &
> kgdbdbgp_io_ops.cons = early_dbgp_console;
> ^ ~~~~~~~~~~~~~~~~~~
> &
> 1 error generated.
>

Ah, my bad. Will fix it up in the next version.

-Sumit

> vim +1062 drivers/usb/early/ehci-dbgp.c
>
>   1046
>   1047  static int __init kgdbdbgp_parse_config(char *str)
>   1048  {
>   1049          char *ptr;
>   1050
>   1051          if (!ehci_debug) {
>   1052                  if (early_dbgp_init(str))
>   1053                          return -1;
>   1054          }
>   1055          ptr = strchr(str, ',');
>   1056          if (ptr) {
>   1057                  ptr++;
>   1058                  kgdbdbgp_wait_time = simple_strtoul(ptr, &ptr, 10);
>   1059          }
>   1060          kgdb_register_io_module(&kgdbdbgp_io_ops);
>   1061          if (early_dbgp_console.index != -1)
> > 1062                  kgdbdbgp_io_ops.cons = early_dbgp_console;
>   1063
>   1064          return 0;
>   1065  }
>   1066  early_param("kgdbdbgp", kgdbdbgp_parse_config);
>   1067
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFA6WYOLApZTXkE0KyN80Fr%3D9cnBHqzbA9suQvzG4D8ZzOnBeA%40mail.gmail.com.
