Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBONDRP2AKGQEJO42W3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F47198B99
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 07:14:35 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id z8sf21349911ybi.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 22:14:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585631674; cv=pass;
        d=google.com; s=arc-20160816;
        b=I06F2KPDchggnvkYt3EmKS67kJuxGRMKZT8jeUpROFtKHXW+nuCm6rD9Mt41eR2zBX
         6ZibApaKWtMgfmZJ9QlydxThezsU/5BjxofejJqaI8y5uuctmuC5n9xBckKRXGFIRIyG
         5DYrbE5Gqh68wDankF78nzzM6Jv5g7XzS7fa99/5inOOuPghs8HuokjvqmLwvI0V4t/t
         qxHPzaOKhl2S1lSuEGlvj1BktNexlH6Qa53GUPJFA9FNAd+kGZKehFc0vydUnDKdygt2
         Rrdqrb6/vmdDgIN3iwfJR3fTPnJPD9wgZeuuTd+AKMwtr25zsmwMQTpO5DrSlLgytFNk
         bhww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=IYgOu6Vj6HhhQu+Esc/7F/cIwlUMcl9yTd9y/bRWr8c=;
        b=hUJ9QfmJku38GblUcYWV9wAw1lSVeRB3jJ5OzFtuAhz1iXQA1XLIcRDy5WU72cEH5Z
         AEC0jooyXbRLoL7e/U+J+YT+tYxbITbcMFZsvYb2JXBGb2q63CbCU9AYejKxxmKPvA4t
         xxZ8KwYm5ImJuP0Wn0qwsolJC0goZXyT8fjRQtb7CD2Dn9jSgau9GuTMN57ae6VbcI9h
         TmsWV02MIXF6tbBKxmpJyhMftLeTWJzATdINtA+paTDFLyRj/n9OMxHT8i4ueRR0cK4l
         642SQ8j+stW1LO5dTtiaGDn/NhRWWI9u8c7g1sONLE0tWgY640qXeqXQZKDx/apMVEpD
         ZkBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IYgOu6Vj6HhhQu+Esc/7F/cIwlUMcl9yTd9y/bRWr8c=;
        b=QgJLY5umlK95DFkd1Vect04nYx5zxotBk9ZEXoZFZcYlXyHwmkXPY4btcmjjJY+hSi
         fuYezVptkv1H0BiDg2Xm7aDqWEwsxa8h9l606LWrGAw27WwzJSqe47PolygzT89jiBud
         Sp4uZ6vL+ifdQUwNIeOrFx5w0dnPP+zHandHfnS63cPfWNP1r2mOPHGMoUQn6MwpRc3e
         OngINMDi5z8kwsi09r8L4FkeS2XmrgzrWVV1LJE9NPhPlM6Qbg6jj9g924QKWfMAanBK
         keZsW7xjP14F1uHXWKSLzQ5MAG0mkXgliFUd0akhfkMvlZjd/qAeNKPKsJNMFXzXacfN
         Wxqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IYgOu6Vj6HhhQu+Esc/7F/cIwlUMcl9yTd9y/bRWr8c=;
        b=WyXr06xMT3ZHloF3BeVuHHcw8uLil850aAMgvC5e1ugcvEL13gyNJsWRfPM4Lfoomj
         mi6kg/SmiJHiG4Ag/MSKEpmHnOuINER07omovzHijVC/r/ldN2c0BQITe8rsWU78s7UL
         g0QzoMQLUatxTlFJ/R7WTlKHU1pQdFBGmpsKKmmC/wYyBNjP96VRFx9jzXtkt0GuHdik
         hBTCActyyyK20VrAwMEMsgB6zNHX9AM5wqmW/MC/6Veexy4n7Qfhk3Haa8t3vgPcVhS7
         kc5snrMsaIC8n3o0S7U8SVB7og0ndLPntbayUseXzv9sRBMt5DLb1/hXHfbuGFHGPqWO
         uQ/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2+KqfiRKx1vSXrswZ/ajhWGRcg+khcMJoEhnbs8ZxteHMF7N0P
	eARTRE45f97PuNdZttwSLaI=
X-Google-Smtp-Source: ADFU+vtddg1QmL+Pd9twlqB84gQ3nz4KN+R/UsCCBJd4fGo+d8y9aYAbh+fK2qqEOYCrWIsGokzIQg==
X-Received: by 2002:a25:d8d1:: with SMTP id p200mr26175952ybg.23.1585631674072;
        Mon, 30 Mar 2020 22:14:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aab3:: with SMTP id t48ls6770879ybi.2.gmail; Mon, 30 Mar
 2020 22:14:33 -0700 (PDT)
X-Received: by 2002:a5b:64a:: with SMTP id o10mr25760290ybq.434.1585631673695;
        Mon, 30 Mar 2020 22:14:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585631673; cv=none;
        d=google.com; s=arc-20160816;
        b=f8YGGTh/EdH7A7VT6Pz9g35pGZBEHREqkIYdmG+G6Zl2FDAugFb8A0Zd2oQ3XUINho
         VAiri827FnwKya4uz1i8QJAn9kxZYY+C2hiHUlAJ3BrwZaxhw8QdSyz9rPxhkdAZG01P
         GnJinbNBuOTrrMpuSRL0DPGHfNn+vZnfmaQJ9llMPr61O18jNTbHIZaEVVTfHA4mc5f/
         VT261Ixaj3TUfx+OYW7I5tGPezWR73fDDy+eD/euls8LLM+RDxzPkImPEp4H2aksqZws
         phsS+KPGfVRujUNdjS+zxSJzsyI4Em+UR+vY/1sGl2qhfAfEJtimGF60h68tmAC58wLy
         HkBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=1ZP/dn2hEIkYHkFLdqoCC7DVPlksbGpRw4m0qHfI4HM=;
        b=fBgim72pCS4stUSrbtCx0KQgEGx1L2bJLcrH9lVKGgcOLrtFApbVNgtouI0bKJPEdZ
         GFqslNQA+z9Gx8PNmBEx8RacKGr+YlRvbXThSEBdE6fF8nceiTSYG5oZfY5TwIFgFavd
         JzBtvMsFYiJpa9NSDmNb3DtbHBuDP8q1/pWRIpC+tAd5kH0SOCZeK78X7a//Ir7xcg8k
         1Cy+fwdFK9T4/9B8cp8fINRDDAPnVwpFM5ptFhPOlFnM6Dc9QwGu1gcLtLB+QNUXPR3q
         nx4PClC5ikuZ5Ht2M7PqTjPG7Z5SqLxM+RJ5iN/dg8sknI1DI4I1oU0FYqQrBmmBSJ3z
         kWDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id e14si1089370ybp.0.2020.03.30.22.14.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 22:14:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: fGoDzA+tn0E24YMDh894sFUvHm4zmicRwwRW0Gp+WZ/lMLsaOBlItq7VH0glq9JJxjl3w77YYG
 MzWzBlmHjuHw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2020 22:14:32 -0700
IronPort-SDR: pyOGj4JMFVgH9bKXmJht5P4G1rabdEzJO4CIyab0A0KBv4odf4m89mpUPjSkas2aWwI96II+Sg
 RdpHozv1p8Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; 
   d="scan'208";a="294822776"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by FMSMGA003.fm.intel.com with ESMTP; 30 Mar 2020 22:14:30 -0700
Date: Tue, 31 Mar 2020 13:13:51 +0800
From: Philip Li <philip.li@intel.com>
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	David Gibson <david@gibson.dropbear.id.au>
Subject: Re: [kbuild-all] ld.lld: error:
 drivers/staging/gdm724x/gdm_usb.o:(.rodata.str1.1): offset is outside the
 section
Message-ID: <20200331051351.GA13302@intel.com>
References: <202003311137.1kHCgonh%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202003311137.1kHCgonh%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.136 as
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

On Tue, Mar 31, 2020 at 11:14:40AM +0800, kbuild test robot wrote:
> Hi Dirk,
> 
> First bad commit (maybe != root cause):
Sorry Dirk, kindly ignore this, it was explained in early email loop
regarding another report.

[kbuild-all] ld.lld: error: drivers/staging/rtl8192e/rtllib_wx.o:(.rodata.str1.1): offset is outside the section

We will update 0-day ci build to avoid this.

> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   2ce94bc4e056d3e48291aac87a95ebd2a86348ba
> commit: e33a814e772cdc36436c8c188d8c42d019fda639 scripts/dtc: Remove redundant YYLOC global declaration
> date:   4 days ago
> config: arm-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project b4695351cb4ce1c4450a029a0c226dc8bb5f5d55)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout e33a814e772cdc36436c8c188d8c42d019fda639
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    ld.lld: error: drivers/staging/gdm724x/netlink_k.o:(.rodata.str1.1): offset is outside the section
> >> ld.lld: error: drivers/staging/gdm724x/gdm_usb.o:(.rodata.str1.1): offset is outside the section
>    ld.lld: error: drivers/staging/gdm724x/gdm_lte.o:(.rodata.str1.1): offset is outside the section
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200331051351.GA13302%40intel.com.
