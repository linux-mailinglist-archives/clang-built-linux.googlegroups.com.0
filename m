Return-Path: <clang-built-linux+bncBDNONOHMUUCRBRW5ROBQMGQEAVUOELI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD8534E443
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 11:26:32 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id p24sf12689904pff.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 02:26:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617096391; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kf4Wllq88eyJYjZLH6qW9sx2BRNxFmfdBBRuayyHFz2Lns6ncqekFmzsBDa/y3LvQM
         8DABte/UsgIRSzL8gejr1Nsmn2VGvfRo9r04P8dmD9/8CFOVlT/ZnI3XMMG7qlqOnM7Z
         uNU3nrv0CZHRLFuNuMYymyhIUtH7HRpjCH0kj5mmNj7mF2P/blTshSojbbGfx6DgU29b
         q15XlhF0fUJGscQcOvej3La0t03RSthQgRYuuZrpgmRJfHRop6dPLe7b70fa0BBSt4qh
         r2L42jVY+ZzcIjJ+JYdzT4dadxEGelhnfn/Ko2Hj3FQ5anepA4oyK1v7E7UvUHMAGXRs
         WdAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=TXWLCLmQpfdrmdMz9Jm7Mk5TO75tSizR/w/+W6RKzxo=;
        b=FfDxYObc0qHUrKll0u+vyhnx2GHQWrWa5eEcm+X9Rq9T5ZnZefHH+/35wQG/vkaaE4
         qBkYhA3T9tH8zDGzX+mpMTzGYk/UZoDYd/iI/OWKkd6p5mqv6L8o16xTtUz6pCGWSgJ6
         uychOfh1DjXPl1LrwW4xKPmft4v83IXhcSODawKAwf8PeApQQ+Q0uxj3+IxwrpmT5d5W
         Y4USBMw3SAz3eiI4s5UKReoI6yYzVA1K+SEDvvICgIxKg4QVlQn2OO/CxQDCTG3B5ICV
         QfTM9jRD+gka3BuTSpnqSc1AzeClOsLP8qVPSFPvCUEsR62SKYDxROhJjlNaj6Q1M7ru
         rR5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b="WCEoa/9Z";
       spf=pass (google.com: domain of bgolaszewski@baylibre.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=bgolaszewski@baylibre.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TXWLCLmQpfdrmdMz9Jm7Mk5TO75tSizR/w/+W6RKzxo=;
        b=QJwXQoGn7/Qz+F5aS+4hmhsZm0mp0eGrLoPwxBAjnB/VVTUHJrx0TNHDUDIYl/rnZ/
         zZnQzlrSQiMjq6xoWseJkxU2gvM3h7htrPac17UGGbNqKNdoCBzz+vuFl7Zrgt9NcPZh
         F05WIzKDgGZq+JDG/RcgKecvEMI8N+HfiLgoSWI8yqgc8P9oYX/dLyINL6B832EYKoUP
         D090GX8uw7/oUjQxe+fisk08319lKxYahrP6JRNJn3sB/MCIsz+oGSd7aKm6YV9pMBwU
         10bxadDnmPif57WFn1Pzvpg/t0/fVvYa4diGVMsb5+oTAAZvrSeQwO3c5acI3TgxPT5N
         3jPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TXWLCLmQpfdrmdMz9Jm7Mk5TO75tSizR/w/+W6RKzxo=;
        b=fUPhLPW4nko69g83rMLRB+b02/eScAysVnHaVMgs2Rg7j1KED6EsLZwA6wU8BO7dmN
         4+/QxGTCJM4lI1aB20FR6bgyaqNuSIODUC5G1rDxAw6t3lZKkL4o4IASHOYjAReoRk+n
         DTL2KJ0I+tBLfP0Psp2dh9slFQm82aVYSYMhjg6FVby4rMqmgVWulizaX4z0lmRE0H92
         lQFrIzuArQmizM3IMngPkMvU4fINbJq5+ZeyZZtMQiAxx07us06H8M/3wgIyoj/9e1eH
         UojZ8Tm7szjDFwF64nCTiSTiJN6qxiKA2jXa06lqLYL3rjcpg/0U/CJpAvlOVX595AON
         Bj7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/gpbkTZY7dPPoiWgm97ut0InOYIeWFRuubf2vzeJml4o3ynRu
	YkzwMJq8f1b+a1mwudDthXk=
X-Google-Smtp-Source: ABdhPJxMpdUZO11PZZ1tYwRTD3Aj1FrNg/CrmurbW/Cm1EsURlm1xLxMNIh3IBvF95U/GYmbbMpG4g==
X-Received: by 2002:a17:902:b210:b029:e6:5f:62e with SMTP id t16-20020a170902b210b02900e6005f062emr32352170plr.48.1617096391198;
        Tue, 30 Mar 2021 02:26:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:f212:: with SMTP id m18ls7741472pfh.11.gmail; Tue, 30
 Mar 2021 02:26:30 -0700 (PDT)
X-Received: by 2002:a63:4084:: with SMTP id n126mr27076959pga.80.1617096389262;
        Tue, 30 Mar 2021 02:26:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617096389; cv=none;
        d=google.com; s=arc-20160816;
        b=uIzWaxe1VYblkjnm2Ig5kLTV1MZksYAzNhSUjcOiWbXjEVQtGN+EUL1eWwdJv0GbBT
         DZE+teTZFFr8QAoeLDb+OttgbV6Jqhy3XKTDVKRP8r0DMhxmFY42dDDFdPOYNP+UTGEL
         BPZMEsKQ9lGyNnwcGWsnQgi8ww/nVhwp+lt7Sqp+wcghhb7OLQj5K7394AhyM33CA8ka
         mwH9qYRfCv68WrTiPYy+2/oH1za16Q6/zBv64PMb1Qfw7IQ2c6cHTpJ6zsIkJBs1/ejJ
         OvILJSk3pzFq/n31pLv7ust4l7/Df9064EUXnUxc6OrHhfh4UkU8XO9tJ1jQCZwREqaE
         zXIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YskxgI2eBL7WCfGtW9xSTnMDtjUxiMBZffJbF8N8Ozo=;
        b=TcH1FN2kAJpJyhLtvTmc81DOGaqW+lOzibDwyCSV+2ZwWbP58sxyJbtAtKSRi9vfwC
         FxaSA1HvBUxTj84Wv0D2iS3BpZmTQqQI+ZRKPiE4TpIGNbK6dBmsHD7LQ2wN+vFPwmwH
         oJqHKAMYocae52hLOm36oFQrKwHdrTHvPnIxHWUjEItI8dkBoOeywJZA8Hic/7NhBjO7
         KuZoG3Nau5XHhGAzbYV/k6Mo09MQfGqfgJJwZ1PA9BmWqpdU6Hk20EOCE140Zv3omITD
         p9sULXsMqW21JJU3LwfoG7BPqfsAdeoka2oWZaG/D+HleLZWzub7xT4L1OSHh2hc/qBD
         SQtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b="WCEoa/9Z";
       spf=pass (google.com: domain of bgolaszewski@baylibre.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=bgolaszewski@baylibre.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id a8si292792plp.2.2021.03.30.02.26.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 02:26:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bgolaszewski@baylibre.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id g38so16684316ybi.12
        for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 02:26:29 -0700 (PDT)
X-Received: by 2002:a25:768c:: with SMTP id r134mr11869574ybc.366.1617096388448;
 Tue, 30 Mar 2021 02:26:28 -0700 (PDT)
MIME-Version: 1.0
References: <202103301259.dhlOOcXV-lkp@intel.com> <YGLrO9lsfvnWYY5Z@smile.fi.intel.com>
In-Reply-To: <YGLrO9lsfvnWYY5Z@smile.fi.intel.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Tue, 30 Mar 2021 11:26:17 +0200
Message-ID: <CAMpxmJUnHjjqR-hb=6sUth9C1-pfCr7iCwGCFH6h-NDbq0WGhQ@mail.gmail.com>
Subject: Re: [linux-next:master 7313/8469] drivers/gpio/gpio-sim.c:388:34:
 warning: unused variable 'gpio_sim_of_match'
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: bgolaszewski@baylibre.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623
 header.b="WCEoa/9Z";       spf=pass (google.com: domain of
 bgolaszewski@baylibre.com designates 2607:f8b0:4864:20::b35 as permitted
 sender) smtp.mailfrom=bgolaszewski@baylibre.com
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

On Tue, Mar 30, 2021 at 11:11 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Tue, Mar 30, 2021 at 12:15:04PM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   9d49ed9ca93b8c564033c1d6808017bc9052b5db
> > commit: 3f0279eb9e3767f37939358a42054c226503233a [7313/8469] gpio: sim: new testing module
> > config: arm-randconfig-r001-20210330 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 482283042f795ecc27838a3b2f76b5494991401c)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm cross compiling tool for clang build
> >         # apt-get install binutils-arm-linux-gnueabi
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=3f0279eb9e3767f37939358a42054c226503233a
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout 3f0279eb9e3767f37939358a42054c226503233a
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/gpio/gpio-sim.c:388:34: warning: unused variable 'gpio_sim_of_match' [-Wunused-const-variable]
> >    static const struct of_device_id gpio_sim_of_match[] = {
> >                                     ^
> >    1 warning generated.
>
> of_match_ptr() should be removed AFAIU the case.
>

I'm not using it though... Other drivers do the same thing as I did
here. Can this be a false positive?

Bart

> > vim +/gpio_sim_of_match +388 drivers/gpio/gpio-sim.c
> >
> >    387
> >  > 388        static const struct of_device_id gpio_sim_of_match[] = {
> >    389                { .compatible = "gpio-simulator" },
> >    390                { }
> >    391        };
> >    392        MODULE_DEVICE_TABLE(of, gpio_sim_of_match);
> >    393
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
>
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMpxmJUnHjjqR-hb%3D6sUth9C1-pfCr7iCwGCFH6h-NDbq0WGhQ%40mail.gmail.com.
