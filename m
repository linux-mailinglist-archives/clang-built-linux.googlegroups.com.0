Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBW5E2T3AKGQE7YWJ3PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB7C1EA5FE
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Jun 2020 16:36:13 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id e21sf7933260pjt.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Jun 2020 07:36:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591022172; cv=pass;
        d=google.com; s=arc-20160816;
        b=UGce2YEsUcSwJY2mnORY6T/XxoOvATTnWIV1mUzRXgmMrub/vP7mIIqpjHpC8JtvrO
         R/xpq+TJrTCsGK+YfNCsSIUtW92N+yxs8FgXcHW2NDSn2nYbHdb2C0SBnWDnToqDm9er
         uhHPkSRExz5/7+keFh8iluq1CJF+4dPZsJrA+QJFbbTR58RQOqsrlpyhor8gMsxPiG6N
         8GB8XuoUFtMcNQXnn7WKwPmozRczMZ/wDNH42Xhq4J7P9hOy+jbciz3YmzC/CzGMoXJJ
         Qx98UR2gp9ChEgiUnx6iqB+Om9YEKXQhowCgBUn4c6XrizuPFHz7plTxKTO96+AV+Fhu
         ssjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=20Pj6QtPoe1Dsrx78tJHNctTNfzM67bkEBMTTL0IGf4=;
        b=rz2ym6jFc88UU3zSXP+oGKr2G24Uv8Sirtm+DdsK7FHE79l1vm+yKzr2BgEerCpLfu
         zbupGvre3DSGcqd/3Qs0M9xdasmcEcCWZgu1Hya30ENN0qojFWB2fiW41qQ1cI8aiUW3
         d2Wm4XyFCkJPJAuZGXrjcmmL+88A+EL58v84qmmgEbOo84Bh8xrunYKWPmDzkKpAUGSB
         oURtJOJaT/hE+KQc5sdWB+bbjlwg1wUDyRuCO0HCQCEboRomzQdvk49/TCEqJKpyI29U
         KBGTJW+gRxz00TvjTln5xD1MWlNl8PFUT066y8V+HI6/RETgBlU5hw29s92fA9voHtEN
         sZCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=20Pj6QtPoe1Dsrx78tJHNctTNfzM67bkEBMTTL0IGf4=;
        b=XYgTgHFeJ13fkTZUCO9s6VfVzK03LHedHOjV3fweiVOlSA8RhBSkr4Vcm6WnVXSo3U
         ZoY2/aMSZuivZojnYzlV1hN/zASQ7uPcCzAdhbr0ezkrKnpdo6xoq5x7zFi4SbOqvKLs
         fLp7n9FnV7S95+fED8UMf7LawRH5rzoJUpj281vfg3A5MtsU0Rp9wflunUDDimxeLon/
         2XfR41rxDc2n/WzFk0aam5Vz2REVbs40RZTvem5rox5ql/OGGcBlXRQeoXAqv/9X6ntC
         XrkXnXYXPha+qkXqKSoC18g5a/KFej4T4ESkewPSILcwX/jbdGPe72riJIczDMgiSBRT
         ML1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=20Pj6QtPoe1Dsrx78tJHNctTNfzM67bkEBMTTL0IGf4=;
        b=CLL6hFYIuVKsm+AtIl41OrPZOuPatcKKfrJmT1p5EnhrHjL1dzK6XECXB/ilK9H/eU
         z2wUkWi6KdF+fmlJpogjSQqmiuJ6Db5fK03BJjXpw7v2xMXX8tsvtz2roMffJTIFdq0n
         aHwA3nY37BLAf7O8CUh7W3zqylXxfmbSnm8dXOiJocMgae5VlcdAwF8s+/t1S6/L9efx
         b1H27SrTVOngnXLB2d6w21zDTHzbYmKdGfSe/WKCDH/f/qyYjsa1cCgkm0qrRsmWYzKN
         TgCXDeebo46Ae2cq67WCXh6U7iIDMLPJr6s9iQ7so7jRXj1pU9T0jUM6IRyAk6ZZwH9c
         5FPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yu9VLGThx2g6HgIT8EFD6lS2jBqUl9ejct83id/qUcGD9kTr2
	b54QzbWyEqXwplyf4xF+HCo=
X-Google-Smtp-Source: ABdhPJwBLhUoCtRF+BnZjmsD8gPCQdkcCLeQ10i4LtLnHAl7fyAaiHF3nz/H5OdwMoK/9pYdzLstrA==
X-Received: by 2002:a65:67d3:: with SMTP id b19mr19632655pgs.431.1591022171806;
        Mon, 01 Jun 2020 07:36:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:63d0:: with SMTP id n16ls4300739pgv.6.gmail; Mon, 01 Jun
 2020 07:36:11 -0700 (PDT)
X-Received: by 2002:a65:48c5:: with SMTP id o5mr19747765pgs.193.1591022171299;
        Mon, 01 Jun 2020 07:36:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591022171; cv=none;
        d=google.com; s=arc-20160816;
        b=VaMOAKcpwgzecWSuBSMEsA3l5AbogxedIAxgTgnwScsLQz/3xvmTqY0YHWZR3ZYUJh
         /44ae9F4yzoyb1Sa27SwShS5unN8QVR01l1Tt7xa4Bio/2IiUG975Xqq7IlJJnAPRFwY
         XIguQjuVBNFwj555OOs01TqbE8hN7NE3WcAI2pQDB/+AXbMUd/1lm3Y6uN3ed2iUzRQR
         3faC/qAZmHHkzfRhFMKdEpQ/YLPnu4GPy3OYEORpYziMVV+cxij8r8K0Q/35hosdbIOg
         vZRsLypatAQnzqkW21R9hDJQGEMB2rj2Z4QS3e7H+C+fVDtCYN8Yp63IKx7piKZzvr0c
         DU7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=6UQdIAjPch1UT2TndzlgLA3hfiEEq1K/G/Zj+5/c6vs=;
        b=Ot/nA0aGyRElWp0CHXaiA3B8K010uMjjR/Klg/aNlYUnD8IOWllHimxXtThsTitWLI
         g6Z5eZlI+PCugaYY0F7WEZ/yG9/A9KDJDUSV6V86FZQNYz90HnmwIeRHhmybhoZzxAAe
         iC51yo1rDI0QfabSPDM1iMwS/NHqvcFwLyW4J3aMlWhYiYJiIwhIokmYAaWXCeEE5+yY
         dDHVZ5qIcj+lMzWrYfACg0hkds/sOdjPlPRxnSOxchVwewCByjMHAAcI4A3IEUrnEEWv
         LZIm4/XB73YWX6V4+8F6wQWnj/L6PIaQXB7xqq6Qy2pv+Qa4+6HaWaK5WhRJ7MwKXiDx
         phbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id k138si1075528pfd.1.2020.06.01.07.36.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Jun 2020 07:36:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: dQbAqVn9nsUSyhqHsBlYu0WyutHBebtGRrEzcwgdn+KGytIrnblij3Ks26RXXTmjKm9NPmozz6
 rwaR5IGBsrIA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2020 07:36:09 -0700
IronPort-SDR: 9CvF5o2DUe8zcEkllUA3Rpg/csxJOuY+6wZLU2NJFZLTOL4oobjH885Nv1WmErUfg/pnGjgs+m
 vxkV5/nC9gLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,461,1583222400"; 
   d="gz'50?scan'50,208,50";a="377428609"
Received: from lkp-server01.sh.intel.com (HELO 78d03bb9d680) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 01 Jun 2020 07:36:07 -0700
Received: from kbuild by 78d03bb9d680 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jflXq-00004H-Vv; Mon, 01 Jun 2020 14:36:06 +0000
Date: Mon, 1 Jun 2020 22:35:46 +0800
From: kbuild test robot <lkp@intel.com>
To: "Will, Deacon," <will@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [linux-next:master 7573/14131] include/linux/tpm_eventlog.h:198:20:
 warning: taking address of packed member 'count' of class or structure
 'tcg_pcr_event2_head' may result in an unaligned pointer value
Message-ID: <202006012241.f1oOwzhm%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   e7b08814b16b80a0bf76eeca16317f8c2ed23b8c
commit: bbfa112b46bdbbdfc2f5bfb9c2dcbef780ff6417 [7573/14131] READ_ONCE: Simplify implementations of {READ,WRITE}_ONCE()
config: i386-randconfig-a013-20200601 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install i386 cross compiling tool for clang build
        # apt-get install binutils-i386-linux-gnu
        git checkout bbfa112b46bdbbdfc2f5bfb9c2dcbef780ff6417
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

clang-11: warning: optimization flag '-falign-jumps=0' is not supported [-Wignored-optimization-argument]
clang-11: warning: optimization flag '-falign-loops=0' is not supported [-Wignored-optimization-argument]
In file included from drivers/char/tpm/tpm-chip.c:18:
In file included from include/linux/poll.h:7:
In file included from include/linux/ktime.h:24:
In file included from include/linux/time.h:6:
In file included from include/linux/seqlock.h:36:
In file included from include/linux/spinlock.h:51:
In file included from include/linux/preempt.h:78:
In file included from arch/x86/include/asm/preempt.h:7:
In file included from include/linux/thread_info.h:38:
arch/x86/include/asm/thread_info.h:190:13: warning: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Wframe-address]
oldframe = __builtin_frame_address(1);
^~~~~~~~~~~~~~~~~~~~~~~~~~
arch/x86/include/asm/thread_info.h:192:11: warning: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Wframe-address]
frame = __builtin_frame_address(2);
^~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from drivers/char/tpm/tpm-chip.c:24:
>> include/linux/tpm_eventlog.h:198:20: warning: taking address of packed member 'count' of class or structure 'tcg_pcr_event2_head' may result in an unaligned pointer value [-Waddress-of-packed-member]
count = READ_ONCE(event->count);
^~~~~~~~~~~~
include/linux/compiler.h:206:22: note: expanded from macro 'READ_ONCE'
typeof(x) *__xp = &(x);                                                                        ^
In file included from drivers/char/tpm/tpm-chip.c:24:
>> include/linux/tpm_eventlog.h:199:25: warning: taking address of packed member 'event_type' of class or structure 'tcg_pcr_event2_head' may result in an unaligned pointer value [-Waddress-of-packed-member]
event_type = READ_ONCE(event->event_type);
^~~~~~~~~~~~~~~~~
include/linux/compiler.h:206:22: note: expanded from macro 'READ_ONCE'
typeof(x) *__xp = &(x);                                                                        ^
4 warnings generated.

vim +198 include/linux/tpm_eventlog.h

c46f3405692de1 Matthew Garrett  2019-05-20  138  
44038bc514a244 Matthew Garrett  2019-05-20  139  /**
44038bc514a244 Matthew Garrett  2019-05-20  140   * __calc_tpm2_event_size - calculate the size of a TPM2 event log entry
44038bc514a244 Matthew Garrett  2019-05-20  141   * @event:        Pointer to the event whose size should be calculated
44038bc514a244 Matthew Garrett  2019-05-20  142   * @event_header: Pointer to the initial event containing the digest lengths
c46f3405692de1 Matthew Garrett  2019-05-20  143   * @do_mapping:   Whether or not the event needs to be mapped
44038bc514a244 Matthew Garrett  2019-05-20  144   *
44038bc514a244 Matthew Garrett  2019-05-20  145   * The TPM2 event log format can contain multiple digests corresponding to
44038bc514a244 Matthew Garrett  2019-05-20  146   * separate PCR banks, and also contains a variable length of the data that
44038bc514a244 Matthew Garrett  2019-05-20  147   * was measured. This requires knowledge of how long each digest type is,
44038bc514a244 Matthew Garrett  2019-05-20  148   * and this information is contained within the first event in the log.
44038bc514a244 Matthew Garrett  2019-05-20  149   *
44038bc514a244 Matthew Garrett  2019-05-20  150   * We calculate the length by examining the number of events, and then looking
44038bc514a244 Matthew Garrett  2019-05-20  151   * at each event in turn to determine how much space is used for events in
44038bc514a244 Matthew Garrett  2019-05-20  152   * total. Once we've done this we know the offset of the data length field,
44038bc514a244 Matthew Garrett  2019-05-20  153   * and can calculate the total size of the event.
44038bc514a244 Matthew Garrett  2019-05-20  154   *
e658c82be55614 Jerry Snitselaar 2019-10-02  155   * Return: size of the event on success, 0 on failure
44038bc514a244 Matthew Garrett  2019-05-20  156   */
44038bc514a244 Matthew Garrett  2019-05-20  157  
44038bc514a244 Matthew Garrett  2019-05-20  158  static inline int __calc_tpm2_event_size(struct tcg_pcr_event2_head *event,
c46f3405692de1 Matthew Garrett  2019-05-20  159  					 struct tcg_pcr_event *event_header,
c46f3405692de1 Matthew Garrett  2019-05-20  160  					 bool do_mapping)
44038bc514a244 Matthew Garrett  2019-05-20  161  {
44038bc514a244 Matthew Garrett  2019-05-20  162  	struct tcg_efi_specid_event_head *efispecid;
44038bc514a244 Matthew Garrett  2019-05-20  163  	struct tcg_event_field *event_field;
c46f3405692de1 Matthew Garrett  2019-05-20  164  	void *mapping = NULL;
c46f3405692de1 Matthew Garrett  2019-05-20  165  	int mapping_size;
44038bc514a244 Matthew Garrett  2019-05-20  166  	void *marker;
44038bc514a244 Matthew Garrett  2019-05-20  167  	void *marker_start;
44038bc514a244 Matthew Garrett  2019-05-20  168  	u32 halg_size;
44038bc514a244 Matthew Garrett  2019-05-20  169  	size_t size;
44038bc514a244 Matthew Garrett  2019-05-20  170  	u16 halg;
44038bc514a244 Matthew Garrett  2019-05-20  171  	int i;
44038bc514a244 Matthew Garrett  2019-05-20  172  	int j;
047d50aee341d9 Peter Jones      2019-10-02  173  	u32 count, event_type;
44038bc514a244 Matthew Garrett  2019-05-20  174  
44038bc514a244 Matthew Garrett  2019-05-20  175  	marker = event;
44038bc514a244 Matthew Garrett  2019-05-20  176  	marker_start = marker;
44038bc514a244 Matthew Garrett  2019-05-20  177  	marker = marker + sizeof(event->pcr_idx) + sizeof(event->event_type)
44038bc514a244 Matthew Garrett  2019-05-20  178  		+ sizeof(event->count);
44038bc514a244 Matthew Garrett  2019-05-20  179  
c46f3405692de1 Matthew Garrett  2019-05-20  180  	/* Map the event header */
c46f3405692de1 Matthew Garrett  2019-05-20  181  	if (do_mapping) {
c46f3405692de1 Matthew Garrett  2019-05-20  182  		mapping_size = marker - marker_start;
c46f3405692de1 Matthew Garrett  2019-05-20  183  		mapping = TPM_MEMREMAP((unsigned long)marker_start,
c46f3405692de1 Matthew Garrett  2019-05-20  184  				       mapping_size);
c46f3405692de1 Matthew Garrett  2019-05-20  185  		if (!mapping) {
c46f3405692de1 Matthew Garrett  2019-05-20  186  			size = 0;
c46f3405692de1 Matthew Garrett  2019-05-20  187  			goto out;
c46f3405692de1 Matthew Garrett  2019-05-20  188  		}
c46f3405692de1 Matthew Garrett  2019-05-20  189  	} else {
c46f3405692de1 Matthew Garrett  2019-05-20  190  		mapping = marker_start;
c46f3405692de1 Matthew Garrett  2019-05-20  191  	}
c46f3405692de1 Matthew Garrett  2019-05-20  192  
c46f3405692de1 Matthew Garrett  2019-05-20  193  	event = (struct tcg_pcr_event2_head *)mapping;
047d50aee341d9 Peter Jones      2019-10-02  194  	/*
047d50aee341d9 Peter Jones      2019-10-02  195  	 * The loop below will unmap these fields if the log is larger than
047d50aee341d9 Peter Jones      2019-10-02  196  	 * one page, so save them here for reference:
047d50aee341d9 Peter Jones      2019-10-02  197  	 */
047d50aee341d9 Peter Jones      2019-10-02 @198  	count = READ_ONCE(event->count);
047d50aee341d9 Peter Jones      2019-10-02 @199  	event_type = READ_ONCE(event->event_type);
c46f3405692de1 Matthew Garrett  2019-05-20  200  
44038bc514a244 Matthew Garrett  2019-05-20  201  	efispecid = (struct tcg_efi_specid_event_head *)event_header->event;
44038bc514a244 Matthew Garrett  2019-05-20  202  
44038bc514a244 Matthew Garrett  2019-05-20  203  	/* Check if event is malformed. */
047d50aee341d9 Peter Jones      2019-10-02  204  	if (count > efispecid->num_algs) {
c46f3405692de1 Matthew Garrett  2019-05-20  205  		size = 0;
c46f3405692de1 Matthew Garrett  2019-05-20  206  		goto out;
c46f3405692de1 Matthew Garrett  2019-05-20  207  	}
44038bc514a244 Matthew Garrett  2019-05-20  208  
047d50aee341d9 Peter Jones      2019-10-02  209  	for (i = 0; i < count; i++) {
44038bc514a244 Matthew Garrett  2019-05-20  210  		halg_size = sizeof(event->digests[i].alg_id);
c46f3405692de1 Matthew Garrett  2019-05-20  211  
c46f3405692de1 Matthew Garrett  2019-05-20  212  		/* Map the digest's algorithm identifier */
c46f3405692de1 Matthew Garrett  2019-05-20  213  		if (do_mapping) {
c46f3405692de1 Matthew Garrett  2019-05-20  214  			TPM_MEMUNMAP(mapping, mapping_size);
c46f3405692de1 Matthew Garrett  2019-05-20  215  			mapping_size = halg_size;
c46f3405692de1 Matthew Garrett  2019-05-20  216  			mapping = TPM_MEMREMAP((unsigned long)marker,
c46f3405692de1 Matthew Garrett  2019-05-20  217  					     mapping_size);
c46f3405692de1 Matthew Garrett  2019-05-20  218  			if (!mapping) {
c46f3405692de1 Matthew Garrett  2019-05-20  219  				size = 0;
c46f3405692de1 Matthew Garrett  2019-05-20  220  				goto out;
c46f3405692de1 Matthew Garrett  2019-05-20  221  			}
c46f3405692de1 Matthew Garrett  2019-05-20  222  		} else {
c46f3405692de1 Matthew Garrett  2019-05-20  223  			mapping = marker;
c46f3405692de1 Matthew Garrett  2019-05-20  224  		}
c46f3405692de1 Matthew Garrett  2019-05-20  225  
c46f3405692de1 Matthew Garrett  2019-05-20  226  		memcpy(&halg, mapping, halg_size);
44038bc514a244 Matthew Garrett  2019-05-20  227  		marker = marker + halg_size;
c46f3405692de1 Matthew Garrett  2019-05-20  228  
44038bc514a244 Matthew Garrett  2019-05-20  229  		for (j = 0; j < efispecid->num_algs; j++) {
44038bc514a244 Matthew Garrett  2019-05-20  230  			if (halg == efispecid->digest_sizes[j].alg_id) {
44038bc514a244 Matthew Garrett  2019-05-20  231  				marker +=
44038bc514a244 Matthew Garrett  2019-05-20  232  					efispecid->digest_sizes[j].digest_size;
44038bc514a244 Matthew Garrett  2019-05-20  233  				break;
44038bc514a244 Matthew Garrett  2019-05-20  234  			}
44038bc514a244 Matthew Garrett  2019-05-20  235  		}
44038bc514a244 Matthew Garrett  2019-05-20  236  		/* Algorithm without known length. Such event is unparseable. */
c46f3405692de1 Matthew Garrett  2019-05-20  237  		if (j == efispecid->num_algs) {
c46f3405692de1 Matthew Garrett  2019-05-20  238  			size = 0;
c46f3405692de1 Matthew Garrett  2019-05-20  239  			goto out;
c46f3405692de1 Matthew Garrett  2019-05-20  240  		}
44038bc514a244 Matthew Garrett  2019-05-20  241  	}
44038bc514a244 Matthew Garrett  2019-05-20  242  
c46f3405692de1 Matthew Garrett  2019-05-20  243  	/*
c46f3405692de1 Matthew Garrett  2019-05-20  244  	 * Map the event size - we don't read from the event itself, so
c46f3405692de1 Matthew Garrett  2019-05-20  245  	 * we don't need to map it
c46f3405692de1 Matthew Garrett  2019-05-20  246  	 */
c46f3405692de1 Matthew Garrett  2019-05-20  247  	if (do_mapping) {
c46f3405692de1 Matthew Garrett  2019-05-20  248  		TPM_MEMUNMAP(mapping, mapping_size);
c46f3405692de1 Matthew Garrett  2019-05-20  249  		mapping_size += sizeof(event_field->event_size);
c46f3405692de1 Matthew Garrett  2019-05-20  250  		mapping = TPM_MEMREMAP((unsigned long)marker,
c46f3405692de1 Matthew Garrett  2019-05-20  251  				       mapping_size);
c46f3405692de1 Matthew Garrett  2019-05-20  252  		if (!mapping) {
c46f3405692de1 Matthew Garrett  2019-05-20  253  			size = 0;
c46f3405692de1 Matthew Garrett  2019-05-20  254  			goto out;
c46f3405692de1 Matthew Garrett  2019-05-20  255  		}
c46f3405692de1 Matthew Garrett  2019-05-20  256  	} else {
c46f3405692de1 Matthew Garrett  2019-05-20  257  		mapping = marker;
c46f3405692de1 Matthew Garrett  2019-05-20  258  	}
c46f3405692de1 Matthew Garrett  2019-05-20  259  
c46f3405692de1 Matthew Garrett  2019-05-20  260  	event_field = (struct tcg_event_field *)mapping;
c46f3405692de1 Matthew Garrett  2019-05-20  261  
44038bc514a244 Matthew Garrett  2019-05-20  262  	marker = marker + sizeof(event_field->event_size)
44038bc514a244 Matthew Garrett  2019-05-20  263  		+ event_field->event_size;
44038bc514a244 Matthew Garrett  2019-05-20  264  	size = marker - marker_start;
44038bc514a244 Matthew Garrett  2019-05-20  265  
047d50aee341d9 Peter Jones      2019-10-02  266  	if (event_type == 0 && event_field->event_size == 0)
c46f3405692de1 Matthew Garrett  2019-05-20  267  		size = 0;
047d50aee341d9 Peter Jones      2019-10-02  268  
c46f3405692de1 Matthew Garrett  2019-05-20  269  out:
c46f3405692de1 Matthew Garrett  2019-05-20  270  	if (do_mapping)
c46f3405692de1 Matthew Garrett  2019-05-20  271  		TPM_MEMUNMAP(mapping, mapping_size);
44038bc514a244 Matthew Garrett  2019-05-20  272  	return size;
44038bc514a244 Matthew Garrett  2019-05-20  273  }
c46f3405692de1 Matthew Garrett  2019-05-20  274  

:::::: The code at line 198 was first introduced by commit
:::::: 047d50aee341d940350897c85799e56ae57c3849 efi/tpm: Don't access event->count when it isn't mapped

:::::: TO: Peter Jones <pjones@redhat.com>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006012241.f1oOwzhm%25lkp%40intel.com.

--EVF5PPMfhYS0aIcm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
yaVixbEoi/x/AfkxGxLt1gEA

--EVF5PPMfhYS0aIcm--
