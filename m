Return-Path: <clang-built-linux+bncBCIO53XE7YHBBE5FSX3AKGQEUKL5RKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3902A1DB8B9
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 17:53:57 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id b5sf1640523otf.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 08:53:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589990036; cv=pass;
        d=google.com; s=arc-20160816;
        b=IdzyfymyChIzqV3Bj0fvC2UuwM2IRdfd66SODzmOesumpQQL681hKMejAVRp+jIG2p
         jPKtW5UaqwKI87kgQPXQ44LOuMVm6TrMOi0vPD6/IOz1Kf3/kdeNPfZURcYkxKwR8iyA
         9X6giieXdpnlEI5RgtRaQU8ZfUncj409WTXCBaBWVl/JUWhxrlM0rMX8R4qIvtjrtBH3
         ppeTFxt1EMBleqMl52CyXFFKZvdvNccBw265Lvoqim+qaLO6moLzMemY/vCj8vn11sOh
         FLAAZadvRXZVeS8Z1DK0mep1jKCEVON5cwHEj/JuwHvB9d0kVm132ijTwcA6id/TSrW5
         YPJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=cagjLE1WpdRPZjoUs9wwbpKnGhy00kM2meU3aKWFRiM=;
        b=swMj8r3+XN4M6iBBaaxfg2+gFdnrEaAA0bxXR9Uf91NRmtOJ98dGTXhxabdU6S3DKx
         CC1GSr1/yYPqKqXjPQ5+b/okAIpBbz9j9zq4SL7Cg7TpTNcf7owxI4iqv6bK9cwsNh5H
         ek993eabBiUSbt7aNqi4A/fy9CpxPHdP0NxgAsleFzggvnrZn8Gpshgw0MV7ig6F9gbJ
         FNcWm70NivL5BpmHRm0D+JYlsMVXTBuSpEzVxA7A2nmxPKWCeM7NiDjpALVJnVMNAyRM
         QS5qfpcGDTKe02dunZdHT/+EAP6jwL7mS4H6x5ZLYPxjVQ/agt/LYgLKzYFt7fuY0wga
         yu+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QrZgLoHd;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cagjLE1WpdRPZjoUs9wwbpKnGhy00kM2meU3aKWFRiM=;
        b=N06HZZALIlH6KnADdDz8eKPc0ttTGFJJgd+L/YkzDchrierBvkBDM5mtvKZkfmX5vw
         52vwDUEYuX9Ojcn27PQjZpEphtNGX6tfqt7Jxj28Lk7MvtEB5LOdzJKIx/q82e0zSAeH
         l+prDaJuVTHwUE4sd1DmexcUMcWceR4ctyVMspoOkDmync5renZ/SDJJyA0XX6zt+m4N
         fQ92uE7X9Qu9zG1noSBfYUMHyRchnqzkwp9KvfIkrLdnJQwWu360sLE3L/gDi+HamG7w
         qQcHZqN1gE0Hg2FK5dF1+ssYwLuNWMjWrjn90wKr38lGv1Ndd5/8R6vXi12ZdAK/e2iq
         n7mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cagjLE1WpdRPZjoUs9wwbpKnGhy00kM2meU3aKWFRiM=;
        b=DOhQ9glV9Kovn3P/3aJgA/0kVu9CUykONGWFf3+/Fu0DvLpGRPoO3F1/2iMESv3s0E
         cif0fFpCooFnag30Uw3Ev3wfqM/luk3q0el254a/46dCjM8v2gl+BEhQ00WyPoDsDRM8
         oW8bcd2sPvyyE2dvuwsLZWwx1NuxSqmiBpPMbm/6fxt25YMQBV2NrhmuhGqrstltQZO4
         N/sW76QhWROhUvtMePmV56htBI4ZUxYC42HhTZGKTamzH/b4Dp20Ibqe05rqGzZ93FiG
         /7UWiCGhRtI1prKgfQXp3MWc263UX33ijwNlXDi6U4R0mAJ4GcA68OXgDctVXbD//o38
         nTgw==
X-Gm-Message-State: AOAM533v/L898dlcqZxmBcU755cSH4G2/Hb2wKLjw/cIzqVluJ78ps0o
	cYD7+2ZhZEBQ3SRtRcO1uLM=
X-Google-Smtp-Source: ABdhPJxNUtZMCXlcVbLXHrXzJ7hhduPSRrqWS43MithdfZ/nlX/lkfLYZY8hvDkoT6/07lcX49spWQ==
X-Received: by 2002:a9d:6442:: with SMTP id m2mr3523373otl.213.1589990035837;
        Wed, 20 May 2020 08:53:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:170a:: with SMTP id j10ls601583oii.8.gmail; Wed, 20 May
 2020 08:53:55 -0700 (PDT)
X-Received: by 2002:aca:b6c2:: with SMTP id g185mr3727969oif.166.1589990035447;
        Wed, 20 May 2020 08:53:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589990035; cv=none;
        d=google.com; s=arc-20160816;
        b=Kfmf/JaBdkRfCl+DRD/+FhSSJq++i+ESojkUsLD7uDB4tdbb4W6DN+tOecA5sh7mSa
         oesE9uO3AjrjsKNXqyKK4/Ca4jPWaHH5zHAIw723NhvOmLXdNQo9G56lvLKebVqiQJEU
         sma7FhHtwG6BfpxgbWYA1BjOFeVboJ4FHo7VUfgRoE47upzEK8V/MUXVhZWckwAcaRx+
         5Lc2ko8VIhzFLuhIKwGwjexQTJJR+dGPOlC1FF5ODqzIFHKH0yNhAs5VO/eIJ6PnByxZ
         0tjfrwyTkIxwA8OL3a+Bn7MVvOdNMCTwUEisTdg+DnQGcAeK5KNb8XPYKl9oCNtdtGEa
         6CGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=UJld030alOVh64kzKTSwXpgdo9+76xbjSjpepXvKCx8=;
        b=lroGFDsLn+W3y5Qezd/3PpIaCjFksfCNNrrq66XEr0i9KvpUBTHxbqwSF7bLTwZFl+
         EabKXlgSEXgIhtiXKz/UXaqZuKpeWJ+K+oQibQi2CfG+Qb7JqFHEIBUwOo1sTZrKA8vH
         mBQUWOfYjnaA+YGOph03GpgKK2DCfCjsiFa8ghBqsflHmSc2ahPvfk+dwB9ZTQ8g0qe0
         4/7M+B/y4GmFYtQCHiWSZ5L6oBJ6gerMrqcYAhMSPmnACO6jo+wJ9WLVxH2IJj1aaTxF
         Fi04UJtBk4cmSaXuT8MphS5dEHISSK2Sows+eVmYfPjVE6NC1hy3+/5k4wQn/vyiQYaI
         hMVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QrZgLoHd;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id p28si359326ota.3.2020.05.20.08.53.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 08:53:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id i14so3988951qka.10
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 08:53:55 -0700 (PDT)
X-Received: by 2002:a37:a2ca:: with SMTP id l193mr4960197qke.23.1589990034968;
        Wed, 20 May 2020 08:53:54 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t130sm2550073qka.14.2020.05.20.08.53.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 08:53:53 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 20 May 2020 11:53:52 -0400
To: kbuild test robot <lkp@intel.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-efi@vger.kernel.org,
	Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [efi:next 22/40] ld.lld: warning:
 vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32
 against symbol ''
Message-ID: <20200520155352.GB3184088@rani.riverdale.lan>
References: <202005201012.pqmB8hA5%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202005201012.pqmB8hA5%lkp@intel.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QrZgLoHd;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Wed, May 20, 2020 at 10:28:13AM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git next
> head:   e5fbadd1179cdadeaa44d71a9ec068c5bc100524
> commit: ce5e3f909fc0ed67e58367b9c56a54c20a51080b [22/40] efi/printf: Add 64-bit and 8-bit integer support
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout ce5e3f909fc0ed67e58367b9c56a54c20a51080b
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32 against symbol ''
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Clang folk, is anything actually wrong here? This seems to result from
use of unreachable() annotation, which generates these
.discard.unreachable sections apparently to help objtool.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200520155352.GB3184088%40rani.riverdale.lan.
