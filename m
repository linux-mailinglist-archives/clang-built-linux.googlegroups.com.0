Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBR5IW37QKGQEULR6JBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A022E7ED6
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 10:05:12 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id x14sf17349383ilg.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 01:05:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609405512; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ycm0hlDOv6LphX5OdCZ/moNy2OKlPI8ZMFar8KHhn3znHC33qc7+EkHTQnLiOE3whL
         FxcC5BffDTB9NaCX8pfkPNiUb+/x13DRFaw/esGQTc3cZQzzbNTZG51he5KbGWYYffPj
         ZU1Qm5eipeLAsOH4qPtz+13BGnZhbtmWRFf4bgMUOCroQ8TW9auQs84rs7Q0HMQ6j4y7
         DkGbAJnJ9FXdvcOV4vcGPUH1kp4SwN2ZXVY5S5egpwLEEmkbO0pqzp4mNwDyFOQYKQxQ
         S9/gUnpG72m8dw9BVDzcEERBMd9W0y50uYSJY2O/aaRikaI6mtwRweZJ71G0gymI3ozZ
         JUFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=K9GklSgK/dTf3LPATFQTNL5hzTrbNcqO8uq3Jm3A8fs=;
        b=YqmKF2PjEmZFXS1McucNH0kEIpQhRx+nLuBA2/ddOHc3ne5CgM6/E5JJbydUfLH5uB
         +nc5XdxIZZO6BDpAOqzptgJ+qLphs9wNjEkHNbWYYdfKZW4yOqxxZ9NK51mGMsyKiT7e
         NU9BN971hmbXYPr7oTnI2G4Nr48/sSPLhgPPokoXdZk9yrvWoFtWBgX4+zgBxaxJyXEe
         K5VK7I1R86tsMj1PZl0bZnCwoKbuIjY6qYiwM2lRQgXjdv9DuyTDj1xEo26wkkjSLUO/
         vEnCN6snyv1yDtt9H4N8Njbbe3echqpbZQyy/0LWRUV86mtCbxnyS3jpR5FXE1JBHe7L
         adnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K9GklSgK/dTf3LPATFQTNL5hzTrbNcqO8uq3Jm3A8fs=;
        b=taCtaHEcLo/WvbDU+0IVx73U0mVJYUSjlk5C9Fa0QqWfdOw8afvX5GR+W2kjWl2E7m
         7HeTR0saIjexvhP4u282vwkqAaCEauIfBPP8Bba/Y7a5pwyTpoF5NHQJu5GnlozWGlDS
         jyr7zIF2W2KaiW6ZHqhI3pYR7i8iXmfU7U7qT+biUlvHs1ermsXejGosmJYoB/eDGuaL
         xPYZEFprJBnIhFY57jDtujwRxI+/YMiz/HoXA4vtXjUsRT39iqPNrh0Ybi7PdlTAqHVa
         iiCkufuxUXCckbv80Ps4iZ/Pc16k24ZFr/PmslONtzPt7SdY5h6AjpSBd1iY7yD+qPN7
         wqOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K9GklSgK/dTf3LPATFQTNL5hzTrbNcqO8uq3Jm3A8fs=;
        b=cEvk0Cg+XqCwQ474uMLf2pRlSD9c78NriLtcEtOn5eshE+VcSehPBhMJO5YbaJX+pt
         WWdqy0wbo58u3tR7DVCWLHuZw55QuqkdBwlowNvow30VQa/drgdjGzaYr+roycPe919v
         n7TsjUkEPFX59pdvmXaD8OKjf360ymnHQR5f6Yt7msrXjTkCh1121cogIhUlmgnV+6Rr
         2SBas6OHX27HPxenCkYF3B260eeWMTfkfDwlSY7o3olonbTATtnSw+tNCl5BxdjBfEbg
         JNyusPNz/Ic852ecjYxPrTIdE/cN3rWwJrkYUBhXz5EEbsKhQJZahQ9qQ5sxPN2vsiJ+
         M0iA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532krI0N2P5HCUC9f0jcl5UNXfxYoWqnlPjv2Fk9HY9pjAYaSi0o
	ik4B3wGu0WnFqv+PjIbYvx0=
X-Google-Smtp-Source: ABdhPJx7HGo8ivRXQbhMx54svVMy1TRe+kBnb8o6xzHvucQl5SX+QL7S8BpN4QgBSJrBvNF+Gyf20w==
X-Received: by 2002:a92:d40a:: with SMTP id q10mr56592714ilm.20.1609405511763;
        Thu, 31 Dec 2020 01:05:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9844:: with SMTP id l65ls17125146ili.3.gmail; Thu, 31
 Dec 2020 01:05:11 -0800 (PST)
X-Received: by 2002:a92:c7c2:: with SMTP id g2mr55510232ilk.300.1609405511246;
        Thu, 31 Dec 2020 01:05:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609405511; cv=none;
        d=google.com; s=arc-20160816;
        b=M86wbsPzId1f7aH2bwPno2VtnmcnFhKXWKUdRQsjC6i3zRVn2qASrkSMIrnB6LuxjI
         QDRpXl/FnIc8pnDmtFPij5v0b3QZEmnpe8+ehLy7wNeY9GMWVCNT3iu160xsUClh/02A
         Qp0Mdf8Q5nnrk6+dIIR5s8oThTK9CvHHGeDtvDbXtXjjpdlgL5BsGXtAhDZ3jnf/Ueap
         zDkcUY4dzI/rKrlhPb5bR9OP3rAsB9YOxcNnaWNflxKkxfUoVUk/5YEtQAIShoefb20U
         jS9z8RHWlQrzKMH7fIQCeVzEIaMZ7KTmdCgZHNfy4A0hnnToIwfy0WNEVEFxHg0uFrG2
         YTcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=XFSkYic7/blCpFYBGeZZ5mDPui1w8FHgWwj6tzyHnvA=;
        b=ba1mXYno2rJ+t1y9uHl/MlfARis3FwJm9x4sH3SyutzSgN93BYTC5Q3hbaf0yBvje2
         hjDiPHys6IHHEkzDeXsgFwYJFm691d5+LNipWVhu4xTbvzj2SgbpZZrUCu7hs8zRYKt+
         fYL08PEPIr14mgDD9hdPl43rHoayRee6J9ZvMr1at7nVUJhwcMQjg8dE/MfZTEETuytU
         ObY0doE0UFLdEmui+HXcvDyqYsvQjvABP/ntlk1yrazBaJbDoqienOO0s19SrNHmPdKV
         5nUNseMS8ar1SiVj4Nkzioobmc3SP6jbuJaywOJ+F2qNjpZJdwCjFNog5MQRpvd1sStk
         owzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id j4si4182660ilr.2.2020.12.31.01.05.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Dec 2020 01:05:11 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: 4fT7XNI7eK6a0Tv5RYR7coJlrxF5FrmSmr3Du7SPCkcVT5ad7v+SHnbE01gUYJyiH7QyNT0sxn
 DW7OvkRjrQAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9850"; a="156475656"
X-IronPort-AV: E=Sophos;i="5.78,463,1599548400"; 
   d="gz'50?scan'50,208,50";a="156475656"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Dec 2020 01:05:10 -0800
IronPort-SDR: 3suFR9vsDxKH90SWeptIm4GfJ+kgvBhat1N5yh8+wGNRKcFpQERa7XL+wNpHvrMLCoH7Pt0uu6
 Ya0uhZaTzYnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,463,1599548400"; 
   d="gz'50?scan'50,208,50";a="400839086"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 31 Dec 2020 01:05:04 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kuttH-0004rD-NY; Thu, 31 Dec 2020 09:05:03 +0000
Date: Thu, 31 Dec 2020 17:04:06 +0800
From: kernel test robot <lkp@intel.com>
To: Joel Stanley <joel@jms.id.au>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Sasha Levin <alexander.levin@microsoft.com>
Subject: [linux-stable-rc:linux-4.19.y 5303/9999]
 drivers/ata/pata_atiixp.c:282:19: warning: equality comparison with
 extraneous parentheses
Message-ID: <202012311702.8z21uxC2-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="17pEHd4RhPHOinZp"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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


--17pEHd4RhPHOinZp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable=
-rc.git linux-4.19.y
head:   e864f43593ccf9180c61738abdf1c1dde091367d
commit: b92e5db0f492026778cb31dfc479e50f33f75bca [5303/9999] powerpc/32: Av=
oid unsupported flags with clang
config: powerpc64-randconfig-r026-20201230 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6b316f=
ebb4388764789677f81f03aff373ec35b2)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stab=
le-rc.git/commit/?id=3Db92e5db0f492026778cb31dfc479e50f33f75bca
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux=
/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-4.19.y
        git checkout b92e5db0f492026778cb31dfc479e50f33f75bca
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dpowerpc64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/ata/pata_atiixp.c:15:
   In file included from include/linux/kernel.h:11:
   In file included from include/linux/bitops.h:19:
   In file included from arch/powerpc/include/asm/bitops.h:247:
   In file included from include/asm-generic/bitops/le.h:6:
   In file included from arch/powerpc/include/uapi/asm/byteorder.h:14:
   In file included from include/linux/byteorder/big_endian.h:11:
   include/linux/byteorder/generic.h:195:16: warning: comparison of integer=
s of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compa=
re]
           for (i =3D 0; i < len; i++)
                       ~ ^ ~~~
   include/linux/byteorder/generic.h:203:16: warning: comparison of integer=
s of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compa=
re]
           for (i =3D 0; i < len; i++)
                       ~ ^ ~~~
   In file included from drivers/ata/pata_atiixp.c:16:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:81:
   In file included from ./arch/powerpc/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   include/linux/thread_info.h:141:29: warning: comparison of integers of d=
ifferent signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           if (unlikely(sz >=3D 0 && sz < bytes)) {
                                   ~~ ^ ~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   In file included from drivers/ata/pata_atiixp.c:16:
   In file included from include/linux/module.h:13:
   In file included from include/linux/kmod.h:22:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:6:
   include/linux/mmzone.h:984:44: warning: comparison of integers of differ=
ent signs: 'int' and 'enum zone_type' [-Wsign-compare]
           if (likely(!nodes && zonelist_zone_idx(z) <=3D highest_zoneidx))
                                ~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~
   include/linux/compiler.h:76:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   In file included from drivers/ata/pata_atiixp.c:17:
   In file included from include/linux/pci.h:1348:
   In file included from include/linux/dmapool.h:14:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:26:
   In file included from include/linux/page_ref.h:7:
   include/linux/page-flags.h:162:21: warning: comparison of integers of di=
fferent signs: 'const unsigned long' and 'long' [-Wsign-compare]
           return page->flags =3D=3D PAGE_POISON_PATTERN;
                  ~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~
   In file included from drivers/ata/pata_atiixp.c:17:
   In file included from include/linux/pci.h:1348:
   In file included from include/linux/dmapool.h:14:
   In file included from include/linux/scatterlist.h:8:
   include/linux/mm.h:560:14: warning: comparison of integers of different =
signs: 'unsigned long' and 'long' [-Wsign-compare]
           return addr >=3D VMALLOC_START && addr < VMALLOC_END;
                  ~~~~ ^  ~~~~~~~~~~~~~
   In file included from drivers/ata/pata_atiixp.c:17:
   In file included from include/linux/pci.h:1348:
   In file included from include/linux/dmapool.h:14:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:1162:
   include/linux/vmstat.h:221:2: warning: comparison of integers of differe=
nt signs: 'int' and 'unsigned int' [-Wsign-compare]
           for_each_online_cpu(cpu)
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/cpumask.h:778:36: note: expanded from macro 'for_each_onli=
ne_cpu'
   #define for_each_online_cpu(cpu)   for_each_cpu((cpu), cpu_online_mask)
                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/cpumask.h:243:9: note: expanded from macro 'for_each_cpu'
                   (cpu) < nr_cpu_ids;)
                    ~~~  ^ ~~~~~~~~~~
   In file included from drivers/ata/pata_atiixp.c:18:
   In file included from include/linux/blkdev.h:11:
   include/linux/genhd.h:314:2: warning: comparison of integers of differen=
t signs: 'int' and 'unsigned int' [-Wsign-compare]
           for_each_possible_cpu(i)
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/cpumask.h:777:36: note: expanded from macro 'for_each_poss=
ible_cpu'
   #define for_each_possible_cpu(cpu) for_each_cpu((cpu), cpu_possible_mask=
)
                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~
   include/linux/cpumask.h:243:9: note: expanded from macro 'for_each_cpu'
                   (cpu) < nr_cpu_ids;)
                    ~~~  ^ ~~~~~~~~~~
   In file included from drivers/ata/pata_atiixp.c:18:
   In file included from include/linux/blkdev.h:21:
   include/linux/bio.h:412:14: warning: comparison of integers of different=
 signs: 'int' and 'unsigned int' [-Wsign-compare]
           if (sectors >=3D bio_sectors(bio))
               ~~~~~~~ ^  ~~~~~~~~~~~~~~~~
   In file included from drivers/ata/pata_atiixp.c:21:
   include/linux/libata.h:113:23: warning: comparison of integers of differ=
ent signs: 'int' and 'unsigned int' [-Wsign-compare]
           if (dval < 0 || dval >=3D (sizeof(u32) * 8))
                           ~~~~ ^   ~~~~~~~~~~~~~~~
   drivers/ata/pata_atiixp.c:254:19: warning: initializer overrides prior i=
nitialization of this subobject [-Winitializer-overrides]
           .sg_tablesize           =3D LIBATA_DUMB_MAX_PRD,
                                     ^~~~~~~~~~~~~~~~~~~
   drivers/ata/pata_atiixp.c:253:2: note: previous initialization is here
           ATA_BMDMA_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1910:19: note: expanded from macro 'ATA_BMDMA_SHT=
'
           .sg_tablesize           =3D LIBATA_MAX_PRD,               \
                                     ^~~~~~~~~~~~~~
>> drivers/ata/pata_atiixp.c:282:19: warning: equality comparison with extr=
aneous parentheses [-Wparentheses-equality]
           if((pdev->device =3D=3D PCI_DEVICE_ID_ATI_IXP600_IDE))
               ~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/ata/pata_atiixp.c:282:19: note: remove extraneous parentheses ar=
ound the comparison to silence this warning
           if((pdev->device =3D=3D PCI_DEVICE_ID_ATI_IXP600_IDE))
              ~             ^                              ~
   drivers/ata/pata_atiixp.c:282:19: note: use '=3D' to turn this equality =
comparison into an assignment
           if((pdev->device =3D=3D PCI_DEVICE_ID_ATI_IXP600_IDE))
                            ^~
                            =3D
   12 warnings generated.
   Assembler messages:
   Fatal error: invalid listing option `3'
   clang-12: error: assembler command failed with exit code 1 (use -v to se=
e invocation)

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
   Depends on SMP && (PPC_PSERIES || PPC_PMAC || PPC_POWERNV || FSL_SOC_BOO=
KE
   Selected by
   - PM_SLEEP_SMP && SMP && (ARCH_SUSPEND_POSSIBLE || ARCH_HIBERNATION_POSS=
IBLE && PM_SLEEP


vim +282 drivers/ata/pata_atiixp.c

669a5db411d85a1 Jeff Garzik               2006-08-29  251 =20
669a5db411d85a1 Jeff Garzik               2006-08-29  252  static struct sc=
si_host_template atiixp_sht =3D {
68d1d07b510bb57 Tejun Heo                 2008-03-25  253  	ATA_BMDMA_SHT(D=
RV_NAME),
635adc28087ced0 Alan Cox                  2008-02-20 @254  	.sg_tablesize		=
=3D LIBATA_DUMB_MAX_PRD,
669a5db411d85a1 Jeff Garzik               2006-08-29  255  };
669a5db411d85a1 Jeff Garzik               2006-08-29  256 =20
669a5db411d85a1 Jeff Garzik               2006-08-29  257  static struct at=
a_port_operations atiixp_port_ops =3D {
029cfd6b74fc5c5 Tejun Heo                 2008-03-25  258  	.inherits	=3D &=
ata_bmdma_port_ops,
669a5db411d85a1 Jeff Garzik               2006-08-29  259 =20
f47451c45fe0032 Tejun Heo                 2010-05-10  260  	.qc_prep 	=3D a=
ta_bmdma_dumb_qc_prep,
669a5db411d85a1 Jeff Garzik               2006-08-29  261  	.bmdma_start 	=
=3D atiixp_bmdma_start,
669a5db411d85a1 Jeff Garzik               2006-08-29  262  	.bmdma_stop	=3D=
 atiixp_bmdma_stop,
bda3028813bd07f Jeff Garzik               2006-09-27  263 =20
46b9e77076a609d Bartlomiej Zolnierkiewicz 2011-10-11  264  	.prereset	=3D a=
tiixp_prereset,
029cfd6b74fc5c5 Tejun Heo                 2008-03-25  265  	.cable_detect	=
=3D atiixp_cable_detect,
029cfd6b74fc5c5 Tejun Heo                 2008-03-25  266  	.set_piomode	=
=3D atiixp_set_piomode,
029cfd6b74fc5c5 Tejun Heo                 2008-03-25  267  	.set_dmamode	=
=3D atiixp_set_dmamode,
669a5db411d85a1 Jeff Garzik               2006-08-29  268  };
669a5db411d85a1 Jeff Garzik               2006-08-29  269 =20
16028232bf6dc5e Tejun Heo                 2009-01-16  270  static int atiix=
p_init_one(struct pci_dev *pdev, const struct pci_device_id *id)
669a5db411d85a1 Jeff Garzik               2006-08-29  271  {
1626aeb881236c8 Tejun Heo                 2007-05-04  272  	static const st=
ruct ata_port_info info =3D {
1d2808fd3d2d5d2 Jeff Garzik               2007-05-28  273  		.flags =3D ATA=
_FLAG_SLAVE_POSS,
14bdef982caeda1 Erik Inge Bols=C3=B8           2009-03-14  274  		.pio_mask=
 =3D ATA_PIO4,
14bdef982caeda1 Erik Inge Bols=C3=B8           2009-03-14  275  		.mwdma_ma=
sk =3D ATA_MWDMA12_ONLY,
14bdef982caeda1 Erik Inge Bols=C3=B8           2009-03-14  276  		.udma_mas=
k =3D ATA_UDMA5,
669a5db411d85a1 Jeff Garzik               2006-08-29  277  		.port_ops =3D =
&atiixp_port_ops
669a5db411d85a1 Jeff Garzik               2006-08-29  278  	};
16028232bf6dc5e Tejun Heo                 2009-01-16  279  	const struct at=
a_port_info *ppi[] =3D { &info, &info };
16028232bf6dc5e Tejun Heo                 2009-01-16  280 =20
e47ecd4e48030c5 Darren Stevens            2017-12-31  281  	/* SB600 doesn'=
t have secondary port wired */
e47ecd4e48030c5 Darren Stevens            2017-12-31 @282  	if((pdev->devic=
e =3D=3D PCI_DEVICE_ID_ATI_IXP600_IDE))
e47ecd4e48030c5 Darren Stevens            2017-12-31  283  		ppi[1] =3D &at=
a_dummy_port_info;
e47ecd4e48030c5 Darren Stevens            2017-12-31  284 =20
1c5afdf7a629d2e Tejun Heo                 2010-05-19  285  	return ata_pci_=
bmdma_init_one(pdev, ppi, &atiixp_sht, NULL,
1d3a8118b049252 Alan Cox                  2010-02-17  286  				      ATA_HO=
ST_PARALLEL_SCAN);
669a5db411d85a1 Jeff Garzik               2006-08-29  287  }
669a5db411d85a1 Jeff Garzik               2006-08-29  288 =20

:::::: The code at line 282 was first introduced by commit
:::::: e47ecd4e48030c516e7521403f98903ea1c8f9a7 libata:pata_atiixp: Don't u=
se unconnected secondary port on SB600

:::::: TO: Darren Stevens <darren@stevens-zone.net>
:::::: CC: Tejun Heo <tj@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202012311702.8z21uxC2-lkp%40intel.com.

--17pEHd4RhPHOinZp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICFaH7V8AAy5jb25maWcAjFxbd9u2sn7vr9BKX/Z+aCrL1+6z/ACCIIWKJBgClOS8YCmy
nPrUsbxlOXX+/ZkBbwAJKqerq41mBoPbYPDNYJhff/l1Qt6O+2+b4+N28/T0Y/J197w7bI67
+8nD49PufyahmGRCTVjI1UcQTh6f395/f9n/szu8bCcXH8/++HhzPVnsDs+7pwndPz88fn2D
5o/7519+/QX+/RWI315A0+E/k+3T5vnr5Pvu8Arsydns4/TjdPKvr4/H//z+O/z32+PhsD/8
/vT0/Zt+Oez/d7c9Tq6+nJ9dPey+fLk4v7m5vrq4vvnj6vr64ebsYXq+eXg4vz7fbc8vv8z+
DV1RkUU81jGleskKyUV2O22IQONS04Rk8e2Plog/W9mz2RT+sRrMidREpjoWSliNRCZVUVIl
CtlRefFJr0Sx6ChByZNQ8ZRptlYkSJiWolDAN4sSm1V+mrzujm8v3dh5xpVm2VKTItYJT7m6
PZ/hGjZ9pzkHTYpJNXl8nTzvj6ihaZ0ISpJmOh8+dO1shialEp7GZrxakkRh05o4J0umF6zI
WKLjzzzvpuclhiwiZaL0XEiVkZTdfvjX8/559+9Wn1wRFG8HJu/kkufUM5xcSL7W6aeSlcxu
QQshpU5ZKoo7TZQidO5pXUqW8KAbGCnBfLufZlqkoPOKAaOA9Ul64n6qXhFF532iKhhrthZM
YfL69uX1x+tx980yS5axglNjKXIuVp2KPkcnbMkSPz/lcUEU7q+XTef2diAlFCnhmUuTPB02
TyVHpisZiYKyUKt5wUjI7bMjc1JIVrdod8ceS8iCMo6kZ3caKXM6loN1btgUzHYBS5Ep66CZ
XcOTqThd6KAQJKREqpOtT4qlQuoyD4lqN1A9fgMX5dvD+WedQysRcmrPOhPI4WHCPJM1TFt6
zuO5Lpg00y+c9WllcrCnNFfQOGMnBZYiKTNFijvfEapkujk3jaiANs1saV7+rjavf0+OMO3J
5vl+8nrcHF8nm+12//Z8fHz+2s3frDk00IQaHZVFtINa8kL12DoDa1361gVNxBiAo8s+oJLO
wfbIMu5bGXbBpUjMQbBVmwkVtJzI4d41kwe2rQt+goOGXfU5VFkJN7MHDX0SkQupHRIqlAoM
Gr11ah9U5GQMpiRZTIOE2+ZYed+AZzNqncBF9YeOkggUjcBN8Ejdnl3bdFyVlKxt/qybPM/U
Arx7xPo6ztuLLS5EmVtHLScxq2yFFR0VXC+Nez8bvz6gwV2GV1/Y5y3gf9bkk0Xdu70zxn9Y
PM/+VAy9KrhiAaHW7VtzjAl11IjwQruczqgi8BMkC1c8VHPvmQPjttqODyfnoXQ0V+QiTMl4
owiM67O9zrCdktmeLy8ERd01x9NDyJac+s5azYeGcNjUYJXA+qMB0Sy/5e8FXbQsooglP2d0
kQswMPRqAIuY1ao6woA4BtsLbh9WPGRwLik4X996Fiwhd66ZwBQNSCqsXTW/SQrapCjhvnKg
TxEajOLfUDhxwJv5ug518jm1ZgmEtePGjYQPSBnGhbU+VIscPB3/zPA+NastipRk1AU2PTEJ
f/BoN54RXEUIFzIczpCZ3dAMwWLWQwb/TzECtwwsIghZ1oa3skrANVKWozh4P0KtnQ1yy2Qq
B2rPJgUYyMFMC+/Cy5ipFFynru9+n+s15jHABtEcjmhijaPCidVVap8V9Hf93zpLuT1IMHBP
zyyJYMVsKw4IIJ2oNONoG0elYmvv7Fgu3Cl18+ZxRpLIZ+tmBpFl1Qa6RI6LknNwm562hFvx
CQmXHIZbr5y1JtA2IEXBbSezQJG7VA4p2ln2lmqWAs8l3urOWuaRbzdbPtqCCQ68s29RXTdI
jarQqVuDA8TpAIHqikCqbx/TgIWh7f7N2cHjp/uoMqdn04sGEdXBbL47POwP3zbP292Efd89
AyYigI4ooiLAhxay8GlcphWpuUDdGwHiOKIAli58lp+QwNn1pAz81pSIYKQ9rGMBl3cdj7na
gIuXDeIPXcBpEukIwhQRTwCV+YwVfYFx+c608pxeXQzwWH7Yb3evr/sDIOqXl/3hWMHOtokO
hFicS30+848DJG4u39/HmSO8i+m7Z+gXF+/2kBkE/SciFLgxLSOBziKbcPH+bjkJmIXtlxTT
VxeBHXXm8zs5oIHONAVcKMD6rbBSphaeygpz599etMYVSnE+c7ACYEeYTRZykjnabbHzmdM3
9NuLq9IUIFuRIRCFqAnA5O3Z5SkBCCz/8PMbC/+ZHkfOVgdzBtQvby87EAveW/OcW4sE0f/C
2KKWZZ5X6RXbRFFFlJBYDvkYHQL4GDKKlWSpXtN5TEKALkksAF3OPQEzagggLl4MWfMVgyBP
9VYX/RtgQID/6BXmrED3gNegs2HWDUCK5G54lZGsDp1FCfD9ZtrvPFsCGOpDMJFyBceeQLxl
zq19CVQ7Qu5q/whGHlLXQsswiPXZ1eXldDhXFci7zJKvEiKoc5gXKnkKMUV/WXjAigqT4G0u
eZD0RWQpc7BtDxtHF9KiDjMH9IEes9myvjgwwIFLRtAxsRKcYGCjIlQLF2xz8bB4lMcJtQ6s
ywuRNxvhLU/wCEWPba9gHle5RZMychuCd4LN5AjOAJe7A0VeKrk7eMwAwUFMTShXue6nzRHv
QMtzW/IX144rDUgKPtCXWUxKjAsyBy+wQGR3/muNpBcXU+aH7HDVl4L74ihFuJwb59cKLwhM
hvsgOoGYwRyBVnZFCn+PaBHMn6WhJLsTWQJ3qJ8fJ4RyFwI3A2DhSggb7fHYPpJ3ApwQV9ZG
cymd64aWgJJUace8kcxn9pTIAhfZtyOcCmeh1njRr03+hq1h8dvDHQhS+PAamtDFOyYS895p
RMuKcwNI7VsayYL6wKvZa+tOvZjGxdr97f6U+c76fTWVNvv6Kspt75GnN7Ozd8dOKxnNiuLi
yrc2QWV+RsC6PBeA6GI0ZGvTcpJDPEcKgitnXaw5p+4vOFtxcdtl3CbRYffft93z9sfkdbt5
qpJsTn4LINqnAZQCBr9/2k3uD4/fd4f2gQX0IbmvYiQhKSJdKCd/CbuNpJGQBbfYbOlgODVQ
3r/gc8+r3T3mOP2xyvyzPptO7d6BMrucejsH1vl0lAV6fNht/vn2rHvHSYmaQyhQJk3Q24Wo
DsfEdx5tPan5SpeZWZIUbm8nuBAqT8rYhYzmOsG9MBcJBk4MAqgev8qRNW8atR4PdliRZFFL
/UxDAX9y4zPoWlBiLgvvemI61iQtAWiOBWgApRT0UXdn+aYkYTFJGmShlwQ8/u3UMiIVBjwr
FU9G0t14myzMfezrHNlnVzW/51gAUHsaOhKzy6tx3dXTRpMMbS9s8/Bh0qmf4eISRQje+Q/r
eKUheEyGoN9nNGwN8BNuJIjBIELqntNqHGOBsxrYdNm/bs1qllxwQKkAsfzHoANPvoVLId5j
tnttKHWA0a1TarJ0hudfyBTsb4FGtPBuUer00UseovZwiRmvsGXZmvE9s5nwiWkM24ZmWIrO
Q+GLU4FLE+uGXH0CG12BhbIo4nA1A/7uQuT2oiUGpRMTaRinFry9Wk6ulkO7QMEhIq41uOCK
Q2hWMKoQkg0uTGovHxKkjUkjmegk6EFyRHZ0Lridk3NVg0D1+Cdd4iCnBkSGeDcoXUlGbEhS
E2AifzI7h4x0zWhBe6LSzKnb5ZpW7aHfxDoRsye+DW1EzDZK4vo4l4swvpI53ZuVjx3pEeyI
9SYc5r35QsCfuutc4Wu7P/2p5IX/+OBm9c4MbpUqA5dCehkXIHGxHNEIoaPbOieSOxnF5tIC
5jBvA7Tt/vl42D897Q415nhtQcfmfoeZMZDaWWKvnlABV4eSkGW0v4o11dQLjLBY3p9vpOC/
ZyOwAAVQW3MYx3a0QrzNAQ93r49fn1ebg5nPhO7hD7KdR7sa7Pn+Zf/47M4Nky7m4nOXuqHq
ihb1DiHLI+P12kgL1L/+83jc/uVfc9soVvAvB5+nmGODlBShu1Yp9UZKKFid9brr37abw/3k
y+Hx/uvOgXF34CF9GgpwjqGL8WuSVpJfz87G2+iQyy59cT4daqjBTLHWaq1NHO5/vGn0ga9m
WcxHHspbsb7bGfRappjddl/2Gy6dg3840TrFcWoasmWzqsXm5fEeMLOsNnWwk9Z6XV6vvX3m
Uq/9Lwx246ubkyKoBc6C942rFinWRuS8GTq5/45J7/u2OKmLKJtLXJg3ITnwGeHuYfP2ZAhY
OfA6edgfJptG39YuD2tu1AmeurfX3X23NolYIczEF7Db6fv5tPqnS4DFDIKYCN9Ap+/bHreu
S5IAvnxszMFyuP5agWlPQJlnqarntrFT4VCShH/2lx40VV2bw/avx+Nue3w77H67373snsFZ
HocYwiTcRJVpd26yP8s01wkJmA9dmlYdgikzGFCc4TsrpU6ix4D2UjJTXaB4pgP3nd4o4gKC
BZJjhNKvkFr0018VtWDKz6ioGoOp3muh4VevbzbFDNCIzoXw5FEBpJootkbpnpgIbm7Fo7vm
5ddVj/k5TRBDY6K4Xp4a2Dly1bOSTXJgY/du5Gb8Ojq+btW9hGXaX2Iz2m5L+73TUldJvKiq
InPnWC1cVbpB0xwT0z2ZFSOLJrSESSLI6KtZETAUjrDRVG01NYKeYUpGMSevwSKdJHFdD2nm
iKbCsADS1Cf1tHiKgPoW99PKn1SE9WhyRnnkZFNEWCZgZGjW+FKLb5Ee/WzNFRqiKXdTTmlI
azumuXkAw+PuWQvntaOnwOW1zxY0wbAAny1XcMtajQQWV/J4EAHWdEJ7b/LYR+VlwVnVTq1Y
rT3TkAqOinJlrMi7xzz1+GoeqJSogxcrdRCZfRqkSCqfR8Xyty8bcOCTv6t80Mth//D45BSO
oVA9CM8MDLf2gvW7c5eb6vF8j3UoYiC80hf6uusADDHFV3rbU5kHbJliL5Zfr63Kl/+p7c0U
fyXgpUrrdAcYDnc/kyAkkc2Fm4RKDgv4yU0cNpUsgYy9RKd2tSt7USwuuPJUxGAs6mC/hgF+
UyjVf8V1xJpUhvEM/nINFFsFalxFVRbEsSIPQLs/rV8NCZ8xIj+gM8tlsAUZWlm+ORwfDWxQ
P152NiKGa5yb1FwDTiwDo6LIOolRhqYlwDvH5vsSjEnhPTs9OU7leDckjE5wTdDqYPq+RAHQ
mTvHm/B1x/euqpCRX6LRkILzcdaoUw4QiZ9snBLqb5rKUMifjCwJ059IyPh092UC3m3tH4Es
s5NtFwT8hb8pi053i0XrVzf+ttZpGm2Php5+crM1NQ0vT7uYpyYXlUeuysshptj+tbt/e3Li
CS6qh95MCLsCvKZiGRiOa8ihkVtaG33SzWkelDladTfVe26j1jPJRqSnvyHjME+0qju//bB9
+G+bPYWFGJ+PxVzcBTZyaciBO5Lg1EybEyCzs05RmfHMbK7MAUuXmev83ZdjogBVUF2kVp2/
uYuqxnCYxSqzR1mVHYwwsacxXpc6NubB3nfbt+Pmy9POfL8zMSVMR8tQAp5FqULw0+mAH27F
G/4ySLbdEQRLc1j1XiVTrU3Sgue+hF3NT8FzudprmGzGnO6+7Q8/JunmefN1980bKdVPD9a0
gaCxZhFfPXQ6CGuwkMzdIIdcNx00ayKP2L7mM4GJfrd/mSeAMHNllLnVOfUzTIClBT3vgNUu
dNTftR93+LJWiM1IGBZa9WuIAgBnduxjEDjAuCrH072GS997XLO/Bs+mPDN93F5M/7iyhg2h
RUYJHBLvsKNCZAojS/8juVv13NI/5723k44TlL7D+NmgNuHkZ5ryBxh8PgZymnYYB/gxjAkx
TVoBY9GFv+YN4jyMalCJs6xgKToA1DNPibecr0PXilXxDLEwcMbaFGC2O/6zP/wNuHlo/mA1
C2ZnGM1vHXLiPIeAh/InjFTiw7brqLAsGn+ZeidboyH263htniwDQC4Jp3c9TZUxsx4VYlDh
lLYxDE7uBoRhc5lS50cz+WYPM7cknudVDTJ+9eN75c+7ZBZcAk6oyzH6DcAWOGu3u6cVn8SN
5bk8o6mWIGreG0/Fhdg7ENL7RUyu8yx3FMJvHc7pkIj+aEgtSNFbW57zASVG387Sct1naFVm
VYTWDrtt4cVBgJwhIuL2KlQNloq7pDK0tFv0SJQDQjcS56DhDmvi/zTD8Jj0QQpejcg1O0M0
BtkflOF4iZVV47UBXiKTbtVgX+K0goCxftuhNWtF88EJ581iImNstgVZ+RsiEbZeqkL4PhjD
DuGPsSeUalmBnYxpqbT001fQl1vo1LLmyjbrjixH6HeBnehp6UsWE+mhZ0sPER8+3dKFlpX4
Ol2yzPGGLeOOjRhiK8ETgIqCe0sOGpmQVnMdtqah/y7rtiHwh+rNdR5wf71AC8vLn0ng/pzA
C81+DNqZDTmpGVf1pEBjNadjD9ob4ECiYN7it4bdrOXth79+fHnafHBXOQ0vJfdvArg3X+EY
HDD8AhwzqAgFXLeWqxw/N5eSR+5lZ5oAuDMZUbht0rz3USXIVLlYH7rO+2nahqLL1Kq/BYca
Utr3f0hq/ET1egOECaU8fB18yW/fY6Ydis1GX9VsqfPeNdgxftpcRQXVVTKsG2BddTbfbP/u
1c01zU6olVS5X6HB7+5QmMtMzzGtAfvvz0mMNZBz4nv2HJXPegWxRvDECMbEsN/exlZ9OheK
k4uGH01KwaL0fBGSxhYS4I0Dw/E3hD3Qpea+T1IsPtxdlqNFujtQopyyEfgJ54b7PBGyEmLn
AJCS5oK4lKCYXd1c9JVWVDCJ4eHqMlQz5etY2sgrKHgYu19CGYrmMUTPEvMc/niietnBYyhJ
77wjyTugJcxX30xnZ59GHB+F1p6+ksS6nOHHzF4hYp66LCVLDdFUwpDh7WY98xlmQnK7VmUu
MgfjMMZw4JcXPprOkvoP5ktCjrWVdpRkSeJ3qLZiOAKtXmcNT2SvqM9Gw0zi96sC/54Ma3ux
hNzklp0tbqnNH30lOLaUe1danHAkJrVEMl8Vi8VP67/ZwKt++JcwdKnhnGXLqpTE08GyWmkH
gje0MfRZpS/tpn7G4NN42DCAS4sBak1zb+CK+5tJJ76aS/8ZNqZg5giGPaIqOcfPcPDWrAo4
7F6o/ZVEYX8eX0TSPClbdrq2+fWriLn9C7dYxmJVoMCX7zBIHj/nl3cYYVvdBJ/6UVSCf2uI
+eti3GTC5Lh7PfZuSeNgCgEQR2RcCf+yzUlakJD78BO1vzCDHxhuOJMDUuAt9UdOvGqGCL8m
4e7743Y3CfvVMSi5HHS0XA9IMhmQnD1EAoB+is+0+HG189f/AC9K2FBpXAxIdDhtQ9J5QhS+
PfZXoOa6dXWuBL2+9tWvI49HHP/vfv6LjBT/O6oyldRbpmSGglUCWPtmf2RslvBPgpX0XiLW
svaH0LCamY+OhqXy5AI0IxoVWCwJ1lX0RGwNybp+RnFHKCLVu3Rbi5M5KMMPeB82213P4ub8
/OxsPVhyms8uz/x5tcrezLdZ5u9e8DmrwE7V4ke/LCwcShGhO3Qc+P8xdm3NjdvI+q/o6VRS
tTkRqftDHiBeJIx5M0lJ9LywnBnvxrXOzNTYs5v8+9MNkCIaaMjnIRPr68aFuDYa3Y0R7NvW
c5sKGRUJJ50A5ShNIQuBxsrd4wSgKB5nJqA1SZbaoadMOrPZaPvplx9Pb1+/vv0x+6zn+2QN
ZyY/RnLfNtaiYzGcBBuoRRPPR3Kl1vZ5fc4coG8s00XAL2gOymlvMU17h6UaIlMK63JtGgCP
yGAc3WdlQ1r8SvcbP9fdneDFFUh8xy6nqKSsTxl1ibhItARquIF4keiJ+zf5OYxeHXFqa1Qn
vZMeT37cP3YeXb+QKTdVk+rYE5uGEcGoPDDELdPnKxWNfHi5rEgj8gMkh4PUMuNUUYALdu1A
ypGuGwg1xziLnNFbPD1+n6XPTy/o+//nnz++PH/SBow/QZqfhyFNxjLm1dbpZreZc9azqiiZ
26VXxWqx6GXISXsqSbtbHY1Lu6oR1PtOKTpTchbJLloTycm7DQgfeKczZQBSCbQ9CRqhhIXk
jLPDlLkfdNfYBHWHgvc6E5QKmZWk67R9HcaL+DDJK44gMNlTPn8a4FlpX4ucdIiFY5JVZgkE
7pUm3gwJA9Vu84qNTNa0oohFZh3NYZCqDFNZ5xdRa3vK2Bko6fP3P/+L1qwvXx8/K/e8sQ1A
OCvx6nSqovYQGjM0XISuvNqm8Ppp020bxwDNrINlcNNeKDeXs3ntOi0uGYqOJtVzslR7XC3P
nqPydROsPY5YmkE5+uhseu2jxlTYCL6gnJKUWakhdycHcm+rf+PEcbDGNPW8YrkLXgIHynPT
EGMsxAyQp3z5j9B9McbTSs3uRVKq/BdGQ9irIxGzXgw+llWOwj63fpYwh9He0phpGAzqGnNk
uowsGr7585Y7YsSt0WZlav6Nd4ltS6zWAMRb95ZYqQKo4xSwpLty/4EA8UMhcklKVTfOxG4Z
MNLQ8JsoE+B3Hpu9gy6tCcyGM3QFuaXXBNw7CIYLEgktpU06MWbDNQhCJWp6xTMB08KgoZ6P
YDkQRbfdbnZrJ6M+CLdLFy1KzI/IJ9qYz92YznliuKmMKzagY/wiOwtF5Dd1THW9uOR2IGRI
xb7WFm40oSe0mU5jbtQIaLdIJw8No4klJ9WaLLVln2rSUnf/zp9fPxmzbpxzSdGUdQNiRrPI
zvPQNBuMV+EKJKPKNIg3wGGpmdZQg6SOF+48O+X5Ax3T1RGW5ZIIAWjuJstoyWTQyjR3OlWB
m64L2B6FftotwmY557TSsDSBjHqCrQxnDR5ciC4FFrqMO/qLKm5223koTBFBNlm4m8+pml9h
IXe8HRu+BRYSUGQk7I8BHIxdXBW+mxsS7DGP1ouVocyMm2C9JTEQTs1+UP/0aSN2yy1XJVy5
JPqaRdVi8NcyiifRVIhrF10e0capr1szHEEUVkbM3ySBVTvnoiBpSi/acMn25UTnNK8DFX2w
TSuMAQYhf73drBx8t4i6NYN23dKFZdz2292xShp6PN5vgrkal86sa5/+enydyS+vb99//KmC
Z73+AbLR59nb98cvr9gAs5fnL3AUhNn5/A3/NMOM9mbDmlN12NKnOWPSeNlZoH5foGhXZWNX
yC9vTy8z2Ihm/zP7/vSiwl2/Uoe/iQV37ZhEXGgiOOe48BmWLhedMjp+fX3zEiP0wWOK8fJ/
/XYNrNW8wReY9nM/RWWT/2yL01i/a3ZjB0fHkhnD1DpVu1XEpvlofBVqqpenx9cnaHEQ379+
Up2tzke/Pn9+wv/+9+2vN+UH9sfTy7dfn7/88+sMDk+QgVYDmDascdJ3IEcpIwlSVq91dw0F
RUt8ea6G8kBqSIhKRA5El6YRzIG7J7wSuezjJLszIyobxUICu97oTgaLejsNPfjwT388f4Py
xiH36+8//vXP57/MphgzNdSLbnFKAE3T3wwfUiN3xhXXSEv6V//GPgcBtNfRDpwCyzRV4WA4
uYLxtnV40JtlzbqGWp9kafRGqkiiddhxRvhXjkwGq27hVl3k8WbZdS4hyuP1ksHbWqJm2CUc
q3axXnPV+wCTsvYYdl57U8pb9ZftNtiEXOZACYPF7aRhwNS3aLabZbByCVUchXNoTnRAukEt
kotLbc4XMyrjFZZWeK8rIduGUTBfcV/WZNFunqzXN9utrXMQJ258/lkKKKLjuriNtutoPg98
M2icPeipM+onnYmj3Hhy046pFhJXiNaMOtqQyyKVhtyyK2S46rLQ/N6IRDHVZ6jI7O3vb0+z
n2Cv/Pc/Zm+P357+MYviX2Bj/pmoUMcm5fWI0bHWZF5/O5LLhjWYvKY29XQjZsZ6U59zlS/J
Xo2UCJ9PANGXP6Yqlqw8HPg7c0XGO45eDEHnpqZqR7ni1eo2kBi4joKjAgtL9S9HafA9CA+e
yX0j+AT2AEBUhSiwQrBoYl3pMnxfn5UX63kAXWFiNachtBHVcXStGkTdYb/QTG7/AG2pab4q
7IsudFPvk9BJ5QzNxaWHSdqp2ePL/lg1dpNBsp2e3LSygDfC21RiiIhAMBFh2TYqow1ZPAYA
94cGLb+H6x18jMPiQL0Dqtcy8dDnzW8r4i4+Muno7qO2j5NRB0atJbPjK1Gqihg5d+txGJTp
OmKk01bIuGO3z5G8W3aWc5mCvFZAeuE6u+NeYU4A8YmCQlFmKnQG2il3ls8KT9ul3V1ongoD
24brKG9qeyWCAkOiQM3hnKRWb9jbQG5hPuzKcT1SuYlvjLscZASmUao2xI/HS5cGdskg3HKp
CJ324JCDd13MRd1W9+6UPqXNMeL3hGHCtZJVuujZfmpgQTZVdnr1zERzHOOeTPcNcp9yZzBd
wYIG17iCrF8o3UW7RbAL7Gl7iFt745GVs54XsqX3fSMsAjZ+nK5Wa0p/GnrIV4toCxMi9FJU
4CitzsTHL9Q5JvDxjnaoAs41wdrDhcNBcayXdstNPDlrqDE0iD0jALGDuV9xGrxAwfeq91FZ
OXcogmj3ruC4Nwz4fRK7gzKr/AMljha71V/uCobfu9tw+jEtWTXVwu6aS7wJdnZPcitTlXMb
Q5VvieioZ0Q6fDetnrZx8lUuOiZZI0tIWLpCUcwbkyta2cR6DAvLVmdcpVti7yhGBxOMX1nS
iHJIregNz/BC1xS+6b/Pb38A9csvcLCcfYGD/H+eJnsJQ7LCvAS5b1dQXu7RUT9TQbiUV9Dc
qgAmum07ojii5MzbQCrqfVlL3gZSlQHtFQVwWOQ6Q9UBJQOu+o3MwiVtTuOAjU3yyW6rTz9e
377+OVMacLed4CAFCwLVV6uS7hu+O3U1OqsS+9w8qaDWgq2LYpsKV/0tZWf30dkCirM7TOBw
IRv+rmBsKW/tZWM36/liIafMbno4wjlIC+vopGd697ONexns5IyTYDUpNya6RurW9JvWWAtt
54LVdk0DNilcaxJ8BUYPdgxm9RpHKmoLuuoXbJApEuEu5DUOEwOnNVBUrVOwirrqEWhOt5Qb
igFkDziUcENCkeHQi4YFVmGFLD4Ic8nWqK2yUGiZxcNQpgWjVom/fVJkrcjYdFZuOC2J4kOh
aPFIxEqNxpFTahPxK7Ym4kVkjY4dbKi/Yfaszf20muYNzastm6Pcez9v0lPRZGc28JsiXWSx
L1UEGj2rZPnL1y8vf9szy/Q9HYf33FbN6a73aLWMzrS/FDvN7hFH0ak5Ux+l/jhYLRJLkX8+
vrz8/vjp37NfZy9P/3r89LcbeQ0TD/pK51u0wM/foLOvtuhbR+dmLsp7qfzM2ayQjPFsWGkB
iRUVoBBCYw9jpuA1Kdp7TLepA2HQBjh3rCauD/nc8r2vmKTpqeGCnaFR/ixY7Jazn9Ln708X
+O9nV3MGh97kQgJSjUhfkv33CkMlQgYmFgATWjb0fCYiOJLApBmsTDzW44O15pRhLi2HVecG
HeYMr5RSl7tT4uReBYgjxmrqYpr+bhPzWnFEBvdQ47lCYnY3sdTlqYhrELa486vFqkJc+crC
cARn9XgafZ6LcqHF0V5knhip0OjomWK0JgCtaaNz7ggdp59pknEwPWogcZPQ1oK/mtIydRsw
16IEaNRcXlngl+pBvqKt4Q/SN+1+GBDm19ey5D1p2pPxGeQTgdKf1chRL5SatT0n5jl18IUg
47nIbHeI/my+ySbqiPDr33AoMw8nIzhfuaC20adYZFZ/xMp8N6fx8inFY507FiNh4eMOKdc8
wvk8nHPFKgK9dkQ/rWEaWyCdcggR/efgGiasvJKC7F4DdMMod+SAvkWjv5rVjCMTrkdNW5M5
jfhH0TKIfQBFCE4sGJLSrt8AK3PL5lSwbWuxybjdbKzbFuRReLjiIoEiWeR70TQiLp06TBSv
KhDZjnAm+2hHkLrCN5NKy2VPCq6JQAjA55oSu4QRV18/6BZ9/TSytqgxbesHQ/FC6Lr4Ofk+
p+BjwvYL4YE1qnQt4pWh9GQJYcVWjp9f374///4DrRKG+LHCiCjqijSwvmBsPdMYxbJxVytK
UmAfLqKSsyY3OEQsKhqITAMqaGpKNnMz1SExKUkbLOhJwuTNRISPdnrEaMLZJnzgMm3W0Tae
2uTCGoyE6HO4GhlgEy9a6ThmjuSav+o2WbBLSv6Wy2Q71WXN2s5NPFocoLZi+yVvKbSPctxc
WR+JojOfDLOUsa08lMWCzxMSsqqUh6ZNcmokCbzWL+WcltRoPoBSBPkIJB8vuedgSZsAA4Lf
bicnxjhIEuQlPfytZuzxojzteVFmTzchUsBZnnKepNV7Zmmjxq/lTB6uROMAfsWWHHZOXZT4
VJi1AWmf1AU2sXdHbIShdAtuLMZUVpmSxIkt1Z4y+h58GMxN+4oB6OMmmxbXMdE0FhHo8wu/
qg5UXuetiYWgVmITig+45BIGuy/OVpwsO7J1DuflfrvkLgvifBfMjWkFBa3CNT2QqzjsfSfr
yPPUotmiHj8kgwUfoyGmKUlI+kf/1vPKQeF/ZAaOqGfma7KS+z2hQTVHc/dwFBf+tGtW/SM+
UH/7845kKBwrX6R/M8lJXBJ+sBhcchuu2PtPk2dPVln4Cc0tWI8cI1HRmvfxSWA6UyaDlmKa
igh43uA5cI7pgJpzX8LZnf5KrJ921yuQZLGcJ/QXoZpLaJoHcxIe4IPPgHxqD78u0GQCDlGU
xjjOs24JC5UF2OdwBfpkyWsKFfKe5LSy3vRVkOW+rbC0Oggmpa6ZWY0VQCAJsLeWI7nuCnpT
pAge56OpLFmV5soOhObCtcSA3thDNRPvQatpljG7BnNZyFyw72FlXWocJc0elVFNg4fdNdvt
itv9NAHyMp8Ybj5ut0vHn9cqoHx/AVFs+HyeL5uHml8r0kRkxTsLRCHaIeuR5gDNdrEN557C
4c+k5nceylWXRZmT/i7Sdz684KWW7WI3Nwnh3Y02Ls4ylvzFm8FV3nHjCU4hZcRWYQhXqJ/p
oK4GIKdDl7IFPiTonJZ6VVxD5veWecJ9JhbEmOc+G4Rd8tteJe+zAz1JdDB/aTozIBr86LMs
JEBCye41eF+WvlMZag3R4/v2t9bmy6z1er70jbM6wfPRuxtyDWcF3qTEZMKgHTXbsY3I4fRr
3qWrDSihsQ/NBEnC39uaPGUGy2pmWUqxnDJj4x0QFjLe4OfOI1AAKWCNTM3ccjOObVLJiGz2
SN4Fph2uQpbhnG+9MkI9Y8cL102rVjIjrzbHgE9EmThg7h1JfEE8vkT9fdnQNJo0XYFYWXkO
P82JvBdRVQ95Qv2tcSSwbz5GGOKErE7y5BsfD0VZwcHyvZ5vk+OpZV27DR56BpD4Fs6lF+yj
mG0mfMoC/i7NYLjIj0QA17/7y4qMjSu6oPLggKPhvX4hjinM4BnfkfNkIQousKNR2evDVwNp
ePoVpdyMPDg7ELIM2hqIhkgYx0ZXxknaddZPy3e2uUvNMMuyIl65pYhr9FGvOQyOHviOfU19
P3L9oNOZSKoKtEIeawxvz1Cc4cR4zSHbvTBXsTGvngRJNVHnjVtCxO+vE16nrBjt51RN2lGi
ed3Q5jQZLCYRXlVxk6w6PhB1QHMB5LcxwraUM/jpxt8YmEUe95p9BAYFmIVqV9b9gBqKzu18
0SHqU0opG9Ub9O3GpU9UfYVjfeCoFqNVjGQkYqvag2bDrnUsYATp9Gy14golufAmvY22QXA7
h+XW82GKut7QuqayS2K7pjKqslPjyUYdP/vuIh7sZBnav7bBPAgiT9qsa+1Ew+nNk2CkBvMD
rbeW/l1MCexOGVdC62+8qxzv5dDvngqnrleG+5vJBxnJ86WDaES/CEUh44OMTd5CWjjmm7ZD
qKuGQSyjxm6LwcrJU4thFT7ABA7rA7mlHloczlK73YpamFVWxMSJULF2vkRp12RHUypAzRkG
T0b7JfrIjCIpq2NenlJqOrw9xr+Ig49ak9Ab8pfX589Ps1Ozv3q6INfT0+enz8plECljKDPx
+fHb29N3zn/2YomBinZ5zkU3Q7OEl6fX19n++9fHz78/fvls+IJrt9wv6rUEsxJvX2fozqhz
QIKzYF6ouADlq/CWTONiTBlj94Nf9DJ2RKiMptBRjWtiaW0B0KUW0oVEgQkCXTifg2DFCRai
6IgMp4D3/RWqCKSYtjQql4p6cMkZV7fMFCTxF9oy/3Y1ejdiOjp3vAYtxUeHiRbfIMK+s67T
cMFJ7QZbDjzLD8s5W0AUhauQJ4k43YTmG/BmMrENg7mnXprIxcNiKhfV4VywZRwvOkzQuFLk
HSwhxoWBtlsgPMrUZAq5Y5j/xJ5LlnPuzBz55duPN68vnCyqEzUtQsAJHEaIaYpxOTJiAqkp
aJhBIvZpuFHPUd2RQC+akgt89GegqOqeXp++v+DE5uK6DYnKEyxebjEjjsGUTFHPojaw0iZF
3/0WzMPlbZ6H3zbrLWX5UD4wRSdny+ZkhC3VptEjTpAkK+1d8qA8dHnl8lTdG3SoawO7FK84
0Czq3QP2TQVNLk/RUTeGsf1NIJoWVwkIZFQRZHKIuNlsl1yMbcq12W42fBmKtrtFo/GCGDqJ
HUTpvoQ1DI/AVqgSjjaHHTvv+A2TcJ7KvpJdJPlrF5N1f4K1hnUOdrhCT5OgSIPvFsqo2C6C
rYfpYRu1+SEwrTkpvW2bylKzMwzehh/o3obXdPdKgOPhQ0FwnFZACZMlFrv5gg3HYjGZMUgI
7aEQlanCMYlHkVfNUfpaK0laTzskB5GZgfxcGpogS6qcIUwdbt+8FszkS08fZNuc3uU7lGXs
e3jG/GAZJ2zISpMJ5F0YqJ6va9bNw2Yd8MTDqfjoa8u7Ng2DcONtEF6NSFlKX+qLwFPkBT2F
3slEc95YIEBCCoLtu/nkUbOyrhUJOW+CgLcPIWxJlqLDoazeG+O5+sG3rcy79Snr28Yzq2WR
dNIzBfK7TRD6vqJKihyfHX2vY2IQL9pVN1/7MlJ/1xjc652s1N8X6dm3WvRAWyxWnf9b9YrN
0y5xq5Qc3uXvkm8tgyna5cFis+Wv6Z1vkK0VLYJnhVMrLhSsHQXlgwNEd2Nl1xxLbwcoMhe6
yOXybOgDsZe+oYRP+TSeVUNmCTU8otTm/7FbNG0QLjyrfNPmqbfsU52KKFn4d7Wm267NqPjk
q6tmvZpvPKvhx6Rdh+HCQ0xL8iA22frKTO5r2Z/TlWcvr8tjPogMRv6DCKnf8rOkwu0WfSW7
vixACvUKhyBbBUtHztYonRmEQhpvoChRKhLVuDRZ9dnnIlix50ItZi+6OXxg2xJDieGA0W02
690CLzlayXwqMGx34eqdTx0mbF9dak85udguV3M3/0MVslGJBiLqmWEftc53EzFOojJmn4vR
TFEV4XPvvmrdde2HnZu1gtVpDWMslqwtnuask8MpQ2fVqQHpAeGS4cVlf4YxKNyCTup/3tyr
CAbtegHtmp/cxEDdrlgP4YF+yafGcyieGtV32/kKG+xWd6umr8tW1A8Y/aSM3SK0pKiHjVuK
or43qJBpvbhmQWh6/+jdHhVxly2WnVvkQPAsf5SHmYJRLhYkcDyBbTFn+ID6HK5hmdBDw68w
UHzr1cjnNKUib1xyncultVEpyKqMwqxYjRYx3/uJ6Zw7bilSGA8x6awKpEHgIKFTpXTBS+UD
kZfpNHFF9letYX38/lkFJJa/ljM7NE5Sm1spEwB15JgUugj0cjtfcj4Emgr/2kFSNaES9d2e
jfmiyZGsmtBNBhsV4N5kRJOqoUFj3lVNr3Mk1MFqnKEAlOvwS1YVoGn6W3UQ1Z7JTq0HBD9Z
TX4QeUKNp0ekL5rVasvg2ZIBk/wUzO+C/6PsSrrjxnX1X/Hy3kWfq6E01KIXKklVpViTS6rB
3tRxJ+6Oz0viHMc5L/n3DyA1ECQo37dwYuMDKY4gSIIAg2xhRXbHU7L08+Pr40c8QDd8ofZq
TPmTUqB0eGMlAh6W4rZFDerSjwwc7dqVIGhnZH9muWcyxgrOtOBnGNB0HV/b3mIRIN9rGrjS
E0mJkbakX2/VG5Awaulp+6f3aZlk9FwqvX/AGzZuOa2aSyJv30q1XwVZXIuQS/D7OtX8fg0U
4nFjoF13qk1I89CoFmYFdbxUX3W39ROw64g5q/D6AQpvzR/vtTDp8zZpYeE+XTf3+DrDEmuk
zNBPJPrmRpN+7mozPxE/zPD3rSRIDwZPr8+PX8xblaHDhEPpVF3IBiD2qMPYiQgfaA95mvRo
Y9Vq41Tl22J/3fLYPDyJBBhh3ohS5ajEPm3D514frhhGQokTraIH2OgWVT6xsCXIL31eZ5ao
Vipj0rU5tMTJEi2DNEhXWlr0zNMPvRfHF1sj4eC3f5G+5pZOrF++/YEpgVuMCXH/xlzxDTnc
7rLNta74hXvgAf3ct7j2URm4OmCDoRmMPS3VLRSiKd1GuUZfow5JPtCpOVC7NK0v7BXtiLth
0eExAluOCbYjuiZk4LwH64FtWD4/9MmOxkThcbNNlvlA6rRJZ07dgX3pkyIb6FiU6OYcU5k2
yTEToaVdN/AcZ4HTVvpiewkvoSmJBtUDNI+hpHorU4Yx/4XmPqRmfUEdsTYrYCBnZBu4Gnho
PSMB0GbBNDu3G1CQDdeytdRlBrl66Nwp2jmKQBTFrkhh2eDvNcYJigcYrs/Gv5QceOMmjb1M
etofStRp6OI+ecZT45Xg33QjXbYL3dK25CJvf0qHu2tKO2YbxZhseO/NrC5FWxWgbtdZaXld
A8qRfL3Pre4n6Zh8NsJq27Lg33aKgNBaQdGxmKDnp+5PL5iewfYp/LTK2i0IRcc4uRB07uBs
SEHPvAYiyB95eMNDBVDqXF37VbQ+nppeB5ncTj06oDo0l3szn673/YdWdfOkI8YJvY5bvPzn
J33vAxO+vNeCesz7NtG1oJUdMRRPezT2b7gvN6/fySkZtIm48oVmI3s1BNBqJ2FPUhDcQypy
Kw1Eae4oLQZ/fnl7/v7l6RdsGLAc6efn72xhQOhs5G4HsizLvKbRUIdsbRaPM0xMLUdy2acr
3wlNoE2TdbBybcAvBihqFAwmcMh3lJjli/xVeUlb1XcQAkMYHlSJKdBVREyJBit3zaboTSKU
fWx+bPJp+44+5TXv9G16AzkD/TP6lJ/99nCh1WT2hRv4fEjjCQ+5U40JVR1rC2KVRUGo9zVQ
Y9flLrDE7I4drc8K4jwYKehOaEVJtTjM9vRvdQXsk9fcKjGgoe9ovVF0a/o6E6kny4uXAQM5
wk/N3z/enr7e/IVBfWSr3/zrK3THl983T1//evqERmz/Gbj+ADUX/bL/m86dFC2GB1NiMgK7
YleLUFNUz9NA0+xfY4BN+2khOX0GhGhe5SfP2hj6JCYgPpYsCvYkEdDbvDImTUXj3CCpwfqy
x4I4MlLOTxQih1v/ovd0RVwYIG2yfZd2f7/enl6/wZYDoP/IyfQ4mBhaJtEQosfaAmMIn1K/
ayRcfYIPMhizq+btsxS2Q2mUgaWXZMt6Zxb1NntckIZIHnp7S8+regQPgwGlkz6MkE5VMC00
R8u4VlEwGXKXJL+qZwSwxlaPP7A7Zv+UZqRY4d1b6Ow0p+QiPX/LN2cUM+z9BfHYQy7b8l6v
w+BWwFKLeTrR7LKzPr0Gqv5wneDWCYZgWUXOtSzZ7SHAQiEnLwAGIlHDkNjAICzqe0ps23T1
65dGuyQe2UxONPpMCOmjaTSlwr4yBjmsPpFH8mWIeKqStIcpSHu4r++q9rq7k1WYxkX7+vL2
8vHlyzBAtOEAP5ppHVL7Mg+9i+XpF6bCWcI2LX1JumenXttS331tZx37dd8O7HIlb7ubj1+e
ZYgcXb/CfNKywOCDt3g+pLqLnCFxHKd/fsCWZJbCpg+8qWj/oGO9x7eXV1MF6Vso+MvH/2GK
DVV0gziG3GFUKMeAbewLN4KqrbyhaAGBKIPIAL/NhDFAoAFIocRlKPaESedHHtEiJoR1CDOi
GAHY75yYS4l+nvm94shwcQPnYhZGXjOrlscjIu4buQQZkXIjPe1WUak+8cW+JIJgIFy3IHEx
vNsQKjxwpw1/s9W0kDFJcbijk1o2scmsBxoQNOONoaBizX1n3mk8fX15/X3z9fH7d1CYxEBk
Vj2REoO42Dx/CAZ9JZAX4uekJRbkgrrt8T/H5c4J1cIzGoeED0wj7MtzZnyp2sRhF3EPyyWc
1w+abZqkN+iTz5YKmjul/o0EWUpRVl0VLfv06/vjt09c2yZZG8CUtbZsVrdsPzoc1bvw1CEG
Hv2y2LL5vP3gwIC3+tYG7Nsi9WJ38gVabTOzskZVPb3gm2wdRG51PunDZzTwpIWS9/W2Munq
riCWrb9e+QYxhm1UYLRXZg5kU2RIq4M06IPYN0rYp34QrxeaDY2L4lDLTZDjUO9AQV67+rcH
stk8g5WHvVOluYKtcICu16s/lchW7wzfTR+zzl2GAVRcC3xA6eq1BSSXkLcy6nDIUt9zzdmE
Ksg7xQFJ5Yb8df3YlRjRwC4UxNxy9QGQ+n4c633QFl2jxr2QguCQuCtHGWxqiNuze5XCQ5Tb
/eN/n4dTBkOfAk6pp4t3Fw3ZOs9Y1nmrmLshV1ncc8WnZnWPoVDdl0cSIg5Sye0MulerSI0k
vZNbCPUzEsAysjaIlCO2J47xxWCmR1nmmVl7fJpdyJQeAc/nAaIUkBS+ay20/245/JjPNVLH
GQVcSwFzZ2VDXLK+tcIjXHJi/WMLTITVUXSdmchpcQpqOWfUWfDXnlwnqRxln3pr1ahfBRdT
msuyiUpSs93yexHJc8hF+CaLpZ3MtDu2bXmvF0RSJweac0HwWTRycDJn0HWSLL1uEtwIq894
B3tHkVjpYGlvZroOHgDbt0QMcC0vPI3e4ZCAldlRDfyHwkijRfUjI4ADMmRDwykMsWNLGvPB
cwkLfx42spT5rrnmJzY438DSbTqzqpI4ZVcldTKQF3La3Hk0UJUG6DcXOrzP7t7P/Zr11yOM
FugofB7INh2+jFlsde1VzFhroLsB3xsCWWxqfB0R2ZQKjYlbjQiLFuZgLOBoX8okH1nEfHB8
s3KoylFFfkSs5zpznqL7F3lAKvkh609LKZm7CiK2CFneixjykikM+IiLSk7CCPo9JtDSuC3D
yAEjauUGF7OpBLB2uIIi5AXR4peRJ2LvhxUOUH4dZt5VG3/FtpBUiPk4k8PI2SXHXS6Xh5XL
jeJDHzj+cqsd+vWK3ThoDqnEn9eTGpNIkoYzW7ktl0Y0Mk4Ps22egmdnkW95EqSwrFw2KoDK
QPSjGanw6eM72SMPf6WvcoT2D6zf/4DPTQ+FY+1Rl1kz1EMDWU4HFZ4Ve15AOdR4USoQehaA
jXYugIAta5dG4XutLSzAloraX1qXyz3rwsW47Rhj3eNTSvt20CEWi2bdOI8MRXCLPsfNNtlG
gR8FnQmMby2SLOUKtu1hn3HscUFbLNmuDNy44wwoFA7P0S23BgjUEN70bcKZ/pdHUUltIvti
H7o+MzIKPGcaRIVRig+pxThbwqB2HVzPY3ItizonwXsnQAi7wAKsuaz6FIQ+MwsQ8Fw+q5Xn
Mc0jgBU7CwTEan6UgymHeGXJTVMEQidkSigQd20BwpgH1hFL911tA6NgIR8im3D4a2viFa+s
Eh72WRThWEeWD0DJ2fVxnoit73hMy/apfOTGCNX0wh/9Td1YsXYJM8yJT6D6LJUbfVXE9BNQ
mV4tq5j9Wsx+LWa/FrNfY2cSrFcslf0a7Fh9to0FtFpeMCTPkliu+1SeuhQYus4sQJ32sNFi
xzVCa2dZ/ahb4SVsSXjhMfCaLD1tpRlX6UnOFS9du33vsmIFgHeWVuDwfy18E/CUmQGDsYoJ
5LB6kZM6BfBcCxCeZegXs3RVl66iyl0vLQNd33dRYElfgYRY1HFS14uz2KYJdq7jLqfvYEvN
TC0BRJzyBNWNOaFS1InnMDIZ6dQGeqL7Hq+79CkfV3SE91UasIpjX7WgmS4lRQbfmpTbPSkM
K4cTpkDnq3EqkjAOl9SQUx97PpPnOfajyN/xQOxm3NcQWrtLWqbg8OyJlwS7YGDmi6TjtKa3
vApeRnHQM3qihMKaq6b5+h5lHesD+5z06T5rlFxGimEkOwF1c07uG/Zh68QjTYFl3HYZAzxj
8xJXrcaJ+fnx7ePnTy//LLgJ6pptP2XDCrlBh+d4VI6AaYPhbaoJyAudmazdA421Ek8QMdJt
mlDn8fMZWV4/OOF6uQbD6eNCDQYrfLOgD0VxwBNrExlsgNhaZOflAqFG5V8WSzRe7LH5J2VR
RSBU0YMEZ6QV+o6TdxuE5wLL+0dKg3F1m1tIczTqosphmP7pk2a/Jp7x/fFm7o+/Hn88fZqH
X/r4+omMOnzbmS7UHvKV1kR0GLevT2/PX59efr7d7F5gJH97oQ74hmGDQe9lma+75sTOF4Vl
rCawwpRko56/l6xNtNA5lqL8f/JX8x3nKnRp23RdsSEPPboNZekGqz41VVrsG3HGzqQeUS2X
rGgW0owwpcoXBZiheP+kJJ0FjsHGCfyZiZpUbNIqYUqEZI1Jlh0DS7PcE86RO9VpvSDPJSZH
fAh1Iu49d0KoJNyhH+20qo3USi35M2zBpNuNzfb4f//89vHt+eWb1Y9vtc3MOBFAS9I+hk08
pxgIuPMjdT880tQteVuJ+yHNckJwJr0XR44eYAMR4aQDI9Sm6iCdoX2Zqt7UEIA2CNaOqr4J
qmKcQWt2aT3H5sIAGSZLCpJMUt9Nptu0ivZFeyuLKf2Ex5wKPKHqXk+0q7hPuTBE9Q4Fkw/r
MzHpVOjkcchED/QqiKWaU1on0DeycQOt2/HQTd5F0ZaVZMsbGZXDKOy+CEGvFZVXc4X9FAjH
rkg5bRFByEga20xJyhaoKTdPEemowxj89IekfoAp22S8X27g0C16kCad3jgc0WhzQQ4dboMr
x9t0dUOpmsXPTFUtd2bq2meo8cqkxmvH/Bje85pTBW95Inu58Q5Iy6kPfXqGJKh5vfXcTcUf
D+cP4vEOG5QN541+AYxEWECPFv7xHo+cFoy+Y2xH1BODzT87flMaBdEKy2sfjTaZZanE25ia
mAhiHfShG1slSpenNhN9ARerKNRfBAugCughwURcqmB3ex/DUPTMhB0nLJPNJXB04Z9s8AU2
T2x6ox872NFaazdaVCg04oot0VcQ3cxO0uIojo1cSupESAycpKzYiCh4Peg66mWmvDAk/jAN
h13iQ4al3Uyld6AT3XP5C9Cx3FAd3yZKBlwaFXJZc2cOE0xM/yYqsfxTqMYoGekLS+vEYqxi
gIA4peZM/blcOb5jmwCjNylO6zmXrhf5S1OnrPxAn7eD2aSe2ekSB/ZFPxFBbg2FguWxr4yw
d13py8l0MGHQjNBdM2JzbTSyBM5C/0y2l6qIEg7hssiN6Yov9suD11cmu8kXGEkzOQizPZGY
OWQ4hFNT9uRyambA19VH+cC8O5IHEjMPet7pWvR9ssQFC/SODH4C0XV+hlCzjtUbIwXKAn8d
8zVPaviP99GvMEnF+j2uje7tgmMSGv5/weTxF0gz06ifL3bbPFIYiNHkZzjVdQBu2AhtebEA
uu6sIWx/6YovQTyX7X6BuHxVtkkd+IFFaMxs1t2g4khPKMaLFZYsp8B3+MIUXbn2WftXwhN6
kZvwOYCsDC1W+goTrL3RckkFC9s1wn6KHTRiPWM7zTCfp1BsmX+llPLLBUV7qyjkMxj19cUc
kClQ130CjZo9n3scrpaLJ3hCdlQa6r0GeWx7CYifNLOWzxdWbEfeGRqcSRnPFDt8IYZ9o77U
Uw7NSS7LE689SwawcWEfr1MWj5US067HQJTNiIltjw80ZKyCneLY4btYQLEdWltGVnvmYxDP
HHfooxpfPb7DN+xvFhtr3O6YgLZhmhFu+6GgADoh/1x/5gI9MnChmxbLZurzFPN8vuWl3u75
fAHHHcC7n6YbAh1b2z/t+pa2kdr96r/4tEXNMTV9A2MnpqK2m/oZvaSbAV2vJciKnw+6ZpoO
G2NKqZu+2BZEydPZgFDR44SyOPCa+yEdPepavLikQyg6HhZhgYRNvvYKV5zq7l4fv39+/viD
83iW7LizkNMuQY8rc1UGgvDns2uP3Z/u5MonIwEhDxW6ei+uGXUfiPSsvSbHy+gThrv0QyZh
dlpVRmJB7/Jyi5b9lsS3VTf4SKElQvp2M0Mk5+0G3TlhvHMjWjvhQyeEV2jnxZBFQz1T1SkE
0vpea6RdXl3F5YCluDbsNLkuwK3V07ePL5+eXm9eXm8+P335Dr+h+w9yL4aJpCueyHG4aCcj
Q1eUbrjSW0c4Rrm01x500HXMzXqDi5owIHxIsnyhZZMq2zGOiZK0vflX8vPT88tN+tK+vnx8
+vHj5fXf6Kjh7+d/fr4+4iXF+E4c31aXz3+9Pr7+vnl9+fn2/E190IVfqZvjKU+Oc3MOhNG9
Z9pfxhlk8sh3LgFLHu/t/vR5uKLHP0pZxLMWw4+H2tu7XBs3JxgclJKoN2Zi/u2SnaeKNiSm
xeFw7K53eXWkwCFNDni7vM8qY8YKrDxlvNBBjrsLf4mO2KZJ99wRl6iGdFcG3U5L0ya18LIl
+jR7/vH9y+Pvm/bx29MXrTcFI4gkyApkJsxceiU4sywWX7J0RdVaHMvNTAV6bLyF/9a+ZffK
8BbrOHZ5ia9w13VToi8oJ1o/pLzWMXN/yArYMziRU+VOYIuvotRNxk6+ltlae9NithRw7WC3
4TNdcm0ORYdvO/bXpsdTinXCccG/Sddg3OvT6eI6W8df1fpIlJyHpGs3+eFwj04zuGBOKut9
VhxhNFZhbIxrWssuzP194r3DEvofnAu1lmL54iRZbrEuL26b68o/n7bujv0orHXttbxzHffg
dhfVzMpg6pyV37tlbmEqMFh7ASKqh63L+kR5NociU0+u5nQTQmZUMcYwu9m8Pn/6RxeV0IsY
7vwCv1wicsIiRElWd+z6fqw2QlHIEvuQx+k4uq63tG2F8nhftGhBmLUX3Izt8usmDpyTf92e
aWFw1Wn72l+FxsDAVecKSmPoaQMCVjr4KWJy5SWBYu14F5MoTV7V9Xxf1Pg8OA19qBEGbNPw
ptsXm0Qe80ZhpKEw5rftytU+LzybZacocF0L4PvWFKbOMQt1k2hyJ4e03RkLlQgTDDWpuGNc
0VkXbTkCwnajZ4OOgOB/Sx5yAdaaKNtq/XBwVXvOYaHTFsci0b/cJadkZ9PUJtGW171Q/q53
x+JwO3nN2b4+fn26+evn33+jUyjdoTlolGmVlcTxE9DExkCNtauo0aPmKPRIkipT75cwZ/jZ
FmU5ROGmQNq095BLYgBFBZXdlAVN0t13fF4IsHkhoOY1NSmWCvY4xa6GSQx7Di6g1fjFpu1o
FfMtCPw8u6rWN8gMMoN4ktniPgOvyXOawaQtUVYM/ipVZcqOOgGWv5fu3s0e/Ty6PmSetGGD
CpWJlWSAthW38cdk97CueSRkhUodelrNquHfaGOqPgwC9iUFgAnIMegBvX+Kqus5fXIrhLPq
mwIooIZ2tOubFqXzgfqnx15yM3Ewxudcn4qsoBlJkn59NAPGtQzDs6QfA9ehONFvIoFafIxE
46H6CLzziSJaOdrI1D1UTETY+aJrUtBV+LxGLgx+eXfM+Ty4m6oZNVtzYW+FY6S/B7FpGT/9
vZYXUGDILeR13fFH8wP6Tlt2vj6mfJwNthxN0U1Q1ikwDp28AclV6O10e3/gbBEA8clSMxCu
SZqq/n5Hsj64Tk2TNY1LaT2oFj6VRaCG5TUVXMnhlvzdVnr7wParguXF0pqD3YUyVjcVdFC/
CjTZM9xe6uMtR42yqSzZoz8p8r5hpgkbyJ0hxka0LN7JkxnFm0OTZN0+z62jb2GThmgH0snh
7klES0XqkeI0Sq9lmplbfiSmZdJ1w4kbRcrV1gFtz+vVJzMCqDov9ndbapMlkP7kB84dd+KF
MO4SPe+ip0Ky7/HbO8T7rPFW/Ck7wqfdzlv5XsI/h0KO0eOYlUHslCp7CaxbSgRhF+WH6+1O
dUAzNBMM29ut3nz7S+wHkd4IsNeE3TZrUTr3It9ZM274h1MGgGaZMSPtueLIkwnlVEyKBTY3
HiPTcDP2DldbxeuVez2X7Ovqmc98TzJjgxXtYnrgiWN156RBEQtxVm9KQtOegGv30FfjkWvQ
mkXaOFAvUghC7K5mhLvnUYpqt1dQhg9vxKZ8/QTNHJUt9/3/o+zauhPHlfVfYe2nmbX2nPEd
8zAPxjbgxgbHNoT0CyuTMGlWJ5BDyDrT+9cfleSLSirRsx/6Qn1lSZZ1KZXqMk0CW74ilequ
4l28khQeTDirwXtcorA9Y02Lt+3BTkis59PH+ZVJse3hXkizerxMdj4vHvSsDogMWRs3xar+
I7RovFrfQyD/fnWtooJJVjMm2eslE2AbIARyIhRRheUPghtS3alK+ZuFtyeMJlqma5SIIF/P
Ueh6+A3u6BBqne2C9CI38HDJmVrqBpY43zQOju9WrzcrNIFFwrQs0T/OIkOmxeznENinqdLV
vKHsjBkbSk62WaBAHqyQYfETQeXeD0+QAAfaQJx64InIAzUf2SEcjqsNLQRytDRt0hytST9a
Dm3YGTTHbZ+m+VLOkwu0eAFKQ7Wr4kXGflEZDTm63syjSimHX5lp5TyU7ORjaiPr6/l6BYpQ
We3Q0fazGa4ihVunmVpFmqdK+gwMf1UyMyJ0nhbTrKL2BI7O5Ks4oLCylKTKnPqQYsJ9lDfr
Uhk4DxWfemr7M/BSMzZQyWqEsC/RtKK124A299lqQeoTxIusIAYuysoB9DxWYnxxYqrNJXYs
W2/pWc7h9TxTR70E8/NEsd7UqVpuET1ovjqIga1GfISYSs7iag0Ok/gN2JLEpr6cfZNTN3mT
aZloAVk1lLEnIEy05ZnIEHsZrcDvNF8bh1KZNlH+IEfK5lRIqhMnJBHpuWQ6obWRYWN57CvW
WsNbLM4o5THnyNm7gaY81h+GPce8dNURXNoYim1vBdQiefybXEl1J+NNGilTkpHSHPIIycot
DmxWZb7RWl0ZTGT4HIUrk6g2JJbghUKGwC/rByjZPPWyLSXhcGhd1mmqfCFQfs8LlQYJZtRo
+zJVWx8hQdb9vqxdZTHKsmLdaDNtl60KUyu/ptVa7buOtjdEQOTPPSRsOzNOTuG1vV9slJHd
0mP2amDEpCRi5btZPoRe50lWqC2fZ3SR9+tNPd2vF+xsDUpLJs4IDav8UsBBWHkM+P2UeJei
kA4/5X1Vp3dscypwMHdBrhMmSdNOAR2Hdg4fatlPcST2nsTWudWaya9hh4Cvp5a/DNhV6w7h
lljEv9fJ7/DQaAGpaMhcDagcs3YR0DpZkHkWAbuf1onWqmzGPjSdEpGXZ7KELyD7ypgM5wXY
Fqx2EvR9gLxh7cuCap1bmA4iElwsIx9TXsfdAruR8ka3d1B0SkngKOQ0ZQWTV5osJii98lSK
pF5fj0/fKRGyf2izqqNZCjFJN6Q+qACnYm3E1D1Fq8z85dWq+eeS7SR65AvfcFd7N9wRaOXL
kXAGMtXtq/S+26K6swD7JZQRFG3P5QQFmVawMa6YyMlT1DL5Z84XW/7ucPjXfG/5Y+yIbTuy
8Z6g1m7g+UimFZXEReCSSuABlhMBizarnnCCWlmW7dmGGH+chatUDEqjHqdjF3Z4QEYX69GJ
fEPbUy1bpfY2tLgCEQie1tNwBqOpvKgL/L6oKC49Khs3t0Tf5xbFBQq92GNy1JmBqLccyKRD
bYuGSCHcERXr9I4cBjc+Eu8jn7rr6eHAVfu78wpiR3a8FXPU6E7Ro1hL05Jj2/Fqi3R0Fk2R
9XScInsDoXGeOErgKNEVjeuT5uJiTqmu6GJkCQtwrawmjsAs19yvTR77E5u8RBMFa961/Zzx
/1aIyyZxgon+Qlnt2rPctcmY/DKH0O4rS83or/Nl9Ofr8fT9F/vXEZM3RtV8Omr1kJ8Qhp7S
IYx+GeTCX+XdQPQ8T0Bt7hXhfGnsk3yHkudxIjhbyY1vLseXF2UnEj3OVti5yaoW7nggkgPY
a1HKA54mkm2hKzmlWE/jjQAXfjMoKpA/kcSR7srO9nCbVtOabymbiPTb02rF8eclmIduLeB/
JTu1rqjrRIk7SpJKJF4nX2KA9wKcmV6maBYG0zWJKd7Np2T2P8zikW3JPCuTVF1sWHj4Aw0i
SL7zJehnrVrRqeCkLo2rpIgML74VBh3lFnhul5OVa9nMQUX2cXED7GSwmzhbMBtTQ+uKsvTG
DI3h2awmrbUUDvQ0dMe+2lGSX8qW9T1boSH8RB1X8vGKQ9qVHFDlsjlXO3W0MFWYy3wO4DDk
I6O9DJsY5zkDAsTQC0I71BFF7APSImYC+ANN7G6r/nW5Pln/khkY2LAzIH6qJZqf0qwbgLja
slVCO0sxZHTszP8kwRKeyFbNrE+xhMriCG21z+uvtvzkJp95oSLifNCxC29XU9cDRzSd+l9T
WT0wILtQznbV05VoMh09qeFy2ETfx+mq2WClssxBxuyTGIKxQz26eChCOtlpx6FeW3V0iOU1
Qb4pA6B43MkA8reTgQldRxfdQ2s596e60e6q9mN3TPRzVue2YxG1CYD6NC0S6MiO0X2qeTxC
p3OrYzkH9rKVEdeIGIGQAArPbnDOB4wYQql1TNM711nqpRKuUzKCHacGRHWN6j6VGh6kA2p2
CpvIN7AdMCtcFBC6L4lNOZt8W4b4IenOKD1KDc60cC2HGM0VuBa6f0ipGH+ylkB/0y6fMoNn
WABMCwbRYqB7rmmh8Eg/XYlhQs/pYGIT47+ajC3qi+48PyTpgW34PjBdPTrwC15ySFfGYRo4
tkNNg7hEETQrEStpz0UKnFHz8fRMbA1aR7FTO/lNgK7mL8DNIwcT+8KTmChQIH2BItLg6+OV
nYDebjcxLtY1OTgcekFliE87/EoMPtG3sLuEEIW0yHLT/hSEBt9/mYV08h4Yxk5ILrUAeT8v
n+1ipM+/XAr5RR3P8sh6NVMaioGaoGp0hW65a5b2uImojdALm5CYfkB3yU4BxL/VoUVdBI5H
CgXTOy+8Oc2q0o+paQ9jlVg9NP/WYTpoJjqD9KSG8lAYRELcbkqcT7/F5eZnS3BrZ3BzpMwa
9j86F+awmGjh3vpPuCIzefVPqn7xXYfiDHf9FG71m71FRn04fZwvptdMIFKf5n8rfGqKaLqZ
jc7v4I4oJwl+WMVgdo9DVd5zOvEe0WaXZHWZR/Klb+J5SlqprJhDao4sg4tT6t6qsYOlEpAM
vBwIVnDERbevG9kwn/3Yx9kME8r2U4sEmxKQsKPGAAz3UZAHM6VeFxB2ZIzXsny/abMoahZ7
AKzSZocpkHY6zaeQMT4u1GoRyB/2bXJJ4ZVWG6ymAWIxY7OYHNBgULsXYTapISmcG4e2ts6O
RbpC/jUtmb6eacFplOdreb9r6dmq3DR6DUW2JmoAcueqQrmRi5uW49Pl/HH+6zpa/Hg/XH7b
jl4+Dx9X/dqybrheaag8XoMtjfpbVVj0VBHjlk2ZfZ19TffL6R+O5YU32JhsInNaCmuR1XH3
MbTqpmtZd9cS25MqJrYprDV6VkdS6X3Xdk/FucmCUOJwqBOkjAeGog0XKQNHaFNDWsYD/U2B
HBLkgh3qPKIlUVHmrIuztWNZ0B/mGgVnGTtuAIxaHT0euC2u1sUGbGhwapU5brx1EsVYzd/T
mSBUkInNegYrNDSLP3zzURS5S3rKQA88+dzR0RsnlDcriWwbyB5N9mnymCTL92kduShcJ9Jn
wyz3bapzI1jos7Xt7MlEbQNTllU4QW43zWAAZo61jDUoDtjOOJcX1G7ml3FAD9jkznYoS4gW
XzGWBqKN41AFGKWMTWQOZa1VIDug9c4DWx5NIX5sTWvNh0kZUdv8ACeRrQ8kRqebx4ANac7c
dSmYmN25xJO179yYALBrm1fJ0PF9wz7XfzH2FxERX0IjqMO2XP1tJVi4vujjYWC4NY1lvkCf
WRIc7PQ5M8DO7VY6DrEmDLBrO7dfwvWtG8uYxKdI0j1DDh8jcEglH2Ya71zqRTkW2mQfcWxi
EwvWgIVks+DYktm0tYzK5FA92GHU+B3QG5txzxTQX2ArBvqtGYQ2S2QxQuyRN3G2RyrB4RWO
zLn5Lj2XS71MDCamMfU+xN7H9kVl+mpMjWsKRtFxPKy4LZJNh3VsueZMmFuUhDjJpPGdPtyy
uBRrFrHH3k3XUZW0nrhqa75U7u0VaQm+EJsVMmfsuo7nN+CbuBmjulxgyQ0BSrAU4nkaSnSx
qkg9i1hSihR6gd6kAt+htJUyA7l4AELHF5cYxpa+aPQ7Hj2mV3wP+clIFEzFrelXNYlPrA11
4OgyB9uW9A8IexVJ3BPy7FL8i64DiXXg1hpACYeWLp0zOSEp9AZ0vUoB6AxaNWwD5+WKCzrW
hx/Xx5fj6UVSd4hISk9Ph9fD5fx2uCpKkCjJIC2nRWnaW4w7S4tiTo+v55fR9Tx6Pr4cr4+v
o6fzidVzRRrVKGFLrdQH4vc+m0EcXQjhkeeyFy6CUWBnhqBc8uy3OPtIrR8r+cpkiAne2pG4
fYWu/X8ef3s+Xg4iNwb9MpDeFb0NJ6j5HTqyEhxZdPXj++MTq+70dDD2HXolQzZrDlGnJOgo
L/ijDwgDL8T+EdXUP07Xb4ePo1LLJCSjHHLA64paHa7/d75857324z+Hy79H2dv74Zm/SUz2
lj9x+1ue6IknFz6cDpeXHyM+9mBsZrH8QDoOcX7HlmQMiN3hin2uuAg/fJxfweLpH3SzU09M
3ezUtkNKLMLxGJ8wGG0315tSvx8ev3++Q/Xck+/j/XB4+oZyapVptNxQBhytOmbf+TO1I/f5
cj4+o5dYJdU6S/bbek3p4zJZyQSRUMDmIC32ixSbgQIUR9WWJxQCkLauAa7FZrXUWJRW8y0a
9VBWpffsDygHs8gQXGxOalDn9X5WziNIbCbpCVcZe5O6jCpl04Ec13G+3O/yFfjuLe+/ks4w
4Ls/w3777Pc+mhe2E3hLdiBWvi+g0yQIXG9MKw9bHnB49qypMXJDzzM2N0t4TbuJ1jzhTZ0Q
TQO3cpu0SpAYXHkHRXTfUKTr0fMDsVCHFonBC22yVi8MNHoZJ2xeexq9isJQzr7akusgsZzI
JhrPENs25OLsWBa2TUZO7PA6sZ1wolfKYxJQPSaQnxTpunp3cLpP0Jvx2PUrko6ChbV0iMeE
VP8dPa9Dx9K7dRPbga1Xy8hjiyCXCWMfE+Xcc5fWdaPFFMpTY2AReG42hb+F6prkK9ZkUNB5
lT5MN5Is3RJ49kOU0qwDughNcgM7DK6JjHXsFR+3noySFPbEdQl+cTqiuDN2ZOHlq7Vom00r
MHW+0SwRAC7Zl4sHvVicCa2jKuE5+qbdU3FtOhScc/SikIzWEVu/n5ZaZh6+ryqaJXinaLvk
/PHj++HaZiWTBIldlu+jXQbfboZ0XmykzRiVuqJhCz5EfWXfge2qQ1sWkGgCdoWySssIhfzt
d4w/erf7tzcmCMav56fvIq4UiD9Ds6Q9Rg/TANRFnVB+g9JzegomDLKlES0vEqrZcFFMdeaz
1eQfcNkGPYPE4nlkKxkytkgkTuJ0bKk3HzKqxMkgmGoeUSuWviCQ22wtZK3IX0Cib2Np11jc
s3G7kv2QxFeuz5+XJzJcWBFl+XRNr2EZq2VjDM5cHd7O18P75fxEXq+n4AtZVmt9OlTvbx8v
hI1KWdTYFBQI/LKXuj3nYH9hKaRRVtkv9Y+P6+FttGYD/Nvx/VcQSZ+Ofx2fJK8rIWm+sSMS
I9fnWD1ITi/nx+en8xuFrXbl77PL4fDx9Mjk3bvzJbuj2I7/U+wo+t3n4ysrWS26Ey7X4LHX
vc7u+Ho8/a1w9r3Tpmndxhvy25UQeXo7q9I7yo5518SD6VD695XJ73peXMQMScH2X8TKP6xT
AjIEGmlRPXXbALiurLMY6J0viVpTl67NXFvVhJOxG2mF1oXvyxdXLRn8UvFeUrCBW0k7TiaD
Gdxs89AdFG0fT0kyeMhpmXUAX8LCD1yY3Lp+sL2Pqkv8d1aTz2isvFa2BaZVz+LILPX9EIBo
mPgCaB+gDl2olelWRAj7h1oYSpruMDl+ThHZsmKE/XYc9Du2fUsNdyZTccwzhCiKjSRS1Cg9
3UUhTQt26JO1PoIwUQiypavkdi1qdhO1pyGQwj6NW1x4BxBtWe7qZCI/ywmGdFkCQ++/3MVf
lrZly/m8YlfRsRdFNPZ835yoq8UNSboYinKuMELooSSdBfjn2XslG5+gqgS5pbvYs2TDVkYI
kMKzjiMX6ZLrZsmEFwcTppH/Xyv6mCgw54ln80ZaV0D1FmAFoDNBBzVOoW6qGOCN8aNjpajx
xFZ+u+g3Oyyi3xMH45OJrMiObdYz9h6lAuR2ZJgk0piy9RBR09U2zddlFwEJRwxgazES5BY7
k1WJ8Bkw5pbMm9jxyNRIHMHiIifROTfZZoNMs4Fg2/gmRdAMCSUZ5pJqBhBb0VmyiEvXkS8M
gOA5OOdfutp/tfX3buFVtMHpfHh2mS3stXHndNuX1Wee2Wd0aQPDFn3BOuG7d7FOVP9SyBSZ
xFZoo3NTRyV1px3o1ZZj60/Zju1SY75FrbC25fftHgprlI+sJQc2vv7gZFaA7WsV1+OJQaEs
4DAITc0SqTKjRO2DJo89n9T9bGeBbbVPyEvJ7HI+XUfpCSd4hzW+Stn6hKNPtFLo+yuTTpUV
J3SDXtEdfzu8HZ9Axc3tPGW+Jo/Yzr7QAnlMizTAOyf8VndDTkPH3DiuQ5ytLYvu1NSFg43e
1xB76gqL1ONzZ5EKVzXirImihXXboRBQsGe5ApNCTVG3LN15X8j+ddnVq9bJpZm67J8SlSry
08CAoqZwqFEqpDHUlQrWbnft8fvzdJWOBN0VBtuHHsUwMinzfSugjrOQSBFf+wMlNOn9fTpX
HgCecu/EKJS5OAP8iVPtp5EcUKylKiX4E5cSIAGR1Wzsd+B4Fe5EWOYD2SAFuMJA/a3fUvnB
RLukGsAxzvjNKfRmAFBAb2ccMnwNdfN2ccoGNr9DUghOyjUE45R35NrzsKFYETiuIQYE26B8
27Ap+qGDdy5vrKSyZqSJIT9II2wTQ8cQz0Dgvj+WqhBLpHiZ/uL2+fPtrQvziOeniNWYbudy
Jg0+iXjUHoGbEXEEUae0zNCfpNpo6of//Tycnn70F4f/gWAASVL/XuZ5NzOF7mQOV3uP1/Pl
9+T4cb0c//xs0/f0n3MiYl4IP5xvjx+H33L24OF5lJ/P76NfWIm/jv7qa/yQasTze8aEKf0y
t1sfXn5czh9P5/cDg9SdgJ+eLHyNDCTbVdYFQaQU+O0JLEBl7Kra89FOMrcD7be6s3AamsnS
uj5/qNbKIagoN66l59zFx9GmfRIUptSJtJm7wmBBbEOHx9frN2nP7KiX66h6vB5Gxfl0vOJO
nKWeJ0f3FQQ502+0cy1dlgSao2+En2/H5+P1B/G1CseV7VyTRYN33QUIStaNgG9deK8iS5T4
DwNfUzuG26FFsyF3gDoboyMW/Hb6Hs3YLLhC9Iy3w+PH5+XwdmCizifrRG0coux0LQmLI5ky
iLJhEPWtbKmG422xC6TFJlttYRAFfBBh81EEkTuCzEHt4XldBEm9M9FJmaDDtPKgO7ATvkxV
Vqn8+PLtSs32L2wMIMVElLNNwUL231GZ1BOXdJfi0AR9goU99pXf8ieLC9ex5VtOICBTUSZE
K9aLENqIVIMzIJAP+/PSiUo20iLLkhRhvchV587EwoaXGHPozZuDtiFitayWyc0BBluWslpT
hmNf6ogdd2T/wLKyUFCkrqFquO68qXDIoy1bQ7xYDvwV7TxsG7cuwVIRLRQlq9+xgEpOZ9vG
91NA8ahPUjdL18U+uGwQb7ZZTV5kNHHtejYSSzhpTJ0Xuy5o2OcQburDQ0AiU6QCMpYd9RnB
8+V75U3t26GDtpFtvMo9ky3nNi3ywDJkC9/mgU3q/76yTmc9bHczsnh8OR2uQrdJTMxlOBnL
Qi389uXf1mSCl/pWKVlE85Vx+5N5DHq3aO7aBq0jPJY26yKFSJayxUVRxK4v7N7UnZZXZdpp
uw+6KGI/9Fx9sLcAXhhVUHKwLj5fr8f318Pf6BTMj3qbPtBTdnp6PZ5MPS+fG1dxnq2I95V4
hMa7D9Ld1dHFYhr9BiaGp2d2GDsd1JN8Bpa11aZsKPU47kiIR0JxIbHu/XxlO+lx0JcP5whH
ngEJeOS4aIHwkeGJIMiqLybSW7K/FBBsVzkHiFk1zMkyJ8UZtbmsg+SdPy/KiW0N8ld5OXyA
lEBMkmlpBVYh2RZMi9LB8gH8VoVKTlNOemiJNoS/LlGnlbmNlUeCYhANWlCplVHZbKMWxqL2
sYaQ/8Zv0tLUMhnVpc5u7Yzkr6eJGZxKCiACQeJH4yPpdlE6ViA9+LWM2I4eaARcfEeUpi+X
Uk5g8zh860EK+f/Gjm2pjVz5K1SezqnabMA4XB54kDWyZ+K5MaPBNi9ThHiDawOkMJxl//50
S3PRpeWkiioz3a271GpJfalPL08/e7OpfHl+3z2idIyeFb7t9lpvlMhA7eKO2ch4D5xEGOcz
kaK9IW3T56gzat431tXcNtyv15A7vSsg7YVX9V9qXw7rFxUsxxUht48/8RxJLgpYuwnG5hNV
VvCiKVPPi3A3zaXIKK3ELF1fHp+ZNnUaYopoMiuPzbcr9W2wCwn8ypRJ1PfEYKC5nFkfbRJJ
G1CvEsljaUboQ3CZ5IuyMC1vESqLInXoRDV3aNCDW2fdOu7WmQBBmVrslo4EfAwuoQwQk5lI
2zjlEffp0fZ6Lh2gcpxpG6YDVLmSvPCndlJdq1jGhNvk6hqjQxryAIZTTriKTZ1XVycDYcn4
srXUv5S6KTBntDQ037iUrik6UuOSWXHEayGVpUxVpKkdOlrjZEJ4Lxy11wgtpjLeHNVvX/dK
v2JsVWfy3qlpjUILz9plkTN8YZ8gktZSiDdtuWbt5CLP2rhOKCZs0WBuxuigzpl2hzDsaDPr
w/E4DIC0HK6kyu0LukxRrOdR3wf4o1axwSH2qJzcD6BWTTZGtNNVniV5BOJHYto3OLjOnP3q
w9cdOqf84+Gf7p//PX3T/30w2KiX78GI4sw4rSpnasO1yOro9eXuXjFr3zzeckUAn/rqjDwv
ZBgipOJCqRgUjquIERsLVsmZYLTTbxSl0lbSMQhQI5rSM62N8YQP5XsSNeLyIhI2pvPe3ql3
jBmPqLihbG2RAFZGZudWz0SnptdPJrTeAk69Hg/shiTrK/eAMAubwuL8csLMTBSwPpmapjMI
dbRSMNxLZkLqpFjbX62hGDkORppkDrPUN6A7VNdXa9mMDFqj0pe5oMRaTlrbrV4HatdMSupu
H/CnfhIEwYKtMTgvp7x69DS14E2VyI1Vh6mf4fQ3Mpw6GdrpRc6rTemG6bFpPDeMHfLLLLIe
evE7SAyVyGac8diYoZVAz5NKzZMAAqmpZGsQ626nUUNv0GiqI76EFE3XTtXw+7opbC+d618M
AeLtzRshRa4ceigPmoFEK1blbrJQ7y7m9cSqasFDkLaYmBvEAEbXz9b80hjtmhSYxTItaF+c
Jh3ZjTPpjnEPsUZr3Dd7rJoBikUuKtrJ70BaNXlbsxyolIeQ2s8v1HUay+rOB6qXsZijh18r
KnCepG7vzid9E0cmO+l6le6VLoU7l3sw2TM9sp/FoWx1xxHVmdeBFW8RKe8tSf5FcGmZFmEv
mvsqvdzEGqVVl1dpWBdRoijJHklS0SLe8lCD7pBRY2MTwFtNMsFDLOdRxU2DyAtwheldU/d5
MDcetLf6FQA9FKGbbH0xgvaNlAxXAbajx6VtNUKDHa87GigrYYkW1/NMtjf0YVDjqGOgyotL
0xyzkcW8nlqzWMPcidNgfCxqwDBKW8o2NpsZYBg+KcGw1S38WIyFIGHpiqm402larGg2M6ZC
CZB+GjKI1jCmqkEHK46RVBmG0e7lF353/7C1o0nXatvyxAcefayK7FN0EylJwhMkkrq4PDs7
tnrnS5EmwtoMboGM7Nwmmuuk+u6pqD/NmfyUS7qwuWIz5hULpHAG8mYe5EVMDl6bOAiRJVuI
q+np+Zg2l94mqc8P++3bt+ejv6w6jWebquB0iQoDR8E0qszn7qWocrMZzuFV/zibifIhhbxB
Wz3ae1iFUTlC+zuLnKw6QFsZvsrZ3CESitm4wlgPhAlV157z9vEew6uLidIxj2j0LNiMmVtB
55tXLLNrqyGaGTuOoUep+bphdRyozM06VJksyWFDsDhC5rGUuAwlv87XU48cgGehBNWYvQVB
Cy3UHt+4UWo0ushdeFlLSyFXf+OySJnEQ17mXEB2BOltcQg5PYiMeRh9MZ2Ekbe1jMLYIMJt
Tb/qrZsdv109GX2B4Tf1N+mN1v9OCrNDfofe6iMqAd1pQ598+Lb968fd6/aDlzPXJ/5DhaNt
ziE8rEDqVmFT31iTufEWg4a0qyoUrrE5IOyCoLIqqqXDLnuuIMrYKawD0QeckSqh7fSKiNns
1WW3fU0N0TqtrY9xMHb754uLz5cfT4zhQIJ+v2qn5OOBRXJ+em7nPmLOrScRC3fxmXoXdUgm
gYwvTAV9BxOqjBXV2cGchKtJhhdySE6DGU+DmGADTIV9B3MZrOYlqXplk3wOtf/yNNTPl9PL
UGXOnaaBxIUzqb0IJDiZ2I4fXCSlaYA0yrUrXdQJDZ7Q4FMaHGjGZxp8RoPP3Zb1CErL1WrC
aShlIKKYRUI9FSLBskgu2squqoI1NixjHHduO6Jij+AileS9+UgAB7OmKvw8eVUwqQM1uphN
laSp6ci2xyyYoOFwUlv64ASq5wS5GVB5k1A7ktVisnayqZZJHbuZNnJOawJFqR9NpN7ev73g
A6Tn/ngpzNgnGL08gb0Cjq+AgGPswkBKDBIqIidJdyL34PDVRjGc/4UOUGyK+t2dBrojrtUT
jawSLn0CcwdRNt8xqyKRCx1dCc9yLTre5Z2Zxyh0umT0nXtRqZsAfXtPXvxDzbnKBMO76+ju
Ri0pdFsyGV99+LT/unv69Lbfvjw+f9t+fNj++IlPHP0QdQewsSMsNWgHe/VhSLguKi3MWjI/
dP9gFcxf/v35+nx0//yyPXp+OdIFG9buihiEgtLLAbpywSwDCRM88eHCDKllAH3SWbrkSRlb
PtocjJ8otuIwGkCftLL8HA8wktCQg52qB2vCQrVflqVPDUA/B5Q4iepYvso0LPIbLTgBBHbB
FkSdOrhfWHfhZZwMTfo2Smo2S4W+U6VEPE2+mJ9MLrIm9bLPm5QGTohCS/UbLgUl1+tGNMLL
Uf1EVDs0Jpwna2QMzKpfKOzt9QF1e+5B7P92JJ7uceGgy7B/dq8PR2y/f77fKVR093rnLSBu
BgHru8b2bt5Txgz+JsdlkW7Qz8yBCopFgrEpiEx6VEAoN4gmn88O0WQFMPGzgBcgk+aENhHu
SGpxndwQ8zRmSa4Q2rOAsihABrj3O3DG/bE1Y5P3MOlPcS595iW4nzY1L3eGmUcUvCYyhP1r
VRmxB+72D6GmZMzPMs7sWGh9SVB8uFtvstGCJNp93+5f/cIqfjohug7BFFSeHEdmeIB+rpLc
tZ+j1PKKSN8iPZJO8hkDtx1IlsCEESn++qwxi+ilgIizA1MT8LAG6ISnk0NzOmYnXjUQiI2g
ELoYD+x63h4QlOpvj81Ovazkojq59Md0VeoC9G6/+/lgPbsPrIDY3kWt3W14fCNvZgl9+ddT
VJwW/IddvFjNQUYNN5CzTICI7W93nNXSM4w0cNTEQjjpHrrbQYnGz9UvkdcyZre06+5uZFha
M8tTqc3WqaEW4lCGoiq1AwkvXXawk6UIuCDv0KvCHYLe/9FPVE+1rLiGnlJ3hD7jvC082MXU
n4vp7ZSCxf5ywQu6ftJWd0/fnh+P8rfHr9uX3uCMqh7L66TlJSXdRdVs0UfqIDAB7qtxrKZ1
cEwiTup6GBReuV8S9JkmUAet3HhYHWa2pJZfj/IqFiCrQ9LoQKE7LFgOyujhcrAWGDG0ILKI
6fc6Vm+yTOAZTp365KYkntDQnuovJW3tVfDi/e77k9YPvX/Y3v+9e/puPid1bi1nKePLFE6k
/XGUehNJclZt9KPr/GpQ0/36cvfy79HL89vr7skKoMmS6KwtjcA4s0RWAl3im/oq6sxqKhn2
mn9wVs05HDzncGJ3HpFNklTkAWwuJBzeE/P2c9Aq5ImrkQRbOAibibTOK9yKzAAU/i7P20Q2
rZ3q1NmYAEAq1rkkacLFbEN6oTcJpkTurFqxwOW1ppiRtyKAs5x2w/5jfRnXqWky82Uiblz4
rdedrDPqhLI8KrJA4zsa+kkGoZHw4bdozgaLxuamCurxWPoVCaFUzvSzUug9CanJ+tFvSApM
0a9vEex+t2vTHL2DKa3U0uK2HSZhZ/SG1uFZRb2LjEgZN9nMKw99xPo1m/EvHsyOHzQ2E3rJ
dNFtINa3AXpj9vVr1bx46hlJp8AxsMW64AkwkhsBzamsiGFMqR6KzAWh7kxrMQCEWy7FcxAv
2lo5X2qByyxk7OAQAVmo+ymzOhWPFU5HC2/PprD2jPai0x+toVGYl0P1KilkaoxDvUh1440F
p5SQ6mSRM9nYTjl52aBGWVvM51AfTnpSLBsQzs02R9cm402LmZkjfh9auXlqq1kNA6YiWVts
Jb1tJbN8wldRYk1l6CpKh6i6xrOSUcmstL3Lw8fctBeYF7n0A2Yj1FbAQbKLd4rVdijbWboC
nr2TQSsV7vzdtlxUwFKwKnWLsUkYdEV+mASf/9vpO+ket6vWsVf0yfH7SbB1dZOTDQT4yeR9
Qtpbolq8aVmhZjmuGe1MMTFOFWr+RaI0/U7XsAasqYdX0flimF+9PLHcvjxtfxw93PWSioL+
fNk9vf6trXoet/vvxvW6oRgDcskSTl4ZdcXM9fMyup9NQQZJh9vJ8yDFdYN6RdNh5iklFCKH
qTGLNznDKO7eW/FwQtj92H583T12wtheNelew1+oVmkdUBQTaWXiXN0lZg0e7pA5UENewZlQ
q75ewEHXHIASeCeas5hP1hVIrSpTQJkzpMlBzIqQeFYEbJvVa16xyknnfr02q8FxoST0Iuho
JWvCWmtKoipShnGQjJnjYFTTUPvXVkzUxRVoL7ASbKl8FWLgTkK/hqG5DEjCZhRHAzg8FOje
voKlNZZj0vk+2q3KoCaWciqotfq3j88gOEfbr2/fv+u5bnajWEsBxzLbV5fOB/FqYwgPQlkk
dZGHNKbGbFAX9wBJMUOFVXqwu2FKGaVsrR6RulbD7pvCAPjt6DHBDlOMBKR7VJ3zUt9QQk2n
Wq2cbcKqsfZd3Wg9C3Dfdt+8jDJRmXGeFitvUtJIzjUnZDkvbtC6DIN1cC9xrKOB6ltHHPYj
dOjy9lNzgfju6bu19OtiLvEJqikHH3lkixHVxg0wUwkCgFmqnrUDSvHGopFXJ5MhaCQ6/sa4
IplBVrLcvCgMkrQ3LG3EaGC2ujZDlhkTEmlhwRa0jrKF7/I8NroB2EPUTQWRRz6bc+YFNnIp
RPmLyQ8SZFb67odxRMY1efSf/c/dE96u7/84enx73b5v4Z/t6/2ff/75X8NMGRWwVb4qiIMn
fpQVzBlDzXqoi0qI4mNwKqOU2kixNq/auuk0umS2Jz9NvlppDKzYYqXeTh2CalVbqksaqmro
SKFaxbH0l2SHCDZGS4ZQAyFKqiDsPHXz0gkFtV1mCysAxV7nwDG2bJQlOpReirDs4GhovrCr
2aSQZiPUPgJtha0OrxZh1ukDbJiha/7oNSWpJcG1E4U4xEupWxeNUkrziRNNUKN4BVXNZeI4
HNE3gLwhNxg1HwFp9JTdteMRnjfKgLYNHAIQTw8LYpDTQl9Dl/asZ3JipXSHAIHimlC2cxoN
rEZv7VVoU9d02jYC9lI05jMvaaBiMbC1VDN1pb6prFrNyvSd3oqqUi4gOusNUts7ZN/BkhT3
SBui995+WY1COKIytsRt+boJXRYpKnRjqLv017UxRS+nrIxTRQWyGVcNKjtakeDyotSDabpx
xU113uQ68WHsomJlTNP0MvW8nyxWBro6mQpNB03Bg6VDgvbIagYiJchFlkM3nZw76swqEo/j
I1u5glP0TrDnXOL00jbqXgu6bQbPscHyrfw6gLGHjCOmcqCmOt41lF6EaQvcOk7wobtg+qgl
q6Ml5aRkLDJ7USuhECYUkwwP8eiwxJruNUZyE65kpc6Ky0VkrAL/q7c6577pr0J7+hI2ehlR
cuhwSm1mIJ1pczaMnc1Sa6Ur7KHkwD0wontSq0W7EpZihNaq6mhombzkg97HSnETSg4CIo00
5w9aOGnhB3ZW2LXPpia9yND3rpaPrLf1IsJ4cTAlnUP2OJdgDa+bksBlddLq07qJtNqC8xnF
U2XEGNSMXltvjfhF6cZrOHRODfLHLKVMybRoZWvVzDCKoVp0wR7H25dN2HpWs9Esa9zWlTJq
bH8Y/wcI36/osbkBAA==

--17pEHd4RhPHOinZp--
