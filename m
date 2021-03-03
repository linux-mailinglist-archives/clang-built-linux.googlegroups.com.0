Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2XZ76AQMGQEKFM4CZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id F159D32BB1A
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 22:17:31 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id a188sf4733258vke.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 13:17:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614806251; cv=pass;
        d=google.com; s=arc-20160816;
        b=P94CKtKNgxxg6fnE/7OBYdax5kkCfz1sxxiyxJ2rFxs2qlD2Ma2W0rENBCFKJFx/bE
         wtdvDsemmQKMZbIo+gapH92dL5TlPgH/BxTG/3r0xyfXML0HlSytWHvC49QIX50c4Fy3
         mVl3vqq6dEENKbC6p0+dOomDbvAfMJzCndm4lEaNFB6Oj2m3HTbBYj5+UDTT1/PkcJ43
         5AkgEk7d9aTKRH6dMMb3jWRiTZLnovGwJSK3AjJNfGt7gVqK/hfHexmGCiGUGIJqqNNI
         qdKmVGtAi1/iPOGFuqDCgboIDKLm58BpIyJc/60B421sMwYA2q3a1w+QVhxPzCBUNh7C
         C/Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=adZhdY9Wf7b8FPkm7Jaw7Ab6nEIwiPFdxR5/ywXG6Aw=;
        b=IPLnk4jJOuHEkJQqciyBWJ7zLvj8VzifYNrDgYQvmoPngHIhxQvO+hIkMuIa2YqZXq
         kXgWrcV0+x3ZrwIAFQe32VBNHys9Tw6bE2M9mIbUUZEX8y178Wcb8TGzUIXQVhVnypzk
         U09KknXXQqoBhMuESgxLCOCmLmR/eDQWaFt0SwAdWbFFGwQ2OCmJ+8P/kYcoNwdxrhkx
         kUOq0hOdDhTy/xODXy9S4j4gcn00KzY4hSyhrYwwzBIxa9EM66u3F+6Mg1cTpV6MovlL
         QvUO/d/dRn1Kx3f9j0KFihOaJBCNcb6nYOUJLIH8ykxF41tMNLNoPXLD1eLPVTtyjwcM
         4Kgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=adZhdY9Wf7b8FPkm7Jaw7Ab6nEIwiPFdxR5/ywXG6Aw=;
        b=tPff2N1oc7h8nHM+ST3p5Ftxa1/d1/LZup5ALDtLvwNFc9SZ6BFNJrhzwDa38AqTSQ
         MXHnV346vBoVBIyauz/ytBvoLP0QeZIuSjKzMLZjnl7rxcWwIuaRsTriOzqr9sxN2cYX
         7lfWUz7/COlCY2bJFjaeMFwU8kjniCLSmP6v9hiNgKDErc1S+2nm1v1JG1bz8m5lSRdj
         HaUWFNjlbioNPmKpCOSung0mdVjw+9kPIIxle/jGIBqOvnQrMbyfo9IJsFkghpVsaz+F
         7aJ3kWxSz7HPXBZTw7eM6d5wDdwr6FqdlL9w2f/GbimMmuHSIzYZxhZGS1JbBpJvmWEv
         I1ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=adZhdY9Wf7b8FPkm7Jaw7Ab6nEIwiPFdxR5/ywXG6Aw=;
        b=m2AcpEisLqFIseooudbJ7MJAhc4l3J8HN8qYWUD58ggMc/I+MOy7ifVTZk5prQu63u
         6r/1Cq9UNBK5aJ8210Txx/5OWg4t5i6+6T3VmOhtwD4KUHDT0HWiriSCqS5SsL7PYETJ
         cDsqDapccis5AAFsVbayXk7sDWsZ7m57Fcn3WLWXKf7L3rTZ3N192+juRapWBnVTrNR0
         MRVmnDGIfMeAvWjvx6TiyL0imsYZpJuWZNgGUC7Ko2STFb7yCV+8oIJHgXbV9zAyR+EF
         QvJhp2yG4IAp5ZvhGiYeO8NtmbGuHu77ohi5WuX0r8nASHjoqjDbFJp8Rj5rjagjirUm
         o5Tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531u88wlvnCLvnz60303tbXXusTrIvsaFHPMv5KTjlwNpdcpKmoz
	zaBKvhsQbnwy+WkpUaXN2iE=
X-Google-Smtp-Source: ABdhPJzBXCrMJrcRHpXOb86cnlEXuPoL+plYm6oUOtUM1FKuU0dPIGSsLdg2A3kQseKiDLZqNTKIHg==
X-Received: by 2002:a67:8a87:: with SMTP id m129mr956558vsd.32.1614806250956;
        Wed, 03 Mar 2021 13:17:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:328c:: with SMTP id y134ls200126vky.11.gmail; Wed, 03
 Mar 2021 13:17:30 -0800 (PST)
X-Received: by 2002:a1f:a64e:: with SMTP id p75mr1255947vke.14.1614806250303;
        Wed, 03 Mar 2021 13:17:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614806250; cv=none;
        d=google.com; s=arc-20160816;
        b=sNNknMf/Tf8dpJ8DjFD/9z+8+dWElC5I2jw2jblumuivA9RQkfIpxh3deLtysaugyB
         hGq51kHflztpUuCnltuvqzg5wwvzsO6ZfSa9l5neH20z4S3CMjiwEHi7koimONj00tqN
         BG7sG3UN+bRv2W8mFe+c0SiHbrCerrR5r+PxYPwrLA+i+3JMqQ6Fj2DIr4sgdHiVr3Lq
         /G8JoMm3TcUfceoa1DMFbUUV2DibADB0ypHZb39k2Ehk4Oz0JZ/IiQoKQoXZEL5iWpDB
         v4EqdooQYVZ0midwznMVBSL7s91xGZttKxMdqqSC/YBU+54S/Ll3JXYD8h2r2ovy2+4p
         k32Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ZLfIx2s3IW+FPEWLDVX4GtgO0qio+eJb1JFh6UqEPPg=;
        b=VB/7eAYf7XbjyvbPNhphnZ6PC1Jfl9lBY77z/IkPMiDVvVk7LHsDmPJUhzdMWAFLSR
         gL+k5nhRsipSSq0Fgneh8qXGldt0zbU3DcDeU9BfMYPaUFXM3J6utyOq6Gx2pDyJukWQ
         6J3eZZBbtuFmkU0/4Dxupg6q7V1UyotGIOpIZ2jqOqU22F4bNbPfqGHPI1nIZ0JHp1wv
         EzEM3xiyk7WD8FVjwsWnPcjoPlIO1tP944y+drgFdvXEqSj+00kr4jP2i+/4SsdCX35T
         zKtM1ziqclcCXG3ThVGmUzvUxUiLutOcFxemZE63qvwyMXMFaAGlacOHAGrBpfyA1N4Y
         nYVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id o3si1216340vkc.1.2021.03.03.13.17.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 13:17:30 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: Fohg1XulzklEsOva9Qs/RpHOZlv8whvBzK6Z3jy7zpwhhTn9UpYHr9XTalqAHIaWFMROzOfX2J
 XRntTqehEYLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="167179269"
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; 
   d="gz'50?scan'50,208,50";a="167179269"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2021 13:17:28 -0800
IronPort-SDR: ubHiZ2SSlD4aIB2o0oT7v/S2qq0dc81bxk+0P9FZUwUv56oKY5E6DZ4zxXk/OxiBitkMSItGCy
 XTNXbAef0FNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; 
   d="gz'50?scan'50,208,50";a="435351850"
Received: from lkp-server02.sh.intel.com (HELO 2482ff9f8ac0) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 03 Mar 2021 13:17:26 -0800
Received: from kbuild by 2482ff9f8ac0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lHYs2-0001kq-1r; Wed, 03 Mar 2021 21:17:26 +0000
Date: Thu, 4 Mar 2021 05:17:19 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:perf/kprobes 1/2]
 arch/riscv/kernel/probes/kprobes.c:284:12: error: no member named
 'fault_handler' in 'struct kprobe'
Message-ID: <202103040512.PymQE1YA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="n8g4imXOkfNTN/H1"
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


--n8g4imXOkfNTN/H1
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git perf/kprobes
head:   e5db8a71574bc353ac07dddc891078df265c0150
commit: b10e300d24126ab9a04bb17e6fed73f7eb55ea78 [1/2] kprobes: Remove kprobe::fault_handler
config: riscv-randconfig-r004-20210303 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a7cad6680b4087eff8994f1f99ac40c661a6621f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=b10e300d24126ab9a04bb17e6fed73f7eb55ea78
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue perf/kprobes
        git checkout b10e300d24126ab9a04bb17e6fed73f7eb55ea78
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from arch/riscv/kernel/probes/kprobes.c:3:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:10:
   In file included from include/linux/trace_recursion.h:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from arch/riscv/kernel/probes/kprobes.c:3:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:10:
   In file included from include/linux/trace_recursion.h:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from arch/riscv/kernel/probes/kprobes.c:3:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:10:
   In file included from include/linux/trace_recursion.h:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from arch/riscv/kernel/probes/kprobes.c:3:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:10:
   In file included from include/linux/trace_recursion.h:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from arch/riscv/kernel/probes/kprobes.c:3:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:10:
   In file included from include/linux/trace_recursion.h:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> arch/riscv/kernel/probes/kprobes.c:284:12: error: no member named 'fault_handler' in 'struct kprobe'
                   if (cur->fault_handler && cur->fault_handler(cur, regs, trapnr))
                       ~~~  ^
   arch/riscv/kernel/probes/kprobes.c:284:34: error: no member named 'fault_handler' in 'struct kprobe'
                   if (cur->fault_handler && cur->fault_handler(cur, regs, trapnr))
                                             ~~~  ^
   7 warnings and 2 errors generated.


vim +284 arch/riscv/kernel/probes/kprobes.c

c22b0bcb1dd024 Guo Ren 2020-12-17  242  
c22b0bcb1dd024 Guo Ren 2020-12-17  243  int __kprobes kprobe_fault_handler(struct pt_regs *regs, unsigned int trapnr)
c22b0bcb1dd024 Guo Ren 2020-12-17  244  {
c22b0bcb1dd024 Guo Ren 2020-12-17  245  	struct kprobe *cur = kprobe_running();
c22b0bcb1dd024 Guo Ren 2020-12-17  246  	struct kprobe_ctlblk *kcb = get_kprobe_ctlblk();
c22b0bcb1dd024 Guo Ren 2020-12-17  247  
c22b0bcb1dd024 Guo Ren 2020-12-17  248  	switch (kcb->kprobe_status) {
c22b0bcb1dd024 Guo Ren 2020-12-17  249  	case KPROBE_HIT_SS:
c22b0bcb1dd024 Guo Ren 2020-12-17  250  	case KPROBE_REENTER:
c22b0bcb1dd024 Guo Ren 2020-12-17  251  		/*
c22b0bcb1dd024 Guo Ren 2020-12-17  252  		 * We are here because the instruction being single
c22b0bcb1dd024 Guo Ren 2020-12-17  253  		 * stepped caused a page fault. We reset the current
c22b0bcb1dd024 Guo Ren 2020-12-17  254  		 * kprobe and the ip points back to the probe address
c22b0bcb1dd024 Guo Ren 2020-12-17  255  		 * and allow the page fault handler to continue as a
c22b0bcb1dd024 Guo Ren 2020-12-17  256  		 * normal page fault.
c22b0bcb1dd024 Guo Ren 2020-12-17  257  		 */
c22b0bcb1dd024 Guo Ren 2020-12-17  258  		regs->epc = (unsigned long) cur->addr;
c22b0bcb1dd024 Guo Ren 2020-12-17  259  		if (!instruction_pointer(regs))
c22b0bcb1dd024 Guo Ren 2020-12-17  260  			BUG();
c22b0bcb1dd024 Guo Ren 2020-12-17  261  
c22b0bcb1dd024 Guo Ren 2020-12-17  262  		if (kcb->kprobe_status == KPROBE_REENTER)
c22b0bcb1dd024 Guo Ren 2020-12-17  263  			restore_previous_kprobe(kcb);
c22b0bcb1dd024 Guo Ren 2020-12-17  264  		else
c22b0bcb1dd024 Guo Ren 2020-12-17  265  			reset_current_kprobe();
c22b0bcb1dd024 Guo Ren 2020-12-17  266  
c22b0bcb1dd024 Guo Ren 2020-12-17  267  		break;
c22b0bcb1dd024 Guo Ren 2020-12-17  268  	case KPROBE_HIT_ACTIVE:
c22b0bcb1dd024 Guo Ren 2020-12-17  269  	case KPROBE_HIT_SSDONE:
c22b0bcb1dd024 Guo Ren 2020-12-17  270  		/*
c22b0bcb1dd024 Guo Ren 2020-12-17  271  		 * We increment the nmissed count for accounting,
c22b0bcb1dd024 Guo Ren 2020-12-17  272  		 * we can also use npre/npostfault count for accounting
c22b0bcb1dd024 Guo Ren 2020-12-17  273  		 * these specific fault cases.
c22b0bcb1dd024 Guo Ren 2020-12-17  274  		 */
c22b0bcb1dd024 Guo Ren 2020-12-17  275  		kprobes_inc_nmissed_count(cur);
c22b0bcb1dd024 Guo Ren 2020-12-17  276  
c22b0bcb1dd024 Guo Ren 2020-12-17  277  		/*
c22b0bcb1dd024 Guo Ren 2020-12-17  278  		 * We come here because instructions in the pre/post
c22b0bcb1dd024 Guo Ren 2020-12-17  279  		 * handler caused the page_fault, this could happen
c22b0bcb1dd024 Guo Ren 2020-12-17  280  		 * if handler tries to access user space by
c22b0bcb1dd024 Guo Ren 2020-12-17  281  		 * copy_from_user(), get_user() etc. Let the
c22b0bcb1dd024 Guo Ren 2020-12-17  282  		 * user-specified handler try to fix it first.
c22b0bcb1dd024 Guo Ren 2020-12-17  283  		 */
c22b0bcb1dd024 Guo Ren 2020-12-17 @284  		if (cur->fault_handler && cur->fault_handler(cur, regs, trapnr))
c22b0bcb1dd024 Guo Ren 2020-12-17  285  			return 1;
c22b0bcb1dd024 Guo Ren 2020-12-17  286  
c22b0bcb1dd024 Guo Ren 2020-12-17  287  		/*
c22b0bcb1dd024 Guo Ren 2020-12-17  288  		 * In case the user-specified fault handler returned
c22b0bcb1dd024 Guo Ren 2020-12-17  289  		 * zero, try to fix up.
c22b0bcb1dd024 Guo Ren 2020-12-17  290  		 */
c22b0bcb1dd024 Guo Ren 2020-12-17  291  		if (fixup_exception(regs))
c22b0bcb1dd024 Guo Ren 2020-12-17  292  			return 1;
c22b0bcb1dd024 Guo Ren 2020-12-17  293  	}
c22b0bcb1dd024 Guo Ren 2020-12-17  294  	return 0;
c22b0bcb1dd024 Guo Ren 2020-12-17  295  }
c22b0bcb1dd024 Guo Ren 2020-12-17  296  

:::::: The code at line 284 was first introduced by commit
:::::: c22b0bcb1dd024cb9caad9230e3a387d8b061df5 riscv: Add kprobes supported

:::::: TO: Guo Ren <guoren@linux.alibaba.com>
:::::: CC: Palmer Dabbelt <palmerdabbelt@google.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103040512.PymQE1YA-lkp%40intel.com.

--n8g4imXOkfNTN/H1
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICBnmP2AAAy5jb25maWcAjDxbc9s2s+/9FZp05ky/hzSW7DjxOeMHCAQlRARBE6Qk+wWj
OnKqU9vykeS0+fdnF7wBIOg00zrm7uK2u9gLsMivv/w6Iq+n/dPmtLvfPD7+GH3bPm8Pm9P2
6+hh97j9n1EkR6ksRizixe9AnOyeX//5cNgd77+PPv4+nvx+9v5wPx4ttofn7eOI7p8fdt9e
of1u//zLr79QmcZ8pinVS5YrLlNdsHVx/e7+cfP8bfR9ezgC3Wh8/vvZ72ej377tTv/94QP8
fNodDvvDh8fH70/65bD/3+39abT5dL/5enn5+eyPi7PPn7YPD5+vri4exg9XV5v7i7P7y8vx
5vJyMn74z7tm1Fk37PWZNRWuNE1IOrv+0QLxs6Udn5/BnwaXRP1OAAadJEnUdZFYdG4HMOKc
KE2U0DNZSGtUF6FlWWRlEcTzNOEps1AyVUVe0kLmqoPy/EavZL7oIMU8ZwQmm8YSfuiCKESC
YH4dzYycH0fH7en1pRMVT3mhWbrUJIdFccGL6/MJkLcDi4wnDMSoitHuOHren7CHlguSkqRh
w7t3XTsboUlZyEDjacmBiYokBTatgRGLSZkUZl4B8FyqIiWCXb/77Xn/vO2Er27VkmcUVtvO
IZOKr7W4KVnJ7OFbghUp6FwP40vFEj4NzJyUsDs6rs/JkgH/oC+DgKnA4pMO70GNOEB2o+Pr
H8cfx9P2qRPHjKUs59SIVs3lquvExvD0C6MF8jyIpnOeuVoSSUF46sIUFyEiPecsx8Xc9jsX
iiPlIKI3zpykEWhP3bPTVGUkVyzcnemKTctZrIxAt89fR/sHj2ehRgJ0hNej5pYAUDYUdHKh
ZJlTVmlXb1hDwZYsLVQjpmL3BEYrJKmC04WWKQMpWV2lUs/vcNcII5xWlQCYwRgy4jSgT1Ur
DpO221TQuEySoHYadBAz57O5zpmCOQrYgi5Nzcvewpq5ZDljIiug+9SZTQNfyqRMC5LfBoeu
qQJrbNpTCc0b9tKs/FBsjn+NTjCd0QamdjxtTsfR5v5+//p82j1/8xgODTShpg9uLHo78pLn
hYdGwQZmgoqCnHE7sveyonMWabKcueo5VREsQ1KmFLYt7OF9nF6eBxmEJlkVpFAhFinucBw2
VWP3Iq7INGFRUJb/goutIwEGcSUTUlsPI4WcliMV0HCQmAZcxwD40GwNimxpvHIoTBsPhCs2
Tet9FkD1QGXEQvAiJzQwJ2BoknS7zsKkDASp2IxOE64KFxeTFFzw9eVFH6gTRuLr8WUnjAqn
ije2nRlP0ikyeVj23Rq08dViGpSpK5OuD76ofgkOwBdz6NLb8q1HRo8bg1fhcXE9/mTDUSsE
Wdv4SbdveVoswE3HzO/j3Deg1b4xZrTRLXX/5/br6+P2MHrYbk6vh+3RgOtVBrBeNASDjyef
7W1BZ7ksMxW2iRAagGOBXRjgAEyOLjIJPaJxhFDKsW/1nodQxfQf7B58eKxgT4Ito6Twd2Oj
Biwht6FwJ1lA06XxPbkVSZpvIqDjyjk5cVQe6dkdzwLdAWYKmIm9BoAld4KEqdd3PVIZXgCi
LsKd3KnCmvpUSjTo+LsTxsoM7Cu/YzqWOfo9+EuQlDr89skU/BIYE8OmIgGrQ1lWmIQCt481
hSzuPnzbZMIBiOKsUEDNWCFgH+ouHvPEWyOCrImr0CJku02wWTncbrRq81izLR2fxZIY2JeH
o88pgfDI9/7NPErIq7puzafOuOfGKjAV2ZrOLQGxTNrRqeKzlCRxZE/MrCOOAiOb8MglJjys
R1zqEtY/CwXQ0ZLD6mpWK7s3wcSU5DkEoYF2C6S+FRaHG4h2Iu4WapiIO7LgS0f9QG9Ckm7a
A9MshokpiyIWeexFxdZtuNi5bTo+c3aPMXh1wpxtDw/7w9Pm+X47Yt+3z+ClCZhCin4a4rHO
+Q50bqLiCgl6rZcC5i9p0IP8yxGtCEpUA1YhWtiLqKScVpOwk1ORkUJPTSLabaaEhFIn7MAl
k2EyMgVVyGesCYH8vnUMoQY6dZ3DnpRiqJOWbE7yCPyUo7pqXsYxJCgZgYEMKwn4hbDtx5Wj
o4S8peAkbB+EIJnpZ6XLFA07EIJdC20kCBZjnjixpzFtxkE5aY+buTfElxdTO4fJuaJLL+Mx
s8lTcBSQfmoBidn481sEZH09uXA61EILGTkbR4gysJo7yBZ0JMj5pJvDkph+r8+v2jXXkI+X
HQQYL+NYseL67J/PZ9UfZ5IxbF4wCpqlGAF7S1wR0FcTfpBEz0sw7snUI1Fllskc1lcCy6fM
sh0QNtJFFY7VRJ4sMPyH4Weqj29CHmcnWMDW6GgjUMcrtPkmKMc0h0ACdBxihgCBKkUfOl8x
SPCsuWSzAlkDQeuSgTFtwzKMwyBYsSZfhWR7CqJ73N7Xh3adiksI4XgMkw5tJkBijuVsH4mL
SAlJgxbIHciMlD1uTmiORqcfL1t7bCOqfHk+4SF3USEvL5z8iKJqJmAlIthvoXivxZPUYi5A
S2CWqk5QLLGA/mfzW4W6BiHnzNIjZXuDNEczoK4/Wwm3LLKknPmBf6NKJeyNLvfpgtXSDdW6
AMxsPcj4NO35kePry8v+gMe1GWzEmotOO+PyAGmbkECrNnbIHEpXQLbrcuL3ZuF3enx2Fj6E
uNOTj2cBdgDi/OzMOxyBXsK010Db82ldsoBzme6h0f4FlcxyoFRE5gzVRNN1c4ey0sf935B8
gHfcfNs+gXPs95MJx7mLyvuFDLqAzMdxgasb2PwrlmsWx5xydK21Mwtul8G5mJnGu8PT35vD
dhQddt+rUKELS3kuViRnGDyBSQ/KYyblDNS+Ie0pVrH9dtiMHppRvppR7FxtgKBB9+bnnDpv
Dvd/7k5gCUBs779uX6BRkNsL30Z/KUWmwY+zxLHbBdjBBbsFwwwxNB5Oe7GZ8Y7giSG2xayO
4rmMFR7mrPAHMs16w1fQn5BrSEtiLy+pA/DUGBnN8hxSnMCxbXd0bNrPpVz0DT6YH3M4WB/v
e/4Ns2Rwnyh7md8OICMOKSvQkMwfWxkXXx/V+wvMGfg+CK8qV1nzUZNepmECUiQOwTEBqzuI
StGbAE4zJOUQ1g7le2Rg0TEUfQMF2p8UTjboNxkirI4FcQ0g8oLhRYzjCB1M6PSlkM2Jqt0j
/I4XZEb4i/455MCZpkf15nlmFyVhdARGCmQJkbA/EVCBmlMZoxACWId0lb9UJt/AhBVFYAX/
CUZ+U5g+WJXIkn+dFZxPcCPi9Lw5SZPOQ9S2YHmKkl2tQ6E+xjB2WqJ6hmtG5fL9H5sjOLe/
Kvfwctg/7B6dw2MkqkcK7BCDrQJy5iaSAUwXl78xsMNcvJjE+ICnwbj+J7ax9e6wfTGht62Q
8fUKk8DrsSevXsATS7z5SKRtQGpUmQbBVYsW2aUAnb0IqHoTX+W0vf9zj1kagoFDzBqN+pOD
tXmLpsq0BFcKd0Z7+Ke5MBF/+BA25wLWBNoc6QWeEQwuQVWn2QnY5DJzzg5QKUNhqkrHHRMx
AcQIBLYUTw0X6cLTvTY1gaxTgKEH12wfXuHpjWkMPJSr1LZH+UpBmDqANHtmANfqvBBcrqwY
t/02m4r9s71/PW3+eNyasoCROUI4WY56ytNYFFrRnGdFoPsaj8mbpa4OsONnB9YyCSXLNcVd
sDtjz6KhXkE7QldueOxWe6N2Qw4t2nBEbJ/2hx8j8UaoWGeq1rkcriiFLASds+t8VZaAXcwK
IyuTT1yZP05inDNUD8eeY4aiSRTluvCPAFIJubmuTx0qPcdjUwh8xlbSlDCSUkLnoRzvLpPS
Mn5309LZ93fncVg8TaDCSJ7cag6srdbahc0sRzfWu/jqotMyG6oxaFUqK1jlnohjhocF0zKG
2VxiWFwwy52AEIGsgRlxp9vT3/vDX2DLLTl36wF/x0KThU2/dkwA7GAqPEjEiXMMDEYi1BdA
sboDYxJB7CoPnG1WZFjGApYvvnWSyroR6InxusBykXmHsDZxFeiE2F6I6yfrAwIwCF+erP2V
82gW0qIlUOrPZ5PxjU3eQfVsmYdzFItGeDQ1RcQoStPqt4LoXJbhdSSJFcvAh3VARQqSWGzF
yxmSZQlzwTyLoqxjhfnUDPaQtZvXk4/WICSbdvTZXDr6xxljuMSPF1afLUynSf2LucsAAaYF
SUKt8fBlYVjRGHBC/X6RMeZeq9Hqm9ft6xZ0+kN98ebESDW1ptMbV9cQOC+mAWCsaB/qaE4D
zHIu+6TmgiYwWm4ftjdAFQemoOJA84LdJAHoNO4D6VT1JwvbItCcmDU8OdvHYMBwhKxig46U
2b69UeBvFuBUlOd9oLgJM1AtpmEEncsFC032Jr55Y64Uj8z6vcU3QxhKFixE31/CfB57hqpS
DB6yIQ02aKlNM4inQ4ILSDOQVTRlFS4vemiz5jcpGsYETVVFUmlor2UW81iakoI32tZLuH53
fPi/d3XJzOPmeNw97O69mkskpe5VWg3CLIHTIQdgKArK04it36SJQ2esDbI8n9jKVoNM/h8K
vmp07dZ6Q+VqGTL+Nvoy1C4OHwS3fMh6Gti0CrqOhkBgnSAmMY5qMQP2YggDq44DsI6yj3Iu
Fi14Or0tWGgAw1pv1jVGgKcaFFlNg8cLP6OhJOVDBgzXT6gXPwFAZzLh1JsxwmdIbanCzBDn
wVu+po3gee5ezDUYBdFLEr4fb0hSMhA8VdNkTqlm2y8XWXC8xRQbvDXXLFH9VWPk0oc6xQnW
EJBf9uE8DnCzKFM8HFmw2xCnC8/0Qhem+567qRG1A+sj6v3v+4uCIlJ7KuTberBjVhBFLScd
pQpLbSRWAjuhI4QIEOmRaBkOA6vQJpSZw6CQUy+qENrqEaUyqCWpmofuFpSVFt/khfeFrO94
ZSBibp175pnllfLYVP05h9SY2OXrqrwYc7/MyePWmefUciy/UrfaLc6Y+oEMGqu6TtvNVEan
7bEumGxTox7KQ9jZjXUdQ0ROIh4q2aa2lsOHzsnKBUypcAGzleMYAPJlfHV+Fe4caxMLDLYr
V0fSUbT9vru3Lz0s4mVvOst1BXLGUwkloTpQxEHM7/ZASULxkhork5wnA4CLExbqf5YP9/+F
pHeaw2/nfqvFkuC5eEY5CxbamMnowHAGCPEPKbCsKqj0FhkN3acaPP306cxbO4Lw3jEEbgZ0
cTzm+HccuWARmrgIzShEEViaRZQxsqjZ5g6qvhC8RvSHZUK9wYb48/jybDwsnJ9Mwp1BOzXn
nrda0/rNlddzR+YPjNhQhOWgZGzOibx1VOVCoOTcK4nsaof7e8yy0+HQYcVzlnhHs60hXHA7
UKq+dcIix1oa4CzzvdGVFxtdZeYKpJ91AaJ3DWstnIeCzjSm1mgxBR8y45hc230DOA0KHTFz
I2+HWM2jpH9Jn243h1G82z5indXT0+tzHa2PfoM2/xl9Nfy2jJnpiQu/8yz9eH6u+SRc3/Uv
B7EOrfrBlBsJ2OMnqyr0CJdBEp7IJQsXSrFiXkiZNK66x5whi15dGFLLxfof9TsSFQT2q8tx
I+L5KbhV67arLtXAlkjgkhPmXOvVoPriNnTnDwSa0dwblSivaqCGha//fSJTM6DIMhz2umR4
hdAn7pE6Jbj23DPhQyLvEZWhKkLGGFkolCeioZdADa4q6YJkCq8MPUnelDxfeLWUfLjeAnCq
KKduH8QvxoTpyOVAc4iH3dYZZMpRb/mgQFURj4zjQZkYqoB8fRIspA+OYAnp7UEyxvIJ/ggF
tZ1624PYWk/DXs0mUXOjBFWFDFDf759Ph/0j1ul/7VefYIu4gJ9DpUBIgA/3mi06xJ411kOu
e8wRnOYS37SZTgL25Lj79rzC0hOcK93DL6qqd7KqeIxqr3xdX5kueyMCHN1sb7wwFQudVRh9
h9Qnta8q3ppqdcm0/wPYu3tE9NZfSnfjMUxVyWXzdYvlvgbdye7YlIF5bKEkYn3LUEMbBoVQ
LBtAZM41XQ8VZrpDMcjTL58mY3eqFag/zxrOnCu+n7OmrcYK6327J9jz15f97tllpmZpZOo9
fRvUwOvXEnE4WTWUWdy7CesRpEX41ZAzsXaqx793p/s//8UuViv4jxd0XrBwzPF2b21Auk50
5XS7mGyNhZjhbCWjlOQDb2lIxr1MtCsr293XQcRI+jexZVUxMmdJZl9+O2Aw9sXceWK8LEQW
e+X2FUwLrD0J14UXJI0IVsGEF5dXY7YleubVc29BbfXc4x409GDdKa9MyYa9ihZkLokjfJHV
Idm6yEk7mrW8rpWpx/JZE0S3jtrmSUcZLtHw6wHrFTUDmVokvGqzbuBrVFXOEcYNQU1+k/Ol
G7i1eU/upz0OAe6zurXOmZBDIZfQN1LpRYlv5QduqU1XRN2mtOnQ1AZ2GUfVusFVL+qtlIjN
nPKA6htj/x5MJVw4IW0NX42ttKsCYU1Hv0/7SWvTJ3WO7QRpiipAt2KPtYCMjaE2FYtvVANU
ZY0yk4mc3dpGeGD3VsW8r8d+foSntfhKQxiz0t14zrl2OFED2gcq3fFgjUAjFwhCugJha/TW
mknIg+qCv3ZTS9o9zmmWnSp7bkXkfBh5q+ZkK9scTjuTrL1sDkcnDUJakn8yz0yUc8QJiLqo
uUKGCpeARsZtWwsKwjSv9d5AVTWiMr+tCpyu34/dwZ0udJnW72WCd599eqxclWniKEKfDYY7
JfwKQQ4+DK0eKxWHzfPxscpuk80Pz3OZRcuBF6GINC92sNoQFFoQ5dUJVE+gifiQS/Ehftwc
wbf9uXuxfKQtgJj7MvnCIkbNZh/gAyhcawxcacYcz8DrUsgheeL+nJJ0oVc8KubaqjALYCdv
Yi9cLI7PxwHYJABLC5bgv+Xy5GOIiJRR9t7awDWGTrMadFnwxNNEIjyAFH7HZKqY74qbN9PD
Qqyi683LCx5510Cs76qoNvew4X1JS7Q56+bk3n2jiEqFT0VIKEw1WPtoEAGGf3qZ61TmLgbj
3WrhXYD/k4lWz3i2jw/vMQrb7J63X0fQVW26wpqbCfrx49jnZgXFB0sxXw+tpaLpG1XAqQSm
PtRu3pMn/O/D4BucREES8wL4+uLs6tLDstxUuSJ2PPlcJ32741/v5fN7ilwZOlHCESNJZ+fd
gFNT45CCrxbX44s+tLi+6MTwcw5Xp30QALqDIsREK+7qwQAhxpdBDcZ/TojHt3qV82LIlDSk
zVlXqHuNNyg/QojJGu3QDCXgiTEnKzPpnl1klAI3vsH6+8lju1IgcgdsoJhQzIlwb1IGCLQS
1J+WTQYyCm760AzbI1KUjFlHkkVRPvqv6u8J5DFi9FTVDQZSIRy6ahAa8Odd2Sstp54hAIBe
JeYph5rLJPI13hBM2bS+5JucufNCLBaNDD3zaWhmScmmoXMeJJjfQnDvhFJRYYlQOmUSEE9g
6DoQ9wIWq1yxUtruoC4FDaIWcvrFAUS3KRHcmYApcXUKfwDmRK7w7dTVSXyZAKnLEp28XYRb
IfAO2oHh+XX16NKq6szxvLh/nL8ULHQO48ArD7M73vfDVxJ9nHxc6yiTTmWEBfYP+RuplELc
mmVb5YSQP0lreQWPRWVrXNCn9dpKCDhVV+cTdXFmwSCI/3/OrqRLbhtJ/5U6dh88TXAFDz4w
SWYmXWSSIplZlC75qi3NWG+0PVV5Rv73EwFwwRKg/ObgsjK+wEosEUBEoG6Ha4++kL24IVKO
yUFPqFu1c7KuGFLu+Znjor0aaj/1vIBohoR85bYRtvCh7Yf7CEgUEcDhzPB68i+TLmqRetOW
4tzkcRApEksxsJhrJjMDvUdp5zJCHVszlSeR96E46ld53a3LLuQBZu6rLrZlCQttoyyZ2+2I
QO7Z6FMRNma0Lk9Zrlh8zOQmm2KeRBY9DfIpVkfWTAeZ787Tc1cOtGXXzFaWzNMjFmyLq96O
tbGHhHnGoJM0MzTARgTleADdffG5nX0Ofzy/PFRfXl6///lZhCZ4+eP5O2y1ryjwY5EPn3Bh
fw/T6uM3/KfalSNKmGS1/x/5bmcQoB5kKLp2inAK++3Tm9L8vd7Fzv59oD7hqvJ2CxxY5mdF
AT/kzf2mnaVIyn0cqYAx6LkA9cnb3jzOFwgoVdad8jInMhD6s3tWqcqWtjZJCTIfqkWisXZ3
BO/SUGkTiIgE6wHSddA8G+VvEVZoOEnJTUfq9nSSgoEMiFeW5QML0vDhH8eP3z88wX//pCbQ
EbRUvIAmmr1AIGMPb1V5ejfvJTXsJvNFuWkYZoZoWYZKP9uia7/vzNftCRayFzFnJrMdjZkm
J/WLBWyb1Pvxwyp/puuX5ksxFawK5FqwJfY9WKppnrGZD7DoLaAcz+hhR4kJx6JQ5KCiPE6T
8XM5rNpW7ccjeQlwfltXqm/+U3fWdvEaBICxr04nPGc7UxMLVJ1SKHDL2Guq6gFZXfoTqLiC
fevqoroYlDdX2JirzKBOnCdpfJgLW2Z932YF9LTOC2tBFLLQM3jzBnbyaWZVFw4ecs4cLUQ4
WVMpi41wHTF6MK/yrMjMEnLheZQ5CigymClmC6q8q/GQTa1/PY06QSrC01P2Vk9cw3JTjsxj
LNcTNBnIdHVNE5l30rPBy8KytmnyAlHPYyWPjEgwlE11N8bWJZudVo1e2RgmyO23jDHZ+dTs
HbkXWN/zzVIaZVNT4qb0qFe+Bw1wyAazgtCgx6WlRFZDM+R6U4cRdv9J8W/B7Q9GCQiMZt5F
xwPu+862Iz7mnLkGpUgfcr0dghgneqUkMdWJN1CLBwxtoSafBbUTzGC/x7/KRyyqdjZ9Ur45
ErUzY1AFkGiwyKsDM101HrLLySgCpxUoSE2WG0AOc0SN3yKIs9HTtpUj8VzB4D+WkAUlBiAH
fLcchmXVGGW0+Vi2F4NYdW9A0E+NkoHKvTg0qOP5epG3S3IlxNu25s9PryAWffihn6bMXXdv
rtodvUoXzXO1YeERTj94tqbeP+kcDfoQntbT8nxwLs2A3Sf4ox0r2/yKCN85YvvVepg9UfL5
68vrLy8f3394uA6HRWIQXB8+vMeQ2V+/C2QxtM3eP397/fCdklueajNKzgKQxqOKo9e85Srr
7IYds8eyPqgDSgHPT0NFX7kKS+I9I65qKC5Wb1Rfvv35aguMW6JLd7W15/Pz9/fiIrD6V/uA
SdSLnVJzXhI/8a/QpT7rZBB1u0HzMpF02MuATn9TwQCyFbUUCmwW92XGenGDjwPVJIOcRHFn
3YGg4mzQua+yxZsikTWlEVhqptwvQxRxm/NehwRz2VyZ96jJnSt2bLjH9P6ZJwr1aVaZmfrY
8muDLvX8Ow5z66QDFBl1abjRV+boBJvCPjC+peVIqf5a+IIWQi+6ju0cl2A+Df/+8fmTvT5g
f8N+LY6jcj0m8wxxI0yRPPL5+uUXAbzIfMW8J4b8nMc168eaPradOXRlWSGKg+dWj/w8w78N
ZFQ7CcpAXUQqCSzZ7mSQ5xd141/JLK4GFB71A2wT3kkob63NesE+GQcTdckwM8xz8bcxO2F/
ElkYHD9v45xgzs6JidBfGIjh13CH6ZBdC4zW9itjkb8FqSM4t0+q88zSSjfcHQ3UGf5G+1TL
043mrABiF1CLRFuZVXzf+e6yjkN9rztRcfPTC6i6oH8EicOvchJ2H9UJ1IZavQKbWZrycn/H
gsgeVp0aLFchOhuJE5GsxgKIQ4mtD9bbHm0FMdJe8HoILX3U2vTCT2nerDbN6W1eZ4XD8KRp
p0zqQLUjbKrgQJfhkRSl0MREuECdVKfyQRF8L3c0Ste2grYujtVwNg+aNnngfiLXmkv7rm10
o/craF30edUc2Fo44iv6hIyvCDVWzmxvOWG0M/c0WvqAIEjWEwqeY+oS5UtXgXVYKB77DfEm
gKAKW8MiGzOTjqe80sKDRIaxN8LPC1BqG+Lz9kfaOEbwqV9LEmDRNgoSj1MU7cksH62+26PO
fbBKVk7yn+YAqUr3LyQZ57dqm1K7Zt/wQxYG1KnVxrH6Z1hIno+9qixtyFR1Z1grlWOSrqvx
OEEz95KXOKop3qNhQbghRuzOHP7TLfAFqXIMKonhtnXP+4g++1KZMMoL5fGt8sBqWF1K9UBU
RS/XWzuaoMhWJ91GtN7v2+mtnc8wBsG7zlfCPZiI2IjVO436rXbpt1CkI4QyAFagPZJyoy0B
riviPK766zCK8OCr8aLUIPzcPmnWjNywdw4trLL4ho02wfDriJhitMKCsAjxSxn7IyrVVqnl
bgquqJKwIqDqBRvmQUrxwgG8vJzUdUVmKlV6o6aSDn/dlbnXYx4GXqy3HYEuz9IoZC7gh12F
rrrAbKvtFFKL1qpWlEqKneo19ZR3tXb+v9tveimzAanj6R/kGGYrxnVgZJ/+6+v3j69/fH4x
vkF9arVARwuxy48UMVOrbGS8FraqPmjyt336+bzhASoH9D9A/afNprVCKxYFkVkTIMaBOSwE
eSLvSBFtiiQyxgPQOGPGWKhAoTMogxqKACldVU2hTrqIgG6+WanLrSqqDIYrFbxWfKkKVNHU
aCEQ48DThyLQ0njSabcq0xMCAVY0bUUQj1w8/BuNL2eLp398hq7/9NfDh8///vAeT1r+NXP9
AooZmkL9U/8IOa5W80TUxjpGtxd217nx3oMBDzXtQ2Ww2d6XJoPqs4ZY2ZQ3X2fXHR8Xyn15
+Oo3K7wksrTYAEofFh87zxxV6x+DyfxwzVjmOtfsefN5Cf4GS/sXkIUB+pecCc/zwRZhLYPp
x6wdQFxqLD26ff1DrhVzPso3Vi0pnDNSLwbdvVxjFL+f2WeCOF9z76UTt/9o5GKvlXhz7bj/
2xhw3TEHHtIXJwilleatYxVoknqOIROARtipLtLOk4Jrp2EgVNMplXvjrhI8Z4cr8tC56A15
z6x6/8EPbeeWh3+D6kXzsqywgvzpI17NKw6gkAFu4YqxixokAX6s5gVyme6GJRPCs6nDV/9E
zOVHIeXqGc2QOEsikXmOrgXNzyR+/W7vFmMH1fj6+38TlRi7O4s415/EKb+IEIPyGk481+QM
2vb6Fbr7wwNMIpiB74WpNExLUdrLf7jKQbsP7ndBoDTMYlCD0hlom3fq5bndvjWdKXUslv8z
cJcv9SgFVRcphdn8KHEs4ZL1FPgvuggJGD4dhGCznf3P9cqGIPGpo46VYep8L9WrgfQiS71Y
Wc0XepN3fjB4XJdlTdRGMG6pqqqu9IlF3kTwj81Rd5CcgS6rYd7vtKjNy7odqaTbNehg3t5I
03gY+S/PLw/fPn75/fX7J2r5drHYhcEAO1+yU0atbGuFUGPI7E7JhzCpWWT3igACF8BdQOq5
AMWaDLtEuy2fCcIIEz3IZjvNaHsxqz0aksiSpOrf6E8zyhFr6g9CGBBvEZGDWKojtJ4jMMs4
WFCbbEoCb1OBpMnq5+dv30C6Eh+e2NtFyiScrTPc1ZGHn64KLQ6meoWKJxknUc/pOOL/PEa9
BqC2jhB3JNybN6yCfK6fyMCliNXtqcpvuZWmOfB4SGjTOclQXt4xP3HlO2RNFhU+jK32cLVy
dz60MaPtZLQMXytqL1Y+T3mRBuFOLaVs5yoITVuOoDuo3gfuobGK7IL64cc32L00hUjmWXQR
bCdG/bPi0pkfCz2oC3Kgevr0kVR/spovVOJgp/mCIXEOJ9AheZSYfT12Ve5z5pnSm9FsOZOO
xd/oDt+zqp711bv24pw1hyJh3OdGP4iAQuNYGxWuuyANA4vIk8BsGhKjOLK6d15zjREOvZ7E
jiMx2X+ujUegfR6NEQ+MwsY8iHg6mdRugJJ4bH0KIPuMW3UTAI93Pr3gSNlO7WcO+vZYcrxp
Jh672jc+1aGnasFySjY8YGbzkBiZoxqIaRpqk88eTasf9+4oO4x8MssU0S/QsILFNlJKSD1A
lN+syAOfTZoIaBcuKnX7+P31TxBIje1DG+SnU1+e8FUte3CBsGk+tDgXSGa85PvE1N3yieGJ
vyW1sF/+9+OsSzbPL6/GvgaJpJqEsR37llodN5Zi8EOuiAQqwp6UDWgD9P1/ow+nSu1XopJq
5YdPz/+j3q5DPrO6ei77Rstf0oem1KsjydgALzI6TYE43fyNgwVEYSJp7CjOd6TgXuTIKvBc
AHOUEQTOJgXBPe/pkKc638+aHqmuBiqQcEd9E+6oLy+90NEpJUvUnUb//KuIKuL9oI+LGudi
I85aDY2ZMqaJiRdRs56MXKOw1mPup5GjDJjn1zozjq50hr9TxiznkEVIjLgE60vhaiweq9uu
fSU3iaHvTkNDa2Clrn5rN0XSd8KPaWznp6alzLs6NLhFRk3wXxznixxDZMKCQd/Wyv1FPLpy
pUykZ3zJX6FG3kxV1mIRuaAzQ+BuJ1LnrEdTapRivJiRPHNl7/mT77FolwVnSExJYyoD154H
0xDqNlJj8Kmkw4HWpZbGufAmA2V1B1/yP7zx0Up7t4wiSxn5INpafcGwjcO15/EwYqKaJRHK
yFgA67dWqJzfj9eyvp+y60l9RnfOEQQ+lnih50R8ByIlBgOZxSOULnM7XT9F2k6+tBfy4ynp
SLZwWGLXAqBw6ydUpg7D1K1M8aGplPUYxKTrxsaQhyz2lXMwpSUsjJLErmhRyqeiJEscxTbL
Invb2cJoC1k02UkEkHpUKxDyI0pXVTkSYYBDJY6gwP3EINLTdY1S7qpSFP9k0gzNIQj3ai21
hpQYC7PikNjDUox9uZept6wrPFvLUHXuxzSMop36XPOBeZ5PdESRpqn6OIPYGlQ7Dfh5v1WF
SZrvIOTBkTROfH4FiZg6r1ndJIskZJSDocag6JYbvWGer9mR6hDVdp1DGco6kDoAVcBTASYm
DlWPFCTP3XqMycQo71EAQjegrUYaFNN2cQpHQjixSiAicz2P5BHXioMsR9VzyJPY8XkmdAy/
iCfl+pY+/96y6UrH6/Uryzh11KK34MUQ60caGwBr4V7KKnq8Z82B6pVjwkBBoIK3qhzcP56o
ko9JFCQRvVEvPCfyMagFbXIWJDy4a9vVmrSOGB8aqmSAfG+gTe1XHhB7qLMeBfeJQuXF8IXq
rXN1jlmwN4qqQ5OVZI0B6UraFndmwENTsUJZw7oaeWJTf8tDov4ggfTM94mhjHGMslNpZ7Re
ERBpxJIdEWkEkLhSJLZJsgKn9AGRzrO3AAgBICJWMQR8FlEfQEDkHZTGEZKrh4BIKVrnIBc0
lDjIQ2uVIfZistoCY1T0do0j5q7E6U9KDlgSEEspur7LhY8CgtT+8gIIfUcKKuaAAFJiEMlq
pVSSvAtwuyS6eczjaG8HBvHED3jMiOLKy9FnhyZ3TcCmT2C9Cchh1cSU4LzBSUAM0yah5lST
ENMcqOS3rRv+k2kE6uduzTg91Bue/CTfdHcigLBAtSINiMWiSSM/CB1ASE1wAUTEupfzJIiJ
ZQ+B0Cc69jLm8lyvGrRYcyuejzCtyI+OUJLsSWbAAUo1sT5fOuFfTPW8uBlJaYW/awwLbTPt
U+PatYbDODiMTBYOkI32GgO4T0wbIAc/yBLPY74nkFjmbaso05SwGiVUniWICiGpoyocPsi2
dq4AxHhOQrSgGfIwaYhxtiDUWJbYIUiJQTWM45BEZFFNHBNNBsmH+bzgQjcgZOEh4T51Zrpy
QOM49XWqS4YWFbYwAXTdmWilBz4t6Y55sruwnps88sgluelADdlLigyBMynfHbbAEnp74wwZ
HHtF00Us2M39VmUxj/cEyNvIfEaMndvI/YD4Ik88SJLgRAOcFTSQOgG/sMsWADEHBJ0UMCSC
i4fTikdhrRMekYEwdZ74Qjcz9hP9UTodK897qsh8y2e3WV70qSesuKxndGMWNw+qoOEA8vMw
VAfNyWlQHpdElgGtGzUcb/dEvHUy9YLqxKGoWjPN1i0Kg6OiS2DbvBJOjXTJOhOJ6Tdnh7zJ
yBohYN35CfP0//zzy+8iUKgzGOKxsIyBkZblIwflgoxYiTBo5Kod9kLTblwacXovr/vN7LPR
54nnMiYVLOgAIl8ZUt11Nuhc50WuAxg1JPX0HVzQizRKWPNEWQmJDJdDZYum27Ah3TYO2KiO
yGWik017rZUYUEROEdUjxY2onfGLTkfDPIcVCCZDOPLtp1RMFkrsWMDYN3tAUCkZYAa103yk
4YttaOgpziF0CI8epsn4IDPR1F4F1PmxT+lhCJ4r0HyY6BnlNBEETHzfItc2OKRC9l1NHwfV
HcA59XwaIprTARYsg7t0zWiQ3wyxP+kNFoYsedMW+sUkQo9l05HvTCPIeQeqhtGxkhiZGQly
TN6QyBG8Hs8bIxtP3n1KrdjgyDMnCVJ5TGeW0rv7ysBD1ziStyGJ9f2R7NN3bSue0qrThlOi
nEDHGLUXsylAJfV3AS5aq1nTvhyvzmqAkhHBHHI1XrVFUclj5LnTrDZHeppH7hDgBHqJxpi5
umMo88UbXks1VGEST9aSrvM0kRl9QUUf33IYg5RQmh2myPOsrSo7BMyztxE9VxAoXZuMeb2O
tBGjOAdBNN3HIdcOPxGdbcuM/sSrNu7qMMiwbq56NtJSTM0Gb2iYF9HLtrzYIQ/JJZQYi6Vt
P7ZRzW3Evhtaam2YzClkzWhOyYQTVB5TlUsZVY2U+TTV3ogBgaVPFeaXG1ZdnhK8M5JdjRUW
gNgLdwWRp5r5SUAO+boJIufUswz7BFFY0Om028QjozeJY18hk0gjSZI4+7dq9RMCAhlbUzSs
iZjnm0MZqQ4rQQnvrqQCdk0EAEPP+OqmeeBGs7+4aTW40UheNCbUaH17bqQlqS0iLhhIRq7q
b8l9Y5gPI0oXzCRK9wS1UtI8+VfTi9Qlpi9pSWOileh8FGzjkEH+bm09ylsGIhP0Xb/K8BTD
tXHYv2zsGLtn6DCaAZXAYgfh48RVb0gN0mWYDUIthOtn7wpYRAE51BQWQ03REd8ny7QMTDZs
0S92C91GCJWDHH27GdjytYYx8kJRY/HVtdVAGF2xY3aJgiiiZSiDjXNqI9qYdJfOjS4lcbp8
id0i8gpvY6uGOg28iModoNhPWEa1HBbqOCBHH7HSKiBs9gmjv4TAKFFFZeGJT5dq7Kw6EkV0
H80b708+US03nr/BFSeULffGY1vs6FjEY7qilKU8xcTjMHXmwOOY3oZ0LlAHflqMZqVpVlMV
kgwMbwmcmB+Tec5aqiku6BwJef2j8/CULjzvGHQt3aAuCpnrm3ScR5SOrLPEk6PW3ZskdYTC
VbhAKWL7y5OtTW2Y7T9BMeVZGjq8MBSuI5+8/QHYHa/vMNo31ZPdDRa5mNyUBMTdUEpn+NTQ
36XPhu5Q9v3brrqP7TU/D3lflpd7No7VhTZ5VRJL9W63mSi2UDXqx5B7jsWtH5sbqfJvLIPf
dJkrPYIDozU9hStqeBLvT9+hPkXiIWuiBYvYRVcBdEmPvCPQeLgfkuuwgJIL/c1A9YhYHOyv
/qi5+Nq1p47BHA7cWELWSlHr6GoJ9e4n3S7Y2N+ova4UWhjfqYXhikQzoQroyl5TBDVsUfqo
oqWat1vyTXhpE8WuVxhExlLL2M13Vm7ojKVf04zk2wGKQrm0Y3WstCiwJUYiQQzt57WgTiKL
cxKoIqxk31g39UYFQBWonRERZsZD0d9EsJqhrI2nnmd32fcfnxdd5fWvb6pbzlzprBEPB5j1
lmh2yeoWdO+bi2F+jHyHo8/QXcsBDkXvgtZHChy4sP9X+3B1A7WarHTF7/jqrBXw4FYVpQie
bH1SaZWoRWArboftdEsrVMt89jR7/+FrWH/88uePh6/ma5+y1FtYK/Nno+mKskLHr17CV+8q
E8ZH2f6PsSfbbhzH9Vf8NKf63JnT2iU/zIMsybba2kqSHadfdNwpV1VOJ3Fu4ro9NV9/AWrj
Ajr9UIsBkCJBgARJEJAyWfSIflOZpwVbxYoNHyKa1ZknuYUPSwQWMMz6rsBXJlxfqT4JHJ7i
Dik9lpmKvNSzHBTz857lp2Rd7d8TPp1P72cUcja8309XFmXizGJTfFGbUJ//98f5/boI+wgh
ybFK6jRPCpBZITWxrulD1q5vj9fT06I9cF2adBHlIadTqjFUeISBCasWYyGbHo8aEgj1AyMm
cEUsC3jVJCy2BOx+GvQxpN/uIPk+S6jXPWMKZ7UL/ARBJJPqlRCz6/Y6Rk2pTLWnzv0U4XjK
bChBfBjsWaU0OQevWfUlxFiFKfgT9ZUAn1P2P21D2yR0fT6SuADujiATwmLVty0Mfd/wqKuk
sfgaNiaW2qD+NJIox3RytV9b0vHnDCfmBAYHFS35wCQzBtObouaksu739eUs6aWuYMOFO+Qm
mrbi4U42j8sY2luaZqJwnXRRlAqnmyOKxVLQcWNw7ebZ38PpUHQ9bsq7TkC7qEmt+tgobRzQ
2Dcac+BTimGvp7mR7vQ8dbIollnIR4xAxdRzDVc/AtsrZh79ir4LC6hiDGMlvpnIG+bcAAWp
y3JsOZcnuFFZe0hz6gp8ROKTDlkqEIgWjbIuMQTOdLCANP/2HBkNLFLLRLCwRCKvpBZzGCjU
Hoh1XkiUyUCnl4fHp6eTkCNPNGraNmQ3wKxQ+OPL4wXshYcLPhD/5+L17YLJKjFiEsY4en78
j8T4vvntgd1QaBnYxqHv2MrKDuAlWJ8yZ2EO8hzTVRjL4Lwb+iBzTWX3JqysZo1ta64LRwLX
dih3gRmd2VaotC872JYRppFlr+TG7OPQtB1LbQxY07R754y2l4qMVZbf5NVRra4pi/tu1a47
wJJr3N8byT44UNxMhLJBBjO+14cBmQMF8eSzYaetAgwxfBIi960H2xTYCY4U2DMclREDAhVR
P58CTeBYqtYPiJuFV21gKgMDQD7I4wT0PLWFu8aQfPXlaT0LPOgEeaIwjYJvmgoLezAhHewo
1SfdEUaFrVzTUZYLBnYVDQOwbxiEULd3VmBQ93Qjerk0lBFmUIV5CDWVLx+qo21ZSsdhcl1a
7BSXkz8U65Mg9epExTimCQc0KP3RcgPHIHVKknPu2+cXrfr4puXL3WLgwKWl2SQD3fB4TUH7
xoAz/NKmCi7tYElFZBzwuyAwFXVst01gGUJoHYkRHHMen2Hy+b8zJvFjGZAVLu2r2HMMm78D
4RGDw7zwHbXOef36tSd5uAANTHl4QUl+Fuc237W2DV/97Rr6NBVxvbj+eDm/ydWiCQOiaY0j
NAall+inLKNnWJlfzhcMUnt+elXrm3jt2wYxdLlr+eS7iR4tBI4eetyy8JHxcH3OJRXUNKXX
oNPz+e0EH3iB5UPNFzLISdVnGssy+aMRZqHKMnlst6nrErNlmgP/9FMKQyvTMUL5PCsz1Hfk
7yJ0qUw0ALX5bEsz1CYWHYRr7hx7gvJgWCHp9zLiLc8hTBaEk7cdMzpQ2s6grgp1NZ8AuN4Q
YWhfU4y6th7R4nusuZBPtBegLkW7JHrhW/zbhwmKN5TKeg5wj3xVPKN9gyzm3ywWBPzj/hnq
Ee1deqpFi1B1WS0Pph2oYntoPI8P6DQoe7vMDUPhBAPbxNKMCJO805rwVf9qWy3YGuQbiBlv
mhbRvoPBP13gwDZheiHiVvua2rCNKrIJCS7KsjBMhtS30s3LTN2eot3gm5huSm5oHYdRbhFf
6xH0ndBA8ZvrFDd64u68UFnaGFSxjQDqJNFGMcwA7q7CNTG1ypRJGyS7gJ/e6em7z6gOMHVj
OBoGbqBaXuHOt31F6uO7pW8qIotQLyBoA8PvDlHOr5FCS1jb1k+n9+/a1SbG22RbFSt0bSMf
1U5oz/H4D4uf6df3KpUX5Hktl3HibrrdF3OihOjH+/Xy/PjfMx40MgNA2X0zeozmXfHPLHgc
7JFNTGKlxQbCaqYgBQ9LpV7f1GKXQeBrkOyMULjLUtGkizFHlbeWwb8Zk3GeoaufYUnvRZHI
EjdjEtYkc6LwRJ8xkamGtcfIMqxAV/0xcg3yEl8kcgzx1EJo4TGDOjSBEFRCnzqRFsgix2kC
0YoU8Gi2euTTCUVoxHeFPH4dwcrxEV8ZkUXzleHsWxJrKleHPTa5xc11BOahxjmUZ0IQ1I0H
9XzEzXYfLvvFmKynSS3T1TibcmRpuzRt8l0DR1TDJKxe941Dbxtmvdb1+nNuxiYw1KFDYyqk
K0OXQp6ayfgp7v3MTmbXb5eXKxSZQsQzL9H3K+zMT29fFp/eT1fYZzxez78svnKkws1N066M
YEm7gQ14zySVq8cejKXBJVeZgKYgHAPYM03jPzc+hQSUOLOrLFA8/q0PgwVB3NgmUzOKAQ8s
aPz/LK7nN9hXXjFXmcgKrq64Pu7EfoxTdmTFwuUAa2uqUV/WrCIIHN8Sa+uBU0sB9K/m7w1R
dLQck9zcTFjLlj7W2qYlD8DvGQykTfnyzdilNJTu1hSOgMfxtfhQxaOcCP43E+VyqQA94XBt
FiRDZjMuqQbpuDQOkGGI3oVjKUsTdo8d5yeNeVxqax0mi9hU+tOj+vGw6a9S80tfNPRMub6+
Jo8C+iJ/+lFW+INiSLoJs082sGhKXwR1MQyJ9xizO5Rb0fOW2SuTvLaLT39Hk5oKTBlZEhB2
VDpq+eqY92DK7WiSSP5qY9DdWOxTBpvqwJQ1oO+Uo2NYcWxVGQZVciVVRlWxXUnl4nSFrM1X
UtMGcKSAfQQrdSC0ktsN8CVt4XC9CuRS4XppmDopTyJTlgPUQdvz5UGKLVgSZRcUhDqmGPwP
EXWbWQG5T5yxysTEJlPqrIMxOzZh1UWHhDLmhTEapnetGKKWB6rK9NwineM5tE1NZP50bdc2
8Pni8nb9vghht/f4cHr5dXd5O59eFu2sIb9GbP2J24O2kSByliG+I0BwWbsYmEDTRsSasg6s
ItiKmZLwZpu4tW3e6YGDuiStF8qNyTYwPLQ1N2mkQR2iMSHcB65lyVX20A44c7MYXiQrUx5+
7paV4DGH6D7qfhPfnrXEmpdaqQAFDAx1qmIzp2UIu4b5w+Ly/o+PW8OLYYSPrxW+MSPCEY1Y
wUuIq3txeXn6OViPv1ZZJncXQNox7Rc66DUsAdppZ6ZhYZ76vXwSjZ5M4yafJXxn5o5icNnL
4/1vkhQWq63lSvKKsKVCV/ExUyaYwjN88OEYOluNYcXXJjOYfoDM5DOwtAZEtmmCTaZoFwCP
R2WObldgxGonTJiNPM+V7Ov0aLmGe5AWcdxLWcrqhWuALa1U27LeN3YoAsMmKltL8h7ZJllS
JOPYRpfn58vLIgV5fft6ejgvPiWFa1iW+cvNfH/jemEsl4ouV9JWSdz/KNsc1oz2cnl6xyxP
IF/np8vr4uX8l16p432e33frhPyOzmeDVbJ5O71+f3x4p1KYHzYhprmkRo3PrgI/+vxhMUv6
NTcMXW4qmOSOVP5NkYxFMm2SbI3uKfQHu13eDMkjxW8jfL0aUXIDWM3QjLxpu7asyqzc3Hd1
sqZiw2CBNXP9THL0V07559Azsjwkde/tBYuo+LmeIEtClrKrYXH3tb3GDKgd7Jfjbp3WOSYJ
1DOo0rgTIHKT5B2GQ5k4IDFHh8NyzRY9qybslMZluHJdwKxGXyNiBX1qVTDmhDOxEdOkmek5
2i6xBJPHip0KLgPSWpWphuA5XNoVXTN7A6bOuaNe4eO7Mk/ikFQXvhTfksMmkYT+AMyVO15H
YY2Z+LYxmRdvIskOcSPWVoUFS/I7rHTvr0+nn4vq9HJ+krjOCEExoQFJ3YCU8nnCOIJm33S/
GwaIfe5WbleAie8uPYp0VSbdNsXHYZa/jHUU7cE0zLt93hUZWUuMWfpyCjN0VmBUj+kPqbUy
0hMlWRqH3S623da0NavVRLxO0mNadDtoa5fm1iqkN1k8/X1YbLr1PRgBlhOnlhfaRkw3N8VE
8Tv8ZxkEpk4fB9qiKDPMp2v4y9+jkK7wtzjtsha+nCeG5nh3Jt5twzhsYMdr8JeiHD4tNnHa
VFl4D9wyln4s+jZxA5KEMXYka3dQ19Y2He/uA75yRaCh2xh2HaQ1PBUoykOIBZjcmWSDORLP
8y0Nj/KwaFPMOhyuDde/S8iQ6zN5maV5cuyyKMb/FnuQhpKuuKzTBqOtb7uyxVfXy/ADHpRN
jH9AtFrLDfzOtckQY3MB+DtsSswLfzgcTWNt2E5hkKzQvHyjSe/jFNSwzj3fXJofkDCPGoqk
LFZlV69A9mLxPpTTzjBv9qAbjRebXnxbOGfaxN6GFvVJjsSzfzOOvBeXhion2y6RMMPjNlkQ
hEYHPx3XStYGyTOeOgxvf7dcQy06piXpruwc++6wNqlABBwlWEVVl30GearN5ii+H1TIGsP2
D358R96iE9SO3ZpZoq00bUECQK2a1vc1YWh01OSWYKZFJ9IwOjqWE+4qio1tjO6uIHh3zdYm
Gd3W++x+WLH87u7zcRNSZIe0AROtPKKcL/EIlqAB9a8SGLNjVRmuG1m+xdsQ0jrLF1/Vacwn
wuAWwxEjLNXzjmH19vjlm2pzsAy+caMzC6ItsBiDZKFFZUuqMU7rACr6JNACOsN3CaDvWbv0
TGXERez+qFu3cJnuZJdxNO6TTYhZBjBqaFwd8UX3JulWgWsc7G59JxIXd9m8GxAxYMZVbWE7
njLmdRgnXdUEnqVMHBPKkUqBeQl/0sCzFES6NPhQAyPQsh0ZiNbHOJ4S19ptWmBCrcizgTGm
QYaOYYRls01X4eAf60k9kLDOTax/ExsoTRTwpCM4I4MlZV05pjJhAaIpPBdGikxkN5atYtNq
DNMVG9c/XIQ5ISyOnu24cuU83qfDfAhkcXWzBo9MMDFuEdAT1VUln0Pd2D8xxcy3cRW4ohuH
XrWFHtRRtdnLn86PzVqzdZ7ND3wlx96efd6n9a4ZzyDWb6fn8+KPH1+/woYmlp1VYK8b5TFG
yZ8nJ4CxN7P3PGger3F/yXabQqmYDxuJNcOfdZplNcwyCiIqq3uoJVQQsHfYJKssFYs0sAEm
60IEWRci6LrWZZ2km6JLijgNC6ELq7LdzvBpEBAD//QIcn0DCvhMCzOASiT1At+E8c2JkzUY
a0nc8TFJkfiwCQU/MGxFGO2ydLMVO4SZxYZ9dyNUgfs57H6bFlNCc0Egvp/evvx1eiMCmOJo
pHW9FzZbAKxy+rIe6e/B6rTonQeg94ekEYeohNUUH9WJ/GjMuI9SyQOLQwpsJUDiw9sZLL2s
nREzC8UBrtMDFdQAJdLn1wvkN0vnKDGmB8J6lWVJAUskXddIdd+06ed9IrVhwFKm3owV3Kax
4bCqiSl7J6A2FulMMbHjAzp9Kro1Hsremxb9kKnH6lANvQVHTHgA3dWoUSpJTNp0tnjZMELJ
GO8oDEkJc0MqcnJ3X5cCwI7X8jAjCEzSKKHvAkYKOmAtYA9lGZelKXzm0ILlYQugFuwImNEF
WFjvhN9VLpaJwjpPi0Rq8ACFxSLMu+QgRogeyASaaN+0fKxn1IBV3m2OreMaoiJMSayE3vQB
z2T1SNDsL3PNkOLFkCXp/ABjz5o3cSTryoC9IeJNg1ehlKMfInPfFOx3cqVkU+bq9PDn0+O3
79fFPxZZFI/hCpTABHhOEGVh0+DDyjTi1lTEqLnEJ90TS3GMmyl2bWy51G5pJqnucrrs56jM
u7tMk4xppusjddz8BpFmWkAGgSbvokDjaypg4cTIBEYSzZJiYgZGF5+wjuNMWMSlGFx6Ro4R
WT5gTh/z7mbTxPhsXMMOwDI/q+jvr2LPJIWU+3YdHaOi0DBNHtdBnj+Q2vErYGU0YDly577M
E5m2KfAompPqclOKvzp2SgYGSSFEA+VQ8DmT2iBwJFG2by3L4V3Elaulue6m3BdUGOd9AwbG
FqYOwS7jW4UU+nAJOe+BUt3VTfK5SxDIDcIAVk+ex7bhi+99KIWNyaNOvpriHpH378i3l/fr
IpovCWPlcTTUItk4CGpi6PI8lBOow9APsGo1TcmP54yvopTvGSLqNCq3+D+aO2PBrF3nctEe
Va5BcsNGYzKLdEqyOJKq5c8oBVR8F+XNNqKwQzQDCrXGf8UjyxkJptwqCfca4ejCLOLPTtiw
puscCov8jVa+4KUNoAMLpiNIGBvPO/n3wF0Zusr2yTpNsljBJMf7omzEVuEVUmr7yyA6WIah
FNnZsnTidyM6fQ6i98Ce1KvLjPQgxx5/VoRw23xWdGA4cZA+xVHk7Y4atGNSiPYuJwh0ZJeZ
IMw9Pj1mnuRgiEc7obYBppq8Q9iC58vbz+b6+PAnHYllKL0vGgywAbubvWj0KLXodV2tlUlY
Tt0UTCS/5WkEplZnB0e1o13t8uEPi+QO1w9uRsBfvTnC82SGdmv4mwzVP5Pk+wy+VWa8ejD0
qsYVq4BZqNve4U1+sUkmHzVcx5RtKCsWFrZhuctQaVGIKY4oo6j/WpR7tvgIYoa7lPscQ7Pg
04bUcga0VKCQ/G0CLvkjQwYVTYOeECOeOwTQtZQmZ5VLh8cdsS4LjZkLmdwmHJ/Sbgba1Fdc
j97eD/jAJa8MRmzgyXzDoJKCUcZDlYTxE9LTpNlgBEMYa7RayPxgE5GrtEa0kBlsiienFaPY
EuKV9p1tbXdpS8DZOOahQ1xSCdpGIUYjVJrTZpG7pF2U+9rGvBCqfDK3J7G2KV+CnptpY5vr
zDaX2k8OFP32TFJV5qv2x9Pjy5+fzF8WYFEt6s1qMZikP17Qn6J5PT+gd902nfR78Ql+sFPx
Tf6LpOwrMAJ36jDl2RFGStdEjJotM5hlB9AoBeqoTwDxOfYz/7wPYza0l7eH79L0NLGhfXv8
9k2dsmD/vtlIgXx4BDRPFwtcICthstyW9OGMQJi3mtwqPNE2AVsUbBrKpBEI+XNGuqqoovNt
CERh1KaHVDz+oejEfEwCKk7WISwnHRtDxvXH1yt6Cb8vrj3rZ0krztevj09X9Ny5vHx9/Lb4
hCN0Pb19O19lMZvGoQ6LBg/PtSPVx1z8uLOwyUwpU1kgKpJWiNon1YC5wQsNVsmxIPZD5PIk
nyvUTd6UmJWMaGu/RUhX6JxyPy7MoMCnP3+8IlPfL0+wg3w9nx++C49OaYqx1iQOIyqAJsJJ
vtZt1JsS9F0yJoXCkxLVjRhQq/1aDWXY3BcR3h/w6cDuGJS7lGVlYe96SJQLkAE3brj4piB8
9DYkPTh6ElC9qiGKMjheDLSyd994cSR2aRqp/XG4yJ1bia6RsNPnt+uO4wfGOAnK8BmQ5ht0
aE1TPKni5sUotgQ7sL9t6g03WFyahj6jHRoCYgZbMyH3HY+ht4Uchc7UxBNGKsBb3YoK0kNw
EaTnqkNcUWdNB5aiDksJlTEo6K+2BFjdYNj25wygZpswmlQof3x4u7xfvl4X25+v57d/HRbf
WKBL3lN2CnZym3T85qZO7ld7Pj5dG25SPgdhhI6JqfxbPjWYoP08y8Q5/T3pdqt/W4YT3CAD
U4SnNCTSPG0idZQG5KosYgWIKjQL3wCswlqeNwZM2oRj/bQkDRXAto8gE4kCi08VwwG7JlTg
u/5fvJwb3VzTcvF+PX17fPkmGwnhw8MZdnWX5/MUE3D0DhUxPfXL6enyjTlrDw8UYE6F6pSy
t+j4mkb0H4//+vL4du7ToQh1jhNK3Pq2GOR+AKlH7GIjPvrEEKPn9fQAZC8YCFbTu+mzvinm
VgWI73hkGz6ud/CswYZNrz6any/X7+f3R4GnWhpGBMbFX5e3P1mnf/73/PbPRfr8ev7CPhyR
vYANgs0fYv7NGgap+X/WrqW5cSRH3+dXOPo0G9G9rbelQx9SSUpiixRpJmXJvjBctrpK0bbk
sOyYrvn1A2TyAZCgq2djL+USAOb7AWQiP7zDKIIvD29fv1/ZEYJjK9A0A/96Oh7xdrKk7g7r
TNXh7B1g90al/ofD70eSlV+1MC/4HQyLke5WMPfwmy7siIxxH6f0sp4Qcw9RWETOfTqcsHAD
lDnf3tO9jaf4CTaSEwmjcChgXhFm+sM01K2Z+Hd+5ayhTk9v5+MTn+iORA68i1aaxyqVdf6l
yRfJUs3jWNqstpsA1A2T0NAsxWaS4ydpzKyvktV9SVxJiAFma26coFlR90XJSeKdL5QlVbs2
8TaYp82ATVXhre+Vh68lWorh8uHy5+GdufCXVwucU2a4D8Jc7QP0OlnQS2E8dcXMUIsnrbSK
8JgKiwHlEE8ldugUXydkfxZPSkL/1g9/m7qS+hYc25rSxZaPk+xyOFztjvCJZbSOyaqL2O9N
Sp4ECTn6XinQbnW4JntauLbvTOJ4vU2IilgI5knqw1Dx2SYIymQjkYomwP0TZhkZRt6IidRs
NB2LyZtgPBz1O1njPlMgCIvC/3DOqJPD7ykJT3vav+79oBooNBvI1dD26RlY0XJNXJgPsVgw
KPHv0t80VKJSoIq81KUUlYKfRIWhUjv51RERudWSlwURKGPDyY1Z4N1HIj6v64kFqG+suhUV
xqd4f1DiQ2umxK92Jgk20ELr1gqhn8+Pf16Z88ebFM/ZHteAMVN3l6MkaTyncwMyzRyLXXfg
iTy6vcJszCajuazJSAWozu9VEM5jggdQIVFHKxICU2EMCpVH85ie/btvS/W62Opfzu8HxNxt
1zX1ozjzoWbEOK5pMKx9Bu0sJOWyeH25fJWuSNIkMkvnlLDEcwgkyMcAVtBZcWKT8SwqNQJv
hHdBWrlVQ5uennag3REHSMeI9dU/zffL++HlKj5d6W/H1//Bw4vH4x/HR3IP4zbnF1B2gWzO
mtWq3KgFtvMeeTs/PD2eX7o+FPlO5dwnvy7eDofL4wPsCDfnt+CmK5EfibqTs/+N9l0JtHh0
MwqP7wfHnX8cn/GorWqk9o1NkPlknNqf0CWaRud4aXC389RfWrPzt1FdpL+fuS3rzcfDMzRj
ZzuL/HrM4O1tOWD2x+fj6a+uhCRudRL2t0ZUNYltDI9F6t9ULwDcz6vlGQRPZz5xCibs7bel
vzmY0X6kRAcIKp34KS4Wil2DMwHUwQzs+TK7ikpJjsTo18qY4LZ691xWQrjIrGucg9KzkfRT
f59pe1jlRuBf72BYFBO37QbhhMHw0fnvTLksGPxkuSC24+/VjOGQHgQU9CKqcFM8yTbjhqVa
cNJsOrseSodLhYCJxizWXEFGlxR+VVgzYIDCv0PufIUxJlLpfD2g9YYfeGKzoGp2Tcv1XCR7
keqi+5sl8xknXLzYLSKX1rVA/ho1aZTinxUH2KABSCV0/10Y8ZuWqM3V4GivRAZUxOxannkF
uU6xalpeuNZo7TrcqUzxfTgcjTscQS33mvR/QeDezPNIOVz62usrUqOejCwyjzSMxU9cUz01
6ICY89SwI6YcdHXq9Saf8DqA0JAnmr+2vTNXzHyIFhYfJRUP31uU/Crd9d540lPR9V7/js90
KTKfHg6GzNtFXY/G5OFJQeD+1EicTPhn0xHFMwLCbDzut+NWO7rofYIccgEcWWhFGpp6ryeD
MXv2YrI12FHyZTzy5qoZqvH/fqpYjcHr3qyfkiYCyoB6XMHvSW/S/J0HC4xXjO+rYHcPGXs2
29PfgTVfFH0o4uIC54o7+CJ1OkWqZBMgFFOvz9PBCL4w/pcJo/obMK3jBIMtZY3Hbqv9NTWx
go1Cd2L2dZjpwYgHqrWkqQytbXkzEVgUdpzhhI5OMHEnNPtIJ8PRYMDXdi+wb5pdaM+Oxoj8
TX7fd21Fv96oLcZZFb5wu1mzpYxnd9Eo9qqQ2JWlg5zetM/St1QDc06y/ZAZwVbaaM8yXHzk
erumTpBaFqg+UVtM+l3VLuy7fTlu/ttzcYuRAiomxRHC9Sf1jVahL6RJvijsgddn0OrYFFpF
ejQYs49rKbc9fDu8HB/xeNnCHdPpl4XQK8kqN/7G0PZ3DP8+bnHmkc/g1t3vYhOpjWVtpqLn
cqBuqtB45SjQ3rBn1zbJnRWyD1J8Y2aWCV1bTWLYCez9dMaCsbcqbZtidXwqCPac2KHlUEVb
FqC9hVGVbJuYotLOrDNJ+V070Tazsf3wBGVe0WwcSQojfNiRIi+u4x59sYlR1vneDpTRSDpS
AsZ4NkCnDOOzBMazYdpIYTJrXdeU62MSZ7BIsgnmmdFIfIsaTQZDipcGy9WYIizi7+mALYyw
gI2uxYeVsBhAvuMxxXJ2U7ssTiPsndiS1T3b08fLS4k8xOeugy7yb5cU7MD2nDOWLL+b43S8
hqrJBCoNlV1wsAIVb+wwkOHp8Xt1ifRv9HryPFPgipETpyXexjy8n99+9Y6IQ/blA+/P6Ij9
VM4KJt8eLodfQhA7PF2F5/Pr1T8hH8RKK8txIeWgaf+3X9aPZT6tIZsYX7+/nS+P59fD1aVa
84jauuyLT0YWe2UGiCxI32hVtEJrq0dfsh32xr2OsV/M3uVdGhc6ZXNiW1atclIzIFuCzSXr
Wt01dAvc4eH5/RtZ6Uvq2/tV+vB+uIrOp+M73wQW/mjUG7GZNuz1G8jRjiZDgYnJEyYtkSvP
x8vx6fj+nfROWZhoMGRPtVdZn8zhFd6SUahEIAwcInl94JqZQUdsglW27eCY4Lon4s8hY8CC
+rQK75YJmCrv6HP4cni4fLy5KDwf0BikcvMo6NObQfe78bpyH5vpNfWZLyl8d1hHew43H2xu
80BHo8Gk1xqTTAjG7UQYt8wIheEZmmjiGTmQ2ieVdV5g9g2QMPWU97uXGzmuvPK2+z4Dw1WI
5c03rHCIYebEcqvEM7Oh+BTYsmYcPl+Z66EM3zlf9a9pcAH8PWXf6gg+ncojCXlD2YgC1nAg
+Y4DY0KNM/w9oSFelslAJT3qEuwo0Ba9Hj3duDGTAVgpITNhK/XChINZry+/muVCA8lX3bL6
9Hrpd6P6DH4+TdLemGI+hlk65igu4S106kiLDwrUfjRi+IgFhQBLbmLVd7ioVYpxkg3l8CwJ
FG/QQyaxOoJ+f0jsIvw9IksOmLrDIX0+A5NhexuYAZMpSHzyZtoMR32GWmVJ15JNVDZ4Bq06
nhBb3RKmDcL1NTPUgDQai+Eatmbcnw4YAtit3oQj+ZG8Yw1Zc976kbWOZAc2y7zuYIaT/lTK
5h66CDqiT1Uvvkg4n7WHr6fDuztHEJeP9XR2LSmPlkFPEda92YwDahSHVZFadr9RB+ZQRnGP
Ij0cD+ij/GKZtOnJG3yZVZNddjxYbuPpiPRzg8HHVslMoyFDheZ0/s2ditRKwR8zHjLwQbGh
/1Gh878+H5pBTa3ps5W3A/ZNsRs+Ph9PQkdWG4jAtwKlc/vVL1cuRsDz+XTgOvcqdReh5QEq
6xIbYzfdJpnMztClBP1CZLa5MwtDWFWB5WIVm90J9B8XavH09eMZ/v96vhytS1pLv7EL9ChP
YsOnwo+TYPrt6/kdttxjfQhcm2MDFtTA9DHACTOqRhzcG42oxp5AOLDG0KUhS8JOLbCjbGK5
oQ2pYhRGyazf47ET5U+c7YEBCEHtENTHedKb9KIl1bGSAT+vwN9cl/LCFaxpxDnUSwzbAVYJ
jxIT6ATj4IgLRRL2qQLrfjdOfJNwiEL0ut6MJ3KUGGAM2ZudYnVJUt9Ie2g2HvXY88pVMuhN
5PXuPlGgq8hejq1GrjW7E/rWCbO6zSy66/zX8QU1ZhzgTzb2x6PQeVa9GNN4boicmdob2/yW
YUZH836XkpUEGxk0JF2gS6d4PGnSRY8ERTT72ZBCPsLvMVVKUJzF+8FddAjKmLTBhuNh2NtX
xmPVup+2yf+vb6RbWA8vr2jNi/PGLks9BYumHxHQuyjcz3qTPmkaR+HB67IIVFPpFMkyrqke
c2do99rfA4/OeqmU5IA5m8t6R+R3uMDh8zvypD5yKzwtPRJbz24JT2WRH+arUHu6+ZivZmda
AsuySe90M7eFCfNFJvufIL/ojI4E7RtOojQgzb5fpN5rtqbOhalR3mwnobEUHHypU/mXpzcW
jbiNOQIcdCyidlq+COjDcuWhSxDIEcMgMPoWd2dNNW/nThUG7EC9lXOVcaL0Gjua6XXokwob
kw4G4oJs/DSAAgZJrDNFbopg+fQz6iFCesnx5qmOTDYvzuflNcUKBhb4cLkTcncCiFR3Z3T9
oAz9Rc3Hl4v12iA+lf4GSqvRnZTYfjWxgCZ07LoFNCJCbxTe2A+arqh158PnBSxBnsVpKntC
UKlmPpRnAtCyZDucianwVnKxQxmcBkG0n0Y3WHAydm09935IavtCmcle5YPpJspXhqIpMRY2
BRv6wIy1H8Z4oJ56vpH3PNYtVcLoqKIVGfBellCEBD3nCtW8C2AAOGGiq0FwePvj/PZiF/4X
d24mvc75TKwaZoqtaVB7ZiW1PL3Libvx0jiQsVwqL/Cyzoq4WG1gxY1ojpbgFleh4o6bRhaC
3J0A7q7e3x4era7QXF9MxpKGn+jzmMV4GxFIZ621BKLdkchwyHAn8Ixk4m0KgxMoJmbv82pe
9WyV2vwVd5Gliro1uQUgI77QJcWCnLSpy2zV/hpykFKIDENnrFPOZLyMSkDATyuPMNutX3+P
fvxiwgsR/NUiLyShv68R+Ik92HbWAyMSzJTl9WzAgtggGd2QZLscAX6iDo9MKbdq6kZ5nCR0
x6FeqvgLt5OG/5MJg4g/cwOCcx7VWRryLkq1w7Rlx4PxFjlyVWKTidVouJu5S50jvmy1qxEN
96pQLwadGEzVRKWGeiUhKTYIOqpJQf09vmdbsH2zpOVz9E2GZpImLr5fRe/uNXvlh95/eF9/
1+SToZLD+p/eJQgP2jGYEP9ffqi9MK3HsBWBDHNLsn6Ccg7KSQgZ3GzjjDia2Z/4ztK6Btte
XTDHwyRFH2sntlPpplFbx+hSIh03S32S4M0iyvJbcijpCINGmXRGOlFts3hhRvmCuC85GiMt
oEEYQW8N0wKLJ6riQo2xQRComX5f00Cb8QKEQ83hT10wSUCFO2WRR8Mw3rGz2lo42Hi+jLlB
hBD/3lbz09Ii1p9CTNZyCdIPj984hvUClDi9kmPMFNJuV74cPp7OV3/A1KtnXq1HoDu62HTO
UX0VhF7qk0djaz/dUF/C0v4oOzDVq3yFrjHBEgMFgJqnluzlC/5xXUxUZKGQZInBV7A4M90T
b/m5BYz2XZyuu+RKqZAMBPhRPsb97afj5Tydjme/9H+ibITfxgrko+E1/7DiXHdz6Aku40zp
k70GZ9DJ6U6tqwQOTKZuI86T73saQtLxQkNk+EkecsCZhpB0T9kQmXTWcNbBmQ0nneWaNR3/
5AR+WPfZaNZdd/FgH0UCE+NQy6cdJe8Pxt3dBszufrP4A53cMl/pWI7yGyOwJA9l8qhZ1JIh
O/hRCemMhfKvu5KWPWZZHaVrSSYwkqvTb8yydRxM87RZEEvddmQRKZ2nMSgVPCUkg8WWURuv
psMmvaXQuRUnjVUWiGndpUEYSqktlS/TYc9et8kBlAo0IIGx2VLcb1Y3sUjZNl07LFvWWtts
IZ3HbzcBDmtm6DlSvsGXFmFw7+DYpUhktRsN1Smd79rh8eMNjyJbGCZr/47Zlfgb9vibrY/Y
E+3ttNwK/dQEsKWAzgRfgO60lPegLN2ClGeTFepbaJCFQN168Cv3Vgjlndr6sqs1vUWlMvci
39jTlywNuHJeiohHRY5FN2j7KNXGf9tAQVDZRDUjtwHUuM9qS+gTFiinYWifJtOD+pYUrmAm
EaHdEYos0FYUcVObAdJENqL9rH776dfLl+Pp14/L4e3l/HT4xUUeq7bxEm6jbkpFjuxCE/32
EzqHPZ3/dfr5+8PLw8/P54en1+Pp58vDHwco4PHp5+Pp/fAVR9TPX17/+MkNsvXh7XR4tujv
B3tFUA+2f9TohFfH0xEdS47/fihc0ko9SFstCRVBsH9SmGpB1gYvEqXu/ZS+S0EStA6YPJt4
43OLomJB75Spd9jYTBSzkPwlUAqfCuFgobBSzUxBZgFrDRGRLV25jUp2dxNXjqjNmV41HE60
uFKe376/vp+vHs9vhzo0HekLKwy1WqqEYr1Q8qBN95UnEtuiZq2DZEWHc4PR/gS6fSUS26Ip
A6ypaKJgpe++NAveWRLVVfh1krSl1/R0okxBx5EgCpuIWgrpFvT2BxyhjktjSB41B+PdYki1
Pl0u+oNptA1bjM02lInsRqigJ/av5O/k+PaPMCi22crfaCHBjvCaBbd6IebsuI8vz8fHX/48
fL96tOP5KwI6f28N45RGiChoXnss+Vq3xHztsb27Iqeeka5vylEcSY0Fq+2tPxiP+0xZcye3
H+/f8A788eH98HTln2x90DfgX0cMbn25nB+PluU9vD+0KqhpVMOyf3XUqqFewYauBr0kDu+s
h1W7ZspfBqYr7EJZO/8mkCJGV42zUrDm3ZYHwXPraYwb0aVd8rk0CLQYmKZkZu0JojMjdN28
JRemO6HO8WfZJa6InLgXJhToLLtUJa1ybFakuRuNjaBe2bbdeQiXd1sO8xVCRpbN12qqSImP
mYrlMVJC4bFGzRxvI1XdWnjHr4fLe7uvUj0ctJOz5HYm+2K9bhZ4Hqq1P5AveZmIiKtVZZn1
e16waK9q4i7R2QGRN2ovtt5YKHYUwKi2F1afNHcaecz7t5wvK9VvZQPEwXgikcd9Yb9cqWE7
3WgolNTgOeRcRM0pJHbJuF8FZ9fH12/s9L5aCIyQOFDzjkuJUmKznQcd+B+FRKqlc4Cq8+Md
B51pMGrcwdZcUJEP5t8n67JWaNU0wFsJrz1CkDoR1ozG/SJnLuzfVlrrlbpXXjuLYlVu96/v
e0LWsOcn8tVuNS7aozrzlbTb7mJs0tZ2pM8vr+gcxBX0suaLECM7tFML7+W7nYI9HUmnR9W3
7TIDbSVtD/eGw9I6V5qH09P55Wrz8fLl8Fa+a5HKj8isuU5QR2wpBel86SAaRU6xmraGguXJ
oJJURNq4kNHK7PcAzRIf3RaoiUl0vtyp5c2SlKxWaToFS3W7u+iVaMpvRAQ2TJbb5G9li0bB
38jS31gFNp7jJW7mt1dFMIHbGzFWHoyuRdPYeT5+ecPw8m/nj/fjSVBGwmBeLHtterEnla4a
n8mIPDfJP/3cicisSnP8PIVKTGR7HXUrt0dQlBEspf+ZyGfZV9tsd+2I7ikJdWyKq5007fzb
wjULFPfPRl0tiMn3RvLVNxHeBDYkmt5sEAH/R9JtJKG2DAZt2Gv6ip0wtWYXh7TUEYaX1Ply
H3Y1QC3xSTA1Ze4iDJUFgniylt0l7dgRGt/7/GENkIvFX78cv56cl97jt8Pjn8fTV6p+ugsl
HPKI6W2qY0D58u1vpF1Wfx5sVHrn7mMX5QwOO6cuRplUaZ4idjAZ3ehGxi6059CnPqK1kpYu
3a42fpZvsyDkCk+ceqKuByWLfDCIozmDoHUHlSpsJ5/YQDmRYscAGrodlnk6IHR/wiXaOq7O
g2yb86+48g0/q8NhrjtYThhof37XZd0REfmWqhBR6Q40AHHIIx/amg9XPZEVPs32fH1NDiGD
edvc0NP6V2VflEN86wVZe3VKMUZXRNukYt3jggPbRKHMUGqt4pTFuR+h2mgdshl1pWU6JNGm
o94iMvb3SG7+zvfTSYtmPdWStmygJqMWUaWRRMtWMHhbDMTubKc717+3aLwd6wrl8/uAnmoR
zv5eJGOLtCeMcPIOK6SXgxYQM8RxSsW7BDqBGA+ypLy5Jr5Z8MP6iWUWaySiN/fGxDqAeX3r
Q7Olih33G5zTftQkocdNzuY60hno0QZLBhQUy12UNO4sgDzleWme5ZORm0xl00XohKJDlaJv
28oqiZy7iTclAyFiEs5FpUqCm68ZuRFDwhelnUMjgxacEpBOswxdh7Epn2wjZdaI026P0KXZ
n2zBXmYFvKGLZxjP+S+6rJUtCbOUKdXhfZ6pOS1JkN6gXiJ5REdJAbZdrzkLjzTnIoY2LAMM
vDDq9C86nCwJbySghM5PrGBsXeQDxNPSVJO3vWwbZqco4KkleX4SZw2a02lhR0LsqR51nMQ9
9/PbwNbe2ZxuQZz6rCNKhlsKrWNnYGwn72rn8eoq4j+VHcly2zb0V3Lsoc3EbiY95UCRlMVw
gUSClnLiuI7G40nteiy508/vWwASy4OSHjJJgEcI21vxFisaUOvL6+Pz+TtHPDwdT+4bkONg
A6y9pnyW8tsi9+eY90dUTNipEzMDU47b2YL/RxJiN1al/vxxPnmuMRCPMENgymI7kaLkeggL
wnztsrbKLwhcHkQy8cnXdqWA205l3wO4lwUPP4M/ILCs1ODljUnu8Ky4P/51/O38+GRkqxOB
3nP7q3Qe/GuoMEmOekASS/KI48T93tXbAolEl+CEA1IPWh4pcAAlAmxKDCNANzG45SKOGpoE
WIWv3m01tJnOHbYf9tBMJ9U1/oHRKGtFjr1jx59kDZbr/v1asv0Sgu4zQGte/1aRy6BbB9tt
T/3WvsxqyhsX1bWxgvHPHhedFxk1Hu8t6hXHP98eKAl69Xw6v75hiL5f3w1rEaOk3u+SW+tH
ytg2RvYpOJMYDJ+YCLJFf9gLP2IGNO+xM2ckxgpbXd8Uq1T7tDtgBsBt7RBFA794LSDcRnVq
7NnZFVUSceoEGVVV8bvrQjZPj6uo6qRN9/0zJ+PvCXoNlk2I8+jYZymseQueB1uUHnJ7Kg8a
Myf5llAeBfuJJ0vqC36r9p37zEhtcJcHFfq9LuMBNq9TmEIiDkHuD+GK1OpLmWvhlpmOBPMS
QfEFPXnJLBBFDg+JaUzoEZnq6/ORSFKqHzAZpRbj+52CMkYry1KuHJLZjCsLLDsdEARZtYRl
ElqYywM8uQHiEs7hR+0oicBBq4bT4l59+vDhQwLSl7SCztmLYb1O/hS5aAy5W17BUHOSaMaB
vWCXtecblNips+yKCf4rCo7BjbuFBd1o3PL4it22ydvSqbYdsUyf711ksJDyn5LjRthlqDlK
w64xjb1SaixLK5jIuBevHkprnQKoSmORG5TyWRMMPUAWrA8XNWwqn57zmx3Cv1N/v5x+fYeJ
l95emJNs7p4fTi7l6IAlAPdTauuZS5xmjD4YHTMgdyJaqVF/dqVPtdZIbMftnAhR3G/smjYj
LF2DUuDuKN+iuWv+kavr+VqiJEaKmQNGM3LUuRTIvJJ5yvsdsHWQEwrxfQzv/MQrciN5L+8t
O9gB8/72RnVWHXK9eOUI3eG54trrsgyDm9n+hS/oC1f55fTy+Iyv6jChp7fz8d8j/ON4vn//
/r1bkU7ZcrNU2UMolbbtsSyZCe4QCRKNgQQpiUio7o66PJQRFtmk+BF2yeD7PfcAEVR7cmOL
8LnfD7ITu6l4odhZy00xj22gUcVjmY7kYJlWKMEPTZn6GjeV3lCkOm3+DgJm6LEvI++W5V7O
ixe44Uwg195AnsI9FPxL+6zSF8LC/s9F8vcDiM66yW780mB5zWFycxuJ3+gvN3b4egkEnS1w
8Q7WzC8vcH0DAUQa+MkQW6wZLb+zyPXt7nz3DmWtezQrOxTPnFfl75ch5qGY6N9fQRKieKNK
LvrFfH0qMp2hyocZSqx05hGSxIz9H8972L1OVxlZpfmFMx8lYTC4Elb3AlmGco5GVwV7fngf
EQgEPmcIYcEIhLyQlLeZdl9fBb+FNyT5I+VuuKBH0yrIv3e66SkdMHBWJUez+tsT0Jad0ch6
4t6OLY7SxMDInpfvraMmXu6FWW03CRhqnVoSF2Ez8UEhAMGIcdo6hCRd0kEv/jz3KSiZe8KU
5pRhkuCDSn0gph70NOwr1IzDSUbw1uyTAHQYiNWBA+RHPoy3IB46uZupjVxiuiwA8CoMZJIk
DJYZ42+BZIGIsjY9ssBNQmcMYE9p32RamhUfjjm/lOs7fjUNHUiKG7Fm1gpoIxyMWVnkrGzb
sw6oToZO8vxBGNkegsOFkgCthkvFZaKspNZiFbbL0MPXTm+iVt4Uvo1V98UzhS5X3DMiL5i+
XOwFIL2v8CtZQyZpXLMIZ86IEQ//GvshFap6k2O9CbOB64hiBacePSXZDp0BWd0GlHjBzp+B
IBHU3isR78NBxC2cA4gJH4uy0Zkc0ViWLbCpfsdWzkDrc44ZqUPQ696kpdvV6DLMcivfVkPV
2bwcsfbXx9P9Px6zc23O+ng6o/SCMniOJU3uHpz8YfXY+e+P1MCMQAzr5P5w8txaHmgNaUbJ
YETEkyKgFRrQ0Kt6gxrBVQzJXQDq3DVSmdyO5cZnVTM0mWTQxC424wTycTCcENlCn65Hr/5O
+JVkSzTfdcmlYn/b5jbaKD36Imgitnuml9kYUAMGRxo36NmI2Pzp1nuhQnhJpAFeTRwMJsRF
I/16vU1daMmowJoj+kEM3msRtbdVRxWZ3fd4xnOATZJomj5G5/jEYjXvBdKhmAis0P0zKbG5
j6Lhp2TKRrJ6aQRjAwvdC1hb+vTxkv5CS96Uh2JsPY2Kt4JfsjiKSUx6ZqAG7yWNWmto1m4Z
M2o1HiT+Uawq3QoHMY5hihS390CPv6k5YYj6mkPg3eYen+zYLhX+WsJXkPqAagdTbuo2XgRa
b/xGcpojzA2At9EeoM/ORpGN8tZ52Ky6Aod2+HM48XXVt6DhSbwRPqQqlob8ujmYOKGKQ2Ud
/jLkuvEJsEU08ikSvvEcfsLizm2B3QmKDlMcUteat5Bf+iIs5UC7RAgjY3jZ5iAoboOdJsJV
efthwYVWig+jeEAnPVvZzsvwY8BkJhgFivHr7H/QliJjPIMBAA==

--n8g4imXOkfNTN/H1--
