Return-Path: <clang-built-linux+bncBDV2D5O34IDRB2XO6X6QKGQESC6YGRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 973A92C325D
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 22:13:15 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id x131sf79226oif.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 13:13:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606252394; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cqt1iWthKVrFjUvZNPjtu2WMdakg6eFua/di89Ly9b/SwQpOCI2ECMJH91mHxGgdTP
         0sBoP4ipuh7SWDDLZDkDpSJiOtWArehHsizkoNB0c4xiyxFoy7OGIgCWFjfdrJGefxWM
         gkxMSZTYm/c79/vX7S695j1J/+EQEYhZ1gIzhBQtpDvso/LYm992D3JZt96xsaT0j2Z+
         soa6eQnBhtwAMs5taH2u2MQ7cfCWxhoWGhBDhntv+1zPHTAcGJQBAcif5mWFk6bfVs1I
         fozlCgstYluzRuPu5g51D/WJvmNmoAcMzfslMFOs1TSITw59BNAnLUJ1TbjCv2ZrL9Uu
         VgVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=XTMwLInmrN2aTEypKxq49fUxVIJxWLZIy6fgY+Vt6/g=;
        b=z8baFZnMV+e3y+cdlZX4EsBASm3NedLbn5cLUC7RthRz8x29jrkpAGo/p9Bz7NMha5
         VoJQ6SoZqpIm3tu0RvzpJKbXiYlGDT+J68pedaWnTIjQlk1Zr3+w3807f8TBtRuAz/1W
         A77VUUNx+xTj/b9tqonm+ZybNQULJJj3y8jaZNKzd/3td+nI2vHbcTBl4biZNQfzpjry
         Tnf7xpBf1cXuYMwjCFn0kAdIxVidC521okurVvpfyDmLNw393G+2Vn3bQJbvKKyKZ59E
         USyELsEnB4NrUY9z4pZ2aD0jTe6s9uDZqBrOoQOtLaeg9LFikmLGl/dxtCofNzA3S3Jh
         Vcfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ANPhSDmd;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XTMwLInmrN2aTEypKxq49fUxVIJxWLZIy6fgY+Vt6/g=;
        b=f3pS5FPuaIcqO6KVnJe/QOE79IcmmDXSZd++gbDgQv0DnOuPCBxMrox+vXNq1OH+Ei
         QDMkOimwYj4UdKPL1YhSM4LDKkjeKqXYWQmlwV9wu4JKO95JcDxQx5HHBHsWYHFkvOYd
         pFj/TMuSP+Jup82VgSKS/cGk+ino+DamTw1J0bNtNyY7thMYoxU0oYY/9EH2rpH7SxYQ
         WqzGu04jbcOmA68eHDtGysplYpH9CBGdXmlBgXJtJrz5AGZehLouZYE7XVOKDny6rKrT
         5JJ++Htgy6tUxp3jVCguxQ6II2kXv89UoprmVBp/uEcTC7m3Rr3grlR0J2Y3SJGpmiqB
         Jgbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XTMwLInmrN2aTEypKxq49fUxVIJxWLZIy6fgY+Vt6/g=;
        b=ZGrM3MtELlX2Tg0yacCy9wfhjeQhIyH3z7uhPFuO7QwffNce0DCQM82vxyc25h7sXF
         NFaefNoBkfhS97SroK0DHmU3CKI1tLKQdJPBBgsMxQ0jHeVPg0uj2AB35EWrT/VmlXJJ
         fWoKYYljv3BVb5uqrq3qdC1E4A1MJ14x2Jf1AOknN6KR794YSVC66PWC8LHUgq9017Sy
         TbgKKya3+mErdwq7E3QVHcQ98KHu3Ux3tAjrhfF1U3qiVpSOoMDygRWiB+iQuuoU+gI7
         Rs+z2nlt9t6iQHlc/SYp2zJCruUSvzfScnZ7y9wUDKTYybl/mdDsigNinW6WtT5i1QVL
         ++Jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532F0HLvdipwruylQIWJffi1UlHbSpOSLHk6kE1aM0jB8iErzpZq
	4wBS1DCBGJp0ROJZ34uIBWc=
X-Google-Smtp-Source: ABdhPJzQYbphCCG35Ew9Bm8dxu+4AjCSIB7/im93USKixMRc2EJo7++VlwMhWkItpk7ON9gFzlW/Mw==
X-Received: by 2002:a05:6830:84:: with SMTP id a4mr394675oto.341.1606252394554;
        Tue, 24 Nov 2020 13:13:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:e102:: with SMTP id y2ls69310oig.4.gmail; Tue, 24 Nov
 2020 13:13:14 -0800 (PST)
X-Received: by 2002:aca:4a4e:: with SMTP id x75mr93330oia.45.1606252394111;
        Tue, 24 Nov 2020 13:13:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606252394; cv=none;
        d=google.com; s=arc-20160816;
        b=bZztMxa903oj6/VR0cTXTGuAK7lNQidQqUPMICAGM4R2e+fD3QInYjuZwZOkSkV874
         zJk3PFNrQQY6ivVjpGDNlKzZtEWQeBnxCaZ1XCmU+PTqBNHY3ZGGgT45WmCWXqFrMkbF
         VuHsc0rHmWReE5Ed5rhvBqQsx853A+GWqWiKAX0vzUa5FNvvTdahECToNUYIKmtqYx8J
         wXH3ILpGnNOum2XanQY0K4P0iDZDT3qiidkQ5Eh4M+LrmHGCjhVGgWRl4YKSdguyClDm
         gtn7tfMk2vR05TxeQISQmsWoaxAdg9H7Tqiku8u1bfEm2My3Uq8TuSyLeTJH1oeioKO3
         lwpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=bRma0OFbi1m6TM+oYAu2kkAVbhOo6D7XSE0W8Im9z/E=;
        b=fYRLaJLsHwrSmX0UbMXLREd/VY547qV67SfrLZsqsoQ5qNRL8BL1CG36Q+IW5009L1
         8t0TzhWt4hWFDA024Ptyjy6BMH0Wnv01bG26U2rNT8j+XpdALqCrfeJMYQMODca4Ectg
         DNO63DiOdyVXn0ogP2dlJCDxL+NywiySMP1J5RyPwHV6sZN63X6fkQSd19QLvtcinY8N
         QFakiiN4Y1Z+UlwaGDKSeFdFGK0bt1HI2LPk8eVHKonRaTJwTkG2XjozxZEex4XN8PwZ
         tWQpxc0P39Lc9U47lFgZ51W3RwxOG2sbNAdlmHQZ9ScNCmPcEBkruOaFiKe7MFJgF5EG
         +6rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ANPhSDmd;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id b4si30302ots.4.2020.11.24.13.13.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 13:13:13 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::1935] (helo=dragon.site)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khfcd-00005v-NI; Tue, 24 Nov 2020 21:13:12 +0000
Subject: Re: drivers/clocksource/timer-riscv.c:28:16: error: implicit
 declaration of function 'get_cycles64'
To: kernel test robot <lkp@intel.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org
References: <202011212217.9IAK7t1V-lkp@intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <59ba6905-baef-02af-a424-41969f3ad0b3@infradead.org>
Date: Tue, 24 Nov 2020 13:13:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <202011212217.9IAK7t1V-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=ANPhSDmd;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 11/21/20 6:26 AM, kernel test robot wrote:
> Hi Palmer,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   27bba9c532a8d21050b94224ffd310ad0058c353
> commit: d5be89a8d118a8e8d09cd74a921a808f17fbdd09 RISC-V: Resurrect the MMIO timer implementation for M-mode systems
> date:   9 weeks ago
> config: riscv-randconfig-r034-20201121 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bec968cbb367dd03439c89c1d4ef968ef662d7c0)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install riscv cross compiling tool for clang build
>          # apt-get install binutils-riscv64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d5be89a8d118a8e8d09cd74a921a808f17fbdd09
>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>          git fetch --no-tags linus master
>          git checkout d5be89a8d118a8e8d09cd74a921a808f17fbdd09
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):

CONFIG_RISCV_M_MODE=y

and that prevents get_cycles64() in
arch/riscv/include/asm/timex.h from being visible.

I suppose that was intended?


>>> drivers/clocksource/timer-riscv.c:28:16: error: implicit declaration of function 'get_cycles64' [-Werror,-Wimplicit-function-declaration]
>             sbi_set_timer(get_cycles64() + delta);
>                           ^
>     drivers/clocksource/timer-riscv.c:28:16: note: did you mean 'get_cycles'?
>     arch/riscv/include/asm/timex.h:18:24: note: 'get_cycles' declared here
>     static inline cycles_t get_cycles(void)
>                            ^
>     drivers/clocksource/timer-riscv.c:47:9: error: implicit declaration of function 'get_cycles64' [-Werror,-Wimplicit-function-declaration]
>             return get_cycles64();
>                    ^
>     drivers/clocksource/timer-riscv.c:52:9: error: implicit declaration of function 'get_cycles64' [-Werror,-Wimplicit-function-declaration]
>             return get_cycles64();
>                    ^
>     7 warnings and 3 errors generated.
> 
> vim +/get_cycles64 +28 drivers/clocksource/timer-riscv.c
> 


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/59ba6905-baef-02af-a424-41969f3ad0b3%40infradead.org.
