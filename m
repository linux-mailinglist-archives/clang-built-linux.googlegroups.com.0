Return-Path: <clang-built-linux+bncBCZNB4MJSMHRBHNF5CEAMGQE4JSWLNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D303ECF4C
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 09:24:14 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id l24-20020ac84a98000000b00298c09593afsf953194qtq.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 00:24:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629098653; cv=pass;
        d=google.com; s=arc-20160816;
        b=Idmb0HNhsDuGJ5Or95q1LXotGF7J6TyNQhE1aYyEp/0Gms/Z1PShyATeFjW6OFnTK6
         TiTybdrA5SsZAdtjRdNURzVxjP+0QddmcFkfv+RRg0rdHjC4eJDOJNL0GmN0B10gfAyx
         AAvOWFKn7ab4ewHdzNk3io0flbc2muz+Ff/74SsFVeO9AHOG38fISUptcX6k4alswsoT
         XG2a6edA8+Xi+YeRAHUGTVdDV0FLpRlN4GGAXEGDttykt9BnwouQ9H8sns8ySxRowhni
         a03jDK4ZLa97zafYjgME8T0+/syJN6Gouja/Av26g7OcqQuvFxo2GP5I9tuxsc7ZDVmm
         yITg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=auXUIPM/H2Vt7R0/V2eLDEwstWpMZ8iUlRbr4nFb3AE=;
        b=LgwlS8lZqk8Uoiu0jQYI6ftIvhzNPOpR7wXuc+Q/kD8ZaMS8Ka4JIprqm5XqTCn9zd
         A/q4iwbg0lpwKwULkQOk6E0YyUcDFCGMryLCtiN84uyEwfXgR8e/9ktj8q92DqVcyZmI
         XVrgjdGnXkthWxUPu8KLt0Z5nxExtP0+KgNNu/PxBE/0VhBQsvIMEn4Tnpnr4L7mROHN
         cblPSdQ0uTpC9ioUP6/sufZEox+28AgpPF7hSLofoYL/bXhYVBNkW/qTXSS/yar23fhh
         5fYHvaUN1lyyMfG9IxbqyjaBkckS7eJg03MP0qIcGL64kmTEP00HcrxF4Uoa7da33Nw7
         IMCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ebLnHCkL;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=auXUIPM/H2Vt7R0/V2eLDEwstWpMZ8iUlRbr4nFb3AE=;
        b=UPJMOtx+vmWx4Q4QNTTvgibrwxGLdfmD9dxER/uXVBtgq5xqYcwawZuFOj1TnrpgLM
         FSdcI6qKl6XmduMy9e/cmlnPPiUDGGuBMjhxweB6ajfGaYX+CRUXiIXsakHElUgbqAOK
         E1rI+FbB2ZFH1v76WfLwDBaHyDPtYzzUKyTt2u+AItoFvKy9ClGfU7FhhSIKAncm37tf
         4lOFnvzkkXFmJwZaGWkBIaVVsiNv7JrExUTBLqEk6EErTuD0XaRkcQTTKO/R83/ZIOnz
         C2A2NV1HtSZkVKJxeKihy60uDKSM4tGMcoEHmC/wu/bP2UQitYBm/kt7vkbIzlg4OIWr
         NgdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=auXUIPM/H2Vt7R0/V2eLDEwstWpMZ8iUlRbr4nFb3AE=;
        b=GkQdlWsL+8Iqnpl3ETf37qopH/5cxNAb+3HkIgzuh88uVv+Mv4pmwDab1AZD1tLnj1
         8aZrWw9rlEH1UUK4Rv+BowUU4Ld4rGInaVvEyhMTAeViBwL2373okaAcdexvChWjtqnr
         bK5/kBTIyiuNgU4KmFSYd3HColJPBI0Mal/0BbLODi0jdc2ZUjYjhYOytC2nFvr0TXRf
         A/HIAxUB4Ba1BMwjR6z/SuFfDY1yp68F2mXcBegaIsEBiHIr1eupx9eiZwIHo6m9sJBi
         +hF/jzNTGRqR8xfwUFZiAZhFkf1xSN1oKcABv7sx9COHryQBqu8VP7cwVqDD8JiogTn5
         qR+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314WApIIPEfbZDIudMA4xkjkWfD4Gic/tSxNtgMMa0DAK4U77p0
	8bDxNXoFmVd1cqEd49oGSZQ=
X-Google-Smtp-Source: ABdhPJy/Lz80jGmebJk763/+c9cO1gPQUu2mAwgyDuPIvIGZUaVtQhuIIZxRN5Iei/TNWV1CcEiO4g==
X-Received: by 2002:ac8:5901:: with SMTP id 1mr12487039qty.156.1629098653506;
        Mon, 16 Aug 2021 00:24:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2699:: with SMTP id c25ls4918018qkp.0.gmail; Mon,
 16 Aug 2021 00:24:13 -0700 (PDT)
X-Received: by 2002:a37:ab15:: with SMTP id u21mr440317qke.439.1629098653086;
        Mon, 16 Aug 2021 00:24:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629098653; cv=none;
        d=google.com; s=arc-20160816;
        b=BNmlxAKeN2QbMw5yRQwjY0SyyFWD7QW2esLickdZLjY9+KTLE2sQbtk74u8y5HC6/M
         KcbMmd1nC1UYS/NPoG1Q97YgZltgKYQotcVU4GBV+68Js/wXaJ1T64NWqNX70CoPCAu6
         qYkXMtGBnnkyWYno9KlDVYLuyZnI7ljl2Gv4YGPCV3rHNZD8e9O+gTbaRKxyXVCgXtyr
         /TbXD9TJ7cqvJsron1iOv4X7xHYLiIDVbqNtlR7i8pB66RwRhUAWZVjhzNwcUCoV88xU
         Wo1zN6uafjqMbUwyi1d/VOVK4Rfokfrv2wgTbBKRap9fdsq5WkNATL3FIpP44lPTO+XH
         vKzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=raXZ9wS6uRXZ08WEw0+7FaHAEkjqyrsEFRdbyxNvvYc=;
        b=oo/vhKrYsCZr9t7tyJU2NN0Y1GB4yq+bdUlXQjX+SmMae26YiCKTkf8syUl13/fgGp
         f3cyZlLE7NIVJq2PJmXA5cRdq5xtyMrBRvfgmkkOHnMCVRYbqKDTnYIeIYoGg3GWdYke
         Ak/T0MAgxNN0XLRxM/vNp8VSmGmQUopxCac3Z33oQw1GvPww0Xv0OtHHB2RFBADE2CHV
         3uSmL0mtx7kYF7E+3lmoSJY9SZzxOpCIkT73f7OIfsGbD4blahMAvTgL3ZBArpuGNMiI
         mmzwG8bJ+bRJhymZkA7ilfdugkrq8g+NkOvOw7R2WhqoggqivRWLZLK6AIkLGn5VD1xO
         AJ9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ebLnHCkL;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id z2si504812qkf.2.2021.08.16.00.24.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 00:24:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-73-_xQKX4D_OlmmXZEwXg89XQ-1; Mon, 16 Aug 2021 03:24:09 -0400
X-MC-Unique: _xQKX4D_OlmmXZEwXg89XQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C363E8799E0;
	Mon, 16 Aug 2021 07:24:07 +0000 (UTC)
Received: from T590 (ovpn-8-40.pek2.redhat.com [10.72.8.40])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E48C5D6D5;
	Mon, 16 Aug 2021 07:23:59 +0000 (UTC)
Date: Mon, 16 Aug 2021 15:23:53 +0800
From: Ming Lei <ming.lei@redhat.com>
To: kernel test robot <lkp@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Jens Axboe <axboe@kernel.dk>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
	Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 7/7] blk-mq: build default queue map via
 group_cpus_evenly()
Message-ID: <YRoSiXYhcIsvPNX6@T590>
References: <20210814123532.229494-8-ming.lei@redhat.com>
 <202108150441.EPrLDMTH-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108150441.EPrLDMTH-lkp@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ebLnHCkL;
       spf=pass (google.com: domain of ming.lei@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Sun, Aug 15, 2021 at 04:49:25AM +0800, kernel test robot wrote:
> Hi Ming,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on tip/irq/core]
> [also build test ERROR on next-20210813]
> [cannot apply to block/for-next linux/master linus/master v5.14-rc5]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Ming-Lei/genirq-affinity-abstract-new-API-from-managed-irq-affinity-spread/20210814-203741
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 04c2721d3530f0723b4c922a8fa9f26b202a20de
> config: riscv-buildonly-randconfig-r005-20210814 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 1f7b25ea76a925aca690da28de9d78db7ca99d0c)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/46b1d0ed609db266f6f18e7156c4f294bf6c4502
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Ming-Lei/genirq-affinity-abstract-new-API-from-managed-irq-affinity-spread/20210814-203741
>         git checkout 46b1d0ed609db266f6f18e7156c4f294bf6c4502
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>):
> 
>    In file included from block/blk-mq-cpumap.c:13:
> >> include/linux/group_cpus.h:17:26: error: implicit declaration of function 'kcalloc' [-Werror,-Wimplicit-function-declaration]
>            struct cpumask *masks = kcalloc(numgrps, sizeof(*masks), GFP_KERNEL);
>                                    ^
>    include/linux/group_cpus.h:17:26: note: did you mean 'kvcalloc'?
>    include/linux/mm.h:827:21: note: 'kvcalloc' declared here
>    static inline void *kvcalloc(size_t n, size_t size, gfp_t flags)
>                        ^
>    In file included from block/blk-mq-cpumap.c:13:
> >> include/linux/group_cpus.h:17:18: warning: incompatible integer to pointer conversion initializing 'struct cpumask *' with an expression of type 'int' [-Wint-conversion]
>            struct cpumask *masks = kcalloc(numgrps, sizeof(*masks), GFP_KERNEL);
>                            ^       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Will fix it in next version, and it can be done by include <linux/slab.h> into
include/linux/group_cpus.h.


Thanks,
Ming

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YRoSiXYhcIsvPNX6%40T590.
