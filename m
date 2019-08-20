Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBYVS5XVAKGQE6LKENMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7579F95446
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 04:22:27 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id r10sf5770037qte.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 19:22:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566267746; cv=pass;
        d=google.com; s=arc-20160816;
        b=FJoWVqn2+h2BM2TvFjY0jFBDCjNk+0VbzU56WmofiqIiU01G1aY1x68DG8ciQ5JiPk
         hT3w8rQ9qHHV3/1W7BcTzFm4q1cqIHmV1IeVLnV8Yxp67DADHSVo1DeY3zMhhmoAdz7v
         0/q2/2lbFCDwT4QZ045plAKeHAmpdyVvrcCRRnWLocUdZGTFwcq2lRFzwL8mNjAxWRGq
         OE6PtsCUAsrmFIbfwBk4lDSsA/VCJcIhTxuHj0501JpLyqSCn+An0G0aXu5kM645FWIg
         cnQB7hPdqBpxEOwUFpf19fflrgz6epe2Hl+2RNoqrGLXLhG508CGI9Dxzjr8LZ4TSvuG
         r98g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-version:dlp-product:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=aa/k16LM9LJzaDFb+ORScqfZGwtOk/s8lcLCfX0/Ysc=;
        b=JOrhgKlcq71aLk+RUhAvcBCJhOaSeFBZtpavoZSLQh5FwupbINy4w2rCJ08VHGY15V
         ItSW/dNQTcjYkbngftDOj7lz+ad/p4gct1oa5ubfgFMukBXLEuXW1cpovPRqQw081pWh
         vhhE1RmzWhqHfWUnPiD6rSdin+nViLXjVS+cYbHswgF309vwWCk7BHm7CLYRTbFtxH/7
         n8I3g1nWN+h2FpOMjbJ0YEpXVObYYDMkdSOjGMSDAvX29xwCREyMfNVU5Dihc1VrKsTR
         buu5q7iKjE+vomK+7kBdf7iKNpSLFhIRPnSXT1oEBcKAL9TWXooVtb2ItCuViSDVvNhy
         z3Rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:dlp-product
         :dlp-version:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aa/k16LM9LJzaDFb+ORScqfZGwtOk/s8lcLCfX0/Ysc=;
        b=rzXOZzzH/5UP8L+VvGjd9ro1NOzWg4a9LwWPLJRLNewCndrAZKZB7aWPAlS25OZFz6
         1UJK7sOK/DXd0ATTKrikSSQeq0Wkr3wNCfxpLjjpvitM/qOyb9DULfg52wqFA3MXBb8J
         RneMxkVGkqbj6ZsUBaUnpRRsWzpC7Kc3t/jMxCi9yoyb6KDceVwflNuZRXeMC/NgJSdF
         AMp/sNCxTKYBL/2W6I1iCJHqCwyNZliInFxWwpx7rdL+7iu9sD4FHUgtZXx7lQNrKOOE
         vz/CYffQ6dSkhvZqfOR2/9otTEOn6P3FSaSLaR6qkyn2i23iVywALvMdeOZ7kgo8OJ0o
         YlRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-version:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aa/k16LM9LJzaDFb+ORScqfZGwtOk/s8lcLCfX0/Ysc=;
        b=J1KTTcetslvmTxBFndKF7L6gTP0R6rhusXzmxTDt3yU/URI3x14lALIgWVTAVWkiDi
         TvrsoeDa1lWwEUmYu5Ke7eYljGvuIw8d4buiS8IhljYhBsN6iK8/Fo/bvMzwO/Iv//5g
         lqEAa/+0JDytZO0+Dm8zOJ5RPtDXsz20ijyyk2Gl+SXBRjTSWgAheP7L/WuSZH1iDo68
         znuLmMtkbHjsGj6pN8YmqAMnUqJLZ1yAWZs3ucJS25hMNU8Sv6lJjUReZZtS4bzL4P5i
         BilThmL4VIwtS7/PlegDXS3m1p9lRCoD8rumqK4jgoXpAjnTizwQvDCmDsSMzlJ/qQp0
         /9ew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW2inTKt0VcEHA7EZw2K2gWbRTna6ktpryib9icsc25sqHeIY4z
	vOwsb+ejRAN8nmEkCDIhtGk=
X-Google-Smtp-Source: APXvYqx9/oscHZRnPo5cHGwmnGH0PwDaSRdb6vID/jqybebs0QH4sDQ9N+aPaImMoK0i/3EBhyMNRw==
X-Received: by 2002:a37:ad04:: with SMTP id f4mr24773638qkm.144.1566267746513;
        Mon, 19 Aug 2019 19:22:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:129b:: with SMTP id w27ls5225757qki.1.gmail; Mon,
 19 Aug 2019 19:22:26 -0700 (PDT)
X-Received: by 2002:a37:4ed3:: with SMTP id c202mr23995149qkb.457.1566267746243;
        Mon, 19 Aug 2019 19:22:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566267746; cv=none;
        d=google.com; s=arc-20160816;
        b=JralPGXtMIXfa1jN9hM1UveeoZ1hHZGfmiUoj7ibEFUgBsSaWN5qmKkHPY9R8GuRAl
         UsVkc1neFDXwZRsORYTpB+IxJhrVej/nHW0+tbQ16rqzUCDgur/SNzJrTqVmbseklYYL
         rwmvRtmgYrjpWLzn6/C4DbTnfgvLox+p7RjTOzg8RuO5WH2I1eXDCYkA18iCLh8IIkqT
         FvoJBJarV/cXQEUCHsVxZCU2Upi4YoiZeNnNo/zn0RtaopWvPCg4iVE/A3DWZB/qSoCY
         UKMrklWOzuti0hyA4PgBOcxUh4FEEKe5xyD9EhKbeoADy+/BHY+Qn/c2oifElcpt94tC
         V84g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-version
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from;
        bh=eGS3xw3kTBeOiST1ITz35n20rwdo7UZkRhyqEYJGjX4=;
        b=DoaYwCkQd30p8sMbzsevAVfx/Qs8O3Ee0Y8wMggKqbOV8N3NL6Gsa9UC3eMFF4SaBN
         +frriA/eJ5+yjTecGu2I7BMzcqB4OywduOXPyhnhgFunYEeDlRRC0csDmiXR/623QP2W
         E8GoPtPAEC0u8uc0QL4xfm0t2lnHZQXaSFFpWYAU/rZ7/ow6eUhQSsYR65VfcoS5V4EO
         PaFYW28f58t7eCMkeolXoVl0XPIbfB/Xf2tA+XnQ2XsIoRCR+HO/hHz8XnYi9+rmpsSR
         2TOgrH0P9i5+0uWvwGCjgqaGjHL1pUBRSaakBqe5PZB2SABe/yk8IPCg65QneTkbmDPF
         b+HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id 37si1002602qtv.2.2019.08.19.19.22.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Aug 2019 19:22:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Aug 2019 19:22:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,407,1559545200"; 
   d="scan'208";a="195666467"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
  by fmsmga001.fm.intel.com with ESMTP; 19 Aug 2019 19:22:24 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 19 Aug 2019 19:22:24 -0700
Received: from shsmsx103.ccr.corp.intel.com (10.239.4.69) by
 FMSMSX155.amr.corp.intel.com (10.18.116.71) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 19 Aug 2019 19:22:24 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.19]) by
 SHSMSX103.ccr.corp.intel.com ([169.254.4.139]) with mapi id 14.03.0439.000;
 Tue, 20 Aug 2019 10:22:22 +0800
From: "Li, Philip" <philip.li@intel.com>
To: Roman Kiryanov <rkir@google.com>, Nick Desaulniers
	<ndesaulniers@google.com>
CC: Paul Lawrence <paullawrence@google.com>, "kbuild@01.org" <kbuild@01.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>, lkp <lkp@intel.com>,
	Andrey Konovalov <andreyknvl@google.com>
Subject: RE: [android-goldfish:b120914098 38/99] kernel/memremap.c:312:2:
 error: implicit declaration of function 'kasan_remove_zero_shadow'
Thread-Topic: [android-goldfish:b120914098 38/99] kernel/memremap.c:312:2:
 error: implicit declaration of function 'kasan_remove_zero_shadow'
Thread-Index: AQHVVqwKZqwHYwcT1kaZHrfrKgPmwKcDTqZw
Date: Tue, 20 Aug 2019 02:22:21 +0000
Message-ID: <831EE4E5E37DCC428EB295A351E66249520C57CA@shsmsx102.ccr.corp.intel.com>
References: <201908140530.i8rXFzLC%lkp@intel.com>
 <CAKwvOdkCKhCHjteLwDZMon1zo+DAn=M2PGGsrpvs6e=jgXV4=g@mail.gmail.com>
 <CAL=UVf7GjkROhqHymay_QCE_8oR9JpB_OtG6_PF6ePqgNXeArw@mail.gmail.com>
 <CAKwvOdmmZZsGUV69msTYx8nOooijFcZLHA0+OSiiv4cqbMSNew@mail.gmail.com>
 <CAOGAQeq_6Txt+Gn98+TMwh74dBGqrOrNSZyrFvHnYK+wF2C5dQ@mail.gmail.com>
In-Reply-To: <CAOGAQeq_6Txt+Gn98+TMwh74dBGqrOrNSZyrFvHnYK+wF2C5dQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjVlNDJkZjUtNzhmZi00N2RiLThiNDctYjNkYzNhYjQ3N2Q4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTVNNbXZDOUI0MzBYcFdPNkN6WTZzR0JCUkdqNU5FSVFUcHhKRFJDU2plRm4yXC9RMndVVlVMbVphMVJRYzM2NzUifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.151 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

> Subject: Re: [android-goldfish:b120914098 38/99] kernel/memremap.c:312:2: error:
> implicit declaration of function 'kasan_remove_zero_shadow'
> 
> Hi Nick,
> 
> thank you for looking into this. We (goldfish) are not aware about
> these warnings.
> 
> Our build log is here and I don't see "kasan" there:
> 
> https://android-
> build.googleplex.com/builds/submitted/5812540/kernel/latest/view/logs/build.log
> 
> We use
> 
> arch/x86/configs/x86_64_ranchu_defconfig with build.config.goldfish.x86_64
> arch/arm64/configs/arm64_ranchu_defconfig with build.config.goldfish.arm64
> 
> Could you please point where x86_64-rhel-7.6 comes from?
Hi Roman, this kconfig is from 0-day CI, since we test various kconfigs for
possible issues.

> 
> Regards,
> Roman.
> 
> On Tue, Aug 13, 2019 at 2:32 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, Aug 13, 2019 at 2:27 PM Paul Lawrence <paullawrence@google.com>
> wrote:
> > >
> > > It wasn't me officer, I was just carrying this for someone else.
> > >
> > > See https://android-review.googlesource.com/c/kernel/common/+/989989
> > >
> > > Note the real culprit is Andrey Konovalov, now cc'd on this thread.
> >
> > oh, right.
> >
> > Notice also:
> > tree:   https://android.googlesource.com/kernel/goldfish b120914098
> > config: x86_64-rhel-7.6 (attached as .config)
> >
> > Is the goldfish team aware or observing the warning currently with
> > their configs?
> >
> > >
> > > Paul
> > >
> > > On Tue, Aug 13, 2019 at 2:21 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > >>
> > >> Here he is officer, guilty as charged. ;)
> > >>
> > >> On Tue, Aug 13, 2019 at 2:14 PM kbuild test robot <lkp@intel.com> wrote:
> > >> >
> > >> > CC: kbuild-all@01.org
> > >> > BCC: philip.li@intel.com
> > >> > TO: Paul Lawrence <paullawrence@google.com>
> > >> >
> > >> > tree:   https://android.googlesource.com/kernel/goldfish b120914098
> > >> > head:   88590f0a97d55a7156cdb09e9d5ecb8d829826e0
> > >> > commit: 69c0f72d6ca84158e4cd691fe31db5d0170d38b9 [38/99]
> BACKPORT: kernel/memremap, kasan: make ZONE_DEVICE with work with
> KASAN
> > >> > config: x86_64-rhel-7.6 (attached as .config)
> > >> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project
> 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > >> > reproduce:
> > >> >         git checkout 69c0f72d6ca84158e4cd691fe31db5d0170d38b9
> > >> >         # save the attached .config to linux build tree
> > >> >         make ARCH=x86_64
> > >> >
> > >> > If you fix the issue, kindly add following tag
> > >> > Reported-by: kbuild test robot <lkp@intel.com>
> > >> >
> > >> > All errors (new ones prefixed by >>):
> > >> >
> > >> >    In file included from kernel/memremap.c:21:
> > >> >    include/linux/swapops.h:327:22: warning: section attribute is specified on
> redeclared variable [-Wsection]
> > >> >    extern atomic_long_t num_poisoned_pages __read_mostly;
> > >> >                         ^
> > >> >    include/linux/mm.h:2551:22: note: previous declaration is here
> > >> >    extern atomic_long_t num_poisoned_pages;
> > >> >                         ^
> > >> > >> kernel/memremap.c:312:2: error: implicit declaration of function
> 'kasan_remove_zero_shadow' [-Werror,-Wimplicit-function-declaration]
> > >> >            kasan_remove_zero_shadow(__va(align_start), align_size);
> > >> >            ^
> > >> > >> kernel/memremap.c:448:10: error: implicit declaration of function
> 'kasan_add_zero_shadow' [-Werror,-Wimplicit-function-declaration]
> > >> >            error = kasan_add_zero_shadow(__va(align_start), align_size);
> > >> >                    ^
> > >> >    kernel/memremap.c:481:2: error: implicit declaration of function
> 'kasan_remove_zero_shadow' [-Werror,-Wimplicit-function-declaration]
> > >> >            kasan_remove_zero_shadow(__va(align_start), align_size);
> > >> >            ^
> > >> >    1 warning and 3 errors generated.
> > >> >
> > >> > vim +/kasan_remove_zero_shadow +312 kernel/memremap.c
> > >> >
> > >> >    285
> > >> >    286  #define for_each_device_pfn(pfn, map) \
> > >> >    287          for (pfn = pfn_first(map); pfn < pfn_end(map); pfn++)
> > >> >    288
> > >> >    289  static void devm_memremap_pages_release(struct device *dev,
> void *data)
> > >> >    290  {
> > >> >    291          struct page_map *page_map = data;
> > >> >    292          struct resource *res = &page_map->res;
> > >> >    293          resource_size_t align_start, align_size;
> > >> >    294          struct dev_pagemap *pgmap = &page_map->pgmap;
> > >> >    295          unsigned long pfn;
> > >> >    296
> > >> >    297          for_each_device_pfn(pfn, page_map)
> > >> >    298                  put_page(pfn_to_page(pfn));
> > >> >    299
> > >> >    300          if (percpu_ref_tryget_live(pgmap->ref)) {
> > >> >    301                  dev_WARN(dev, "%s: page mapping is still live!\n",
> __func__);
> > >> >    302                  percpu_ref_put(pgmap->ref);
> > >> >    303          }
> > >> >    304
> > >> >    305          /* pages are dead and unused, undo the arch mapping */
> > >> >    306          align_start = res->start & ~(SECTION_SIZE - 1);
> > >> >    307          align_size = ALIGN(res->start + resource_size(res),
> SECTION_SIZE)
> > >> >    308                  - align_start;
> > >> >    309
> > >> >    310          mem_hotplug_begin();
> > >> >    311          arch_remove_memory(align_start, align_size);
> > >> >  > 312          kasan_remove_zero_shadow(__va(align_start), align_size);
> > >> >    313          mem_hotplug_done();
> > >> >    314
> > >> >    315          untrack_pfn(NULL, PHYS_PFN(align_start), align_size);
> > >> >    316          pgmap_radix_release(res, -1);
> > >> >    317          dev_WARN_ONCE(dev, pgmap->altmap && pgmap->altmap-
> >alloc,
> > >> >    318                          "%s: failed to free all reserved pages\n", __func__);
> > >> >    319  }
> > >> >    320
> > >> >    321  /* assumes rcu_read_lock() held at entry */
> > >> >    322  struct dev_pagemap *find_dev_pagemap(resource_size_t phys)
> > >> >    323  {
> > >> >    324          struct page_map *page_map;
> > >> >    325
> > >> >    326          WARN_ON_ONCE(!rcu_read_lock_held());
> > >> >    327
> > >> >    328          page_map = radix_tree_lookup(&pgmap_radix,
> PHYS_PFN(phys));
> > >> >    329          return page_map ? &page_map->pgmap : NULL;
> > >> >    330  }
> > >> >    331
> > >> >    332  /**
> > >> >    333   * devm_memremap_pages - remap and provide memmap backing
> for the given resource
> > >> >    334   * @dev: hosting device for @res
> > >> >    335   * @res: "host memory" address range
> > >> >    336   * @ref: a live per-cpu reference count
> > >> >    337   * @altmap: optional descriptor for allocating the memmap from
> @res
> > >> >    338   *
> > >> >    339   * Notes:
> > >> >    340   * 1/ @ref must be 'live' on entry and 'dead' before
> devm_memunmap_pages() time
> > >> >    341   *    (or devm release event). The expected order of events is that
> @ref has
> > >> >    342   *    been through percpu_ref_kill() before
> devm_memremap_pages_release(). The
> > >> >    343   *    wait for the completion of all references being dropped and
> > >> >    344   *    percpu_ref_exit() must occur after
> devm_memremap_pages_release().
> > >> >    345   *
> > >> >    346   * 2/ @res is expected to be a host memory range that could
> feasibly be
> > >> >    347   *    treated as a "System RAM" range, i.e. not a device mmio range,
> but
> > >> >    348   *    this is not enforced.
> > >> >    349   */
> > >> >    350  void *devm_memremap_pages(struct device *dev, struct resource
> *res,
> > >> >    351                  struct percpu_ref *ref, struct vmem_altmap *altmap)
> > >> >    352  {
> > >> >    353          resource_size_t align_start, align_size, align_end;
> > >> >    354          unsigned long pfn, pgoff, order;
> > >> >    355          pgprot_t pgprot = PAGE_KERNEL;
> > >> >    356          struct dev_pagemap *pgmap;
> > >> >    357          struct page_map *page_map;
> > >> >    358          int error, nid, is_ram, i = 0;
> > >> >    359          struct dev_pagemap *conflict_pgmap;
> > >> >    360
> > >> >    361          align_start = res->start & ~(SECTION_SIZE - 1);
> > >> >    362          align_size = ALIGN(res->start + resource_size(res),
> SECTION_SIZE)
> > >> >    363                  - align_start;
> > >> >    364          align_end = align_start + align_size - 1;
> > >> >    365
> > >> >    366          conflict_pgmap = get_dev_pagemap(PHYS_PFN(align_start),
> NULL);
> > >> >    367          if (conflict_pgmap) {
> > >> >    368                  dev_WARN(dev, "Conflicting mapping in same
> section\n");
> > >> >    369                  put_dev_pagemap(conflict_pgmap);
> > >> >    370                  return ERR_PTR(-ENOMEM);
> > >> >    371          }
> > >> >    372
> > >> >    373          conflict_pgmap = get_dev_pagemap(PHYS_PFN(align_end),
> NULL);
> > >> >    374          if (conflict_pgmap) {
> > >> >    375                  dev_WARN(dev, "Conflicting mapping in same
> section\n");
> > >> >    376                  put_dev_pagemap(conflict_pgmap);
> > >> >    377                  return ERR_PTR(-ENOMEM);
> > >> >    378          }
> > >> >    379
> > >> >    380          is_ram = region_intersects(align_start, align_size,
> > >> >    381                  IORESOURCE_SYSTEM_RAM, IORES_DESC_NONE);
> > >> >    382
> > >> >    383          if (is_ram != REGION_DISJOINT) {
> > >> >    384                  WARN_ONCE(1, "%s attempted on %s region %pr\n",
> __func__,
> > >> >    385                                  is_ram == REGION_MIXED ? "mixed" : "ram",
> res);
> > >> >    386                  return ERR_PTR(-ENXIO);
> > >> >    387          }
> > >> >    388
> > >> >    389          if (!ref)
> > >> >    390                  return ERR_PTR(-EINVAL);
> > >> >    391
> > >> >    392          page_map =
> devres_alloc_node(devm_memremap_pages_release,
> > >> >    393                          sizeof(*page_map), GFP_KERNEL,
> dev_to_node(dev));
> > >> >    394          if (!page_map)
> > >> >    395                  return ERR_PTR(-ENOMEM);
> > >> >    396          pgmap = &page_map->pgmap;
> > >> >    397
> > >> >    398          memcpy(&page_map->res, res, sizeof(*res));
> > >> >    399
> > >> >    400          pgmap->dev = dev;
> > >> >    401          if (altmap) {
> > >> >    402                  memcpy(&page_map->altmap, altmap, sizeof(*altmap));
> > >> >    403                  pgmap->altmap = &page_map->altmap;
> > >> >    404          }
> > >> >    405          pgmap->ref = ref;
> > >> >    406          pgmap->res = &page_map->res;
> > >> >    407          pgmap->type = MEMORY_DEVICE_HOST;
> > >> >    408          pgmap->page_fault = NULL;
> > >> >    409          pgmap->page_free = NULL;
> > >> >    410          pgmap->data = NULL;
> > >> >    411
> > >> >    412          mutex_lock(&pgmap_lock);
> > >> >    413          error = 0;
> > >> >    414
> > >> >    415          foreach_order_pgoff(res, order, pgoff) {
> > >> >    416                  struct dev_pagemap *dup;
> > >> >    417
> > >> >    418                  rcu_read_lock();
> > >> >    419                  dup = find_dev_pagemap(res->start +
> PFN_PHYS(pgoff));
> > >> >    420                  rcu_read_unlock();
> > >> >    421                  if (dup) {
> > >> >    422                          dev_err(dev, "%s: %pr collides with mapping
> for %s\n",
> > >> >    423                                          __func__, res, dev_name(dup->dev));
> > >> >    424                          error = -EBUSY;
> > >> >    425                          break;
> > >> >    426                  }
> > >> >    427                  error = __radix_tree_insert(&pgmap_radix,
> > >> >    428                                  PHYS_PFN(res->start) + pgoff, order,
> page_map);
> > >> >    429                  if (error) {
> > >> >    430                          dev_err(dev, "%s: failed: %d\n", __func__, error);
> > >> >    431                          break;
> > >> >    432                  }
> > >> >    433          }
> > >> >    434          mutex_unlock(&pgmap_lock);
> > >> >    435          if (error)
> > >> >    436                  goto err_radix;
> > >> >    437
> > >> >    438          nid = dev_to_node(dev);
> > >> >    439          if (nid < 0)
> > >> >    440                  nid = numa_mem_id();
> > >> >    441
> > >> >    442          error = track_pfn_remap(NULL, &pgprot,
> PHYS_PFN(align_start), 0,
> > >> >    443                          align_size);
> > >> >    444          if (error)
> > >> >    445                  goto err_pfn_remap;
> > >> >    446
> > >> >    447          mem_hotplug_begin();
> > >> >  > 448          error = kasan_add_zero_shadow(__va(align_start),
> align_size);
> > >> >    449          if (error) {
> > >> >    450                  mem_hotplug_done();
> > >> >    451                  goto err_kasan;
> > >> >    452          }
> > >> >    453          error = arch_add_memory(nid, align_start, align_size, false);
> > >> >    454          if (!error)
> > >> >    455                  move_pfn_range_to_zone(&NODE_DATA(nid)-
> >node_zones[ZONE_DEVICE],
> > >> >    456                                          align_start >> PAGE_SHIFT,
> > >> >    457                                          align_size >> PAGE_SHIFT);
> > >> >    458          mem_hotplug_done();
> > >> >    459          if (error)
> > >> >    460                  goto err_add_memory;
> > >> >    461
> > >> >    462          for_each_device_pfn(pfn, page_map) {
> > >> >    463                  struct page *page = pfn_to_page(pfn);
> > >> >    464
> > >> >    465                  /*
> > >> >    466                   * ZONE_DEVICE pages union ->lru with a ->pgmap
> back
> > >> >    467                   * pointer.  It is a bug if a ZONE_DEVICE page is ever
> > >> >    468                   * freed or placed on a driver-private list.  Seed the
> > >> >    469                   * storage with LIST_POISON* values.
> > >> >    470                   */
> > >> >    471                  list_del(&page->lru);
> > >> >    472                  page->pgmap = pgmap;
> > >> >    473                  percpu_ref_get(ref);
> > >> >    474                  if (!(++i % 1024))
> > >> >    475                          cond_resched();
> > >> >    476          }
> > >> >    477          devres_add(dev, page_map);
> > >> >    478          return __va(res->start);
> > >> >    479
> > >> >    480   err_add_memory:
> > >> >    481          kasan_remove_zero_shadow(__va(align_start), align_size);
> > >> >    482   err_kasan:
> > >> >    483          untrack_pfn(NULL, PHYS_PFN(align_start), align_size);
> > >> >    484   err_pfn_remap:
> > >> >    485   err_radix:
> > >> >    486          pgmap_radix_release(res, pgoff);
> > >> >    487          devres_free(page_map);
> > >> >    488          return ERR_PTR(error);
> > >> >    489  }
> > >> >    490  EXPORT_SYMBOL_GPL(devm_memremap_pages);
> > >> >    491
> > >> >
> > >> > ---
> > >> > 0-DAY kernel test infrastructure                Open Source Technology
> Center
> > >> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> > >>
> > >>
> > >>
> > >> --
> > >> Thanks,
> > >> ~Nick Desaulniers
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/831EE4E5E37DCC428EB295A351E66249520C57CA%40shsmsx102.ccr.corp.intel.com.
