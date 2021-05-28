Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZ6IYSCQMGQEZESIBXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDA439463C
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 19:12:08 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id n129-20020a2527870000b02904ed02e1aab5sf5008181ybn.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 10:12:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622221927; cv=pass;
        d=google.com; s=arc-20160816;
        b=OZw1c3Fh1MyoORLo+ljCSnwamb0JKsMuNe5crmpCRi2fUP3Ct9xTFHf+oBg88vepBU
         YN81g0/H++rU2Ds6kBzRf83UuOfBZxqC4EFxykt8bX51XGwOUNBVHFHJrQT6WzYMo5bn
         hLD1d8HHOyvhodPLJB6X2c9eaLgOPA0OsfN+cK/QstOfPaHU9j4iIc46MsTrkEfOg5xF
         T3OstFV+DmyAiGQynBTL3WNnnEMFoqziFgZGjxAlQdAt92HCMu11o0yoH5f7mWaQS5Cw
         8OuQao9DTMjf1PdVdrWaNmYdGAM9P+CMqg1FNXnWYY2Ec2CZaq7z3n5XirABs1IhGLLz
         r5rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=wcDQqcr/jOnHcju069MPq6A18WQxlvpOP2kJHNzU5cY=;
        b=RIC5p6M4ber4wG/hw3Nh8awf66rzVJjLKOj527ZpnBNBFWGGGXh0YwCmBBRCsI3Qr5
         alpeGAgB+PYw9j+q6mteTOZaTMwgNC2nrroRLi/e45tS5inkyF57lvjZqR/yfaZg1bP0
         th74RRf+XRm2WzUSWJcNGv2vvIf2meAf/MCzOoAy/sIe1VzjPq0cZmpRcpTBQlY22hsx
         Vs3FKS7eHzENLADAa7r0+T2Bb8HE4GkaO4Qddl9zcJ+ERWviK/S0GI3SwLkI/SfidArE
         ABCSmqG+KaBJ3msuz/6TQgWEaPeo6jHyYkS6D4IchDCO09nhLA1FAoJ6rhuUlnTTfbrK
         Fybw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wcDQqcr/jOnHcju069MPq6A18WQxlvpOP2kJHNzU5cY=;
        b=NB0N4bttR1JRt9Lflppp5L+qqAr8NAEhTgiAvGLGv6L52Tf1z8hv85o2W5Y8VRERLO
         JGbT5f6TfD+2gq7bXytAwbXybAT9VtIJ09cfQsnOvuSeYXX7vo3FFqJ5IGdZ/p3KUJcy
         vULDg8z+Ds9e+GbsEvPCSeX5iSrIbcT8WjywsIgcWSIYxV9usH1fMWGaLDlM3YCySUaT
         ARQT0oLWDzxMDVhmUqox/4NAvsBJvUoKhgnoNpFhTeo9DYzhrqYGLjqVAwuBGlN0G1/w
         wLZYB4KcXz9l5FagMkCixa02a/+gpEFjSWh3BXbrlhziIehCW7DW1lECuxwPSvX0i35w
         FWfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wcDQqcr/jOnHcju069MPq6A18WQxlvpOP2kJHNzU5cY=;
        b=sgP8ABIcn8PC0XPhgE2ArxQXWcDsslcckNzucvQXhIW7cOqwW9Qe6ZMFEUrQM9SHyh
         VuJ0HVhl9D4Ihi8+emz7HiVNLdy1Ok6Hxgo5kmmZgUEiLPVq7UGXuyohOoZ/DsZcAZCy
         5LikHpGLyMTb4FLFa2w4XilUJuT/zMVoPLcZEp+MV6HCPA7g1tSNhD5uShzjueFCKaUl
         wH7rp3lU5l0GJLebb8plrR0+1F8s85XW6ZPWoOigUChJv3aMxuZ7jtQwU26EAuUhuvu0
         WJrSJkLciQP8D+gsjoFH5Z8ed6IvhBaj7GBUaCNxlWOS3SC956n2t1KwZ9tZnLCunK0K
         2oTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531i5R86IKsfO4Lmky94G7U/eaFkC8cyIPvoEEc9zjWeoTg+PyM+
	FpaP/wE+iplQPsp4k6FK+4o=
X-Google-Smtp-Source: ABdhPJzujXBQzFUjpr8QZZqlymtY+23sy3lXVo0599QepuHX7aAGp4sK5Xo0s0QVe97A3a7IoF7VnA==
X-Received: by 2002:a25:ba85:: with SMTP id s5mr13827578ybg.336.1622221927353;
        Fri, 28 May 2021 10:12:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls3648100ybc.2.gmail; Fri, 28
 May 2021 10:12:06 -0700 (PDT)
X-Received: by 2002:a25:80d4:: with SMTP id c20mr13557209ybm.345.1622221926543;
        Fri, 28 May 2021 10:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622221926; cv=none;
        d=google.com; s=arc-20160816;
        b=vDeNwKCgRkuZ7Ys9NFth46FYD+4RqbZ+qFvmVJvi7pBwqAVkA0H0qcEt38nfQp8C5a
         hK9HSTx9JrfauDbp/IGYgWopQeo2QFMzbfbAJbwF7+HU1cNGUKGXaQj4oLTR+ghxp5Q5
         Zo59c2iVWByFWK/C47IFkjyhkKFK+qW5hgJLWzcaSV3deoQFTjWBIHWSM+qyQnjMzsKe
         oMiPpndHhORzIfnCZvNnACH9YJIDOM0GivxdatDNvOO0vYllDjZRwqjzgy7AM2xvKOn1
         WZ8Ng8TlNClSARuTQ9YuX0jhAM+174vGWsbrcIhy2+BhWd/k6Iig1q1PoQLuFwCqJuPg
         SmEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=g6wFJJvu3jHFGxVWF9odv96Z2FxH05WpKiUHZKNrb1M=;
        b=y6j9GXdVV6M4sle+nJHNUOyfhDB0y3QehL02OMsDdK95e2QVu0SFJIwEYoyE34UaPf
         s0qX0/GAb5VGo9Z8OwWPfpU8mXgSIczVAMuiDB14Ab5LoWtovjIqRrdo4VBcbtVZd7RY
         47+meBtZIfCWLsOBB785gf7KQaCT5N3C3X3ioHZZziKoHPaGOsUctsYptk1SvnY/tNf8
         6nfEtpHJTgvE5/crin6tlp+T/xOBrpDn3qFPy2s3Tk9BGQzK4GJNxyVpT2VwTu5ATj/h
         9m/+McrahwRnKGeeV3m9eMpg7Mws9uoj3sM6cWN8xPLwEUsROxk5dtcGk9OkEK70SAbr
         hsGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id a6si140506ybo.3.2021.05.28.10.12.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 May 2021 10:12:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: mnPRYvgsREMfOvHFcx6wNYyha6DC4CzPhAobHRTRZW4/c43yVakaryI2AS82FPnpwkV9R37Cnk
 PuSCsoowa8Ug==
X-IronPort-AV: E=McAfee;i="6200,9189,9998"; a="224232281"
X-IronPort-AV: E=Sophos;i="5.83,230,1616482800"; 
   d="gz'50?scan'50,208,50";a="224232281"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2021 10:12:03 -0700
IronPort-SDR: bjlPBuOP3SagMI+jKpLP2MEQr3Sq7n+gKL85q7EbbLkH8deVNHIwR6ATzYPIMXJIiSzPg62ATX
 OeK4ZME5mmgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,230,1616482800"; 
   d="gz'50?scan'50,208,50";a="445721407"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 28 May 2021 10:12:01 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lmg1h-0003Qb-0z; Fri, 28 May 2021 17:12:01 +0000
Date: Sat, 29 May 2021 01:11:33 +0800
From: kernel test robot <lkp@intel.com>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	David Sterba <dsterba@suse.com>
Subject: [kdave-btrfs-devel:dev/hashes-part1 64/67] fs/btrfs/super.c:622:8:
 warning: shift count >= width of type
Message-ID: <202105290129.PnVIAKkx-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
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


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/kdave/btrfs-devel.git dev/hashes-part1
head:   e0ba86186388117fd883ccc55b1193f407085aa2
commit: de37679d72d66b90447da1c06cebdae13c21097a [64/67] btrfs: add authentication support
config: riscv-randconfig-r015-20210528 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6505c630407c5feec818f0bb1c284f9eeebf2071)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/kdave/btrfs-devel/commit/de37679d72d66b90447da1c06cebdae13c21097a
        git remote add kdave-btrfs-devel https://github.com/kdave/btrfs-devel.git
        git fetch --no-tags kdave-btrfs-devel dev/hashes-part1
        git checkout de37679d72d66b90447da1c06cebdae13c21097a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/btrfs/super.c:622:8: warning: shift count >= width of type [-Wshift-count-overflow]
                           if (btrfs_test_opt(info, AUTH_KEY)) {
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1430:7: note: expanded from macro 'btrfs_test_opt'
                                            BTRFS_MOUNT_##opt)
                                            ^~~~~~~~~~~~~~~~~
   <scratch space>:82:1: note: expanded from here
   BTRFS_MOUNT_AUTH_KEY
   ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1421:34: note: expanded from macro 'BTRFS_MOUNT_AUTH_KEY'
   #define BTRFS_MOUNT_AUTH_KEY            (1 << 32)
                                              ^  ~~
   fs/btrfs/super.c:642:8: warning: shift count >= width of type [-Wshift-count-overflow]
                           if (btrfs_test_opt(info, AUTH_KEY)) {
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1430:7: note: expanded from macro 'btrfs_test_opt'
                                            BTRFS_MOUNT_##opt)
                                            ^~~~~~~~~~~~~~~~~
   <scratch space>:89:1: note: expanded from here
   BTRFS_MOUNT_AUTH_KEY
   ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1421:34: note: expanded from macro 'BTRFS_MOUNT_AUTH_KEY'
   #define BTRFS_MOUNT_AUTH_KEY            (1 << 32)
                                              ^  ~~
   fs/btrfs/super.c:1116:4: error: use of undeclared identifier 'info'
                           info->auth_key_name = match_strdup(&args[0]);
                           ^
   fs/btrfs/super.c:1117:9: error: use of undeclared identifier 'info'
                           if (!info->auth_key_name) {
                                ^
   fs/btrfs/super.c:1123:4: error: use of undeclared identifier 'info'
                           info->auth_hash_name = match_strdup(&args[0]);
                           ^
   fs/btrfs/super.c:1124:9: error: use of undeclared identifier 'info'
                           if (!info->auth_hash_name) {
                                ^
   fs/btrfs/super.c:1138:6: error: use of undeclared identifier 'info'
           if (info->auth_key_name && info->auth_hash_name) {
               ^
   fs/btrfs/super.c:1138:29: error: use of undeclared identifier 'info'
           if (info->auth_key_name && info->auth_hash_name) {
                                      ^
   fs/btrfs/super.c:1139:14: error: use of undeclared identifier 'info'
                   btrfs_info(info, "doing authentication");
                              ^
   fs/btrfs/super.c:1140:17: error: use of undeclared identifier 'info'; did you mean 'int'?
                   btrfs_set_opt(info->mount_opt, AUTH_KEY);
                                 ^~~~
                                 int
   fs/btrfs/ctree.h:1427:34: note: expanded from macro 'btrfs_set_opt'
   #define btrfs_set_opt(o, opt)           ((o) |= BTRFS_MOUNT_##opt)
                                             ^
   fs/btrfs/super.c:1140:17: error: expected expression
   fs/btrfs/super.c:1141:14: error: use of undeclared identifier 'info'; did you mean 'int'?
           } else if ((info->auth_key_name && !info->auth_hash_name) ||
                       ^~~~
                       int
   fs/btrfs/super.c:1141:14: error: expected expression
   fs/btrfs/super.c:1142:8: error: use of undeclared identifier 'info'
                      (!info->auth_key_name && info->auth_hash_name)) {
                        ^
   fs/btrfs/super.c:1142:31: error: use of undeclared identifier 'info'
                      (!info->auth_key_name && info->auth_hash_name)) {
                                               ^
   fs/btrfs/super.c:1143:13: error: use of undeclared identifier 'info'
                   btrfs_err(info,
                             ^
   fs/btrfs/super.c:1140:3: warning: shift count >= width of type [-Wshift-count-overflow]
                   btrfs_set_opt(info->mount_opt, AUTH_KEY);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1427:40: note: expanded from macro 'btrfs_set_opt'
   #define btrfs_set_opt(o, opt)           ((o) |= BTRFS_MOUNT_##opt)
                                                   ^~~~~~~~~~~~~~~~~
   <scratch space>:100:1: note: expanded from here
   BTRFS_MOUNT_AUTH_KEY
   ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1421:34: note: expanded from macro 'BTRFS_MOUNT_AUTH_KEY'
   #define BTRFS_MOUNT_AUTH_KEY            (1 << 32)
                                              ^  ~~
   fs/btrfs/super.c:1587:6: warning: shift count >= width of type [-Wshift-count-overflow]
           if (btrfs_test_opt(info, AUTH_KEY))
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1430:7: note: expanded from macro 'btrfs_test_opt'
                                            BTRFS_MOUNT_##opt)
                                            ^~~~~~~~~~~~~~~~~
   <scratch space>:137:1: note: expanded from here
   BTRFS_MOUNT_AUTH_KEY
   ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1421:34: note: expanded from macro 'BTRFS_MOUNT_AUTH_KEY'
   #define BTRFS_MOUNT_AUTH_KEY            (1 << 32)
                                              ^  ~~
   4 warnings and 14 errors generated.
--
>> fs/btrfs/disk-io.c:2411:7: warning: shift count >= width of type [-Wshift-count-overflow]
           if (!btrfs_test_opt(fs_info, AUTH_KEY))
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1430:7: note: expanded from macro 'btrfs_test_opt'
                                            BTRFS_MOUNT_##opt)
                                            ^~~~~~~~~~~~~~~~~
   <scratch space>:3:1: note: expanded from here
   BTRFS_MOUNT_AUTH_KEY
   ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1421:34: note: expanded from macro 'BTRFS_MOUNT_AUTH_KEY'
   #define BTRFS_MOUNT_AUTH_KEY            (1 << 32)
                                              ^  ~~
   1 warning generated.
--
   fs/btrfs/ioctl.c:276:9: error: use of undeclared label 'out_unlock'
                           goto out_unlock;
                                ^
>> fs/btrfs/ioctl.c:272:7: warning: shift count >= width of type [-Wshift-count-overflow]
                   if (btrfs_test_opt(fs_info, AUTH_KEY)) {
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1430:7: note: expanded from macro 'btrfs_test_opt'
                                            BTRFS_MOUNT_##opt)
                                            ^~~~~~~~~~~~~~~~~
   <scratch space>:29:1: note: expanded from here
   BTRFS_MOUNT_AUTH_KEY
   ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1421:34: note: expanded from macro 'BTRFS_MOUNT_AUTH_KEY'
   #define BTRFS_MOUNT_AUTH_KEY            (1 << 32)
                                              ^  ~~
   1 warning and 1 error generated.


vim +622 fs/btrfs/super.c

   562	
   563	/*
   564	 * Regular mount options parser.  Everything that is needed only when
   565	 * reading in a new superblock is parsed here.
   566	 * XXX JDM: This needs to be cleaned up for remount.
   567	 */
   568	int btrfs_parse_options(struct btrfs_fs_info *info, char *options,
   569				unsigned long new_flags)
   570	{
   571		substring_t args[MAX_OPT_ARGS];
   572		char *p, *num;
   573		int intarg;
   574		int ret = 0;
   575		char *compress_type;
   576		bool compress_force = false;
   577		enum btrfs_compression_type saved_compress_type;
   578		int saved_compress_level;
   579		bool saved_compress_force;
   580		int no_compress = 0;
   581	
   582		if (btrfs_fs_compat_ro(info, FREE_SPACE_TREE))
   583			btrfs_set_opt(info->mount_opt, FREE_SPACE_TREE);
   584		else if (btrfs_free_space_cache_v1_active(info)) {
   585			if (btrfs_is_zoned(info)) {
   586				btrfs_info(info,
   587				"zoned: clearing existing space cache");
   588				btrfs_set_super_cache_generation(info->super_copy, 0);
   589			} else {
   590				btrfs_set_opt(info->mount_opt, SPACE_CACHE);
   591			}
   592		}
   593	
   594		/*
   595		 * Even the options are empty, we still need to do extra check
   596		 * against new flags
   597		 */
   598		if (!options)
   599			goto check;
   600	
   601		while ((p = strsep(&options, ",")) != NULL) {
   602			int token;
   603			if (!*p)
   604				continue;
   605	
   606			token = match_token(p, tokens, args);
   607			switch (token) {
   608			case Opt_degraded:
   609				btrfs_info(info, "allowing degraded mounts");
   610				btrfs_set_opt(info->mount_opt, DEGRADED);
   611				break;
   612			case Opt_subvol:
   613			case Opt_subvol_empty:
   614			case Opt_subvolid:
   615			case Opt_device:
   616				/*
   617				 * These are parsed by btrfs_parse_subvol_options or
   618				 * btrfs_parse_device_options and can be ignored here.
   619				 */
   620				break;
   621			case Opt_nodatasum:
 > 622				if (btrfs_test_opt(info, AUTH_KEY)) {
   623					btrfs_info(info,
   624						   "nodatasum not supported on an authnticated file-system");
   625					break;
   626				}
   627				btrfs_set_and_info(info, NODATASUM,
   628						   "setting nodatasum");
   629				break;
   630			case Opt_datasum:
   631				if (btrfs_test_opt(info, NODATASUM)) {
   632					if (btrfs_test_opt(info, NODATACOW))
   633						btrfs_info(info,
   634							   "setting datasum, datacow enabled");
   635					else
   636						btrfs_info(info, "setting datasum");
   637				}
   638				btrfs_clear_opt(info->mount_opt, NODATACOW);
   639				btrfs_clear_opt(info->mount_opt, NODATASUM);
   640				break;
   641			case Opt_nodatacow:
   642				if (btrfs_test_opt(info, AUTH_KEY)) {
   643					btrfs_info(info,
   644						   "nodatacow not supported on an authnticated file-system");
   645					break;
   646				}
   647				if (!btrfs_test_opt(info, NODATACOW)) {
   648					if (!btrfs_test_opt(info, COMPRESS) ||
   649					    !btrfs_test_opt(info, FORCE_COMPRESS)) {
   650						btrfs_info(info,
   651							   "setting nodatacow, compression disabled");
   652					} else {
   653						btrfs_info(info, "setting nodatacow");
   654					}
   655				}
   656				btrfs_clear_opt(info->mount_opt, COMPRESS);
   657				btrfs_clear_opt(info->mount_opt, FORCE_COMPRESS);
   658				btrfs_set_opt(info->mount_opt, NODATACOW);
   659				btrfs_set_opt(info->mount_opt, NODATASUM);
   660				break;
   661			case Opt_datacow:
   662				btrfs_clear_and_info(info, NODATACOW,
   663						     "setting datacow");
   664				break;
   665			case Opt_compress_force:
   666			case Opt_compress_force_type:
   667				compress_force = true;
   668				fallthrough;
   669			case Opt_compress:
   670			case Opt_compress_type:
   671				saved_compress_type = btrfs_test_opt(info,
   672								     COMPRESS) ?
   673					info->compress_type : BTRFS_COMPRESS_NONE;
   674				saved_compress_force =
   675					btrfs_test_opt(info, FORCE_COMPRESS);
   676				saved_compress_level = info->compress_level;
   677				if (token == Opt_compress ||
   678				    token == Opt_compress_force ||
   679				    strncmp(args[0].from, "zlib", 4) == 0) {
   680					compress_type = "zlib";
   681	
   682					info->compress_type = BTRFS_COMPRESS_ZLIB;
   683					info->compress_level = BTRFS_ZLIB_DEFAULT_LEVEL;
   684					/*
   685					 * args[0] contains uninitialized data since
   686					 * for these tokens we don't expect any
   687					 * parameter.
   688					 */
   689					if (token != Opt_compress &&
   690					    token != Opt_compress_force)
   691						info->compress_level =
   692						  btrfs_compress_str2level(
   693								BTRFS_COMPRESS_ZLIB,
   694								args[0].from + 4);
   695					btrfs_set_opt(info->mount_opt, COMPRESS);
   696					btrfs_clear_opt(info->mount_opt, NODATACOW);
   697					btrfs_clear_opt(info->mount_opt, NODATASUM);
   698					no_compress = 0;
   699				} else if (strncmp(args[0].from, "lzo", 3) == 0) {
   700					compress_type = "lzo";
   701					info->compress_type = BTRFS_COMPRESS_LZO;
   702					info->compress_level = 0;
   703					btrfs_set_opt(info->mount_opt, COMPRESS);
   704					btrfs_clear_opt(info->mount_opt, NODATACOW);
   705					btrfs_clear_opt(info->mount_opt, NODATASUM);
   706					btrfs_set_fs_incompat(info, COMPRESS_LZO);
   707					no_compress = 0;
   708				} else if (strncmp(args[0].from, "zstd", 4) == 0) {
   709					compress_type = "zstd";
   710					info->compress_type = BTRFS_COMPRESS_ZSTD;
   711					info->compress_level =
   712						btrfs_compress_str2level(
   713								 BTRFS_COMPRESS_ZSTD,
   714								 args[0].from + 4);
   715					btrfs_set_opt(info->mount_opt, COMPRESS);
   716					btrfs_clear_opt(info->mount_opt, NODATACOW);
   717					btrfs_clear_opt(info->mount_opt, NODATASUM);
   718					btrfs_set_fs_incompat(info, COMPRESS_ZSTD);
   719					no_compress = 0;
   720				} else if (strncmp(args[0].from, "no", 2) == 0) {
   721					compress_type = "no";
   722					info->compress_level = 0;
   723					info->compress_type = 0;
   724					btrfs_clear_opt(info->mount_opt, COMPRESS);
   725					btrfs_clear_opt(info->mount_opt, FORCE_COMPRESS);
   726					compress_force = false;
   727					no_compress++;
   728				} else {
   729					ret = -EINVAL;
   730					goto out;
   731				}
   732	
   733				if (compress_force) {
   734					btrfs_set_opt(info->mount_opt, FORCE_COMPRESS);
   735				} else {
   736					/*
   737					 * If we remount from compress-force=xxx to
   738					 * compress=xxx, we need clear FORCE_COMPRESS
   739					 * flag, otherwise, there is no way for users
   740					 * to disable forcible compression separately.
   741					 */
   742					btrfs_clear_opt(info->mount_opt, FORCE_COMPRESS);
   743				}
   744				if (no_compress == 1) {
   745					btrfs_info(info, "use no compression");
   746				} else if ((info->compress_type != saved_compress_type) ||
   747					   (compress_force != saved_compress_force) ||
   748					   (info->compress_level != saved_compress_level)) {
   749					btrfs_info(info, "%s %s compression, level %d",
   750						   (compress_force) ? "force" : "use",
   751						   compress_type, info->compress_level);
   752				}
   753				compress_force = false;
   754				break;
   755			case Opt_ssd:
   756				btrfs_set_and_info(info, SSD,
   757						   "enabling ssd optimizations");
   758				btrfs_clear_opt(info->mount_opt, NOSSD);
   759				break;
   760			case Opt_ssd_spread:
   761				btrfs_set_and_info(info, SSD,
   762						   "enabling ssd optimizations");
   763				btrfs_set_and_info(info, SSD_SPREAD,
   764						   "using spread ssd allocation scheme");
   765				btrfs_clear_opt(info->mount_opt, NOSSD);
   766				break;
   767			case Opt_nossd:
   768				btrfs_set_opt(info->mount_opt, NOSSD);
   769				btrfs_clear_and_info(info, SSD,
   770						     "not using ssd optimizations");
   771				fallthrough;
   772			case Opt_nossd_spread:
   773				btrfs_clear_and_info(info, SSD_SPREAD,
   774						     "not using spread ssd allocation scheme");
   775				break;
   776			case Opt_barrier:
   777				btrfs_clear_and_info(info, NOBARRIER,
   778						     "turning on barriers");
   779				break;
   780			case Opt_nobarrier:
   781				btrfs_set_and_info(info, NOBARRIER,
   782						   "turning off barriers");
   783				break;
   784			case Opt_thread_pool:
   785				ret = match_int(&args[0], &intarg);
   786				if (ret) {
   787					goto out;
   788				} else if (intarg == 0) {
   789					ret = -EINVAL;
   790					goto out;
   791				}
   792				info->thread_pool_size = intarg;
   793				break;
   794			case Opt_max_inline:
   795				num = match_strdup(&args[0]);
   796				if (num) {
   797					info->max_inline = memparse(num, NULL);
   798					kfree(num);
   799	
   800					if (info->max_inline) {
   801						info->max_inline = min_t(u64,
   802							info->max_inline,
   803							info->sectorsize);
   804					}
   805					btrfs_info(info, "max_inline at %llu",
   806						   info->max_inline);
   807				} else {
   808					ret = -ENOMEM;
   809					goto out;
   810				}
   811				break;
   812			case Opt_acl:
   813	#ifdef CONFIG_BTRFS_FS_POSIX_ACL
   814				info->sb->s_flags |= SB_POSIXACL;
   815				break;
   816	#else
   817				btrfs_err(info, "support for ACL not compiled in!");
   818				ret = -EINVAL;
   819				goto out;
   820	#endif
   821			case Opt_noacl:
   822				info->sb->s_flags &= ~SB_POSIXACL;
   823				break;
   824			case Opt_notreelog:
   825				btrfs_set_and_info(info, NOTREELOG,
   826						   "disabling tree log");
   827				break;
   828			case Opt_treelog:
   829				btrfs_clear_and_info(info, NOTREELOG,
   830						     "enabling tree log");
   831				break;
   832			case Opt_norecovery:
   833			case Opt_nologreplay:
   834				btrfs_warn(info,
   835			"'nologreplay' is deprecated, use 'rescue=nologreplay' instead");
   836				btrfs_set_and_info(info, NOLOGREPLAY,
   837						   "disabling log replay at mount time");
   838				break;
   839			case Opt_flushoncommit:
   840				btrfs_set_and_info(info, FLUSHONCOMMIT,
   841						   "turning on flush-on-commit");
   842				break;
   843			case Opt_noflushoncommit:
   844				btrfs_clear_and_info(info, FLUSHONCOMMIT,
   845						     "turning off flush-on-commit");
   846				break;
   847			case Opt_ratio:
   848				ret = match_int(&args[0], &intarg);
   849				if (ret)
   850					goto out;
   851				info->metadata_ratio = intarg;
   852				btrfs_info(info, "metadata ratio %u",
   853					   info->metadata_ratio);
   854				break;
   855			case Opt_discard:
   856			case Opt_discard_mode:
   857				if (token == Opt_discard ||
   858				    strcmp(args[0].from, "sync") == 0) {
   859					btrfs_clear_opt(info->mount_opt, DISCARD_ASYNC);
   860					btrfs_set_and_info(info, DISCARD_SYNC,
   861							   "turning on sync discard");
   862				} else if (strcmp(args[0].from, "async") == 0) {
   863					btrfs_clear_opt(info->mount_opt, DISCARD_SYNC);
   864					btrfs_set_and_info(info, DISCARD_ASYNC,
   865							   "turning on async discard");
   866				} else {
   867					ret = -EINVAL;
   868					goto out;
   869				}
   870				break;
   871			case Opt_nodiscard:
   872				btrfs_clear_and_info(info, DISCARD_SYNC,
   873						     "turning off discard");
   874				btrfs_clear_and_info(info, DISCARD_ASYNC,
   875						     "turning off async discard");
   876				break;
   877			case Opt_space_cache:
   878			case Opt_space_cache_version:
   879				if (token == Opt_space_cache ||
   880				    strcmp(args[0].from, "v1") == 0) {
   881					btrfs_clear_opt(info->mount_opt,
   882							FREE_SPACE_TREE);
   883					btrfs_set_and_info(info, SPACE_CACHE,
   884						   "enabling disk space caching");
   885				} else if (strcmp(args[0].from, "v2") == 0) {
   886					btrfs_clear_opt(info->mount_opt,
   887							SPACE_CACHE);
   888					btrfs_set_and_info(info, FREE_SPACE_TREE,
   889							   "enabling free space tree");
   890				} else {
   891					ret = -EINVAL;
   892					goto out;
   893				}
   894				break;
   895			case Opt_rescan_uuid_tree:
   896				btrfs_set_opt(info->mount_opt, RESCAN_UUID_TREE);
   897				break;
   898			case Opt_no_space_cache:
   899				if (btrfs_test_opt(info, SPACE_CACHE)) {
   900					btrfs_clear_and_info(info, SPACE_CACHE,
   901						     "disabling disk space caching");
   902				}
   903				if (btrfs_test_opt(info, FREE_SPACE_TREE)) {
   904					btrfs_clear_and_info(info, FREE_SPACE_TREE,
   905						     "disabling free space tree");
   906				}
   907				break;
   908			case Opt_inode_cache:
   909			case Opt_noinode_cache:
   910				btrfs_warn(info,
   911		"the 'inode_cache' option is deprecated and has no effect since 5.11");
   912				break;
   913			case Opt_clear_cache:
   914				btrfs_set_and_info(info, CLEAR_CACHE,
   915						   "force clearing of disk cache");
   916				break;
   917			case Opt_user_subvol_rm_allowed:
   918				btrfs_set_opt(info->mount_opt, USER_SUBVOL_RM_ALLOWED);
   919				break;
   920			case Opt_enospc_debug:
   921				btrfs_set_opt(info->mount_opt, ENOSPC_DEBUG);
   922				break;
   923			case Opt_noenospc_debug:
   924				btrfs_clear_opt(info->mount_opt, ENOSPC_DEBUG);
   925				break;
   926			case Opt_defrag:
   927				btrfs_set_and_info(info, AUTO_DEFRAG,
   928						   "enabling auto defrag");
   929				break;
   930			case Opt_nodefrag:
   931				btrfs_clear_and_info(info, AUTO_DEFRAG,
   932						     "disabling auto defrag");
   933				break;
   934			case Opt_recovery:
   935			case Opt_usebackuproot:
   936				btrfs_warn(info,
   937				"'%s' is deprecated, use 'rescue=usebackuproot' instead",
   938					   token == Opt_recovery ? "recovery" :
   939					   "usebackuproot");
   940				btrfs_info(info,
   941					   "trying to use backup root at mount time");
   942				btrfs_set_opt(info->mount_opt, USEBACKUPROOT);
   943				break;
   944			case Opt_skip_balance:
   945				btrfs_set_opt(info->mount_opt, SKIP_BALANCE);
   946				break;
   947	#ifdef CONFIG_BTRFS_FS_CHECK_INTEGRITY
   948			case Opt_check_integrity_including_extent_data:
   949				btrfs_info(info,
   950					   "enabling check integrity including extent data");
   951				btrfs_set_opt(info->mount_opt,
   952					      CHECK_INTEGRITY_INCLUDING_EXTENT_DATA);
   953				btrfs_set_opt(info->mount_opt, CHECK_INTEGRITY);
   954				break;
   955			case Opt_check_integrity:
   956				btrfs_info(info, "enabling check integrity");
   957				btrfs_set_opt(info->mount_opt, CHECK_INTEGRITY);
   958				break;
   959			case Opt_check_integrity_print_mask:
   960				ret = match_int(&args[0], &intarg);
   961				if (ret)
   962					goto out;
   963				info->check_integrity_print_mask = intarg;
   964				btrfs_info(info, "check_integrity_print_mask 0x%x",
   965					   info->check_integrity_print_mask);
   966				break;
   967	#else
   968			case Opt_check_integrity_including_extent_data:
   969			case Opt_check_integrity:
   970			case Opt_check_integrity_print_mask:
   971				btrfs_err(info,
   972					  "support for check_integrity* not compiled in!");
   973				ret = -EINVAL;
   974				goto out;
   975	#endif
   976			case Opt_fatal_errors:
   977				if (strcmp(args[0].from, "panic") == 0)
   978					btrfs_set_opt(info->mount_opt,
   979						      PANIC_ON_FATAL_ERROR);
   980				else if (strcmp(args[0].from, "bug") == 0)
   981					btrfs_clear_opt(info->mount_opt,
   982						      PANIC_ON_FATAL_ERROR);
   983				else {
   984					ret = -EINVAL;
   985					goto out;
   986				}
   987				break;
   988			case Opt_commit_interval:
   989				intarg = 0;
   990				ret = match_int(&args[0], &intarg);
   991				if (ret)
   992					goto out;
   993				if (intarg == 0) {
   994					btrfs_info(info,
   995						   "using default commit interval %us",
   996						   BTRFS_DEFAULT_COMMIT_INTERVAL);
   997					intarg = BTRFS_DEFAULT_COMMIT_INTERVAL;
   998				} else if (intarg > 300) {
   999					btrfs_warn(info, "excessive commit interval %d",
  1000						   intarg);
  1001				}
  1002				info->commit_interval = intarg;
  1003				break;
  1004			case Opt_rescue:
  1005				ret = parse_rescue_options(info, args[0].from);
  1006				if (ret < 0)
  1007					goto out;
  1008				break;
  1009	#ifdef CONFIG_BTRFS_DEBUG
  1010			case Opt_fragment_all:
  1011				btrfs_info(info, "fragmenting all space");
  1012				btrfs_set_opt(info->mount_opt, FRAGMENT_DATA);
  1013				btrfs_set_opt(info->mount_opt, FRAGMENT_METADATA);
  1014				break;
  1015			case Opt_fragment_metadata:
  1016				btrfs_info(info, "fragmenting metadata");
  1017				btrfs_set_opt(info->mount_opt,
  1018					      FRAGMENT_METADATA);
  1019				break;
  1020			case Opt_fragment_data:
  1021				btrfs_info(info, "fragmenting data");
  1022				btrfs_set_opt(info->mount_opt, FRAGMENT_DATA);
  1023				break;
  1024	#endif
  1025	#ifdef CONFIG_BTRFS_FS_REF_VERIFY
  1026			case Opt_ref_verify:
  1027				btrfs_info(info, "doing ref verification");
  1028				btrfs_set_opt(info->mount_opt, REF_VERIFY);
  1029				break;
  1030	#endif
  1031			case Opt_err:
  1032				btrfs_err(info, "unrecognized mount option '%s'", p);
  1033				ret = -EINVAL;
  1034				goto out;
  1035			default:
  1036				break;
  1037			}
  1038		}
  1039	check:
  1040		/* We're read-only, don't have to check. */
  1041		if (new_flags & SB_RDONLY)
  1042			goto out;
  1043	
  1044		if (check_ro_option(info, BTRFS_MOUNT_NOLOGREPLAY, "nologreplay") ||
  1045		    check_ro_option(info, BTRFS_MOUNT_IGNOREBADROOTS, "ignorebadroots") ||
  1046		    check_ro_option(info, BTRFS_MOUNT_IGNOREDATACSUMS, "ignoredatacsums"))
  1047			ret = -EINVAL;
  1048	out:
  1049		if (btrfs_fs_compat_ro(info, FREE_SPACE_TREE) &&
  1050		    !btrfs_test_opt(info, FREE_SPACE_TREE) &&
  1051		    !btrfs_test_opt(info, CLEAR_CACHE)) {
  1052			btrfs_err(info, "cannot disable free space tree");
  1053			ret = -EINVAL;
  1054	
  1055		}
  1056		if (!ret)
  1057			ret = btrfs_check_mountopts_zoned(info);
  1058		if (!ret && btrfs_test_opt(info, SPACE_CACHE))
  1059			btrfs_info(info, "disk space caching is enabled");
  1060		if (!ret && btrfs_test_opt(info, FREE_SPACE_TREE))
  1061			btrfs_info(info, "using free space tree");
  1062		return ret;
  1063	}
  1064	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105290129.PnVIAKkx-lkp%40intel.com.

--envbJBWh7q8WU6mo
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--envbJBWh7q8WU6mo--
