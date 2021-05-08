Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSEG3SCAMGQEA6UYJSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B44537742A
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 May 2021 23:31:54 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id gf19-20020a17090ac7d3b0290155e8c1b68esf7605564pjb.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 May 2021 14:31:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620509513; cv=pass;
        d=google.com; s=arc-20160816;
        b=UQMkt/7Rxitht7EWlCXae2NdJM+7R/tEjCdLC4zHUbxq7O/H0OdzbXsvPTHllJDC3l
         WgbIjiUTQGPiVdxnnWHsHxl8pujf16jPe4zEhQ7pIzqAdzuvEWC8KQeTguKIl54V5Cyu
         BvYNc9Li+baAuKpEXhqIZkLUdFPnhpV7feXbyFA5NoghbJdFK53RPK7dbI9dGqxIdGv0
         vg1OG/npdoY90Jj6EAtMbEJcp86bcBpmYBpn5fHZwwBEZZrVsS6b66U+MiX5onOHccqm
         XrTy3veu8ZS6DkpGBTHMOota3TMXLObVbsGveZTuiBEi6UO9tJGYwPs6/j7YLra0LfpZ
         2zZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=WZeNUjd70ZQtFWfafFZeRaCvfRHb/Appth4AnrwejsY=;
        b=Ao4GX32q8rlHfaorCWPvcdsFi6y8/arp/kWEZKTV38n34SdeSsYmjyHY43Cuhu3OAG
         TIn2TfOGVNsAIdTzFKCkm8H5usTivXSYU6enpqV85xewVPeIiRsWKb01FlXbR2gQEfPK
         DWKYbFDT9ZRn4WpLYyV5xYakh9BSx7gAhSZf6eg6iNXip1OzkoEe2CMmFCMbkU/GYGNO
         XkrvJh9MnrfnRERTUleYc7PBdZhy33VKbUI9jyBq5D0jlF35hp5fcGKd1JHBS6ZfAGbI
         D6diVjqJ8WwU8RPymwnXIwvz3DHDxh491Nu0YzfmQIswtnxwVL8dD4bEy8viA7xKkNIH
         Ui7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WZeNUjd70ZQtFWfafFZeRaCvfRHb/Appth4AnrwejsY=;
        b=CUsdev/ptJORkd0MeJGfXnlnKnhlGdbPJzD9apnQLNf24HrYFWazRtDVCSlBcCYUJW
         /AgWnppSkOI5BGRLJEQWCuhqw8egK88bPry8rRHqOQcf5D1O5KZLpgLu5PaMM60ad2m2
         veMm3dH0+cTf0y7yOmx9U7VxxwclVjz9VBLBOnvQVD0sHgJMy3DdBu/0O6zuGfC/5XlZ
         xQrB7KRWOCLyx2C6xYvBVWyiqzdKj5dkl5GLjcFp9RhdmJe5w9u3tSxiHTwFHgxdHoak
         ejwjXugesn+SJTrtkv+aAe7ZetxDVozgaiRm4UXYM3KdkJhx2xtelyQtN15d+lXFYm+D
         2KEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WZeNUjd70ZQtFWfafFZeRaCvfRHb/Appth4AnrwejsY=;
        b=Jfu0GdUU7BjmwVhcmf4hHW6tH+UYRuir4dGW4BdiJ8aqy45Mpx1RKMmOSJsez/hrvh
         HH6KJX+DzgW4qEvtd/9REW3xkD2gnyuADRJmYfiTurxb/5AfywHbaQJTSPORYo6WqaKQ
         ejYymO89ffKLAABC6DoBKHVIk4TB6s1thiWzKLhGhpUw8NiXqTi6tPWoJDUu2Ofb7Ol1
         XDCUrey+Yzia3+hAU4QOGqzUAFriJlMTZXav5wrByftdoxsBDPW0As8CS4smqgo6/l47
         qtGUg+b9TXKRNlDY5xIKWQBDTqm5BpZf4eWXZoyB/gbiCu6C9hB2ez0nqsyCkK/ta1iW
         MLeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532a+b9nC0Cvu9KgJNKbFUfA+j+cAi6qZkzFskgIrQj1aLLAgwZW
	6bh77xR9Be8TJ3o7Im092X8=
X-Google-Smtp-Source: ABdhPJweZlirh+85peAiAK7lNFzFl0Me/1xduMCUHS4z2wdOpgcKh9wHF3g9VK1PKZ98axSlpoqrYg==
X-Received: by 2002:a17:90a:e54e:: with SMTP id ei14mr19217389pjb.142.1620509512828;
        Sat, 08 May 2021 14:31:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3014:: with SMTP id hg20ls9616439pjb.3.canary-gmail;
 Sat, 08 May 2021 14:31:52 -0700 (PDT)
X-Received: by 2002:a17:902:b78b:b029:ed:5429:4c2c with SMTP id e11-20020a170902b78bb02900ed54294c2cmr16925236pls.4.1620509511802;
        Sat, 08 May 2021 14:31:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620509511; cv=none;
        d=google.com; s=arc-20160816;
        b=NNIvlbP381QV2lRT+b6BeHHqVQf4h45WI5vezY9vLE00CpFS9zekGoU21MtE5V7DhQ
         PrBtbE1BTVfSAZhP34GrcGiUNRi4QnRBgBPHmzfN09qygTZWcv7gob2qqp/FlQv56MGa
         cjnVaDY+VVeJwR7Hy61p66h8RkbD8d7xuID96X9cYVXeeHFEGHqGczh2Hyo2SSSikCab
         nYsCuF23RcZ6YvHZj40NOpQzCyOcGMVtGsVtihAegn3OAXiF9ECha1CaYUYldRBR3E89
         uH0mh24biRevKGFoO5czFQGWqRYHyEA1pE558mgTvq6Wv9pSJmeHpvR3Wp7Wac7QviEC
         SQ0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ltGMyl6wq0azRsXxWYTODAp+VmZiJowmf3h0sW/sV48=;
        b=YusOhIAaeNl4VxIczy5t9C0AkCdHMaLi3Fm7sCK2G7areAWSqdpTsSkvS7TdCmgwfk
         Ge3t8++s9/2bXwuE5NMg9JvCD836Oekq1F0iNv5PUl/HjlVz4wlL2yQYOeDEnlFQfv51
         PU0NM1rpBeXfdvNOcVhlG3wya+tLRaofkB35JYjKBvco89d9WpKzJKjIeitu/EwgitF9
         uwrmaH/6Amh1l4UhFmnXQheJ7hZAL1xHhT8/akFCvBR19gNdmzlreRLX0LkZJZDT+9m7
         xa9LoZ6oPmG4+Nk1qo3961iJK8yLnI7UjSiuVfIBMT5CWZQ9iBwelCOdEHXgsF/XpwyH
         8Q5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id t19si773628pjq.3.2021.05.08.14.31.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 May 2021 14:31:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: 8hx6nUgtdl4XJinoP3lQTSCMNw+u/oWs0el+63nWaxDa+uUn0fukHtMX1LYJdiSoRGzm8v8s9Z
 0YTLiuKU4icw==
X-IronPort-AV: E=McAfee;i="6200,9189,9978"; a="178528127"
X-IronPort-AV: E=Sophos;i="5.82,284,1613462400"; 
   d="gz'50?scan'50,208,50";a="178528127"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 May 2021 14:31:50 -0700
IronPort-SDR: InHZ2eNOmqjfZvLwckFESlskV7lbds2+T5G6KRA34Rbku64w+9E2UlAa7fQ/C/6wnTE5wndvMm
 XNcDlXuxJMuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,284,1613462400"; 
   d="gz'50?scan'50,208,50";a="390473358"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 08 May 2021 14:31:48 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lfUY7-000Bow-Qn; Sat, 08 May 2021 21:31:47 +0000
Date: Sun, 9 May 2021 05:31:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Ingo Molnar <mingo@kernel.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>
Subject: fs/btrfs/extent-tree.c:1983:21: warning: stack frame size of 1424
 bytes in function '__btrfs_run_delayed_refs'
Message-ID: <202105090524.tqmueSnL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HlL+5n6rz5pIUxbD"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--HlL+5n6rz5pIUxbD
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   b741596468b010af2846b75f5e75a842ce344a6e
commit: d25e37d89dd2f41d7acae0429039d2f0ae8b4a07 tracepoint: Optimize using static_call()
date:   8 months ago
config: powerpc64-randconfig-r023-20210509 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 1312852040b3190a6cb7d7c1f61fe95a5e930d8d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d25e37d89dd2f41d7acae0429039d2f0ae8b4a07
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout d25e37d89dd2f41d7acae0429039d2f0ae8b4a07
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from fs/btrfs/extent-tree.c:28:
   fs/btrfs/sysfs.h:16:14: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
   const char * const btrfs_feature_set_name(enum btrfs_feature_set set);
                ^~~~~~
>> fs/btrfs/extent-tree.c:1983:21: warning: stack frame size of 1424 bytes in function '__btrfs_run_delayed_refs' [-Wframe-larger-than=]
   static noinline int __btrfs_run_delayed_refs(struct btrfs_trans_handle *trans,
                       ^
   2 warnings generated.


vim +/__btrfs_run_delayed_refs +1983 fs/btrfs/extent-tree.c

e726138676f896 Nikolay Borisov 2018-08-15  1978  
79787eaab46121 Jeff Mahoney    2012-03-12  1979  /*
79787eaab46121 Jeff Mahoney    2012-03-12  1980   * Returns 0 on success or if called with an already aborted transaction.
79787eaab46121 Jeff Mahoney    2012-03-12  1981   * Returns -ENOMEM or -EIO on failure and will abort the transaction.
79787eaab46121 Jeff Mahoney    2012-03-12  1982   */
d7df2c796d7eed Josef Bacik     2014-01-23 @1983  static noinline int __btrfs_run_delayed_refs(struct btrfs_trans_handle *trans,
d7df2c796d7eed Josef Bacik     2014-01-23  1984  					     unsigned long nr)
56bec294dea971 Chris Mason     2009-03-13  1985  {
0a1e458a1e49dc Nikolay Borisov 2018-03-15  1986  	struct btrfs_fs_info *fs_info = trans->fs_info;
56bec294dea971 Chris Mason     2009-03-13  1987  	struct btrfs_delayed_ref_root *delayed_refs;
56bec294dea971 Chris Mason     2009-03-13  1988  	struct btrfs_delayed_ref_head *locked_ref = NULL;
0a2b2a844af616 Josef Bacik     2014-01-23  1989  	ktime_t start = ktime_get();
56bec294dea971 Chris Mason     2009-03-13  1990  	int ret;
d7df2c796d7eed Josef Bacik     2014-01-23  1991  	unsigned long count = 0;
0a2b2a844af616 Josef Bacik     2014-01-23  1992  	unsigned long actual_count = 0;
56bec294dea971 Chris Mason     2009-03-13  1993  
56bec294dea971 Chris Mason     2009-03-13  1994  	delayed_refs = &trans->transaction->delayed_refs;
0110a4c4345153 Nikolay Borisov 2018-08-15  1995  	do {
56bec294dea971 Chris Mason     2009-03-13  1996  		if (!locked_ref) {
b1cdbcb53a6edd Nikolay Borisov 2018-08-15  1997  			locked_ref = btrfs_obtain_ref_head(trans);
0110a4c4345153 Nikolay Borisov 2018-08-15  1998  			if (IS_ERR_OR_NULL(locked_ref)) {
0110a4c4345153 Nikolay Borisov 2018-08-15  1999  				if (PTR_ERR(locked_ref) == -EAGAIN) {
c3e69d58e86c39 Chris Mason     2009-03-13  2000  					continue;
0110a4c4345153 Nikolay Borisov 2018-08-15  2001  				} else {
0110a4c4345153 Nikolay Borisov 2018-08-15  2002  					break;
56bec294dea971 Chris Mason     2009-03-13  2003  				}
56bec294dea971 Chris Mason     2009-03-13  2004  			}
0110a4c4345153 Nikolay Borisov 2018-08-15  2005  			count++;
0110a4c4345153 Nikolay Borisov 2018-08-15  2006  		}
2c3cf7d5f6105b Filipe Manana   2015-10-22  2007  		/*
2c3cf7d5f6105b Filipe Manana   2015-10-22  2008  		 * We need to try and merge add/drops of the same ref since we
2c3cf7d5f6105b Filipe Manana   2015-10-22  2009  		 * can run into issues with relocate dropping the implicit ref
2c3cf7d5f6105b Filipe Manana   2015-10-22  2010  		 * and then it being added back again before the drop can
2c3cf7d5f6105b Filipe Manana   2015-10-22  2011  		 * finish.  If we merged anything we need to re-loop so we can
2c3cf7d5f6105b Filipe Manana   2015-10-22  2012  		 * get a good ref.
2c3cf7d5f6105b Filipe Manana   2015-10-22  2013  		 * Or we can get node references of the same type that weren't
2c3cf7d5f6105b Filipe Manana   2015-10-22  2014  		 * merged when created due to bumps in the tree mod seq, and
2c3cf7d5f6105b Filipe Manana   2015-10-22  2015  		 * we need to merge them to prevent adding an inline extent
2c3cf7d5f6105b Filipe Manana   2015-10-22  2016  		 * backref before dropping it (triggering a BUG_ON at
2c3cf7d5f6105b Filipe Manana   2015-10-22  2017  		 * insert_inline_extent_backref()).
2c3cf7d5f6105b Filipe Manana   2015-10-22  2018  		 */
d7df2c796d7eed Josef Bacik     2014-01-23  2019  		spin_lock(&locked_ref->lock);
be97f133b374bd Nikolay Borisov 2018-04-19  2020  		btrfs_merge_delayed_refs(trans, delayed_refs, locked_ref);
ae1e206b806ccc Josef Bacik     2012-08-07  2021  
0110a4c4345153 Nikolay Borisov 2018-08-15  2022  		ret = btrfs_run_delayed_refs_for_head(trans, locked_ref,
0110a4c4345153 Nikolay Borisov 2018-08-15  2023  						      &actual_count);
0110a4c4345153 Nikolay Borisov 2018-08-15  2024  		if (ret < 0 && ret != -EAGAIN) {
c1103f7a5d7a54 Josef Bacik     2017-09-29  2025  			/*
0110a4c4345153 Nikolay Borisov 2018-08-15  2026  			 * Error, btrfs_run_delayed_refs_for_head already
0110a4c4345153 Nikolay Borisov 2018-08-15  2027  			 * unlocked everything so just bail out
0110a4c4345153 Nikolay Borisov 2018-08-15  2028  			 */
0110a4c4345153 Nikolay Borisov 2018-08-15  2029  			return ret;
0110a4c4345153 Nikolay Borisov 2018-08-15  2030  		} else if (!ret) {
0110a4c4345153 Nikolay Borisov 2018-08-15  2031  			/*
0110a4c4345153 Nikolay Borisov 2018-08-15  2032  			 * Success, perform the usual cleanup of a processed
0110a4c4345153 Nikolay Borisov 2018-08-15  2033  			 * head
c1103f7a5d7a54 Josef Bacik     2017-09-29  2034  			 */
f9871eddd9cb1a Nikolay Borisov 2018-06-20  2035  			ret = cleanup_ref_head(trans, locked_ref);
194ab0bc21cc99 Josef Bacik     2017-09-29  2036  			if (ret > 0 ) {
b00e62507ec6a9 Josef Bacik     2017-09-29  2037  				/* We dropped our lock, we need to loop. */
b00e62507ec6a9 Josef Bacik     2017-09-29  2038  				ret = 0;
d7df2c796d7eed Josef Bacik     2014-01-23  2039  				continue;
194ab0bc21cc99 Josef Bacik     2017-09-29  2040  			} else if (ret) {
194ab0bc21cc99 Josef Bacik     2017-09-29  2041  				return ret;
56bec294dea971 Chris Mason     2009-03-13  2042  			}
22cd2e7de7b0bd Arne Jansen     2012-08-09  2043  		}
1ce7a5ec44c8b1 Josef Bacik     2017-09-29  2044  
b00e62507ec6a9 Josef Bacik     2017-09-29  2045  		/*
0110a4c4345153 Nikolay Borisov 2018-08-15  2046  		 * Either success case or btrfs_run_delayed_refs_for_head
0110a4c4345153 Nikolay Borisov 2018-08-15  2047  		 * returned -EAGAIN, meaning we need to select another head
b00e62507ec6a9 Josef Bacik     2017-09-29  2048  		 */
eb099670895f22 Josef Bacik     2009-02-12  2049  
0110a4c4345153 Nikolay Borisov 2018-08-15  2050  		locked_ref = NULL;
c3e69d58e86c39 Chris Mason     2009-03-13  2051  		cond_resched();
0110a4c4345153 Nikolay Borisov 2018-08-15  2052  	} while ((nr != -1 && count < nr) || locked_ref);
0a2b2a844af616 Josef Bacik     2014-01-23  2053  
0a2b2a844af616 Josef Bacik     2014-01-23  2054  	/*
0a2b2a844af616 Josef Bacik     2014-01-23  2055  	 * We don't want to include ref heads since we can have empty ref heads
0a2b2a844af616 Josef Bacik     2014-01-23  2056  	 * and those will drastically skew our runtime down since we just do
0a2b2a844af616 Josef Bacik     2014-01-23  2057  	 * accounting, no actual extent tree updates.
0a2b2a844af616 Josef Bacik     2014-01-23  2058  	 */
0a2b2a844af616 Josef Bacik     2014-01-23  2059  	if (actual_count > 0) {
0a2b2a844af616 Josef Bacik     2014-01-23  2060  		u64 runtime = ktime_to_ns(ktime_sub(ktime_get(), start));
0a2b2a844af616 Josef Bacik     2014-01-23  2061  		u64 avg;
0a2b2a844af616 Josef Bacik     2014-01-23  2062  
0a2b2a844af616 Josef Bacik     2014-01-23  2063  		/*
0a2b2a844af616 Josef Bacik     2014-01-23  2064  		 * We weigh the current average higher than our current runtime
0a2b2a844af616 Josef Bacik     2014-01-23  2065  		 * to avoid large swings in the average.
0a2b2a844af616 Josef Bacik     2014-01-23  2066  		 */
0a2b2a844af616 Josef Bacik     2014-01-23  2067  		spin_lock(&delayed_refs->lock);
0a2b2a844af616 Josef Bacik     2014-01-23  2068  		avg = fs_info->avg_delayed_ref_runtime * 3 + runtime;
f8c269d7223f6b David Sterba    2015-01-16  2069  		fs_info->avg_delayed_ref_runtime = avg >> 2;	/* div by 4 */
0a2b2a844af616 Josef Bacik     2014-01-23  2070  		spin_unlock(&delayed_refs->lock);
0a2b2a844af616 Josef Bacik     2014-01-23  2071  	}
d7df2c796d7eed Josef Bacik     2014-01-23  2072  	return 0;
c3e69d58e86c39 Chris Mason     2009-03-13  2073  }
c3e69d58e86c39 Chris Mason     2009-03-13  2074  

:::::: The code at line 1983 was first introduced by commit
:::::: d7df2c796d7eedd72a334dc89c65e1fec8171431 Btrfs: attach delayed ref updates to delayed ref heads

:::::: TO: Josef Bacik <jbacik@fb.com>
:::::: CC: Chris Mason <clm@fb.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105090524.tqmueSnL-lkp%40intel.com.

--HlL+5n6rz5pIUxbD
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Q/EAEmMBAA==

--HlL+5n6rz5pIUxbD--
