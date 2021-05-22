Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYHRUWCQMGQENK5SPXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F6638D789
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 23:34:26 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id v20-20020ab076940000b029020b0b4ada34sf8718572uaq.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 14:34:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621719265; cv=pass;
        d=google.com; s=arc-20160816;
        b=vSGidS+pc4VZKFGkwCVtpBnVnu9jXNX+o/0p34CuvouzOyvjDUACGQDsBwmPNGyu55
         UlkGDChqTNFthfdHl5LDDVlXON5soexbrUNIHvY1tgesjJizb49pXeQcStCJxS7WaXUy
         0Wo8QRmOxd2HAAVzYiToXI/Fr2ipOL2XqvgIoMKALL2gNU4d/Ln8yGVXP7G0mBghXehn
         MjyMxuvqPzNCzUibeTzpfM2qD7951tspqIhdCISys5XVSWC6zRDSvHh6ZqiN9atcUec0
         VIzfP0GKces4sDMWXUl3SyS7vGWh1xgLG5DG9O7TKBQWBcVT6hs5IeJfPfFNxDqSKVi/
         SW2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=h70Fyia+u3B6lCrYe5WbyxQhAKsqUy1KDrUPXbH4YFE=;
        b=wqE2+4UN/M6/gBB5kJ3rB903kLNevtNdViBVuKCDBO4LKIq5tWU7METhvUc4xXNQUP
         I8z8MilFRre1D/4OCM7zuDgnvYWekbRRbaAF6DRSKvie756YblyOs+ux9JIxLnzKuBhO
         k0TE1kIcJ6Y+KW5tGFump8j2CpVkAKxCKgVczZcLAl1QTzA6vLgNwFXs1QSvN/7CC9ML
         ivIlLxEpzI+mns3AzztdnsNfl9m/1zz/7KpY80Ni02liKV998HsK4zQrW86ZXW2aGfaA
         xBCDYSbBZGbpWdea3bFhRSeBJYmXu+ARdTniJJHMe54Nch7ZnLjvhE4f9a1CJDq6v/QM
         uhvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h70Fyia+u3B6lCrYe5WbyxQhAKsqUy1KDrUPXbH4YFE=;
        b=mNmcWHH9CZQrDGF30COabWuUZ8oAjVkhxWevIQzyHf3NuKM2jj+tRADk/61rYXgKT5
         IrsHlAKmRJPZfHXrlPLt//Wv4jBgDyKkVJ00nIPiXdEYkKmvFR4knYAPogwi/n1t7Clu
         bSHKBxnownpUuwdNOGJSkMBUx7pGnQg9aevxoYvDB77SZ8NzPqeFhwbZWjHR6i5rWS0w
         SmUVJuKmbfKhyD+foqfJY77Q/J6D/ZECgFZUypKKm1f+uQem5Uue976ynsWwVQajC9Sc
         ky+8dpeFAMqBQPCDalQWZgUsO239pVIJqMZSeREJWKmIdnTMIaLHfXOTkG+XPcrhyj5K
         fLgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h70Fyia+u3B6lCrYe5WbyxQhAKsqUy1KDrUPXbH4YFE=;
        b=ZvVRBnI4ftHCrTbe3y8oQ0ZeJiUIMDU4xO5jXBteGFDuPlxcdpurKxUMcJL1aGIlfy
         2x+proEEGQgyuk/lmerWuXmYfO63wH3bCHzVcTv6QHJ3f/xWzvEi67RHsDnRqng696hQ
         uNkS0z9NZ0SNjk5LXDfAMtIRQ+U3OaXgX0tCRRPXlxFOH4xy5Z0hXb0zCnYHNFFqhr2l
         sR+dmp8KlQhvFbZ20YP7ZrdHBUTv4ZK6VWpiuhBDAs7isPPZDo2k0R5CGWhqVMTCdywv
         nBqr1cevcQKYDfHQw/vszi+w/KMTqwDY++h37o18TYPxUdUlx9HWZiomWDm1IhH46GMW
         V90w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qrYx5sJanJFRjmBplIhTWgld70HSKLqnIlSiLcMZPIs94wA90
	mlO08/5ESPfUZrXsvFakhRQ=
X-Google-Smtp-Source: ABdhPJzYIWcKM7h4SxWXL08KwRUNWJ3bcj74RIv0cBeHNWB3yr5d6/YXN/3oq+T7q0JojQT3bAG1AQ==
X-Received: by 2002:a9f:2d95:: with SMTP id v21mr16701127uaj.121.1621719264933;
        Sat, 22 May 2021 14:34:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2856:: with SMTP id c22ls483775uaq.4.gmail; Sat, 22 May
 2021 14:34:24 -0700 (PDT)
X-Received: by 2002:ab0:3256:: with SMTP id r22mr16786916uan.47.1621719264190;
        Sat, 22 May 2021 14:34:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621719264; cv=none;
        d=google.com; s=arc-20160816;
        b=rUeRk5F6lyYQM1TdSPrFfEsYszkron73ixjvu4AT8X4Kb1t9wAhN5HAHKbUiDu5Fsy
         ezoIDKeDQ5sK3ghIm8ff5hXmWz/GMbl0mNItpbNx/86NTd/UyWZIJ2RMD60pbtEICZZ2
         RFHPrBySUS2S9sSEfhaYww9NjjNJiSSybmtFEL14zvvXWnZcACKwc/1ZMlkSdoAPyAmb
         HFVg57F0hzc249XU1Qu13+7Mi2tutEcwPPEcnBvl7gggG+y0qxdx2Wuz/ANuCyr7aDu9
         sZZJ7xSQxj/6sjGa15P7u5HdUtblhtDeWtassk9NTNoug3woGlih1Lx9vok6viNZgOtn
         KFJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Ay1Y/hw2wt/H0Jw3USK4mlC5aQOEJ0mLVdT7ec4iAX4=;
        b=q54Wew/39ZgzHXoqhd0q8PkJbpc2hJ6rcK0b2ePAGspBFqv4XRtWb7HUaqo2OGZNqM
         O2ItiWwjZuOjdoUNMH6oW2KfUaIW+5fJ7Uyfv4tjlcrLJZK+P7MQVXPe4dssbsn81uDM
         cSS2GlmvisQX+dQXUuzJuVGPhJE/R4zVa8hIJ6xZ2HxVrq5YxyaaBgelZ8LogfgdAHX7
         tkwm6wYk57fLP2P1b4s+2voR0CaEn4kCBwoJdfBTev/aArIv7RjF9058DujZAVQ/J2ci
         txcjrGW9q8DbBBclxMptoTn7j396YY+0glT8/xBThmUmNkRiMvcihZZGlQu96IJHtnv0
         z1ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id d26si649394vkp.3.2021.05.22.14.34.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 May 2021 14:34:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: 5cWXzLpH+9a+S51wMb8xze3RskqCOII5CbKoYV6Pml3kwdFWQD+VwM0m8kNkUrQCDxg9ZMPcQi
 Da6ooXOboVqw==
X-IronPort-AV: E=McAfee;i="6200,9189,9992"; a="262919713"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="262919713"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2021 14:34:20 -0700
IronPort-SDR: CCA5Hl0wBBQYj9kOtoIVditPBTJzEkTcSm/Kb4QlqhtpbfIB2chPOLNBNvAoOwCLdcVN58ZuMz
 U07hyEyfCgiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="475139689"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 22 May 2021 14:34:18 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lkZGE-0000U5-38; Sat, 22 May 2021 21:34:18 +0000
Date: Sun, 23 May 2021 05:33:43 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [hch-block:bvec-kmap 34/46] block/bounce.c:255:34: warning:
 incompatible pointer to integer conversion passing 'struct page *' to
 parameter of type 'size_t' (aka 'unsigned int')
Message-ID: <202105230537.dbck0zBv-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jI8keyz6grp/JLjh"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--jI8keyz6grp/JLjh
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/block.git bvec-kmap
head:   dcf9fd7b54aa00cdd89251aebaa3cc713f035e26
commit: 16a8596288c6b9cb513472678d066a021314a9f7 [34/46] block: use memcpy_from_page and bvec_virt in __blk_queue_bounce
config: mips-randconfig-r004-20210522 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e84a9b9bb3051c35dea993cdad7b3d2575638f85)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git remote add hch-block git://git.infradead.org/users/hch/block.git
        git fetch --no-tags hch-block bvec-kmap
        git checkout 16a8596288c6b9cb513472678d066a021314a9f7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> block/bounce.c:255:34: warning: incompatible pointer to integer conversion passing 'struct page *' to parameter of type 'size_t' (aka 'unsigned int') [-Wint-conversion]
                           memcpy_to_page(bvec_virt(to), page, to->bv_offset,
                                                         ^~~~
   include/linux/highmem.h:325:61: note: passing argument to parameter 'offset' here
   static inline void memcpy_to_page(struct page *page, size_t offset,
                                                               ^
>> block/bounce.c:255:40: warning: incompatible integer to pointer conversion passing 'unsigned int' to parameter of type 'const char *' [-Wint-conversion]
                           memcpy_to_page(bvec_virt(to), page, to->bv_offset,
                                                               ^~~~~~~~~~~~~
   include/linux/highmem.h:326:19: note: passing argument to parameter 'from' here
                                     const char *from, size_t len)
                                                 ^
   2 warnings generated.


vim +255 block/bounce.c

   212	
   213	void __blk_queue_bounce(struct request_queue *q, struct bio **bio_orig)
   214	{
   215		struct bio *bio;
   216		int rw = bio_data_dir(*bio_orig);
   217		struct bio_vec *to, from;
   218		struct bvec_iter iter;
   219		unsigned i = 0;
   220		bool bounce = false;
   221		int sectors = 0;
   222	
   223		bio_for_each_segment(from, *bio_orig, iter) {
   224			if (i++ < BIO_MAX_VECS)
   225				sectors += from.bv_len >> 9;
   226			if (PageHighMem(from.bv_page))
   227				bounce = true;
   228		}
   229		if (!bounce)
   230			return;
   231	
   232		if (sectors < bio_sectors(*bio_orig)) {
   233			bio = bio_split(*bio_orig, sectors, GFP_NOIO, &bounce_bio_split);
   234			bio_chain(bio, *bio_orig);
   235			submit_bio_noacct(*bio_orig);
   236			*bio_orig = bio;
   237		}
   238		bio = bounce_clone_bio(*bio_orig);
   239	
   240		/*
   241		 * Bvec table can't be updated by bio_for_each_segment_all(),
   242		 * so retrieve bvec from the table directly. This way is safe
   243		 * because the 'bio' is single-page bvec.
   244		 */
   245		for (i = 0, to = bio->bi_io_vec; i < bio->bi_vcnt; to++, i++) {
   246			struct page *page = to->bv_page;
   247	
   248			if (!PageHighMem(page))
   249				continue;
   250	
   251			to->bv_page = mempool_alloc(&page_pool, GFP_NOIO);
   252			inc_zone_page_state(to->bv_page, NR_BOUNCE);
   253	
   254			if (rw == WRITE)
 > 255				memcpy_to_page(bvec_virt(to), page, to->bv_offset,

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105230537.dbck0zBv-lkp%40intel.com.

--jI8keyz6grp/JLjh
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
oQ2zPMjI0NlcvfwP13uyQFyKAQA=

--jI8keyz6grp/JLjh--
