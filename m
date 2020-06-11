Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBR4AQ33QKGQEHH4DD4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF301F5F53
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 02:52:24 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id y69sf3226076pfg.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 17:52:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591836743; cv=pass;
        d=google.com; s=arc-20160816;
        b=AuD3sAWdZLdi12iKK/UlvRvT9+GEgkSJEMwhYp2M9vnXQrnxr0ahLO4i2JcNYNMnKM
         6Uphs72vKThhuHX4bWUsjwYr1JrVGc1iCmGPvb1G8TYMbDNGMRMAZTGrKFwg7TVRA0pn
         qU11lNXu0MH2P2RPCc0jK6U1kK6VGAD98GmLN1LmCo5bN/R4qjW/garGXK0THSPQAVy4
         9ThMzCH3SweUvslBOpHpEazgrd8piUCSRGWh9FXkSfH/VH8ocmFhsEZMFh7qX3YNIh04
         u7tyUuXl5CI+QxrfjEFZ766+duQOfCwBnA7nSJRnANJdrn8wnUpdD72zJLzBz2Gcnkiw
         qLsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=TJ1tDuWB4rRERAAsbHbIhOhxPQC6BEd5leXnrKMBYVk=;
        b=FUYcmxYsWIbRLm5b9MTmtUg2yF7XBDmh9su9LRXQU9A0FjVW+bLVns+DmdTYiGDdWD
         rCWOwGor1H2qDFCSBLRgsSaUGbgg0+l0G0VcjGQ7/8JgTjeBDESzTk/ZOYx6J0xdBb60
         Q258+zq1yn4LLvGoBuCoRRVOYXhn6g30BcEzLr/v0gOZGENGVTYrwER7F55F+btRNqwV
         ehbK9x8OjF7pOvzs2ftXYSs2kxEKfnelORV9kzSCQ2mvtp1jESSPFA3WYTIW5jvxaOaX
         Bzmg0x1L2ckJMkJBHT8h+rdkY2GcqYvv5GyCOQD9KX/c2wqoc5MhXwr9/X2Yw+5lHdJg
         4ERA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TJ1tDuWB4rRERAAsbHbIhOhxPQC6BEd5leXnrKMBYVk=;
        b=Xf1Xz8BRKRPDYVosA/6rcTKg0tCb9+Pvrzoyw0Hb7gZIVrRyhWnmsRa292iLu8WN7e
         sE7F3Bw2YE2BZFwpAZwIi7piLMKNe1zyFs8DYIqXEFfrDAo7UiYG/rKV47rblNt+9teh
         uVg422Gm40HG+VQvQLCxQ3Y1Z0HTRutmrp/d9/UAgELZnIuZ+E3fhN8nyTGhCRAlm4tR
         /kAiKLArLY44wO97jW197S86Wg2ZrniLOiNofgmKwrCXjmNv3j5CxB6XuznaEmt1qdy6
         CJF6yB0teHboaAuetjYAEtVrtt5oHSdEnxLBYiFVCkAKN4xoKQTWKcMyklVSvsDnR3ap
         DDJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TJ1tDuWB4rRERAAsbHbIhOhxPQC6BEd5leXnrKMBYVk=;
        b=Dki8NX3Hz7+AncSc77BI+1/jicgO5evY8yQKhJKfvssynFJjZ9zLXctaF5nWFIG4tf
         +kmolrj6pVsknqIF2Ix9C0xSe0g6/ZvM86oKQDYFOdnnhmIrxLeCUFn2UDYxFq9sKLG2
         K7uqyq8rBhAY30BeO/OQL2gJN+NObIj6UqH/6h4LT4xymnSQ3zG1zHvtJCVAsTY2yHnk
         FnlZk+xUGPhyuz1d0HmdUi/CiQJ4y5u3p6/Sj8RMYGy0OGIcLpx0XszavhADeDzisAGd
         lMFrNXyXfdG8JPGp9Wn4EzGhUssBEIIX79/Blb8tLZBosiCSToKz8rP2OQodz0N9cRog
         C0Vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53050XkdCStGgW7oiFequJwHYDpst1moZNEJa4VJc02ldVcMDOh1
	v6NvNTmFq/B8wdtxKFkMavY=
X-Google-Smtp-Source: ABdhPJyKCGC8kncXcPjOt1IVlo4ggM+Y2Fz+P1Up7OSel1FtKoXeIq8cvNQyBKczvTDBLTTKU5SHmQ==
X-Received: by 2002:a62:7712:: with SMTP id s18mr5129945pfc.145.1591836743572;
        Wed, 10 Jun 2020 17:52:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d015:: with SMTP id z21ls93955pgf.5.gmail; Wed, 10 Jun
 2020 17:52:23 -0700 (PDT)
X-Received: by 2002:a63:7016:: with SMTP id l22mr4715097pgc.284.1591836743090;
        Wed, 10 Jun 2020 17:52:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591836743; cv=none;
        d=google.com; s=arc-20160816;
        b=tsTUfThVR3omvreI8gKPflbgigOa1B+x/MuuLJNHwjUAbhgNnTP4Yx9EaFoJunzVaz
         CpeyrcD3TJyP4hk/ANAtJtkmfG+SR5Ecj4HTTZaGYDlQOVAjlBssek8FzENsqzWe1RLb
         35IHuwsY2GdT+arMLYYkTgx1AxW+PIAKMoeNJWbK1f6WVc5+tabscwL8stS1wCnsmWhb
         1VrTqOqF7yCTwUifzNyTcQiN6peqmBDaK3/+fEcN47xw/Rr/imBvGaH+ev0UvskzIIPf
         rEknUtCpIPrui2w8ngNAmrttDACX+ozcqpIlFvBuwX76zxvqoqFDwX6nprcEZ7GxABk0
         2dgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=8Byp/G4bTejZZ9h/LvS/lWNxPcf7hQQldXBqYbRVlCg=;
        b=UfKVfs8E2ZbVNiDAMrN0tsemJ/x0wksm+32m7DzB1YTcZ8eNM6XSGxKMn2BYdCcWEE
         mCz0qlg14QeIP/mPSvu+pSKYS0ESB0qpkAKno92IrcmcEQWJf/Vav9vaLUIjO4ShiU/k
         7rkcziGh5SDV6Vchq4qRhJ33IF9KlZWnWjkanIdfeRewkoayYF0pMbnEu0f9ptxJnpD1
         5u8vK2xEx53xfaTp1ich0Pf4NkzdJnEhAOijLy6vOZGqD3EdAr8ChjnVoALWUVnb6Qc/
         1Ctgiz7fU8777IX3JXAvXV5npkHylD2nWenS8EYZ3luXe3M8iJsUtkxn+ldIgbofDBMt
         NwMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id gv9si122097pjb.3.2020.06.10.17.52.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jun 2020 17:52:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: n83N+8AvpAH4Gol0OlzGeUyc9oLNEJxK1Uiu4D+GYb1BzZfTSRRa5Btu43QUHeXruhHpQJfbar
 1pdG9LtLQysw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2020 17:52:22 -0700
IronPort-SDR: DkdIxMRTfx+uq+mi4gq3yiv41gM+pAHk0P3lVmerXbZeML9ZweTZfuS2smTIKD7pIcXmpJhfIl
 akLXSX0uI6ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,497,1583222400"; 
   d="scan'208";a="350028769"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga001.jf.intel.com with ESMTP; 10 Jun 2020 17:52:20 -0700
Date: Thu, 11 Jun 2020 08:51:44 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel test robot <lkp@intel.com>,
	Fangrui Song <maskray@google.com>
Subject: Re:
 [linux-review:UPDATE-20200603-033008/Nathan-Chancellor/s390-vdso-Use-LD-instead-of-CC-to-link-vDSO/20200528-140859
 1/1] ld.lld: error: unknown argument '-fPIC'
Message-ID: <20200611005144.GA10966@intel.com>
References: <202006110336.RmmT7Cye%lkp@intel.com>
 <CAKwvOdkn4S_BtizLrur_5S-QT4LWrNn4mOfvw+H9Z2rR9f9nFg@mail.gmail.com>
 <20200610230437.qjbgzv26rcwczyxs@google.com>
 <CAKwvOd=pCUmhhCazgg5bM5QHxeXo40NAwkTqer9MweGhCXkK7w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=pCUmhhCazgg5bM5QHxeXo40NAwkTqer9MweGhCXkK7w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.65 as
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

On Wed, Jun 10, 2020 at 04:30:45PM -0700, Nick Desaulniers wrote:
> On Wed, Jun 10, 2020 at 4:04 PM 'Fangrui Song' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> >
> > On 2020-06-10, 'Nick Desaulniers' via Clang Built Linux wrote:
> > >On Wed, Jun 10, 2020 at 12:43 PM kernel test robot <lkp@intel.com> wrote:
> > >>
> > >> TO: Nathan Chancellor <natechancellor@gmail.com>
> > >> CC: 0day robot <lkp@intel.com>
> > >>
> > >> tree:   https://github.com/0day-ci/linux/commits/UPDATE-20200603-033008/Nathan-Chancellor/s390-vdso-Use-LD-instead-of-CC-to-link-vDSO/20200528-140859
> > >> head:   b19361026b76f9167c9206f654b12f53023550d1
> > >> commit: b19361026b76f9167c9206f654b12f53023550d1 [1/1] s390: vdso: Use $(LD) instead of $(CC) to link vDSO
> > >> config: s390-randconfig-r021-20200607 (attached as .config)
> > >> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bc2b70982be8f5250cd0082a7190f8b417bd4dfe)
> > >> reproduce (this is a W=1 build):
> > >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >>         chmod +x ~/bin/make.cross
> > >>         # install s390 cross compiling tool for clang build
> > >>         # apt-get install binutils-s390-linux-gnu
> > >>         git checkout b19361026b76f9167c9206f654b12f53023550d1
> > >>         # save the attached .config to linux build tree
> > >>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
> > >>
> > >> If you fix the issue, kindly add following tag as appropriate
> > >> Reported-by: kernel test robot <lkp@intel.com>
> > >>
> > >> All errors (new ones prefixed by >>, old ones prefixed by <<):
> > >>
> > >> >> ld.lld: error: unknown argument '-fPIC'
> > >> ld.lld: error: unknown emulation: elf64_s390
> > >
> > >^ is this another inconsistency we have with emulation modes, or is
> > >this completely unsupported in LLD?
> >
> > LLD does not support EM_S390. I don't know anyone is working on it (or
> > is interested at the support).
> 
> Ah right, Nathan confirmed no LLD support for s390. Philip, we may
> need to not use LD=ld.lld for s390.  Not sure about the second error
> message.
Got it, we will remove the usage of ld.lld for s390.

> 
> >
> > > ld.lld: error: unknown argument '-fPIC'
> >
> > There may be a build system bug.
> >
> > In GNU ld, -f --auxillary is an option. -fPIC is not:
> >
> > % ld.bfd -fPIC -shared a.o
> > % readelf -d a.out | grep PIC
> >   0x000000007ffffffd (AUXILIARY)          Auxiliary library: [PIC]
> >
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200611005144.GA10966%40intel.com.
