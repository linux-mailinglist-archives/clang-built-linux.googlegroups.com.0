Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBT7W7GDQMGQEXTDUJSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 707343D5624
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 11:07:28 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id bm25-20020a05620a1999b02903a9c3f8b89fsf8468355qkb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 02:07:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627290447; cv=pass;
        d=google.com; s=arc-20160816;
        b=w92nTIF4GITOHsKPly3nasuSOvMNkrcRnqUbnG6Y3egex/Ipm+MeVytMJcpTn13vpD
         R8RhieBkQ7En+fHPuNriFU6pLK4giK9c8YQGgmtR2ACHuOds9gi17FYB90iyfz7G7ddT
         z3KIx6/5G8tzlWSIrdxx3NkYaBdXJrrtZEjL02PgCi+HO1NFff2qE75kxIXn8mLMD3Fi
         M9+JfJnb3sfb45bzUIvKm93/PzA7yF7es6MTjkOJw87pHOUoqTRtxrTxvFwqvcog4nH4
         37fdWuwLsF6p2lldGHQKigC+V2fKmJuU8jfSiUxSlriUS8J+wtQdvNoRHBzXuQuSsiba
         VyDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wLXA4oH3+K/1+puxakBJkpCQlB59kuFP9xCATxfH6Vw=;
        b=YRwb2hr0smTRkrpb03udoC1c+7sK1PKs9bhZq7FLkq/EJDdOwoO8fgUBkm25vgutqt
         2S+Xmmh93vyn1vzMb7yRhvrX+WVZFqFhArbOqctDB8b/AiD7R3X6lzPIKUDfBSm2x2fs
         MkD6Go7Cn6TXLDAfOVlQeTBciUe1fLHni6zXs6bNHe6Py1zOL9Ojar9AwwT5gUl/9pLF
         GU7jrccIsBQ3eOQoycXJs0Mp3E3CKvoalRHIgJbNmkWDu6XYhJU2qXjXjUbToId8+oWl
         dltHyxggTi0uRna+PDCQW4uGqexgJmxa/CDgB8MmxC9V4LUrHR8Je9092OeP4wGhTiha
         zS+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wLXA4oH3+K/1+puxakBJkpCQlB59kuFP9xCATxfH6Vw=;
        b=OaIN0YeGb20t6iDZk5lSm0Z9ktQhrFvNdLPo/ki2fA6NRCUb/MzoW37eupQfWZjv6B
         2+Zpc9oeKfpaElItonFb4PZ4GfSXQKuejPNlzCHdchMcnc1yzXvxXedcH0dk/GFOJ+YN
         EJjOXAss1epMSXF+4LyIEMzDoV6cdudtHkjFxE6WcgHS5LoDpmy3B3dXdBXYhwPOCHWU
         VLjNrBsY8cs8zMQHEtbzC6vOMC2JWtgI/ezTlF0eeVNHknKnRGieCf4IQ7+WjS/rs2KX
         CSwgvchyd075dxSkvIWVISju1hspxmjFeGlj7Dd7H9CROl3WRdlUQR6yLx3Ph2DPEzbW
         8oSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wLXA4oH3+K/1+puxakBJkpCQlB59kuFP9xCATxfH6Vw=;
        b=eApcCPJUav9cuL3J+rGjj14Hr9TiapEuCNEWDA4hiNeAEi8/vc9HOSNkSkqDKoEjdg
         OhJs4L3fGs0aA5iKrLb2dJO2fl/zZQZxLWVTphjx39uE4wfwITmleh+ZVMRsRtWjsDAf
         iZeeuZEDhTxN5iWK8oULmhar6dZJZzp3W1kECsH2Ir0Eufl0wJVKuvJLvySElYFblXWD
         Otf1czb7hnSXyJ0eNK1haihZxQjoa9hXhcKys9kVoVjAZBuW07qkaaSwrY1xQUXdIYwh
         X3QZGQp3txmPnkbU/U9rWjY+rVmImSgu4PsLYONsoZZUyoFNvfhVu3cXfNbw+xh4IP1C
         vGvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qp1th4DnxTX0HUig6VDj0AZjUmYxslQ3uGOgU6wQOVmb7RtgB
	Ayp1CEluT3bXQfeaC3hf+Tc=
X-Google-Smtp-Source: ABdhPJzSHcBNBuA8TfuBdIIW6ulgoa3iXIsAEF+OSbk85D43Hp1MgD7Jikvr/ekKcGr71YI7RdjDHg==
X-Received: by 2002:a37:b586:: with SMTP id e128mr16412547qkf.43.1627290447300;
        Mon, 26 Jul 2021 02:07:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a786:: with SMTP id q128ls11799268qke.10.gmail; Mon, 26
 Jul 2021 02:07:26 -0700 (PDT)
X-Received: by 2002:a05:620a:4c6:: with SMTP id 6mr15943970qks.452.1627290446500;
        Mon, 26 Jul 2021 02:07:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627290446; cv=none;
        d=google.com; s=arc-20160816;
        b=j0NPZviC3GnusqNh+cO58RTXaIehhoSAUv/c4eWaLgErBVqBzplg+MwqR2G+zyk3Se
         nppcrMfiHqb5nyCVFeomex0n80KYHzLSxdH8Zo4MCgPUSCtnqDjatXfUEhVeDsgLllxm
         pLroqAfhrZwFIeX6LpOzHHn84hAjrpYV3L3qX1z2IOEETdo2dv/dHQZCOMSp0G+L12ua
         XUgkiDxNjSU7N7mzrjucBICSqlBGzO/vI9Qe5HHQp4BbFevMeF7w27oWnr2Lv1/HIAKW
         VsAeigifcX+oUAC9pJKWBgYIL/LT9TbDISVobXUdAainta+Qk1ds0LIKm8dPZV20iqtA
         R5hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=9UZzmLzbiAymNB7/Pwa65wCUTW1zWyjHqVMoNRQP3xw=;
        b=vYUrdvYwZRa05cF3frXTRMZnrogMZH7LE0xNeXNBqTqjuyC84G7jXSB+CgNECCTNmM
         X6RuKGDvuI8Gg7FD5cCgaaFdIEAO6tJcpEfLAxSP4qM6BPTuf4iR3Bp1fns0otXQu5qg
         RrBEDfqmhkbRi+uSZYmBm9RntOCX9RY2VBA4OSnD67ejWWjiW0Zmq0snCp90fn+mgkw/
         dh2Xe/6nDr6VhIkCEFo8HFf2HvdFVrglNHjlWPyt/XVOPCnmPuxWBBsnECyUsqwtl5hT
         sPxLXnB2fZQ/O+Etd4Tw6gEsUonkTMK7N17ba8cvimaoaz9xcQCjXPSPeGjliMbh3kAE
         5QJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id 138si3212555qkl.5.2021.07.26.02.07.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Jul 2021 02:07:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10056"; a="212184562"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; 
   d="gz'50?scan'50,208,50";a="212184562"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jul 2021 02:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; 
   d="gz'50?scan'50,208,50";a="473614704"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 26 Jul 2021 02:07:17 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m7wZx-0005bX-0Z; Mon, 26 Jul 2021 09:07:17 +0000
Date: Mon, 26 Jul 2021 17:06:51 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: [hch-block:blkdev.h-includes 10/16] drivers/scsi/lpfc/lpfc.h:563:2:
 error: type name requires a specifier or qualifier
Message-ID: <202107261739.ea2XiRZW-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VS++wcV0S1rZb1Fb"
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


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/block.git blkdev.h-includes
head:   3207cb9d0ef0032cac133372a2b3dd2472168558
commit: f3801c169a64e10d8894b9fb1f0f87e4448a14df [10/16] block: move elevator.h to block/
config: mips-randconfig-r001-20210726 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c63dbd850182797bc4b76124d08e1c320ab2365d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git remote add hch-block git://git.infradead.org/users/hch/block.git
        git fetch --no-tags hch-block blkdev.h-includes
        git checkout f3801c169a64e10d8894b9fb1f0f87e4448a14df
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=mips SHELL=/bin/bash drivers/scsi/lpfc/ lib/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from drivers/scsi/lpfc/lpfc_mem.c:40:
>> drivers/scsi/lpfc/lpfc.h:563:2: error: type name requires a specifier or qualifier
           DECLARE_HASHTABLE(hash_table, 8);
           ^
>> drivers/scsi/lpfc/lpfc.h:563:32: error: expected identifier
           DECLARE_HASHTABLE(hash_table, 8);
                                         ^
>> drivers/scsi/lpfc/lpfc.h:563:19: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
           DECLARE_HASHTABLE(hash_table, 8);
                            ^
                                          void
   3 errors generated.
--
   In file included from drivers/scsi/lpfc/lpfc_sli.c:49:
>> drivers/scsi/lpfc/lpfc.h:563:2: error: type name requires a specifier or qualifier
           DECLARE_HASHTABLE(hash_table, 8);
           ^
>> drivers/scsi/lpfc/lpfc.h:563:32: error: expected identifier
           DECLARE_HASHTABLE(hash_table, 8);
                                         ^
>> drivers/scsi/lpfc/lpfc.h:563:19: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
           DECLARE_HASHTABLE(hash_table, 8);
                            ^
                                          void
   drivers/scsi/lpfc/lpfc_sli.c:14946:6: warning: variable 'i' set but not used [-Wunused-but-set-variable]
           int i = 0;
               ^
   1 warning and 3 errors generated.
--
   In file included from drivers/scsi/lpfc/lpfc_bsg.c:46:
>> drivers/scsi/lpfc/lpfc.h:563:2: error: type name requires a specifier or qualifier
           DECLARE_HASHTABLE(hash_table, 8);
           ^
>> drivers/scsi/lpfc/lpfc.h:563:32: error: expected identifier
           DECLARE_HASHTABLE(hash_table, 8);
                                         ^
>> drivers/scsi/lpfc/lpfc.h:563:19: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
           DECLARE_HASHTABLE(hash_table, 8);
                            ^
                                          void
   drivers/scsi/lpfc/lpfc_bsg.c:2864:11: warning: variable 'offset' set but not used [-Wunused-but-set-variable]
           int cnt, offset = 0, i = 0;
                    ^
   1 warning and 3 errors generated.
--
   In file included from drivers/scsi/lpfc/lpfc_ct.c:45:
>> drivers/scsi/lpfc/lpfc.h:563:2: error: type name requires a specifier or qualifier
           DECLARE_HASHTABLE(hash_table, 8);
           ^
>> drivers/scsi/lpfc/lpfc.h:563:32: error: expected identifier
           DECLARE_HASHTABLE(hash_table, 8);
                                         ^
>> drivers/scsi/lpfc/lpfc.h:563:19: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
           DECLARE_HASHTABLE(hash_table, 8);
                            ^
                                          void
>> drivers/scsi/lpfc/lpfc_ct.c:3873:8: error: implicit declaration of function 'hash_empty' [-Werror,-Wimplicit-function-declaration]
                   if (!hash_empty(vport->hash_table))
                        ^
>> drivers/scsi/lpfc/lpfc_ct.c:3873:26: error: no member named 'hash_table' in 'struct lpfc_vport'
                   if (!hash_empty(vport->hash_table))
                                   ~~~~~  ^
>> drivers/scsi/lpfc/lpfc_ct.c:3874:4: error: implicit declaration of function 'hash_for_each' [-Werror,-Wimplicit-function-declaration]
                           hash_for_each(vport->hash_table, bucket, cur, hnode)
                           ^
   drivers/scsi/lpfc/lpfc_ct.c:3874:4: note: did you mean 'idr_for_each'?
   include/linux/idr.h:120:5: note: 'idr_for_each' declared here
   int idr_for_each(const struct idr *,
       ^
   drivers/scsi/lpfc/lpfc_ct.c:3874:25: error: no member named 'hash_table' in 'struct lpfc_vport'
                           hash_for_each(vport->hash_table, bucket, cur, hnode)
                                         ~~~~~  ^
>> drivers/scsi/lpfc/lpfc_ct.c:3874:56: error: expected ';' after expression
                           hash_for_each(vport->hash_table, bucket, cur, hnode)
                                                                               ^
                                                                               ;
>> drivers/scsi/lpfc/lpfc_ct.c:3874:50: error: use of undeclared identifier 'hnode'
                           hash_for_each(vport->hash_table, bucket, cur, hnode)
                                                                         ^
>> drivers/scsi/lpfc/lpfc_ct.c:3875:5: error: implicit declaration of function 'hash_del' [-Werror,-Wimplicit-function-declaration]
                                   hash_del(&cur->hnode);
                                   ^
   10 errors generated.
--
   In file included from drivers/scsi/lpfc/lpfc_hbadisc.c:45:
>> drivers/scsi/lpfc/lpfc.h:563:2: error: type name requires a specifier or qualifier
           DECLARE_HASHTABLE(hash_table, 8);
           ^
>> drivers/scsi/lpfc/lpfc.h:563:32: error: expected identifier
           DECLARE_HASHTABLE(hash_table, 8);
                                         ^
>> drivers/scsi/lpfc/lpfc.h:563:19: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
           DECLARE_HASHTABLE(hash_table, 8);
                            ^
                                          void
>> drivers/scsi/lpfc/lpfc_hbadisc.c:260:2: error: implicit declaration of function 'hash_for_each' [-Werror,-Wimplicit-function-declaration]
           hash_for_each(vport->hash_table, bucket, vmp, hnode) {
           ^
   drivers/scsi/lpfc/lpfc_hbadisc.c:260:2: note: did you mean 'idr_for_each'?
   include/linux/idr.h:120:5: note: 'idr_for_each' declared here
   int idr_for_each(const struct idr *,
       ^
>> drivers/scsi/lpfc/lpfc_hbadisc.c:260:23: error: no member named 'hash_table' in 'struct lpfc_vport'
           hash_for_each(vport->hash_table, bucket, vmp, hnode) {
                         ~~~~~  ^
>> drivers/scsi/lpfc/lpfc_hbadisc.c:260:54: error: expected ';' after expression
           hash_for_each(vport->hash_table, bucket, vmp, hnode) {
                                                               ^
                                                               ;
>> drivers/scsi/lpfc/lpfc_hbadisc.c:260:48: error: use of undeclared identifier 'hnode'
           hash_for_each(vport->hash_table, bucket, vmp, hnode) {
                                                         ^
>> drivers/scsi/lpfc/lpfc_hbadisc.c:301:6: error: implicit declaration of function 'hash_del' [-Werror,-Wimplicit-function-declaration]
                                           hash_del(&ht->hnode);
                                           ^
   8 errors generated.
--
   In file included from drivers/scsi/lpfc/lpfc_init.c:59:
>> drivers/scsi/lpfc/lpfc.h:563:2: error: type name requires a specifier or qualifier
           DECLARE_HASHTABLE(hash_table, 8);
           ^
>> drivers/scsi/lpfc/lpfc.h:563:32: error: expected identifier
           DECLARE_HASHTABLE(hash_table, 8);
                                         ^
>> drivers/scsi/lpfc/lpfc.h:563:19: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
           DECLARE_HASHTABLE(hash_table, 8);
                            ^
                                          void
>> drivers/scsi/lpfc/lpfc_init.c:4359:3: error: implicit declaration of function 'hash_init' [-Werror,-Wimplicit-function-declaration]
                   hash_init(vport->hash_table);
                   ^
>> drivers/scsi/lpfc/lpfc_init.c:4359:20: error: no member named 'hash_table' in 'struct lpfc_vport'
                   hash_init(vport->hash_table);
                             ~~~~~  ^
>> drivers/scsi/lpfc/lpfc_init.c:7977:48: warning: shift count >= width of type [-Wshift-count-overflow]
           error = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
                                                         ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/scsi/lpfc/lpfc_init.c:10446:48: warning: shift count >= width of type [-Wshift-count-overflow]
           error = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
                                                         ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   2 warnings and 5 errors generated.
--
   In file included from drivers/scsi/lpfc/lpfc_scsi.c:48:
>> drivers/scsi/lpfc/lpfc.h:563:2: error: type name requires a specifier or qualifier
           DECLARE_HASHTABLE(hash_table, 8);
           ^
>> drivers/scsi/lpfc/lpfc.h:563:32: error: expected identifier
           DECLARE_HASHTABLE(hash_table, 8);
                                         ^
>> drivers/scsi/lpfc/lpfc.h:563:19: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
           DECLARE_HASHTABLE(hash_table, 8);
                            ^
                                          void
>> drivers/scsi/lpfc/lpfc_scsi.c:5185:2: error: implicit declaration of function 'hash_for_each_possible' [-Werror,-Wimplicit-function-declaration]
           hash_for_each_possible(vport->hash_table, vmp, hnode, hash) {
           ^
>> drivers/scsi/lpfc/lpfc_scsi.c:5185:32: error: no member named 'hash_table' in 'struct lpfc_vport'
           hash_for_each_possible(vport->hash_table, vmp, hnode, hash) {
                                  ~~~~~  ^
>> drivers/scsi/lpfc/lpfc_scsi.c:5185:61: error: expected ';' after expression
           hash_for_each_possible(vport->hash_table, vmp, hnode, hash) {
                                                                      ^
                                                                      ;
>> drivers/scsi/lpfc/lpfc_scsi.c:5185:49: error: use of undeclared identifier 'hnode'
           hash_for_each_possible(vport->hash_table, vmp, hnode, hash) {
                                                          ^
>> drivers/scsi/lpfc/lpfc_scsi.c:5205:2: error: implicit declaration of function 'hash_add' [-Werror,-Wimplicit-function-declaration]
           hash_add(vport->hash_table, &vmp->hnode, hash);
           ^
   drivers/scsi/lpfc/lpfc_scsi.c:5205:18: error: no member named 'hash_table' in 'struct lpfc_vport'
           hash_add(vport->hash_table, &vmp->hnode, hash);
                    ~~~~~  ^
>> drivers/scsi/lpfc/lpfc_scsi.c:5381:4: error: implicit declaration of function 'hash_del' [-Werror,-Wimplicit-function-declaration]
                           hash_del(&vmp->hnode);
                           ^
   drivers/scsi/lpfc/lpfc_scsi.c:5401:4: error: implicit declaration of function 'hash_del' [-Werror,-Wimplicit-function-declaration]
                           hash_del(&vmp->hnode);
                           ^
>> drivers/scsi/lpfc/lpfc_scsi.c:5710:7: error: implicit declaration of function 'hash_empty' [-Werror,-Wimplicit-function-declaration]
           if (!hash_empty(vport->hash_table))
                ^
   drivers/scsi/lpfc/lpfc_scsi.c:5710:25: error: no member named 'hash_table' in 'struct lpfc_vport'
           if (!hash_empty(vport->hash_table))
                           ~~~~~  ^
>> drivers/scsi/lpfc/lpfc_scsi.c:5711:3: error: implicit declaration of function 'hash_for_each' [-Werror,-Wimplicit-function-declaration]
                   hash_for_each(vport->hash_table, bucket, cur, hnode)
                   ^
   drivers/scsi/lpfc/lpfc_scsi.c:5711:3: note: did you mean 'idr_for_each'?
   include/linux/idr.h:120:5: note: 'idr_for_each' declared here
   int idr_for_each(const struct idr *,
       ^
   drivers/scsi/lpfc/lpfc_scsi.c:5711:24: error: no member named 'hash_table' in 'struct lpfc_vport'
                   hash_for_each(vport->hash_table, bucket, cur, hnode)
                                 ~~~~~  ^
   drivers/scsi/lpfc/lpfc_scsi.c:5711:55: error: expected ';' after expression
                   hash_for_each(vport->hash_table, bucket, cur, hnode)
                                                                       ^
                                                                       ;
   drivers/scsi/lpfc/lpfc_scsi.c:5711:49: error: use of undeclared identifier 'hnode'
                   hash_for_each(vport->hash_table, bucket, cur, hnode)
                                                                 ^
   drivers/scsi/lpfc/lpfc_scsi.c:5712:4: error: implicit declaration of function 'hash_del' [-Werror,-Wimplicit-function-declaration]
                           hash_del(&cur->hnode);
                           ^
   18 errors generated.


vim +563 drivers/scsi/lpfc/lpfc.h

858c9f6c19c6f9 James Smart       2007-06-17  497  
858c9f6c19c6f9 James Smart       2007-06-17  498  #define WORKER_MBOX_TMO                0x100	/* hba: MBOX timeout */
858c9f6c19c6f9 James Smart       2007-06-17  499  #define WORKER_HB_TMO                  0x200	/* hba: Heart beat timeout */
b1c118121ae372 Joe Perches       2008-02-03  500  #define WORKER_FABRIC_BLOCK_TMO        0x400	/* hba: fabric block timeout */
858c9f6c19c6f9 James Smart       2007-06-17  501  #define WORKER_RAMP_DOWN_QUEUE         0x800	/* hba: Decrease Q depth */
858c9f6c19c6f9 James Smart       2007-06-17  502  #define WORKER_RAMP_UP_QUEUE           0x1000	/* hba: Increase Q depth */
2a9bf3d011303d James Smart       2010-06-07  503  #define WORKER_SERVICE_TXQ             0x2000	/* hba: IOCBs on the txq */
02169e845da7ca Gaurav Srivastava 2021-06-08  504  #define WORKER_CHECK_INACTIVE_VMID     0x4000	/* hba: check inactive vmids */
02169e845da7ca Gaurav Srivastava 2021-06-08  505  #define WORKER_CHECK_VMID_ISSUE_QFPA   0x8000	/* vport: Check if qfpa needs
02169e845da7ca Gaurav Srivastava 2021-06-08  506  						 * to be issued */
2e0fef85e098f6 James Smart       2007-06-17  507  
2e0fef85e098f6 James Smart       2007-06-17  508  	struct timer_list els_tmofunc;
924941444b481f James Smart       2011-02-16  509  	struct timer_list delayed_disc_tmo;
2e0fef85e098f6 James Smart       2007-06-17  510  
2e0fef85e098f6 James Smart       2007-06-17  511  	int unreg_vpi_cmpl;
2e0fef85e098f6 James Smart       2007-06-17  512  
2e0fef85e098f6 James Smart       2007-06-17  513  	uint8_t load_flag;
2e0fef85e098f6 James Smart       2007-06-17  514  #define FC_LOADING		0x1	/* HBA in process of loading drvr */
2e0fef85e098f6 James Smart       2007-06-17  515  #define FC_UNLOADING		0x2	/* HBA in process of unloading drvr */
4258e98ee3862c James Smart       2015-12-16  516  #define FC_ALLOW_FDMI		0x4	/* port is ready for FDMI requests */
02169e845da7ca Gaurav Srivastava 2021-06-08  517  #define FC_ALLOW_VMID		0x8	/* Allow VMID I/Os */
02169e845da7ca Gaurav Srivastava 2021-06-08  518  #define FC_DEREGISTER_ALL_APP_ID	0x10	/* Deregister all VMIDs */
3de2a653a127c4 James Smart       2007-08-02  519  	/* Vport Config Parameters */
3de2a653a127c4 James Smart       2007-08-02  520  	uint32_t cfg_scan_down;
3de2a653a127c4 James Smart       2007-08-02  521  	uint32_t cfg_lun_queue_depth;
3de2a653a127c4 James Smart       2007-08-02  522  	uint32_t cfg_nodev_tmo;
3de2a653a127c4 James Smart       2007-08-02  523  	uint32_t cfg_devloss_tmo;
3de2a653a127c4 James Smart       2007-08-02  524  	uint32_t cfg_restrict_login;
3de2a653a127c4 James Smart       2007-08-02  525  	uint32_t cfg_peer_port_login;
3de2a653a127c4 James Smart       2007-08-02  526  	uint32_t cfg_fcp_class;
3de2a653a127c4 James Smart       2007-08-02  527  	uint32_t cfg_use_adisc;
3de2a653a127c4 James Smart       2007-08-02  528  	uint32_t cfg_discovery_threads;
e8b62011d88d6f James Smart       2007-08-02  529  	uint32_t cfg_log_verbose;
f6e84790520ac7 James Smart       2019-01-28  530  	uint32_t cfg_enable_fc4_type;
3de2a653a127c4 James Smart       2007-08-02  531  	uint32_t cfg_max_luns;
7ee5d43e2ea253 James Smart       2007-10-27  532  	uint32_t cfg_enable_da_id;
977b5a0af6d22a James Smart       2008-09-07  533  	uint32_t cfg_max_scsicmpl_time;
7dc517df3ace15 James Smart       2010-07-14  534  	uint32_t cfg_tgt_queue_depth;
3cb01c57c981c8 James Smart       2013-07-15  535  	uint32_t cfg_first_burst_size;
3de2a653a127c4 James Smart       2007-08-02  536  	uint32_t dev_loss_tmo_changed;
02169e845da7ca Gaurav Srivastava 2021-06-08  537  	/* VMID parameters */
02169e845da7ca Gaurav Srivastava 2021-06-08  538  	u8 lpfc_vmid_host_uuid[LPFC_COMPRESS_VMID_SIZE];
02169e845da7ca Gaurav Srivastava 2021-06-08  539  	u32 max_vmid;	/* maximum VMIDs allowed per port */
02169e845da7ca Gaurav Srivastava 2021-06-08  540  	u32 cur_vmid_cnt;	/* Current VMID count */
02169e845da7ca Gaurav Srivastava 2021-06-08  541  #define LPFC_MIN_VMID	4
02169e845da7ca Gaurav Srivastava 2021-06-08  542  #define LPFC_MAX_VMID	255
02169e845da7ca Gaurav Srivastava 2021-06-08  543  	u32 vmid_inactivity_timeout;	/* Time after which the VMID */
02169e845da7ca Gaurav Srivastava 2021-06-08  544  						/* deregisters from switch */
02169e845da7ca Gaurav Srivastava 2021-06-08  545  	u32 vmid_priority_tagging;
02169e845da7ca Gaurav Srivastava 2021-06-08  546  #define LPFC_VMID_PRIO_TAG_DISABLE	0 /* Disable */
02169e845da7ca Gaurav Srivastava 2021-06-08  547  #define LPFC_VMID_PRIO_TAG_SUP_TARGETS	1 /* Allow supported targets only */
02169e845da7ca Gaurav Srivastava 2021-06-08  548  #define LPFC_VMID_PRIO_TAG_ALL_TARGETS	2 /* Allow all targets */
02169e845da7ca Gaurav Srivastava 2021-06-08  549  	unsigned long *vmid_priority_range;
02169e845da7ca Gaurav Srivastava 2021-06-08  550  #define LPFC_VMID_MAX_PRIORITY_RANGE    256
02169e845da7ca Gaurav Srivastava 2021-06-08  551  #define LPFC_VMID_PRIORITY_BITMAP_SIZE  32
02169e845da7ca Gaurav Srivastava 2021-06-08  552  	u8 vmid_flag;
02169e845da7ca Gaurav Srivastava 2021-06-08  553  #define LPFC_VMID_IN_USE		0x1
02169e845da7ca Gaurav Srivastava 2021-06-08  554  #define LPFC_VMID_ISSUE_QFPA		0x2
02169e845da7ca Gaurav Srivastava 2021-06-08  555  #define LPFC_VMID_QFPA_CMPL		0x4
02169e845da7ca Gaurav Srivastava 2021-06-08  556  #define LPFC_VMID_QOS_ENABLED		0x8
02169e845da7ca Gaurav Srivastava 2021-06-08  557  #define LPFC_VMID_TIMER_ENBLD		0x10
02169e845da7ca Gaurav Srivastava 2021-06-08  558  	struct fc_qfpa_res *qfpa_res;
51ef4c26891a73 James Smart       2007-08-02  559  
51ef4c26891a73 James Smart       2007-08-02  560  	struct fc_vport *fc_vport;
51ef4c26891a73 James Smart       2007-08-02  561  
02169e845da7ca Gaurav Srivastava 2021-06-08  562  	struct lpfc_vmid *vmid;
02169e845da7ca Gaurav Srivastava 2021-06-08 @563  	DECLARE_HASHTABLE(hash_table, 8);
02169e845da7ca Gaurav Srivastava 2021-06-08  564  	rwlock_t vmid_lock;
02169e845da7ca Gaurav Srivastava 2021-06-08  565  	struct lpfc_vmid_priority_info vmid_priority;
02169e845da7ca Gaurav Srivastava 2021-06-08  566  

:::::: The code at line 563 was first introduced by commit
:::::: 02169e845da7ca9ae91c7228244bf160ffee8c72 scsi: lpfc: vmid: Add datastructure for supporting VMID in lpfc

:::::: TO: Gaurav Srivastava <gaurav.srivastava@broadcom.com>
:::::: CC: Martin K. Petersen <martin.petersen@oracle.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107261739.ea2XiRZW-lkp%40intel.com.

--VS++wcV0S1rZb1Fb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
in9YpmrONOR5691D/H/eNSrXVsACAA==

--VS++wcV0S1rZb1Fb--
