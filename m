Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOXN3GEAMGQE53UEFYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E35A3EB623
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 15:42:20 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id p21-20020a1709028a95b029012c31764588sf6140285plo.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 06:42:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628862139; cv=pass;
        d=google.com; s=arc-20160816;
        b=vnMHWAq5X5Eq7nJv62q08GmeXWoWMxAb3M1UC9Q92WepxDXyJKrZcjBDxA63P/cOs8
         sfPAatqVSUqApwHdipjYACxbXjrKlMyh7YAfPDPdzhD62o8ANSYW/3wwK4r33O4QFtAN
         HL1jbGcwbmqz0WWzSqKhAOvFAHdUtsUlRmIfstwbcYmuL4xVzhyFW6lfXfV9buAB2I09
         mrtATaNFovm0wOzjmrdcWEmyRdyYDbSVx73LFquuqNR6nmfxDT+uTddpcIKpuNNuh+gS
         G2/5oqNSSyE3OrrsCDUF5INmYbjOrxFYAUwMPvv7koUb2wz240h+7hK/EUk2s4max1vk
         EY1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=h9g29stvUXYuSFfoMZ4bTiir/pdgdO82NbVAWeshZvs=;
        b=Dx85CUj5YI8cO+L4qEzJqmveqqtNdbtERR1h/Y5kCv6Fp1VFLRKOAe7Jd96MPxr2Cz
         TqtHa+PqcpYgMyg5mLo4MG5zOZbK6R2ZOLfE1wLfnSoCUEaI/G9Gw2ozFUUaeBtJ0b55
         C7KDu5FzFeLMYkXaJaOOsadDCTRrCFJJNI66QhLToGH5K13iZoJ+uiddx/LrIlWTzKUk
         o4njs6zNwrs0uX7nbIdA71405QqOmxf5/Mtf+bFE92xcVc3hmZXDVaZLkY9k8xut+ztM
         z23WpaFoUT8x6etQC+JNxvEq5/n5PlNV7epENGI2gIHqOgJ4F3S9YVKGmFfLg+WgAlJj
         Frqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h9g29stvUXYuSFfoMZ4bTiir/pdgdO82NbVAWeshZvs=;
        b=REJu5OpmtnhwKuEWBmvg50dZQv10xQD+W2FLjc29jsLXojzPZBgqKKWLxKMIOplAt1
         3Ib6UBn6CozM4NOk9LuKmKAxi/FRtO9pfIxNSz36JNlTKta5/Pl8/5Icrg+J4r/U6icm
         EribmIQ/EcXA3d8d1VOxV6ViB4icIL1SNVafpnXJtoCn+6h1DUaykqvVp3OYyHfiiGn0
         rolguEQFv8PXKmA6aldUKYwJppoZZ0DgUdgwjZVLyDxZThWPXAb0D/0XVMMlpWydNPfp
         6bZpOpYBo6Qu/IxA7AbmPV73Mj5JuI3YlpRqHkMULUj6dYpxp7YxJRmaULwlYgMK71wm
         Zz3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h9g29stvUXYuSFfoMZ4bTiir/pdgdO82NbVAWeshZvs=;
        b=sbwAiTETBRVmYaHgrXJ7suB23x7eM6lc+PQz+eR9uhcfqjHCjqcBj1zTkFXmYnoa7M
         i4+T4VfVM0NYKOi5lWgPePa6sPGrWaJ406u/AkJm+SalljB9LXkDU1Acgc7x16CLt/JR
         6KFbXtXtT83oNPDprYlbS9/PmsgCMObZ2ASgIctI0OggN36H9S1hbwGJBnwsxxB9q39j
         Zqsmz/k9hG9qSgZ+cEHjpUbnmKtl6ujo0Lxbs6tSySWWy+v8TXXOW259IOTkYK2RiGzz
         4PfTL1SUJ5PhfSvDl0ctG6Xzq3VIu4cD8qY4rLNflpENAaVeBXOYu/rvKwqV3VjQN8V2
         b0UA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533oovldRsWo7k0l+4f3o2k1Z4a2n1Icfqf6wstF0SusVl6ZTcbv
	g1XdUJKAdMEAh+loUeUTvhc=
X-Google-Smtp-Source: ABdhPJwNcGvjiahptGwsh0oTjoVm3dUgbmpUwnYjsTkeoKhvMrnfdqvrusYGxX/xOVXOug6bHzbWDw==
X-Received: by 2002:a17:902:e8d8:b029:117:8e2c:1ed5 with SMTP id v24-20020a170902e8d8b02901178e2c1ed5mr2209545plg.39.1628862138924;
        Fri, 13 Aug 2021 06:42:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:a1a:: with SMTP id p26ls547278pfh.9.gmail; Fri, 13
 Aug 2021 06:42:18 -0700 (PDT)
X-Received: by 2002:a63:cf0a:: with SMTP id j10mr2445300pgg.4.1628862138212;
        Fri, 13 Aug 2021 06:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628862138; cv=none;
        d=google.com; s=arc-20160816;
        b=iPhg5cp+uKI5aO3csCYD7fn0fVaOSNuGXrd48WlV/i5Bz+wd0MpSbWEbNpFWe82gbq
         HDRndMlh7uTf+slfpIzi5VvqdeKlNXeIZuhc3tYX2Rm9zvsjeDzIC68WPBEYct83ULQT
         7zR8/JmdSpBYOpcFoWQLlT/psNImdjWN4ZL5HzMssrDkEmAf/O786a+PeXk7+smqn8EI
         OeUEBDSfwwiVxBW/UQCQUaer4cXTvS6hdKqeQ/hZoraNH4EfYhR6XZT8rxyCJRnPqamQ
         kARp1Y6A0T+pgDLwWMjgKZRQG/FZ8fVu7V8vVnNABVUcA+0t7rk2qfbsDkHy47lbyeTN
         6WFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=vmToD5+EO79tfKeUX0bIOBo0KgmYok5U6xuRJM7rEUc=;
        b=SAQB2xJ6M5y/P1sI6VWSx3OOoAy+ugAmVvJ4OIwKvZvY4jEclo9vlk1O88anc5O8JD
         H/HM9jp2k21Su4ZAIK5bVLNJom+3P4vPPzliBmL8c40fmYlchRbaRjEX0LjtC76s+lh/
         He4zEZu1TdfHtLEVr6Fm7SsdWlHlQpGuZlQvadZxD6V68FM4EAIkjoEsXyFijzaJ4bV3
         yKAdMRA8OKd/R1pXSMX6ajyna2DwZlGdw5L8Xkd7Ww0LP6mDdZ0A/qak5fwi8zD1oo2u
         i3geSHVw8108gd1sBDGb2SRQBAtikwfnCJrlY8oQB8NPxmFsADVP1yjoS/r22y4mlotk
         ypGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id g12si47436pfc.4.2021.08.13.06.42.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 06:42:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="195830031"
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; 
   d="gz'50?scan'50,208,50";a="195830031"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2021 06:42:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; 
   d="gz'50?scan'50,208,50";a="422230077"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 13 Aug 2021 06:42:13 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mEXRt-000NqJ-1m; Fri, 13 Aug 2021 13:42:13 +0000
Date: Fri, 13 Aug 2021 21:41:47 +0800
From: kernel test robot <lkp@intel.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michael Ellerman <mpe@ellerman.id.au>
Subject: [linux-stable-rc:linux-5.10.y 749/1625]
 arch/powerpc/kernel/sys_ppc32.c:94:16: error: no previous prototype for
 function 'compat_sys_ftruncate64'
Message-ID: <202108132128.MglOvHxp-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tKW2IUtsqtDRztdT"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.10.y
head:   81212a8abbf61ea75f691938b24d57cc1633e11c
commit: a024e88f8ab79a7b7e15337096d4f5f77edc6a49 [749/1625] powerpc/barrier: Avoid collision with clang's __lwsync macro
config: powerpc-randconfig-r035-20210813 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 62df4df41c939205b2dc0a2a3bfb75b8c1ed74fa)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=a024e88f8ab79a7b7e15337096d4f5f77edc6a49
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-5.10.y
        git checkout a024e88f8ab79a7b7e15337096d4f5f77edc6a49
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

Note: the linux-stable-rc/linux-5.10.y HEAD 81212a8abbf61ea75f691938b24d57cc1633e11c builds fine.
      It only hurts bisectibility.

All errors (new ones prefixed by >>):

   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: error: performing pointer arithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:181:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/sys_ppc32.c:30:
   In file included from include/linux/syscalls.h:84:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: error: performing pointer arithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:183:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/sys_ppc32.c:30:
   In file included from include/linux/syscalls.h:84:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: error: performing pointer arithmetic on a null pointer has undefined behavior [-Werror,-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:185:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   arch/powerpc/kernel/sys_ppc32.c:51:15: error: no previous prototype for function 'compat_sys_mmap2' [-Werror,-Wmissing-prototypes]
   unsigned long compat_sys_mmap2(unsigned long addr, size_t len,
                 ^
   arch/powerpc/kernel/sys_ppc32.c:51:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   unsigned long compat_sys_mmap2(unsigned long addr, size_t len,
   ^
   static 
   arch/powerpc/kernel/sys_ppc32.c:64:16: error: no previous prototype for function 'compat_sys_pread64' [-Werror,-Wmissing-prototypes]
   compat_ssize_t compat_sys_pread64(unsigned int fd, char __user *ubuf, compat_size_t count,
                  ^
   arch/powerpc/kernel/sys_ppc32.c:64:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   compat_ssize_t compat_sys_pread64(unsigned int fd, char __user *ubuf, compat_size_t count,
   ^
   static 
   arch/powerpc/kernel/sys_ppc32.c:70:16: error: no previous prototype for function 'compat_sys_pwrite64' [-Werror,-Wmissing-prototypes]
   compat_ssize_t compat_sys_pwrite64(unsigned int fd, const char __user *ubuf, compat_size_t count,
                  ^
   arch/powerpc/kernel/sys_ppc32.c:70:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   compat_ssize_t compat_sys_pwrite64(unsigned int fd, const char __user *ubuf, compat_size_t count,
   ^
   static 
   arch/powerpc/kernel/sys_ppc32.c:76:16: error: no previous prototype for function 'compat_sys_readahead' [-Werror,-Wmissing-prototypes]
   compat_ssize_t compat_sys_readahead(int fd, u32 r4, u32 offhi, u32 offlo, u32 count)
                  ^
   arch/powerpc/kernel/sys_ppc32.c:76:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   compat_ssize_t compat_sys_readahead(int fd, u32 r4, u32 offhi, u32 offlo, u32 count)
   ^
   static 
   arch/powerpc/kernel/sys_ppc32.c:81:16: error: no previous prototype for function 'compat_sys_truncate64' [-Werror,-Wmissing-prototypes]
   asmlinkage int compat_sys_truncate64(const char __user * path, u32 reg4,
                  ^
   arch/powerpc/kernel/sys_ppc32.c:81:12: note: declare 'static' if the function is not intended to be used outside of this translation unit
   asmlinkage int compat_sys_truncate64(const char __user * path, u32 reg4,
              ^
              static 
   arch/powerpc/kernel/sys_ppc32.c:87:17: error: no previous prototype for function 'compat_sys_fallocate' [-Werror,-Wmissing-prototypes]
   asmlinkage long compat_sys_fallocate(int fd, int mode, u32 offhi, u32 offlo,
                   ^
   arch/powerpc/kernel/sys_ppc32.c:87:12: note: declare 'static' if the function is not intended to be used outside of this translation unit
   asmlinkage long compat_sys_fallocate(int fd, int mode, u32 offhi, u32 offlo,
              ^
              static 
>> arch/powerpc/kernel/sys_ppc32.c:94:16: error: no previous prototype for function 'compat_sys_ftruncate64' [-Werror,-Wmissing-prototypes]
   asmlinkage int compat_sys_ftruncate64(unsigned int fd, u32 reg4, unsigned long high,
                  ^
   arch/powerpc/kernel/sys_ppc32.c:94:12: note: declare 'static' if the function is not intended to be used outside of this translation unit
   asmlinkage int compat_sys_ftruncate64(unsigned int fd, u32 reg4, unsigned long high,
              ^
              static 
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.


vim +/compat_sys_ftruncate64 +94 arch/powerpc/kernel/sys_ppc32.c

^1da177e4c3f41 arch/ppc64/kernel/sys_ppc32.c   Linus Torvalds    2005-04-16  86  
97ac73506c0ba9 arch/powerpc/kernel/sys_ppc32.c Amit Arora        2007-07-17 @87  asmlinkage long compat_sys_fallocate(int fd, int mode, u32 offhi, u32 offlo,
97ac73506c0ba9 arch/powerpc/kernel/sys_ppc32.c Amit Arora        2007-07-17  88  				     u32 lenhi, u32 lenlo)
97ac73506c0ba9 arch/powerpc/kernel/sys_ppc32.c Amit Arora        2007-07-17  89  {
edf292c76b884a arch/powerpc/kernel/sys_ppc32.c Dominik Brodowski 2018-03-19  90  	return ksys_fallocate(fd, mode, ((loff_t)offhi << 32) | offlo,
97ac73506c0ba9 arch/powerpc/kernel/sys_ppc32.c Amit Arora        2007-07-17  91  			     ((loff_t)lenhi << 32) | lenlo);
97ac73506c0ba9 arch/powerpc/kernel/sys_ppc32.c Amit Arora        2007-07-17  92  }
97ac73506c0ba9 arch/powerpc/kernel/sys_ppc32.c Amit Arora        2007-07-17  93  
b09a4913b15d25 arch/powerpc/kernel/sys_ppc32.c Stephen Rothwell  2005-10-18 @94  asmlinkage int compat_sys_ftruncate64(unsigned int fd, u32 reg4, unsigned long high,
^1da177e4c3f41 arch/ppc64/kernel/sys_ppc32.c   Linus Torvalds    2005-04-16  95  				 unsigned long low)
^1da177e4c3f41 arch/ppc64/kernel/sys_ppc32.c   Linus Torvalds    2005-04-16  96  {
411d9475cf901b arch/powerpc/kernel/sys_ppc32.c Dominik Brodowski 2018-03-11  97  	return ksys_ftruncate(fd, (high << 32) | low);
^1da177e4c3f41 arch/ppc64/kernel/sys_ppc32.c   Linus Torvalds    2005-04-16  98  }
^1da177e4c3f41 arch/ppc64/kernel/sys_ppc32.c   Linus Torvalds    2005-04-16  99  

:::::: The code at line 94 was first introduced by commit
:::::: b09a4913b15d2544f8918f05b9937cb4e99a2319 powerpc: change sys32_ to compat_sys_

:::::: TO: Stephen Rothwell <sfr@canb.auug.org.au>
:::::: CC: Stephen Rothwell <sfr@canb.auug.org.au>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108132128.MglOvHxp-lkp%40intel.com.

--tKW2IUtsqtDRztdT
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
zNQhREfP8B7z/j9zjb2GmsUBAA==

--tKW2IUtsqtDRztdT--
