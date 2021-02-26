Return-Path: <clang-built-linux+bncBDRLVLXLTULBBUWU4KAQMGQEFVYTDUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D2E325E83
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 08:59:14 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id k7sf3035844lfu.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 23:59:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614326354; cv=pass;
        d=google.com; s=arc-20160816;
        b=HtK1u145pJTRcbzDXkPyEmqFzN1btJfCEtH37HAXwRdBaFaz9fZBS+6UlAJJxoWcRv
         51rkpJ7b+/6SOr1yaVKXNszPU0EQlvQKVfXiCvq/oKRqs+G86Z2y9VJ6BxLLNJs5E6qL
         AiA+TzqpqURfSFAsJs0VvWMtaEnkGobCdRluK5MDUmMNnY7jELbi3LP+xIEJsiT8tCwo
         O8YSC5GSeo2gg/hpqexqrnBIOY5TfNI+rDv99jHcwZkjx9Eit+9RSweh2dKBcVg0sotS
         9I8K67jY6UZDdjkWtdBP8lUbqIGaO69Fdanm9s00FTFDWOtuG6tDoCGXt0jxQvZwPxaC
         yUnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=UeZbrlAWINRV4VF6OvwFDH6JZg7UG4PL+yo4PPzV5v0=;
        b=kpZy91yQcUNRCGicCZARWqpnTwcWq9+S5I5lbRxBPeYZQcWXSbCgmb24dGE+Zx0hBe
         SQeiqwYQvOW5lt8OrVAPZc9sJHiKpZZ9VaOM6wCOQ1rQ4vPrOxm7zQ3fVRodQj4tfv6E
         shuesIyp/MMHPZE5JZyRsOmaG1++dP6gWjEUQoY2qZCbAHBFLDdmqwPEb/FjgoXco1TK
         YWiMIF9KbSg3nnuhPOSSfuPsWcc38cVQrTSqK+NVrdpa3ikMY6ZYVvc9yKDLJuLsRF3i
         ZMmAEZLumTSr6sFC+PIn+6s4ER8jycMZhjnpvTNg4T5ww/eAVB5LkTpf08YMnOrxs+o9
         GFAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=gbarmf2Q;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of john.ogness@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=john.ogness@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UeZbrlAWINRV4VF6OvwFDH6JZg7UG4PL+yo4PPzV5v0=;
        b=hZb3g3wTJvBrWTZ/LUVJktnlkMt0X5Cdf5rrH3VTAfDqDUmdW+X3wRwteQbGEwgIQl
         MdKjROTrK9Z7Pxu1Zwh/oCMxEuqhEj/nq7pQezqnLhgEgXq2za/hiaPgAzjW4Vempnc2
         DJEoL2S7/HPzw+nfLusCrISUYn8mR/18U1nfYjUzqsIh5RyKPaPAz/SAGY9GbADxOXk7
         Liu/FWsjVaaooFJ4Fo0Clr5pfzaFI70nphkUBI/xxyTmpqBZASdRxAsB8lE4SUFR8OP+
         Js4M7sZsDIu13flsaH2SE/W+wFD3uFcLfBpbIffM/wScQTZCz0DAcA1IcNhcGkWQZh7L
         5RWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UeZbrlAWINRV4VF6OvwFDH6JZg7UG4PL+yo4PPzV5v0=;
        b=N5kU5VKkXpXlaCp8MogO6PTB8z8KKHTPH7dmESs78Sb0sP4mHzJVxloayi8l/2rLgs
         ioW0q8Qo88K/CojzuUjypttUq2ZGcEzauH3SsvOIIughiaXCDx4Yr9w8YFrmobbziahq
         kacw6JTfrsbgVycC/PSZkW0uRV0Lr0FdvfgNI6nDt1TK35nMgVzt2QK90JVzf9U0g0qJ
         TfRbI0bs3wN1aNx0tedepGNirN6HFiMvHx1tn8OJNuPIJwU9GiYBD6f1m/p//xACKffs
         0igN8wif7Z4R5o76MjLPlibLHUW0mkc+cLGTAFzuawu1l8TEKDmx99YP1ZLce+FCXi78
         0HDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Lwu+pnXG2TH7wFWLLG0K1zLmUTpYaOP4bDKG08wmUAnBmzaAR
	lXQtOlBS331yH5h7WgQF8JQ=
X-Google-Smtp-Source: ABdhPJwhFRy8mZJPcNrLMHUk2EKldd4L19+IUXfe/KfgGwZ4tOOIG55NPc6/XsqbSjP53MW343S8ZQ==
X-Received: by 2002:a19:ee19:: with SMTP id g25mr1060301lfb.83.1614326354251;
        Thu, 25 Feb 2021 23:59:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4d1:: with SMTP id r17ls1487068ljm.10.gmail; Thu, 25
 Feb 2021 23:59:13 -0800 (PST)
X-Received: by 2002:a2e:2c0d:: with SMTP id s13mr1073779ljs.298.1614326353219;
        Thu, 25 Feb 2021 23:59:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614326353; cv=none;
        d=google.com; s=arc-20160816;
        b=x15knry7hnbGMFZXovZrmvqH/XnXuOo65N73afEfHiqPsRrhWqB+s9mE/ELHg+KOCA
         Xndh1JRALiVbFrcYgZ6nQ/6I8zsCHRaYHNrj5xsu+7aOZ6ZbGLPnYR6J6K2iI1UmZ4QO
         kMU9UK8w3T6SY2RLftnVgWs/8B0Si3QQ6sHwU8oYBmuWoXWeb7g4luzXTW2V2eRsbI7K
         krdT61Qv1ae9YCnOIT2GdxSz5S7MG+b+gsaNHljbyAYXGZxL1hlO1R+2l883G2Fogl5U
         UJAoQRIOn+h7IZMDhWCr7iH7e77z0HK3Itvcx4FnkAzzV4xgpmj9+o3r8zweyCkrP/z0
         a1lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=As1fDYfwKrjxkKoe6zW8X2eDIPaM0LZx7cH6HHLoVWs=;
        b=0B+ClnJF7LVyApUdZpn6REmQKfLDFUVCwecbzb+8IDggufc0Y7RFQgZiXPfBKcQnQ1
         uQCV64pmBwZu8F78rKZ901erni9bzUicuULgZnZG5gearBr/oqrNyR3A99ufFQoulwNk
         UqkKHAzEu9gJxp7SkJvnkrSl/p1gTaDIY2/kNz9NAOqrZjQ3oJiB8HLT4aJ4dvXnS63B
         aBNhhAfozGDL7IxQ5JsDWk/wlEcubax1jGQEc2evF0OKhTfPvYuB6qX8Ag7dIgxU+ExE
         hX41WhV0qH49o5gtSnU00VzCX3q9csoZd/FX7t0c8SNxy33u9F5q1FAwO3pe+6a/7ULA
         PlNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=gbarmf2Q;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of john.ogness@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=john.ogness@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id w10si384011lfk.12.2021.02.25.23.59.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 23:59:13 -0800 (PST)
Received-SPF: pass (google.com: domain of john.ogness@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, Jeff Dike <jdike@addtoit.com>,
	Richard Weinberger <richard@nod.at>,
	Anton Ivanov <anton.ivanov@cambridgegreys.com>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Kees Cook <keescook@chromium.org>,
	Anton Vorontsov <anton@enomsg.org>, Colin Cross <ccross@android.com>,
	Tony Luck <tony.luck@intel.com>,
	Jason Wessel <jason.wessel@windriver.com>,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Douglas Anderson <dianders@chromium.org>,
	Pavel Tatashin <pasha.tatashin@soleen.com>,
	Joel Stanley <joel@jms.id.au>,
	Christophe Leroy <christophe.leroy@c-s.fr>,
	Jordan Niethe <jniethe5@gmail.com>,
	Alistair Popple <alistair@popple.id.au>,
	Ravi Bangoria <ravi.bangoria@linux.ibm.com>,
	Nicholas Piggin <npiggin@gmail.com>, Mike Rapoport <rppt@kernel.org>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Thomas Meyer <thomas@m3y3r.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Davidlohr Bueso <dave@stgolabs.net>, Oleg Nesterov <oleg@redhat.com>,
	Wei Li <liwei391@huawei.com>,
	Michael Kelley <mikelley@microsoft.com>,
	linuxppc-dev@lists.ozlabs.org, linux-um@lists.infradead.org,
	linux-hyperv@vger.kernel.org, linux-mtd@lists.infradead.org,
	kgdb-bugreport@lists.sourceforge.net,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH next v3 12/15] printk: introduce a kmsg_dump iterator
In-Reply-To: <20210225202438.28985-13-john.ogness@linutronix.de>
References: <20210225202438.28985-1-john.ogness@linutronix.de> <20210225202438.28985-13-john.ogness@linutronix.de>
Date: Fri, 26 Feb 2021 08:59:10 +0100
Message-ID: <87a6rrxnsh.fsf@jogness.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: john.ogness@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=gbarmf2Q;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 john.ogness@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=john.ogness@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Hello,

Thank you kernel test robot!

Despite all of my efforts to carefully construct and test this series,
somehome I managed to miss a compile test with CONFIG_MTD_OOPS. That
kmsg_dumper does require the dumper parameter so that it can use
container_of().

I will discuss this with the printk team. But most likely we will just
re-instate the dumper parameter in the callback.

I apologize for the lack of care on my part.

John Ogness

On 2021-02-26, kernel test robot <lkp@intel.com> wrote:
> Hi John,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on next-20210225]
>
> url:    https://github.com/0day-ci/linux/commits/John-Ogness/printk-remove-logbuf_lock/20210226-043457
> base:    7f206cf3ec2bee4621325cfacb2588e5085c07f5
> config: arm-randconfig-r024-20210225 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a921aaf789912d981cbb2036bdc91ad7289e1523)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://github.com/0day-ci/linux/commit/fc7f655cded40fc98ba5304c200e3a01e8291fb4
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review John-Ogness/printk-remove-logbuf_lock/20210226-043457
>         git checkout fc7f655cded40fc98ba5304c200e3a01e8291fb4
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>>> drivers/mtd/mtdoops.c:277:45: error: use of undeclared identifier 'dumper'
>            struct mtdoops_context *cxt = container_of(dumper,
>                                                       ^
>>> drivers/mtd/mtdoops.c:277:45: error: use of undeclared identifier 'dumper'
>>> drivers/mtd/mtdoops.c:277:45: error: use of undeclared identifier 'dumper'
>    3 errors generated.
>
>
> vim +/dumper +277 drivers/mtd/mtdoops.c
>
> 4b23aff083649e Richard Purdie 2007-05-29  274  
> fc7f655cded40f John Ogness    2021-02-25  275  static void mtdoops_do_dump(enum kmsg_dump_reason reason)
> 2e386e4bac9055 Simon Kagstrom 2009-11-03  276  {
> 2e386e4bac9055 Simon Kagstrom 2009-11-03 @277  	struct mtdoops_context *cxt = container_of(dumper,
> 2e386e4bac9055 Simon Kagstrom 2009-11-03  278  			struct mtdoops_context, dump);
> fc7f655cded40f John Ogness    2021-02-25  279  	struct kmsg_dump_iter iter;
> fc2d557c74dc58 Seiji Aguchi   2011-01-12  280  
> 2e386e4bac9055 Simon Kagstrom 2009-11-03  281  	/* Only dump oopses if dump_oops is set */
> 2e386e4bac9055 Simon Kagstrom 2009-11-03  282  	if (reason == KMSG_DUMP_OOPS && !dump_oops)
> 2e386e4bac9055 Simon Kagstrom 2009-11-03  283  		return;
> 2e386e4bac9055 Simon Kagstrom 2009-11-03  284  
> fc7f655cded40f John Ogness    2021-02-25  285  	kmsg_dump_rewind(&iter);
> fc7f655cded40f John Ogness    2021-02-25  286  
> df92cad8a03e83 John Ogness    2021-02-25  287  	if (test_and_set_bit(0, &cxt->oops_buf_busy))
> df92cad8a03e83 John Ogness    2021-02-25  288  		return;
> fc7f655cded40f John Ogness    2021-02-25  289  	kmsg_dump_get_buffer(&iter, true, cxt->oops_buf + MTDOOPS_HEADER_SIZE,
> e2ae715d66bf4b Kay Sievers    2012-06-15  290  			     record_size - MTDOOPS_HEADER_SIZE, NULL);
> df92cad8a03e83 John Ogness    2021-02-25  291  	clear_bit(0, &cxt->oops_buf_busy);
> 2e386e4bac9055 Simon Kagstrom 2009-11-03  292  
> c1cf1d57d14922 Mark Tomlinson 2020-09-03  293  	if (reason != KMSG_DUMP_OOPS) {
> 2e386e4bac9055 Simon Kagstrom 2009-11-03  294  		/* Panics must be written immediately */
> 2e386e4bac9055 Simon Kagstrom 2009-11-03  295  		mtdoops_write(cxt, 1);
> c1cf1d57d14922 Mark Tomlinson 2020-09-03  296  	} else {
> 2e386e4bac9055 Simon Kagstrom 2009-11-03  297  		/* For other cases, schedule work to write it "nicely" */
> 2e386e4bac9055 Simon Kagstrom 2009-11-03  298  		schedule_work(&cxt->work_write);
> 2e386e4bac9055 Simon Kagstrom 2009-11-03  299  	}
> c1cf1d57d14922 Mark Tomlinson 2020-09-03  300  }
> 4b23aff083649e Richard Purdie 2007-05-29  301  
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87a6rrxnsh.fsf%40jogness.linutronix.de.
