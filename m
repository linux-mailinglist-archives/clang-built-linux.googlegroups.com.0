Return-Path: <clang-built-linux+bncBCQYDA7264GRBHFBQOEQMGQEI7B363Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7723F3A17
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Aug 2021 12:08:29 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id p23-20020a9d76d70000b0290515774e154dsf6279437otl.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Aug 2021 03:08:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629540508; cv=pass;
        d=google.com; s=arc-20160816;
        b=fWgze9qWfs7CW5Er+Bz7dEHNi5GiLhyCYdE5KDko5TwYQSlvqscD9kJQ0go5N37vNo
         0cg5siU4ZYKEEG1KqggBIFQ2ukIOyOd3KbfR1TSxMK6fPfbyEzPHRS1loKrgple30nZs
         PwAIF4BfcmUh37T5xOWoiFyIdJ2V5fftYrTO+qE+ma12d7Bc6PYWqCRQNAcuUJY+c7rp
         ZLDWUbtjB60qA9jUrQx/1UR2WBapZI0cnAJOCh9Xbnq4kMB1K10mmn42hMd3PJt5NM+Q
         CcaOoEkUmvdHH0+dTJ3F5MGvPcHCVQ/RDQ0ntiMaY8xHTMZQN0s0Iw+0sfqnuglWVqpb
         5tyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LFV7r8nbGnq15+bRjtRvDzcgyDd2w77yQo+oR13oLH4=;
        b=pU0pn+gQ7mqCgkxI2VViQBFNjr8h9tktIwKJFO44FN1vt18/A1NArZBuWl7JpPuUpd
         FxBq4kWWv7QNnZBG2AF1x4Bsc0EoFfDIv2joiAoL1kQ6w8cfdkPJYtTOSLDYcLyxPA2m
         0d4rfuQStOky/ugZw4KmXrY8WbMoEq9juGMIe+KU+d6MXp4Dkw4yHuYBlGSTZ+pNParH
         36bRnSYidj0PngxkoX5DZfPBbgpdZUmMDPZLqV5YlRR/RnExjxGLoX24ylkRXlPuRBW7
         64ef+cAm+EopIDSeGRSEyY1jZQvOq+wbV+l8ebZXWkidIl0nCV/YaCDzMQvxje96EPJj
         y+Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VIekSoWd;
       spf=pass (google.com: domain of mst@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LFV7r8nbGnq15+bRjtRvDzcgyDd2w77yQo+oR13oLH4=;
        b=UUSDDmFH9wf85xCVeKouaO/O+v4ZlO5kAkls++fm+VLf9DkX133NQQZg+P6ibZc8j2
         W3rsGjH89gd+cIH1dJbENdKYeks6Y1vhEKgeLwCQSNPgaQZs+0z+Froc+TJmFv1o/IU4
         omexYTUdPDKI32bjM7Fns2KT3pFBxK0Qg6T1dqVeB3Z++9ENOktLrWgY5iQGCgMFH+k4
         ZUE+06FsktXbhjvefApoINn+auztuDZEsx0L0+Anr9Do5GhJZnTerVZB2SWtU6O/Aivz
         dmXNft46XqJj+CFqB8c4Mz7JrM9jXhmnl5Yo06OTWYmg8REe8xo7XMc0KXcr/Goc7FCk
         67dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LFV7r8nbGnq15+bRjtRvDzcgyDd2w77yQo+oR13oLH4=;
        b=mEveUtuofTzEKZI4zbIbKqSfBlf36qE+ryI9xY8QTVSXk/0CWGSxJ+IR0D/9D2UI2V
         bElvPgEOrjz9aXmQUJnPN3F1XJCUqSxFIYqmoddxDd0huvGUmAAh3DbRuZr2dzaZenkZ
         UW11KcLVROydC5exFt0pHrHk2NN1WsYtBFVXBvfCFXIs2SQ4BothO1ttM4O6DiR/dmsl
         +kQxTxaO2bd+lmvHHMqkDP/PgdOes8yVt5YqwBcn3AJoyjZdeT//AmS5FjsTCNDtmztj
         I/kaxpmvwdFKaPn+heP3b4euNWnZdagnwEW8UEM8DyFN59zWs9yQQTE2BnZWJWLPKOpI
         XieQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kP+aZM7QxTAt09+626CGLzfqVHAftvYLAjNw0T5JuiUMS0oCq
	cQDc/5Mmo6ZLQgQjvDHdOpk=
X-Google-Smtp-Source: ABdhPJxkTf1t8RtdIQOdbm3RJ+9uF+navw+O4AR+mI1d3OCqR/J8ROq7cmqOpdP2kzhkgT/XnQAMtA==
X-Received: by 2002:a4a:434d:: with SMTP id l13mr19413067ooj.83.1629540508841;
        Sat, 21 Aug 2021 03:08:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e87:: with SMTP id n7ls481579otr.4.gmail; Sat, 21
 Aug 2021 03:08:28 -0700 (PDT)
X-Received: by 2002:a9d:1d26:: with SMTP id m35mr6943409otm.176.1629540508450;
        Sat, 21 Aug 2021 03:08:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629540508; cv=none;
        d=google.com; s=arc-20160816;
        b=ZX7bXjR9KIpfvOPtNVxZ3qY1ha9setbEfHLA2yOvaKg5K7LU+Ll+snw8mswpou5qUI
         s9CV9v4EjWm+TQIPSYHF/qrugt52ZzuIXV+s/nsXwLS7XF8u2F7K4u4km+N3w1SMjSbi
         lmBbNZB/aLa6PGxWtJBv2qLleia0O0ULvsMK/Ctakz3btAmHJ1zVZcxvlYSGFjjQdl2j
         Vp1IWZc9sj3QdNS3+sY+/bTe0uSLmgSRAKgT0lOXJc0XOkEV91IHnGuvf5pof94RZGLd
         my6yqCgcs9Xxnk9xnKY5pb+suK3hUT+3VM5cfqRlPrLl9XEqGWHKIhKyUsixgDtiLujG
         CIHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LjTFjU8OAPsGZMuXxxy8OevRdpehe5l4vGjZH9i8Mdw=;
        b=CgMu3dRuekMv6Gm6BM1C7tmmp90HDY1Bedy9+GqeA8GtFeihL+iQhMyccZ5YLQMfIm
         C/7PPOCnmzh7VQtY8vx7FKTduR5K/4DlLAJw43+GTFDzLmVhSbeCMJtLLPbzywr4wR6N
         0XZ89H+ql0bDMwe8vXfwy+CNuKis7SOqAbouFzcgpTgTDI+SWjUSM7gcVcAE6joEGpzc
         7QhaozER73jDI1LlEqBbk5sUMgy6GyxFS1WQ4jhSASF6cAq1zzr/UUWI7G38VpVkdDbl
         lVZOdaWONF58Vm/2CUC0Ihicsayd/GV7lX6ob65jCvNh6D8OjIjb1gf7oXx/m9PLZKQh
         5EXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VIekSoWd;
       spf=pass (google.com: domain of mst@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id s20si663086ois.4.2021.08.21.03.08.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Aug 2021 03:08:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of mst@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-431-aDqCr0O8NASOaE6bzk5bMg-1; Sat, 21 Aug 2021 06:08:24 -0400
X-MC-Unique: aDqCr0O8NASOaE6bzk5bMg-1
Received: by mail-ej1-f69.google.com with SMTP id z5-20020a1709067e4500b005c2512038bcso2566974ejr.19
        for <clang-built-linux@googlegroups.com>; Sat, 21 Aug 2021 03:08:24 -0700 (PDT)
X-Received: by 2002:a05:6402:50c6:: with SMTP id h6mr18746058edb.3.1629540502715;
        Sat, 21 Aug 2021 03:08:22 -0700 (PDT)
X-Received: by 2002:a05:6402:50c6:: with SMTP id h6mr18746046edb.3.1629540502551;
        Sat, 21 Aug 2021 03:08:22 -0700 (PDT)
Received: from redhat.com ([2.55.137.136])
        by smtp.gmail.com with ESMTPSA id c14sm5190263edt.80.2021.08.21.03.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Aug 2021 03:08:21 -0700 (PDT)
Date: Sat, 21 Aug 2021 06:08:15 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: kernel test robot <lkp@intel.com>, Arnd Bergmann <arnd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	"Enrico Weigelt, metux IT consult" <info@metux.net>,
	Viresh Kumar <vireshk@kernel.org>, Jason Wang <jasowang@redhat.com>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Bill Mills <bill.mills@linaro.org>
Subject: Re: [PATCH V5 1/2] gpio: Add virtio-gpio driver
Message-ID: <20210821060804-mutt-send-email-mst@kernel.org>
References: <afc7b34cee856f1ed1a65034f4a9fe705dd04d6a.1628590591.git.viresh.kumar@linaro.org>
 <202108110419.gWPGrCf8-lkp@intel.com>
 <20210811035456.g633otggs5dejfrj@vireshk-i7>
MIME-Version: 1.0
In-Reply-To: <20210811035456.g633otggs5dejfrj@vireshk-i7>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: mst@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VIekSoWd;
       spf=pass (google.com: domain of mst@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=mst@redhat.com;
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

On Wed, Aug 11, 2021 at 09:24:56AM +0530, Viresh Kumar wrote:
> On 11-08-21, 05:01, kernel test robot wrote:
> > Hi Viresh,
> > 
> > I love your patch! Yet something to improve:
> > 
> > [auto build test ERROR on soc/for-next]
> > [also build test ERROR on vhost/linux-next linus/master v5.14-rc5 next-20210810]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Viresh-Kumar/gpio-Add-virtio-based-driver/20210810-182659
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git for-next
> > config: riscv-randconfig-r042-20210810 (attached as .config)
> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 614c7d03877fd99c2de47429b15be3f00306a3bd)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://github.com/0day-ci/linux/commit/4fe66a15717a74f8f876f70595f050b4dffda7ae
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Viresh-Kumar/gpio-Add-virtio-based-driver/20210810-182659
> >         git checkout 4fe66a15717a74f8f876f70595f050b4dffda7ae
> >         # save the attached .config to linux build tree
> >         mkdir build_dir
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=riscv SHELL=/bin/bash drivers/gpio/
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> > >> drivers/gpio/gpio-virtio.c:356:4: error: use of undeclared identifier 'VIRTIO_ID_GPIO'
> >            { VIRTIO_ID_GPIO, VIRTIO_DEV_ANY_ID },
> >              ^
> >    1 error generated.
> 
> I forgot to mention a dependency :(
> 
> https://lore.kernel.org/lkml/61b27e3bc61fb0c9f067001e95cfafc5d37d414a.1627362340.git.viresh.kumar@linaro.org/

Maybe just include it here for completeness.

> -- 
> viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210821060804-mutt-send-email-mst%40kernel.org.
