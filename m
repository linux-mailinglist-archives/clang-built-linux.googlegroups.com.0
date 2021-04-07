Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBFFXCBQMGQEI2R3ZBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F933575A2
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 22:13:58 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id w15sf11824207otm.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 13:13:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617826437; cv=pass;
        d=google.com; s=arc-20160816;
        b=tgZ/icRDNxTTcuLFQ2pxklWhaJ5uEiKMywEoqCphIjGzd/kcr1bnAGU25B0d0GRrd+
         8AwsSbKm2TYOZVg69Y9w9DDH6qFYEAo42eSO2UyWNca0hMkqMhcnrh4huSarakZwZrfq
         1+os+rH4QZ9U6vtMPdkhSd1iXnlqdtxg42VKqSM9bVsB9rlHUB3VX5H5US5K0ROWa4Ro
         bq1GnX+Z2S85dSCXXdW5V1vjdjZeKCvhDj54YpWEU1XZ+5BsjAeRRZgMFazM9yjlax5X
         KNpR0uUXs2cCysHRXU0Au+8uapx5FWPvNEya2cIiWyP9mqdJ5Z/BeOGhv5/5gf+1CEl4
         KYpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=arOI0P6bIu6ZNMG/Km3V9vHpjVWOSI/xj+HLW7rQaq0=;
        b=OwXgUN3OocuLSL3nfITHGYN2TIK3hdGmZv1U4Cgn2tOZD5k1ZMWxbXHaCvFfG8ADGE
         qDijF1S9tWoYwsNHx5qKp3UeJTWnQrYU7uqQdIdG+JuxvCdRwOBykjzIgx1y2nwMDcu4
         Le03UJUoNoJDfwTqrX5LjttfTRt5T/xHd6VjjD41yG5kLldbcNBKfPqw2VlAGiO5O4L8
         qgHtteHp8GxdvZbDjs259vf0FkmcXfN8ri4nhelSifO/cuV8fvw9n5PsjpiP0oh4fLV/
         +B1ROC0x5RVv8gW6oOvOPQTZ6uiys+I9rVatYaPoV9BytmeoCXXRu61ZtyMVbyV3mnIp
         uw2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=arOI0P6bIu6ZNMG/Km3V9vHpjVWOSI/xj+HLW7rQaq0=;
        b=ISPiuR/fpLytmaVi+O5OoBRTLybYE608Eak3/s0shLNrQx6YvPzTyAR7Dc3sElQwKH
         lYEGSlkA9ReqbPp6JNnDJmvirwuuOZTYCkmM1Yx8TxNwCyZ62RJ8YgvsSKFaEykr4ZQj
         HMaC1DFg0pomEPxcNlbH8ZLotQ/2JhpN43fLXPv5FIOVYced58S7IRDZo0Qx4u9iMyyQ
         siGaTkEtrE2jJWLinl8CgVgdI3oqNGqw9rKRkFbVD1qDU8IEWtrxBoF3WMyrZjU93nYF
         Fwk1tHX2ITL474Y/JVcs4JSLWi6b8ZArE0Op7fOWtu2s/3z7jJ5Tis4BQjoLYSLcqCP0
         ugkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=arOI0P6bIu6ZNMG/Km3V9vHpjVWOSI/xj+HLW7rQaq0=;
        b=ZFNZ3MLnxKNvVjTMyrIA6Wi05Zw0qvzJvYGaHsfdcIQs7rjfkCp6U4cVvGW0pCMgho
         IbvRvKL63Us8N+URvUyJMDz7kxmLw/BKdB6hczySdr1cQHmsRZb6YjS3Gwfw1JjGE2LG
         RkUXvKd2wqax0N44IETxsBh0LSBccAh43D3a4xaLmGO+7aYfhKCmNAZA6IT+S2ig+q9c
         mpFUxeSskSAKtNB+42SnBToOCHUAXaGejAEz25RywFkOJg2ws+u2MASRLw3wMVxfLLdp
         mHFbo47qcJA6XxWXPV7zWplUexgHYHNfrL/7dN4ReHSiZT+iMm6qoHDwESNp3XYQb9vd
         OfXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tPsMR+bHn70xoflbd8RVonAibQ00nCl8QN2FQSCtt1zTbTMY0
	LT6Dn0/lKW7zdzPgswvaSCk=
X-Google-Smtp-Source: ABdhPJxRnwlPweCdREd6nkxsRoZ5z/E02S/J/aIk/+lZmvFvBnGfLG3GUlwIk6lvSvsYBxyjXOP2Rw==
X-Received: by 2002:a4a:21c2:: with SMTP id u185mr4376136oou.63.1617826436984;
        Wed, 07 Apr 2021 13:13:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1146:: with SMTP id u6ls748377oiu.9.gmail; Wed, 07
 Apr 2021 13:13:56 -0700 (PDT)
X-Received: by 2002:aca:4004:: with SMTP id n4mr3434106oia.89.1617826436375;
        Wed, 07 Apr 2021 13:13:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617826436; cv=none;
        d=google.com; s=arc-20160816;
        b=y3DysSaeOmzCihw1p6sDoRcuUyd1eN1PIalTs3hJ1b3UR87zzQQH8oAgs1UhfDsWfN
         GBte7SMtHg978RYMS+1HVWQuYoknNINUSfa5T81ZWwcMLCUqSUaYXkpLqgD4V0FH16E/
         awe2DBcrfKuwPQIlu6N/w01Zz4A/mvdXEq0AgWpsvOq4+VYyfr8FMwZe/R4fNp2pxqpo
         Dq7K2PyexhveG2fr6FHPHxVd6T8pcp6qPLr2BfK07GvgBb9RXermCtAAGpzR0vB2mZwY
         nHQ9kIdNwycYmUNRkvelCu5RoLCNQ6YhMN7me6+AELCHHMKil50jpv4Vgbz+X7Uto5y9
         nypA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=G1NzkU+hyDN7I+fqX9YikFpVESuXpjeDkNpGzZP11t0=;
        b=i6HQ+sCv+nKs26De8wiAcQPK7dLzfd+p+GuS2Zc/JQ8vSsxAQM0TOAbQYBKMheGd0B
         cDaCFZ1lwtkjpHlTOqi6k5aJia1eKbmznMqJ58arwevCmAFKHWBwDbKpp91+HwnCndOz
         QIhLyDUdDJsXRmPL9+qowabgqUWTDKsc+P58x1iU0Ir22ods5E1d/NHG0d/Rf+cVVVBB
         zsSHT9um5hK2Xw0aqlBG223CdXnnfnOntObl6i2FhVa5YhJbR6LubXPWSl3KrjiaMSJp
         Fbbalg3rwpn0DPX5i9qM8vOa4lhxGzrbRWnRF+W42Qv2aOBKs5CmxSKW/SSrAnrfGp18
         ECoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id a12si1749868oid.0.2021.04.07.13.13.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 13:13:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: GJ2rXcNxw6cj2sabbw8NmhIgBh1iDKg+iDDCAClhSad2ODv6e9TN16x+Y3/zKhDsOi54d7XCTV
 0yN1FYJc83rA==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="213786677"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; 
   d="gz'50?scan'50,208,50";a="213786677"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Apr 2021 13:13:36 -0700
IronPort-SDR: YqvYpt/wZTgpWE/UoTCGoo7UGHU4MYc/rGUW8+6Toa676k5kCnzyNfKYdMJf6qPEnGSIdULn31
 wOsZiiQCfofw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; 
   d="gz'50?scan'50,208,50";a="519565163"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 07 Apr 2021 13:13:34 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lUEYQ-000DjD-6F; Wed, 07 Apr 2021 20:13:34 +0000
Date: Thu, 8 Apr 2021 04:13:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [trace:ftrace/eventfs 29/31] fs/tracefs/event_inode.c:314:38:
 warning: unused variable 'eventfs_root_inode_operations'
Message-ID: <202104080423.hnT19tRD-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline
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


--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git ftrace/eventfs
head:   98c5aabb161e22a877a91272fb99f8a1e9d9e784
commit: 257ae215118381ba942287c5fc7edf81336bc5d5 [29/31] Fixes to make it compile
config: powerpc-randconfig-r033-20210407 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c060945b23a1c54d4b2a053ff4b093a2277b303d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git/commit/?id=257ae215118381ba942287c5fc7edf81336bc5d5
        git remote add trace https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git
        git fetch --no-tags trace ftrace/eventfs
        git checkout 257ae215118381ba942287c5fc7edf81336bc5d5
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   fs/tracefs/event_inode.c:62:16: warning: no previous prototype for function 'eventfs_create_file' [-Wmissing-prototypes]
   struct dentry *eventfs_create_file(const char *name, umode_t mode,
                  ^
   fs/tracefs/event_inode.c:62:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct dentry *eventfs_create_file(const char *name, umode_t mode,
   ^
   static 
   fs/tracefs/event_inode.c:204:24: warning: unused variable 'ei' [-Wunused-variable]
           struct eventfs_inode *ei;
                                 ^
   fs/tracefs/event_inode.c:206:16: warning: unused variable 'inode' [-Wunused-variable]
           struct inode *inode = file_inode(file);
                         ^
   fs/tracefs/event_inode.c:205:23: warning: unused variable 'ef' [-Wunused-variable]
           struct eventfs_file *ef, *n;
                                ^
   fs/tracefs/event_inode.c:203:24: warning: unused variable 'ti' [-Wunused-variable]
           struct tracefs_inode *ti;
                                 ^
   fs/tracefs/event_inode.c:205:28: warning: unused variable 'n' [-Wunused-variable]
           struct eventfs_file *ef, *n;
                                     ^
   fs/tracefs/event_inode.c:247:24: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
           struct tracefs_inode *ti;
                                 ^
   fs/tracefs/event_inode.c:273:5: warning: no previous prototype for function 'dcache_dir_open_wrapper' [-Wmissing-prototypes]
   int dcache_dir_open_wrapper(struct inode *inode, struct file *file)
       ^
   fs/tracefs/event_inode.c:273:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int dcache_dir_open_wrapper(struct inode *inode, struct file *file)
   ^
   static 
   fs/tracefs/event_inode.c:118:13: warning: unused function 'eventfs_fill_cache' [-Wunused-function]
   static bool eventfs_fill_cache(struct file *file, struct dir_context *ctx,
               ^
   fs/tracefs/event_inode.c:154:23: warning: unused function 'eventfs_lookup' [-Wunused-function]
   static struct dentry *eventfs_lookup(struct inode *dir, struct dentry *dentry,
                         ^
>> fs/tracefs/event_inode.c:314:38: warning: unused variable 'eventfs_root_inode_operations' [-Wunused-const-variable]
   static const struct inode_operations eventfs_root_inode_operations = {
                                        ^
   11 warnings generated.


vim +/eventfs_root_inode_operations +314 fs/tracefs/event_inode.c

fa0d07bef48a9a Ajay Kaher              2021-01-31  114  
fa0d07bef48a9a Ajay Kaher              2021-01-31  115  typedef struct dentry *instantiate_t(struct dentry *,
fa0d07bef48a9a Ajay Kaher              2021-01-31  116  				     struct task_struct *, const void *);
fa0d07bef48a9a Ajay Kaher              2021-01-31  117  
fa0d07bef48a9a Ajay Kaher              2021-01-31 @118  static bool eventfs_fill_cache(struct file *file, struct dir_context *ctx,
fa0d07bef48a9a Ajay Kaher              2021-01-31  119  	const char *name, unsigned int len,
fa0d07bef48a9a Ajay Kaher              2021-01-31  120  	instantiate_t instantiate, struct task_struct *task, const void *ptr)
fa0d07bef48a9a Ajay Kaher              2021-01-31  121  {
fa0d07bef48a9a Ajay Kaher              2021-01-31  122  	struct dentry *child, *dir = file->f_path.dentry;
fa0d07bef48a9a Ajay Kaher              2021-01-31  123  	struct qstr qname = QSTR_INIT(name, len);
fa0d07bef48a9a Ajay Kaher              2021-01-31  124  	struct inode *inode;
fa0d07bef48a9a Ajay Kaher              2021-01-31  125  	unsigned type = DT_UNKNOWN;
fa0d07bef48a9a Ajay Kaher              2021-01-31  126  	ino_t ino = 1;
fa0d07bef48a9a Ajay Kaher              2021-01-31  127  
fa0d07bef48a9a Ajay Kaher              2021-01-31  128  	child = d_hash_and_lookup(dir, &qname);
fa0d07bef48a9a Ajay Kaher              2021-01-31  129  	if (!child) {
fa0d07bef48a9a Ajay Kaher              2021-01-31  130  		DECLARE_WAIT_QUEUE_HEAD_ONSTACK(wq);
fa0d07bef48a9a Ajay Kaher              2021-01-31  131  		child = d_alloc_parallel(dir, &qname, &wq);
fa0d07bef48a9a Ajay Kaher              2021-01-31  132  		if (IS_ERR(child))
fa0d07bef48a9a Ajay Kaher              2021-01-31  133  			goto end_instantiate;
fa0d07bef48a9a Ajay Kaher              2021-01-31  134  		if (d_in_lookup(child)) {
fa0d07bef48a9a Ajay Kaher              2021-01-31  135  			struct dentry *res;
fa0d07bef48a9a Ajay Kaher              2021-01-31  136  			res = instantiate(child, task, ptr);
fa0d07bef48a9a Ajay Kaher              2021-01-31  137  			d_lookup_done(child);
fa0d07bef48a9a Ajay Kaher              2021-01-31  138  			if (unlikely(res)) {
fa0d07bef48a9a Ajay Kaher              2021-01-31  139  				dput(child);
fa0d07bef48a9a Ajay Kaher              2021-01-31  140  				child = res;
fa0d07bef48a9a Ajay Kaher              2021-01-31  141  				if (IS_ERR(child))
fa0d07bef48a9a Ajay Kaher              2021-01-31  142  					goto end_instantiate;
fa0d07bef48a9a Ajay Kaher              2021-01-31  143  			}
fa0d07bef48a9a Ajay Kaher              2021-01-31  144  		}
fa0d07bef48a9a Ajay Kaher              2021-01-31  145  	}
fa0d07bef48a9a Ajay Kaher              2021-01-31  146  	inode = d_inode(child);
fa0d07bef48a9a Ajay Kaher              2021-01-31  147  	ino = inode->i_ino;
fa0d07bef48a9a Ajay Kaher              2021-01-31  148  	type = inode->i_mode >> 12;
fa0d07bef48a9a Ajay Kaher              2021-01-31  149  	dput(child);
fa0d07bef48a9a Ajay Kaher              2021-01-31  150  end_instantiate:
fa0d07bef48a9a Ajay Kaher              2021-01-31  151  	return dir_emit(ctx, name, len, ino, type);
fa0d07bef48a9a Ajay Kaher              2021-01-31  152  }
fa0d07bef48a9a Ajay Kaher              2021-01-31  153  
fa0d07bef48a9a Ajay Kaher              2021-01-31  154  static struct dentry *eventfs_lookup(struct inode *dir, struct dentry *dentry,
fa0d07bef48a9a Ajay Kaher              2021-01-31  155  			      unsigned int flags)
fa0d07bef48a9a Ajay Kaher              2021-01-31  156  {
02514bdd3c4be7 Ajay Kaher              2021-03-16  157  
02514bdd3c4be7 Ajay Kaher              2021-03-16  158          printk("%s:%d dir = %s\n", __func__, __LINE__, dentry->d_iname);
fa0d07bef48a9a Ajay Kaher              2021-01-31  159  	return NULL;
fa0d07bef48a9a Ajay Kaher              2021-01-31  160  #if 0
fa0d07bef48a9a Ajay Kaher              2021-01-31  161  	struct proc_fs_info *fs_info = proc_sb_info(dir->i_sb);
fa0d07bef48a9a Ajay Kaher              2021-01-31  162  
fa0d07bef48a9a Ajay Kaher              2021-01-31  163  	if (fs_info->pidonly == PROC_PIDONLY_ON)
fa0d07bef48a9a Ajay Kaher              2021-01-31  164  		return ERR_PTR(-ENOENT);
fa0d07bef48a9a Ajay Kaher              2021-01-31  165  
fa0d07bef48a9a Ajay Kaher              2021-01-31  166  	return proc_lookup_de(dir, dentry, PDE(dir));
fa0d07bef48a9a Ajay Kaher              2021-01-31  167  #endif
fa0d07bef48a9a Ajay Kaher              2021-01-31  168  }
fa0d07bef48a9a Ajay Kaher              2021-01-31  169  
fa0d07bef48a9a Ajay Kaher              2021-01-31  170  static struct dentry *eventfs_root_lookup(struct inode * dir,
fa0d07bef48a9a Ajay Kaher              2021-01-31  171  					  struct dentry * dentry,
fa0d07bef48a9a Ajay Kaher              2021-01-31  172  					  unsigned int flags)
fa0d07bef48a9a Ajay Kaher              2021-01-31  173  {
02514bdd3c4be7 Ajay Kaher              2021-03-16  174          struct tracefs_inode *ti;
02514bdd3c4be7 Ajay Kaher              2021-03-16  175          struct eventfs_inode *ei;
02514bdd3c4be7 Ajay Kaher              2021-03-16  176          struct eventfs_file *ef, *n;
02514bdd3c4be7 Ajay Kaher              2021-03-16  177  
257ae215118381 Steven Rostedt (VMware  2021-04-02  178) 	struct dentry *ret = simple_lookup(dir, dentry, flags);
257ae215118381 Steven Rostedt (VMware  2021-04-02  179) 
02514bdd3c4be7 Ajay Kaher              2021-03-16  180          printk("%s:%d FileName = %s\n", __func__, __LINE__, dentry->d_iname);
02514bdd3c4be7 Ajay Kaher              2021-03-16  181  
02514bdd3c4be7 Ajay Kaher              2021-03-16  182  	ti = get_tracefs(dir);
02514bdd3c4be7 Ajay Kaher              2021-03-16  183  	if (!(ti->flags & TRACEFS_EVENT_INODE))
257ae215118381 Steven Rostedt (VMware  2021-04-02  184) 		return NULL;
02514bdd3c4be7 Ajay Kaher              2021-03-16  185  
02514bdd3c4be7 Ajay Kaher              2021-03-16  186  	ei = ti->private;
02514bdd3c4be7 Ajay Kaher              2021-03-16  187          list_for_each_entry_safe(ef, n, &ei->e_top_files, list) {
02514bdd3c4be7 Ajay Kaher              2021-03-16  188  		if (!strncmp (ef->name, dentry->d_iname, strlen(ef->name)) && (ef->status == FILE_NOT_CREATED))
02514bdd3c4be7 Ajay Kaher              2021-03-16  189  		{
02514bdd3c4be7 Ajay Kaher              2021-03-16  190                          ef->status = FILE_CREATED;
02514bdd3c4be7 Ajay Kaher              2021-03-16  191  		        printk("%s:%d Parent = %s, FileName = %s, ef->name = %s \n", __func__, __LINE__, ef->d_parent->d_iname, dentry->d_iname, ef->name);
02514bdd3c4be7 Ajay Kaher              2021-03-16  192                          ef->dentry = eventfs_create_file(ef->name, ef->mode, ef->d_parent, ef->data, ef->fops, 1);
669b2f35c722b7 Steven Rostedt (VMware  2021-04-07  193) 			kref_init(&ef->kref);
02514bdd3c4be7 Ajay Kaher              2021-03-16  194  			
02514bdd3c4be7 Ajay Kaher              2021-03-16  195                  }
02514bdd3c4be7 Ajay Kaher              2021-03-16  196          }
02514bdd3c4be7 Ajay Kaher              2021-03-16  197  	return ret; //  simple_lookup(dir, dentry, flags);
fa0d07bef48a9a Ajay Kaher              2021-01-31  198  }
fa0d07bef48a9a Ajay Kaher              2021-01-31  199  
fa0d07bef48a9a Ajay Kaher              2021-01-31  200  static int eventfs_top_readdir(struct file *file, struct dir_context *ctx)
fa0d07bef48a9a Ajay Kaher              2021-01-31  201  {
fa0d07bef48a9a Ajay Kaher              2021-01-31  202  
fa0d07bef48a9a Ajay Kaher              2021-01-31  203  	struct tracefs_inode *ti;
fa0d07bef48a9a Ajay Kaher              2021-01-31  204  	struct eventfs_inode *ei;
fa0d07bef48a9a Ajay Kaher              2021-01-31  205  	struct eventfs_file *ef, *n;
fa0d07bef48a9a Ajay Kaher              2021-01-31  206  	struct inode *inode = file_inode(file);
fa0d07bef48a9a Ajay Kaher              2021-01-31  207  	struct dentry *dentry = file_dentry(file);
fa0d07bef48a9a Ajay Kaher              2021-01-31  208  
02514bdd3c4be7 Ajay Kaher              2021-03-16  209  	printk("%s:%d dir = %s\n", __func__, __LINE__, dentry->d_iname);
02514bdd3c4be7 Ajay Kaher              2021-03-16  210  
02514bdd3c4be7 Ajay Kaher              2021-03-16  211  #if 0
fa0d07bef48a9a Ajay Kaher              2021-01-31  212  	ti = get_tracefs(inode);
fa0d07bef48a9a Ajay Kaher              2021-01-31  213  	if (!(ti->flags & TRACEFS_EVENT_INODE))
fa0d07bef48a9a Ajay Kaher              2021-01-31  214  		return -EINVAL;
fa0d07bef48a9a Ajay Kaher              2021-01-31  215  
fa0d07bef48a9a Ajay Kaher              2021-01-31  216  	ei = ti->private;
fa0d07bef48a9a Ajay Kaher              2021-01-31  217  
fa0d07bef48a9a Ajay Kaher              2021-01-31  218  	list_for_each_entry_safe(ef, n, &ei->e_top_files, list) {
fa0d07bef48a9a Ajay Kaher              2021-01-31  219  		if (ef->status == FILE_NOT_CREATED) {
fa0d07bef48a9a Ajay Kaher              2021-01-31  220  			ef->status = FILE_CREATED;
02514bdd3c4be7 Ajay Kaher              2021-03-16  221  			ef->dentry = eventfs_create_file(ef->name, ef->mode, dentry, ef->data, ef->fops);
02514bdd3c4be7 Ajay Kaher              2021-03-16  222  			kref_init(&ef->kref);
02514bdd3c4be7 Ajay Kaher              2021-03-16  223  			printk("kref_init: %s:%d dir = %s\n", __func__, __LINE__, dentry->d_iname);
02514bdd3c4be7 Ajay Kaher              2021-03-16  224  		} else {
02514bdd3c4be7 Ajay Kaher              2021-03-16  225  			kref_get(&ef->kref);
02514bdd3c4be7 Ajay Kaher              2021-03-16  226  			printk("kref_get: %s:%d dir = %s\n", __func__, __LINE__, dentry->d_iname);
fa0d07bef48a9a Ajay Kaher              2021-01-31  227  		}		
fa0d07bef48a9a Ajay Kaher              2021-01-31  228  	}
02514bdd3c4be7 Ajay Kaher              2021-03-16  229  #endif
fa0d07bef48a9a Ajay Kaher              2021-01-31  230  	return dcache_readdir(file, ctx);
fa0d07bef48a9a Ajay Kaher              2021-01-31  231  }
fa0d07bef48a9a Ajay Kaher              2021-01-31  232  
02514bdd3c4be7 Ajay Kaher              2021-03-16  233  static void eventfs_release_ef(struct kref *kref)
02514bdd3c4be7 Ajay Kaher              2021-03-16  234  {
02514bdd3c4be7 Ajay Kaher              2021-03-16  235  	struct eventfs_file *ef = container_of(kref, struct eventfs_file, kref);
02514bdd3c4be7 Ajay Kaher              2021-03-16  236  
02514bdd3c4be7 Ajay Kaher              2021-03-16  237  	dput(ef->dentry);
02514bdd3c4be7 Ajay Kaher              2021-03-16  238  	ef->status = FILE_NOT_CREATED;
02514bdd3c4be7 Ajay Kaher              2021-03-16  239  	printk("eventfs_release_ef: Done: free file %p, name = %s\n", ef, ef->dentry->d_iname);
02514bdd3c4be7 Ajay Kaher              2021-03-16  240  }
02514bdd3c4be7 Ajay Kaher              2021-03-16  241  
02514bdd3c4be7 Ajay Kaher              2021-03-16  242  static int eventfs_release (struct inode *inode, struct file *file)
02514bdd3c4be7 Ajay Kaher              2021-03-16  243  {
02514bdd3c4be7 Ajay Kaher              2021-03-16  244          struct dentry *dentry = file_dentry(file);
02514bdd3c4be7 Ajay Kaher              2021-03-16  245  	printk("%s:%d dir = %s\n", __func__, __LINE__, dentry->d_iname);
02514bdd3c4be7 Ajay Kaher              2021-03-16  246  
02514bdd3c4be7 Ajay Kaher              2021-03-16  247  	struct tracefs_inode *ti;
02514bdd3c4be7 Ajay Kaher              2021-03-16  248  	struct eventfs_inode *ei;
02514bdd3c4be7 Ajay Kaher              2021-03-16  249  	struct eventfs_file *ef, *n;
02514bdd3c4be7 Ajay Kaher              2021-03-16  250  
02514bdd3c4be7 Ajay Kaher              2021-03-16  251  	ti = get_tracefs(inode);
02514bdd3c4be7 Ajay Kaher              2021-03-16  252  	if (!(ti->flags & TRACEFS_EVENT_INODE))
02514bdd3c4be7 Ajay Kaher              2021-03-16  253  		return -EINVAL;
02514bdd3c4be7 Ajay Kaher              2021-03-16  254  
02514bdd3c4be7 Ajay Kaher              2021-03-16  255  	ei = ti->private;
02514bdd3c4be7 Ajay Kaher              2021-03-16  256  
02514bdd3c4be7 Ajay Kaher              2021-03-16  257  	list_for_each_entry_safe(ef, n, &ei->e_top_files, list) {
02514bdd3c4be7 Ajay Kaher              2021-03-16  258  		if (ef->status == FILE_CREATED) {
02514bdd3c4be7 Ajay Kaher              2021-03-16  259  			printk("kref_put: free file %p, name = %s\n", ef, ef->dentry->d_iname);
02514bdd3c4be7 Ajay Kaher              2021-03-16  260  			kref_put(&ef->kref, eventfs_release_ef);
02514bdd3c4be7 Ajay Kaher              2021-03-16  261  
02514bdd3c4be7 Ajay Kaher              2021-03-16  262  			// dput(ef->dentry);
02514bdd3c4be7 Ajay Kaher              2021-03-16  263  			// d_delete(ef->dentry);
02514bdd3c4be7 Ajay Kaher              2021-03-16  264  			// dput(ef->dentry);
02514bdd3c4be7 Ajay Kaher              2021-03-16  265  			// ef->status = FILE_NOT_CREATED;
02514bdd3c4be7 Ajay Kaher              2021-03-16  266  			// printk("Done: free file %p, name = %s\n", ef, ef->dentry->d_iname);
02514bdd3c4be7 Ajay Kaher              2021-03-16  267  		}
02514bdd3c4be7 Ajay Kaher              2021-03-16  268  	}
02514bdd3c4be7 Ajay Kaher              2021-03-16  269  	return 0;
02514bdd3c4be7 Ajay Kaher              2021-03-16  270  
02514bdd3c4be7 Ajay Kaher              2021-03-16  271  }
02514bdd3c4be7 Ajay Kaher              2021-03-16  272  
02514bdd3c4be7 Ajay Kaher              2021-03-16  273  int dcache_dir_open_wrapper(struct inode *inode, struct file *file)
02514bdd3c4be7 Ajay Kaher              2021-03-16  274  {
02514bdd3c4be7 Ajay Kaher              2021-03-16  275  
02514bdd3c4be7 Ajay Kaher              2021-03-16  276          struct tracefs_inode *ti;
02514bdd3c4be7 Ajay Kaher              2021-03-16  277          struct eventfs_inode *ei;
02514bdd3c4be7 Ajay Kaher              2021-03-16  278          struct eventfs_file *ef, *n;
02514bdd3c4be7 Ajay Kaher              2021-03-16  279          struct inode *f_inode = file_inode(file);
02514bdd3c4be7 Ajay Kaher              2021-03-16  280          struct dentry *dentry = file_dentry(file);
02514bdd3c4be7 Ajay Kaher              2021-03-16  281  
02514bdd3c4be7 Ajay Kaher              2021-03-16  282          printk("%s:%d dir = %s\n", __func__, __LINE__, dentry->d_iname);
02514bdd3c4be7 Ajay Kaher              2021-03-16  283  
02514bdd3c4be7 Ajay Kaher              2021-03-16  284          ti = get_tracefs(f_inode);
02514bdd3c4be7 Ajay Kaher              2021-03-16  285          if (!(ti->flags & TRACEFS_EVENT_INODE))
02514bdd3c4be7 Ajay Kaher              2021-03-16  286                  return -EINVAL;
02514bdd3c4be7 Ajay Kaher              2021-03-16  287  
02514bdd3c4be7 Ajay Kaher              2021-03-16  288          ei = ti->private;
02514bdd3c4be7 Ajay Kaher              2021-03-16  289  
02514bdd3c4be7 Ajay Kaher              2021-03-16  290          list_for_each_entry_safe(ef, n, &ei->e_top_files, list) {
02514bdd3c4be7 Ajay Kaher              2021-03-16  291                  if (ef->status == FILE_NOT_CREATED) {
02514bdd3c4be7 Ajay Kaher              2021-03-16  292                          ef->status = FILE_CREATED;
02514bdd3c4be7 Ajay Kaher              2021-03-16  293                          ef->dentry = eventfs_create_file(ef->name, ef->mode, dentry, ef->data, ef->fops, 0);
02514bdd3c4be7 Ajay Kaher              2021-03-16  294                          kref_init(&ef->kref);
02514bdd3c4be7 Ajay Kaher              2021-03-16  295                          printk("kref_init: %s:%d dir = %s\n", __func__, __LINE__, dentry->d_iname);
02514bdd3c4be7 Ajay Kaher              2021-03-16  296                  } else {
02514bdd3c4be7 Ajay Kaher              2021-03-16  297                          kref_get(&ef->kref);
02514bdd3c4be7 Ajay Kaher              2021-03-16  298                          printk("kref_get: %s:%d dir = %s\n", __func__, __LINE__, dentry->d_iname);
02514bdd3c4be7 Ajay Kaher              2021-03-16  299                  }
02514bdd3c4be7 Ajay Kaher              2021-03-16  300          }
02514bdd3c4be7 Ajay Kaher              2021-03-16  301  
02514bdd3c4be7 Ajay Kaher              2021-03-16  302  	return dcache_dir_open(inode, file);
02514bdd3c4be7 Ajay Kaher              2021-03-16  303  }
02514bdd3c4be7 Ajay Kaher              2021-03-16  304  
fa0d07bef48a9a Ajay Kaher              2021-01-31  305  static const struct file_operations eventfs_file_operations = {
02514bdd3c4be7 Ajay Kaher              2021-03-16  306  	.open           = dcache_dir_open_wrapper,
fa0d07bef48a9a Ajay Kaher              2021-01-31  307  	.read		= generic_read_dir,
fa0d07bef48a9a Ajay Kaher              2021-01-31  308  //	.iterate_shared = dcache_readdir,
fa0d07bef48a9a Ajay Kaher              2021-01-31  309  	.iterate_shared	= eventfs_top_readdir,
fa0d07bef48a9a Ajay Kaher              2021-01-31  310  	.llseek		= generic_file_llseek,
02514bdd3c4be7 Ajay Kaher              2021-03-16  311  	.release        = eventfs_release,
fa0d07bef48a9a Ajay Kaher              2021-01-31  312  };
fa0d07bef48a9a Ajay Kaher              2021-01-31  313  
fa0d07bef48a9a Ajay Kaher              2021-01-31 @314  static const struct inode_operations eventfs_root_inode_operations = {
fa0d07bef48a9a Ajay Kaher              2021-01-31  315  	.lookup		= eventfs_root_lookup,
fa0d07bef48a9a Ajay Kaher              2021-01-31  316  	.getattr	= eventfs_root_getattr,
fa0d07bef48a9a Ajay Kaher              2021-01-31  317  };
fa0d07bef48a9a Ajay Kaher              2021-01-31  318  
fa0d07bef48a9a Ajay Kaher              2021-01-31  319  

:::::: The code at line 314 was first introduced by commit
:::::: fa0d07bef48a9aeb131618523c09d9ae154154c2 tracefs: Add eventfs for events

:::::: TO: Ajay Kaher <akaher@vmware.com>
:::::: CC: Steven Rostedt (VMware) <rostedt@goodmis.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104080423.hnT19tRD-lkp%40intel.com.

--lrZ03NoBR/3+SXJZ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ANzTFpHkXS5m8gji5Pnu6Jj+P9yWm/gk5wEA

--lrZ03NoBR/3+SXJZ--
