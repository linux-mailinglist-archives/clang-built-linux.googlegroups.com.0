Return-Path: <clang-built-linux+bncBCWKVBMB54EBBJ4PZXZQKGQE2O4TE3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4ED18B126
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 11:21:28 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id f13sf759892wro.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 03:21:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584613288; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xzf4NQoYyRBIgp/8dqllbnaaEIAGOkFY68hQFIX/yP7xjeQouSEmih38atxE6rEa8k
         zar4Oh5Y4feTI7Dbxh6IU1P/wJLcfoWNh2jv7yFccZTZdnHIe0M4K9EEjEauDub34w6v
         H7WQrxhFSbDUWmeyqdRQ14BjjDXc0xHqevde/3qdIx7PZ+zurjS6Xr4e0RtgUtmlVDYA
         EdL36io4zWEvD+g8ZlXDFWNjXP0+IqqegoiBUhbYSDmCk+EXNSeARTpeUOVRakT9m7ou
         U2G7RLOY6tP8tc5h4MOE2V3VsMRpwhbHeu/M8NfyKZ2tcQAa16A0hLe8NZp7hTPEL9eU
         d/Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=KkbAu/bB7/NlgFd5j7YhlnMavIQ8zCwZQ/mRY0jF75M=;
        b=N/+Jthv+UMB0IR/7Jgkda1T3345fSEPfMabwsCM8+IlSCtn04gSFNqsBBepUhURC8H
         WOtSYwTxxLuGfqjKot544Adqf3blpoxIiqQgWKomPEzgTY7cDI+Qd2RWYe4hcb03VaDG
         ToC/+gxv9PtxF5it9mLnZqv6vHR7IJX5GKX5QEyHCA11ZHWx/XzXqgh0T6Qs5Rv05DK/
         2JT+K3WRP9DtsrtSeC+CSMh4DXw+owPLeimjultKCOe78MVaAPDIcOoTLWuBmHEypTO3
         jOCf00sDoyaMQBaQNgrpK7q+JqZg4SAxSFQLsEw/M8dTJkZraSA/v5n19/q+IE/BBpLK
         jrGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of john.garry@huawei.com designates 185.176.76.210 as permitted sender) smtp.mailfrom=john.garry@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KkbAu/bB7/NlgFd5j7YhlnMavIQ8zCwZQ/mRY0jF75M=;
        b=FdkxISdPtv2EKkvgPTBUIfTPSJyHZddarkJf1sYVkF1QBQhxnOEQsB/pZKCU4AXk9O
         lHWDReIG18CG0SmkN+S220MRkK/vToJDg/6yxxa/6MF45WWpAbEgeBkW2XBFlLtoSe7i
         2BDtoiVs8f0Y+iPVD5+egESwzRnZAYal3lCgS6+2beQ8YiUHZP6QcFxKPeXFtaR1KeJz
         f+Zv9c1Oa2yePwEUcpXFHC0HqzLPOaM0NWTA7dfvYSNZKUeTR8Ondmmwna9PzBlKEpBv
         1aEwJRwiFLTO9GcDbPvvNJkQ78QX7a9AS/tthKw4z+P7WL/03+a8rkW2Xv1TZ+Wi6UYj
         I49Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KkbAu/bB7/NlgFd5j7YhlnMavIQ8zCwZQ/mRY0jF75M=;
        b=gXyo924P3MIdH3lIugQP3L9iRjq5SmOZSpF5NIepbPamjz8d7an+CWS5mUz386BZul
         h++aPYLulxejFNG/jtJzCgSM8dOwlFGnN0pG/Hjq5cVftB3eEa5D5yMX6Q0FfwdX4wLu
         zNLuuGtV61UbfZGgeMhNrFiugEek9Z1+slgDo+JJMv7CJS/1l/DIoiAIIfLcVZLFmv3l
         dkYzyVTWWu7upSi3RlWMdarADrMr1KmZqXJrG4DmRzavu5JFxGXQkPakyL7UCWub8eRw
         ukdoHdNZRPZjGblnbFDuwIOqGWITR4svP4EZE9EHzdJSq0qRhP+3Cpte+z+/fcfIV3eq
         qznw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0fvPma18Y+juGMjnvnBSalBDJ/ENlHDM4z7/udsrIr0AGt13Xp
	JdOvTRzgC12IOA28MF5DWRc=
X-Google-Smtp-Source: ADFU+vvG0DRarSsicIo0/xs79N5IRgiWBMIAuwHoea297XqKWQAba2uUCZTE3l1h/wAzs8sYhc8WSw==
X-Received: by 2002:adf:f851:: with SMTP id d17mr3390657wrq.205.1584613288055;
        Thu, 19 Mar 2020 03:21:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls727512wrr.4.gmail; Thu, 19 Mar
 2020 03:21:27 -0700 (PDT)
X-Received: by 2002:adf:aade:: with SMTP id i30mr2523259wrc.336.1584613287330;
        Thu, 19 Mar 2020 03:21:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584613287; cv=none;
        d=google.com; s=arc-20160816;
        b=Kj2tQOALRUl+Ay3jvy/6vtOid7t5z1F6sy3GT3qa4epNxBTN6gjJMSU81KHNXmPanv
         SQQLc2Mcv35D+rtUFmQC7kv06h9hJ8aFctgbn9OaFPou6zf+7U64WMsyKk83r1bf2a6p
         sneooBkLuOJlxRS2yKksHjEdFU9Fmzl/uq2bahN6FcpX2e5111KS+JhgadgvY9ftH5Q0
         obeGZiu50nyFdY8MnIJP4eNFZnwp1YppMvTsNv1IMyAhZ7i+dgLlxGVlsQNDH1k9744A
         wtqfGmCM8spZco8ijZ4XkrM6Q3886ReliwNDeo4Gk1sDo9uvF4yQCED+nakIACpYvjSi
         fKwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=VD7hm2qHvEGPr4Zn8ARqcUpWrFf3/hjlIcn/vCjqHpQ=;
        b=qj8xjOo3EUJdXot1tWBFoocVvDKOaYLMRRfO81s4P4IGNtqe1gPqda2t6oyBu7vg5w
         qkOVh2+7+IQ/jeA9Khj0KWfys7e97ZolasN8q2MfW8gKm/coK8Yy+oDHmkT65ph9ptpu
         b5hkQwblttfy7i9jn1VHBEhUwy3aPKBJSzeUgaK99DJZ2vV7T1CxpPkbkJlmIe3cb+ZR
         E5SIlqAtvuEU2ehdNl/io/sg9QgEElw50ehjMIzMtvLpith1QXv955Lyvjx85EC9JZX6
         bxzv9NrANebm5zyCTfxarTm7wBPpbOu/TMtGrUqZPN8iMpW7DCpAZb7v+UYKRWhDUqWC
         f2zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of john.garry@huawei.com designates 185.176.76.210 as permitted sender) smtp.mailfrom=john.garry@huawei.com
Received: from huawei.com (lhrrgout.huawei.com. [185.176.76.210])
        by gmr-mx.google.com with ESMTPS id q205si103056wme.4.2020.03.19.03.21.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 03:21:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.garry@huawei.com designates 185.176.76.210 as permitted sender) client-ip=185.176.76.210;
Received: from LHREML714-CAH.china.huawei.com (unknown [172.18.7.107])
	by Forcepoint Email with ESMTP id F1464E92097DA84B904A;
	Thu, 19 Mar 2020 10:21:26 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML714-CAH.china.huawei.com (10.201.108.37) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 19 Mar 2020 10:21:26 +0000
Received: from [127.0.0.1] (10.210.167.248) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Thu, 19 Mar
 2020 10:21:25 +0000
Subject: Re: [PATCH 1/3] io: Provide _inX() and _outX()
To: kbuild test robot <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"xuwei (O)" <xuwei5@huawei.com>, "arnd@arndb.de" <arnd@arndb.de>
References: <1584546935-75393-2-git-send-email-john.garry@huawei.com>
 <202003190624.e8ZL3OS2%lkp@intel.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <7e9569ad-49e5-bd6d-0e56-79972f6f9efd@huawei.com>
Date: Thu, 19 Mar 2020 10:21:11 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <202003190624.e8ZL3OS2%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.210.167.248]
X-ClientProxiedBy: lhreml704-chm.china.huawei.com (10.201.108.53) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-Original-Sender: john.garry@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of john.garry@huawei.com designates 185.176.76.210 as
 permitted sender) smtp.mailfrom=john.garry@huawei.com
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

On 18/03/2020 22:31, kbu
{{{ild test robot wrote:
> Hi John,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on arm-soc/for-next]
> [also build test WARNING on linux/master linus/master v5.6-rc6 next-20200318]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/John-Garry/io-h-logic_pio-Allow-barriers-for-inX-and-outX-be-overridden/20200319-040340
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git for-next
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 14a1b80e044aac1947c891525cf30521be0a79b7)
> reproduce:
>          # FIXME the reproduce steps for clang is not ready yet
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>     In file included from drivers/gpu/drm/i915/i915_drv.c:30:
>     In file included from include/linux/acpi.h:35:
>     In file included from include/acpi/acpi_io.h:5:
>     In file included from include/linux/io.h:13:
>     In file included from arch/x86/include/asm/io.h:375:
>>> include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             val = __raw_readb(PCI_IOBASE + addr);

I figure that previously x86 would not hit this because it was 
surrounded by the #ifndef inb, and inb is defined.

I suppose I can also surround _inb with #ifndef inb, instead of #ifndef 
_inb. That will just mean that archs cannot override _inb, not that any do.

Example:

#ifndef inb
static inline u16 _inb(unsigned long addr)
{
	u8 val;

	__io_pbr();
	val = __raw_readb(PCI_IOBASE + addr);
	__io_par(val);
	return val;
}
#endif

or, as an alternative, have:

val = __raw_readb((void __iomem *)((unsigned long)PCI_IOBASE + addr));




>                               ~~~~~~~~~~ ^
>     include/asm-generic/io.h:477:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
>                                             ~~~~~~~~~~ ^
>     include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
>     #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
>                                                       ^
>     In file included from drivers/gpu/drm/i915/i915_drv.c:30:
>     In file included from include/linux/acpi.h:35:
>     In file included from include/acpi/acpi_io.h:5:
>     In file included from include/linux/io.h:13:
>     In file included from arch/x86/include/asm/io.h:375:
>     include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
>                                             ~~~~~~~~~~ ^
>     include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
>     #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
>                                                       ^
>     In file included from drivers/gpu/drm/i915/i915_drv.c:30:
>     In file included from include/linux/acpi.h:35:
>     In file included from include/acpi/acpi_io.h:5:
>     In file included from include/linux/io.h:13:
>     In file included from arch/x86/include/asm/io.h:375:
>     include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             __raw_writeb(value, PCI_IOBASE + addr);
>                                 ~~~~~~~~~~ ^
>     include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
>                                              ~~~~~~~~~~ ^
>     include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
>                                              ~~~~~~~~~~ ^
>     6 warnings generated.
> --
>     In file included from drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:7:
>     In file included from include/linux/intel-iommu.h:14:
>     In file included from include/linux/iova.h:16:
>     In file included from include/linux/dma-mapping.h:11:
>     In file included from include/linux/scatterlist.h:9:
>     In file included from arch/x86/include/asm/io.h:375:
>>> include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             val = __raw_readb(PCI_IOBASE + addr);
>                               ~~~~~~~~~~ ^
>     include/asm-generic/io.h:477:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
>                                             ~~~~~~~~~~ ^
>     include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
>     #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
>                                                       ^
>     In file included from drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:7:
>     In file included from include/linux/intel-iommu.h:14:
>     In file included from include/linux/iova.h:16:
>     In file included from include/linux/dma-mapping.h:11:
>     In file included from include/linux/scatterlist.h:9:
>     In file included from arch/x86/include/asm/io.h:375:
>     include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
>                                             ~~~~~~~~~~ ^
>     include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
>     #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
>                                                       ^
>     In file included from drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:7:
>     In file included from include/linux/intel-iommu.h:14:
>     In file included from include/linux/iova.h:16:
>     In file included from include/linux/dma-mapping.h:11:
>     In file included from include/linux/scatterlist.h:9:
>     In file included from arch/x86/include/asm/io.h:375:
>     include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             __raw_writeb(value, PCI_IOBASE + addr);
>                                 ~~~~~~~~~~ ^
>     include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
>                                              ~~~~~~~~~~ ^
>     include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
>                                              ~~~~~~~~~~ ^
>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1433:22: warning: result of comparison of constant 576460752303423487 with expression of type 'unsigned int' is always false [-Wtautological-constant-out-of-range-compare]
>             if (unlikely(remain > N_RELOC(ULONG_MAX)))
>                 ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
>     include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
>     # define unlikely(x)    __builtin_expect(!!(x), 0)
>                                                 ^
>     7 warnings generated.
> --
>     In file included from drivers/gpu//drm/i915/gem/i915_gem_execbuffer.c:7:
>     In file included from include/linux/intel-iommu.h:14:
>     In file included from include/linux/iova.h:16:
>     In file included from include/linux/dma-mapping.h:11:
>     In file included from include/linux/scatterlist.h:9:
>     In file included from arch/x86/include/asm/io.h:375:
>>> include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             val = __raw_readb(PCI_IOBASE + addr);
>                               ~~~~~~~~~~ ^
>     include/asm-generic/io.h:477:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
>                                             ~~~~~~~~~~ ^
>     include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
>     #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
>                                                       ^
>     In file included from drivers/gpu//drm/i915/gem/i915_gem_execbuffer.c:7:
>     In file included from include/linux/intel-iommu.h:14:
>     In file included from include/linux/iova.h:16:
>     In file included from include/linux/dma-mapping.h:11:
>     In file included from include/linux/scatterlist.h:9:
>     In file included from arch/x86/include/asm/io.h:375:
>     include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
>                                             ~~~~~~~~~~ ^
>     include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
>     #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
>                                                       ^
>     In file included from drivers/gpu//drm/i915/gem/i915_gem_execbuffer.c:7:
>     In file included from include/linux/intel-iommu.h:14:
>     In file included from include/linux/iova.h:16:
>     In file included from include/linux/dma-mapping.h:11:
>     In file included from include/linux/scatterlist.h:9:
>     In file included from arch/x86/include/asm/io.h:375:
>     include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             __raw_writeb(value, PCI_IOBASE + addr);
>                                 ~~~~~~~~~~ ^
>     include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
>                                              ~~~~~~~~~~ ^
>     include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
>                                              ~~~~~~~~~~ ^
>     drivers/gpu//drm/i915/gem/i915_gem_execbuffer.c:1433:22: warning: result of comparison of constant 576460752303423487 with expression of type 'unsigned int' is always false [-Wtautological-constant-out-of-range-compare]
>             if (unlikely(remain > N_RELOC(ULONG_MAX)))
>                 ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
>     include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
>     # define unlikely(x)    __builtin_expect(!!(x), 0)
>                                                 ^
>     7 warnings generated.
> 
> vim +464 include/asm-generic/io.h
> 
> 3f7e212df82ca0 Arnd Bergmann  2009-05-13  450
> 9216efafc52ff9 Thierry Reding 2014-10-01  451  /*
> 9216efafc52ff9 Thierry Reding 2014-10-01  452   * {in,out}{b,w,l}() access little endian I/O. {in,out}{b,w,l}_p() can be
> 9216efafc52ff9 Thierry Reding 2014-10-01  453   * implemented on hardware that needs an additional delay for I/O accesses to
> 9216efafc52ff9 Thierry Reding 2014-10-01  454   * take effect.
> 9216efafc52ff9 Thierry Reding 2014-10-01  455   */
> 9216efafc52ff9 Thierry Reding 2014-10-01  456
> 5ae6dd12ec6d6b John Garry     2020-03-18  457  #ifndef _inb
> 5ae6dd12ec6d6b John Garry     2020-03-18  458  #define _inb _inb
> 5ae6dd12ec6d6b John Garry     2020-03-18  459  static inline u16 _inb(unsigned long addr)
> 9216efafc52ff9 Thierry Reding 2014-10-01  460  {
> 87fe2d543f8173 Sinan Kaya     2018-04-05  461  	u8 val;
> 87fe2d543f8173 Sinan Kaya     2018-04-05  462
> 87fe2d543f8173 Sinan Kaya     2018-04-05  463  	__io_pbr();
> 87fe2d543f8173 Sinan Kaya     2018-04-05 @464  	val = __raw_readb(PCI_IOBASE + addr);
> abbbbc83a210e9 Will Deacon    2019-02-22  465  	__io_par(val);
> 87fe2d543f8173 Sinan Kaya     2018-04-05  466  	return val;
> 9216efafc52ff9 Thierry Reding 2014-10-01  467  }
> 9216efafc52ff9 Thierry Reding 2014-10-01  468  #endif
> 9216efafc52ff9 Thierry Reding 2014-10-01  469
> 
> :::::: The code at line 464 was first introduced by commit
> :::::: 87fe2d543f817300e13f0ea683f38c122737856e io: change inX() to have their own IO barrier overrides
> 
> :::::: TO: Sinan Kaya <okaya@codeaurora.org>
> :::::: CC: Arnd Bergmann <arnd@arndb.de>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7e9569ad-49e5-bd6d-0e56-79972f6f9efd%40huawei.com.
