Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDX3ZP2AKGQEXCRJ5AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B981A5E4E
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Apr 2020 13:37:52 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id q15sf5773541pgb.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Apr 2020 04:37:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586691471; cv=pass;
        d=google.com; s=arc-20160816;
        b=hvCp5mR96K0eEf/s29ga8VtxhdjZVSrZE+Me961QjreFQgFI8ijxio+LLqsoCmTtbi
         RjVick7u2j53SsSF9LTYTeZiBK4PDTgCqtKhffTDomQ6N3GbNqPWaeYDaKwHUrshNB0t
         DRTh7MBuflls/7fzHaS+1ngMi8K+qoA5+Jwy6HWoDNpYmrvHtGh/ln0qPDO8/uD6NxWH
         W/lwelXfN8hpY3LXkuq1+IebpGLyL7fvLRxDmCCZ8t9gbsymh7lqRfHstc0tC9kNilM2
         hsuCxN6zJwXZWvbreA19ZhA3KT8udYhQ5pPXG72pgApN0BFJjnnb8SFmImsEaYINgyHj
         jy3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=0egl0JqEVJpldfurX14/6tEAIsndCNUp+1j68T66aHA=;
        b=QYrj6KQiCfER8iYkcLHGvQXDeYG6GYcEVUQNH8YI4I3muW+QFh2GWp6WZsrffHtulz
         3p+MIRES4IKOIf9mShex1SSzg9JEgOSG9Gyv9ld4YNI0Y4ZqHdRJJaLdjnoLR05E2KQE
         TvlzZpe9Km7JOmN+CODmDqVTZDeb1VEvgjsMS0TpRK3MhWd4BT2AjoL9qRgsgoW8NSMG
         8nWGaaHspJhd3+HgKKzCeicYo+3IExQbjQqjKzn5jtOBIlYnTQZma9gBSLhuBTtQkbif
         I1fewdxACMHWy63nHPxrYwaV9OCrwyUKF3jal5yWjdmfBQcpCfCePdsMvVihjBlW/aSY
         gbjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0egl0JqEVJpldfurX14/6tEAIsndCNUp+1j68T66aHA=;
        b=Z0q/l4c9lKKAVqQeGOzv2rU2ghjlOAXC8vuPjLhOjSiEwDIyJ9Xaqzg/iT7LOVoc3B
         3Ayc5O8lk/F+AjKtxIBifJ48JwuZPuupzRW8YJOeSTbtXv7hKcxO84jkhABjuxF3Np8H
         9NP1WYk3mL9DIdPrDYNRMMQy4UnFMHoDn8oyO35DTtZEe4C8HKvoxyIbOGrBA6PCoRgK
         OvFSo0A+4JSnV0Lw/XxOKjwN4Jfo8O4pR2qwZEBgyO/l9ZIJKPgga7Kw/Tv6U0j7Vmqc
         iP4fOT3Fin4iP79KMG9pE2N5buVcs5OGbB3s3q6eKmoRdDTx8H+1Xh61tX2StXbNv4Rv
         u/4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0egl0JqEVJpldfurX14/6tEAIsndCNUp+1j68T66aHA=;
        b=DVHMEM4HBPtV4R1wugiwKe6QZ+C+h5aoPXXpY+cQdV2emSwRcJrsUkl9x3ctzTBNQD
         obNmDHCV+ABrHm2Anhp/stTJbHU1KVzxSZrx0qk2LDAAFgmF5eBUVvTIvnCJ6QfU70IO
         V4OtieVV9MaBA2hPEyJIjW1RYyL+TIZVWAbIIGjVEGfHsZgkh+coLPYzBrTrk+j+4JV8
         r6FnDJYyQ2zxEv4Md7Z9vovpNuiUDxKg0nqku2jp9muHdp/Xu56kLTpLp0EA/Z6ht6kz
         oLfLQh7JZjFR+tsdqPDnMGw8cMa47QcBcEp75vA5mN1EYY2hN51ChT9qG1rg58eMtSpX
         KftQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ+Pspsi3aP/xzSpI2rt30HQ6nkFZdaCb6CvkVuvMdIWWOAcYJr
	X1aPhuRwT39Tb9S1HVedkbU=
X-Google-Smtp-Source: APiQypJ2hbgx3ETKFzZsuvYKoC5WJu55MEkshQET3AOEH/bzK2rPirpfdfnJJeKvvIiV4LzN5MF+hA==
X-Received: by 2002:a63:d512:: with SMTP id c18mr12590480pgg.347.1586691471131;
        Sun, 12 Apr 2020 04:37:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls11677578pjo.2.canary-gmail;
 Sun, 12 Apr 2020 04:37:50 -0700 (PDT)
X-Received: by 2002:a17:90a:e50a:: with SMTP id t10mr16669198pjy.110.1586691470536;
        Sun, 12 Apr 2020 04:37:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586691470; cv=none;
        d=google.com; s=arc-20160816;
        b=SaqTsHYMdzA4i+l3zHYoQ4RbUZ313OewnKOVDxT3momAOpTHSPXlnL5Fbn9X8NUugt
         DER87vDAi88ecSppDBobMrkHnYM4jivqlZHoJBkn2rH5h8jLlTtkpK3NHaVLAjJQD6gz
         OlpmSjNAOAYjptUe6aFoQwIc9gxiFhRJgEZ5jchzgRT6f7hDX5jYt090MGQfwBEX3ZmH
         oJih62U1u3q4Q+h1BbKSiJaOFLGW+uEAwpxDQjz86xl/ZOykzsHQGvjoYjDAEeDvcdwn
         Imneg2Mmu+erxRtPjHRM50yrGU7OPg3EWdgJTnzjj3ZRps2HymZiRmMRUAYs4ixz9j5Y
         PWiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=YVqtkADaRUZ2OK8dZ4DjN4XyU8M4ZEzEOLjwyz9VbRk=;
        b=DDT9eLIlIFOldtKDDJCWVorPV7q7lHpsfNZ7TXNlS/ihePm6krQH0j+gSNxdAMMT9Y
         lwbF4ODXdwxyeVOllIZHiVrihKt9te/CsRFFK89kaLV55OBqiEVZe1DyxNIa+hZ3cRDZ
         bCYEoAZqTKe6qnYlP6JKUQ2GSz+X1pqCY0r8ym8vEUMXwpr4mszn/0z73/cCcoSSd2qm
         ZySjeNLHbZEZCGytqfm2iYNv6Zp9/VIzIjry24hO59NE+e+8qqTSzNwrOBj6Haq6vkko
         P9rg03xbSCDLB1y3B4M+bf+cky+LvMsxAUB2FwMfHlSu8MreCWQKC6/Dt08sCs4Z2qzR
         Cd0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id cv13si573886pjb.1.2020.04.12.04.37.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Apr 2020 04:37:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: h548fbcYp88t/bX8TFtPMDOxBy9ZshKYV9fqtdUTwCynLa78vwvjZdARI7lxxTsqeLgPWgxZbb
 Okvql8OEDQlA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2020 04:37:49 -0700
IronPort-SDR: bzZN2hoGmr0W+9u3F2AbvIgYKZgRA0SCXSIEktmFICpyxDqcCLvaIZSTrgupvo1QwFerYNxlaH
 G1EtNLeuj7oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,374,1580803200"; 
   d="scan'208";a="453948217"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 12 Apr 2020 04:37:47 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jNavr-0001aT-9R; Sun, 12 Apr 2020 19:37:47 +0800
Date: Sun, 12 Apr 2020 19:37:20 +0800
From: kbuild test robot <lkp@intel.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	kvm@vger.kernel.org, virtualization@lists.linux-foundation.org,
	netdev@vger.kernel.org
Subject: [vhost:vhost 54/54] drivers/virtio/Kconfig:49: syntax error
Message-ID: <202004121907.Djq7hPBe%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mst/vhost.git vhost
head:   e282a85dc20e6d5da055e65c48aae15cc14897c7
commit: e282a85dc20e6d5da055e65c48aae15cc14897c7 [54/54] vdpa: make vhost, virtio depend on menu
config: powerpc-defconfig
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 4e86e5eedc684453fe0af6eca2ebdbff33db012c)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout e282a85dc20e6d5da055e65c48aae15cc14897c7
        COMPILER=clang make.cross ARCH=powerpc  defconfig
        COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/virtio/Kconfig:49: syntax error
>> drivers/virtio/Kconfig:48: unknown statement "depend"
>> drivers/virtio/Kconfig:49: invalid statement
   drivers/virtio/Kconfig:50: invalid statement
>> drivers/virtio/Kconfig:51: unknown statement "This"
   drivers/virtio/Kconfig:52:warning: ignoring unsupported character '.'
   drivers/virtio/Kconfig:52:warning: ignoring unsupported character ','
>> drivers/virtio/Kconfig:52: unknown statement "device"
>> drivers/virtio/Kconfig:53: unknown statement "an"
>> drivers/virtio/Kconfig:54: unknown statement "physical"
   drivers/virtio/Kconfig:55:warning: ignoring unsupported character '.'
>> drivers/virtio/Kconfig:55: unknown statement "offloaded"
   drivers/virtio/Kconfig:57:warning: ignoring unsupported character ','
   drivers/virtio/Kconfig:57:warning: ignoring unsupported character '.'
>> drivers/virtio/Kconfig:57: unknown statement "If"
   make[2]: *** [scripts/kconfig/Makefile:85: defconfig] Error 1
   make[1]: *** [Makefile:568: defconfig] Error 2
   make: *** [Makefile:180: sub-make] Error 2
   4 real  1 user  1 sys  59.31% cpu 	make defconfig
--
>> drivers/virtio/Kconfig:49: syntax error
>> drivers/virtio/Kconfig:48: unknown statement "depend"
>> drivers/virtio/Kconfig:49: invalid statement
   drivers/virtio/Kconfig:50: invalid statement
>> drivers/virtio/Kconfig:51: unknown statement "This"
   drivers/virtio/Kconfig:52:warning: ignoring unsupported character '.'
   drivers/virtio/Kconfig:52:warning: ignoring unsupported character ','
>> drivers/virtio/Kconfig:52: unknown statement "device"
>> drivers/virtio/Kconfig:53: unknown statement "an"
>> drivers/virtio/Kconfig:54: unknown statement "physical"
   drivers/virtio/Kconfig:55:warning: ignoring unsupported character '.'
>> drivers/virtio/Kconfig:55: unknown statement "offloaded"
   drivers/virtio/Kconfig:57:warning: ignoring unsupported character ','
   drivers/virtio/Kconfig:57:warning: ignoring unsupported character '.'
>> drivers/virtio/Kconfig:57: unknown statement "If"
   make[2]: *** [scripts/kconfig/Makefile:75: oldconfig] Error 1
   make[1]: *** [Makefile:568: oldconfig] Error 2
   make: *** [Makefile:180: sub-make] Error 2
   4 real  1 user  1 sys  66.71% cpu 	make oldconfig
--
>> drivers/virtio/Kconfig:49: syntax error
>> drivers/virtio/Kconfig:48: unknown statement "depend"
>> drivers/virtio/Kconfig:49: invalid statement
   drivers/virtio/Kconfig:50: invalid statement
>> drivers/virtio/Kconfig:51: unknown statement "This"
   drivers/virtio/Kconfig:52:warning: ignoring unsupported character '.'
   drivers/virtio/Kconfig:52:warning: ignoring unsupported character ','
>> drivers/virtio/Kconfig:52: unknown statement "device"
>> drivers/virtio/Kconfig:53: unknown statement "an"
>> drivers/virtio/Kconfig:54: unknown statement "physical"
   drivers/virtio/Kconfig:55:warning: ignoring unsupported character '.'
>> drivers/virtio/Kconfig:55: unknown statement "offloaded"
   drivers/virtio/Kconfig:57:warning: ignoring unsupported character ','
   drivers/virtio/Kconfig:57:warning: ignoring unsupported character '.'
>> drivers/virtio/Kconfig:57: unknown statement "If"
   make[2]: *** [scripts/kconfig/Makefile:75: olddefconfig] Error 1
   make[1]: *** [Makefile:568: olddefconfig] Error 2
   make: *** [Makefile:180: sub-make] Error 2
   4 real  1 user  1 sys  66.26% cpu 	make olddefconfig

vim +49 drivers/virtio/Kconfig

e72542191cbba4 Ohad Ben-Cohen     2011-07-05  14  
3343660d8c62c6 Anthony Liguori    2007-11-12  15  config VIRTIO_PCI
d72c5a8c8c57cb Kees Cook          2012-10-02  16  	tristate "PCI driver for virtio devices"
d72c5a8c8c57cb Kees Cook          2012-10-02  17  	depends on PCI
3343660d8c62c6 Anthony Liguori    2007-11-12  18  	select VIRTIO
3343660d8c62c6 Anthony Liguori    2007-11-12  19  	---help---
b2a6d51ddf7b23 Michael S. Tsirkin 2015-01-15  20  	  This driver provides support for virtio based paravirtual device
3343660d8c62c6 Anthony Liguori    2007-11-12  21  	  drivers over PCI.  This requires that your VMM has appropriate PCI
3343660d8c62c6 Anthony Liguori    2007-11-12  22  	  virtio backends.  Most QEMU based VMMs should support these devices
3343660d8c62c6 Anthony Liguori    2007-11-12  23  	  (like KVM or Xen).
3343660d8c62c6 Anthony Liguori    2007-11-12  24  
3343660d8c62c6 Anthony Liguori    2007-11-12  25  	  If unsure, say M.
3343660d8c62c6 Anthony Liguori    2007-11-12  26  
46506da5f365ef Michael S. Tsirkin 2015-01-15  27  config VIRTIO_PCI_LEGACY
46506da5f365ef Michael S. Tsirkin 2015-01-15  28  	bool "Support for legacy virtio draft 0.9.X and older devices"
46506da5f365ef Michael S. Tsirkin 2015-01-15  29  	default y
46506da5f365ef Michael S. Tsirkin 2015-01-15  30  	depends on VIRTIO_PCI
46506da5f365ef Michael S. Tsirkin 2015-01-15  31  	---help---
46506da5f365ef Michael S. Tsirkin 2015-01-15  32            Virtio PCI Card 0.9.X Draft (circa 2014) and older device support.
46506da5f365ef Michael S. Tsirkin 2015-01-15  33  
46506da5f365ef Michael S. Tsirkin 2015-01-15  34  	  This option enables building a transitional driver, supporting
46506da5f365ef Michael S. Tsirkin 2015-01-15  35  	  both devices conforming to Virtio 1 specification, and legacy devices.
46506da5f365ef Michael S. Tsirkin 2015-01-15  36  	  If disabled, you get a slightly smaller, non-transitional driver,
46506da5f365ef Michael S. Tsirkin 2015-01-15  37  	  with no legacy compatibility.
46506da5f365ef Michael S. Tsirkin 2015-01-15  38  
46506da5f365ef Michael S. Tsirkin 2015-01-15  39            So look out into your driveway.  Do you have a flying car?  If
46506da5f365ef Michael S. Tsirkin 2015-01-15  40            so, you can happily disable this option and virtio will not
46506da5f365ef Michael S. Tsirkin 2015-01-15  41            break.  Otherwise, leave it set.  Unless you're testing what
46506da5f365ef Michael S. Tsirkin 2015-01-15  42            life will be like in The Future.
46506da5f365ef Michael S. Tsirkin 2015-01-15  43  
46506da5f365ef Michael S. Tsirkin 2015-01-15  44  	  If unsure, say Y.
46506da5f365ef Michael S. Tsirkin 2015-01-15  45  
c043b4a8cf3b16 Jason Wang         2020-03-26  46  config VIRTIO_VDPA
c043b4a8cf3b16 Jason Wang         2020-03-26  47  	tristate "vDPA driver for virtio devices"
e282a85dc20e6d Michael S. Tsirkin 2020-04-12 @48  	depend on VDPA
c043b4a8cf3b16 Jason Wang         2020-03-26 @49  	select VIRTIO
c043b4a8cf3b16 Jason Wang         2020-03-26  50  	help
c043b4a8cf3b16 Jason Wang         2020-03-26 @51  	  This driver provides support for virtio based paravirtual
c043b4a8cf3b16 Jason Wang         2020-03-26 @52  	  device driver over vDPA bus. For this to be useful, you need
c043b4a8cf3b16 Jason Wang         2020-03-26 @53  	  an appropriate vDPA device implementation that operates on a
c043b4a8cf3b16 Jason Wang         2020-03-26 @54  	  physical device to allow the datapath of virtio to be
c043b4a8cf3b16 Jason Wang         2020-03-26 @55  	  offloaded to hardware.
c043b4a8cf3b16 Jason Wang         2020-03-26  56  
c043b4a8cf3b16 Jason Wang         2020-03-26 @57  	  If unsure, say M.
c043b4a8cf3b16 Jason Wang         2020-03-26  58  

:::::: The code at line 49 was first introduced by commit
:::::: c043b4a8cf3b16fbdcaec1126841431c33b16e98 virtio: introduce a vDPA based transport

:::::: TO: Jason Wang <jasowang@redhat.com>
:::::: CC: Michael S. Tsirkin <mst@redhat.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004121907.Djq7hPBe%25lkp%40intel.com.
