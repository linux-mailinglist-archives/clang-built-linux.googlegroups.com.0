Return-Path: <clang-built-linux+bncBCT4VV5O2QKBB4VI42CAMGQEBOPTNZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B7C37982F
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 22:15:47 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id b3-20020a05620a0cc3b02902e9d5ca06f2sf12535577qkj.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 13:15:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620677747; cv=pass;
        d=google.com; s=arc-20160816;
        b=wAEqU7TW6/I4jeZeJaVHffezF6IqoeJEtJv1pMJj7umMVYBdwpDjZ7O59fStuBzemI
         CKwer08WQif7QEBHPojY9dmNM4f0oGNba35bKVBgaVxY0ki8T1VS2dl5wOcURUJdsCfy
         MUotDiIFQzf4tzxkQfIxBxgzenl719yDrMG7G21wUSPFnJT3frgqrzskU65+Oiy+nxBb
         Qmf0cgVGDpWO8T7javrKWqtIXjS7TBEkTtXb7d13RSF6pYWKvo5st0TZlRXX6dUjion+
         jh9JETnxrTzvjvVs6dlb5q8j4bxfV25oqV66tb7CjWtaKJd0JTmOYDW+u7q2ouHxrXVH
         /IxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=fJIqneMaHdks9T1usgOOA8O7KxdiBz1NZhKaCsKTKu4=;
        b=BOrV2HxyWWggyhdf7UckFOsAx62z3qbqUwXAWrMudShqZ4jZemFyD5D/S21UZaIki3
         VprqmyWteQ/7xtwGR5RQOZ3nGBG4bI768cE2L8epI82Fu3+Yua31yL7umQQBD+6v3MRX
         GvQJwLXz7b8FgPwPSKdFmrwlCgyJXak/BctQwl1uWa+pA7i2XB2d5Xup4rG2Wlyp5OWt
         9Fx+eoXQJ8RjnKEWRkp6k7cUJrKRqfCTUzdyofXeKEYunVAFeph8LR0fMK+K3bNzC4/B
         OKiPSlN8P34fTuOyiB8GiGxUeJtZZRCYN0M/AqBu5SeLjpiQh3/MiNz7YyEMSrFkE+HX
         W19Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="sCN/upVC";
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fJIqneMaHdks9T1usgOOA8O7KxdiBz1NZhKaCsKTKu4=;
        b=MQ8JE6ukmXPc8ONCX7uXlkQj/jfYM43r6QwuUSVy1BirTn41UGreOStaog1ZOmxT45
         eTfqylFWkhK+7jpueJjZ5yvA8ZJIymtSkzojr6hA3a2ARurgJ1nlWULPu1zDTW9T/ngA
         YOXUwagO2Iw3jsAqpkCHypBibrFhDi0BE32HJw7HtH6fHIx+LHVqHbe0BE3wVcv/23V9
         RvKDOUtPCpS0rEjVCIrre0+3VQKtnnIHICiQpuLgYygEi0VVESocaLNK7rKuMQcIyXgS
         x41fzF2HTZXQipwiyAx6T0vNrl/FD8azQAXqYahsPI/i+lebBIXDVNDQpCE/xYtxy1ph
         ejYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fJIqneMaHdks9T1usgOOA8O7KxdiBz1NZhKaCsKTKu4=;
        b=VB/umvbwy6UIBhhpggLhPr0qMg5SjXsSvI3R45skediNecE1Md1WoIyUpKol4xhHWU
         GPvFUgw2An1eBSXYB9NuhiG3kAR1mH1lr8pQQcBkyAX0kvv9z7zt3QBnIMvBYq8168Yj
         NVJlSqFUhj9DbL7383uwDh/W60yNSwupNnHF5rNvsG0+xMpWcUgDZOQCCbaGSiEutZYz
         hupRwQTVnfomnWPv+qkDvw4f1qqT3v7eGDOvSt9Yr6Wq1j7sH0IRD6Wxyg2d00QwJBa7
         E1dK9LHZGJepPVPTV6NLNxGB1Ex/CUkkONN7j9sUfQZhXqppubXPB6NpfBZ5ihMGAAE8
         fARA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fJIqneMaHdks9T1usgOOA8O7KxdiBz1NZhKaCsKTKu4=;
        b=HcrVEcm5cD7Tj9yj8AyYAM4nWG+Z4Ke0Gg1rb4ejkK8YqoUzrcIVpp0xGTj62eeOZB
         TXvdKgsoWq+9fQmJwiTrIfax7zBBqcNPsdC8otQVB9TCiMEC7RnICO7j554C/0Pk/WkL
         YiXf6c1wNCVLz1FmHhiX0KqcZkM2oAlHIcJ3saeVPwNry2LRdD/iKW5mlz0/fmgdDIa1
         Z70+VGMKSzEkwbBs5hSf2pHb1svStQUU+8lGruoEArN8Hm+ke7KTBqjQ9lfWh85ImDXf
         q26h8Lf2+m58PYyQsEes8mOyEvQ4Nz9GwGZY1mBoi6x6GHxn7JhKOySBfQLVIHZ13m+x
         l4KA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319ZmCJB/tOMYWQzeiL2jZIMHJurqcNnPb23GqcdnlcbtFpj+GT
	Cvgt0jyN1DqHOxP9B0Jcvpg=
X-Google-Smtp-Source: ABdhPJxOyvEF+XOpDqdq8ZLjgsPbUx8PFRaQMfW1kmQhFX0WRP/cP2x0GKgTdnztRqcDuoZ4P4aPbg==
X-Received: by 2002:ae9:edcd:: with SMTP id c196mr23591025qkg.441.1620677746936;
        Mon, 10 May 2021 13:15:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7147:: with SMTP id m68ls8774230qkc.7.gmail; Mon, 10 May
 2021 13:15:46 -0700 (PDT)
X-Received: by 2002:a37:7844:: with SMTP id t65mr12935269qkc.429.1620677746501;
        Mon, 10 May 2021 13:15:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620677746; cv=none;
        d=google.com; s=arc-20160816;
        b=H/VwmBdm5bet9xbB/FIeGZjMwDvuZCrnDeJ4d6j2YcCeqON4WIBR4Wm+1CF2SMSmza
         LPgQDfnf9Gs8/VsptvRNTT/EDZ3uIyTIn8imWBrRL1SRGrbhPMV/XXtB/NgaIyicXK0T
         FPyzd1CSDIUXGWjk1pTbrPAnM5Kq7M8lUiLi3foV4XHq2sKaVEBRRvdtZ7ae6q7uYC+5
         REPbAu0hOeIoBYa4jZpSGZ707opdHt+W7w8/4CR92XKEfQ9n3vqGOhwlb/N2aEWFKhe1
         5xvT7ApXwBIl4WGcBua1k8C9S3zNAacRfGA2dZikP/3dLwm76QMwj41SnKT9Txx6t3wC
         mmdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+p9XfQZN9xRLgB1v8BKeqEGzYiPvUKqgY5NPOFg08/g=;
        b=R9LH3ZYQweTjxheNCgIaPuDPo83eDDTn6oOmThZucYmB0dLvFsksHIpeIuJMV1UCLR
         E1unzSyKBFYD8BVaqhLF2w+DyBRkslXTyGQSHt5fqUvMSRCffcmLlQqUsBcsOR1RYecN
         Q9mYS3+eKkFcjdhtz98NlQUPVokFchMjbJsPDuOvkCHzBnuDGqiAcpX5KVh4qBtdSW1K
         ubG/wPM1zV1wfGBNSpJ9D0ryLI0sW/y/rpykTEB+fBvoGpNU06nUNRPlXuvy1qBJZTeh
         Vu08VsFPp9yoLnMgBi+HDkDYS1dvS5KkhV/2Kmp7n+p6A+morUnPkKYvJtMuP7Yq17e2
         RteA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="sCN/upVC";
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id c64si1442903qke.6.2021.05.10.13.15.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 13:15:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Received: by mail-pf1-x42b.google.com with SMTP id c13so988933pfv.4
        for <clang-built-linux@googlegroups.com>; Mon, 10 May 2021 13:15:46 -0700 (PDT)
X-Received: by 2002:a62:528e:0:b029:1f5:c5ee:a487 with SMTP id
 g136-20020a62528e0000b02901f5c5eea487mr26145345pfb.7.1620677745573; Mon, 10
 May 2021 13:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <a22cf56239512f52ae5927f226e79d890d7a1240.1620645507.git.matti.vaittinen@fi.rohmeurope.com>
 <202105110116.2KVffy45-lkp@intel.com>
In-Reply-To: <202105110116.2KVffy45-lkp@intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 10 May 2021 23:15:29 +0300
Message-ID: <CAHp75VfS4=X9mW9oM+ySQeq-bd+btxD7c9gjSZCztvkvJTpbXQ@mail.gmail.com>
Subject: Re: [PATCH v9 05/10] regulator: IRQ based event/error notification helpers
To: kernel test robot <lkp@intel.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, 
	Matti Vaittinen <mazziesaccount@gmail.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Mark Brown <broonie@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Zhang Rui <rui.zhang@intel.com>, 
	Guenter Roeck <linux@roeck-us.net>, "agross@kernel.org" <agross@kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, linux-power <linux-power@fi.rohmeurope.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="sCN/upVC";       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, May 10, 2021 at 8:35 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Matti,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on 6efb943b8616ec53a5e444193dccf1af9ad627b5]
>
> url:    https://github.com/0day-ci/linux/commits/Matti-Vaittinen/Extend-regulator-notification-support/20210510-203125
> base:   6efb943b8616ec53a5e444193dccf1af9ad627b5
> config: x86_64-randconfig-a015-20210510 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 492173d42b32cb91d5d0d72d5ed84fcab80d059a)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/904edb46fa37ac86bc1e7a1629141e037f45ebed
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Matti-Vaittinen/Extend-regulator-notification-support/20210510-203125
>         git checkout 904edb46fa37ac86bc1e7a1629141e037f45ebed
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/regulator/irq_helpers.c:244:4: error: implicit declaration of function 'pr_dbg' [-Werror,-Wimplicit-function-declaration]
>                            pr_dbg("Sending regulator notification EVT 0x%lx\r\n",
>                            ^
>    1 error generated.

I believe it has to be pr_debug()

-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VfS4%3DX9mW9oM%2BySQeq-bd%2BbtxD7c9gjSZCztvkvJTpbXQ%40mail.gmail.com.
