Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7MAVX6QKGQE4HNI2FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB232AE5E9
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 02:38:07 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id 144sf539214pfv.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 17:38:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605058686; cv=pass;
        d=google.com; s=arc-20160816;
        b=fRy+u/uYEeMRk7X2wKgzHJ8LtsJUU8fZq+9DdwFS1biVkfZyLwpX+yhvq5MAHn6FW9
         Ew1PDiwfZYN4RTEf2PQQjjPEtpY1M8pZ99W3Xdmc7U3NaRi6YWFhvYEt+5uY10hL0nrU
         yWL87bCpAnzvJimayGO8LFo16FajlqtUVc2V4Bw+cSR5ZBzvJy40qIcthFi42dax9wad
         GV+PA75ollO3fxl2grOKvjvgUS2J5Fe+tWrHm/VAZ0LaHTkoo0jcoox511u2EBHgsftB
         BbuOZf2kqMwUvAGxe2hdT8vFMTAWUdbXoiuab+XvT7OBIuHpHWEQwobUy3y6asS9gQTE
         iC+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=KMOlhAru06CAfgc8uD7qH3PFMOnDg/vW6BsEtsn3j7o=;
        b=gw93y/ut9fnIt09DOM7OLHiYLU8jWt03mLoXTQlQcxRTdyzd/F/Jbz4nY24BgB1Rm1
         fgAt7N6ZOZwZYIslOpqaljuKLaJ5VMZK+M43579h0ICSGDCL4DN6TC6UJrY5kS1XqLFW
         PbaQkKv+pWN3j16QLo19H3dyQi2e2iMJ2LYaJ75NFmZg0F3yk9LTrvCNnX3rBvpZlKJW
         qXuGUfC0vDAAEduZQ3zbzGJ9ebr69ep/qeZa/JOUR+BO+UYkzy1tty/Ra7wIfVN8A8Lq
         1j75rHM9M3LSYbgrsDK6l8le9Ih3FbL5X1i5W7PfTIiK2Lj/o7Tjg4v74i3+ALmWFxLx
         es0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KMOlhAru06CAfgc8uD7qH3PFMOnDg/vW6BsEtsn3j7o=;
        b=pPle7aEruidLD2jP+zJchcMN5cfsOHUZrUmKJaC35rFS8imJMaKRfrRUuExnaTJsjd
         9Y20o1DL36UwBnQglhA4ZsRR9NxJ08d/X3NxYV+7O82pdE32kvgVRv3qH6G3JsZFANCE
         iaUIV3yFkLWw+LvHXyKYaBSXeY5IIO6NM/Y6N+i1s5u4q/IZ2QrJdZteCzaE96YYGVSL
         t5z5eXPj5rPcJ0HokvEiiLgIBqBJjNuHRqQ+51Y1GeUc9VDjwxnZ1KGSdhY5FANbPax8
         FDK88IVPE2G/KC6ccQ59AqL8PICxeyXRLBsWUzlb7QlCBGQYBK9DYu3oIpDDuIiCoGLA
         0IHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KMOlhAru06CAfgc8uD7qH3PFMOnDg/vW6BsEtsn3j7o=;
        b=AZX66mZSNUIjqgoEgw1FgPunXIAoJojOjGip+DGTxv6J0/2loBytZz/ST3THJRT1NH
         8fhpp3jyxjcqukgSZKvPQ0j0c9uh5Itw/YbMymafxqZ8EN8x8YeC8sKheww6TlcwLoIr
         /7dsmasa34Et63mwnTvFjpCWz49NXpm7Bd/Z9oikeyNC/fqYsIqy7KR8z+mxxbcmydK1
         3HJVf+WGuufQxIl0n0gpTMUT8URTBDZ1pq/WvhafR9MlHmM/LUNu1v6i5a374hmY90yH
         pddy3UvNcFUo3u2KX28xFVwR9shPfdZKjJvmojVbNzdQhJp2sjnEWzOL3sr0epEZNWi1
         VKwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ac/H+hdfjSPaoYYCY6dLiCGWqWWKgf9pcVYTI32QlZaZ1lo3h
	8xO02YNE3LHD/TtbdwV1WsA=
X-Google-Smtp-Source: ABdhPJytpBCchbaSKg3ybcJ29Ev+V3Xkplj2qG8l+1/CBugZdPaS6h9bCxZ+QSpxeuNYFu3u6p8m0Q==
X-Received: by 2002:a17:902:c20a:b029:d6:b2d6:8006 with SMTP id 10-20020a170902c20ab02900d6b2d68006mr19581594pll.31.1605058686130;
        Tue, 10 Nov 2020 17:38:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:451d:: with SMTP id s29ls4817716pga.5.gmail; Tue, 10 Nov
 2020 17:38:05 -0800 (PST)
X-Received: by 2002:a63:540d:: with SMTP id i13mr19857620pgb.37.1605058685475;
        Tue, 10 Nov 2020 17:38:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605058685; cv=none;
        d=google.com; s=arc-20160816;
        b=U7olP+OzwpfmXrUTC/EJVFjXsL11mA1phJWrfWsZeWwcNHZTWquz+Zl6lOgLnARAqD
         RBsqojZo9Bt3U4yuVw8fcrxjtuxtpIIgkhZxqR+ZS/XIhLo8+TCe9Iaeped3aG4MuWWo
         p/RvjuwpenfqtR0+wcVdEo2vARdzk1ooWFCYfiIrr7tdWHHXkPze1/KEJXFwkBNEoE8W
         4T1r0YagSICBQHqep7IxwA1lVi4nVtY6YqHOdrrkwrLWEL8z5NKXMl7aS+nP72jZgOZo
         4cCnni1aHKxeNsJvKLq7SLqaTxVZZXVvLj97e0u6FLO70h986DFiFU2Ob/hYclxu+VWv
         rlvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=CK5xzv4T+ZxsVxMUuc1Q7Xkod/IgQ8Fgmh5a/0g15Ik=;
        b=hJsNTghzYmBebl2u6Xm4aUWVCOxb04s+SDVO6OxxbpWwFOorjUL5q4VElxQIDp9DmF
         PVpIjgh0m1fGOFQKAoumMpF+4smUQUUY1RMsO9lXfpb/25/0QdXS0h2d8PRRtOZ6wbyI
         7imuWMJ1UjJSmJQA2BnjkaLBAStVtTBzkSvOAEXEobIYZhQHvmENrZl2yYmjwaotwfyu
         fN1guDkum2EQT5a0pjkUnO6zytwLF3x2N7QMzV8NFT7icMXl/J0d/qRnDLqYC57PfyEQ
         ztRVVjm/bzVFV8MZspxxZ7j+F4o8NkRUeZP54aAwxHccTLEC4WvKEbeIgKZB6PDOhAX6
         Hbow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id i4si381209pjj.2.2020.11.10.17.38.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2020 17:38:05 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: 0EcCHFSvmA0jcTRLSQ6U61Kms3sKucdPhRcpducgWL9EfcAr7dHCiEO2MKu1gLGk3IFz7EShsa
 1bSJdv9pZR1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="188054386"
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; 
   d="gz'50?scan'50,208,50";a="188054386"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2020 17:38:04 -0800
IronPort-SDR: 5nogKYcUWitOSUr3SISfIltPP0ykuNL5UFXS8a/9VnkntXzSznokOpszMwmQxVmwYovZMp5VJ2
 BsPNZtpzPdRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; 
   d="gz'50?scan'50,208,50";a="398855283"
Received: from lkp-server02.sh.intel.com (HELO c6c5fbb3488a) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 10 Nov 2020 17:38:00 -0800
Received: from kbuild by c6c5fbb3488a with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kcf5D-0000Xy-M8; Wed, 11 Nov 2020 01:37:59 +0000
Date: Wed, 11 Nov 2020 09:37:09 +0800
From: kernel test robot <lkp@intel.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>, magnus.karlsson@intel.com,
	bjorn.topel@intel.com, ast@kernel.org, daniel@iogearbox.net,
	netdev@vger.kernel.org, jonathan.lemon@gmail.com, kuba@kernel.org,
	john.fastabend@gmail.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	bpf@vger.kernel.org, jeffrey.t.kirsher@intel.com
Subject: Re: [PATCH bpf-next v2 5/5] i40e: use batched xsk Tx interfaces to
 increase performance
Message-ID: <202011110934.GFwFDfqe-lkp@intel.com>
References: <1605006094-31097-6-git-send-email-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline
In-Reply-To: <1605006094-31097-6-git-send-email-magnus.karlsson@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Magnus,

I love your patch! Perhaps something to improve:

[auto build test WARNING on bpf-next/master]

url:    https://github.com/0day-ci/linux/commits/Magnus-Karlsson/xsk-i40e-Tx-performance-improvements/20201110-190310
base:   https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git master
config: powerpc64-randconfig-r025-20201110 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4d81c8adb6ed9840257f6cb6b93f60856d422a15)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/b016bbeac6692a93e61b28efa430d64645032b5e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Magnus-Karlsson/xsk-i40e-Tx-performance-improvements/20201110-190310
        git checkout b016bbeac6692a93e61b28efa430d64645032b5e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/i40e/i40e_xsk.c:417:13: warning: unknown pragma ignored [-Wunknown-pragmas]
   #pragma GCC unroll 4
               ^
   1 warning generated.

vim +417 drivers/net/ethernet/intel/i40e/i40e_xsk.c

   408	
   409	static void i40e_xmit_pkt_batch(struct i40e_ring *xdp_ring, struct xdp_desc *desc,
   410					unsigned int *total_bytes)
   411	{
   412		u16 ntu = xdp_ring->next_to_use;
   413		struct i40e_tx_desc *tx_desc;
   414		dma_addr_t dma;
   415		u32 i;
   416	
 > 417	#pragma GCC unroll 4
   418		for (i = 0; i < PKTS_PER_BATCH; i++) {
   419			dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, desc[i].addr);
   420			xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, desc[i].len);
   421	
   422			tx_desc = I40E_TX_DESC(xdp_ring, ntu++);
   423			tx_desc->buffer_addr = cpu_to_le64(dma);
   424			tx_desc->cmd_type_offset_bsz = build_ctob(I40E_TX_DESC_CMD_ICRC |
   425								  I40E_TX_DESC_CMD_EOP,
   426								  0, desc[i].len, 0);
   427	
   428			*total_bytes += desc[i].len;
   429		}
   430	
   431		xdp_ring->next_to_use = ntu;
   432	}
   433	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011110934.GFwFDfqe-lkp%40intel.com.

--envbJBWh7q8WU6mo
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
/wBe5tp7ftQBAA==

--envbJBWh7q8WU6mo--
