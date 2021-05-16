Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBU4ZQWCQMGQEZUDXMRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8987A382014
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 May 2021 18:48:20 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id i187-20020a6b3bc40000b029043a2c9683dfsf1911335ioa.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 May 2021 09:48:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621183699; cv=pass;
        d=google.com; s=arc-20160816;
        b=bwbOVW+fttjoX9MiB1AvnIdAiUURn5WWq+FbIQy2k8ff7JXZGtuMp4pdC/P744rR16
         Ab3jljiMfocy75900e1hdqWcBJWgqdSq+pRzTkmG42j+IA/tp04cy8L2H1GZ00wqUbLi
         vnMxn7zoh/qlp7EQJQD34AtEBzPdsQuzO8R8y7VKy8kdLK3UzdlBdHkdDlTPs1pcLRzE
         1Uxf4K3Y+05qKqkTnAPQLhLuc47vkyMItpi9/T9UNHmacE5NjoSbrRTqCBLdOLnDkX0u
         bslmonQ+A+iDNYg1206uFiaUDUQIESdEdyqTz3bJekHEPsmKv71PRU2VCrRAm7ZaheH9
         RVZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=rkfIdEsHmgQHHv/6Q/6IZg/ZCdbJV2qEgvOPiBMFOLQ=;
        b=FgbNIMrUBZD3NvR6XcSNhs5NATKG5z1lhqGQuJm1TB7WnP3+tg4QufOP0zcMsG+sKN
         mhIxPPB/KMkhChxbBEoM3HU0y0Wps0UdbBxn4ZH+T1kbynzkAQEcVfSqbMJh9ZAsz9FT
         45DwQrR7WIAiRt8VEdFR5HE22BqKYEEdJb8n3GG2URcHRYEb7ZyTxP6hE72dwHsIokO3
         QWTnhPP3STC1Rpv9PJ7gkaZ6NBNwRNkAsHxD1Mgaztl3JOtoLXORVOVUO3bePAhoxNwa
         6Od2dRjdWBiDzhwnqUiz5NdpLtkMjFwXf09mNObHfrP/cdAJCV+eWh1i1Flh2IsTeS4U
         ouTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rkfIdEsHmgQHHv/6Q/6IZg/ZCdbJV2qEgvOPiBMFOLQ=;
        b=n1mhx8QPemw4JRjlwS1HTyOsBpb8eCSOHNG43Q6SDrIcoYr/4oZIb0v+5CLGi1aJpf
         /gfvpgkQ+o/l/D2xnTBbhHoyFg17YsLxSvr+sBJxwleAKW2AYVRi7eqBCWibkJqvfi6b
         CxccJojBNzG0UDDaC0XTADg35CH/K92GGq9gJUICC0HIWwhIG1elbqxKcyXGSM/DoLWR
         Z7XXMpQsIPGgut8lSpjDbTRCaz+cNWyMzJpqiCVggVYLTorE6jgTjgVxjOiq5wXbr3K3
         LDU1Jpy65/5nHXIqKURKJHJJraFqz0/z3oMH9U32qPFfiHLjnhOSfD4N2ohy8plpryoj
         gVUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rkfIdEsHmgQHHv/6Q/6IZg/ZCdbJV2qEgvOPiBMFOLQ=;
        b=XxfoIqJZvOBCWtANvFf+aGrP/NBUwxqzGMJYs1Bneyi9t0o3IxpdiJ9JMryyFGoJw4
         PPLArAwqmzhTEIeYIU++wFubcWMRWvAQkCIB7RjpmlH7gUSVPe3UxQIRGRLjLo95BKF+
         OyyCHhBajrYdxUUOhgkrF6AxqdX9F0m4+OkkBLRQ7B3OaZeQ0xTfs0FaUHaJu3z1UjXZ
         VBi+qSThfTa/7vjrM5Bey5mi1Wvb2OYnuij40tBqTG+mwJf145TWYUj39q+dptVWWNro
         0tI7UL7sAQcNQ+5TTISDostP6GokaudZbg41vEJFktTrTj+Suqt9zmu0FAPvKyX1tgE8
         ggkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531itlWkQKxtYGh0omLflHHWdE6v18wMjJkJf6JeLpSAbakN6/Fb
	T/0X/e4Unv0/RdNUOWZRAWk=
X-Google-Smtp-Source: ABdhPJyrvzI/+kIXtPAUrimc7O/iC/b0i5Ij3lrGv96GSb3Ythymw3DMLZgAu8qsz4JphyF3E6dtBw==
X-Received: by 2002:a05:6602:18:: with SMTP id b24mr41723533ioa.1.1621183699231;
        Sun, 16 May 2021 09:48:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:c00c:: with SMTP id u12ls2154130iol.7.gmail; Sun, 16 May
 2021 09:48:18 -0700 (PDT)
X-Received: by 2002:a5d:8e08:: with SMTP id e8mr42369290iod.47.1621183698598;
        Sun, 16 May 2021 09:48:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621183698; cv=none;
        d=google.com; s=arc-20160816;
        b=bydkf7G3gTDnXxyteQuf1zHBgGENKc6LbEybfT+g8afG6gXQBeXe1rgTuC4M0sARFK
         xK5UwsRurJnWyrWFppiPlns9aML+nTn6U+a72s1CqSd5MDVbn99SjZTavODZ1e/IK+P9
         hTWCq3N2pYTcDNDX7mIvGsGn6volc94zbuVndp4O7bn3NqGTyeq7IaO5XSEV6ppE1r74
         zuhCiufjKwfPe2eT2SXE2BkBiexBj5/Af9nYx9AaJB4FRkACEQtQZILrpQPk1+tKafrZ
         kiPnsoHbod8sv1lS8Jg+u3mmQrcekXUG2539Za6isYOtbfOpSGMEokDM15iSnb9pbRXr
         37yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ltcXM95Ze0kW9PpxqUpfYUGoqY0HGRhFldkvV/l5thw=;
        b=FJtPccPI/Iifem2JTl9CDUK1r0GctNar7K+xDbIHW0zk5qfxxCrZSipZsevAF77CKe
         IrztEPxIztS1A1EGmIlKrOYDdwQV+XxMT+YbSGdmOXVDC/VUUnUMDBElS4+8Vz2i3lzN
         uIJSM95C2AOgV5aGsCejYxnGYx3pC+FzhZdkFGmhwsjfCA1zFo6ra6YIKn1vYTQLn08D
         8cLUWtoWkDyPW+9tmpP9oUWwtm3opEks5q5S9EJ+dP/PV1n7DBwB4ujfeyH2fdaCm8Qv
         dIDkVQeL1EBuFyuEY7BLg5rTsR4VQiU3EP4Y9qZ02FMjPknrbDP5M29meT/onoNNrffL
         xPCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id z2si1027849ilo.2.2021.05.16.09.48.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 May 2021 09:48:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: xThsXS00rJgReRIhDGR7JcyZaI6EqNrH29c5epW14ELPCPwwG1uivOa1K4/ycjsj2KbHquQSl6
 uRR36n2iYL7w==
X-IronPort-AV: E=McAfee;i="6200,9189,9986"; a="200394766"
X-IronPort-AV: E=Sophos;i="5.82,304,1613462400"; 
   d="gz'50?scan'50,208,50";a="200394766"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 May 2021 09:48:16 -0700
IronPort-SDR: NSU6gC9EQVFjjI7mbJHd/xcrLj1FbehknVq5x+ETm5p1iYbTBm9B5H9j8JX3a0o1GH4SxaPfBG
 Sw9a0Jz5ShIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,304,1613462400"; 
   d="gz'50?scan'50,208,50";a="437320704"
Received: from lkp-server01.sh.intel.com (HELO ddd90b05c979) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 16 May 2021 09:48:14 -0700
Received: from kbuild by ddd90b05c979 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1liJw6-0001UL-8P; Sun, 16 May 2021 16:48:14 +0000
Date: Mon, 17 May 2021 00:47:50 +0800
From: kernel test robot <lkp@intel.com>
To: Marc Zyngier <maz@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: [arm-platforms:irq/domain_cleanup 6/31] drivers/mfd/ioc3.c:86:26:
 error: incomplete definition of type 'struct irq_domain'
Message-ID: <202105170040.9NKnhJZB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tThc/1wpZn/ma/RB"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--tThc/1wpZn/ma/RB
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git irq/domain_cleanup
head:   2360898eeecf0ff64ae1edf24f632228a09badef
commit: 1831090db122e348023e4c53849586df3991b17e [6/31] MIPS: Do not include linux/irqdomain.h from asm/irq.h
config: mips-randconfig-r031-20210516 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a80a5036a1f6b9a9eb4038b30458f9ab349efff8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/commit/?id=1831090db122e348023e4c53849586df3991b17e
        git remote add arm-platforms https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git
        git fetch --no-tags arm-platforms irq/domain_cleanup
        git checkout 1831090db122e348023e4c53849586df3991b17e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers/mfd/ioc3.c:86:26: error: incomplete definition of type 'struct irq_domain'
           irq_set_chip_data(irq, d->host_data);
                                  ~^
   include/linux/irq.h:128:8: note: forward declaration of 'struct irq_domain'
   struct irq_domain;
          ^
>> drivers/mfd/ioc3.c:96:36: error: variable has incomplete type 'const struct irq_domain_ops'
   static const struct irq_domain_ops ioc3_irq_domain_ops = {
                                      ^
   drivers/mfd/ioc3.c:96:21: note: forward declaration of 'struct irq_domain_ops'
   static const struct irq_domain_ops ioc3_irq_domain_ops = {
                       ^
   drivers/mfd/ioc3.c:104:37: error: incomplete definition of type 'struct irq_domain'
           struct ioc3_priv_data *ipd = domain->host_data;
                                        ~~~~~~^
   include/linux/irq.h:128:8: note: forward declaration of 'struct irq_domain'
   struct irq_domain;
          ^
   drivers/mfd/ioc3.c:114:9: error: implicit declaration of function 'irq_find_mapping' [-Werror,-Wimplicit-function-declaration]
                   irq = irq_find_mapping(domain, __ffs(pending));
                         ^
>> drivers/mfd/ioc3.c:140:7: error: implicit declaration of function 'irq_domain_alloc_named_fwnode' [-Werror,-Wimplicit-function-declaration]
           fn = irq_domain_alloc_named_fwnode("IOC3");
                ^
>> drivers/mfd/ioc3.c:140:5: warning: incompatible integer to pointer conversion assigning to 'struct fwnode_handle *' from 'int' [-Wint-conversion]
           fn = irq_domain_alloc_named_fwnode("IOC3");
              ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/mfd/ioc3.c:144:11: error: implicit declaration of function 'irq_domain_create_linear' [-Werror,-Wimplicit-function-declaration]
           domain = irq_domain_create_linear(fn, 24, &ioc3_irq_domain_ops, ipd);
                    ^
>> drivers/mfd/ioc3.c:146:3: error: implicit declaration of function 'irq_domain_free_fwnode' [-Werror,-Wimplicit-function-declaration]
                   irq_domain_free_fwnode(fn);
                   ^
   drivers/mfd/ioc3.c:619:42: error: incomplete definition of type 'struct irq_domain'
                           struct fwnode_handle *fn = ipd->domain->fwnode;
                                                      ~~~~~~~~~~~^
   include/linux/irq.h:128:8: note: forward declaration of 'struct irq_domain'
   struct irq_domain;
          ^
>> drivers/mfd/ioc3.c:621:4: error: implicit declaration of function 'irq_domain_remove' [-Werror,-Wimplicit-function-declaration]
                           irq_domain_remove(ipd->domain);
                           ^
   drivers/mfd/ioc3.c:622:4: error: implicit declaration of function 'irq_domain_free_fwnode' [-Werror,-Wimplicit-function-declaration]
                           irq_domain_free_fwnode(fn);
                           ^
>> drivers/mfd/ioc3.c:582:46: warning: shift count >= width of type [-Wshift-count-overflow]
           ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
                                                       ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/mfd/ioc3.c:649:41: error: incomplete definition of type 'struct irq_domain'
                   struct fwnode_handle *fn = ipd->domain->fwnode;
                                              ~~~~~~~~~~~^
   include/linux/irq.h:128:8: note: forward declaration of 'struct irq_domain'
   struct irq_domain;
          ^
   drivers/mfd/ioc3.c:651:3: error: implicit declaration of function 'irq_domain_remove' [-Werror,-Wimplicit-function-declaration]
                   irq_domain_remove(ipd->domain);
                   ^
   drivers/mfd/ioc3.c:652:3: error: implicit declaration of function 'irq_domain_free_fwnode' [-Werror,-Wimplicit-function-declaration]
                   irq_domain_free_fwnode(fn);
                   ^
   2 warnings and 13 errors generated.


vim +86 drivers/mfd/ioc3.c

0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   76  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   77  static int ioc3_irq_domain_map(struct irq_domain *d, unsigned int irq,
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   78  			      irq_hw_number_t hwirq)
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   79  {
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   80  	/* Set level IRQs for every interrupt contained in IOC3_LVL_MASK */
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   81  	if (BIT(hwirq) & IOC3_LVL_MASK)
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   82  		irq_set_chip_and_handler(irq, &ioc3_irq_chip, handle_level_irq);
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   83  	else
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   84  		irq_set_chip_and_handler(irq, &ioc3_irq_chip, handle_edge_irq);
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   85  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  @86  	irq_set_chip_data(irq, d->host_data);
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   87  	return 0;
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   88  }
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   89  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   90  static void ioc3_irq_domain_unmap(struct irq_domain *d, unsigned int irq)
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   91  {
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   92  	irq_set_chip_and_handler(irq, NULL, NULL);
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   93  	irq_set_chip_data(irq, NULL);
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   94  }
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   95  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  @96  static const struct irq_domain_ops ioc3_irq_domain_ops = {
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   97  	.map = ioc3_irq_domain_map,
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   98  	.unmap = ioc3_irq_domain_unmap,
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09   99  };
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  100  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  101  static void ioc3_irq_handler(struct irq_desc *desc)
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  102  {
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  103  	struct irq_domain *domain = irq_desc_get_handler_data(desc);
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  104  	struct ioc3_priv_data *ipd = domain->host_data;
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  105  	struct ioc3 __iomem *regs = ipd->regs;
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  106  	u32 pending, mask;
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  107  	unsigned int irq;
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  108  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  109  	pending = readl(&regs->sio_ir);
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  110  	mask = readl(&regs->sio_ies);
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  111  	pending &= mask; /* Mask off not enabled interrupts */
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  112  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  113  	if (pending) {
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  114  		irq = irq_find_mapping(domain, __ffs(pending));
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  115  		if (irq)
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  116  			generic_handle_irq(irq);
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  117  	} else  {
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  118  		spurious_interrupt();
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  119  	}
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  120  }
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  121  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  122  /*
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  123   * System boards/BaseIOs use more interrupt pins of the bridge ASIC
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  124   * to which the IOC3 is connected. Since the IOC3 MFD driver
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  125   * knows wiring of these extra pins, we use the map_irq function
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  126   * to get interrupts activated
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  127   */
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  128  static int ioc3_map_irq(struct pci_dev *pdev, int slot, int pin)
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  129  {
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  130  	struct pci_host_bridge *hbrg = pci_find_host_bridge(pdev->bus);
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  131  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  132  	return hbrg->map_irq(pdev, slot, pin);
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  133  }
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  134  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  135  static int ioc3_irq_domain_setup(struct ioc3_priv_data *ipd, int irq)
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  136  {
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  137  	struct irq_domain *domain;
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  138  	struct fwnode_handle *fn;
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  139  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09 @140  	fn = irq_domain_alloc_named_fwnode("IOC3");
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  141  	if (!fn)
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  142  		goto err;
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  143  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09 @144  	domain = irq_domain_create_linear(fn, 24, &ioc3_irq_domain_ops, ipd);
e3beca48a45b5e Thomas Gleixner     2020-07-09  145  	if (!domain) {
e3beca48a45b5e Thomas Gleixner     2020-07-09 @146  		irq_domain_free_fwnode(fn);
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  147  		goto err;
e3beca48a45b5e Thomas Gleixner     2020-07-09  148  	}
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  149  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  150  	ipd->domain = domain;
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  151  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  152  	irq_set_chained_handler_and_data(irq, ioc3_irq_handler, domain);
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  153  	ipd->domain_irq = irq;
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  154  	return 0;
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  155  
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  156  err:
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  157  	dev_err(&ipd->pdev->dev, "irq domain setup failed\n");
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  158  	return -ENOMEM;
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  159  }
0ce5ebd24d25f0 Thomas Bogendoerfer 2020-01-09  160  

:::::: The code at line 86 was first introduced by commit
:::::: 0ce5ebd24d25f02c73940f047b12733d84b125e8 mfd: ioc3: Add driver for SGI IOC3 chip

:::::: TO: Thomas Bogendoerfer <tbogendoerfer@suse.de>
:::::: CC: Paul Burton <paulburton@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105170040.9NKnhJZB-lkp%40intel.com.

--tThc/1wpZn/ma/RB
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
q+bzHpkBAA==

--tThc/1wpZn/ma/RB--
