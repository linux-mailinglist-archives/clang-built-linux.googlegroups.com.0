Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBAEI5L3AKGQEUGF6EJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D9C1EFF49
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 19:42:25 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id l204sf6204903ioa.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 10:42:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591378944; cv=pass;
        d=google.com; s=arc-20160816;
        b=sX6XejG8xuWGj6mGv6t7G55O4rVp5MmBWWxlW3RSRQf53KgXSHtgtmCki5Tw3FiReI
         h7zpufe6RLVzFAhIETYV85tYTbBQh1jtQjL5UGeTYGt8rQLyeBNA/vHp0n2wMIRPTixB
         u2k9shgbDI/QcoZj/AguV0lIObe89LsEAWXHJ7ofukAsHXAKSKXCL2C812BA0W3NbBYC
         7FYmvlysuYQM4K02VahUzJuQRCy30hoA7/rXqTA9T3EHpZYGBXfYbzbBiH/FJdePf9xN
         DpEXLxC+dKtjjpqERNUgN9IbKFdnI5WA4/YS1rFp7MHs7M7K/5Anu/rQqoB8W/1fzsSc
         pytw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=xykIc1EyJ2y5oD4tiLSSBu2rPNiaRU2MyaJBKGbMI0o=;
        b=KEIv5SKuzg5/wOIQXtLMk3aFeznz4AGmmWjD8kYp2NWdsabZRNI1ca/cwVCS/0mUMv
         m04GvQUcsfzTMWKJXu9Zlg0h3wXD1Nz0LsUdaqcCJqB7dQ5eOF7Ovrf0VrkYyVeU8UBQ
         kw7cwKj3Lh4Sr6XfoAL9gXfH1eWky8Ky2v2ekieaTHv7pCw1jKFQkQLqvsC0uw9vi1J2
         7Y0787TcVArRH2Kug3nO/lCB5k4myNCmi7rOIIRaq771BOrHk+h/F8QifECKr9+qqMOL
         b0ECbeS0xwIVl8UU5aJKw43OJ6/ib4pSiHANsmbBTJ1mUa1YbdpbNPFDsL81kXlxuyGJ
         ICLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xykIc1EyJ2y5oD4tiLSSBu2rPNiaRU2MyaJBKGbMI0o=;
        b=fY0QtBejPQMfigmw5qP36JeXpMqIvpeipn13ku6gEmCHBV63QPECLVFTDnAfDAWwmM
         I9YhdBNe0aWvsanYK2NzGvLpKV71WooLBWuuWSQjFkVULCCPZWnJbmYWwBb8P+XHQ1t4
         6lOTXzj4eGt5fX12PyWomPFTlxZXMngqDdZhsPl6xLylimhvGyDKVHL2q1kj9wZTipfN
         2TGKB/hvGEb5fTtXWS6WAoG+fz5GmBfoeam9ynrvpS7a/vxrO6fzVTEGKI1IUUXSSM55
         lwyPHyokcMIM4/80utx6Uy7Efgy9Yqm0QTnabHvFaALy3Xu+SASD6f/vHQ9yCtKvzHaU
         I5XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xykIc1EyJ2y5oD4tiLSSBu2rPNiaRU2MyaJBKGbMI0o=;
        b=hIzgCvI/ihGUyEP1++eGpK+MaNMmUzgpLS8cKlH1/XBUaNeeZU3v1/ccYvwu5IaP8j
         iBolO2bkxBlDKmIeLiJW0bh3cMwLPMlts+xN1McdnxnNODt8wlzkVlv4WEZw3OE5Sh0A
         4OeNkpDo4ndmSwJ9bld/g74XkC8aV8rflzc2elg2xtESyTZREQ2V3ZWDmBOIsJ5Q9oZQ
         u9cUYeqVPEcMlsVTUE4EGu8ywEeuHdMkwa4cFUnYqxUzEufCDrBMCnsJHX087WF/f4RP
         2xxIEk/lBaNjSlIE0SnQGQHHE4k5P08upvLSzwNgtFbky6Dr3+8Qok2yBd2qNffOxRKr
         vPkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fW+nRfceykZvwSyTTI2BjGTS01VBfAKKj6dP276YjpGPviVzy
	v3x0M6Ebi4hubnst9HCNjpU=
X-Google-Smtp-Source: ABdhPJzN9Y8+iMWzqz1W7UtSmraOHRs+rtwf1Tj6eUwAUmuj5HB5jmBzCuT1cjabfy6q8keSHy/9NA==
X-Received: by 2002:a92:c6c7:: with SMTP id v7mr8930394ilm.277.1591378944446;
        Fri, 05 Jun 2020 10:42:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3001:: with SMTP id x1ls2652181ile.6.gmail; Fri, 05 Jun
 2020 10:42:24 -0700 (PDT)
X-Received: by 2002:a05:6e02:1208:: with SMTP id a8mr9466732ilq.118.1591378943913;
        Fri, 05 Jun 2020 10:42:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591378943; cv=none;
        d=google.com; s=arc-20160816;
        b=WmvYBYtiTDX6pjmYyq/FzZVGwAVoy0558jr1HngBQe71gOSH8YGhT22CL3MG5aIHZm
         fWGfir2qxEdvAoaK/oyHrkTmafnyEagctWBSUcx31BM+6rPqnIJMZYAz4tzNIffkV/rs
         3fOxVGfk9I0pudNy8RC+qGbsQlYl4qZeEAVbjm46VZlWQh26nXKV/A22E3OT8k9Aabk4
         sM9luAZ4x05eWPZMTUmK7UsIt8Mhm7pQUJq3wh8EYiVqhR7AZdLVGWWLHsKaJ1Is3e86
         t3uUd5Cv0AhiJ/6RiAVZjLuqDYMdBfMiTem9wpRZdK8pUwkB96pLyCYZq3c83gStcLxU
         b+yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=vA4he3GCsAW+bTYNrjYeTaNZ0yTV4CY935vfIWMpHvU=;
        b=iZwABMCVKx6YKgaW2VmxCBBgS3m6Ajf7LVZPUvhQRfZ3OkPEftEhNOcJzt2MI+YNiv
         Qc7J95QhHWGzXtS6TUZCm4vCV4fZD14dN8QENJc91D35nrXve9KVM3YRGrfxEuzHh4sc
         MhDDdvNw8aSRIlGia32pHfSdYkqjNoUA1yFHHzofBSDy0mDp/tYhdK16GIPu/61Oyc7P
         vEdp2cV36ViNpFqnmoksq94baSDsg0pWZ0ueE1mVvVbe0P8wUnRWr2pZu1FvapTQDhDl
         e73lO0j2/ittrJQF7eM1NSxnH/f37iQicTgL9UqSItbincUNM0OVk0vWTbGjNywrCHDR
         TqsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id z11si222003ilq.5.2020.06.05.10.42.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jun 2020 10:42:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: 3vORM3KB92vbj0Qxc8X5sbYqFxdoH/sBHofCh006lVJ93yId4eF+4kTqfuORXxYoDfI0+A3Akt
 HYiFjQh0wL3w==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jun 2020 10:42:22 -0700
IronPort-SDR: 5hfUPWDyWycPEtcgnQEJz9MN6W2REMsxZNyhIPyX44wmGFj7AO3f4ug6Dw9ohVa1fqxA/YUcV5
 ozuEOPFl+LCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,477,1583222400"; 
   d="gz'50?scan'50,208,50";a="305305589"
Received: from lkp-server02.sh.intel.com (HELO 85fa322b0eb2) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 05 Jun 2020 10:42:19 -0700
Received: from kbuild by 85fa322b0eb2 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jhGMF-0000K3-03; Fri, 05 Jun 2020 17:42:19 +0000
Date: Sat, 6 Jun 2020 01:42:08 +0800
From: kernel test robot <lkp@intel.com>
To: Marco Elver <elver@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Borislav Petkov <bp@suse.de>
Subject: [linux-next:master 10774/15793] kernel/kcsan/core.c:829:1: warning:
 no previous prototype for function '__tsan_volatile_read1'
Message-ID: <202006060103.jSCpnV1g%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   af30725c132e2e5c5369b60369ff0771fde7d4ff
commit: 4e23395b9e97562d12b87a330a2fca3bf10c8663 [10774/15793] kcsan: Support distinguishing volatile accesses
config: x86_64-randconfig-r013-20200605 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 6dd738e2f0609f7d3313b574a1d471263d2d3ba1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 4e23395b9e97562d12b87a330a2fca3bf10c8663
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

DEFINE_TSAN_READ_WRITE(4);
^
kernel/kcsan/core.c:757:7: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
void __tsan_read##size(void *ptr)                                                      ^
<scratch space>:92:1: note: expanded from here
__tsan_read4
^
kernel/kcsan/core.c:776:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
DEFINE_TSAN_READ_WRITE(4);
^
static
kernel/kcsan/core.c:757:2: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
void __tsan_read##size(void *ptr)                                                 ^
kernel/kcsan/core.c:776:1: warning: no previous prototype for function '__tsan_write4' [-Wmissing-prototypes]
DEFINE_TSAN_READ_WRITE(4);
^
kernel/kcsan/core.c:765:7: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
void __tsan_write##size(void *ptr)                                                     ^
<scratch space>:126:1: note: expanded from here
__tsan_write4
^
kernel/kcsan/core.c:776:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
kernel/kcsan/core.c:765:2: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
void __tsan_write##size(void *ptr)                                                ^
kernel/kcsan/core.c:777:1: warning: no previous prototype for function '__tsan_read8' [-Wmissing-prototypes]
DEFINE_TSAN_READ_WRITE(8);
^
kernel/kcsan/core.c:757:7: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
void __tsan_read##size(void *ptr)                                                      ^
<scratch space>:160:1: note: expanded from here
__tsan_read8
^
kernel/kcsan/core.c:777:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
DEFINE_TSAN_READ_WRITE(8);
^
static
kernel/kcsan/core.c:757:2: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
void __tsan_read##size(void *ptr)                                                 ^
kernel/kcsan/core.c:777:1: warning: no previous prototype for function '__tsan_write8' [-Wmissing-prototypes]
DEFINE_TSAN_READ_WRITE(8);
^
kernel/kcsan/core.c:765:7: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
void __tsan_write##size(void *ptr)                                                     ^
<scratch space>:15:1: note: expanded from here
__tsan_write8
^
kernel/kcsan/core.c:777:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
kernel/kcsan/core.c:765:2: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
void __tsan_write##size(void *ptr)                                                ^
kernel/kcsan/core.c:778:1: warning: no previous prototype for function '__tsan_read16' [-Wmissing-prototypes]
DEFINE_TSAN_READ_WRITE(16);
^
kernel/kcsan/core.c:757:7: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
void __tsan_read##size(void *ptr)                                                      ^
<scratch space>:49:1: note: expanded from here
__tsan_read16
^
kernel/kcsan/core.c:778:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
DEFINE_TSAN_READ_WRITE(16);
^
static
kernel/kcsan/core.c:757:2: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
void __tsan_read##size(void *ptr)                                                 ^
kernel/kcsan/core.c:778:1: warning: no previous prototype for function '__tsan_write16' [-Wmissing-prototypes]
DEFINE_TSAN_READ_WRITE(16);
^
kernel/kcsan/core.c:765:7: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
void __tsan_write##size(void *ptr)                                                     ^
<scratch space>:83:1: note: expanded from here
__tsan_write16
^
kernel/kcsan/core.c:778:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
kernel/kcsan/core.c:765:2: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
void __tsan_write##size(void *ptr)                                                ^
kernel/kcsan/core.c:780:6: warning: no previous prototype for function '__tsan_read_range' [-Wmissing-prototypes]
void __tsan_read_range(void *ptr, size_t size)
^
kernel/kcsan/core.c:780:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void __tsan_read_range(void *ptr, size_t size)
^
static
kernel/kcsan/core.c:786:6: warning: no previous prototype for function '__tsan_write_range' [-Wmissing-prototypes]
void __tsan_write_range(void *ptr, size_t size)
^
kernel/kcsan/core.c:786:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void __tsan_write_range(void *ptr, size_t size)
^
static
>> kernel/kcsan/core.c:829:1: warning: no previous prototype for function '__tsan_volatile_read1' [-Wmissing-prototypes]
DEFINE_TSAN_VOLATILE_READ_WRITE(1);
^
kernel/kcsan/core.c:802:7: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_read##size(void *ptr)                                             ^
<scratch space>:145:1: note: expanded from here
__tsan_volatile_read1
^
kernel/kcsan/core.c:829:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
DEFINE_TSAN_VOLATILE_READ_WRITE(1);
^
static
kernel/kcsan/core.c:802:2: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_read##size(void *ptr)                                        ^
>> kernel/kcsan/core.c:829:1: warning: no previous prototype for function '__tsan_volatile_write1' [-Wmissing-prototypes]
DEFINE_TSAN_VOLATILE_READ_WRITE(1);
^
kernel/kcsan/core.c:814:7: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_write##size(void *ptr)                                            ^
<scratch space>:18:1: note: expanded from here
__tsan_volatile_write1
^
kernel/kcsan/core.c:829:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
kernel/kcsan/core.c:814:2: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_write##size(void *ptr)                                       ^
>> kernel/kcsan/core.c:830:1: warning: no previous prototype for function '__tsan_volatile_read2' [-Wmissing-prototypes]
DEFINE_TSAN_VOLATILE_READ_WRITE(2);
^
kernel/kcsan/core.c:802:7: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_read##size(void *ptr)                                             ^
<scratch space>:56:1: note: expanded from here
__tsan_volatile_read2
^
kernel/kcsan/core.c:830:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
DEFINE_TSAN_VOLATILE_READ_WRITE(2);
^
static
kernel/kcsan/core.c:802:2: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_read##size(void *ptr)                                        ^
>> kernel/kcsan/core.c:830:1: warning: no previous prototype for function '__tsan_volatile_write2' [-Wmissing-prototypes]
DEFINE_TSAN_VOLATILE_READ_WRITE(2);
^
kernel/kcsan/core.c:814:7: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_write##size(void *ptr)                                            ^
<scratch space>:94:1: note: expanded from here
__tsan_volatile_write2
^
kernel/kcsan/core.c:830:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
kernel/kcsan/core.c:814:2: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_write##size(void *ptr)                                       ^
>> kernel/kcsan/core.c:831:1: warning: no previous prototype for function '__tsan_volatile_read4' [-Wmissing-prototypes]
DEFINE_TSAN_VOLATILE_READ_WRITE(4);
^
kernel/kcsan/core.c:802:7: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_read##size(void *ptr)                                             ^
<scratch space>:6:1: note: expanded from here
__tsan_volatile_read4
^
kernel/kcsan/core.c:831:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
DEFINE_TSAN_VOLATILE_READ_WRITE(4);
^
static
kernel/kcsan/core.c:802:2: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_read##size(void *ptr)                                        ^
>> kernel/kcsan/core.c:831:1: warning: no previous prototype for function '__tsan_volatile_write4' [-Wmissing-prototypes]
DEFINE_TSAN_VOLATILE_READ_WRITE(4);
^
kernel/kcsan/core.c:814:7: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_write##size(void *ptr)                                            ^
<scratch space>:44:1: note: expanded from here
__tsan_volatile_write4
^
kernel/kcsan/core.c:831:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
kernel/kcsan/core.c:814:2: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_write##size(void *ptr)                                       ^
>> kernel/kcsan/core.c:832:1: warning: no previous prototype for function '__tsan_volatile_read8' [-Wmissing-prototypes]
DEFINE_TSAN_VOLATILE_READ_WRITE(8);
^
kernel/kcsan/core.c:802:7: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_read##size(void *ptr)                                             ^
<scratch space>:82:1: note: expanded from here
__tsan_volatile_read8
^
kernel/kcsan/core.c:832:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
DEFINE_TSAN_VOLATILE_READ_WRITE(8);
^
static
kernel/kcsan/core.c:802:2: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_read##size(void *ptr)                                        ^
>> kernel/kcsan/core.c:832:1: warning: no previous prototype for function '__tsan_volatile_write8' [-Wmissing-prototypes]
DEFINE_TSAN_VOLATILE_READ_WRITE(8);
^
kernel/kcsan/core.c:814:7: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_write##size(void *ptr)                                            ^
<scratch space>:120:1: note: expanded from here
__tsan_volatile_write8
^
kernel/kcsan/core.c:832:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
kernel/kcsan/core.c:814:2: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_write##size(void *ptr)                                       ^
>> kernel/kcsan/core.c:833:1: warning: no previous prototype for function '__tsan_volatile_read16' [-Wmissing-prototypes]
DEFINE_TSAN_VOLATILE_READ_WRITE(16);
^
kernel/kcsan/core.c:802:7: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_read##size(void *ptr)                                             ^
<scratch space>:30:1: note: expanded from here
__tsan_volatile_read16
^
kernel/kcsan/core.c:833:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
DEFINE_TSAN_VOLATILE_READ_WRITE(16);
^
static
kernel/kcsan/core.c:802:2: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_read##size(void *ptr)                                        ^
>> kernel/kcsan/core.c:833:1: warning: no previous prototype for function '__tsan_volatile_write16' [-Wmissing-prototypes]
DEFINE_TSAN_VOLATILE_READ_WRITE(16);
^
kernel/kcsan/core.c:814:7: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_write##size(void *ptr)                                            ^
<scratch space>:68:1: note: expanded from here
__tsan_volatile_write16
^
kernel/kcsan/core.c:833:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
kernel/kcsan/core.c:814:2: note: expanded from macro 'DEFINE_TSAN_VOLATILE_READ_WRITE'
void __tsan_volatile_write##size(void *ptr)                                       ^
kernel/kcsan/core.c:839:6: warning: no previous prototype for function '__tsan_func_entry' [-Wmissing-prototypes]
void __tsan_func_entry(void *call_pc)
^
kernel/kcsan/core.c:839:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void __tsan_func_entry(void *call_pc)
^
static
kernel/kcsan/core.c:843:6: warning: no previous prototype for function '__tsan_func_exit' [-Wmissing-prototypes]
void __tsan_func_exit(void)
^
kernel/kcsan/core.c:843:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void __tsan_func_exit(void)
^
static
kernel/kcsan/core.c:847:6: warning: no previous prototype for function '__tsan_init' [-Wmissing-prototypes]
void __tsan_init(void)
^
kernel/kcsan/core.c:847:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void __tsan_init(void)
^
static
25 warnings generated.

vim +/__tsan_volatile_read1 +829 kernel/kcsan/core.c

   791	
   792	/*
   793	 * Use of explicit volatile is generally disallowed [1], however, volatile is
   794	 * still used in various concurrent context, whether in low-level
   795	 * synchronization primitives or for legacy reasons.
   796	 * [1] https://lwn.net/Articles/233479/
   797	 *
   798	 * We only consider volatile accesses atomic if they are aligned and would pass
   799	 * the size-check of compiletime_assert_rwonce_type().
   800	 */
   801	#define DEFINE_TSAN_VOLATILE_READ_WRITE(size)                                  \
   802		void __tsan_volatile_read##size(void *ptr)                             \
   803		{                                                                      \
   804			const bool is_atomic = size <= sizeof(long long) &&            \
   805					       IS_ALIGNED((unsigned long)ptr, size);   \
   806			if (IS_ENABLED(CONFIG_KCSAN_IGNORE_ATOMICS) && is_atomic)      \
   807				return;                                                \
   808			check_access(ptr, size, is_atomic ? KCSAN_ACCESS_ATOMIC : 0);  \
   809		}                                                                      \
   810		EXPORT_SYMBOL(__tsan_volatile_read##size);                             \
   811		void __tsan_unaligned_volatile_read##size(void *ptr)                   \
   812			__alias(__tsan_volatile_read##size);                           \
   813		EXPORT_SYMBOL(__tsan_unaligned_volatile_read##size);                   \
   814		void __tsan_volatile_write##size(void *ptr)                            \
   815		{                                                                      \
   816			const bool is_atomic = size <= sizeof(long long) &&            \
   817					       IS_ALIGNED((unsigned long)ptr, size);   \
   818			if (IS_ENABLED(CONFIG_KCSAN_IGNORE_ATOMICS) && is_atomic)      \
   819				return;                                                \
   820			check_access(ptr, size,                                        \
   821				     KCSAN_ACCESS_WRITE |                              \
   822					     (is_atomic ? KCSAN_ACCESS_ATOMIC : 0));   \
   823		}                                                                      \
   824		EXPORT_SYMBOL(__tsan_volatile_write##size);                            \
   825		void __tsan_unaligned_volatile_write##size(void *ptr)                  \
   826			__alias(__tsan_volatile_write##size);                          \
   827		EXPORT_SYMBOL(__tsan_unaligned_volatile_write##size)
   828	
 > 829	DEFINE_TSAN_VOLATILE_READ_WRITE(1);
 > 830	DEFINE_TSAN_VOLATILE_READ_WRITE(2);
 > 831	DEFINE_TSAN_VOLATILE_READ_WRITE(4);
 > 832	DEFINE_TSAN_VOLATILE_READ_WRITE(8);
 > 833	DEFINE_TSAN_VOLATILE_READ_WRITE(16);
   834	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006060103.jSCpnV1g%25lkp%40intel.com.

--G4iJoqBmSsgzjUCe
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICHB82l4AAy5jb25maWcAjFxbdxu3rn7vr9BKX7ofmtqOo2TvvfxAzXAkVnMryZEsv3A5
tpJ615cc2W6Tf38Aci4kB6O2q6v1EOAdBD6AoH784ccZe315erh+ubu5vr//Pvuyf9wfrl/2
t7PPd/f7/87SalZWesZTod8Cc373+Prtl28f52Z+Pnv/9sPbk58PN6ez9f7wuL+fJU+Pn+++
vEL9u6fHH378Af79EQofvkJTh//Mbu6vH7/M/twfnoE8Oz19e/L2ZPbTl7uX//zyC/z34e5w
eDr8cn//54P5enj63/7mZTa/vf3w7uP+7PPJ/OTfnz/cvnt3+u7T+w/n16e35x9Oz+bvbs9u
3326Pv0XdJVUZSaWZpkkZsOlElV5cdIV5um4DPiEMknOyuXF974QP3ve09MT+MerkLDS5KJc
exUSs2LKMFWYZaUrkiBKqMOBBKvRE1Oh2CLnZstkaQq2W3DTlKIUWrBcXPF0dvc8e3x6mT3v
X/omq1Jp2SS6kmroSMjfzLaS3pgWjchTLQputO1CVVIPVL2SnKUwqKyC/wCLwqp2r5Z29++x
z9evw5IuZLXmpalKo4ra6xgGa3i5MUzCCotC6It3Z94cq6IW0LvmSvuT6RkaVguzgrFwOWLq
9q1KWN7txps3VLFhjb/sdu5GsVx7/Cu24WbNZclzs7wS3hx8ygIoZzQpvyoYTbm8mqpRTRHO
fUnwRkXMPxpZXAuHRS5tP7hjVBjicfI5MaKUZ6zJtVlVSpes4Bdvfnp8etz/q19rtVMbUSfD
5NsC/H+ic38WdaXEpSl+a3jDyZEkslLKFLyo5M4wrVmyIobUKJ6Lhd8wa0BfEZx2H5hMVo4D
R8TyvJN+OEiz59dPz9+fX/YPnkLhJZciseesltWCD1PzSWpVbWmKKH/liUYJ9gRCpkBSRm2N
5IqXKV01WfnCiiVpVTBRhmVKFBSTWQkucbY7uvGCaQnrDysAxwl0Cs2Fw5MbhuM3RZXysKes
kglPW50ifE2qaiYVRya63ZQvmmWm7LbtH29nT5+jDRhUcpWsVdVAR6AsdbJKK68bu5s+C2ol
X58PlA0o1pRpbnKmtEl2SU5spVWbm0EyIrJtj294qdVRIupMlibQ0XG2AraJpb82JF9RKdPU
OORORPXdA5hPSkq1SNagoTmIodfU6srU0FaVisQ/H2WFFJHm9LGzZOr4iOUK5cEukgy2bjSw
rk4tOS9qDW2GFrAr31R5U2omd+RIWi5iLF39pILq3fIkdfOLvn7+Y/YCw5ldw9CeX65fnmfX
NzdPr48vd49fogWDCoYltg0nvH3PGyF1RMaNIUeJ4mzlZuAl+RYqRQ2ScFBqwEpbRbTHSjOt
qEkrEayhEr0+buFEGrbZ7s4/WBe7fjJpZoqSrXJngOb3DZ+GX4JwUZujHLNfXXX12yGFXfUq
Ze3+8JTMut/wKvGLHXDwTmFeofXPQBGLTF+cnQySIkq9BkiQ8Yjn9F1gGBpAVw4vJSvQafaY
dpKlbn7f374CjJ193l+/vB72z7a4nQxBDfSTauoaMJgyZVMws2AAMpNAWVquLSs1ELXtvSkL
VhudL0yWN2o1wpUwp9Ozj1ELfT8xNVnKqqm9xarZkruzw6W/rWBrkyUFPW0DbmWGVjImpCEp
SQYqkJXpVqR6FciN9itM91SLVAWI2RXLNEQ8ITUDpXDFZTxvs2qWHJZyVJ7yjUg40Q0cmPiA
RsPjMhs1t6jHZdbMeVaxQq3TkphmgVYGOAVWE9QDDYZWPFnXFWwt6mCw15w6eVZ4EBLbPvzm
wabBpqQcNCeYe3LtJc+ZBxYW+RqXyJpU6W2u/WYFtOYsq4e0ZRoBbCgYoVcom0SuQLukbI+t
UwXtOiTdjbWq0Bi0ysN3tKoadDN4VIhV7L5VsoDzR61ezK3gjwDIOgAbfIMWTHht4REsSuLx
W6VSJ6peQ78509ixN2BfWJwmHb4LUOkCcG1wNhUIcQHWwbTohFw/t8sER3dkV3AqfeDjQHhv
0QOlGX+bshC+qxUsdTRTou8FA0CYNT6uyhrNL6NPOPveytSVz6/EsmR55gmjHbkt6EdisVVG
CbhagYILPAVB+0CiMo2M7HhXJd0ImEe7xCrab6uHceesWc5Ss/UOA3S+YFIKX0WtsZFdocYl
JkCgfaldRTypWmx4IE9mBFsHu9LhBGT71UfI3lijemhmhhFD4yVgUlA7wVFW/DdyAaEeT1NS
y7hzAb2aHkh7QnR6Erid1sy28aV6f/j8dHi4frzZz/if+0dAMAwMcIIYBtDnAFgmGre62BFh
1mZTWNeHREz/sMeuw03huutMami6qqJmsPJyTZ/YnC0mCM2CkuG88iwZ1oZdkmDO2y32aKsm
ywDPWGNPuHkAqTKRB0DEqjBrZAJ4HwaGOub5+cKXpEsbFgy+fZvhQleoJ1OegCPpDaRqdN1o
YzWzvnizv/88P//528f5z/NzP+azBuPVYRxvlpolazvuMa0omkioC4RVsgSrJJz7dXH28RgD
u8SgFsnQ7WvX0EQ7ARs0dzofucOKmdQPMHWEADp4hf3xN3arAs3tOme7zvyYLE3GjYCaEAuJ
znAa2vz+5KPvg91cUjQGMAMDoTwykT0HyBUMy9RLkDEdqUjFtUNQzr+S3Jt5yQG+dCSrQ6Ap
ie76qvHDrgGflW+SzY1HLLgsXQQDrJ0SizwesmpUzWGvJshWg9qlY/kYTF6Ba4v7984LHtr4
kq08BdFbZQRDtydziq2xISdvfzOw1pzJfJdgQIZ7iCLdAYKEva1XOyVgg03hQrvdaV867yYH
TQVm633kUCiGu4lnCbeMJ05TWPVbH55u9s/PT4fZy/evzn/0vKBoFQLEUlBBTdQTGWe6kdxh
3lCFXJ6xWiRhWVHbaJInx1WeZkKFrgXXABZAKCf6dBINmE0GUUgk8UsN248iRaCXgBOPW27y
WtEgHVlYMbTTuhgTGENlplgIWvlbIF8VIEUZYO3+pFP2dAcHATAJANZlw/1IEiwaw0BGYGHb
MieAE0u12qCGyBcgDWbTycIwyTAO0gEUMIJR/y44VzcYaQIhy3UL5obBbFbk7LEtd0Ayep37
WRyJu8SsnUPflv/KRL6qEAjEo05k2ZcNnvH6IzmSolYJTUCsdEaTwA5TALnXznUTyr/d+hKM
Zqt6Xfxi7rPkp9M0raLzlBT1ZbJaRtYaI46b6OCBr1c0hT07GWiXfHcxP/cZ7C6BG1Qoz54L
0IX2iJvAYUL+TXE5dfjb0Bj6XTwHofN8aegdNKI7fONiOHDjwtVuaSPuAwxrCQngNNZQB6nj
uFqx6tIPsq9q7iTNm2NaBLG4JQMJExUADqLh0topZSQrwVIt+BIaP6WJeBUwInXILiYMBTDq
HK15GP22coF3ZWasUsHDaQsD5SW5BDTm3N/23s+61nhbManxilDDOaPhQeeHp8e7l6dDEH/1
MHqrVJsy9i7GPJLVtN87Zk0wikrZAp/V6upq2zraLdqdGHogxq2rBRilyVl7uRMaiqrO8T+c
dIXFx3WgXEQCwg/ne0IfB6ertWUiDYveW8MelqVCwkEyywXiDBUPMakZWnwtlBYJFW/G1QGI
AUKZyF0dqMOIBErT4tHFrhNWqjmLbKwld1UZgcR68sidcXSrGro7QbyQCgyKQ7+OaJHT1DBQ
2Zg1CpzRYP093ZXnfAknprW3eGvU8IuTb7f769sT759gNzA0Bwi/Uuggy6YOb/uQBQ8RWqKi
G93A6KqH7O7WDQPWW1S4g6BoKUn5t5MCFZJW09hFgUsyIWBNIeqRBNtjNCymdreYZs1306rA
VdLq0u6NqbLsH7NSoILga+/7h0hDNoGgeIKuF0lbXZnTk5Mp0tn7SdK7sFbQ3IlnMK4uTj0Z
cWBuJfHOyYvo8Ese6F9bgK7T1G04UyuTNiSo7kE/HGgAfCffTkMxBVcO3f/2xA2Y2UoMxjsx
rHSsXXAYlyW0exY02/kcrZSAKwnWY5giHqVkF2vLYAQxy2VV5vRlYMyJV4r0QhWp9U3hzNHG
AuRIZDDaVB+JlFpfNQelVuOVTDDkrpAMHR3zlkZ+MktT0+lmn+Z0Y7esK9AdeRPfF414JPy1
iRVqy6XqHFyJGs2dDnGwz4W+rfWmC7GULNRiPp9e1QGLs/hPf+0PMzCb11/2D/vHFzt1ltRi
9vQVM8I8Z7H1t70gTuuAj25wOoJai9qGID28WBiVc14HJagdxqVbtuY2E4AubbOX4Mh4gMKn
LxPqaBRBa9FND44l3eBFQ0qQMN9pvArdjKgK4d1CV2KkDlckyb2t3f7mwA3oyEwkgg9x4Klw
A26X7wnFX90htIoE1q2q1k0dNQaCsdJtNByr1H4AypbAodNg4d3YLExTXuxusGnIa5diSTq+
rq06kUZHSMKOtBY67rcVjLAHhAKZcqOZ6kXyjYGzJaVIuR8lClsC7d2mtUy1w+KlWDANKGMX
lzZah5DSFm+g92qq6YyNK2iW0mjBriyI9lRj1t+THORHqWhsg5vmEPYkWaSjPemJo5GKuqDN
eNQoWy4liKCuJrdKrwByszzqOWkU+NwmVaDz0cJ6d5aDMnZLhgquqUG5pfHwYxohqUfmkKAA
VnTWhxtjBZ4pGK4JhIcsrSVolf7UEnRcoopdPHcMFjR+c3XjHBJiFQuuV9URNsnTBvUeprlt
mURsl1ODHXQEq7mnacLy9tYx7AIJ5ADSWmfjs+ypdYGXvCBDoqKzebqtgL/Jc4yQFNVvGA5Q
mbgYspBm2WH/f6/7x5vvs+eb6/vA8e2OVhiysIdtWW0wzREDIHqCDJC28K1yT8SzSBR3935Y
17v8jgMjY15cQQX7QCMsqgreJNr8hX9epSpTDuOhRYmsAbQ2H3FD3uD7axXOl+ToZjlB76c0
Qe/GP7lZw2B96fgcS8fs9nD3Z3CFOTg+dadlA+epTmyYELuaDkS3mvwoE0AQnoI5doExKUrK
wNgez10EFcBzN5fn368P+9sxvAvb7ZJzh2Q04nj0ayNu7/fhYQntSFdiFzgH/BwmSQTkgpfN
pGj1XJrTOQABUxe9JrWYI3WR7niydkZe2N/u6jj5snMf/hZF26VavD53BbOfwLTM9i83b71n
EGhtXPTHg4dQVhTuYyh1JRjdPT0J3BxkT8rF2QkswW+NkBRYwKvLReO/RnB3mRhb9IwnuB2l
d2Nm5WOnskAuJmbkZnv3eH34PuMPr/fXnawNC4rR5j4ONyG9l/7tnLuSjb9tzLOZnztXF2TH
v2Ruk9j7msOwR0OzY8vuDg9/wemYpfHJ5qmnLuADYyT+smdCFtZogo2PAjaDkSuEoFIroNxl
AAVxaqPw3UrBkhV6xeA2Y8wENtxd8Ays2dYk2bJvYBiRV94519TtRVUtc96PP4iOO5KawHgt
GaNxNthscdYxTkxTBN1awZ82xm2dEmJIOM/usrRTWnr/5XA9+9ztj9O8fjbnBENHHu1sgFrW
myC/CC+eGnzQMyWbCDs3l+9P/btjcIZW7NSUIi47ez93pcFrnevDze93L/sbDDH8fLv/CuNE
vTHSyi5+1MbY2zIXcgrLKpcXQpS0SS42O63O/cQtO/cjFQHC9YhpiHe5u21yo39tCrzSWHBK
444uxW33g5PblPYIYyZkgn5D5KDinR++E9KiNAu1ZfF7IAHLgdkbRO7Cmux5jVfPFKGq6fK2
GXxSlVFZg1lTulgreJzoSVEvSDY8TMcb0s9siytwzSMi6mX0McSyqRri/YKCJbcGzz3niFbN
pnWAh46Rszbvc8wAwLX1TSaI7Y1EMVp0N3L3Ns2lCpntSoCpFKMbZUzHUH3oUduUSFsjblIV
GOprH4rFewAuAJw9DC1h0kMrKaHdcnzKx+rh9uDLt8mKQSjGlqy2ZgETdFm8Ea0QlyCvA1nZ
AUZMiEcxz6GRJehx2IoglTBOrCPkAz0yBHE2M9lleUS5zEMjRP9d7pxsFw2D0dQ+Dqf3OJXI
YyyKxoB/v+JtVMeGBEkyPkGgWFp5c+fD5f23993xBrlSd0U6QUurJggtDbNo7xfaVCeSA9co
hw2NiKMsm05Bt5k4Abl7OdMBkbjucN8RVoMTUZH5EMP4tkIDImi30maZxPuN2oJfaqtR1kGi
oCVPPJKJ1en4eUws+xXKln+LHyizEi8FUa934el/ymfqhmwT6Zj+GUcubZ6XJWKgHAyupHe+
yqwi07vRPNLuFpMncDi9YB+QGoyYou3heWYFn1gnfik0WgX7rE+zUZwe5cNW7+5tqPEFKYyx
kcQOSP0e1hqyIol2vZTGqUZ8FqKplmzZ8eZpLHj1rrMGepRk7SS2fc83NouwtsJdevSpoaGD
Ah5LqK/b4bw7WwiX6EEtKwpMvykDwutLp66a3ZkGA6u7p7Vye+mf6ElSXN0JEVmdIg1Dr2FJ
wElqLwFDY9hDIrDbAe4Z7rvw0YqX30xGt72McS9fwAHVpNr8/On6eX87+8PlVX89PH2+C8Ni
yNQuArEAltqBSRYmkcU00q0+NoZgvfD3AzB4KkoyA/pvwHbXlESUDKrTF2ybuK8w6Xz4EYJW
LfjTaXfSvqyFpZ+I4LdcTXmMo0M+x1pQMulf0k+8Kek4BR3dbsl4hiSfyItseTDVdQtQRyk0
Ff2DJyMKe/1EQf0SRBN08a5YVL4e6PSpBtM/XEP1/S3yicsNVZ4OjeAPLrgs5hrsIK7lSOEO
N2O6QrQJvi1xdOwT9tQ2E10zxixySzHYM969rzALnuH/EGeFL649XncFvpWsrn3wMdyf2pPH
v+1vXl+uP93v7e95zGxa04vnEy5EmRUaTYoXk8iz0CFsmVQiRZgE1BJgP+kUSGwmzlfoT9TU
2OzAi/3D0+H7rBjCYOM7ZDITqCP2aUQFKxtGUWLb3eW54HN8TbUEQAj0I6dIGxerGaU0jTjG
nVpJNTa3c0zP8KX6sgmfEOEwhapyyvRh+AS7s7/uUQbCM5VLEJa3Q54kd7H4qvtNkxFbnIXQ
Zh7YrAOXtdgnkFqzm8TZcxa5SY7Hjs7oJZITnFtrolR6TF7BFAtwJeLHKi55uGqDl0NIQlHZ
et2k7R67J/upvDg/+XefZTuBUvt2SXTK8i3bUUqP5C7cwzPSF8Z8jDCQETyQWAcxqQRcktLm
ClMXKP47FPjoUxG87Bp25JYbqfikQ118GKpc1VEmTle+8PH5lSq6/RtkoX20AAtf08LQ1You
wLqYho3+dREdv2Ub6LAL2zk3x1BNbV/KbKI23JuH6Qx/WH+bUxw/5x+gC74aBrS0KtjE6zCL
gPH61O4xRqjp5AJ/oNb7YLkPX6b16SAwPV4r9y9/PR3+wHupQet6xzNZcyq9E6ypBz7xC0xG
IHm2LBWMxhGA8+lbqkwW1hiSVBg3ZiRSYf+0tu+tue+leIV2JJ5j4FZgEJDaBTrxRzzo9xv1
kOFjk6aplARgqkv/N1zst0lXSR11hsU2S3SqM2SQTNJ0XAZRi2PEpURhLZpLKkPdchjdlGWY
UAuoBJRrtRYTcVpXcaPpwD5Ss4q+g2tpQ7d0B7gthtHPRCwNIOQ0UdRxDqhP7afrF46lwuik
7orD5pu0npZnyyHZ9m84kAr7gvEaOu8Re4c/l720URaj40mahR926CxXR794c/P66e7mTdh6
kb6PwH0vdZt5KKabeSvriJTo3F7L5N7RY2K5SSccFJz9/NjWzo/u7ZzY3HAMhajn09RIZn2S
Eno0aygzc0mtvSWXKYBgi7j0ruaj2k7Sjgy1vVJpE+uOMNrVn6YrvpybfPt3/Vk2sDo0bnfb
XOfHGypqkB1al+Dv0WGAFM2avxYdCYCZDbOAZSxiu+4zu9gqSV3UR4igU9IkmdSkKpnQsjKl
lx72hsoAZTr8MQGN+ZfkD7khKWfhTyBhGfi99O9gIHEhz+Yfz0lyfqapbpT2TM0SbEXgrUmR
LinM52LlqIoUi3YLi4gaG5jL/3N2Lc2NIzn6vr9Cp4ndQ22LlGRLhz6kSEpimS+TlETXheEu
u6cd67Edtnum998vkMkHkETKE3solwiAyWQyHwAS+LJdz32P7IyMtHZ/4k8mrPRUShUPo8Ba
fg3FvbAmCZnm4IJuoNaKbr0ghAmoj0nEyXERhoV1iZ4rqkU3/oo5wlQhp+oXB9AEZS3hKsnP
hZK2fuMoirBRViQLb6S1WdL90OAgMcYjUDuWSBp9hthiKhjKZR/ThbkTBiQ4I8xw6wnsyxPf
rd1Cl1Ro+pzE98yLKDtV53gSFt/3gU7rkicMBNW0Vt60oP4erD5S2n3Fsj80DTvJhVmkzSoJ
N/BQlZMG0vWHDuMsKllgWjWuf5eksqCSFaIO+gdlitKBPUJkgkRVlRjpocdGg+brXcshUra3
TIHrAD9ccyj6jyOVttrqZ+OMmgKzz8ePDj6NvWdxU7tA0fTkUeagXORZbIXrDmbJpHiLQU2Q
seiDSksVulpPHGtbMjy2iMURhbxzQ2vuMLZSvLfdZjShoCO0aTBu/tGSNBOd6Hk7XaNGsUMc
FtadB2l4AJ3HmmuCY6UCXhUlOwee6rYmuIsmsur5z8fP19fPP2YPj/98+vk4jUSEe6y8W6xo
EB9VWUu09rAUydugmrxux1L1YSGbv0RIV8LRkn05+6umsR9+gn+MlpYnZhs7m4CsxjsYbGUh
a0vAvAmkjnOOyygx4Sdj99ztcW72JiNtYLw8Pj58zD5fZ789Qg3RP/qAvtFZN6t745fpKehg
QOMfcT8ag8gxH+uQUggPfdml1pt80TXRfnY3sRjhiGN5U/DJeFNoH1qcT8hW8kqgYhbfhtcX
YuU1G0qyplfKPVYM7TWIigMGmcrT0E5M3alA76SOWm0r7nhimqD79kskIo2gA40oW2UOFUns
JQveguNFm23pPKcYWCpO8hP14kf1oQaRfmG0fLzRiOGke05oeu0k0NAIx1ynw2uXCljQgWJf
dKCyFlpTrN20sApJjQxcVRWpfQfSpCzhqZAYhC4K4T7NEMktFCTDvjHBtqjl1FkdNltJxiJy
dGSs3SpOcA3klQbxpc+l4/jVOkukPm7tAvVKLeJBIVdRFxcS0NmOU88IiUeYsUZ54MWXsr6i
eUpWQfRzrBifbpfAdJ5xwR7JOihdfBQVCjD+9yuh6sAnZJOECDf+fH35fH99RjzOcTXrhsrH
099fzhi9iYLBK/yo/nx7e33/pBGgl8TM9tTrb1Du0zOyH53FXJAyU/79wyNiDGj2WGmE0Z2U
9bXsEEAut8DQOtHLw9vr08sn8+lCc0ZZqAPPREWN3TgU9fGvp8+ff8jtTfvzuVOs6y7fmRTq
LmIsIVBlyDtsGsSy2Yyi1mzU1fbbz/v3h9lv708Pf39k/uw7NKyE7l2qIg7p8tYRWu3pQe8F
pjov5ja7G9agnNdNq/eOad2HQlIFkns5knoQ4ivp+IRjitEE1NHX83ArIZuS9f56G8By1K8a
5f3b0wPo0JX5AOOHm1S1ruLVdSM29/DUomobya9My7haC9WFG8GC8KUmKhvNW4gd0lH9MTD6
6We3Is5ye+f4aGJZDlHC9s4ZGWa9+kCSBKHl6rTgcfE9DUycoz1uOhHQzLJQJa5M9aI0zxxi
/vXxBZPeO4ScP7/CNPA+vsnurCNEWARAT9KqRohwx0SxaOpSjRH64+uNd+nozqFphpqKAkMO
gfhy4y1SaMgo1GtS0wj77nWJqq3jR9ChI4cWDB8G9duwjE8O/2AnEJ1Kh6/VCOgsbVNMa7a1
Ze8giikdv9EJu6BHCMCTXvcd5wkg+3RMEG9uGydxHdMwojLas0ABc93GfjChVUmcsuycnk5j
3zra2ZuQ0pRNf91zNKA/j4uajrUhR8mYVGTwpYd42HQnmT+93KDo56B7BzZcZSCgeu4zsWOl
NVsz4FJ/J2FpuH//fMJaz97u3z+sORBvU+U1ukdE1xXye7gJLUP8V8CCPqoTWi6wTEA8xk7o
SJBfv3nOAnReg47giybvxgVx13iKo9Evu5MX1m98hJ+gsiCOuUE5rd/vXz5MUtMsuf9foWXy
vHA1CtYjxhgNmIKMw2xYeFT6S5mnv+ye7z9g4f/j6W2qNehm3cW8xb5HYRRYIwbpMGqGgzlY
9aAEdFfqvSgrCo5ImRDU7KbVWOWtxwu3uP5F7pJz8fmxJ9B8qabavwETtKuX4cukYHmG0wJh
lVFT6rGOE6vPqdQi5KldFbXF+Cd5zXV/OaMV37+9kWRW7bXQUvc/ERHF+rw5WuBNH9lhjQ6M
3LGCLQi5i9eVd6WI2L5AlLMwlBxw+l3T8PqqMY1AyHFwmBKjautPiMHNer5shFasgq3f7hJV
yc5wFAHj/vPx2clOlsv5XlKp9Aty+0pXWqeVnjBfwPW6CEppusBoonzxyczhB4/Pv39DDf3+
6eXxYQZFOZ2F+jFpsFp5k0+nqYheu4tlZZJIucxnFEHYfN2y9hMGRnsu4zrCU7zinbylzsVz
cS9Nj+/gUPiLG391NfnAVe2vJN+QZiZ9M7NOCUTXc+rQHpsIFVbnNSI6oUOPBpt1XNAOqg6A
1/PXnYH79PE/3/KXbwF+Q5djSL99HuwXxC2qY/Iz0GPSX73llFr/uhw7zdf9gT4pUzodoLRm
bVgZMpY5T4jdpzPfUZboVCWZmdNtUMrwG1wp9pN5UDOjIEBT9aBA7+GHwThE2iqVnItmpj23
09ejZWw1plRniv3rF1iK78H8fZ6hzOx3M8OOZr698uqSwgjzHFuXr2RsfLWTFddBIm1iB4hp
L4FT6WUJCTrXLAtPHz/F+uOfKpadboMQfORc2r0bWyGubvKsOylLaKSBbZSES1E0l24K0YD5
dX75Cdttrfus85VA89Y3TRopKXCZ+pv5358VQTr7h4nZE+dYLcY7162O+R0VoW6wfl3wf9j1
43llhKwD2Zc6sgPPIJQCEIpOkeE2BiNz17LFGs/JYBU4biX/K3I0+rEVxZvvBGEbm6oIUEnl
ePEjYTTRDal1bP70bNWs19ebK+G5vQTM0UQ/ZEGBOiJQW5wpdLIODq6H3v58/fn6TD1qWdHh
cpkd2lMaSc5HRh/G4dQeA22vgm/ZJnG1SE5zn6aFhSt/1bRhQdOgCZHbnJTBPj6Y6ekdPwgu
3qaYncva+aAyGRW5jneptYBo0nXTEOU6DqrNwq+Wc0KLsiDJK4QaRhiWOGBpZmDKJiyUQBVh
tVnPfeWKRKwSfzOfLy4wfRk4sm/jGoRWDnDJXmZ78K6vL4voim7mknJ4SIOrxYpYKWHlXa3J
NYyvGhoCVqFiMdkcqNjCSJ3C2namjdXgwRFNW4W7SFwD0UcKlmjDPvGpUFksiQc+H4fmGnoO
VEiVre+t5n1/jyKY4lLiIu+/taa3qvbJKBuJLI6nI7thIww/Vc3V+no1KW6zCJorobzNommW
0hTQ8cFGbNebQxHxZum4UeTN51a0V58qw9+ZuLu3195cj43JglI//nX/MYtfPj7f//yHPrmk
Q+v5RLMey5k9g/o2e4BZ4ekNf9I1ukajUqzL/6Ncaarp5g7i2atBn0VLtpC06h6LlkwrA6ml
OTkjtW6YQ+BkHKynlGtL5uTPF7TEUuiaf5u9Pz7r848nHawrWZ/AQeaRKoh3nHLKCzutZLwX
z02VJ5BBBPcwpKU1iIknVwvmVcoeS9f9S+9E/I3nW+5/hOvx8AKDPlFGAW5P341BBVFwyGlV
YKyrJEAoAbqyD3PAZDtQbVWmWhWLHYwtU8O8phOkwwFFq8IAq87omHwpZLYGpmq0WYQbBh/0
sWLJRObaBFPsjXHFOUm+3xsTwXSfKIpm3mKznP3n7un98Qz//ovt4fV3x2WEMSGyt7xjgp5V
yX67i48ZGl0F0JNyBArWrmieWqoCBEpK8dSDbS3FSZnAC75SpjH5qDoqzYJp3+ZZKOfP6KWf
iuIb7o9yB49uNVJONInKqyPZcFYBBpZaL3iqHZhJcYHScmxi4+Kgmenw+m9hOjmG8rP2skdB
BVUUsLYMDIqR9cYdtYc4kb8Tj/rT0XgahCzP6hJ+0D2hrN52X5bts8XOoNX6KHUOoLYn3QH0
ucw0fuYU8WMeTWhQ6yo/S1IZDanswoDZNajOVKvrifPVlAh2N1tVDDUQcc97Zp5u5n/9NSmq
o9MtkP4hMazl0mPy1J9bOmAvUadkQFKiPUKQWDtC17sociXZQsiLGGSUIdibyD0ZPiZuN5Zc
reu5moEb2N7V2VkVJrg+uys1Si3PF5/mf11IqevkLqX8t6pSdlVxMX2LibOziZTl9B8mBcCi
TJMmkQiqL4KzO+oGyuH1tb/yeWk9VfqKA68MTvysQMZFm7062j1DpVsFpmZoQfEyziVEWxA8
5GX8Qx7G+Hxl1UdJ74CJ7jBmIpmq6474TgmbFKgEdJoyqkE5GY9VY3zzzDnlHSZZGIdoaCXH
28B0nJORa2IYpwuspte17HTWzErDUMshbVrgUMXWc4Ywy97D+/n+9NufqM91wQ+KYFKwQI4+
nOnfvGVYiBFeic3DqQmEYavyCWxD6COLQDTaiYQKVVFHzFOgCfqoAhxYjpLVPnLoSlQoUQF6
3ALJR8jk6oih2Qcw3gP72hy4Vcd7hOARzJO6+rpCqfrhQBZmUq6g/l4AlKGsZoPo1k6Up+Kl
Q0sYBPCb5mzxSdhck3j8KuKXtKkSElBMH3EEa4FWWF+32Xa9pmdjkDu2Za7CgG6qbZdLdmFC
BhHT3zoSquNpvIwLfEIIUlTmqEjWsI3YwPJNEGMY+oPs9sEyJD+MQbjnTg2Qta7aqrRiMTV1
l+iQ1ny3c4K7aLkwkGOeNfNwTr/uhvABAiWeOkSEUIJBKIMeu+VXevo8nHU6n8VhH4GVeoqP
5MvXh2OGsUI4CunRyJR+ctC3+0ZmlHvmaTHPbAtRO0/i22PsnueCQ5RUjj0QKgZG79dCGtrC
EcHYtHg+t2RMWRlypMAwknsuFcFI8ssfGjF0I9Zg28jPxFx/etcPe++FMA1e61d1OxzVOZKW
XiITr/1VI088fXrK6FHzxGN6ou6QHiY3dyTT7uWxBfSTI+25cd0CDMdDls6nS9P599S1VKaq
PEUO9CYqBjIqy10AAL1UHJS8PW+q9XopH2WIrJUnFGgYbcrOsK5+QEGNc04wx6Ad6PnxMPP4
6+9X8ynF7A6bnWLGbfwlsMkd8M7Xy4Xcd/Qjqyh1VOiu5IEWcO3NxSTaXaSSrHF8n0zV+IzL
7Q4/o9Ja4ivfMeWcmv2Xwwp+lnmWp1/M79Q0ABuo0VgzGWhfmHLa8jWT3naC2ZLllmjIshC0
x68qlt9ITYGHSgSOBjSgI13EtCOHdJCNsgrhEYlTOGe6HpG9TfI9PyHjNlGLRoxlvk2CzJZF
ilnFnTfw7NqOpldn612bKGvl7ZHbiOzK3SLQmK03APHL7oDuNUeKI5Eq6Wk95dV8KatumMRS
Ryy5X4nL6tpbbAIyoPG6zvMJoS1igai9FPU5rqwsy56/9vyN+N4o0OZJiMY8QnpJi1i59q42
jreDXqYqmYd5zBMfZcesVApWpOQKpUIRRRSmjDwBiwj+UfisHetycInb3vL+IPKCEH3fsuaH
Aq7OOtw8OrcJZ4ddJ5NoXaCt8DJxQjMRqmDjzxeeQ5RZ0XC5cZzOByxvI63ttLSUHncbFXHg
0dUA2RvPayzK0pc7epUH6Cdt5EmwqvUCwmpfp9rP/vU0WIleVipwl+UFmBLjo8Nz0DbJPqXn
SI00e6OFFFVHh6MIeEJlyEJQYxJWddZIHRXXBmqXs5wUdXLk5xCRc/zjS93S7DLTh3f7zqqJ
QV1V0mTZSSQJvDNrp10Y0qiEaEfVSX1pRbxXNzum14Ji4shd09gBW9QmJbe/SeXBXRXuUeHb
hoYSpIiSxeptGHG9VXRUaupgRI0aCpLtYC3KYzEbmgK9P8BNntSid4aURW2KgOYaHu6s/FYk
kPWuOgOl913BQ2Zw6YwerXYUkTmMs9bc3FPS0CJ0TpKOOq5EJhhni3ShHaCRr2GJ52UBcX0t
EM3OivVWveNiWsRyvfY4NYjBgFYWzRiAdr1D+JxdqWI3C4v1Yu37jtdCbh2sPev5+qblWiBe
XU8qoMkbxwN2GqLeuiUOiuRYOatstrWbs7pzioBZDbOlN/e8wC3T1E5eZ/x8yQfF3fFixuLh
LTTYIi5y7Qkc1PI5OdNIlSqx2y1roIjvChaixlErVa/nC6tD3k4f0GliNlErMBYRNJfpG+Hq
Z1cO1C1v3kjqHLpBYUTEgVX2CWyxqorsgrrJeA8j3y/xr/yFTPuDybjZrFIpGbNIqFFYFPyi
3VY4Gi0iTOkJO58QiVPADqSmRSHmmBcdBmA3x9F7cuVKFweeqzBlnWBamDNNccuAfBD2rlVy
4AogcIeEOsdZfVqmgn7vSEpEtj5LGX+xgCU9TR9ePz6/fTw9PM6O1baPMNBSj48PHRoFcnr0
FvVw//b5+D4NxDgzDbCHw2jPIVlBUGbcKUiNTSHx9AbzMDQO0h5bd/SJOT9DHFGH1Q33PvBH
pFzTocx+yheKpWLa/ycXP3FT2cwSVGbxg1FBwdUjSUVgm1v2GeWXyuEOZEKDjScxK0cr8g1l
ynGARFKRH3ehkqMvqZRe9qOMe1B11z0/paqZYWjM8+PHx2z7/nr/8BueoDbGvZooQg2swvr3
5ysU89iVgAxhJ+3L4ocG4XEpUHf9RYQGP4QJG994jWEMDlGdWWAFW2j6xPFMmbtyIg9zz6T1
mv/2V79okDMy6B+ePjQIjYUX4M/nMHVJPUhlDe/mSDCZzUPqsTQ/Bov53HgGRo+SKnF+lJSd
hI5ivMJ4rfGoiWpL3Vp4NczkNFpwBFGbRGcQ3g4Pgt6KLFikr8qdv5hf5hLYpalUCiLL70vm
mibsIPBXYlAJfVC4u/aXvlh8oNa+5yxcMyVAZ0k6DUp/LvViInM4VzE/Ay1tQGOQ9892x+9x
XR1bRxo2DMOlO4hIRzRZCSTEICO4OuO7VGE26fbxy9ufn85owjgr6JH2+lLjb9m03Q5R0BN2
3pjhYGCWCb5iZAO1fsOyuQ0nVXUZNx1nyM59xpnm6QWW2t/vf3IQi+42DOyTgZOMwPf8zgoC
M/To5EKz6/lWIAhpN1eWmbnzJrrb5ga/o6P3FOizxWq1Xjs5G4lT32ylsm7BfljNHYxr1vkJ
y/euZDfTIBN2wITl1XolbXL0csmNXK8982oysu4VkXRTHairpXclVhp466W3vlQX03mEcpN0
vfAXYrHIWiwul9pcL1bSN0mpQ2CkFqXnewIji841dSUODESQxP38Sqyh4FmdCu3zJNzF1aGD
CbgsXNX5WYFheumt4ZHyh41vqytfauQ69ds6PwYHoEjsc7KcL+QO2WDnvlxnNDFbx2bv2PT1
jT7n+sKA1jPFpWkCkZuJ5tdTWgWmbL6XGAuGSTDSQ8nrOLCDfFsq8cb9zpcU1JFfUjOJkdu0
kIsEHSSJ0lzyOg5CWhNXNJZkYFVxGJ1j7hQbmHVKd07G4vSumJPR+gtfrCtoSWUspnIPIqna
6w1dqaZ4rE5ebl2srXWG0shFIFUHasr4quc4/J5LA2cQ+XGIssNRCc8Ptxv546g0CsRwwvG5
x3KL2bu7RuqA1WrueWLRuOy5sGIGoaZwxNqQT5LcQNeA9UTa8B7EigqL6nLgpqWMbNAYLj+w
aEp5EA8SuypWVxIqnBnIGk2c2WOGgooVhrwFjlemUnEBNuBXUgeVgZrvONdhFLvZwsVXQkW0
V9XRAcRtxKqojFUCHwQMchkgu3t/nIiroIwcILXdZGidX9QxyzReWnmHmmRlLmlaVUiznGGl
W6uA3Xwxpeh3yi26H3ZJU7a8500ovk2hNklHWU4qvlsxvcb4f+7fHzT+UvxLPkNlmKWLllZE
vJ1Ua0noyzZez6l1Yojwl0fIGXJQr/3g2pvbdNCW2VrcUYO4qCZFJ/FWoJrsAEbqAjsFYSCh
xTi5oQwkaaPRUfrRagic3+zk4p7WZhUovGIXHUQSuaMP/Cg9evMbaWYaRHbpem5myM6fIX3p
MYFMsIqMzfHH/fv9T/T4TbKJjSNzNP1c58Rs1m1R3zFNz2RjarK8BaBx9zDW046K7EBK3p/u
n4U9JTNVkFPAOWPtr+YiEWzioow02FKPICTLsVRuyvCuVqu5ak8KSBZoFRXbocYhqTpUKBgS
haSa0kObWNVYpj1hRI0qZU5WtkeNVrWUuCWe35pGl0Sipo5ARQpdr5uq7K51HfdHBfX5qzxv
nH8ePOl2wCOTKitC3bIyznyzkrGcxdb+ei0G/RKhpKgc3SWNw96oz15fviENCtGdV7vcpumM
5mYwwBYej19knAs1wq+VMCgVi+HsXoPA0C08S4IvkIRIyrQr/P3/GLuSLrltJP1XdJrXc3A3
d4KHPjBBMhMubiKYS+mSryzLll5Llp9U7rH//SDADUuA6UPZyviC2JcAEAsaZW0GOaXtzZ5R
E9lZUE79hPH0dkOyWzHYuvEXEZOROx76Z8Z51/hxzMGYEVvkdEbdV7qNQRdOrkLNKaUyHfJz
McCLlu/HgeftcLqbnlW35JZgt4lLMgO1SzpQZ8MDJgbHVHrfym/oA3deFa/FREEbZ4OcOUsW
1lZ1eXMnseE7jcL7wZCDV09H2qZizkg6DvVyxWOm2YLfJHD+idq6rhcV2sufSp0j1yGFbu9H
dP603btO02M9gw6Mmr58HZtDqphUrjsavyy+LJGqgf/Ng0tAHyGGptjRsA1NAnqS9Tql0SdT
7dZ0Niq1xgPrGwYnkEIzepXUAv7EsbIw2cHGXboAM+ngoWK6PtKuSTcMAi47TjpTllLTZ7pG
qHKK3rIAn/p+NhG4auAvSdccwpGo9y1TQcA+pKsqo4SHv5P36ToHD1c6eyFJr8ZCaJ2io27v
RSvuisGwceRNgX96wV+/FHy2ctvec/u+ZviLa3PN1RCjEJlRDegqfj8ZdWgvuPc1wWoK5ace
VUsTA+xITyVcQ0AraYdqKv56XB1ANBg1gxGr6hH1szWVFpfflpitnN3m/hrOfJRRAydPu/YV
vdjw7BcNzW0PBQdMARUy7lAeNT8IQJU3iuBZSidPDhi18QdUIbE5HxIEbsQe1LDZozDI99iM
ERx89mW7Viz//OvXb59eP375rtVN7ITHTgv2uhB7WmHEXD0SGQmvma1HJfBWuzXp7F38jSic
oH/8+v111x36lCnz4zA2SyKISYgQbyaxKVLdH+FGvfOIENxQY2Yivh57xMTvDbphA8qIaoUv
KZyeTEpjjYqesVvkSLOVl6CB+clMFtXJ9HcXnUtaIIgN+OwaMUwcqzOjpQUx0S/gZ2qWYCI0
gBfdzmEm9UNnzTcZ3QDxpS6zoA3iegYm6F/fXz98efMTuEGe/XD+44sYSZ//evPhy08ffgad
m3/NXD+IIwM46PxfM3UqJodL8RPwouTs2EofOLrIboCYBzaDxWW/bKakHj4BK5vyYnX1TpGf
yqavCz2NbnkhUgcYzdVia73aaJbHQFt1iucI6WKB/U3IeAL61zSJX2Z1JnTyWi7jgDjm8Cpz
aZZEu9eP4vstRaVnzW5r6hvta0eATOjW6cEHDSCprFjo6mQMPzx8iIRqbTtdSbNrKnsogKs6
0+sUwgLL6wMW1+anblzKdyF2UWvctMPNusuBLGCrO2qVVq6dB0e/5uU7jAC6reSF3X3w3XTo
cmQESurw/8lqSc/Q0ueWxPMIglv9bFZnNsF15LPNOT254moaBMxUUHPHj7fg51GcsuHMhF9p
A4f+qA2Uukm9e133OrWDMBnts07sb3mgKt5vNNsv5KKwqlPFKZ2INdwLDDKrmB7+R3as4dlU
gW5gDKWnYdsbAPXdc/u26e/Ht0aTbMPlj8+vn37//OFPTQlSL4cu+qyfLg4e5yFnDTDx55Ko
ZMN3XQ8BGO6OgG/AM9ZlEtw8s1auVZz36iFSc0chfmgC4fRawJnhqXYjf/4EHuKUkFQiARAS
tyT7Xo+d1PMdryPt2AOH1ZBAm/PC2h8SpTUDa8YnKbujR82VR140m4WasXn5309gnh9r0X6F
GAkvr1+/2YLj2IuCf33/H7TYorZ+TMjdOj+oKoyTacIbUA1yRtedVRvFriQ2t5+l73+x48mM
v/9T1W+0y7NWj7Vw26F0HGvFmNZ+w7+Uy4w5mIUFTAv/luBW4YnkcI6xoEWeeUmAfdfQPgi5
h7+jLEz85scefgxZWA758zjkDl3chUkcBYfh+cJK3D/SwlY/i/XUDqtk5jh0t9FhtLdmmLdt
19b5kyOUzMJWFjkEO8MPnGsjlu2lHB5leSwb1rKHWTJaPuSpyyvjh/OAT+y1c87twHj5uMFG
diwHM1NzOMCJONdHqGwhHqW1HzuATHkNgomsPRDMhHslRAgIEHSvWSMOmrEfqBz32T+v8REb
3pqeEqap4BCBZVL8matao5Jm+T6XVKmg5a2CbTM5ef7y8vvv4vggs0BE0Km4TdFjS5oEi2ve
Gy1gvB6pZUKPD5KBoR56ppIfSMLTm/UJZ6irAoldbiSOjTKsu7dRuXtFT+oRf6dpplVZLHw/
zCg8jBqNp6ZepT4hZpZsJKldGUdc5AUMfR9flSTDlbXgZdHVGlfuJzQiaiV3K7EePSX1w5+/
i+3DrpyloKlSzYc3ZQziOpUbA+oxZ3pAp3kWh2Z7zlT9KXBGKhKnJv/YMxqQWeVZOU8YlZ2m
SVXYjWBMD+nmDBPyJXwosjj1m+vFKAXsU3FgNZEk43caEv8xb9/dxxG7ZZX4eijWP6t7kobO
djWXwqnx8rrJzbVl7HkSeySxMpAAQa9INjzzPSy9TFVOmchvmxuWyaQd6RzmDQl9s7cFMcsi
bX7bfbqGLHzU1/YNmdbXI7mZ+TdiA+xOVlVkoE0wmPUxj9ALSznxBJH1/VDQMDCXBCVwIlZB
OFDszmj5UpxZTThNW9+ezjQMCdmZzj3jHcfE6Wk9HnI/8kK1a5AS6iURku5ZOe+pUcmuPjz9
LPub/8P/fZrvO5Cjk+Cdw7SDNjS6jWwsBQ8i1Ue6ivjXBgPMR78N4UfcrTFSXrUe/PPLf1VF
GpHgdAUDftv0Ikx0bjxwrADUxsOU1XUOgqQ5ATJ6GBwqncn7mKa4nkriSD4IcYB4seML/a5W
h/CrbJ0HNzzReTB9epUj9m546VLiuQDfVWxSmm7eUSY/3RtH83hZRVjpMS6/KMv5W7Akp716
1pZM0huKdnzayPdmTMIAbzGVDZyh4noPazTmXr/FUunu6Mgq0+IiZ8HAhh5wpb3ldnCHoXrW
xOoZkOyORzk+2vAMHnK4hXu+E9I3JPF0D3KnfDhCSwshyEuwfWL5GsZAog1dFXEsqhrLo9TV
JWuh84PqpXQu7ES0Mjm8DVLc09Gai5BVVC1SlR4juQu6HyP8Yn/xU82TkIEgaUkkULeqpTpK
vxiIEAdFr4ShjYjUSOaFWFeC5BSkSCssDPp155YiuMga0BTHMInxpUkpT5omGbaOakXOUjtn
0W+RHyPVl0DmYUUCKIj3agkcqfoqqQAxUU/F67BqDmGUYrlNQiTqp2fp3mN+PpaipWiQRb7d
+4smDDZuhzH2UFulJfthzCL1cGisJPLn/cIMRQUgzi8b4pRuXbe1L6/i7ITpl85BWQ5sPB/P
w1m7ZzVBfGld2Yo09LGnUoUh8hUPqRqdYPTG91QrLB2IXUDiAjIHEDry8NMUBbIg8jBgTG++
Awh9D21aAUX+g4A5kgdbTzUO/VZRg1JcY07lwBqThylWG07TJPDRzG7sXuXt4sV/t1ZPBFzM
7rP4nsljcFR548endWe1CyT24hKPc7dV56A72FrpfWmqAc/IeOvx9XHhKHiCmjxvuJ9g47oA
Ry+8abBcp11L9JZLB1Rhw+TnhYHFT+AkHcsCroO8GIs+pnKQoDriX8dhGuNq0RNHQ/0wJSHU
wa57xempKRD6KA4m5zEfS47leqxjn3BceUnhCTyH0u7MIYSd3M5bkAObemKnxA/R6cwOTV7u
ZSQY+vJmp8ni2FSOngB4p34wCcwLu4X+I3V4PV0YxLQZ/OBB1C9wOZCjPkNXDrkNIgvIBKBl
myFTpdnBpUfjU8EMmbkCEBIGMr0ACHy8oFEQIF0tAUfVoiBxZB4kSOYgEfo+umwClHjJ3qyV
LH7m/DrBzoAqR4Z2g7xRSYP9YTIxofdaCkuCrmgSCJF9VwIR0uQSiNG5IKEs/RuFzfbHdEP7
UAgWOxUaaRIjkkpTtlXgHxrEBeq2ndIbfhW+DpEmweS/DcZ2XUENUSo2OJsUn3RNir8ubgxk
r5fBzB7LjcR4bmS/q+oGlbEVGJuRTRbiuWVxEO5Jn5IjwpYFCaB16ClJQ4eXBZUnCvar2o50
ugpjfEStoldGOoq5jLQyACnW2QIQ53FU9gMoc9zWrDy9dCe4UyT5SpEp7dY3egi5hQ8ngxwd
YAU/gM+6qsQKDgE2aVX1e8IEa3l/Hu6s5z2SKxvCOMAWJAEQL0GmNht6HkceukAzXidEyC4P
hnMgju/Ydbm2Y6XEuR+mcHl5PNe5MUYw7pD4D/cLtJ4CCbwUF18mDHWIrq+vBOlPQKIIOxjB
XUBCkANefyvFroYWRRzCIy8KcPOblSUOkxTdFM+0yHB/pipHgAn+t6Iv/QCdUO/qxHe59p1Z
+Gnc7RiB42cnAYR/Pkqa7nWNpS+8ngmaUuzfyFG2FBJ55CGrjQAC30MXWgEl18DbPwCBV8Yo
bXZLO7Ngi/yEHcIMKbM4JsTJ7QY6/I1uEKvggevDELkb4OPIU0xeFCcxIYpgSxr1A1IQ/M6C
pyRwASl+bBZNSnbFEdbmgYdIUUC/YceJNg/R5W+kKbImjKeGxshUGJve95D+kXRk2Eg6UndB
d6ysgOwLYk0f+0hWF5bfaX+GoxEKJiTJsQwvox/s3qVcRhKEaFmvJEzTENXLVTiIjxxiAch8
9DZBQgEaMlXlQOeiRPZWG8FQi8V6RHbICUo0Jd4NEjPoVDmyFFh52rslWB+6d40K1tEPJjzu
x46VbXzyfB9b0aVgletOvicSxOgaGfgawSSJhalsyuFYtmC9P1umwUVM/nxv+BZ6bWG25P4F
gHge4N7jPg4MFVwWxqKs8nM93o/dBTzV9vcr4yWWospY5WyYTMrxFyHkE/DgMLnL2f3EnTrC
uFteYACtcPmfh3k+KJ7UGl0+QDmK8lIN5dtdnq2LQapiHeY9DwINg8XDF83/wprE5AJajgxa
544by4mJd/RejBwr0TYTBGsYebcHWQILXrP5IXU3Lav09LSbGN4IywCwzTgXimGLs5Lb7po/
d2fdleoCTqau0uzvXrYwZbDFb2UHv2pSHxjS8yx40TCc/Ke+vL7/+PPXX9/03z68fvry4esf
r2+OX0VlfvuqPnqsH/dDOacMQxKpiM5wh1ACX5AqGWxt12H3dS72Ptfiu2Bs6rxe2PUaW34M
twW0q8Y1UXwmTVfLGI/KEasjQfs4CR99nATIMNpuU7CEr0Uuyl1gz/TzCzn21eyye6c47xgb
QE0B+3q2VHnQXNe95GclMKy6+S0JbzcEER19Rsg5fXuGmNqiERRicQH3wWJGT+S1WHnNGrDM
NNtMY0h9z3c0anmgd3GsjMx05asAKR1fcSGeeZ6QK3UvAiKtio09xUfVyleeh26pC5I4O6Qi
baM8cMfOcVnhmldiU3GklYSeV/KD3pqshLOEmYOojSuVUcjwQWV/QVJnu5/6/UaYdCJd7SuO
GmsbzDR54+SHZiHaC3QDmkXiTbXEnp37c6wnL13qzzq9Zh6Ahekhtau7DH+pGqknCLK6RlgE
TItK0tRqW0HOZjJatyanp3eu1hPjsOzFYTHEnBHIvbEpmdWQLIPQBa4MxfKbej5xF0hsWHlg
TbNFifOHn16+f/h5W7npy7eflc0JPIJRfD0cQXMSqSR4nes4ZwfNzQg/aD/ATYjqNkF+Rdmp
k7pEyNcLqhMntxpr8FL8S50JxXS1lANtciQtIBtMU3kpU7k3HQuVA1dRWjmEsIYpeAC+Fd/I
fCk7BCuiTetADeXKCTN1xib1bbC8++WP396DTZMzrkxTFYugtY0xQYP3eYc5PPhPnVTd0Xdo
+XU+BiT1DBEOEFHgOPPUawVJVRTF9WLc+sCznBOpZZ+NgDVvKACYet0bzYjzs9G1l0CZ+GoO
oxVKkkNcUX3FUafIK6qrIm1k7EpStrfUN1NtyhairkcPKc0SF26kqjBYzTAJYjZNfadeaaFF
0/TbZLNSH+IFmuWbyTsFXDi0Ep5GMDHnjGq3FUAVbIaduJLWtBC/PefD02pUvyVa9xTMb3QC
p5py1Xb+2vEcrLLc6Wm8/l3Ggt7R4GNb2Wd/aVobboi84nj4vb7eSMzw0gw0aWBBm65QmwgA
27ICqFLb0HFlveGueYDpkE6T8eZHcYop5M2wVA9EPktTEuFaZDMDyTz8mWXFA1dpN5VD+6MM
ex+X6Jho18yStpxL1KTKd2DinWMHO/gGRHg9FVudc6HoCjAr1dw4zvTgR55nuSpQc53MLPSM
Jw1DsxkGGo8xwR6eAeUlRXYCzqI0uWFAE6veVFaSMXUl/emZiMFiLYEgSeLHlMMtRmqtf/zM
KepsGcCR3fMmDOPbfeR0amrt47oPs8jVEKBPqz5VzQnWjdm7i/nRdtfU88T3Yvztf9IpdSj6
TWCKPcLK7DejJotqb1JAJ7jG31IXaWyFpEYSjKpZRSlUq0cX+o4osLJY+7hAxDqlKmIuB2lM
9Fmw/Fw4fEEIDoj+uj+MrrUfpOHeBKubMA6NfXS1/lJohkGnlIsmwzuUaG/sC2B4A1nFjgBT
bZB1aGLfs/oCqOhl+QRi66SkupZJAUaeMQ5Me7aNZjqZVhCXa8qFJfZ2hs9qLKfSaJGF0bRF
LRZ0e2L1ducyv7SrBV2JTiOPjWOKJ3jp6jE/qk62VwbwCXeW7kRbfm5U04+NB27B5SX4LpfY
h4/a5NQg2KJTvBY5HQlBFcsUniIOM4KlPR8RMMg+IyiYbVKqtKthfGEgsQtJXN8EPlpAifh4
q1R5G4exw4x1Y3MYtm8MjNdZ6MV4JqAzEqQ+Zni7MYnlJQnRRoRNKvWdCNoa0hbEkRpJ8bY1
9zsFGWmohbHRoSRNMAhEw5i4IJJEGd5cEkQ9u+o8GT54LHMTDVqkURubTzGGn3wNT4nzU5IF
jtr0hMTZfmWE4OkaoLYdG8qC19c0jFYQSyJVsOr8rtQU4RXsQoiXuCHi4dWQIKrjp/CoFqob
WZr/6b58NnAVcC2EB02fe45WBZCjb/8KT9yQNEHbFRNkFbQ+xo4IyhsTaCz5SYiOYBCNgjBx
NOUk7T0YE4sc6UpeFyJNLEM7WGK+u8hxELnzm/YsV3UyVECxmFxZG+Kigq1BiizIFFk0JMJH
v2Khv2B0R6yEQInSCNRwtCQv/I7fXn7/+On9d9uraX5Ug0cfe7DlT7RcgejyYAuYEYYeSLjX
2ssxF+Kmcjs8E2ClBHeU/N9+sqUDIL+yETwGdbisXQyNVdNc0Lb4CtuztUKW9Orby5cPb376
45dfwE2dGZChOtxpU+hRDwWt7UZWPask5d9zjMa76IhC+6pQT93it3yBvpR87S4NpeKvYnU9
lNQGaNc/izxyC2AQ1ehQM/0TcVzF0wIATQsANa3tNU6USow9dmzvZSuGGnYIXnLsVM1YaICy
KodBCK3qGR2YRR9rjoKgcXL6VENkFI0qw+5Ovm71pEdWy6JC/KV//4V07cfFxaN1vQ0tx4bh
rCfYN4FRbUERjVh1d3Bw1rWtaEu87vT5UA6Bp9vTqHQYCfink/t49aOcsxriX+D8rOGj2T2i
MXWnGSp4hvHmAvewNnJc9QvsdHR+tkalcwwTv1juf5WspGNahKSfWjeyFct4g9ZhhOc/sIue
ERDM0+NCdnvWWzjQ3FQulkbYniOQuiRenBJ9QotDeV1D4J1Wv26GmeByzAFlyYtSVU1dSVjN
JuBRO01cS0Mrw3N89gNijllJfJRmrge7mSh316QC7HhDPnjY5hwTWoCeX7SD80pCWmkGckrR
7Q84mL5+iN/30FoCJBXVz4bpZwx6eLYuGKzZ937oaMUt9DZ7EmcHsUiMz/rcKDuxfjOzJk/P
A76JCiwsKvz2ELLruqLrMOEVwJEkemhMWJIHVpSts1vyAYtxINdZMyUxDxqxBTsafr4K1qbZ
oRGDZYxiVB4WDIqBvNqi8r5E33BKMc3artHHCbhcC4xVa6bJt+FjYTb7grpCqMix0fRoHAdZ
yXS+75zlGFRskbve4eX9fz5/+vXj65v/eVPTwhmYV2B3Wuecz2EPtsoAUkeV5wVRMKpq1hJo
eEDCY6U6nJH08RLG3tuLThXDMgvUK4GFGAaeThyLLoganXY5HoMoDHJNDAVgcZOHNiUw5A0P
k6w6epg5zFwNMWyeKrN6pxsJ41SndWMTBkGsagIsa46jBTd8cza4vcev4HS5i+sJbDmomwCm
MbByakfZjWw+C+uIfp7cMGm5/qBo8pB8xfUnNy6en/IBbTzzNKTkXvSEqCd+A0pRyHZtojTO
dveA1Xa6adyth7wr83JnVyZh9qC96p7EjvcZjSkl2DW4UhcIXzE4SrJcE+ymYGi/bJlf4sBL
VU/UG3YoEt9L0S4Z6I22rbo+PViFlJMfqMiri0937PRfYAF+vgnRv9VeJ/+fsidZcuNW8v6+
osOX8Tt4hvty8AFVBZIwa+sCiosuFe0WJTMsNRXdrRjr7wcJ1IIlQb25qMXMRGIpIJEAcjFQ
YY3XIIrTWkwmjjNi21rvWNzVz4s6N90p4GdTcO7m7bLgYDgr5QIzjZ0sLnnSJ0ExQGVsF2h2
x4SWNqgix0zqtTZQ1gv25TYwYydaAcqrpAUOJnUDWArWestyPDdRRxeKAa2aXCEdS845AUsG
uYcXldMeOPJLCZfw36cTE96eiBu5T0tRxLz2Sn2o2YTbeaBVVHCK5FKyyIJx7oGFF+geCmTy
sL6N6o3bIE4fa7DcDQ1MVtaz0djNZAYfr0ynjZ1GDyo/+TASr5cN5GKKnTYpsy/vkyZ1lp2D
PScpbiOu2ipKcnDZZYIvUO9m1Xmd7U5lbPQKqp4HSsI3zkg+Oc3cYqq3bUSzQKR1qDny/fDU
NHWWCEnGq9XaqyPlU9xHUyNnI8s/UwHZfDYfe4w42+Hx/gEpGDs561jD1HWGs+hJvVqN3Vol
bOINLECnAWdQQB9R31XAfBDTqeUiKIGRWJkXtz2oKQ7geFLY8QwBHZPRGNWvFDJj3kcoTmep
DvkTW8NtWMxnk9XYgy1OJwwmDzvHJuGl10Rx2oQ+S0KqlPijulWujoEyKTljZTSr0OpQHL35
rVmFymTWw72W58RlQeNdgbsD5mDXlTBzJx1gDIUmf+C0J7fWjhx12YdW6US6XmM1OFgq52M7
2lMP9Fnx8XoaCCTRohdhtMriG9q+9BxS56jk9vJf7w+fbq+fL++QAuDp40d53rp+ef/t+vLw
6fr6FW4T34DgAYq194pGZLOWn7O+5TlhvLRtV3pwcDqoa/fVaeR+Ig3NXGb7otqOJ+PQ+k+L
1Jlc6WkxW8yotzdTLk+/U5d9B9f5v4MDLTWQQHJPicyzyXzxuyO0Tztnu61YKZiZfFABM2o+
B7Wg9QIBzb1x5kXO4gOL0AtJpZjpWwtnO2ZkNXFFTwvshbitgMBdQsGx93u9v9vhfiTonG20
xNT5P5LfyPeP15vlSKVmFPEfYYaE1F2pfzlFpEZK5CESUjp9oIMXmxoRX7vCTdMBY9kdqS3a
SCq3Y4l/zbAzH0HkjyHWpqhovhXWvabESw0Xqbv22AwHax27+dvlGXKNQhsQj0YoQWbg6YMw
V8i4MtNx9KBms3GgcC522iz3/xqbTwpVw9A7Q0DTPcttmE6I4TKOd0z+Ogd4x0W9NVMJACwj
sfzSZxso1eWE7emZO3Wqx0IHdpZzhTuE8qtsC5VbYoAPsMZOpQkFaMYlFBUNCp1SPDOlQn6Q
LXUZbmkWMTQXrMJuzCDPCpIWFStqpx+SsShq05ZbQc/UBhxJKorShkGqEiU8vJadK8+z1yJg
4NQXxgo0zSgDS+uocj6OOLJ8R3K3CXu5UTK5llCLVCBIYy9CoQJTPHOaxuXFARNfCllsGSwm
u3UdFH6UxvD1cHueALiqsyilJUkmoekCVNv1bOTgDexxR2nKvYWqLr8zOQWoC0/hStcFnjcp
4a4waiqqp3lgHOSptirAv9UtJ/U3KeRoaOHK07pgyEzMBbMB8nhE985aJjm4Usv5bUhEA+gN
REkFgTw6DlQKljROUKB+z7Y61GHuv7aYlHDr81MamuBneEWUEojimePBE7RYYxlx+sUJ84aM
k4zXZqAJBYTwmqlO22zVK0/9BL9ZbrFytsmth4ZbLisr0+COUGXMkyEVpbk8ROLPqIplJnWp
P4rzHb6CHQpHXBQld2KIKvBOCotwD8UO0uLq249AVZBI/diUfOrITcayQjjr7cTyrHCb8IFW
hdsVm+CcyP03uPB0UI5mV0fOR9XwWHYA7LfUL2f/TtuUaV1KBURxGLLWYhqNSrfbhj82c0ga
tEZkB8Z3ATbK8QbSle/sWMoDojclSYpj7qcodsIneDX1WqHZsk6h4lFT7GLWgM1ESltbjmGo
AD9YpfRtA3CdqlyL+Ler1Y1MnoeMVwFPKtgjCG92ceIwD5QwFGMggp4YWl4PL//68XZ9lh8z
ffphZSDtq8iLUjE8xZThaQEBq1MkBXO0k92hcBvbD/addjiVkGRLcTEqziXFnwmhYFXI76Ut
onALsAwvm0mlTLAYe3WF6xOQxcaeLX/pxy0M1nSbpYmJKtgXcqk8Ql7yGBJ+K9mjxh9UDc/y
RhXzH20UmJRWKHAN49PFbI6ZlCm0ek4bOXwUcIIBpz7QCgjaA0djt3HaPtYB6jxLLoMW6voU
Asr1t9IVgnMQHjKxx6OPOy12Pjdjk7ll53M02NWAnaKFFniA1ha/mgeisXV4/D2rnU70ABl0
WIqN29wd+BaKjSagLFt2Be28PgQRNff6pp9Gw23XD6ShtssdajyZ8ZEZjFA35Zh5Vd0PrKgX
UDJZjYK1tW6hfGYFDdTTsbcStxmKmIA9brhGkcbz9RiNvqkZu1bt/eqZ/+PV1nstmtycxa+u
y/78cn35+9fxv5WsrLbRQ3sO+Q4ZjbAN+eHXQW2xMnfrYQMlLmAKoNp1J0d0RyC/ThgPPjJh
LERjWEV3JpH23mvXJDo24vX6+bOzU+miUqRuaYVpfGCKBAEIOsMfQ33YsJxFBE13R+WcbeQs
hOc4Hlem+qRQniEqQE3uiiqlWxKfdegjtN+KKvS4ppB0OZ+cPMZsNVkvAy/kmmCKm7i3SGtp
aBidjn3oabpy6eYzv+zcseFsoeM7TVhOLSNuEdvPHQCAmJeL1XjlY5z9FkC7WBT8jAM7s5Nf
Xt+fR78MzQQSiRZSv0NHEvBB9zKJyw9GPm8JeLhK/fL105NlGQ2EUiRt3BSbPRyeaBGwDsJg
taWDNzWjKlJaoF1JdVCph7qmgdYNzfP0io7YVy06DImi+Qdqnl8GDC0+rDH4aYVxSvh46ni/
WZgmprmoK+wmwCQ0o2LacDtGjYFbWE5YLdxzp2rhEPtp7U7NFuE4LrWIis/jKVYF46lcUkgd
GmFHru1wJ4lB3QBbvArybGsfFmqEhiy3SKYL5HMqzCLMd4WbX/WjMxsLNCR5RxA9Tid7pFrP
O7ufwOFEkBaJ5fVsYDqvE48xlyrteoS6+7UUm2w6niJcKzmzsdokfG6+wZr0ZvKbDk6z6WiC
LoXqIDGYDjgQrFYj5PPxeYYAE7muVp0UAIfeu1IAvuEanQEKg+va1iLGdDKLABkMgM+QHil4
UF7gzmrmGh4vkA+yXo7Q7zQLfL/FGP3esOJnQeGBrmu5iCbjQMq7vnhc4lFiKx2YpSH9M1T/
RSEh+0/le8LlKQxtlsboYKn35YZsPSb8YMKuY0T6aUwfhlUH1fry9C4V269Oa71WxVmB60vG
FJiscEs2g2Qe8MQwSeb3xCVsHqs5JC9idppBm+BnlSxWuMGjQbKc/JzNcobGQTIpVit8hS1n
yBdSCTSx7dSzdrUwd9vQRTPypa7Yj5eC3JNt2Wwl7GS9JiYQI8okwR15OwKeLSbYMESPs9UI
m8DlPMakBczrEdZKfYS+v4pct95uwuvIW906ub38Fpf1/TW9EfJ/6HaEhIrqUcoZ2TtbwRGS
X17e5JkTrTOBoF6gQls79QANRE2TBL6nIFgG0nxreQoCrA/CsCN5TlNuY9tU933dJBUQZSzj
W6gEmxjt7bBEL/CdqyM44SfeFl0Qcb8GOCGeILJmiKxMT0GcMgzfQSObbJvhl5wDDTK1kiPw
jr3YKy0cZdiVwYMU7ngNaJMZl4cUp/r++8ZfrpeXd0uKE37O40aEey3hcDzB+EX15uH2DcKB
2KFxgeOGBQztdbkmKw609Ti9R7ajpHR2l/ZK2qm/v0GoTwnjZUpMY4FkNlva7vQsg67HjLkv
et08IJWy1C2JnN4DJ/WzQw4WJy24KqDXv89tsL4zbjLKueWZpbHKXbbD/WKcdyFxpXqbTJsC
fSU2CaxbUQOhbrTxiQ61h7laLxiBYEAgBDo7XYQToM37TP0bLtRqD6ifQizObbp0fSsTrB+e
NJISn7ktPgIbIVRhagmUwZffzsy+xzbAnfd0e1WBaz/QLNVZrGIVK5MVIjX9xRWw0q6+AxsF
dfnoOJfX59fb2+3T+8Pux7fL62+Hh8/fL2/vxqPc8Ph4Lml1QNfRz7gMTLYVPUfoQy0XZOu0
W8pBmuBBiSqRpgx7FNMuYcrYujN/evr7+7eHZ7nAb18uD2/fLpfnv0zH9wCFIYt0y3QAAW8E
ycvH19v1o+VK34KMbrdedXfCYm15sym3BNYy/sCVM37mXMoNvNdiYzuEy98N2WbjyWK2l2vY
w0XJYiHPW5b5bYsCV6/ZKAo4sPcUyyRQdj7FxKFJgBYF77fxAj8xGSRT1AjZIph7vVXwmet0
OmAC7psdwcw8LVrwhQcv42Q1n808eEVWq+UcaQFfJKMJudMCSTAeT/wWcFry+QRluRvjFugd
nifyPLX2OUq4EzfJwvyE5XSKNBLgcwQulsvpvELhq/XBgwuWny2znA6e8tVkhE3jOh4v0KAy
A966HejAZSLLLVGWR2WiWQg0Qz2bKU1fhxN5evv78m7E2XBkyZbwPRXNpiIZPRaV7ULQ0pCS
ntq9EZW6Th19NxhNEylj7ai+j6mpN0Ag8M5VtEE0fZX55ZjhspfEtNoluFEa4Jojq2gq1RGc
AsxEm21W448ZYDDapKQUBZ7PQ+HvVkApLWOERacUxklkBmFqM/tGrMCBbtZfhQpzB2wV1V4J
nhWrULjXTf0HE1ILv9PtjkQlssE3iG0JXkOxmlYkYHRZ+o76JhIb107ZjTLYdIch6rL/7BJS
2tE2dyzflyTxYus65yhl0XoI+cG3p7FcjEajSXNwjWbcMxnN0+J4h+AQCXxIeF1tIMjftIlq
IQLGqgOR9rsqyopuQ5atHXEJjgA+005axPpMrOw5TIN3bZHXzgVLLLSYx1Cs0oLvWESaSG41
mz1LA3l3WqqddyYyl36clfhRUqr8RBn73pus8MRGs+UiPAPA/k6Q6h4TuP5U1qCQT1KQXDCC
GgRn8rTdiTLrdKYnUKCXGlvxe5NPWRbGfjwbw4ZN6o6Xjw/88uXy/P4gpNr4cvty+/xjeBfE
FOmWO1hZQt4aiGIBIDVrUEH//63rX1ZFtQoz06iMTBIB6d+H6dZmIcr8C4UBw0rM6aHFS7VU
AIVxJs30Q/oA6bXfkpVOuOLhHqw/O1ZS6++/qCVZNK64uz/0NCXkcw1ksOpoRIQmoPcb1cbJ
t6Ls9EC+E6UPdrxHOnCKDmaHlTJDFF6xfaQMgu+Gjek4wNnbeUnuq4aiEcEtNoZUAFG93WA7
QN8xJfgtA9Me1b5421xrHsmt6c49TSY3SJIXJzR6Rccp3cNDuDyF72vTAQHyBUkc+PHIo5Ex
u7RVCeA6nSy+ff16e3mIv9ye/9ZhQv739vq3uTKHMsjdLkaVkdN6FrjIN8g4m+NHDIfGVJNt
lHmeMDBxEtPlaIHjuIqoFZc4Tx1y0Tlud1j9SvuzbpXHDJVXgYE2VI2jXB05uM56clUX4rfv
r1jCDVkrPQiwhpkbl+oSGqVJDx3agfEyph1haYRGimKyj7X81wyBpWGDGZBW8y8vl9fr84NC
PpRPny/vT39+uTxwQ+p32vpPSA3Jq2pCFuKwR2eJpvKGr7p8vb1fvr3entHnNgpW6GB/gn43
pLBm+u3r22fkYaLMuHVfowBKAmFvIgrZX+gNlVrMDSUCIkeAQur1EZzwfuU/3t4vXx8KOc3+
un77N9zaPF8/yfFNbOtn8lVukhLMb/YDZHdVg6B1uTe93QaK+VgdYuj19vTx+fY1VA7FK4L8
VP7P5vVyeXt+kpPi8fbKHkNMfkaqaK//nZ1CDDycQj5+f/oimxZsO4o3v5ebi0MVPl2/XF/+
cXh2p1CdEe4Q1+aEwEr0d3X/0acfNJEuFWW3XtufVupB45ym01aqfIIq5FRT5AnNHINBlL6U
6pvcuEgeSJpp0cIZIhC6waTrI5Dbh0mDEeGcHfwF0vUSSTk4DIl/9urOzydQersRo/+8P0tZ
7iUxtIibDSdyH7RNAjUmeHBr8f05bzpbY7dLLRmkMJ/O50gFXRDpu2VtQ64W7oZj7sAin1vZ
eFp4JVbr5ZQgTeDZfI6awrT4znPCY1lDFrRB2zQUoqyocF2Joc4jubD80uRP2CNQBoBjofxp
gAsEsgWc9q0QdmMBIXfzbVnkmN0koEVRpF4RuWJC5BXJuW1te5BnAsOhWv6UsvT68TMyJYE0
JutxfJpZNg0AF5yNZ5hJAiA3ZE+tCm5Prx8x/gyolyt1T9pTh9N8ArVrKd0tRzMwmfzh2owC
yAktCSBkygC4y1WEn9x7gnsh4oBK+QsElFrAiyM2P1oMHFS6YWHV48OzFNG+i1eXS6x6NCW/
R9/rXlIK7tvv34KiQp5zGsi7N7FNkduQO6wsYhHIPVxRTkV3Fk7tD6PNlnZnqZf9+aY2mqHV
rWd9I9FGQ+Ks2UN+ELmYJzZK/mjKE2kmqzxrdtxMJWuhoKT1LSVSy0XquSy1Q2W3sOeqciET
69qIQUpflv/hXGIMsiaO/P5fXsFq6+lFTmipyV/fb6/WRUbXiDtkvdpnSljZ0Vk3Ocx3s06t
zZOqYAna4f5NrdsHTfdWOBligGafmVGEOvNt86d/Zm3BZcYanhA/fvbu+PD++vR8ffmMXe5w
gS8s/T3FDu0cwrK/zS+31pbT2sGUlZzhofQ4UKbJtlVPzO2sPi4+Plgzpke3+lkoMUxPB3k+
T0UoaZ4iiyqWmA8Qbc1SEaEfqIdtKy4h2Utc1FITq5zW6/tXB5hsUq8fEtZssuAoAZpsap+R
a04gKMZDqlNFaQ2efqaV5xxeVIGHbh06yPgFks1REHjKssj2ywKQtg2KRYULNnWNGPs3lsbh
vc5FwGcnK9zb0M5Kxt7ZdATxK7yUK+ljmnrFcibQ5gjO9toNx9qAScoSIuRGy8H8Bd8RAVdw
dpLljWtKegJ1YMN9SBOpdPR2QHUmRR6AWW4lec4TcDM7B/CSF83j6lwKe2ZxiJnnuBL1wHuh
r3uaqGapYFJPZNuciDoQ85u7sfMTF8A0QCkTRgOJS/dYF4I4P5ucCnAHG66arR0HogG2hEdS
5QxV5TTeiyn+uMlEc8AtbzUO040Vs9h8UeogbehmS+rVotjwWYNeTGpkY0WBriH4igGIrWgX
rR2OSQDB3FJyDsAg3IWONy3/3Ccg6ZGoEP9pWhzNPhjETB4rsXsng+QkP7bqGVpbRuVIFeW5
v9p8ev7Lys7A1Uo0Z7FemuDuyX3wjnFRbCuS2ZNcI+9NcU1RRKBeNCkLSJC2eVq3eLt8/3h7
+CQFiCc/2uCVhpoEgL0dUlTBIM2gSO0pDHlBIRZ5VuTMcSc1aeIdS5PKDKuni0IIBPC/7z1i
rUJlDWojSN4Bs6dVbrbWUd5FVtqahQIM4g1/GVM0JyIEGmKi3splHJm1tCDVdUPYUf26Qq0Q
sn18gS3bwota7JTSf7q1NOh5/icztg3GtaWmfvXDFqgUPWDjYFIZWpizdOH3YeL8tizMNcQd
QRM5+/2rQz5rAp4BYDqZB65ZddPUFA/iQdC0Xp9Jjna+JYLJIjVASWT3LWEc3vSbOimxuBKS
BDOmkmsVnpjl/lIYJjGwp7k/YTSsCr2woHVeme93+nezlZu3MYotNCwLYlrucPkcs43FCn5r
QYTtCwoL5pZHePilsdwu2wG23iqA6kgJPELAjMYNVBVVXULcrzA+tNYU0tvsBiju+T/gIc5s
CYG1Au8oivA/aN+9GRgXCQlF+yWqLIpal/iXyk0rfPkD8tKQOhW//3J9u0HetN/Gv5hoiLmr
RO5surQL9phlGLOcBzAr8/bNwVgHZQeHOao4JKHGWCHVHcw4XGUg/INDhN1NOiSzYO3BQVos
gph1sMXrKXbJapPYkYqd4tiStUlm61C7bGNTwMlTEkyrBruSs8qOJ8E5IVFjG6WM8m1QV9EY
B09w8BQHB7sRmoAdfoHzW+LgdaALgVaNZwH43G3uvmCrBj8E9ug6iAZPkqrI0PxWHT6m8sAT
2+3RcHn6qKvCbZHCVQUReNqsnuQMGR8wxltCUzsCYY+pKMXjnHcUTLYWDwrRU+S1mTfMGgUr
OFSHkYe8vZVEBRC12Fj5gJIUvyqqcwaTG9WkrXO3fg29PH9/vb7/MLxoevX0bKmf8FsqsY81
5ZA8w9lTOm2XVlyq8fI7AT14Elg8opYP9tihD880aex4mvJXk+wg35UOB2kqzLC9q1N0Rrm6
lxUViy39pyPBDc1aJLqZKeGg7CVhKaSkPdYPhxepacFpmv9fZUe23EaOe9+vcM3TblVmyley
ngc/9CWpV325D0n2S5diaxxV4qNkuSbZr18CILt5gJ3sQ8oRgOYJggAJgGVXe27tQEkRSjLY
25DLlp5XY2/tcJvU+hNoPJo1+fVv4Irw8PL384cf26fth28v24fX/fOHt+1fO1HO/uEDeHE9
wjx++Pz61280tcvd4Xn3DR9o2z3D4eA4xRS8sXt6OYAD2P64337b/3cLWM1ZIkJdH4zIfhXU
govNB+vgN3QxWvZFyT4ipFEIFcX5tix6yp2r+s96OipSOOvTKHUDw9MRhfaPw3AvbC+CYQyA
JcvBTD78eD2+nNy/HHYnL4eTL7tvr3piaiIWfZoH+nGpAT534UkQs0CXtFlGabXQD28shPvJ
wkgnpgFd0lo/zRphLOGg2TkN97Yk8DV+WVUu9bKq3BLgYMclFUJULFW3XAl3PzDPv0zqwZ6C
gMPGoZrPzs6vjCdBJKLoMh7oVo9/mCnv2oWQgYaxQBg79tGa+zR3C5tnnXrOUaaWpsOT98/f
9ve/f939OLlHXn6E91l+OCxcN4FTZOzyURJFDIwlrGOmSCHtVsn5x49nf06g9PYH78cvu+fj
/n573D2cJM/YCXgK/u/98ctJ8Pb2cr9HVLw9bp1eRfo7MGqgGFi0EJtbcH5aldmtmYNiWJ3z
tLFe57NQ4j9NkfZNk7BGqpy65CZdMYUkonoh9oxgOfIPQo+0p5cH/bBOtTrkeCeacVFuCtnW
3Cct774pmxY6w5HVawdWmpluJbQSjfSXvWkb5hux/6/rgAuWUKtsoU2U/fWIdOZigjRYbSam
LYCMnm3nMg7kDVspXl1s3774pioP3IWz4IAbmlUTuCJK8tXZP+7ejm4NdXRx7n5JYLpM5GYe
0FNDhARiFjMrl5RNt9nYZyomPsyCZXLuchLBXbEr4WaW/LFN7dlpnM74DhGOabMlB9iN0isB
Bk6BSCjd+la7SQxniDbMLSdPxVKnpADuNpvHvIwBxCcuiHHE0xsQzId89KOSR4vgzGkGAMXa
aZILDiUq8iM/np1Pfun5hgNfMN1pcu5kRCFboS+G5Zz5rp3XZ39OrO919dF8R0TnkR4ZqS9S
19OJdMT96xfT51htDJxwE1DL69HFq6q4z4suTCekdVBHLm+GWbk2n+i0EM4Rr433MH0UgCd+
yuzzEvGzD+WmKaTvSOksaYf2XBJP7HMBWKx8pwDnrkuEmg1xCbglhnDtQ3+j4sSVcwJ20Sdx
4qt1hn9dZXkR3DFGRBNkTaA/B2rpN16Er3qZ89wG1pXxrosJx23XP52Kih+xCWpu1l0BMTH+
beIyarsu2ZUh4T4eUmjPsJno/mId3HJSSVLxI6EiUF4Pu7c300xXrDPLjMs6pZzdlUxlV5cT
8i+7c/sgYAt3i7pr2sFbr94+P7w8nRTvT593BwpXUAcKrthq0j6qatZLQPWnDudWog4dw2pL
hOE2csSQuusiHOB/UgjTTsC/r7p1sGA+2k8nWijnSslD5jXoBwrOKB+Q8ujAYXu4G3OZhw4v
vu0/H7aHHyeHl/fj/plRTrM0lJsVA+f2E3krvEqQxKfCaTju7V6XanJX0yokocXWRyitOh/J
T/o0Yaea6Omqpkvh9gOAD6pmjU9MnZ1NNtWrsRpFTTVzsoSfmsZA5FHuFq6VCH6WVRDLRxC9
OI/ypFOIOqe22lUftDkECjBG0YjlzjNGLHTr9JI5GBEUUeQeV0l4H7t7JqCaavIr+mncexvf
Vo0ngNWqfCIecyC8Mb2lTEwfL67+/Pg94gO6LdoIEsn9EuGnc86DyVP1ijPujDpXbHoqt05v
SeTTNV1IE8ySTcRq4sgmObyaFPXzDW8cB81tDs/eCxK41IDHKFwpvTscIRhpe5RPIL7tH5+3
x/fD7uT+y+7+6/75UcsGgs4wIDAhsLcZrlxGpnIo0ISB/1GiL+Vg9Qu1qiLDtAjqW3L5m6nN
P3N3ldGzKkBPSWZow1QYaZC6S1NblJO8sN+KqLrtZ3WZWye2OkmWFB5skbR916a6S4JCzVJ4
rjKtxXiE+sVcVNaxLhXpwkl/ZG5w4Y9SiKAMKhdlgVE8gwNPlFebaEFeNXUysyjgpmUGZgrm
LKiy1FQKIrGYhVJigM4+mRTDKYgGS9uuN7+6sCxbONBpkmzmPWRGgiyNkvD2ivmUMD41HEmC
em3lXrAoxCTwVdsmQ8Tr85H+kEIauodfkZZ7l86m9HJrePU9nx6HO9jY0sLSse9o47agQuVG
H1TzuT+Agju6C79kqYW+zcPZUkATZ8gRbNAPvd7cAYK9jVTk/fwu1VhZQ4QCcc5iyN7g4Jfu
WsHrP3Cq1tYcprUos9IwtHQolKrzfqg/9rYJ6jq4pVWkLbGmKaNUrGahJSHBiIKFJ5asHthB
IMy9aCxlgFOmSwkosFWUcDRTb27qOMzTGVSokdt+lJilNI7rvhWmniGGRoFQ1lGChF0xXI9r
wn2t0veNPgGCNvJn0USrwfs2+zyjCdFWziIB3Ur5nWsTe6MLxaw0GgG/p9ZSkYHLnFZLdgcX
7XoRaX0Diih3YJtXqfG+Q5zmxu8SXxeciy2uNqZZTL1iu1XclC4zzpO2TfOknMU6f+jf9IDv
dQ+EWQknHPbbHgi9+q4zKYLgKp0ytjCTXUHYkHFxPKA6CoboZ1nXLCzPbOVzHC3XQaZp0QiK
k6o03SFa0A/YyRmUAWcvN50JlA6C0NfD/vn4FZOKPzzt3h5dLxLUE5Y4cnpDJBhcF1mXCPGn
KTHMYp4JFSEbLpz/7aW46dKkvb4c+IQSmrolDBSY91Q2JE6MdK3xbRFAol7Hf1OocGEp9rw+
qWtBwsdgg/em+Cc0m7BsqNtybL3jNZzv7L/tfj/un6Ti9Yak9wQ/uKNLdYl9yRC6CgZRBV1k
vlOoYRuhZvBxPhpRvA7qGb+9a1Rhy+dzm8chPIeTVq0n2VqBl+15Bwe0IGy4yBZIcodhJdfC
/rr6h8bKlZDsEIJn5vmpkyDGYgWSc4JPIHq0obxQ+q099acRyzOFsO+0yYNW31tsDLapLwv9
UWBqbFVimIy1GlUEkxEfRJWSpCeH5KSGcAGda36ZL4ykInLFxrvP74+P4PaSPr8dD+9PMv2y
WibwmivYCRhL6wIHlxuaquvT72ccFYXN8iXIkNoGXMeKCFMMm51vLDmNMm0peEefVfjNRe8M
QjJsgkIom0XapndJb8ws4vTCiLjl75UJGUICkcYqA8MVbNhEnT1E4WRi/8zpiHyM0wAnOiRh
ZfAvzaE5ihQg4C51aLFjZkqPqaFcTV6DzEw2Lbx87PIpYC0dwUKoJe04CGHB5brQlwXCxGKB
lHC62WrCYRBxjI1jc4sGHj71CmOkJaPLGp26FAsy8LnYDOZeC874Wvvwd28FFhFQnrjYA0Qx
Tj7wsCP78OD95rZeYWF3ZRNgm2QyUyiLq6MOJaMPL8QSBDHJCFAflTX5Z8aylnwq9JxMCDq3
Nwrj7QdJ0U7mMB/3ZLFzxBKZFLF3I6FCVrnd+FWOLhVSr7IaJZA1J3cGbDUX5t9cm9hBIkkS
eqfAqXQA2+sVk3eg2yO3eY3yMWh012ELAT2ydHly5ySsewCsY5u10Mf1LkkwjPD1qeN3OUoR
a7oWlKCBHFWA6KR8eX37cJK93H99f6U9bLF9ftTVxQCSQ4pNtjRCcg0w7KNdMjIXIVF371ps
n2KMctbCcUsHq7IVDMpG9UHGO0lF9g6UJPqaG4HZGhVXljaJgOwXkGqzDRredXx9A6mAo0Vc
8sFQuDtQbez2MD2Y5Nct9ISHd1AOGCFPK8bKDEJAU5dEmAr6HN1lmbJtNoZBXCZJZZ380Wkh
eLGNe9o/3173z+DZJnrz9H7cfd+J/+yO93/88ce/xjbjMT+WjdmNmVi3qoYHHWRgNjPRdFHQ
Bo6QBUO/a5NN4ohnlWfOhnvI12vC9E1WrqugXTAbzrrhoxwJTdcd5srFOLykcsuSCG9h6j3K
LEkqu6lymOgaUm4+jVlnL3gczP7e3JjGTo571mg8/h9TqwpsMRhRyApLkKK8QaTedVS6xQj1
XQH+CIJl6fxuwkRZ0vbk8CEto6+kYz1sj9sTUK7u4dzbyuyFI5ayOoLUMPBM3eaeuQ3BUPtU
7NV6j3ADLXpURIRKUXeYQmBi4XtabDc4EuZfAolvM/c2WGz3nGCwZnw0qYR2ABmXHEXJoNC/
9hPVVp5aDZfc6CGTKsOf0VRrwd1I06lWRpPi30BosNEt5UBWGjncm49M5Z7bwCPmiKqtfXXW
FWT6TWPnwp5Y8DTqQGGm+NmP7Ndpu4AjLNss4shk1gA4R7HJJVmOKpsoD243LBIIg4elhJRo
tDqFgBeEfY4WydKo6BFJPYeEab3VTWpKZIpSPIoKu9lMHy1MK4f0hkUg/giR08oUYs4Ya0XJ
4N9mrR/dVkJ9zsWyEtYo21enPqX52xVJQubMzxFUcLyEB4byG+5ow+GrMbyIYypO/HgY6+c8
9Qvs5LZGPjDEtYQUcHvAtJHHqTWKFVCho82Y3lnK/QTBYi3Wun984LEcZ2pklyX7c7uxZOWm
CKpmUbo8rhDquMbiNyo/FDuTYFYaM+txGgOX+CKoFDooxM4RQHAcfWf6QwxUYikrPDtWslLv
YHWipDAZJ0p9Vs0cmOIeG86XMC2L1KIyb1vgulq9020cnWBRJCcmEpON67wPxVawyIOaMwp1
yTHQcdUFGV7leB8Vm0eQUlPOxMzZ5RzeawOxWVYTe6XWsJ8SD1zuJ9EWIh52+ymb20KIAhpg
IQd9hyOgbqdx0peLKD27+PMSL5jsIMEmgESo3ArTDNbItWQRhheaqZG9y6IlMueUnsATV1BE
kAR1dqsONq0yiy4nG01uFZ8uTXwnB1GYeNdXpywOz4BBm7s+P7UbDHjSW8Gpy6q7WaYVVX59
eXp66vRrQI9FsBNJ5EMz6Bt24RNlneClZ1mAOl70eXN9wVQvqZDbumJZlGthlot1mvLvWRgf
oeWunqODk3NvW4Km6SiRv2jJuk5beOoC7Rl3otN5AU8UEJpN8TQeyWB2vlSmCDFuUzF2WFIY
m1Rp4hxd+vvVJ1aXNswaV2Mg7pP3T12jXWGC+6+8PEItQs9Yr3/lKSsO54axaFfUb2I2DEuq
1HoexLITS8M6yJX2fRbidaS1bkdB5PQXegUOATEINN10HMeZ1sXp5op/okSjSDyPcCoKWoJc
OLGigB3X7hTdCAZ1YD0cUQXeW3P60NKSpbGXp8y5Lg0D3ntUxjs/9BYGMLFb2XhxUawh+1ct
Vhw3hQPavocarCmTWfWr3Xb3dgSbHQ6SIkhwvX3c6Vbwsis814XKqoVL0bKWm3LKRnPTXdJA
oWkIQZrROb06/Rh3TEDN4MiB31DNIodLpSk5sBSbtXP4KUQJ7OHEvpUlZ8oVpzwIbQY1fDHD
9MRfYUxptow9+TzphA9UnEYsEj9JLqQfPEDqp/B+H46GrmDCCUUjhFCpCbzue+OlQkYDJWm6
MHmN4MWTDP906XFR0Du+SDZw4TIxMuTsQGHQrJIvqZqoMq6WEL4UiJZ93gHRg/+j+VWYtvnU
bAk8PrDmp+g6O4WtjiX/Jj8ekvzNfG9ZIUUN7m+Y12JiaH0ZsRCbxryDEfH0coLh5aXEROfh
iAYyE06MYMW7GhASHF0XJV5BrXhpAb6fYhZ4o8AsbZbW+TrwvAJEzIN5BCf642xDNotihhBv
li8kMi6MJkRFkkfCEp5cEOiK65HiqhDPzZPA2Ie9kxuHk32DHIf+B5D393LcxQEA

--G4iJoqBmSsgzjUCe--
