Return-Path: <clang-built-linux+bncBAABBNX5RL5QKGQERRFP2SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5D726D0BA
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 03:41:11 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id b13sf104070uas.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 18:41:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600306870; cv=pass;
        d=google.com; s=arc-20160816;
        b=FMZkFUsySMDjrk8G4YZA13rHiJgcl1DFkCNR/DI8P8eJjSp8O+vakQ6c1R5atLofQz
         WdVBanWC9Kqjqk/PbhVoPiz511zplUTHLqzqfuIqsvY0xu9DNHDhXXGY8Ru1luVOTrYu
         iPgQA6RR3EFHLeVRDTDlsMx31VYsj9mH4Fn+eyEB4EpLm6gVzHflkCXOlWbK8cwZaNsD
         lVtbHVfaKdfncgUyXL6R58/7/Ppj+nJPZkZjPhHB1y+sas63V/8dWCjolN1uaK1tRvtM
         NAQzIU5BWH0xAryz/F+uEYv7bA5offnOR8/A7I6vtG5HisYvgWNEpqgMw6L1oH5DwXae
         BQFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=37lKFrGPqYgbiJ1RdrcKidvGt868XeS3uuo+7t0ZG64=;
        b=OmT/GyyT6EKvXDOKluNnVjhylFy2O4quviWJOjgPnxKGu5d3oXc3TcUKuqVw8/pn8P
         lUiBU51qeIzyWuHxk55pifmYbYshwMlOUYj+mxchpduUgjmMMdV25H31zZA45L7Iovbq
         iqYPp2ZgmwTKJUgBB/cmdr4nRlLnpVUXX3RgBuRDqI4l8DRYh4oG2+K+vcp7xEfxxP6l
         5v5A8zQYMEPNuI4gyp8HrNkP383gZ9WhNgwMY7ALzru1vaCTNV4a1a6TOHy8cxRGI5h9
         oVYn/baUS+w9aveNtEZwk0Gm0gpRmTWhAZDoQFmwVsXV2d/EnnF5pxSRXMW0bbNJF/a2
         iCtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=song.bao.hua@hisilicon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=37lKFrGPqYgbiJ1RdrcKidvGt868XeS3uuo+7t0ZG64=;
        b=P2PQsr2i+hWe41UbcEfkS4uNdtZFCo7gNQoviMay7D2ivrTZ8DYVPTAnPI64BKg8X5
         gObB/DT/N2XUYWtGYSPW98nLjmC6+AHSgG7Q/MPfXJufKsaWxAbK8ZxIQUl+3inpTN07
         gLIIfXIoq+sr+4pb+yZHTKPkGNHvZ6sN4+pzHLF5YTDCFb/o0NdBVXUjwe84+NA3ZrY0
         HLDM0aptIjjWpAWf5KDJbg+aCSweFD4Lk0p+u1oTucD5QcpDPAKW6TIEeRz5qGw8c1wn
         ihtKKhickUi//aeVN8DQHOJWFXz8aAu5nbGxtTzF/tFLFP56G4uFOhIiLe6c03eNy0p7
         Yv4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=37lKFrGPqYgbiJ1RdrcKidvGt868XeS3uuo+7t0ZG64=;
        b=Uwnu9xsHZEKwxGLB0MW9nyHYYrHp3Pc4sX3ZoKjHfsBPBZaCITpzGcrWu2jSiLZwfU
         UkHC0F8eNdurf2D3PL+uD3jUHzLywXSj530rALg426w1wKLC6eqJZegW1Q3bYXQD/b1R
         RVB2lRgPCzjz3EOWmO5nAsr+W8sxIjLh7p71uQsU/SUHW5C95tE4tBf8bUnFt5RU6psO
         HqQcHHGpvkm1UOKStXW28Ga4Qldmh8bMJvEiXyNWWgPqklCtdgb8YnFA5ZI0VQKf2/38
         M1p3jEQTi/9Mt0Ro+O3uiG8bwxDzNVFk6utbVU1a01GhORDUWISeP1kXbtbK2KoVidni
         GNfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rAvbolXB8WNjJKa4RPlMqRjc+J+G/FpVu8IBdxnpedEqV19aV
	1eEUD29R588yarBhl05+K9c=
X-Google-Smtp-Source: ABdhPJwiz7gurDJjecvVp1yoIieLmtB81ec19yBS/sJbf+XjYXwn/XjvGrMuE2o5tHRI8lleoAwX3A==
X-Received: by 2002:ab0:134:: with SMTP id 49mr14391551uak.118.1600306870500;
        Wed, 16 Sep 2020 18:41:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:7d88:: with SMTP id y130ls24617vkc.5.gmail; Wed, 16 Sep
 2020 18:41:10 -0700 (PDT)
X-Received: by 2002:a1f:1457:: with SMTP id 84mr7174575vku.18.1600306870026;
        Wed, 16 Sep 2020 18:41:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600306870; cv=none;
        d=google.com; s=arc-20160816;
        b=KtPBU81AwLEgbwCjS352bWWANMvQhKB/Mxsu7GjI5tEcXLB+3BT1lTerEp6Toe4hJf
         SbwdnSuLk8Lv5XxBiD++JdgwdBsGdtUPUmLU7HCL82TyJm+RHLxljuiMBOowygh9OHFj
         JSEu0iwyuGmeIzfRHiKV7SPkH0WpI5j51SbKi5tvbByFG3c+pZfKn77eJGR26Vhu8zfM
         ugWmp90LGtidoCJ/2E7v+lZ0SzmbtdC/b7CJ1gipzNQxmDIlaY51BuUSZRFNOcNoNJp1
         6hvf4jFkx3tYHogLELyJvio1TGd0fnFDu4XYxd1U4U5yab4DVxQt8DFEzRvBQrXD8HEN
         lD/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=mXV6agO7ZmNqXKL3AtrNvF4rdweXzLm7jOZKKFQZL2U=;
        b=UGdPBLBpYl7bU58Flwnwqf+oBJaXos7szaOHs787evqwzCajHXmDEz25JrU4hsOywu
         Oms99eoP8Rd0Y+Ntti1LQfH5efGnAJ9iOBZjD6/KeEdz9/1C8xaoAcSMFL4SMz+ejnnd
         l/mAZjvxwV2sckTEEmBXhYqwp2gi2YDTIxpr8czw1MmfpbHuw6FLzRkg0RI5CtAJzkAq
         9SGQHUGQ0XD7o7UE12Uu5AMgMF8L86vU3gkqM6wIy1MC4LeDS7zqZoLIt6IzcC5Bt3aH
         mfA9EdlAjfTUxXWisShl4Bst+hp5+fGGpKlqSS5B4GmgLS84YquQuY6ygOystdhTcUAg
         4S+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=song.bao.hua@hisilicon.com
Received: from huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id u25si1460283vkl.5.2020.09.16.18.41.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 18:41:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from DGGEMM403-HUB.china.huawei.com (unknown [172.30.72.57])
	by Forcepoint Email with ESMTP id 6F22155F3772399C819D;
	Thu, 17 Sep 2020 09:35:55 +0800 (CST)
Received: from dggemi760-chm.china.huawei.com (10.1.198.146) by
 DGGEMM403-HUB.china.huawei.com (10.3.20.211) with Microsoft SMTP Server (TLS)
 id 14.3.487.0; Thu, 17 Sep 2020 09:35:55 +0800
Received: from dggemi761-chm.china.huawei.com (10.1.198.147) by
 dggemi760-chm.china.huawei.com (10.1.198.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Thu, 17 Sep 2020 09:35:54 +0800
Received: from dggemi761-chm.china.huawei.com ([10.9.49.202]) by
 dggemi761-chm.china.huawei.com ([10.9.49.202]) with mapi id 15.01.1913.007;
 Thu, 17 Sep 2020 09:35:54 +0800
From: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
To: Mike Kravetz <mike.kravetz@oracle.com>, Nick Desaulniers
	<ndesaulniers@google.com>
CC: "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "guro@fb.com"
	<guro@fb.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-mm@kvack.org"
	<linux-mm@kvack.org>, Linuxarm <linuxarm@huawei.com>, "sfr@canb.auug.org.au"
	<sfr@canb.auug.org.au>, "will@kernel.org" <will@kernel.org>,
	"ardb@kernel.org" <ardb@kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: arm64: mm: move dma_contiguous_reserve() to be after
 paging_init()
Thread-Topic: arm64: mm: move dma_contiguous_reserve() to be after
 paging_init()
Thread-Index: AQHWjIg9Vw4ucv/7MkmF/biUUWKaD6lrc2wAgACWRjA=
Date: Thu, 17 Sep 2020 01:35:54 +0000
Message-ID: <36697ee55a7348d382c410d776fefc74@hisilicon.com>
References: <20200916085933.25220-1-song.bao.hua@hisilicon.com>
 <20200917001934.2793370-1-ndesaulniers@google.com>
 <ccfcf5a5-79d1-6339-b4b8-33b587507807@oracle.com>
In-Reply-To: <ccfcf5a5-79d1-6339-b4b8-33b587507807@oracle.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.202.195]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: song.bao.hua@hisilicon.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.189
 as permitted sender) smtp.mailfrom=song.bao.hua@hisilicon.com
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



> -----Original Message-----
> From: Mike Kravetz [mailto:mike.kravetz@oracle.com]
> Sent: Thursday, September 17, 2020 12:27 PM
> To: Nick Desaulniers <ndesaulniers@google.com>; Song Bao Hua (Barry Song)
> <song.bao.hua@hisilicon.com>
> Cc: akpm@linux-foundation.org; guro@fb.com;
> linux-arm-kernel@lists.infradead.org; linux-mm@kvack.org; Linuxarm
> <linuxarm@huawei.com>; sfr@canb.auug.org.au; will@kernel.org;
> ardb@kernel.org; clang-built-linux@googlegroups.com
> Subject: Re: arm64: mm: move dma_contiguous_reserve() to be after
> paging_init()
> 
> On 9/16/20 5:19 PM, Nick Desaulniers wrote:
> > It looks like that change referenced may also break arm32 boots with
> > today's next?
> >
> > The following allows me to boot, but I have no idea if it's incorrect or not.
> 
> Thanks Nick,
> 
> The referenced commit was pulled from Andrew's tree and subsequent
> versions of next.
> 
> I'm looking into other architectures as this is dependent on where in arch
> specific boot process first cma call is made.  Hopefully, there is a some way to
> do this without potentially touching a bunch of arch code.

The default cma is probably not the only who has been broken. I think the patch to enable the 
dynamic number of cma areas has also broken fdt-based CMA. For example, 
early_init_fdt_scan_reserved_mem() is called before paging_init() in arm64.

Considering many arch are calling early_init_fdt_scan_reserved_mem(), it seems using
memblock_alloc() for cma_area will require lots of test on different platforms.
1. arc
2.arm
3.arm64
4.csky
5.h8300
6.mips
7.nsd32
8.nios32
9.openrise
10.powerpc
11.riscv
12.sh
13.xtensa

> --
> Mike Kravetz

Thanks
Barry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/36697ee55a7348d382c410d776fefc74%40hisilicon.com.
