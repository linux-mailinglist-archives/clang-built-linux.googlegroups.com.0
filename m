Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBGPVVSCAMGQE4ATZ22I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3401336F2C7
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 01:00:42 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id c76-20020ae9ed4f0000b02902e4caf24229sf271475qkg.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 16:00:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619737241; cv=pass;
        d=google.com; s=arc-20160816;
        b=jn6vxU/ubQJoZiciYt39QStEOBs5v3/ffRRg7iN7QDlMqsqScoa/nwsqYWwU5J8S2U
         PwhOKMnpqFZjBk8IEOeTyRm0zD/Nqoud9jgj+BLZDVOFRmSflEzvtXKXeb3eCnCkYE1N
         3uxO50Pkq+6oDleDRV7J5V9bvyjtAJqr9XWij+NA6/eJcJb1w+rsBrRJKMxvlLdr3PRQ
         FfcypXWcgxc4OC7YC3oqd6+JCpMDE3wRdN4syN1PsvDHia/uleJGIVgmMZxu02WlxznT
         7odz0+R8AeuZ/95+6ar8o3A+4OGXTX1cDKmncqtLRO1q93qXrTncYktpSmg68gC0lyR5
         qgTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VSWSSeYi8xf32u0n+rYipH08qWAMiNCARR1mKuwa478=;
        b=gWvcO1LP4MyfvMxmiT/1mF08+DxZfM2c9mUVs9MUY4AJiElBXsTHcbGqOBGWPBqiJy
         PD1j4t6AeostKTEn8WorDT4k7MS61G9Xe/Zluq8Lr1JJRKhvOkfUgPH9okPTTZMnFRWd
         ZYbIHa/cFRecKyeK6KAp7uMUBmK5wEFrHJZTlbaJVd7U8pnmOclsLA7L9/CcL3bW8fT/
         It1kf5Fj/BrMd6Rtb2dGwqNl8GObk0jetexN5ApnMXHF5pzRg/gVSkZ4xeq/FxVgooRv
         s4lONktJvYH+HySMRECQNxbpq7C1Oq2/XKcGqTma/0Q3Gd3wpHij6qyPKrzNz2Qh+WgV
         +D/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nf2A9X+u;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VSWSSeYi8xf32u0n+rYipH08qWAMiNCARR1mKuwa478=;
        b=GHmK2yqDtxxbSY5ZWAhs5WuEQbG+9tRzBsiOempZXaxHvWMd4xgO8yk4hTDyUxux27
         K/GXXpJamaS65J6EgO1MafHkAGOkV2qodfCGPTkXHfaS0C6+094Y3LxYX50cUdSey5dz
         pS2kGitRQA8QWqDMi24sRga0/TH/8LQ3Uz0W1OsozHZ2sjgjOkAv9GPLIPsGuoFq60g0
         4iKYgCDKjk2EwaKrmvLrFCjP7fkKo9nmrUUHleW1QTolPa3z9/ljF4MbTMlmp8/rocT/
         PhFZTclJ7WVnsa2zGmnQ7zPBTRdO5BZ3Z+xqEW8yYcSEEEOXQ61TKipR3rdyWGB7sxzY
         /kzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VSWSSeYi8xf32u0n+rYipH08qWAMiNCARR1mKuwa478=;
        b=qTDsGe+uM8L7dsEooH/DpzO+xf5sBoCOzm8EWILcVHduT4DZMfSXShZjfqx4TQTDUD
         dp5uaGVHFSUB2wyups3xcrLE1uB2Gi9P0j97cvfE46HuuGtJLGTQ9xh6C+PbVuVRX43s
         8qQonxJDF5ZAWWK/j82252cic9B8OyJsOb7OmBrW+tnczdIGrgUM1FEISQIsKXNxvmpx
         RMhQZLgkQ19kCI8AAvYT65aAGt6Hmj45MQup8RluPX2WUtjkL7Svvi/CWHIRiV4z+l+R
         GGX1vJEhFbmcQjsE/17vOrGkfDpVrGQFvOLRwCR8piY3hENA798t9qtA3VEmKTp/LdGb
         vkPg==
X-Gm-Message-State: AOAM530zW2NV8dxEMBZ8QLLeTTFkDSKOhP0ZiIoucFG1I4cIjrU/9iZw
	/7NVGxcJkpecHEA/mfj6qp4=
X-Google-Smtp-Source: ABdhPJznwgiCFt3ov5kg3okFVgo0gYtZTf7sqOnFIIeIHZA2x0tnlAxcbFoL7b5XlF5qgLIu8VPuTw==
X-Received: by 2002:a37:7d83:: with SMTP id y125mr2252028qkc.263.1619737241323;
        Thu, 29 Apr 2021 16:00:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b990:: with SMTP id v16ls1364964qvf.4.gmail; Thu, 29 Apr
 2021 16:00:40 -0700 (PDT)
X-Received: by 2002:a0c:bd2b:: with SMTP id m43mr2332724qvg.52.1619737240922;
        Thu, 29 Apr 2021 16:00:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619737240; cv=none;
        d=google.com; s=arc-20160816;
        b=qvLm3Gw8AC7zRosvMquv2/UTIL7JePBBYMpJbzp/Z0GqsyX/7vYXlex94igAP2KQ+B
         TA9gUkUdyeWPNI150CnJe7Sy07+gONqwDlcPImdyuHxf7esGQlg0NMK7CqB/nmFosxUP
         djEPZSIc5pO0bvxZ7xKKq+gOQyhE8SXOwWDfp6STGW2ECIt7jmNafgPE+Gs5QH/N+KVy
         ZlrerSRlhH2bdO2NqLVdtYbABz9jR7i5dGzRsLXYqEqLcqm8/V0rXkf73cRA+S2SiKtR
         MaoMbKxBnUEa8YDw7MYv48h9fI3IDAbOMbo5GeS54qZrwBvvn+m3PXU2fCIapUnJqgy/
         PlsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GY8+NFNznc0uHAnSET8Mqpt9HOn2PDRsyzqQPuaEzLU=;
        b=CSGUaMBe1a3rD94OB0Ad3pZ1fPf6X8UPtNq2UKAlfc5kze9wDxFGYM3egYJ8mlKS1m
         ylwdXDiBaMcGiWxPiGcsLg3toWQR2iAbpMbGciUbBfXBz78+DTdB3c8ilfJ4eI9BOTUQ
         6qPF6sADsn7QNAkLw3Z4ReVJq9ifBTjWlAkdME2vBEsIynBEqa8ppA6kWMCpR3PqtecB
         pnfAZaDolhDevNgqi1F9ZLABF0KYRryclIu0Z7QoKHv6wYVY5elhDqrkGh1qenN9nPfq
         boECI6CIcKFupazFvTfHqBz+27pOq/On2ntDK2eEP1/DbVndZDqhpVJtexF8+EO9qCYv
         RxSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nf2A9X+u;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id c72si414674qkg.6.2021.04.29.16.00.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 16:00:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id z1so80634250ybf.6
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 16:00:40 -0700 (PDT)
X-Received: by 2002:a25:d8cc:: with SMTP id p195mr2640360ybg.170.1619737240311;
 Thu, 29 Apr 2021 16:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210429150940.3256656-1-arnd@kernel.org> <202104300518.EF8t97XP-lkp@intel.com>
In-Reply-To: <202104300518.EF8t97XP-lkp@intel.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Apr 2021 16:00:29 -0700
Message-ID: <CA+SOCLJX+KYQZTbY-22Enp5+TdNvHB7kr+LiW-KmGirfgu=0sQ@mail.gmail.com>
Subject: Re: [PATCH] smp: fix smp_call_function_single_async prototype
To: kernel test robot <lkp@intel.com>
Cc: Arnd Bergmann <arnd@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	Jens Axboe <axboe@kernel.dk>, Guenter Roeck <linux@roeck-us.net>, 
	Peter Zijlstra <peterz@infradead.org>, "Huang, Ying" <ying.huang@intel.com>, 
	Borislav Petkov <bp@suse.de>, Eric Dumazet <eric.dumazet@gmail.com>, Juergen Gross <jgross@suse.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Nf2A9X+u;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b35
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

Thanks for the patch! Some of the stable kernels also have this
warning, but they don't seem to have the dependencies (4.14, 4,19,
5.4). Do we plan to fix those branches as well?


On Thu, Apr 29, 2021 at 2:46 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Arnd,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on next-20210429]
> [cannot apply to linux/master soc/for-next linus/master v5.12 v5.12-rc8 v5.12-rc7 v5.12]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Arnd-Bergmann/smp-fix-smp_call_function_single_async-prototype/20210429-231235
> base:    9e5cff2a1315fec1da1f497714395670366506b6
> config: arm64-randconfig-r022-20210429 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9131a078901b00e68248a27a4f8c4b11bb1db1ae)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/be40015a8e0990182fa440f75adecf40cf5d0062
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Arnd-Bergmann/smp-fix-smp_call_function_single_async-prototype/20210429-231235
>         git checkout be40015a8e0990182fa440f75adecf40cf5d0062
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=arm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> kernel/smp.c:407:19: warning: passing 8-byte aligned argument to 32-byte aligned parameter 1 of '__csd_lock_wait' may result in an unaligned pointer access [-Walign-mismatch]
>                    __csd_lock_wait(csd);
>                                    ^
>    kernel/smp.c:515:19: warning: passing 8-byte aligned argument to 32-byte aligned parameter 1 of 'csd_lock_record' may result in an unaligned pointer access [-Walign-mismatch]
>                    csd_lock_record(csd);
>                                    ^
>    kernel/smp.c:516:14: warning: passing 8-byte aligned argument to 32-byte aligned parameter 1 of 'csd_unlock' may result in an unaligned pointer access [-Walign-mismatch]
>                    csd_unlock(csd);
>                               ^
>    kernel/smp.c:525:14: warning: passing 8-byte aligned argument to 32-byte aligned parameter 1 of 'csd_unlock' may result in an unaligned pointer access [-Walign-mismatch]
>                    csd_unlock(csd);
>                               ^
>    kernel/smp.c:684:6: warning: no previous prototype for function 'flush_smp_call_function_from_idle' [-Wmissing-prototypes]
>    void flush_smp_call_function_from_idle(void)
>         ^
>    kernel/smp.c:684:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void flush_smp_call_function_from_idle(void)
>    ^
>    static
>    5 warnings generated.
>
>
> vim +/__csd_lock_wait +407 kernel/smp.c
>
> 35feb60474bf4f Paul E. McKenney 2020-06-30  403
> be40015a8e0990 Arnd Bergmann    2021-04-29  404  static __always_inline void csd_lock_wait(struct __call_single_data *csd)
> 8d0968cc6b8ffd Juergen Gross    2021-03-01  405  {
> 8d0968cc6b8ffd Juergen Gross    2021-03-01  406         if (static_branch_unlikely(&csdlock_debug_enabled)) {
> 8d0968cc6b8ffd Juergen Gross    2021-03-01 @407                 __csd_lock_wait(csd);
> 8d0968cc6b8ffd Juergen Gross    2021-03-01  408                 return;
> 8d0968cc6b8ffd Juergen Gross    2021-03-01  409         }
> 8d0968cc6b8ffd Juergen Gross    2021-03-01  410
> 8d0968cc6b8ffd Juergen Gross    2021-03-01  411         smp_cond_load_acquire(&csd->node.u_flags, !(VAL & CSD_FLAG_LOCK));
> 8d0968cc6b8ffd Juergen Gross    2021-03-01  412  }
> a5aabace5fb8ab Juergen Gross    2021-03-01  413
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJX%2BKYQZTbY-22Enp5%2BTdNvHB7kr%2BLiW-KmGirfgu%3D0sQ%40mail.gmail.com.
