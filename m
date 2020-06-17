Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDVNU73QKGQET7WDFEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F201FC8F7
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 10:38:40 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id f15sf1180469pgg.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 01:38:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592383119; cv=pass;
        d=google.com; s=arc-20160816;
        b=yEHKfmMN67wnzbequvGgtP+0pRkf7y3TfrkXaDLbWeE81lTFu5PDS/l+jporFmUpC6
         w4NtP6Tdyxwv6PCCQmV77AY2fL21tg3gBAPxckC55NELErgTD3cVI+MVnX6HQ357Ft4Z
         P1G1fJJy7AGOM/z6SecR2/X0DIWnVrzcWla+gNiE0G7pY+biuMgNkTT48GSGhazGotF6
         F01lweY+zA8lfhsw6OnWAEh6w/OPyh89EfRPNS32ujE2rL75BagowwMFziLGu1TnsoaU
         gfWVlHi5s8AmCSrFf/7esoGkwlMtP6JFYiW4YqW21xiSS2DEPsAr1debl7s+V2ifbB/r
         R9qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=yA0ONcHSER++sLVJpsHo9XmRM5FhBGPeZSeFRO2VtMM=;
        b=Mb6yrJdKdxzuGXgacCUKRco105f0+owuMKBHdnTbWkBufiVIKuM0GfWi8EKLhyEs2Y
         OUWyoYos4VrSU833sRr9/xBOjtIYEEEDuD5j/GI8e9yzuH2jH+lQvLLJHSKbWwutDeSA
         uzNr6+ejO34EQaok1dq1MqKkTaRWLFz2TLbNu+oERg33UGUMEZ6tjS5AZnl7LMa6JSfE
         Osmhesm+vZatrbU0LzRnXRHZ7RieWLscCEJIIE8irNmYp7w1UFFrdmMV+lFmp/zoiThY
         pfimruCaQ8xEKi58s+a6+bPUi8DVAVWoBDSqJcib1KrdpZP5eY3btTaHXswRX3/9GoaU
         s0iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yA0ONcHSER++sLVJpsHo9XmRM5FhBGPeZSeFRO2VtMM=;
        b=GA8TLF42d2+mbyG50ym3TnL6KnOsoPI3561vvkqBUfhbX755qR546ktNmbWYmWEbmb
         adyksmJf5cQImHBNr2EblHioWL4VV0Lpm43W7IA9lcDVkfoJdQwr+tRbvFF5HDrWstwn
         J7SREglbxjuppVcU51PA0PbcB/HZY/wjqiIu2xztGVg8+E4X0mM/aQQYMe9zsbeelYwp
         ObPCcO8W3E0Hz+XMVcBaYWSudw2KSaHGPImYQSeXM8vVRK0PFxLFEG29riV6EMtVozy/
         GXURQXB9eif6wLkc7U0Wj6yarG55cNX3WU6GT8T2+YGP+ofl4tsU4Vh69NekOC/5cF0D
         mSLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yA0ONcHSER++sLVJpsHo9XmRM5FhBGPeZSeFRO2VtMM=;
        b=h1R5dioMhMrshh+xxPr4NDBKJxFWWWzlDPGSe641FQaZyt8PX2tNeDw08uoaTUkcF3
         GLVrtGL+EbERdadGQu/jYCUjE6Z9YzAohhKwPK76mQEmb1Th6evR1dJDBktVCIslVilV
         q7pe/80ocuJXBaxCqn/XfFs2pxQ3+bwX5dv8NSXj083EYtLXEw8TGJ56qEJRMFKVgzPL
         NxTRD5NejjqCkIB0ebyN2yPDk0ST2mItpCYENDtpjV69E7Djd4rdbMPLRv/UFSjMpbde
         F+5fnpfIwK5yZ1Umxe6BFXS/aUVeRAY4RMUlSJ9EWHInCxvUDxIJY8OZSLjWCT9d2ax4
         MndA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Yln6phQENkr1LzlSUADsFZ/U/H74xXv5ZV3IQLOJ7wC4dtJyf
	aqe0GTAKMEiHIW9Xwk1v8Y8=
X-Google-Smtp-Source: ABdhPJxfrBj+2eq9CaYpeBOr28N/so7JXiJwxtp57smygx+UTDH9lWBVfDLrIYVm2mzI/pG7CX7itg==
X-Received: by 2002:a63:5961:: with SMTP id j33mr5518048pgm.372.1592383118675;
        Wed, 17 Jun 2020 01:38:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8858:: with SMTP id l85ls585044pfd.6.gmail; Wed, 17 Jun
 2020 01:38:38 -0700 (PDT)
X-Received: by 2002:a63:4182:: with SMTP id o124mr5367448pga.195.1592383118226;
        Wed, 17 Jun 2020 01:38:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592383118; cv=none;
        d=google.com; s=arc-20160816;
        b=uLOwsnQWvPOkWhFKWW/yx8G759XcxDFFqqyW4K9OW6PqsoPfUvhcY3Itxtx+vjD2Ld
         PRxmqYicq3mFesd5flKNaS13I6aBqgMOZBA4alf49zWRwgfYBpPnrPnwdvLiP3AQNGFb
         EyTwSwTzW48OywMUNYQffZfNgG2Ji/+41E2rljE+edVO4+Hguomm6IYPcCIlVQ4ssWfv
         gJiq4edwDo4waEl/hF5D93Pi9kssXGGz/fdA/jEksfLfAUcwPyV4YFU6IpBH8EzWM9xD
         +KI2QTHNCtYjMPJulmrHUzkXlA8KZAOHHvgkWMZcGdhNoswRnWkoMrafRj0MxHRy1T6Z
         Bitw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=TJXKL/ajntr2HgvRL3D18/EALQx4kDZDoEBcbXWxuQM=;
        b=KD0Vzs/kMdT5taRQm4aftPDZPy05azW4L6c4QCKfyth4d1z5hwweB6V5Bu+8ojBTxo
         hjsHQWtKtLcwo1rHBouGafP9DmwfLQVxj44O1kd7W4Y3uY00z0HtNSHzuoHiBCieKhfl
         a1Fx9GjUUAYNZ8LQtZeWo3kV2+QanQaPgYwzvjxkUuDwLIIjrOWfIAmF4TXEJQwhQSbE
         yWrvzQZ6WS/y6sX+FumrWxqPJxijytUMV5abyWS/Ba9nydODNobKyWbQEHDhKF9CkS7o
         om5rAm8VdpbJwOwYyJwIQjlJ1n1gfQzVenh0CMtlu+H3lZCFYhErIGjwSqF7TnyXawcb
         +Dzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id x70si1242904pfc.6.2020.06.17.01.38.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 01:38:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: 9TFHxsTA3JdNqOKvBfInWwqbIINt/hAqGncklcJ7j7Fd0XpVS8vP8ebMMFRC9yrcAToIka+qWQ
 OygnBfv8pWgA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2020 01:38:32 -0700
IronPort-SDR: 8jbKI8h8tGbp20kSIzR7WvoK57Mp09RWirmcsQmy0mDkSW2ECU0+TgPskVQEtLFtttXmvlxjw0
 tAcZAO3uYqxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,522,1583222400"; 
   d="gz'50?scan'50,208,50";a="309408440"
Received: from lkp-server01.sh.intel.com (HELO 60eb25531113) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 17 Jun 2020 01:38:29 -0700
Received: from kbuild by 60eb25531113 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jlTaW-00000q-Co; Wed, 17 Jun 2020 08:38:28 +0000
Date: Wed, 17 Jun 2020 16:38:09 +0800
From: kernel test robot <lkp@intel.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Christoph Hellwig <hch@lst.de>
Subject: fs/ntfs/file.c:1730:16: warning: stack frame size of 1040 bytes in
 function 'ntfs_perform_write'
Message-ID: <202006171658.W4WevFz7%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8t9RHnE3ZwKMSgU+"
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


--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   69119673bd50b176ded34032fadd41530fb5af21
commit: abca2500c0c1b20c3e552f259da4c4a99db3b4d1 arch/kunmap_atomic: consolidate duplicate code
date:   12 days ago
config: mips-randconfig-r013-20200617 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git checkout abca2500c0c1b20c3e552f259da4c4a99db3b4d1
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

>> fs/ntfs/file.c:1730:16: warning: stack frame size of 1040 bytes in function 'ntfs_perform_write' [-Wframe-larger-than=]
static ssize_t ntfs_perform_write(struct file *file, struct iov_iter *i,
^
1 warning generated.

vim +/ntfs_perform_write +1730 fs/ntfs/file.c

9014da7525dffe Marco Stornelli    2012-12-15  1723  
98b270362bb9ea Anton Altaparmakov 2005-10-11  1724  /**
a632f559304130 Anton Altaparmakov 2015-03-11  1725   * ntfs_perform_write - perform buffered write to a file
a632f559304130 Anton Altaparmakov 2015-03-11  1726   * @file:	file to write to
a632f559304130 Anton Altaparmakov 2015-03-11  1727   * @i:		iov_iter with data to write
a632f559304130 Anton Altaparmakov 2015-03-11  1728   * @pos:	byte offset in file at which to begin writing to
98b270362bb9ea Anton Altaparmakov 2005-10-11  1729   */
a632f559304130 Anton Altaparmakov 2015-03-11 @1730  static ssize_t ntfs_perform_write(struct file *file, struct iov_iter *i,
a632f559304130 Anton Altaparmakov 2015-03-11  1731  		loff_t pos)
98b270362bb9ea Anton Altaparmakov 2005-10-11  1732  {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1733  	struct address_space *mapping = file->f_mapping;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1734  	struct inode *vi = mapping->host;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1735  	ntfs_inode *ni = NTFS_I(vi);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1736  	ntfs_volume *vol = ni->vol;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1737  	struct page *pages[NTFS_MAX_PAGES_PER_CLUSTER];
98b270362bb9ea Anton Altaparmakov 2005-10-11  1738  	struct page *cached_page = NULL;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1739  	VCN last_vcn;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1740  	LCN lcn;
a632f559304130 Anton Altaparmakov 2015-03-11  1741  	size_t bytes;
a632f559304130 Anton Altaparmakov 2015-03-11  1742  	ssize_t status, written = 0;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1743  	unsigned nr_pages;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1744  
a632f559304130 Anton Altaparmakov 2015-03-11  1745  	ntfs_debug("Entering for i_ino 0x%lx, attribute type 0x%x, pos "
a632f559304130 Anton Altaparmakov 2015-03-11  1746  			"0x%llx, count 0x%lx.", vi->i_ino,
a632f559304130 Anton Altaparmakov 2015-03-11  1747  			(unsigned)le32_to_cpu(ni->type),
a632f559304130 Anton Altaparmakov 2015-03-11  1748  			(unsigned long long)pos,
a632f559304130 Anton Altaparmakov 2015-03-11  1749  			(unsigned long)iov_iter_count(i));
98b270362bb9ea Anton Altaparmakov 2005-10-11  1750  	/*
98b270362bb9ea Anton Altaparmakov 2005-10-11  1751  	 * If a previous ntfs_truncate() failed, repeat it and abort if it
98b270362bb9ea Anton Altaparmakov 2005-10-11  1752  	 * fails again.
98b270362bb9ea Anton Altaparmakov 2005-10-11  1753  	 */
98b270362bb9ea Anton Altaparmakov 2005-10-11  1754  	if (unlikely(NInoTruncateFailed(ni))) {
a632f559304130 Anton Altaparmakov 2015-03-11  1755  		int err;
a632f559304130 Anton Altaparmakov 2015-03-11  1756  
bd5fe6c5eb9c54 Christoph Hellwig  2011-06-24  1757  		inode_dio_wait(vi);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1758  		err = ntfs_truncate(vi);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1759  		if (err || NInoTruncateFailed(ni)) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1760  			if (!err)
98b270362bb9ea Anton Altaparmakov 2005-10-11  1761  				err = -EIO;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1762  			ntfs_error(vol->sb, "Cannot perform write to inode "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1763  					"0x%lx, attribute type 0x%x, because "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1764  					"ntfs_truncate() failed (error code "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1765  					"%i).", vi->i_ino,
98b270362bb9ea Anton Altaparmakov 2005-10-11  1766  					(unsigned)le32_to_cpu(ni->type), err);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1767  			return err;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1768  		}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1769  	}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1770  	/*
98b270362bb9ea Anton Altaparmakov 2005-10-11  1771  	 * Determine the number of pages per cluster for non-resident
98b270362bb9ea Anton Altaparmakov 2005-10-11  1772  	 * attributes.
98b270362bb9ea Anton Altaparmakov 2005-10-11  1773  	 */
98b270362bb9ea Anton Altaparmakov 2005-10-11  1774  	nr_pages = 1;
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1775  	if (vol->cluster_size > PAGE_SIZE && NInoNonResident(ni))
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1776  		nr_pages = vol->cluster_size >> PAGE_SHIFT;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1777  	last_vcn = -1;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1778  	do {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1779  		VCN vcn;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1780  		pgoff_t idx, start_idx;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1781  		unsigned ofs, do_pages, u;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1782  		size_t copied;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1783  
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1784  		start_idx = idx = pos >> PAGE_SHIFT;
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1785  		ofs = pos & ~PAGE_MASK;
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1786  		bytes = PAGE_SIZE - ofs;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1787  		do_pages = 1;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1788  		if (nr_pages > 1) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1789  			vcn = pos >> vol->cluster_size_bits;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1790  			if (vcn != last_vcn) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1791  				last_vcn = vcn;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1792  				/*
98b270362bb9ea Anton Altaparmakov 2005-10-11  1793  				 * Get the lcn of the vcn the write is in.  If
98b270362bb9ea Anton Altaparmakov 2005-10-11  1794  				 * it is a hole, need to lock down all pages in
98b270362bb9ea Anton Altaparmakov 2005-10-11  1795  				 * the cluster.
98b270362bb9ea Anton Altaparmakov 2005-10-11  1796  				 */
98b270362bb9ea Anton Altaparmakov 2005-10-11  1797  				down_read(&ni->runlist.lock);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1798  				lcn = ntfs_attr_vcn_to_lcn_nolock(ni, pos >>
c49c31115067bc Richard Knutsson   2006-09-30  1799  						vol->cluster_size_bits, false);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1800  				up_read(&ni->runlist.lock);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1801  				if (unlikely(lcn < LCN_HOLE)) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1802  					if (lcn == LCN_ENOMEM)
98b270362bb9ea Anton Altaparmakov 2005-10-11  1803  						status = -ENOMEM;
a632f559304130 Anton Altaparmakov 2015-03-11  1804  					else {
a632f559304130 Anton Altaparmakov 2015-03-11  1805  						status = -EIO;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1806  						ntfs_error(vol->sb, "Cannot "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1807  							"perform write to "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1808  							"inode 0x%lx, "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1809  							"attribute type 0x%x, "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1810  							"because the attribute "
98b270362bb9ea Anton Altaparmakov 2005-10-11  1811  							"is corrupt.",
98b270362bb9ea Anton Altaparmakov 2005-10-11  1812  							vi->i_ino, (unsigned)
98b270362bb9ea Anton Altaparmakov 2005-10-11  1813  							le32_to_cpu(ni->type));
a632f559304130 Anton Altaparmakov 2015-03-11  1814  					}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1815  					break;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1816  				}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1817  				if (lcn == LCN_HOLE) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1818  					start_idx = (pos & ~(s64)
98b270362bb9ea Anton Altaparmakov 2005-10-11  1819  							vol->cluster_size_mask)
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1820  							>> PAGE_SHIFT;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1821  					bytes = vol->cluster_size - (pos &
98b270362bb9ea Anton Altaparmakov 2005-10-11  1822  							vol->cluster_size_mask);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1823  					do_pages = nr_pages;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1824  				}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1825  			}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1826  		}
a632f559304130 Anton Altaparmakov 2015-03-11  1827  		if (bytes > iov_iter_count(i))
a632f559304130 Anton Altaparmakov 2015-03-11  1828  			bytes = iov_iter_count(i);
a632f559304130 Anton Altaparmakov 2015-03-11  1829  again:
98b270362bb9ea Anton Altaparmakov 2005-10-11  1830  		/*
98b270362bb9ea Anton Altaparmakov 2005-10-11  1831  		 * Bring in the user page(s) that we will copy from _first_.
98b270362bb9ea Anton Altaparmakov 2005-10-11  1832  		 * Otherwise there is a nasty deadlock on copying from the same
98b270362bb9ea Anton Altaparmakov 2005-10-11  1833  		 * page(s) as we are writing to, without it/them being marked
98b270362bb9ea Anton Altaparmakov 2005-10-11  1834  		 * up-to-date.  Note, at present there is nothing to stop the
98b270362bb9ea Anton Altaparmakov 2005-10-11  1835  		 * pages being swapped out between us bringing them into memory
98b270362bb9ea Anton Altaparmakov 2005-10-11  1836  		 * and doing the actual copying.
98b270362bb9ea Anton Altaparmakov 2005-10-11  1837  		 */
4bce9f6ee8f84f Al Viro            2016-09-17  1838  		if (unlikely(iov_iter_fault_in_readable(i, bytes))) {
a632f559304130 Anton Altaparmakov 2015-03-11  1839  			status = -EFAULT;
a632f559304130 Anton Altaparmakov 2015-03-11  1840  			break;
a632f559304130 Anton Altaparmakov 2015-03-11  1841  		}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1842  		/* Get and lock @do_pages starting at index @start_idx. */
98b270362bb9ea Anton Altaparmakov 2005-10-11  1843  		status = __ntfs_grab_cache_pages(mapping, start_idx, do_pages,
4c99000ac47cbd Minchan Kim        2010-05-24  1844  				pages, &cached_page);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1845  		if (unlikely(status))
98b270362bb9ea Anton Altaparmakov 2005-10-11  1846  			break;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1847  		/*
98b270362bb9ea Anton Altaparmakov 2005-10-11  1848  		 * For non-resident attributes, we need to fill any holes with
98b270362bb9ea Anton Altaparmakov 2005-10-11  1849  		 * actual clusters and ensure all bufferes are mapped.  We also
98b270362bb9ea Anton Altaparmakov 2005-10-11  1850  		 * need to bring uptodate any buffers that are only partially
98b270362bb9ea Anton Altaparmakov 2005-10-11  1851  		 * being written to.
98b270362bb9ea Anton Altaparmakov 2005-10-11  1852  		 */
98b270362bb9ea Anton Altaparmakov 2005-10-11  1853  		if (NInoNonResident(ni)) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1854  			status = ntfs_prepare_pages_for_non_resident_write(
98b270362bb9ea Anton Altaparmakov 2005-10-11  1855  					pages, do_pages, pos, bytes);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1856  			if (unlikely(status)) {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1857  				do {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1858  					unlock_page(pages[--do_pages]);
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1859  					put_page(pages[do_pages]);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1860  				} while (do_pages);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1861  				break;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1862  			}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1863  		}
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1864  		u = (pos >> PAGE_SHIFT) - pages[0]->index;
a632f559304130 Anton Altaparmakov 2015-03-11  1865  		copied = ntfs_copy_from_user_iter(pages + u, do_pages - u, ofs,
a632f559304130 Anton Altaparmakov 2015-03-11  1866  					i, bytes);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1867  		ntfs_flush_dcache_pages(pages + u, do_pages - u);
a632f559304130 Anton Altaparmakov 2015-03-11  1868  		status = 0;
a632f559304130 Anton Altaparmakov 2015-03-11  1869  		if (likely(copied == bytes)) {
a632f559304130 Anton Altaparmakov 2015-03-11  1870  			status = ntfs_commit_pages_after_write(pages, do_pages,
a632f559304130 Anton Altaparmakov 2015-03-11  1871  					pos, bytes);
a632f559304130 Anton Altaparmakov 2015-03-11  1872  			if (!status)
a632f559304130 Anton Altaparmakov 2015-03-11  1873  				status = bytes;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1874  		}
98b270362bb9ea Anton Altaparmakov 2005-10-11  1875  		do {
98b270362bb9ea Anton Altaparmakov 2005-10-11  1876  			unlock_page(pages[--do_pages]);
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1877  			put_page(pages[do_pages]);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1878  		} while (do_pages);
a632f559304130 Anton Altaparmakov 2015-03-11  1879  		if (unlikely(status < 0))
98b270362bb9ea Anton Altaparmakov 2005-10-11  1880  			break;
a632f559304130 Anton Altaparmakov 2015-03-11  1881  		copied = status;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1882  		cond_resched();
a632f559304130 Anton Altaparmakov 2015-03-11  1883  		if (unlikely(!copied)) {
a632f559304130 Anton Altaparmakov 2015-03-11  1884  			size_t sc;
a632f559304130 Anton Altaparmakov 2015-03-11  1885  
a632f559304130 Anton Altaparmakov 2015-03-11  1886  			/*
a632f559304130 Anton Altaparmakov 2015-03-11  1887  			 * We failed to copy anything.  Fall back to single
a632f559304130 Anton Altaparmakov 2015-03-11  1888  			 * segment length write.
a632f559304130 Anton Altaparmakov 2015-03-11  1889  			 *
a632f559304130 Anton Altaparmakov 2015-03-11  1890  			 * This is needed to avoid possible livelock in the
a632f559304130 Anton Altaparmakov 2015-03-11  1891  			 * case that all segments in the iov cannot be copied
a632f559304130 Anton Altaparmakov 2015-03-11  1892  			 * at once without a pagefault.
a632f559304130 Anton Altaparmakov 2015-03-11  1893  			 */
a632f559304130 Anton Altaparmakov 2015-03-11  1894  			sc = iov_iter_single_seg_count(i);
a632f559304130 Anton Altaparmakov 2015-03-11  1895  			if (bytes > sc)
a632f559304130 Anton Altaparmakov 2015-03-11  1896  				bytes = sc;
a632f559304130 Anton Altaparmakov 2015-03-11  1897  			goto again;
a632f559304130 Anton Altaparmakov 2015-03-11  1898  		}
a632f559304130 Anton Altaparmakov 2015-03-11  1899  		iov_iter_advance(i, copied);
a632f559304130 Anton Altaparmakov 2015-03-11  1900  		pos += copied;
a632f559304130 Anton Altaparmakov 2015-03-11  1901  		written += copied;
a632f559304130 Anton Altaparmakov 2015-03-11  1902  		balance_dirty_pages_ratelimited(mapping);
a632f559304130 Anton Altaparmakov 2015-03-11  1903  		if (fatal_signal_pending(current)) {
a632f559304130 Anton Altaparmakov 2015-03-11  1904  			status = -EINTR;
a632f559304130 Anton Altaparmakov 2015-03-11  1905  			break;
a632f559304130 Anton Altaparmakov 2015-03-11  1906  		}
a632f559304130 Anton Altaparmakov 2015-03-11  1907  	} while (iov_iter_count(i));
98b270362bb9ea Anton Altaparmakov 2005-10-11  1908  	if (cached_page)
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  1909  		put_page(cached_page);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1910  	ntfs_debug("Done.  Returning %s (written 0x%lx, status %li).",
98b270362bb9ea Anton Altaparmakov 2005-10-11  1911  			written ? "written" : "status", (unsigned long)written,
98b270362bb9ea Anton Altaparmakov 2005-10-11  1912  			(long)status);
98b270362bb9ea Anton Altaparmakov 2005-10-11  1913  	return written ? written : status;
98b270362bb9ea Anton Altaparmakov 2005-10-11  1914  }
98b270362bb9ea Anton Altaparmakov 2005-10-11  1915  

:::::: The code at line 1730 was first introduced by commit
:::::: a632f5593041305c8adbf4727bc1ccdf0b45178b NTFS: Version 2.1.32 - Update file write from aio_write to write_iter.

:::::: TO: Anton Altaparmakov <anton@tuxera.com>
:::::: CC: Al Viro <viro@zeniv.linux.org.uk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006171658.W4WevFz7%25lkp%40intel.com.

--8t9RHnE3ZwKMSgU+
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
DwkVd04f4wEA

--8t9RHnE3ZwKMSgU+--
