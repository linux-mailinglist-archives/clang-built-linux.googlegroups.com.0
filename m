Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBV6DRT3AKGQEQXTDZOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id F03781D8BF1
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 02:01:28 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id y10sf4448139otk.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 17:01:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589846487; cv=pass;
        d=google.com; s=arc-20160816;
        b=N5vZc7LRAgqQtyX1w4r9xIbmTj6vP26kkkkKT6FzvJEnxxKOCrrUBRlPs0xiiGOzaQ
         D5J5J39qhP1ZljucBpVpqOvoWwKYZVcmEE2fe60xNnjYgt4h7eW9GnsLMKKz1cuWIOQp
         IA45mfCnpqwSnkK//QAcliyMTx3AwHbzNVVWpfnPtJfOuD8Wmk0I4ihjLwrvxGc8o56y
         fbZddpCIy/hxSYjFBzJ6aq5twx1CgUPe8wIzE/4JzXUA6PAm5w8kibksnvIP+zE9rttr
         2+ecyHsF0LMg01Shwhox8r/pcryDOWGnVtSyganHwRoXGVyWefCyXeT9V3R6jqSo5FU0
         tRpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=HB0Z39hVMW90P/aGfVdk/QUFvtYMl2Df7H/xRu32/qw=;
        b=a3IsUQqaq7rK17/0jd4vsHV7yfy4O0mh9aejY8dtO62vtbjgKp5t2O2TSHaOZUCFAx
         jrLbgboxyvOMIZNsZDkTEHwnL/lH07OFbNMk8R2rcjVdQhXfKKg6cICFYEf5RxTGPcAc
         3xJNoVbaqADOUuFRgZspLJy13XkHWaW5tol8ipV3TqU6hRpOP6Tz7fc6Ea0NsS71kzjc
         R/vMre5ECQxNfReJ/uyw9Z7GqV4C7Fe8I7RlPVGg2CXJvN+768EvuStb2QCztQkaZpRs
         Xt64nZ8rzLWsxAaMvG0Ri6i5EdCnZkqQLueMEkmVzLI+1dcaGz571i5Z7VOZK+lJZ/mO
         n6Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HB0Z39hVMW90P/aGfVdk/QUFvtYMl2Df7H/xRu32/qw=;
        b=XwfM5gn+ZFUJq85mm+vy1vEzLlQqjAWPosC+ZY2eA0ZtlT4NbVWXtOk8lxEUWzrWfo
         doVZFx1Kqs1o3R2UFBtsrSKofTMe1N3WT10wx3dg6VAu3tki0GpRfQzkaX+E3zGA3jx9
         ZgXkMklJ9/9AG37wt3XLxviYCNXXJB3KV0IZNVbq5FZPa346lDoWFIJos7ameT82Gq0N
         Fh8G5YM1WXDkxqGplPae/yaRiP/7Uu2m0thnfXBfgDa+lSTZCyUAOYT3AnrfPpX5pkeM
         K0YmnmdWGkG0LR8I/KFolFL2ITv++37SnI+laJDgZGmmsSt8RKFaC6nNV6XGCxBbh9Mv
         JfWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HB0Z39hVMW90P/aGfVdk/QUFvtYMl2Df7H/xRu32/qw=;
        b=cqvaDg1cbArztrwMK9NTStuy4abGT7y4M+C91UIB7OTjG4h721biQXqQfTx1zubpn0
         g4zDlFEQ+rYsYOQcDIqv5wF1pYA1wsE6fBkUWUzw7RxWLoPKnYfttr+4R/FJhwRDO0jv
         Y9X5saa0vJ5+BMmMoU19uL5c96EAJ3dfE+yz3lg4REjtQ5UvVgewMAFTvJJ94wQqvu/N
         yfts6fLzxYp10gIEh9JDqeVj8i+5QiUdKVQc1HpTEXKmVZw7TkOYCElIUJiBwI2dAOOL
         HuI0i3U3if6aSe6qlqo+jeviZ+q6qYxaczwPS7HbojLOwGVwkfgO3s0K+I6MKl3rRL6V
         24fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533x/g83kDHxD4PMIZhGTl/VgkgDVuWMSeASUlPu9i6hdOlo07kz
	/aC7kCzl2Bv1SvShc9Rouc8=
X-Google-Smtp-Source: ABdhPJyZKKuU8PrnCuWg4hElg84E1vEvi+hcVomf5fMEAk3f3HkrxuQEckkad4wJOP9xwy2feelM8A==
X-Received: by 2002:aca:3756:: with SMTP id e83mr1410384oia.158.1589846487684;
        Mon, 18 May 2020 17:01:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2d81:: with SMTP id g1ls2337525otb.6.gmail; Mon, 18 May
 2020 17:01:27 -0700 (PDT)
X-Received: by 2002:a05:6830:1d69:: with SMTP id l9mr9944060oti.127.1589846487130;
        Mon, 18 May 2020 17:01:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589846487; cv=none;
        d=google.com; s=arc-20160816;
        b=aG18mBYr7mgyM1zDDmYtorFBzEAIIhJmpdR5T3oTkGjzi5OtfMlPxtptM4L4zn6E5P
         AKOMlBi9wchL93VpBY5UFihYICS4t5NTOd9IGac73uxixQuWAgxcmdRwTukiqiwVfUj/
         i6qeGarGZGY7ZUaiPFvPxNhosZ8y7mYO/XEF4GY6HGbj087kGeFUQPXCIVvaCDEfeA2k
         VKGjOrAsOdrCAJ8LuCTg62i8c3W1kjwJ7VuCz4bDCF9uJfG4inUmjqePVHmfktwalr7t
         udDGRsPK33c8B6a4lyam372FiMHZs6h5ka/0FTESic6svjWp6gXBtnINqK1IEsSYNUdg
         aJPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=1eqEHve/XAbZpVklDBSRAPvG0elyU4sGsUCh5eFqQPs=;
        b=EWHn7uygsPMjXtd0rMRYeLFpskZ35OZFtlq5FHhixh3IXJ4mjy9WHy6/am1fUvo6sE
         TYWRV5eBhCYWYlcaL7b5EIcfNel1zuf4cBZ7MxG2zIMm776QMT8Kguvd3C3pkq3zdGqy
         XDDHJppyWIEO8X6kiulpoWgAdjcpvg/MU2F2J1LT3PHK4jmX4X4VWmFl2MoXhT5KBy0d
         4CcZLs18sHTdZwCBkvE1EGaInv8cL212Wl/USdqhtiB67rz0FeugvPPTREq8T9LIgWAs
         Sjv2Qrfoj2LiuM63uf2vP7FtB4uM0lzKW4zBR5nrxFr1mDTXF6YRPI/cW/EOptEuT5cu
         qBzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id z21si401184oop.2.2020.05.18.17.01.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 May 2020 17:01:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: BtlaFOvcOseimMxf0y28ca+q5Vn5VVn+Q1zIEXnMKviLMZVGR2DMVGxvO+tC7Z6xVIHbv4rlOV
 2RyP7HBl20xQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 May 2020 17:01:13 -0700
IronPort-SDR: WcEE0cE4zRKwEJ6qdaVxUFFAXF1R2jw0omueVN6w2wG8ULS1dunUr0sKj7U7Iv7gcIPcHcBYmb
 foUuzt3w/KXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,408,1583222400"; 
   d="scan'208";a="465769387"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga005.fm.intel.com with ESMTP; 18 May 2020 17:01:09 -0700
Date: Tue, 19 May 2020 07:59:49 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [linux-stable-rc:linux-4.4.y 4867/9999] h8300-linux-ld: section
 .notes VMA [00000000004cb880,00000000004cb8a3] overlaps section .bss VMA
 [0000000000468088,00000000005e6053]
Message-ID: <20200518235949.GC30480@intel.com>
References: <20200518004335.GB4344@intel.com>
 <CAKwvOdkg6OKY_aX_vstYZhZL8F+YasDiVY+ZkCgKcFEDwX-Kfw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkg6OKY_aX_vstYZhZL8F+YasDiVY+ZkCgKcFEDwX-Kfw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.126 as
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

On Mon, May 18, 2020 at 10:34:27AM -0700, Nick Desaulniers wrote:
> On Sun, May 17, 2020 at 5:45 PM <philip.li@intel.com> wrote:
> >
> > Hi Nick, want to consult, whether below ld overlaps section is a problem or not?
> > Since the commit looks to be relted to clang.
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.4.y
> > head:   ceb6b0b3f45d368cf15b65cb3d690cffaab7bf38
> > commit: 904ccb4cd1e5d4a46d96f008e00bf681b28150cb [4867/9999] kbuild: fix linker feature test macros when cross compiling with Clang
> > config: h8300-randconfig-c002-20200517 (attached as .config)
> 
> Hi Philip,
> The issue below is different from the MIPS LLD error.  Looks kind of
Thanks for the detail info, we will be back to further check to look
for improvement for bisection for such case.

> similar but:
> 1. this build isn't with LLD, it's binutils h8300-linux-ld
> 2. this build isn't with Clang, because LLVM doesn't support "SuperH"
> (ah, dreamcast)
> 
> Here's the list of supported architectures in LLVM:
> https://github.com/llvm/llvm-project/blob/master/llvm/CMakeLists.txt#L301-L317
> We can probably enable s390 builds in 0day bot.  We've been doing
> build tests in our CI, but not boot tests as buildroot has removed
> support for s390. RISCV, build tests would be good, too.
Got it, we had s390, will add riscv to cover.

> 
> Sparc and Hexagon can't be built yet, but are close.
> 
> Thanks for you and the team's hard work.  0day bot is invaluable to us!
> 
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>, old ones prefixed by <<):
> >
> > h8300-linux-ld: section .init.text LMA [0000000000432808,000000000045d6e5] overlaps section .text LMA [0000000000000158,00000000004cb87d]
> > h8300-linux-ld: section .data VMA [0000000000400000,0000000000432807] overlaps section .text VMA [0000000000000158,00000000004cb87d]
> > >> h8300-linux-ld: section .notes VMA [00000000004cb880,00000000004cb8a3] overlaps section .bss VMA [0000000000468088,00000000005e6053]
> > arch/h8300/kernel/built-in.o: In function `resume_kernel':
> > arch/h8300/kernel/entry.S:318: undefined reference to `TI_PRE_COUNT'
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200518235949.GC30480%40intel.com.
