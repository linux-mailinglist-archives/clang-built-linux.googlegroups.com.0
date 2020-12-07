Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBN5JW77AKGQEQCQIN3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BAB2D0AF4
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 08:07:38 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id n16sf8044871pgk.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Dec 2020 23:07:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607324856; cv=pass;
        d=google.com; s=arc-20160816;
        b=tu7LSfPPR25NZmnfvsDK05Egf6HrQ9cUZDz0D5Xbf68OzciLyTHA02wQ5HS9kl7V3I
         vqG8og3H9hjjFHsGllvMcM6r1tM8V8l4CDaYo+u91S2Zx7J56Wj9VyTtgyBmtKSXHeHf
         joOOXjXdfprQdMQ0QP9DU7Lq4LZhq/MTd0dVacsehon05tiboig5WcNz0sr3XsnLQ4hj
         UX12m/179qn/f2H55mlvqnl455Wz2ENNJA/tU1O9pnW90bEAeFlU/svuqxTbbzJPa+64
         1c5KV3cFXVBUUWEB26RBbI7G4fqmdxfooSmLjfXjM5A/xSH7GTzQ3GN8D8MOK/AJmoWk
         awgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=0SCilEk2MC8GhHQUECoFblm6dwkFrP2xvGLRU0KFIjo=;
        b=FUPqtVll6oUULmuNCKtfQJgTpWMex/RQMIRGqil25A97a0gaqWl+PWpTa2Q0vZJzcD
         j+gWzvgMjR9ch5Sa/q7ikI/rV6nStKeYk2mixylc8wriNLZMcqTN1HD0k465ZuQDqp5g
         nBi1F1dFOtyv4Fb+mOvnxhoENiW1fBfok1yMGpyF79A82mZT3sIN7xkkzh98oaMlcQ7h
         lP3jCSt+J7/cPTV8UIkePlO6pHxo9CZd1aIgR3Q5vzF9d5ssRYEAuy/Cf1DNb+9zcJM+
         cIsdQaoN9ywm2OMNL7xvpb5m45jT5u8t3QLDa6W1qyHs2yI05u5sZXRMUKx/0LIt8Ar8
         5ngQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0SCilEk2MC8GhHQUECoFblm6dwkFrP2xvGLRU0KFIjo=;
        b=m39jfmdoa+NTwo40WQNqAqcpD5xBNqZu5HbtqQdBECM8ohNWpgnyWqDEUWQxmOBBKL
         bFy2stvQYsI1PxAo5lUpc4Q07nSP/DxdPJtpFQYxIZeZKCFf9Ho0cH2zwhYv9M5W8IuB
         wFFldJf4wq4CWBWGAeiv09ITUPKB3jWrP7iopfOLTsBcpUZrnR+9uOinBBNrdc3OKZnC
         B46iraPwwZ+d3Up3lt67cCO9Xxf3p9tKuLClP2VNYGiDJnYbyDbVk7WyzaGOQzrKbAeK
         mQWJID0MRg+mn+M4tToVUb/iRceaEm5iUjSHySdztyL4nSOKL1quAaVhSfrWvRUbM+g1
         xDKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0SCilEk2MC8GhHQUECoFblm6dwkFrP2xvGLRU0KFIjo=;
        b=dvA79lbvvvY5RfhaB3/JpzAlQVkancAb3chprbLfBgqD1NqWvNXpobQE4DSGNp4T4w
         IxVa1h0T1zD/xNe/nHvLMorkocpkHyELRmcMesPDxq4FYrL4j8Cy9K+ulE6H4k+bk0+e
         1AE2g1G4N3geq1469zvfko2cUkJN2JmhmUHsnKAOERu3Ys9oQEs7hnpml6DG6WGQN7rj
         MZobKHdtCWoPkAFCvryelli2PHVyAEEycIwVx6S6CWbTz/6IAiUgsp1mD0yVgSElZK9I
         ZZoCVs5l+03gJP2Aor+nflWIb5ztbzP5tYe4cNlWiRj/ly3a9gmxRibYtZc2WoUKYl2v
         99Ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SD1aY41w9qGB2bzmiEAI+oUqsy1agTP4HpnSkokXI1w/VvAiM
	/aYhdUW10jPXK12q9JDFOk8=
X-Google-Smtp-Source: ABdhPJz3crAJ2Gt0BZII/gbiordGZwcNizLXS0nORsFxlL/spBwerERpi/If0etW2FeS/FSjEz+fmA==
X-Received: by 2002:a17:902:8306:b029:da:d7f0:9e16 with SMTP id bd6-20020a1709028306b02900dad7f09e16mr11359699plb.53.1607324856129;
        Sun, 06 Dec 2020 23:07:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8b19:: with SMTP id f25ls4608197pfd.11.gmail; Sun, 06
 Dec 2020 23:07:35 -0800 (PST)
X-Received: by 2002:aa7:8e4f:0:b029:19d:9422:b06a with SMTP id d15-20020aa78e4f0000b029019d9422b06amr14416449pfr.35.1607324855351;
        Sun, 06 Dec 2020 23:07:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607324855; cv=none;
        d=google.com; s=arc-20160816;
        b=XcEt8rrBYV1EnlAJJnItmFGETFCSfPrs/JTOiO8MA47+1sj5jQQOhYhDqXAehgtDos
         MzUNaCFKy04Hrb4QvQ5YTOZ8ZCiPzRW2pty6GDostjH3uDpKPOmrP9xJACbfBub6YyOa
         2Up5m5cgTyf0fhXHedRkmKJKDLyk4EcB7oOejrsgVm95r6p0s/lJeO7FXNjCIihtsd0g
         iLCLY5R3H+HxkJZ40SCcGhulAmj4r9tbukuVDkFx6A3PsNynHYAhMRH8ko1uD7RDEElu
         ZlSAuUUVH96g3naMKMbjevuZ8g3JQxrdYmUU9QCNs+r7LETsJMo7rUWKulBmNggARimC
         oTDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=AGyaQzL7MS25U9tufyp+Ro6UflK0ONyADb+NPhc/dtg=;
        b=kCA8o1k6owKpB3OAlypMBK7z2yvlcTtClXJhQUKkW/LUQbLOknP9JO6ffRLiPiCSFb
         uWeu390bmwiZlhtj/zpPx3IIDL3tVfCmi//DCuB9zClvJGXa9B603blklAQIWNG4jYbA
         h0xIj2LNKSNqlQ7psImDu9oJhtxRDN9RGhVsWB8w27WZFlKg0tPkX49IrP/lsNK7igMw
         H2G8fWSZ5rKJxJfXWCmeXePW+neJKVNjL5sSQ6dGPp+TdUUxqbuU91w6/r4NnygN3Jtw
         DPvrtXR4JZnzCa6nNkrm9+i9ct5Q8wNgf/82c6iYjQSJF9pQAvQU6EGCN5nUThYyfNub
         pYOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id f14si885874pfe.3.2020.12.06.23.07.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 23:07:35 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: 7LIWoE3KwHuh6Qz8qFwbkROUT4RXhZgq5s2talewSAbHraQPtzRBvXWbu4k89OqrS5QUkQTwpc
 LK6njAbQGFZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="172886078"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; 
   d="gz'50?scan'50,208,50";a="172886078"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Dec 2020 23:07:34 -0800
IronPort-SDR: Io2HNMnr+HHE4RePSYMpvbpykR6t3tQ5nhXtGyAGy9iCy3Cd61pdoF+TVbxGFmkQJ794FJgPEI
 ljbLmXN6Pqgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; 
   d="gz'50?scan'50,208,50";a="331992413"
Received: from lkp-server01.sh.intel.com (HELO 84e663ee55ee) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 06 Dec 2020 23:07:31 -0800
Received: from kbuild by 84e663ee55ee with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kmAcN-00001N-3P; Mon, 07 Dec 2020 07:07:31 +0000
Date: Mon, 7 Dec 2020 15:06:44 +0800
From: kernel test robot <lkp@intel.com>
To: Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: [linux-next:master 10764/10966] fs/ext4/move_extent.c:247:1:
 warning: stack frame size of 2256 bytes in function 'move_extent_per_page'
Message-ID: <202012071538.xoW1yPcR-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IS0zKkzwUGydFO0o"
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


--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   2996bd3f6ca9ea529b40c369a94b247657abdb4d
commit: dc25526e4b3cd508654af38934a2cd318b3a8d4e [10764/10966] ubsan: move cc-option tests into Kconfig
config: mips-randconfig-r015-20201207 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a2f922140f5380571fb74179f2bf622b3b925697)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=dc25526e4b3cd508654af38934a2cd318b3a8d4e
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout dc25526e4b3cd508654af38934a2cd318b3a8d4e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/ext4/move_extent.c:247:1: warning: stack frame size of 2256 bytes in function 'move_extent_per_page' [-Wframe-larger-than=]
   move_extent_per_page(struct file *o_filp, struct inode *donor_inode,
   ^
   1 warning generated.

vim +/move_extent_per_page +247 fs/ext4/move_extent.c

bb5574880574fe Dmitry Monakhov    2012-09-26  228  
748de6736c1e48 Akira Fujita       2009-06-17  229  /**
748de6736c1e48 Akira Fujita       2009-06-17  230   * move_extent_per_page - Move extent data per page
748de6736c1e48 Akira Fujita       2009-06-17  231   *
748de6736c1e48 Akira Fujita       2009-06-17  232   * @o_filp:			file structure of original file
748de6736c1e48 Akira Fujita       2009-06-17  233   * @donor_inode:		donor inode
748de6736c1e48 Akira Fujita       2009-06-17  234   * @orig_page_offset:		page index on original file
65dd8327eb055a Xiaoguang Wang     2014-10-11  235   * @donor_page_offset:		page index on donor file
748de6736c1e48 Akira Fujita       2009-06-17  236   * @data_offset_in_page:	block index where data swapping starts
748de6736c1e48 Akira Fujita       2009-06-17  237   * @block_len_in_page:		the number of blocks to be swapped
556615dcbf38b0 Lukas Czerner      2014-04-20  238   * @unwritten:			orig extent is unwritten or not
f868a48d06f888 Akira Fujita       2009-11-23  239   * @err:			pointer to save return value
748de6736c1e48 Akira Fujita       2009-06-17  240   *
748de6736c1e48 Akira Fujita       2009-06-17  241   * Save the data in original inode blocks and replace original inode extents
65dd8327eb055a Xiaoguang Wang     2014-10-11  242   * with donor inode extents by calling ext4_swap_extents().
f868a48d06f888 Akira Fujita       2009-11-23  243   * Finally, write out the saved data in new original inode blocks. Return
f868a48d06f888 Akira Fujita       2009-11-23  244   * replaced block count.
748de6736c1e48 Akira Fujita       2009-06-17  245   */
748de6736c1e48 Akira Fujita       2009-06-17  246  static int
44fc48f7048ab9 Akira Fujita       2009-09-05 @247  move_extent_per_page(struct file *o_filp, struct inode *donor_inode,
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  248  		     pgoff_t orig_page_offset, pgoff_t donor_page_offset,
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  249  		     int data_offset_in_page,
556615dcbf38b0 Lukas Czerner      2014-04-20  250  		     int block_len_in_page, int unwritten, int *err)
748de6736c1e48 Akira Fujita       2009-06-17  251  {
496ad9aa8ef448 Al Viro            2013-01-23  252  	struct inode *orig_inode = file_inode(o_filp);
bb5574880574fe Dmitry Monakhov    2012-09-26  253  	struct page *pagep[2] = {NULL, NULL};
748de6736c1e48 Akira Fujita       2009-06-17  254  	handle_t *handle;
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  255  	ext4_lblk_t orig_blk_offset, donor_blk_offset;
748de6736c1e48 Akira Fujita       2009-06-17  256  	unsigned long blocksize = orig_inode->i_sb->s_blocksize;
f868a48d06f888 Akira Fujita       2009-11-23  257  	unsigned int tmp_data_size, data_size, replaced_size;
bcff24887d00bc Eryu Guan          2016-02-12  258  	int i, err2, jblocks, retries = 0;
f868a48d06f888 Akira Fujita       2009-11-23  259  	int replaced_count = 0;
bb5574880574fe Dmitry Monakhov    2012-09-26  260  	int from = data_offset_in_page << orig_inode->i_blkbits;
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  261  	int blocks_per_page = PAGE_SIZE >> orig_inode->i_blkbits;
88c6b61ff1cfb4 Dmitry Monakhov    2014-11-05  262  	struct super_block *sb = orig_inode->i_sb;
bcff24887d00bc Eryu Guan          2016-02-12  263  	struct buffer_head *bh = NULL;
748de6736c1e48 Akira Fujita       2009-06-17  264  
748de6736c1e48 Akira Fujita       2009-06-17  265  	/*
748de6736c1e48 Akira Fujita       2009-06-17  266  	 * It needs twice the amount of ordinary journal buffers because
748de6736c1e48 Akira Fujita       2009-06-17  267  	 * inode and donor_inode may change each different metadata blocks.
748de6736c1e48 Akira Fujita       2009-06-17  268  	 */
bb5574880574fe Dmitry Monakhov    2012-09-26  269  again:
bb5574880574fe Dmitry Monakhov    2012-09-26  270  	*err = 0;
748de6736c1e48 Akira Fujita       2009-06-17  271  	jblocks = ext4_writepage_trans_blocks(orig_inode) * 2;
9924a92a8c2175 Theodore Ts'o      2013-02-08  272  	handle = ext4_journal_start(orig_inode, EXT4_HT_MOVE_EXTENTS, jblocks);
748de6736c1e48 Akira Fujita       2009-06-17  273  	if (IS_ERR(handle)) {
f868a48d06f888 Akira Fujita       2009-11-23  274  		*err = PTR_ERR(handle);
f868a48d06f888 Akira Fujita       2009-11-23  275  		return 0;
748de6736c1e48 Akira Fujita       2009-06-17  276  	}
748de6736c1e48 Akira Fujita       2009-06-17  277  
748de6736c1e48 Akira Fujita       2009-06-17  278  	orig_blk_offset = orig_page_offset * blocks_per_page +
748de6736c1e48 Akira Fujita       2009-06-17  279  		data_offset_in_page;
748de6736c1e48 Akira Fujita       2009-06-17  280  
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  281  	donor_blk_offset = donor_page_offset * blocks_per_page +
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  282  		data_offset_in_page;
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  283  
f868a48d06f888 Akira Fujita       2009-11-23  284  	/* Calculate data_size */
748de6736c1e48 Akira Fujita       2009-06-17  285  	if ((orig_blk_offset + block_len_in_page - 1) ==
748de6736c1e48 Akira Fujita       2009-06-17  286  	    ((orig_inode->i_size - 1) >> orig_inode->i_blkbits)) {
748de6736c1e48 Akira Fujita       2009-06-17  287  		/* Replace the last block */
f868a48d06f888 Akira Fujita       2009-11-23  288  		tmp_data_size = orig_inode->i_size & (blocksize - 1);
748de6736c1e48 Akira Fujita       2009-06-17  289  		/*
f868a48d06f888 Akira Fujita       2009-11-23  290  		 * If data_size equal zero, it shows data_size is multiples of
748de6736c1e48 Akira Fujita       2009-06-17  291  		 * blocksize. So we set appropriate value.
748de6736c1e48 Akira Fujita       2009-06-17  292  		 */
f868a48d06f888 Akira Fujita       2009-11-23  293  		if (tmp_data_size == 0)
f868a48d06f888 Akira Fujita       2009-11-23  294  			tmp_data_size = blocksize;
748de6736c1e48 Akira Fujita       2009-06-17  295  
f868a48d06f888 Akira Fujita       2009-11-23  296  		data_size = tmp_data_size +
748de6736c1e48 Akira Fujita       2009-06-17  297  			((block_len_in_page - 1) << orig_inode->i_blkbits);
f868a48d06f888 Akira Fujita       2009-11-23  298  	} else
f868a48d06f888 Akira Fujita       2009-11-23  299  		data_size = block_len_in_page << orig_inode->i_blkbits;
f868a48d06f888 Akira Fujita       2009-11-23  300  
f868a48d06f888 Akira Fujita       2009-11-23  301  	replaced_size = data_size;
748de6736c1e48 Akira Fujita       2009-06-17  302  
bb5574880574fe Dmitry Monakhov    2012-09-26  303  	*err = mext_page_double_lock(orig_inode, donor_inode, orig_page_offset,
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  304  				     donor_page_offset, pagep);
f868a48d06f888 Akira Fujita       2009-11-23  305  	if (unlikely(*err < 0))
bb5574880574fe Dmitry Monakhov    2012-09-26  306  		goto stop_journal;
8c854473917354 Dmitry Monakhov    2012-09-26  307  	/*
556615dcbf38b0 Lukas Czerner      2014-04-20  308  	 * If orig extent was unwritten it can become initialized
8c854473917354 Dmitry Monakhov    2012-09-26  309  	 * at any time after i_data_sem was dropped, in order to
8c854473917354 Dmitry Monakhov    2012-09-26  310  	 * serialize with delalloc we have recheck extent while we
8c854473917354 Dmitry Monakhov    2012-09-26  311  	 * hold page's lock, if it is still the case data copy is not
8c854473917354 Dmitry Monakhov    2012-09-26  312  	 * necessary, just swap data blocks between orig and donor.
8c854473917354 Dmitry Monakhov    2012-09-26  313  	 */
556615dcbf38b0 Lukas Czerner      2014-04-20  314  	if (unwritten) {
393d1d1d769338 Dr. Tilmann Bubeck 2013-04-08  315  		ext4_double_down_write_data_sem(orig_inode, donor_inode);
8c854473917354 Dmitry Monakhov    2012-09-26  316  		/* If any of extents in range became initialized we have to
8c854473917354 Dmitry Monakhov    2012-09-26  317  		 * fallback to data copying */
556615dcbf38b0 Lukas Czerner      2014-04-20  318  		unwritten = mext_check_coverage(orig_inode, orig_blk_offset,
8c854473917354 Dmitry Monakhov    2012-09-26  319  						block_len_in_page, 1, err);
8c854473917354 Dmitry Monakhov    2012-09-26  320  		if (*err)
8c854473917354 Dmitry Monakhov    2012-09-26  321  			goto drop_data_sem;
8c854473917354 Dmitry Monakhov    2012-09-26  322  
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  323  		unwritten &= mext_check_coverage(donor_inode, donor_blk_offset,
8c854473917354 Dmitry Monakhov    2012-09-26  324  						 block_len_in_page, 1, err);
8c854473917354 Dmitry Monakhov    2012-09-26  325  		if (*err)
8c854473917354 Dmitry Monakhov    2012-09-26  326  			goto drop_data_sem;
748de6736c1e48 Akira Fujita       2009-06-17  327  
556615dcbf38b0 Lukas Czerner      2014-04-20  328  		if (!unwritten) {
393d1d1d769338 Dr. Tilmann Bubeck 2013-04-08  329  			ext4_double_up_write_data_sem(orig_inode, donor_inode);
8c854473917354 Dmitry Monakhov    2012-09-26  330  			goto data_copy;
8c854473917354 Dmitry Monakhov    2012-09-26  331  		}
8c854473917354 Dmitry Monakhov    2012-09-26  332  		if ((page_has_private(pagep[0]) &&
8c854473917354 Dmitry Monakhov    2012-09-26  333  		     !try_to_release_page(pagep[0], 0)) ||
8c854473917354 Dmitry Monakhov    2012-09-26  334  		    (page_has_private(pagep[1]) &&
8c854473917354 Dmitry Monakhov    2012-09-26  335  		     !try_to_release_page(pagep[1], 0))) {
8c854473917354 Dmitry Monakhov    2012-09-26  336  			*err = -EBUSY;
8c854473917354 Dmitry Monakhov    2012-09-26  337  			goto drop_data_sem;
8c854473917354 Dmitry Monakhov    2012-09-26  338  		}
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  339  		replaced_count = ext4_swap_extents(handle, orig_inode,
8c854473917354 Dmitry Monakhov    2012-09-26  340  						   donor_inode, orig_blk_offset,
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  341  						   donor_blk_offset,
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  342  						   block_len_in_page, 1, err);
8c854473917354 Dmitry Monakhov    2012-09-26  343  	drop_data_sem:
393d1d1d769338 Dr. Tilmann Bubeck 2013-04-08  344  		ext4_double_up_write_data_sem(orig_inode, donor_inode);
8c854473917354 Dmitry Monakhov    2012-09-26  345  		goto unlock_pages;
8c854473917354 Dmitry Monakhov    2012-09-26  346  	}
8c854473917354 Dmitry Monakhov    2012-09-26  347  data_copy:
bb5574880574fe Dmitry Monakhov    2012-09-26  348  	*err = mext_page_mkuptodate(pagep[0], from, from + replaced_size);
bb5574880574fe Dmitry Monakhov    2012-09-26  349  	if (*err)
bb5574880574fe Dmitry Monakhov    2012-09-26  350  		goto unlock_pages;
748de6736c1e48 Akira Fujita       2009-06-17  351  
bb5574880574fe Dmitry Monakhov    2012-09-26  352  	/* At this point all buffers in range are uptodate, old mapping layout
bb5574880574fe Dmitry Monakhov    2012-09-26  353  	 * is no longer required, try to drop it now. */
bb5574880574fe Dmitry Monakhov    2012-09-26  354  	if ((page_has_private(pagep[0]) && !try_to_release_page(pagep[0], 0)) ||
bb5574880574fe Dmitry Monakhov    2012-09-26  355  	    (page_has_private(pagep[1]) && !try_to_release_page(pagep[1], 0))) {
bb5574880574fe Dmitry Monakhov    2012-09-26  356  		*err = -EBUSY;
bb5574880574fe Dmitry Monakhov    2012-09-26  357  		goto unlock_pages;
bb5574880574fe Dmitry Monakhov    2012-09-26  358  	}
6e2631463f3a2c Dmitry Monakhov    2014-07-27  359  	ext4_double_down_write_data_sem(orig_inode, donor_inode);
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  360  	replaced_count = ext4_swap_extents(handle, orig_inode, donor_inode,
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  361  					       orig_blk_offset, donor_blk_offset,
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  362  					   block_len_in_page, 1, err);
6e2631463f3a2c Dmitry Monakhov    2014-07-27  363  	ext4_double_up_write_data_sem(orig_inode, donor_inode);
bb5574880574fe Dmitry Monakhov    2012-09-26  364  	if (*err) {
f868a48d06f888 Akira Fujita       2009-11-23  365  		if (replaced_count) {
f868a48d06f888 Akira Fujita       2009-11-23  366  			block_len_in_page = replaced_count;
f868a48d06f888 Akira Fujita       2009-11-23  367  			replaced_size =
f868a48d06f888 Akira Fujita       2009-11-23  368  				block_len_in_page << orig_inode->i_blkbits;
ac48b0a1d06888 Akira Fujita       2009-11-24  369  		} else
bb5574880574fe Dmitry Monakhov    2012-09-26  370  			goto unlock_pages;
748de6736c1e48 Akira Fujita       2009-06-17  371  	}
bb5574880574fe Dmitry Monakhov    2012-09-26  372  	/* Perform all necessary steps similar write_begin()/write_end()
bb5574880574fe Dmitry Monakhov    2012-09-26  373  	 * but keeping in mind that i_size will not change */
bcff24887d00bc Eryu Guan          2016-02-12  374  	if (!page_has_buffers(pagep[0]))
bcff24887d00bc Eryu Guan          2016-02-12  375  		create_empty_buffers(pagep[0], 1 << orig_inode->i_blkbits, 0);
bcff24887d00bc Eryu Guan          2016-02-12  376  	bh = page_buffers(pagep[0]);
bcff24887d00bc Eryu Guan          2016-02-12  377  	for (i = 0; i < data_offset_in_page; i++)
bcff24887d00bc Eryu Guan          2016-02-12  378  		bh = bh->b_this_page;
bcff24887d00bc Eryu Guan          2016-02-12  379  	for (i = 0; i < block_len_in_page; i++) {
bcff24887d00bc Eryu Guan          2016-02-12  380  		*err = ext4_get_block(orig_inode, orig_blk_offset + i, bh, 0);
bcff24887d00bc Eryu Guan          2016-02-12  381  		if (*err < 0)
bcff24887d00bc Eryu Guan          2016-02-12  382  			break;
6ffe77bad545f4 Eryu Guan          2016-02-21  383  		bh = bh->b_this_page;
bcff24887d00bc Eryu Guan          2016-02-12  384  	}
bb5574880574fe Dmitry Monakhov    2012-09-26  385  	if (!*err)
bb5574880574fe Dmitry Monakhov    2012-09-26  386  		*err = block_commit_write(pagep[0], from, from + replaced_size);
748de6736c1e48 Akira Fujita       2009-06-17  387  
bb5574880574fe Dmitry Monakhov    2012-09-26  388  	if (unlikely(*err < 0))
bb5574880574fe Dmitry Monakhov    2012-09-26  389  		goto repair_branches;
bb5574880574fe Dmitry Monakhov    2012-09-26  390  
bb5574880574fe Dmitry Monakhov    2012-09-26  391  	/* Even in case of data=writeback it is reasonable to pin
bb5574880574fe Dmitry Monakhov    2012-09-26  392  	 * inode to transaction, to prevent unexpected data loss */
73131fbb003b36 Ross Zwisler       2019-06-20  393  	*err = ext4_jbd2_inode_add_write(handle, orig_inode,
73131fbb003b36 Ross Zwisler       2019-06-20  394  			(loff_t)orig_page_offset << PAGE_SHIFT, replaced_size);
bb5574880574fe Dmitry Monakhov    2012-09-26  395  
bb5574880574fe Dmitry Monakhov    2012-09-26  396  unlock_pages:
bb5574880574fe Dmitry Monakhov    2012-09-26  397  	unlock_page(pagep[0]);
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  398  	put_page(pagep[0]);
bb5574880574fe Dmitry Monakhov    2012-09-26  399  	unlock_page(pagep[1]);
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  400  	put_page(pagep[1]);
bb5574880574fe Dmitry Monakhov    2012-09-26  401  stop_journal:
748de6736c1e48 Akira Fujita       2009-06-17  402  	ext4_journal_stop(handle);
88c6b61ff1cfb4 Dmitry Monakhov    2014-11-05  403  	if (*err == -ENOSPC &&
88c6b61ff1cfb4 Dmitry Monakhov    2014-11-05  404  	    ext4_should_retry_alloc(sb, &retries))
88c6b61ff1cfb4 Dmitry Monakhov    2014-11-05  405  		goto again;
bb5574880574fe Dmitry Monakhov    2012-09-26  406  	/* Buffer was busy because probably is pinned to journal transaction,
bb5574880574fe Dmitry Monakhov    2012-09-26  407  	 * force transaction commit may help to free it. */
88c6b61ff1cfb4 Dmitry Monakhov    2014-11-05  408  	if (*err == -EBUSY && retries++ < 4 && EXT4_SB(sb)->s_journal &&
88c6b61ff1cfb4 Dmitry Monakhov    2014-11-05  409  	    jbd2_journal_force_commit_nested(EXT4_SB(sb)->s_journal))
bb5574880574fe Dmitry Monakhov    2012-09-26  410  		goto again;
f868a48d06f888 Akira Fujita       2009-11-23  411  	return replaced_count;
bb5574880574fe Dmitry Monakhov    2012-09-26  412  
bb5574880574fe Dmitry Monakhov    2012-09-26  413  repair_branches:
bb5574880574fe Dmitry Monakhov    2012-09-26  414  	/*
bb5574880574fe Dmitry Monakhov    2012-09-26  415  	 * This should never ever happen!
bb5574880574fe Dmitry Monakhov    2012-09-26  416  	 * Extents are swapped already, but we are not able to copy data.
bb5574880574fe Dmitry Monakhov    2012-09-26  417  	 * Try to swap extents to it's original places
bb5574880574fe Dmitry Monakhov    2012-09-26  418  	 */
393d1d1d769338 Dr. Tilmann Bubeck 2013-04-08  419  	ext4_double_down_write_data_sem(orig_inode, donor_inode);
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  420  	replaced_count = ext4_swap_extents(handle, donor_inode, orig_inode,
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  421  					       orig_blk_offset, donor_blk_offset,
fcf6b1b729bcd2 Dmitry Monakhov    2014-08-30  422  					   block_len_in_page, 0, &err2);
393d1d1d769338 Dr. Tilmann Bubeck 2013-04-08  423  	ext4_double_up_write_data_sem(orig_inode, donor_inode);
bb5574880574fe Dmitry Monakhov    2012-09-26  424  	if (replaced_count != block_len_in_page) {
54d3adbc29f0c7 Theodore Ts'o      2020-03-28  425  		ext4_error_inode_block(orig_inode, (sector_t)(orig_blk_offset),
54d3adbc29f0c7 Theodore Ts'o      2020-03-28  426  				       EIO, "Unable to copy data block,"
bb5574880574fe Dmitry Monakhov    2012-09-26  427  				       " data will be lost.");
bb5574880574fe Dmitry Monakhov    2012-09-26  428  		*err = -EIO;
bb5574880574fe Dmitry Monakhov    2012-09-26  429  	}
bb5574880574fe Dmitry Monakhov    2012-09-26  430  	replaced_count = 0;
bb5574880574fe Dmitry Monakhov    2012-09-26  431  	goto unlock_pages;
748de6736c1e48 Akira Fujita       2009-06-17  432  }
748de6736c1e48 Akira Fujita       2009-06-17  433  

:::::: The code at line 247 was first introduced by commit
:::::: 44fc48f7048ab9657b524938a832fec4e0acea98 ext4: Fix small typo for move_extent_per_page()

:::::: TO: Akira Fujita <a-fujita@rs.jp.nec.com>
:::::: CC: Theodore Ts'o <tytso@mit.edu>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012071538.xoW1yPcR-lkp%40intel.com.

--IS0zKkzwUGydFO0o
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
E0B/0AEA

--IS0zKkzwUGydFO0o--
