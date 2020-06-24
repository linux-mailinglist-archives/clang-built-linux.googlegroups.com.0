Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZFSZP3QKGQEJJ2UYWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D76206B52
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 06:41:09 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id m11sf580224pfh.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 21:41:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592973668; cv=pass;
        d=google.com; s=arc-20160816;
        b=OdN1isqVlzXW7Kz9opyp1kpJFRuzt4AMeS67hxRHxWtCfDYPsBvkWks8uUtJ7dqhG4
         VgZ1NTYE0GzIyLV1nAuoHkPVcKf5X13j5flqu9oI+ROQIAM2Y7DyCzu+Wxjbn1lMSHJ9
         dZ3sPGHmHHhCRKpo/75LbhvxwKJem1apB+DsBAw2JDPi2LzJBV9XSymAnGebL1E8xYxd
         t2Ajy6yA4QPDgEk7xpqglqwToUEQyCzlcCyzCFnNA24mRZKLnigQtkzwjPZL/4UYhQO+
         3Y/ccSiL6zlmUwx76PDdPPT+TEuwFLoHlhNJMNXd2jb7o/ZEBwrCYL3FAiB0alAZANtL
         vxeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Op1OmE4PY1ESsDcJSwOp5PExqfQ7bV0W3qqQ4LEsbKA=;
        b=sK1grOPOdiVSLzF7t2FR604KwOSm06hXsV6W58Ivu4AmARbBeqklU20oEJ4loA4JiU
         /StK12loyYmyScXLkHOknoMK2WEnlMgd+6lHSbQCjxsgsRV7BKl02ARJuSdegPjN4HKX
         bcBqiZBOcbr6+m03GNqbskwxqgG6PCyVyOU7Cl0V5rW3IROE9+zgC4wMvFfeompYiXR/
         OXNRlXb5580ek0/DjtKOVqK6eih0YWjT3+Chha2JJWChEbDNLRx0DxHD/H/rTYGwsdmS
         un49xNBIskCKmaG5kpgLl4LDzDhCs1TD9y3YHJ3ignzBoQyqsJ/0I4NCBzI7ZcN0vypm
         4Fig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=V11tEaiM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Op1OmE4PY1ESsDcJSwOp5PExqfQ7bV0W3qqQ4LEsbKA=;
        b=suRPZEW//l8z03C/cVJqsBp1pSdpzAPCSLWXf6Qxx0sxC1kEtMjqPW57xHorLSUKIe
         hoJVQqL/01dT3y1Ybx7BpMuwsyqumArbDAnmtNZAWlZp96HCkppigfCkcvFTL2cf+B0K
         ak1NqCsbrLL74tcQP5V4tTwzGj7r6Vk7zaieVfvtkpwHgPmxNiRYAtU1Tr11Pi4Ycx81
         szTC90cnfWDCeO/MYEOHWfL2vTO/vR39SyjMQKHlbaDObwm4bO7ZMUnBjGbWJ+Rp5gyQ
         mx9wTlgq3x0UXgBGlY0Ie+16x8EZ4NceKxF8mmKRrAu8OpC8rD7Yv7ATjWxxwqMFVcr9
         sLqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Op1OmE4PY1ESsDcJSwOp5PExqfQ7bV0W3qqQ4LEsbKA=;
        b=Nj7x/gUXX7d02AVHqi0CTzCVUQDz6NVIoGutUDC9+1DSQeaFrS48vTY8eIHh+LijIX
         ikv/uaELJd81PsjPf2t+Hp5Oxui+EOQiN2lBV11WjmLaxJC3ubjiRmMf5ewIATtOrpBc
         R7xYrK9hRi00EpdatL4XV32451F49VTbW2+GKwC2NI9uJQaPE4ZioBVvJwdQF62O4Orz
         dVoJudx5dhA5tkBiNJiS+qzfASw2FNQaG/H5HzKkjVwfjvNiXpDyMSmTncUvBZXickuw
         6DuTWtyhW/2zTN5zRZyJXn2Br9Ko89js7kJap4sAR3+//MoTrbImXGlxCvBP17kz5ZRu
         +1iA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uF+uqDRO6zI2DKje6mgy7lmaQPG/bx1md6NgQ5ExVAPAud26n
	9U7SzzeBlfmNPUUAuKQtAzA=
X-Google-Smtp-Source: ABdhPJwlBJxjOE8Wj6B6IDFjsYDjNF3jhhgOx81710hdmRF+7GxTqjya1ySRh5aJi1vQyVyGCbFTKg==
X-Received: by 2002:a63:dd42:: with SMTP id g2mr21190633pgj.442.1592973668253;
        Tue, 23 Jun 2020 21:41:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:86c3:: with SMTP id y3ls361154pjv.0.gmail; Tue, 23
 Jun 2020 21:41:07 -0700 (PDT)
X-Received: by 2002:a17:902:9309:: with SMTP id bc9mr27443957plb.232.1592973667874;
        Tue, 23 Jun 2020 21:41:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592973667; cv=none;
        d=google.com; s=arc-20160816;
        b=hrKF6h94GUwiQxrFo5bHWOJDH6qq/hqU01SfGrxTQKyonV6t1hJ4TBNaIV44Qf4fkn
         W8BWJuUsQ9x2Ek2WimkIcb7nJ3JKN1jYIiL8CeeZGX6ZYoPd2f4+6AEVgv4duHw87m8K
         T0KMuiLpji6JoKqheyTC1qzuwZ5DGtsnvtNruEvwVsl23vCX77Le2BXJmEbC0WOa8++r
         W+rX/9xTbeXlLFruG2qLyjPYPusEh9anZFn+hfNgtA6XKzeXVlvKvzkG5aXDNfPSAKAg
         4QfpLQf/ek3stJi25BuZ4nwzJ8cg78/AS04B6nBfkWssJ0px6cElzsXebI0ZYYF2IBkL
         AJ7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GNXd8OgjazfzQ8A94JO3Ke8SqJWO6qvbggrqo4zg44o=;
        b=tZ/q4yQIIK3kLwBx6zbfpEje5s0OopXNDK73lDFidxh0GSvvDFev3UNYvIIEIVOxvR
         oGAzvFOuoYELvOJrNseEpGlgNDOXxVLG8bO9TLU263NPCDzapmuTYPY7q6u3HdSjrVzN
         5C80FZQaz2qLDb3b5eIFOuILYCz57lbS0PE0IxIgGuTa7/58AL+nDP6QRbjrAnVTLGwL
         iSHtD19WCTDiQ+6O05BVikxLziSkLixuxbbbTVTnXwQ/CdyYIqKf8Q0eolBiuWM2JMHt
         xnT7Izm50b7WF7xIs+DqNiz9Aq9jr6vsWdBXYcGyOXgS2JOaWexZ1JJO78DXO1TWyawe
         jxyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=V11tEaiM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id v187si244997pfc.4.2020.06.23.21.41.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 21:41:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id j4so523912plk.3
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 21:41:07 -0700 (PDT)
X-Received: by 2002:a17:90a:db90:: with SMTP id h16mr27581623pjv.119.1592973666949;
        Tue, 23 Jun 2020 21:41:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 4sm15366379pgk.68.2020.06.23.21.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 21:41:06 -0700 (PDT)
Date: Tue, 23 Jun 2020 21:41:05 -0700
From: Kees Cook <keescook@chromium.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 2/2] arm64/build: Warn on orphan section placement
Message-ID: <202006232140.BD988273@keescook>
References: <20200622205815.2988115-3-keescook@chromium.org>
 <202006241159.zO6bF0Gp%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006241159.zO6bF0Gp%lkp@intel.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=V11tEaiM;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Jun 24, 2020 at 11:52:33AM +0800, kernel test robot wrote:
> Hi Kees,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on arm64/for-next/core]
> [cannot apply to arm-perf/for-next/perf]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Kees-Cook/arm64-Warn-on-orphan-section-placement/20200623-050132
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core
> config: arm64-randconfig-r003-20200623 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1d4c87335d5236ea1f35937e1014980ba961ae34)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    ld.lld: warning: arch/arm64/built-in.a(mm/mmu.o):(".mmuoff.data.write") is being placed in '".mmuoff.data.write"'
>    ld.lld: warning: ./drivers/firmware/efi/libstub/lib.a(arm-stub.stub.o):(.init.note.gnu.property) is being placed in '.init.note.gnu.property'

Thanks! This is all fixed in the v3 series now:
https://lore.kernel.org/lkml/20200624014940.1204448-1-keescook@chromium.org/

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006232140.BD988273%40keescook.
