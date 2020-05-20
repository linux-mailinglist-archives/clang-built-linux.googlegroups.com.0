Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCNVSX3AKGQE7NTBMUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B451DB948
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 18:27:55 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id 203sf1719871oie.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 09:27:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589992074; cv=pass;
        d=google.com; s=arc-20160816;
        b=Go4jL0YO/PDkop033WBFdw7bD+ZQ48VCKBdfh5ztQTPcAStgCpCHGCX+XW7DiWUfgA
         N16jTgt6jHtcGWrhnyEbk46ql5rv0oi1+tvXwo2FVIKlqVSXmJpZIc9cT6nzvlS+JIjC
         wiavcpeUOhuR1D8VzjIxezazo6Bxuf0214+537uA5KmJPWJAGopM7sOwiJk3cqKNtDHG
         KWfjPHlrtnc1/mPPX5HFRDpeFLFKf47YwnbJ8wqq0WyTIOQj7eHBPxa18jPnprFrVa2d
         ycs9smSApLDbRAfzGFQMgUD/ixgb4GyWNK0PKJttp+ClQCOTIMJ8RqdyK8aBoOs4Gvkb
         SnIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=m1U29gLQOv1EH/Wv1i9zPWNK0q0OyG1YQlPY7Rfhh6w=;
        b=tQdOx1hXJ7/Km4RtqkQ8pUyLhSzVlJSUHDjuYm1zTinV374TgBJbMuZgyrYbKQEDV5
         uGWmRg6tPZ1lGrBAMU6cWjK1sWLdYNtOc3MTJbuCgyB4eOrN/uVrr4Lkft3FjaoZGlA2
         PaclcZn1exwN+ymHgn9qTwCDhHVq+JTSMlI5bhKKHvflg6ZTLK1bdCnbNLBgZuaAWqtH
         OKmGZZ2tzivZgct2bY/Uov9x+MkGNNPDGDAsZFJr893FwPEiQluqYmJGKBLnkU9a3Koc
         TqSke1scA6O8x4dHuxsHsEDqQ6VrkZKHm8ZF2n5m/fGzaco19FhYMDwLGC0/WzWFCSFe
         UuSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mHBQOmpj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m1U29gLQOv1EH/Wv1i9zPWNK0q0OyG1YQlPY7Rfhh6w=;
        b=K0E0yWNKVyqfN2O4XdZY8rVPRO5nAMLXC0pXKVIuCtugk9C1+TAXkJBaksaUIHbUCO
         YqgO7IYLFktPabJQmlC9iXgC3f0WD8CqbkUPirQDWIHZnDJMk4RfsKl1qXGqrZa21Qwx
         cwFevwfTGOPy/LylAHc+6omBkXTKn3jZYAutYyGVGKuGelMjleB4lx6n/gbgAPljo8ve
         yOGsC+LWKoCwVm31Thc8SFE9sNSztgjpYSOQCShc8i5I/ixANx/nke14NNG8TzmKaWFw
         46QXJj+psvFQlQp1sx1mp6Clvg+2Xj6gFRhQqZE2TLqbrsowzlTWtCX2h/3o2A/TA4FR
         4mnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m1U29gLQOv1EH/Wv1i9zPWNK0q0OyG1YQlPY7Rfhh6w=;
        b=d6dXeVfxzw0u/8MwDK6UyiI+vqkoAS6zIaEXv4GUfpdoaHEcY/Yp0bfoXPdUstOYgp
         e7OibBDJBbOjpnMh+7DtnYMNMZu7hTsWs46jLiQilZ/phT/RQNkyl6YrEPDyUfF54zXv
         rctN3esPM+wzCrNm54MX0R6fzfsVSKg1YIVnWEmrnlVHS41Qq7ze8wFzicu29or68UL5
         qFsw71TPDHztVum96kRzu0MTLlL99PIMhpGNOXgzpihfqfhMCXDzdRy8XTNWUYfsB1Im
         2fs7dk5o8aocYDQthyHApc6UW2duOKN9GjdmyfMvS18VgO7/k71D6QAlzi/qPAlANuR+
         szww==
X-Gm-Message-State: AOAM530K3yDOlpdKumMdcSsbO3Ghtnjd8cYxNKcTL4Izx7yTySViZLtR
	sA1BTYKSJbn/IWU8IKM1m0Y=
X-Google-Smtp-Source: ABdhPJzZH/5NxiiSREzn6RwGe5SBdnjFSxVUg25UQmj6Ab+oGHOB3AhPxLIkfa+OZJW26VKBytsIWg==
X-Received: by 2002:a05:6830:d3:: with SMTP id x19mr3878537oto.158.1589992073926;
        Wed, 20 May 2020 09:27:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3415:: with SMTP id b21ls193902ooa.5.gmail; Wed, 20 May
 2020 09:27:53 -0700 (PDT)
X-Received: by 2002:a4a:d043:: with SMTP id x3mr3636787oor.17.1589992073513;
        Wed, 20 May 2020 09:27:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589992073; cv=none;
        d=google.com; s=arc-20160816;
        b=Xn1imV7x9Df3dUdnV64xxEKT8ZPKpDX0EF8S9eK+I50g8pxtRN1JSGH/M/gmD6Yodx
         7MQ0KV3ILz3kCDweR2m7q2iXSovXLNhMwBdydBpRwSWaHZRTYU3Ah2uDPecv06yo1oYx
         xi7Va7PWNOGaex6MML6HX+UR88SG9Efcvs0XXq+fQLZcbnx7UhNYPWRMaFW3gpWcqett
         xw04l29mZexEemz7EY7ewTNuyr/bSBbUX9ST53HkhVoAMH5s1LQ1AY+QnRd+NJpUR5wx
         GJyTkBkKg2QTbTPm2H1O0TCskO7fTzJ394NiZCOl6joxRymkCzxX6iKRjnh24rM0z8Jv
         uMVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K0VcpJOjQv6yq9mEgwQZ5DY3ZYHIX5DeJ3gXdWvSVM0=;
        b=ZIHkWuYLf/6WVsGGEOlFMYOBt+H5heRjK7cwSu9sUTQdUOOMtVWGih4ot/4UPPng6r
         tjTz9Tbs39QHtT9vn8n8VzxEKyyASEe537ru1AOnwEYdKB9Br9aDzyzz6h0foh/5FUpu
         iDJDgE9e56JU1tysZ4N2dpdBQXLB9PzKSslMsy978pf2SZp8r6xsodn1G2/sxZ7Ye2LY
         BavHP9Jxo9iDUmk6+CE2pIyH5Rt4o6psEFLQHXSDNeY3dJ/M+fJHzluuTYlMo+6BKc/O
         SRCQi/HsZVSCNtEE76s+mqL4ZcuvoaN2GH1HA7Thc7xdhmCwY6/V+DOk63sIINEPGoyF
         wV9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mHBQOmpj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id e20si236827oie.4.2020.05.20.09.27.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 09:27:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id k7so1531404pjs.5
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 09:27:53 -0700 (PDT)
X-Received: by 2002:a17:90b:4c47:: with SMTP id np7mr6491462pjb.101.1589992072533;
 Wed, 20 May 2020 09:27:52 -0700 (PDT)
MIME-Version: 1.0
References: <202005200317.WyMjX6mI%lkp@intel.com>
In-Reply-To: <202005200317.WyMjX6mI%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 May 2020 09:27:41 -0700
Message-ID: <CAKwvOd=XenURx-2ze3A47aCEjtvR10M_9BX=80-g9jdErEWfbw@mail.gmail.com>
Subject: Re: [linux-next:master 1487/10701] drivers/firmware/arm_scmi/smc.c:109:2:
 error: write to reserved register 'R7'
To: kbuild test robot <lkp@intel.com>
Cc: Peng Fan <peng.fan@nxp.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mHBQOmpj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Tue, May 19, 2020 at 12:00 PM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   fb57b1fabcb28f358901b2df90abd2b48abc1ca8
> commit: 1dc6558062dadfabd2fb3bd885fa6e92ec7196f2 [1487/10701] firmware: arm_scmi: Add smc/hvc transport
> config: arm-randconfig-r005-20200519 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         git checkout 1dc6558062dadfabd2fb3bd885fa6e92ec7196f2
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>, old ones prefixed by <<):
>
> >> drivers/firmware/arm_scmi/smc.c:109:2: error: write to reserved register 'R7'
> arm_smccc_1_1_invoke(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0, &res);
> ^

Nevermind this warning. I'm actually on a call right now with ARM
discussing this.  Issue is specific to thumb.

> include/linux/arm-smccc.h:357:4: note: expanded from macro 'arm_smccc_1_1_invoke'
> arm_smccc_1_1_smc(__VA_ARGS__);                                            ^
> include/linux/arm-smccc.h:299:48: note: expanded from macro 'arm_smccc_1_1_smc'
> #define arm_smccc_1_1_smc(...)  __arm_smccc_1_1(SMCCC_SMC_INST, __VA_ARGS__)
> ^
> include/linux/arm-smccc.h:176:24: note: expanded from macro 'SMCCC_SMC_INST'
> #define SMCCC_SMC_INST  __SMC(0)
> ^
> note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> arch/arm/include/asm/opcodes.h:210:2: note: expanded from macro '__inst_arm_thumb32'
> __inst_thumb32(thumb_opcode)
> ^
> arch/arm/include/asm/opcodes.h:200:27: note: expanded from macro '__inst_thumb32'
> #define __inst_thumb32(x) ___inst_thumb32(                                                           ^
> arch/arm/include/asm/opcodes.h:225:2: note: expanded from macro '___inst_thumb32'
> ".short " __stringify(first) ", " __stringify(second) "nt"
> ^
> >> drivers/firmware/arm_scmi/smc.c:109:2: error: write to reserved register 'R7'
> include/linux/arm-smccc.h:354:4: note: expanded from macro 'arm_smccc_1_1_invoke'
> arm_smccc_1_1_hvc(__VA_ARGS__);                                            ^
> include/linux/arm-smccc.h:315:48: note: expanded from macro 'arm_smccc_1_1_hvc'
> #define arm_smccc_1_1_hvc(...)  __arm_smccc_1_1(SMCCC_HVC_INST, __VA_ARGS__)
> ^
> include/linux/arm-smccc.h:177:24: note: expanded from macro 'SMCCC_HVC_INST'
> #define SMCCC_HVC_INST  __HVC(0)
> ^
> note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> arch/arm/include/asm/opcodes.h:210:2: note: expanded from macro '__inst_arm_thumb32'
> __inst_thumb32(thumb_opcode)
> ^
> arch/arm/include/asm/opcodes.h:200:27: note: expanded from macro '__inst_thumb32'
> #define __inst_thumb32(x) ___inst_thumb32(                                                           ^
> arch/arm/include/asm/opcodes.h:225:2: note: expanded from macro '___inst_thumb32'
> ".short " __stringify(first) ", " __stringify(second) "nt"
> ^
> >> drivers/firmware/arm_scmi/smc.c:109:2: error: write to reserved register 'R7'
> include/linux/arm-smccc.h:360:4: note: expanded from macro 'arm_smccc_1_1_invoke'
> __fail_smccc_1_1(__VA_ARGS__);                                             ^
> include/linux/arm-smccc.h:330:8: note: expanded from macro '__fail_smccc_1_1'
> asm ("" __constraints(__count_args(__VA_ARGS__)));                              ^
> 3 errors generated.
>
> vim +/R7 +109 drivers/firmware/arm_scmi/smc.c
>
>     98
>     99  static int smc_send_message(struct scmi_chan_info *cinfo,
>    100                              struct scmi_xfer *xfer)
>    101  {
>    102          struct scmi_smc *scmi_info = cinfo->transport_info;
>    103          struct arm_smccc_res res;
>    104
>    105          mutex_lock(&smc_mutex);
>    106
>    107          shmem_tx_prepare(scmi_info->shmem, xfer);
>    108
>  > 109          arm_smccc_1_1_invoke(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0, &res);
>    110          scmi_rx_callback(scmi_info->cinfo, shmem_read_header(scmi_info->shmem));
>    111
>    112          mutex_unlock(&smc_mutex);
>    113
>    114          return res.a0;
>    115  }
>    116
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005200317.WyMjX6mI%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DXenURx-2ze3A47aCEjtvR10M_9BX%3D80-g9jdErEWfbw%40mail.gmail.com.
