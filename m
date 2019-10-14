Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYEQSDWQKGQELHSCLNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CE5D5AC4
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 07:32:17 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id b204sf12756422pfb.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Oct 2019 22:32:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571031136; cv=pass;
        d=google.com; s=arc-20160816;
        b=PDZojJbR3DF376tUjSUwm8wGxeYAkKlX8W4bCYvkbvcnJwyDTZ6hyu+GrYANWHq8HE
         sKydAk/lv1HRAINMCfBK0U8vGi3/lu+KiMXmYaMk6Ydk4LWMUfrc9m8422Zviq1SYXz6
         A73flO9iRWlQK1CMkeJMETH+Vvg0XFg0afWPL4FnjugCe2EKaOj+kXIGV2GENGkV9D0+
         hxQ+207AlEvdc9DuRt9B2zaBs0vptE2t0y1yaWP5ZRZkhwVgIo8MeI8KvPw11BJqkYpr
         RhrBqj6bYPoIjQgngXs0lwYdXxH0rTSmx+zMtHBQj9J7gmAEVd6JqH7mHO6phZYdHCnT
         Z+7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Tejz2/hz6Pkh59fT++NysW0O2hnEB4m2kLkeMhwNWNg=;
        b=JHLAAsz8O5MtmzVSCpmPt27DaP4Ps1hQiQOErp5OxeJfHm39ZCUmeSUih0umNPfphZ
         Cu+KKqomnx+WCsjGujCB8tJNQAYYAiDbzon39y9ZNupnEmNMzSgcORyc2gK2GWDGDoHU
         wt9xtNGKdpQ8prs81P/zZX/b7Yknziq2c5Cmixu/WqAgmPjOiTCBMnmtTRsvuBPNdfPO
         5j2keDmMYZ4xxG1XdIMaG7DENVuBrad6yRZesDuGq7l/jDGNqxOOf7rQzpepZDy9Bfxo
         zaH24lpjo/Cu9XTenvRTi94wuiP67a9VFmJxgNZ95b24I6MNw0xn5/Av+TY58s2aYunV
         5lEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Tejz2/hz6Pkh59fT++NysW0O2hnEB4m2kLkeMhwNWNg=;
        b=QzNoHZOZZ/PwOChpBOV529LtQ7RX/mDCbZAD8CiOu6uChzNRxhUV6W1O5wxYl/zTYe
         fNAThL1hoy2HZp0N38vzcAzGBtG0pCfU2UhQMy95YUo3X70hu/UYjus49qvhKwSBlN+H
         1kIuJcrcX4DVHPkd2qQjJiZaLY7JuK+EzD2En6LJb8TUkHVLIX9RO23wQMHAfjwXILb6
         s91HO/2A8jtIAJtQgLnplfHDPSKIFxKJ90m36IN+sagJDB0q7H1e2z9ZO1PtF5dKYJ2r
         10+twf09oh9ht6vDx2iJIjdHSFFUO8U8sfWle/uDMJONpJx5+NhM4xh4sYvSXhxq65UW
         8bOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tejz2/hz6Pkh59fT++NysW0O2hnEB4m2kLkeMhwNWNg=;
        b=nCjJcTtCA6N5kF+LzrZmrPDOoAfQXnz2n9GZMQPyu9N7fbaLYbCmC0Drb+dJ080cRD
         ZzqgC5F33Zt2SsqUYMAGUCzP9elWG6xtRr0bEg1exZbxMwNtUJaGWp2XI0g1ai8KQyZa
         gL7B8NXQ+Dm7s/O46hux3uaqlO8ueGDlr2POP/LETdU192fYeJ7K2MTJLVWGSvHtWh2u
         USWfTXCkVHABuqQCyeNt2/HrJppd5hCFS7m/8VT7FveY1aW4MSAy4XqRSNQpFJGOrmwT
         A1wELzFiMAXU6f67ll30fW9je1LJ8T1+EgoOO6b2TqBukBqhzfmwSRrhJCcKri51AUgl
         zNtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUytDMkxeZvZvvLFLjIJERubrszFSy55k8/St09qSoi6jmNm3By
	78Rz8NV9c+jhYVqA8VGZVTU=
X-Google-Smtp-Source: APXvYqy3/iXpGan7Jz8WeU3WVkBN0LeZqX1U8oTTJjRu+czZxI2MF085eIkZmP84MVcRq/e/5PSxxA==
X-Received: by 2002:a17:902:421:: with SMTP id 30mr28773578ple.156.1571031136496;
        Sun, 13 Oct 2019 22:32:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8206:: with SMTP id x6ls3764537pln.7.gmail; Sun, 13
 Oct 2019 22:32:16 -0700 (PDT)
X-Received: by 2002:a17:902:a610:: with SMTP id u16mr28735876plq.200.1571031135932;
        Sun, 13 Oct 2019 22:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571031135; cv=none;
        d=google.com; s=arc-20160816;
        b=Gvwa2pIGx8AFPSstCMQ5CO1vIWkNEG/rjKtNDT0M+9f+BfxZy8PD3QkjnnegXbIlzO
         s5uoePMyWZ7F/JvcK9yWlNWcP8VXM44zz1ROiO2cf9rOXOOxzEkgSSZSdcJ2+SH0aaOv
         YJBekTdtJJM5gomqig+7Y0xyRbVJLLoidGyPSzj7nXdmstFB8VJZJ6bEa+qPYRb5mIkm
         2i7s2OqgGLEaka1RxWsFVHwHRNih/LyBvva5B+Q7OrdZXI221H+ziFqElSj22MpKvf/J
         oyd9AKjmPYDhiQDlPTxWwWl1ignQFwZ+5+LDm0egFhAdDLL73z3/NDXWYcfPbNP5gyXw
         8DHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=6hmxdG6mLJuchsrY2I4nqy+0weg+xsxw+qB9IdwEHj0=;
        b=iVDMY1csPStKQnu43r7uWFPPFXkFwiqDJS7t3nne3+yaIbro19hT/vu8tGYOrOKDFv
         da3+h4+nhSHDBO1tq2jKHiT0oQ1BjDXxkWkzBgFiU3XgDNOyANQTofZGpp+PS8cLNeq5
         9HTOryDNyOcQOkuh3o7VKpkfflImiaZvF4S/4JuB3QCK2VwpWkvNA1QJ3xKUqFUy9h//
         oicrcO/j7vQATjaPPrBCtcqbPDQPGjgVEaTEezO5qtt+WazusFLKVT/aPqV/Lb6ubOWh
         5wAX3RBBNOQJaYFaSJcKa0jMy1e2uAGQ6fMJoGPU3hcMv2Ci0pWxHSCAjE0ISHQlsQKS
         vORg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id a16si474495pgm.1.2019.10.13.22.32.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Oct 2019 22:32:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Oct 2019 22:32:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,294,1566889200"; 
   d="gz'50?scan'50,208,50";a="188926646"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 13 Oct 2019 22:32:12 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iJsxo-000GKo-7B; Mon, 14 Oct 2019 13:32:12 +0800
Date: Mon, 14 Oct 2019 13:32:02 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [sashal-linux-stable:queue-4.14 2/2] fs/f2fs/super.c:1819:4:
 warning: incompatible integer to pointer conversion passing 'unsigned int'
 to parameter of type 'const char *'
Message-ID: <201910141357.Iul79lSz%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2m6ertvnagewuszm"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--2m6ertvnagewuszm
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
BCC: philip.li@intel.com
TO: Alexander Levin <alexander.levin@microsoft.com>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/sashal/linux-stable.git queue-4.14
head:   688906fda2ad214f58200cf0a3533b952750e3aa
commit: 688906fda2ad214f58200cf0a3533b952750e3aa [2/2] f2fs: use EINVAL for superblock with invalid magic
config: x86_64-rhel-7.6 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 1f5823b788037b0dc8c846a22ef6a5a8a0714af7)
reproduce:
        git checkout 688906fda2ad214f58200cf0a3533b952750e3aa
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/f2fs/super.c:1819:4: warning: incompatible integer to pointer conversion passing 'unsigned int' to parameter of type 'const char *' [-Wint-conversion]
                           F2FS_SUPER_MAGIC, le32_to_cpu(raw_super->magic));
                           ^~~~~~~~~~~~~~~~
   include/uapi/linux/magic.h:28:26: note: expanded from macro 'F2FS_SUPER_MAGIC'
   #define F2FS_SUPER_MAGIC        0xF2F52010
                                   ^~~~~~~~~~
   fs/f2fs/super.c:177:70: note: passing argument to parameter 'fmt' here
   void f2fs_msg(struct super_block *sb, const char *level, const char *fmt, ...)
                                                                        ^
   1 warning generated.

vim +1819 fs/f2fs/super.c

9a59b62fd88196 Chao Yu             2015-12-15  1806  
df728b0f6954c3 Jaegeuk Kim         2016-03-23  1807  static int sanity_check_raw_super(struct f2fs_sb_info *sbi,
fd694733d523df Jaegeuk Kim         2016-03-20  1808  				struct buffer_head *bh)
aff063e266cbf4 Jaegeuk Kim         2012-11-02  1809  {
e60b97231950fb Jaegeuk Kim         2018-04-27  1810  	block_t segment_count, segs_per_sec, secs_per_zone;
e60b97231950fb Jaegeuk Kim         2018-04-27  1811  	block_t total_sections, blocks_per_seg;
fd694733d523df Jaegeuk Kim         2016-03-20  1812  	struct f2fs_super_block *raw_super = (struct f2fs_super_block *)
fd694733d523df Jaegeuk Kim         2016-03-20  1813  					(bh->b_data + F2FS_SUPER_OFFSET);
df728b0f6954c3 Jaegeuk Kim         2016-03-23  1814  	struct super_block *sb = sbi->sb;
aff063e266cbf4 Jaegeuk Kim         2012-11-02  1815  	unsigned int blocksize;
aff063e266cbf4 Jaegeuk Kim         2012-11-02  1816  
688906fda2ad21 Icenowy Zheng       2019-07-25  1817  	if (le32_to_cpu(raw_super->magic) != F2FS_SUPER_MAGIC) {
688906fda2ad21 Icenowy Zheng       2019-07-25  1818  		f2fs_msg(sb, "Magic Mismatch, valid(0x%x) - read(0x%x)",
a07ef784356cf9 Namjae Jeon         2012-12-30 @1819  			F2FS_SUPER_MAGIC, le32_to_cpu(raw_super->magic));
688906fda2ad21 Icenowy Zheng       2019-07-25  1820  		return -EINVAL;
a07ef784356cf9 Namjae Jeon         2012-12-30  1821  	}
aff063e266cbf4 Jaegeuk Kim         2012-11-02  1822  
5c9b469295fb6b majianpeng          2013-02-01  1823  	/* Currently, support only 4KB page cache size */
09cbfeaf1a5a67 Kirill A. Shutemov  2016-04-01  1824  	if (F2FS_BLKSIZE != PAGE_SIZE) {
5c9b469295fb6b majianpeng          2013-02-01  1825  		f2fs_msg(sb, KERN_INFO,
14d7e9de0500e9 majianpeng          2013-02-01  1826  			"Invalid page_cache_size (%lu), supports only 4KB\n",
09cbfeaf1a5a67 Kirill A. Shutemov  2016-04-01  1827  			PAGE_SIZE);
688906fda2ad21 Icenowy Zheng       2019-07-25  1828  		return -EFSCORRUPTED;
5c9b469295fb6b majianpeng          2013-02-01  1829  	}
5c9b469295fb6b majianpeng          2013-02-01  1830  
aff063e266cbf4 Jaegeuk Kim         2012-11-02  1831  	/* Currently, support only 4KB block size */
aff063e266cbf4 Jaegeuk Kim         2012-11-02  1832  	blocksize = 1 << le32_to_cpu(raw_super->log_blocksize);
5c9b469295fb6b majianpeng          2013-02-01  1833  	if (blocksize != F2FS_BLKSIZE) {
a07ef784356cf9 Namjae Jeon         2012-12-30  1834  		f2fs_msg(sb, KERN_INFO,
a07ef784356cf9 Namjae Jeon         2012-12-30  1835  			"Invalid blocksize (%u), supports only 4KB\n",
a07ef784356cf9 Namjae Jeon         2012-12-30  1836  			blocksize);
688906fda2ad21 Icenowy Zheng       2019-07-25  1837  		return -EFSCORRUPTED;
a07ef784356cf9 Namjae Jeon         2012-12-30  1838  	}
5c9b469295fb6b majianpeng          2013-02-01  1839  
9a59b62fd88196 Chao Yu             2015-12-15  1840  	/* check log blocks per segment */
9a59b62fd88196 Chao Yu             2015-12-15  1841  	if (le32_to_cpu(raw_super->log_blocks_per_seg) != 9) {
9a59b62fd88196 Chao Yu             2015-12-15  1842  		f2fs_msg(sb, KERN_INFO,
9a59b62fd88196 Chao Yu             2015-12-15  1843  			"Invalid log blocks per segment (%u)\n",
9a59b62fd88196 Chao Yu             2015-12-15  1844  			le32_to_cpu(raw_super->log_blocks_per_seg));
688906fda2ad21 Icenowy Zheng       2019-07-25  1845  		return -EFSCORRUPTED;
9a59b62fd88196 Chao Yu             2015-12-15  1846  	}
9a59b62fd88196 Chao Yu             2015-12-15  1847  
55cf9cb63f0e54 Chao Yu             2014-09-15  1848  	/* Currently, support 512/1024/2048/4096 bytes sector size */
55cf9cb63f0e54 Chao Yu             2014-09-15  1849  	if (le32_to_cpu(raw_super->log_sectorsize) >
55cf9cb63f0e54 Chao Yu             2014-09-15  1850  				F2FS_MAX_LOG_SECTOR_SIZE ||
55cf9cb63f0e54 Chao Yu             2014-09-15  1851  		le32_to_cpu(raw_super->log_sectorsize) <
55cf9cb63f0e54 Chao Yu             2014-09-15  1852  				F2FS_MIN_LOG_SECTOR_SIZE) {
55cf9cb63f0e54 Chao Yu             2014-09-15  1853  		f2fs_msg(sb, KERN_INFO, "Invalid log sectorsize (%u)",
55cf9cb63f0e54 Chao Yu             2014-09-15  1854  			le32_to_cpu(raw_super->log_sectorsize));
688906fda2ad21 Icenowy Zheng       2019-07-25  1855  		return -EFSCORRUPTED;
a07ef784356cf9 Namjae Jeon         2012-12-30  1856  	}
55cf9cb63f0e54 Chao Yu             2014-09-15  1857  	if (le32_to_cpu(raw_super->log_sectors_per_block) +
55cf9cb63f0e54 Chao Yu             2014-09-15  1858  		le32_to_cpu(raw_super->log_sectorsize) !=
55cf9cb63f0e54 Chao Yu             2014-09-15  1859  			F2FS_MAX_LOG_SECTOR_SIZE) {
55cf9cb63f0e54 Chao Yu             2014-09-15  1860  		f2fs_msg(sb, KERN_INFO,
55cf9cb63f0e54 Chao Yu             2014-09-15  1861  			"Invalid log sectors per block(%u) log sectorsize(%u)",
55cf9cb63f0e54 Chao Yu             2014-09-15  1862  			le32_to_cpu(raw_super->log_sectors_per_block),
55cf9cb63f0e54 Chao Yu             2014-09-15  1863  			le32_to_cpu(raw_super->log_sectorsize));
688906fda2ad21 Icenowy Zheng       2019-07-25  1864  		return -EFSCORRUPTED;
a07ef784356cf9 Namjae Jeon         2012-12-30  1865  	}
9a59b62fd88196 Chao Yu             2015-12-15  1866  
e60b97231950fb Jaegeuk Kim         2018-04-27  1867  	segment_count = le32_to_cpu(raw_super->segment_count);
e60b97231950fb Jaegeuk Kim         2018-04-27  1868  	segs_per_sec = le32_to_cpu(raw_super->segs_per_sec);
e60b97231950fb Jaegeuk Kim         2018-04-27  1869  	secs_per_zone = le32_to_cpu(raw_super->secs_per_zone);
e60b97231950fb Jaegeuk Kim         2018-04-27  1870  	total_sections = le32_to_cpu(raw_super->section_count);
e60b97231950fb Jaegeuk Kim         2018-04-27  1871  
e60b97231950fb Jaegeuk Kim         2018-04-27  1872  	/* blocks_per_seg should be 512, given the above check */
e60b97231950fb Jaegeuk Kim         2018-04-27  1873  	blocks_per_seg = 1 << le32_to_cpu(raw_super->log_blocks_per_seg);
e60b97231950fb Jaegeuk Kim         2018-04-27  1874  
e60b97231950fb Jaegeuk Kim         2018-04-27  1875  	if (segment_count > F2FS_MAX_SEGMENT ||
e60b97231950fb Jaegeuk Kim         2018-04-27  1876  				segment_count < F2FS_MIN_SEGMENTS) {
e60b97231950fb Jaegeuk Kim         2018-04-27  1877  		f2fs_msg(sb, KERN_INFO,
e60b97231950fb Jaegeuk Kim         2018-04-27  1878  			"Invalid segment count (%u)",
e60b97231950fb Jaegeuk Kim         2018-04-27  1879  			segment_count);
688906fda2ad21 Icenowy Zheng       2019-07-25  1880  		return -EFSCORRUPTED;
e60b97231950fb Jaegeuk Kim         2018-04-27  1881  	}
e60b97231950fb Jaegeuk Kim         2018-04-27  1882  
e60b97231950fb Jaegeuk Kim         2018-04-27  1883  	if (total_sections > segment_count ||
e60b97231950fb Jaegeuk Kim         2018-04-27  1884  			total_sections < F2FS_MIN_SEGMENTS ||
e60b97231950fb Jaegeuk Kim         2018-04-27  1885  			segs_per_sec > segment_count || !segs_per_sec) {
e60b97231950fb Jaegeuk Kim         2018-04-27  1886  		f2fs_msg(sb, KERN_INFO,
e60b97231950fb Jaegeuk Kim         2018-04-27  1887  			"Invalid segment/section count (%u, %u x %u)",
e60b97231950fb Jaegeuk Kim         2018-04-27  1888  			segment_count, total_sections, segs_per_sec);
688906fda2ad21 Icenowy Zheng       2019-07-25  1889  		return -EFSCORRUPTED;
e60b97231950fb Jaegeuk Kim         2018-04-27  1890  	}
e60b97231950fb Jaegeuk Kim         2018-04-27  1891  
e60b97231950fb Jaegeuk Kim         2018-04-27  1892  	if ((segment_count / segs_per_sec) < total_sections) {
e60b97231950fb Jaegeuk Kim         2018-04-27  1893  		f2fs_msg(sb, KERN_INFO,
e60b97231950fb Jaegeuk Kim         2018-04-27  1894  			"Small segment_count (%u < %u * %u)",
e60b97231950fb Jaegeuk Kim         2018-04-27  1895  			segment_count, segs_per_sec, total_sections);
688906fda2ad21 Icenowy Zheng       2019-07-25  1896  		return -EFSCORRUPTED;
e60b97231950fb Jaegeuk Kim         2018-04-27  1897  	}
e60b97231950fb Jaegeuk Kim         2018-04-27  1898  
c5e4022f25d054 Martin Blumenstingl 2018-12-22  1899  	if (segment_count > (le64_to_cpu(raw_super->block_count) >> 9)) {
e60b97231950fb Jaegeuk Kim         2018-04-27  1900  		f2fs_msg(sb, KERN_INFO,
c5e4022f25d054 Martin Blumenstingl 2018-12-22  1901  			"Wrong segment_count / block_count (%u > %llu)",
c5e4022f25d054 Martin Blumenstingl 2018-12-22  1902  			segment_count, le64_to_cpu(raw_super->block_count));
688906fda2ad21 Icenowy Zheng       2019-07-25  1903  		return -EFSCORRUPTED;
e60b97231950fb Jaegeuk Kim         2018-04-27  1904  	}
e60b97231950fb Jaegeuk Kim         2018-04-27  1905  
f3d6361a96a455 Chao Yu             2018-06-23  1906  	if (secs_per_zone > total_sections || !secs_per_zone) {
e60b97231950fb Jaegeuk Kim         2018-04-27  1907  		f2fs_msg(sb, KERN_INFO,
f3d6361a96a455 Chao Yu             2018-06-23  1908  			"Wrong secs_per_zone / total_sections (%u, %u)",
e60b97231950fb Jaegeuk Kim         2018-04-27  1909  			secs_per_zone, total_sections);
688906fda2ad21 Icenowy Zheng       2019-07-25  1910  		return -EFSCORRUPTED;
e60b97231950fb Jaegeuk Kim         2018-04-27  1911  	}
e60b97231950fb Jaegeuk Kim         2018-04-27  1912  	if (le32_to_cpu(raw_super->extension_count) > F2FS_MAX_EXTENSION) {
e60b97231950fb Jaegeuk Kim         2018-04-27  1913  		f2fs_msg(sb, KERN_INFO,
e60b97231950fb Jaegeuk Kim         2018-04-27  1914  			"Corrupted extension count (%u > %u)",
e60b97231950fb Jaegeuk Kim         2018-04-27  1915  			le32_to_cpu(raw_super->extension_count),
e60b97231950fb Jaegeuk Kim         2018-04-27  1916  			F2FS_MAX_EXTENSION);
688906fda2ad21 Icenowy Zheng       2019-07-25  1917  		return -EFSCORRUPTED;
e60b97231950fb Jaegeuk Kim         2018-04-27  1918  	}
e60b97231950fb Jaegeuk Kim         2018-04-27  1919  
e60b97231950fb Jaegeuk Kim         2018-04-27  1920  	if (le32_to_cpu(raw_super->cp_payload) >
e60b97231950fb Jaegeuk Kim         2018-04-27  1921  				(blocks_per_seg - F2FS_CP_PACKS)) {
e60b97231950fb Jaegeuk Kim         2018-04-27  1922  		f2fs_msg(sb, KERN_INFO,
e60b97231950fb Jaegeuk Kim         2018-04-27  1923  			"Insane cp_payload (%u > %u)",
e60b97231950fb Jaegeuk Kim         2018-04-27  1924  			le32_to_cpu(raw_super->cp_payload),
e60b97231950fb Jaegeuk Kim         2018-04-27  1925  			blocks_per_seg - F2FS_CP_PACKS);
688906fda2ad21 Icenowy Zheng       2019-07-25  1926  		return -EFSCORRUPTED;
e60b97231950fb Jaegeuk Kim         2018-04-27  1927  	}
e60b97231950fb Jaegeuk Kim         2018-04-27  1928  
9a59b62fd88196 Chao Yu             2015-12-15  1929  	/* check reserved ino info */
9a59b62fd88196 Chao Yu             2015-12-15  1930  	if (le32_to_cpu(raw_super->node_ino) != 1 ||
9a59b62fd88196 Chao Yu             2015-12-15  1931  		le32_to_cpu(raw_super->meta_ino) != 2 ||
9a59b62fd88196 Chao Yu             2015-12-15  1932  		le32_to_cpu(raw_super->root_ino) != 3) {
9a59b62fd88196 Chao Yu             2015-12-15  1933  		f2fs_msg(sb, KERN_INFO,
9a59b62fd88196 Chao Yu             2015-12-15  1934  			"Invalid Fs Meta Ino: node(%u) meta(%u) root(%u)",
9a59b62fd88196 Chao Yu             2015-12-15  1935  			le32_to_cpu(raw_super->node_ino),
9a59b62fd88196 Chao Yu             2015-12-15  1936  			le32_to_cpu(raw_super->meta_ino),
9a59b62fd88196 Chao Yu             2015-12-15  1937  			le32_to_cpu(raw_super->root_ino));
688906fda2ad21 Icenowy Zheng       2019-07-25  1938  		return -EFSCORRUPTED;
9a59b62fd88196 Chao Yu             2015-12-15  1939  	}
9a59b62fd88196 Chao Yu             2015-12-15  1940  
9a59b62fd88196 Chao Yu             2015-12-15  1941  	/* check CP/SIT/NAT/SSA/MAIN_AREA area boundary */
df728b0f6954c3 Jaegeuk Kim         2016-03-23  1942  	if (sanity_check_area_boundary(sbi, bh))
688906fda2ad21 Icenowy Zheng       2019-07-25  1943  		return -EFSCORRUPTED;
9a59b62fd88196 Chao Yu             2015-12-15  1944  
aff063e266cbf4 Jaegeuk Kim         2012-11-02  1945  	return 0;
aff063e266cbf4 Jaegeuk Kim         2012-11-02  1946  }
aff063e266cbf4 Jaegeuk Kim         2012-11-02  1947  

:::::: The code at line 1819 was first introduced by commit
:::::: a07ef784356cf9157bd9bed5254cbb9a82d33722 f2fs: introduce f2fs_msg to ease adding information prints

:::::: TO: Namjae Jeon <namjae.jeon@samsung.com>
:::::: CC: Jaegeuk Kim <jaegeuk.kim@samsung.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910141357.Iul79lSz%25lkp%40intel.com.

--2m6ertvnagewuszm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--2m6ertvnagewuszm--
