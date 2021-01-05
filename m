Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3UB2P7QKGQEJPYGQHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E6D2EB392
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 20:41:37 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id s127sf410720vka.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 11:41:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609875694; cv=pass;
        d=google.com; s=arc-20160816;
        b=JBz+AM+qz2MZGq5YtgR4+zwVy1d4YZ599W0m3TJP9+NV+omQvsCc01SDa16+naxEJ4
         qbIQSPoIfAOox/VHuAwU5jZZw+5PnFcx+lcu22JlE3172YQC7qEbl0yKAtgQeKAToVx8
         uxpOLY2ffT2qB3PPMi449gV9kG+wMFFCuZk0vRrGy7OByJ/rjtKvnsoNFslKgYw3ML1s
         +7RnYlz1aBiBpfBLcUIrca66DT7fd32XRXG9di6MQ5Gcs6C2WC4GBjAVtEUNdqVlIZZH
         bSD0ADfhSQQOciuIw181Hvbj5W0gtKhmbL8QzlnvIsWUvLmLg7Q31jHoUunDG+8MReek
         Y56g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=G2dD3UBQFC9h8sJBMeOqXHiAn3mOYjFXsojRmhmTsm0=;
        b=r7TdaCIUrHq01qe+0/CuT0H8TCtB4J/W3NkGkCOjb8JUTbwuSS7g5+udZN+beZdwsI
         mv3uOs8VKvRDj/qoetVDoE+tzyMQ+3RPqMnkxs+aDLP7pygBSy4AYRPncI2D2rQhSpwp
         GGT/7PvLGA3xSWX+ciYMbwfqHQtL4Ubnm4z8GBCcdoGmERs7VD7OOOmwvSIKKTnXUqPV
         EVETLpfh38RWmeBaAbvkVJgNSPilJtVRJD6q4FM7zhV+7S+pwx9KDsrrzsr29manfYxJ
         lKqLrqNpG7AilSvS9WpHoI8LOsqvtKO2SO8DbHWHyq0uFgh7hPKT9Z0FYqKv2oQKT9vT
         h7hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PYhRu3fo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G2dD3UBQFC9h8sJBMeOqXHiAn3mOYjFXsojRmhmTsm0=;
        b=E+BXFnl60q6wqyBjKspuZmRXL2OsVyyHfyWtjPwbebaY7kBpV9SFaRzmK9Aj0r3epZ
         acqmjmWy6923PFqFmHmpprgl00mMZugSoqNhuj8B4LuwT+QYjSXuGcGeYHpukArGg3MB
         i5sZkJdi/chlHP5EJRnOmUDM/hnjz6ylQo/MKRbGLEbuQ2pFK5MNE9NPmUpv92P4u4jY
         SU+98uAjelCiJzepAHFY5cR4+3EKVjie2xyTvVVarf8kilvecYT7BSMWMwLGzqBPzWx9
         G72TpgWIo7nnsnUAYH8KxURHDUe96YlAMF0m/e/9TpwlTfjhX0iX+kuSMVPQC9r23YpP
         DvPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G2dD3UBQFC9h8sJBMeOqXHiAn3mOYjFXsojRmhmTsm0=;
        b=DxWwo+42+oyfbj2eGI8pcy7GSmRAv/xwi+jD/epRbzGOnNNhGjlQZ/9qZK6cJU5kHv
         ehrMnGnRkpgz1lW02rVt7itX1TntWv4XU/7ZfFWNs7bp7GrSeJDL0MfJxZLIRq63t1Uy
         Pc1oU7p2e8H34Z6o2rBhNbFdSoUFVTwP+vbTI/81L6gA6REpaO3OBhdc8IKIJ9OMQBX3
         NgZPqcePZYlDAX6TxdQSpLAVT7UGY9jWXZHMW5ySBE/s7vjyWxZcXPp90FGGktZcyKyD
         oPgsk4cIZO6PL58FL1NT7ma4NIMJBmKdh9upXcC0dUtfYpAISI6IDh2XAohIRuyj9geK
         qnRQ==
X-Gm-Message-State: AOAM531NlIjOwP6oPIWfV+NKMXRu7/CCKm/Ym9+5EqPdhcRyMGKZBe5k
	dH0Zc3PZp81D5p8mNrREV8A=
X-Google-Smtp-Source: ABdhPJz+P4JBk4IDJ8qKpmPgOFPluTIlKiUNOmMXuAiwdBfzJwnq1JlivDDR5aFFVxOSwEMH1AIfTA==
X-Received: by 2002:a05:6102:2f6:: with SMTP id j22mr708793vsj.43.1609875694782;
        Tue, 05 Jan 2021 11:41:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:8d06:: with SMTP id p6ls33403vkd.7.gmail; Tue, 05 Jan
 2021 11:41:34 -0800 (PST)
X-Received: by 2002:a1f:6743:: with SMTP id m3mr1220939vki.10.1609875694377;
        Tue, 05 Jan 2021 11:41:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609875694; cv=none;
        d=google.com; s=arc-20160816;
        b=BJ96SLtqriVSBQ6lT3nYuOETS+tZeVanKUoYrfP6oGxjJre4o/nJQcX7EfDPsv8HT+
         dFp7GGWhFzplcB8bxeO5plGsWtJMWjPiuazjdqCLUJcmFNMX5S6Fwn6Z3wF+Kmg1bs8q
         nZFsu85DQYiHxmlDyiQKVokUzI0hescXN95joQHgsJ7MJkh5AEY/3Ctg8bPWOo2a1+OW
         4oPkwa8V8B8Dd1uSsSjE2m00dFJc/PbbsJ4qCKJFs5JymLIJFlF0CPdsUglkdojrivjg
         G0IbJKZ2ELEHW1kJienUEOlVlMQCO/S4kYyvkDQp+zvLjVN5NieUbDfmcxYWK3Gls7MK
         2C7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TMFOAFZFlYW+eUre2PkHe1D8HJjsKx5wuGAw4VigT/k=;
        b=wLNC1MJ1BimvcNkKzlLBHR272/viHAHUWVGbnhwY46spbV5/M9IlDGzdJaf6CI6G7X
         YbGzQ/CJcmFo71Mz9HsWRJQXyVk/1DIu/BTN7Fja2j1kXw+J1O9+urildj/wc7OXKntb
         H8mm4lTzCuYtPZArhs+pPd0ihHxLdvsQgSH4totSG73sZjCM1whAtfY6uyNsNtjFPDZP
         nT8i79vkdXS7W9qrNsDaufIE551IvAID0NXCYNv6Rk6V0Z2plxu7xc4F+ItQiURX/U6K
         lQ37vu2YzspS5MGjUAcjecMHYGMWn5U7FNBCBPI8P7UljJeWJs/3vVDEWIYDfzBfBXVA
         0oWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PYhRu3fo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id m19si28235vkm.5.2021.01.05.11.41.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 11:41:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id q22so319606pfk.12
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 11:41:34 -0800 (PST)
X-Received: by 2002:a62:7c4a:0:b029:19d:b7bc:2c51 with SMTP id
 x71-20020a627c4a0000b029019db7bc2c51mr631636pfc.30.1609875693171; Tue, 05 Jan
 2021 11:41:33 -0800 (PST)
MIME-Version: 1.0
References: <20201222184425.7028-7-p.yadav@ti.com> <202012291151.fApnPO6i-lkp@intel.com>
 <20201229091806.eyrakehdxo6762sg@ti.com>
In-Reply-To: <20201229091806.eyrakehdxo6762sg@ti.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 Jan 2021 11:41:25 -0800
Message-ID: <CAKwvOdnNeAXUsNQnSmVmODT9C4_J9cX7prRaYTs+R588=JW7LA@mail.gmail.com>
Subject: Re: [PATCH 6/7] spi: cadence-quadspi: Wait at least 500 ms for direct reads
To: Pratyush Yadav <p.yadav@ti.com>
Cc: kernel test robot <lkp@intel.com>, Mark Brown <broonie@kernel.org>, 
	Vignesh Raghavendra <vigneshr@ti.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-spi@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PYhRu3fo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433
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

On Tue, Dec 29, 2020 at 1:18 AM 'Pratyush Yadav' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On 29/12/20 11:29AM, kernel test robot wrote:
> > Hi Pratyush,
> >
> > Thank you for the patch! Perhaps something to improve:
> >
> > [auto build test WARNING on spi/for-next]
> > [also build test WARNING on v5.11-rc1 next-20201223]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch]
> >
> > url:    https://github.com/0day-ci/linux/commits/Pratyush-Yadav/spi-cadence-quadspi-Add-Octal-DTR-support/20201223-025328
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next
> > config: arm-randconfig-r006-20201221 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm cross compiling tool for clang build
> >         # apt-get install binutils-arm-linux-gnueabi
> >         # https://github.com/0day-ci/linux/commit/04a7bcbc449363e5d6f498376c69116567b49d7d
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Pratyush-Yadav/spi-cadence-quadspi-Add-Octal-DTR-support/20201223-025328
> >         git checkout 04a7bcbc449363e5d6f498376c69116567b49d7d
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/spi/spi-cadence-quadspi.c:966:24: warning: comparison of distinct pointer types ('typeof (len) *' (aka 'unsigned int *') and 'typeof (500UL) *' (aka 'unsigned long *')) [-Wcompare-distinct-pointer-types]
> >                                             msecs_to_jiffies(max(len, 500UL)))) {
> >                                                              ^~~~~~~~~~~~~~~
> >    include/linux/minmax.h:58:19: note: expanded from macro 'max'
> >    #define max(x, y)       __careful_cmp(x, y, >)
> >                            ^~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/minmax.h:42:24: note: expanded from macro '__careful_cmp'
> >            __builtin_choose_expr(__safe_cmp(x, y), \
> >                                  ^~~~~~~~~~~~~~~~
> >    include/linux/minmax.h:32:4: note: expanded from macro '__safe_cmp'
> >                    (__typecheck(x, y) && __no_side_effects(x, y))
> >                     ^~~~~~~~~~~~~~~~~
> >    include/linux/minmax.h:18:28: note: expanded from macro '__typecheck'
> >            (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
> >                       ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
> >    1 warning generated.
>
> On arm64 size_t is defined as unsigned long and on arm is it defined as
> unsigned int. So using 500U would generate the same warning on 64-bit
> platforms. Maybe the fix is to do something like: max(len, (size_t)500).
> Any better ideas?

SGTM

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnNeAXUsNQnSmVmODT9C4_J9cX7prRaYTs%2BR588%3DJW7LA%40mail.gmail.com.
