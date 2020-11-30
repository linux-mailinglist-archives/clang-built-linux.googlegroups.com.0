Return-Path: <clang-built-linux+bncBDYZDG4VSMIRBCEDST7AKGQE7JXJGFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF272C86A8
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 15:28:25 +0100 (CET)
Received: by mail-ej1-x637.google.com with SMTP id k15sf5886081ejg.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 06:28:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606746505; cv=pass;
        d=google.com; s=arc-20160816;
        b=P4OA/1WpbH1NO8A1rSMwBXSDcKl3HCpe0Ke7dm8rqnbJUxSePGc+10YgKjh+hnZrjI
         eou9YgB1Q0cOvUIADAFb453utNE+k79wLlKzPfGCcdTfKe5dT1odn+1SeI/47PBKdckc
         fhX+GL1a0Ar2oLfSGmERaJKOVvc92CaWfSVU1+Woj0IIy4VA0UGPN55Lea6eQ/NZpvEk
         0TbXCw9P0kDbvhxnQkdDGLHjVi98fiL0zpwhNRcBm8R1/n5+1d5QypWYp4cC1u6++sA+
         NKIQu37NxsTpg9g8hGvGA8PwmbMZ5hOz61G6Ou2IRK8YKJ4hPzLdKBth4L2jxMCq3YAo
         KhmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:sender:dkim-signature;
        bh=7ACfIZ9232EIBxSGx1/bj5TcEgsU2k3rNe5dpSX9i2c=;
        b=ijiw116+G2/GFjdBkTiL27FaS3EJndD5jgTjlP7hZfUs5v2SnFGRG+arOPTGoukHWg
         zdqRYZG5Gbz5G0BWYPU9TqKPR4w5/pu+PSFUq06EcI4Reo7EHgsazT826N8kmthghZlZ
         N/2Ygo9TpKnmD1vT5WK2YCQvuCKEhjjHWxgAMVikfcTizt4jd3JMkcJI2qHIx15K75b2
         k6n5Al1gXjXCtYQsg+1HTsIkrMwCEeag161ITzn9/XjgEeUnY1XKHbZrnHWjcxzpiAUl
         OQNwf2+7VBKmz9YfZ8uqcMoicDwLoywvFzoBsYFjKzyFakMePnx8PXerwKDTjIDJPezE
         A2iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=dfMrMYg+;
       spf=neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7ACfIZ9232EIBxSGx1/bj5TcEgsU2k3rNe5dpSX9i2c=;
        b=cDptdbj9BqDB5C/O+HTjQGpb2U8P9lR/snifQJZfFgQEan96tGhH7RaR/hc0JHHKW9
         Os8nsbNVVbPA0k+HCy4wrQUHS8JXApagDINz5jX2NB8CUsmp53irYDIDJTQoZDFzwwpM
         KxWVawLMgkpJWfFNyQnRjQ/gepqo6W/8VjGFdC7nRVJ7DwRJrnmDU3DtbsanmYQfoLy1
         2nRKjCqfGKVT7pE/IcK3M+PmNvfD88QiwuMC+aQM19KM/tgo5ClHKOFexCHa6mpC9hpq
         clzfgxocSNq6O39+XJyxS4y3kYPyuK6ovpLhhilxablBJlxVxfgIZ8cQf0QKMFchmAup
         OOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7ACfIZ9232EIBxSGx1/bj5TcEgsU2k3rNe5dpSX9i2c=;
        b=W/GcVqcDCrxvk09VlHHB/H5uVmjI6DfZ3vnVfulu3FFUu2S/Q+9dhtJkrpCF/ZZY1J
         fRgZrLlLxWXsLLmpK66IU8osQ9R+WAhj9f4ej8spX1EpBrEnX3cOYfY9qLC+JgyFzUMF
         FjMwZCr6s3KmsOkYa5DEhSoaswA11jXDWqYyD8MP3JzMt62YeLcjohB7WlDwpyMEH/jm
         jFbyyGtho0Q9fgVy4ZOwas96sQA7o7iFIY1CM/bL0s2arYgeAIFC7YrAX3V1nhJNNCwM
         ifDGmZqsC8zvMu+maUjNf+V+c9zD0NimYOwkjkBDs/whOcNJtw641RibvTFBK4hRVUWU
         W7vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RiUVk2SCHI9mKntdCHsS6GT92u8x1SO5D2T84SCytEi1iQnli
	nw+iTw46Pp6rVs76u35/mIA=
X-Google-Smtp-Source: ABdhPJyi2QeBj9YDWZ1tgjrjQV2m++iIgssF6k/rE85HRd/2iqj2VUEdhs9WP0FFHirLM8g4zC3uzw==
X-Received: by 2002:a17:906:90d6:: with SMTP id v22mr5062014ejw.88.1606746504988;
        Mon, 30 Nov 2020 06:28:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:40bb:: with SMTP id nu19ls2278400ejb.7.gmail; Mon,
 30 Nov 2020 06:28:24 -0800 (PST)
X-Received: by 2002:a17:906:1695:: with SMTP id s21mr4417182ejd.31.1606746503975;
        Mon, 30 Nov 2020 06:28:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606746503; cv=none;
        d=google.com; s=arc-20160816;
        b=kCH/D3ZUXGotmGLdfMBfXIJ9sAW2fqBHfQkmLN0hV8YJEOVRtE7ymh8hPjtvV+dsNq
         7eHkWp4Uyq7z5S2ocD4cp8cYA2gklopn2R9F3DFliOSy0uuq+jvLPz48zZHji7bHlf/n
         nsMNbapSsDjhwTdg1pXEEofoKNMi+K9YT3pDpHY96B28gKuPMcJAOKahdQOZ6CQC8UsC
         9ylBW9OBjj1KWhty8jiwON5xksgVoAcuKn8yj/x+YgGUsrxdwZmvdv5oe2R5/UDxoX0H
         nE+NWy20AlTGz8tiU+j4nMJrOP2qy3ddxHTN9mo1lloybUGXVXokqcOlXRNmtUEhy+/V
         +czg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=eHLcaoGR3OBMxI8Ka9Vg7O4WIQrlDq3JLjO4ywGlLGY=;
        b=GneNOPt2BnCCMCEF5443cqTXbwqLKlyzXqp3VxLL+1Dx+O5K7sfcprbYCkb3G87tsR
         NGJVeG/nEPtd4ObF8Q84OBiT5KGmSe9+gp5YMwlyL8wquygu2zJLYRO2g9GeYpjSf5W4
         euJ88ai39YWSEGUzyc6yFLjdSE0lJ/UOYUwOFP1Ld6fdTCjZNVYy5s7z68LHGodVKoGh
         3MrBSTy3FsmqJfl8E05oudgUABSVhUSy+be9pWpu96HU4EqBG4gSoQhtJG/RJ7aUXNhN
         e+ZIMO0dHXyXb43HJcJqmQanKM5CZDNNioj4wrJmGbuHtIa6fD/e55pqvTE7hhMaORIA
         M1Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=dfMrMYg+;
       spf=neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id j6si67890edl.2.2020.11.30.06.28.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 06:28:23 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id 3so21671455wmg.4
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 06:28:23 -0800 (PST)
X-Received: by 2002:a7b:c05a:: with SMTP id u26mr23719527wmc.159.1606746503617;
        Mon, 30 Nov 2020 06:28:23 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id v3sm270080wrq.72.2020.11.30.06.28.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 06:28:22 -0800 (PST)
Date: Mon, 30 Nov 2020 15:28:20 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: kernel test robot <lkp@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
	DRI Development <dri-devel@lists.freedesktop.org>,
	LKML <linux-kernel@vger.kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, kvm@vger.kernel.org,
	linux-mm@kvack.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-media@vger.kernel.org,
	Christoph Hellwig <hch@infradead.org>,
	Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH v7 17/17] mm: add mmu_notifier argument to follow_pfn
Message-ID: <20201130142820.GN401619@phenom.ffwll.local>
Mail-Followup-To: kernel test robot <lkp@intel.com>,
	DRI Development <dri-devel@lists.freedesktop.org>,
	LKML <linux-kernel@vger.kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, kvm@vger.kernel.org,
	linux-mm@kvack.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-media@vger.kernel.org,
	Christoph Hellwig <hch@infradead.org>,
	Jason Gunthorpe <jgg@ziepe.ca>
References: <20201127164131.2244124-18-daniel.vetter@ffwll.ch>
 <202011280356.rPWHFNW4-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202011280356.rPWHFNW4-lkp@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64
X-Original-Sender: daniel@ffwll.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ffwll.ch header.s=google header.b=dfMrMYg+;       spf=neutral
 (google.com: 2a00:1450:4864:20::343 is neither permitted nor denied by best
 guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
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

So I guess kvm platforms that don't set KVM_ARCH_WANT_MMU_NOTIFIER exist,
and at least on powerpc they're consistent with KVM_CAP_SYNC_MMU
signalling that the guest pagetables stays in sync automatically with any
updates. So for that case I guess we could use unsafe_follow_pfn.

But on s390 this seems different: No mmu notifier, but KVM_CAP_SYNC_MMU is
set. So I guess there's some hardware magic on s390 that I don't know
about.

Not sure what to do with this now here ...
-Daniel


On Sat, Nov 28, 2020 at 03:10:40AM +0800, kernel test robot wrote:
> Hi Daniel,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on linuxtv-media/master]
> [also build test ERROR on char-misc/char-misc-testing v5.10-rc5]
> [cannot apply to hnaz-linux-mm/master next-20201127]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Daniel-Vetter/follow_pfn-and-other-iomap-races/20201128-004421
> base:   git://linuxtv.org/media_tree.git master
> config: s390-randconfig-r032-20201127 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project f095ac11a9550530a4a54298debb8b04b36422be)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # https://github.com/0day-ci/linux/commit/d76a3489433ce67d45da86aa12953385427f0ac9
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Daniel-Vetter/follow_pfn-and-other-iomap-races/20201128-004421
>         git checkout d76a3489433ce67d45da86aa12953385427f0ac9
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from arch/s390/include/asm/kvm_para.h:25:
>    In file included from arch/s390/include/asm/diag.h:12:
>    In file included from include/linux/if_ether.h:19:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:80:
>    include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
>                                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
>                                                              ^
>    include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
>            ___constant_swab32(x) :                 \
>                               ^
>    include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
>            (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
>                      ^
>    In file included from arch/s390/kvm/../../../virt/kvm/kvm_main.c:18:
>    In file included from include/linux/kvm_host.h:32:
>    In file included from include/linux/kvm_para.h:5:
>    In file included from include/uapi/linux/kvm_para.h:36:
>    In file included from arch/s390/include/asm/kvm_para.h:25:
>    In file included from arch/s390/include/asm/diag.h:12:
>    In file included from include/linux/if_ether.h:19:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:80:
>    include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
>                                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
>                                                              ^
>    include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
>            ___constant_swab32(x) :                 \
>                               ^
>    include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
>            (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
>                      ^
>    In file included from arch/s390/kvm/../../../virt/kvm/kvm_main.c:18:
>    In file included from include/linux/kvm_host.h:32:
>    In file included from include/linux/kvm_para.h:5:
>    In file included from include/uapi/linux/kvm_para.h:36:
>    In file included from arch/s390/include/asm/kvm_para.h:25:
>    In file included from arch/s390/include/asm/diag.h:12:
>    In file included from include/linux/if_ether.h:19:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:80:
>    include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
>                                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
>                                                              ^
>    include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
>            __fswab32(x))
>                      ^
>    In file included from arch/s390/kvm/../../../virt/kvm/kvm_main.c:18:
>    In file included from include/linux/kvm_host.h:32:
>    In file included from include/linux/kvm_para.h:5:
>    In file included from include/uapi/linux/kvm_para.h:36:
>    In file included from arch/s390/include/asm/kvm_para.h:25:
>    In file included from arch/s390/include/asm/diag.h:12:
>    In file included from include/linux/if_ether.h:19:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:80:
>    include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writeb(value, PCI_IOBASE + addr);
>                                ~~~~~~~~~~ ^
>    include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
>                                                          ~~~~~~~~~~ ^
>    include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
>                                                          ~~~~~~~~~~ ^
>    include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsb(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsw(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsl(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesb(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesw(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesl(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
> >> arch/s390/kvm/../../../virt/kvm/kvm_main.c:1894:40: error: no member named 'mmu_notifier' in 'struct kvm'
>            r = follow_pfn(vma, addr, &pfn, &kvm->mmu_notifier);
>                                             ~~~  ^
>    arch/s390/kvm/../../../virt/kvm/kvm_main.c:1909:41: error: no member named 'mmu_notifier' in 'struct kvm'
>                    r = follow_pfn(vma, addr, &pfn, &kvm->mmu_notifier);
>                                                     ~~~  ^
>    20 warnings and 2 errors generated.
> 
> vim +1894 arch/s390/kvm/../../../virt/kvm/kvm_main.c
> 
>   1885	
>   1886	static int hva_to_pfn_remapped(struct kvm *kvm, struct vm_area_struct *vma,
>   1887				       unsigned long addr, bool *async,
>   1888				       bool write_fault, bool *writable,
>   1889				       kvm_pfn_t *p_pfn)
>   1890	{
>   1891		unsigned long pfn;
>   1892		int r;
>   1893	
> > 1894		r = follow_pfn(vma, addr, &pfn, &kvm->mmu_notifier);
>   1895		if (r) {
>   1896			/*
>   1897			 * get_user_pages fails for VM_IO and VM_PFNMAP vmas and does
>   1898			 * not call the fault handler, so do it here.
>   1899			 */
>   1900			bool unlocked = false;
>   1901			r = fixup_user_fault(current->mm, addr,
>   1902					     (write_fault ? FAULT_FLAG_WRITE : 0),
>   1903					     &unlocked);
>   1904			if (unlocked)
>   1905				return -EAGAIN;
>   1906			if (r)
>   1907				return r;
>   1908	
>   1909			r = follow_pfn(vma, addr, &pfn, &kvm->mmu_notifier);
>   1910			if (r)
>   1911				return r;
>   1912	
>   1913		}
>   1914	
>   1915		if (writable)
>   1916			*writable = true;
>   1917	
>   1918		/*
>   1919		 * Get a reference here because callers of *hva_to_pfn* and
>   1920		 * *gfn_to_pfn* ultimately call kvm_release_pfn_clean on the
>   1921		 * returned pfn.  This is only needed if the VMA has VM_MIXEDMAP
>   1922		 * set, but the kvm_get_pfn/kvm_release_pfn_clean pair will
>   1923		 * simply do nothing for reserved pfns.
>   1924		 *
>   1925		 * Whoever called remap_pfn_range is also going to call e.g.
>   1926		 * unmap_mapping_range before the underlying pages are freed,
>   1927		 * causing a call to our MMU notifier.
>   1928		 */ 
>   1929		kvm_get_pfn(pfn);
>   1930	
>   1931		*p_pfn = pfn;
>   1932		return 0;
>   1933	}
>   1934	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201130142820.GN401619%40phenom.ffwll.local.
