Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3VYXH5QKGQE4L5XHDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2472792FE
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 23:09:03 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id z8sf3236444ilh.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 14:09:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601068142; cv=pass;
        d=google.com; s=arc-20160816;
        b=hdwFMUiyA70Bn/8CJ+3sRmRx1+AKDo/V98Cj5n9I92+uCCluy/aYGEHZYWx7lNDe9z
         R+QljavuWn5rDESDMGetRRwDb4pDy2Ww/3eu76w+4Asoj3D2nzSSCFyatD2oUZ1Zwitc
         VB//YCtIrQ3AVLbZG2rL3w1PdqCZMnLy6W7Ezx6U8SiLro3n2W/T6/m3fneuZWk8Jxs5
         NsK29PI+3GWucLiYwEYsxoxNrKXguKQ/4VvWd2FHFXhA5R31WzBJZxZrN6/cRaJdgKsf
         V8EBhyDh42VDnJF4sYuBNfDn2Q8y+Tt1Bt8wkHo1Zeqy3/w5JCoxmh+Kx+FoLTTNIN5t
         v8LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=h3kSp7P/GP+cr6AyJ+PFis/HjqY/2F/l1HV7Icg0Tw0=;
        b=vnOLvkKLXLP34bcOHhep2c5lmf3knP4QCgqdjSY/BHXEVLWhDeBNmDu2FVs1z0Ffu3
         O+cKIFIzcmEPe+F5nKSEAsLJFxDWIXwBbHLtEgCKRu2dtUXU6fy2jI2hCoOX1Kq1mmRb
         2nLU+FxWLAOyBHF/Nkio0qiPSxfPp9ydFISx+0/2eK7Mf/lgBxyqkZ3eQeBvWXRI/Mab
         IqVKkcMZrGg+EGgkYYGXBH+PADg4RtafQvQA3YVs3a/lfPqI3oWj6pwWkDukYquG18GM
         nKahz1V7nN/dbfMcH58YX/lxSJsy6fDLar/PWvimLExn6jpHoMFlzbTMDQxhBar3Z9KQ
         APIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h3kSp7P/GP+cr6AyJ+PFis/HjqY/2F/l1HV7Icg0Tw0=;
        b=KjUUe24bnD8UK5FB/2Hz2b3ocu25AOPqvlJ+WKWh7yy8ZjPgLCAMpdSM1foPkxHwYJ
         JZLrwM+J1hz0cizIwT6zW3H5idTB+4HPDdSdQZQ6rrVuFQDDgc45JiYbRBFG0S3C6aq1
         IUnkdn3bX17VjDBR2tHidmiM8c1fLQl8m3t6LbN6ZmwnXqj3t09YQDWHPrIs1GijImSo
         MnwTcHiqs96rFgRZVuVHH64zn36AJqIjqq1pJaOikSYOsUpMm/jw7tXf2A4u8+6QXX7u
         2QgFirPBDEa/dZgi85UmnOk3C0AiyFWucagy39fZ4wAA1B95sy4iSA45ImA1JTPyg/Zb
         F0YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h3kSp7P/GP+cr6AyJ+PFis/HjqY/2F/l1HV7Icg0Tw0=;
        b=Ha99PTIlqqx7JG7OfznUTA+oUzKiBeHuvCP5K+Nz8YGtH+GuazlphxHf7Kicwe3X2K
         iyXg3ha/c53AQm2cYjBvipHOkdeJeBOezbJcEJv+/1zpouAitS99e0fj0kAi+4PdjUQy
         rZuV5NGsiqlQhRleD+HYNvBQjQ4Y8hAc5bZefHYnJIaw9XjaKRA4UkwmQQ/zchkgFkXy
         RvMFeuFfmjrTP9FgBHdSEjYqg4C0KlMZaq3h3iasipEdCaYEILMDeFSlsbPcAxjH3Iog
         ZB/oKlyZZPOvEJ+1Q0iRL6vA9q7TIbs3sfliWUpvLEKu9Fi5ixcBxM+TOExeeQgc4/Qv
         au7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FPNoHsj+CHDGImykJeLfCEboiJCp+IIB4YIAPmGiBb/csy0YL
	cfPJfNx6OBUPwNatP9ukIkI=
X-Google-Smtp-Source: ABdhPJwoIq4havlhYcI4tBqtw2BRhGqd5wAsPK/afHOJHEQHD3l6XitWCB+An31ohWHGKyiBsdZMEw==
X-Received: by 2002:a92:217:: with SMTP id 23mr1862901ilc.118.1601068142265;
        Fri, 25 Sep 2020 14:09:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5b47:: with SMTP id p68ls1067191ilb.5.gmail; Fri, 25 Sep
 2020 14:09:02 -0700 (PDT)
X-Received: by 2002:a92:a04a:: with SMTP id b10mr1687908ilm.279.1601068141918;
        Fri, 25 Sep 2020 14:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601068141; cv=none;
        d=google.com; s=arc-20160816;
        b=Jk17rwP/cn1lTqDPVhV986rN7QKmHcf8iJgnM2yikBjgEepU/+eY99FUGBr0biy903
         tZT0pWc1EBynFD68q55eu3YNglDHLV1Vp4m3SvBEB07VyARK6lXcfnPNGENRLBL+SEGZ
         InduPFQ1vrkN6n33y5wG4f7qIDEgQOxaCXm9asKCdXG8XvJshww9vYVRVk+vtF+95o0x
         hWt/KEYErQnyi7Mraqv9oBtimLZjXhEmegZMNah/FwmsLHrpHPEFoLjpFHlpom60nKBP
         /L3iIkdNhcGntFWK8kqC+s6VsILaZmfJ0gVqa8FkLkOxVyMFMh5evKtKPLPfoeOQZ+8U
         UCug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=OFtkcRVNfqsfHqRqMZSJG3ADxuTG9XqgLcucj7Grgho=;
        b=KKkJ/dMgtrzLJ4OyBUVLBic7P6IS3IJL15qE+SBVDqvJHUcuKtPYjZ8N2eGYw6ycxI
         0rCatoy6DOrX4rdUtJcgn7mUUXAt7BCQHf6gl+Ai4hcN5KL2DTgn/CH4rAY4zkO/uyaF
         gRf4cqZTJJU+XrPQxMg4k9RLd4SGE0q3laEXXwN4q7ADkGyLwDLMNXtytZph5lQJ50UD
         6UAd/pehG+oEqNE7NX+i5PFb56LiP02hWZjaIAfJYwxsv2iyjLO6JMREee+zQZHMj7Bf
         c+ukngpFFgMGvWiPHfTZ3uzkrQGMsOY3hRAkE35Uw+GMXZ8swl/rrGf/K/2ZnlXr6sNj
         oKhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id q22si20135iob.1.2020.09.25.14.09.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 14:09:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: 4lxk+ynzvnZPzFsKTiuVvaDadlH/M2G3uHwbYD3Wq5dYZlgWpOONtvYIzjopjI2/q+FZ44KnH0
 w4MKzKvTA2Hw==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="223238271"
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; 
   d="gz'50?scan'50,208,50";a="223238271"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2020 14:09:00 -0700
IronPort-SDR: X0uE3HMXDrhGv082V/65vLs5vPPc39sFrfMLJJTiEJTwrCrdVOd77Bk//RVCaOOrgwUnmCt40B
 HwqKC6uFbnRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; 
   d="gz'50?scan'50,208,50";a="339656921"
Received: from lkp-server01.sh.intel.com (HELO 2dda29302fe3) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 25 Sep 2020 14:08:56 -0700
Received: from kbuild by 2dda29302fe3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kLuxb-0000Fk-US; Fri, 25 Sep 2020 21:08:55 +0000
Date: Sat, 26 Sep 2020 05:08:01 +0800
From: kernel test robot <lkp@intel.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
	linux-fsdevel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	viro@zeniv.linux.org.uk, linux-kernel@vger.kernel.org,
	pali@kernel.org, dsterba@suse.cz, aaptel@suse.com,
	willy@infradead.org, rdunlap@infradead.org, joe@perches.com,
	mark@harmstone.com
Subject: Re: [PATCH v7 09/10] fs/ntfs3: Add NTFS3 in fs/Kconfig and
 fs/Makefile
Message-ID: <202009260502.nVsMM0it%lkp@intel.com>
References: <20200925155537.1030046-10-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline
In-Reply-To: <20200925155537.1030046-10-almaz.alexandrovich@paragon-software.com>
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


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Konstantin,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.9-rc6 next-20200925]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Konstantin-Komarov/NTFS-read-write-driver-GPL-implementation-by-Paragon-Software/20200925-235918
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 171d4ff79f965c1f164705ef0aaea102a6ad238b
config: arm-randconfig-r014-20200925 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c32e69b2ce7abfb151a87ba363ac9e25abf7d417)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/9b42f6a3e875b4a31a2487a7e6fcdeb464978834
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Konstantin-Komarov/NTFS-read-write-driver-GPL-implementation-by-Paragon-Software/20200925-235918
        git checkout 9b42f6a3e875b4a31a2487a7e6fcdeb464978834
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/ntfs3/attrib.c:1217:7: warning: variable 'hint' is used uninitialized whenever '&&' condition is false [-Wsometimes-uninitialized]
                   if (vcn + clst_data &&
                       ^~~~~~~~~~~~~~~
   fs/ntfs3/attrib.c:1224:11: note: uninitialized use occurs here
                                                hint + 1, len - clst_data, NULL, 0,
                                                ^~~~
   fs/ntfs3/attrib.c:1217:7: note: remove the '&&' if its condition is always true
                   if (vcn + clst_data &&
                       ^~~~~~~~~~~~~~~~~~
   fs/ntfs3/attrib.c:1215:18: note: initialize the variable 'hint' to silence this warning
                   CLST alen, hint;
                                  ^
                                   = 0
   fs/ntfs3/attrib.c:72:20: warning: unused function 'attr_must_be_resident' [-Wunused-function]
   static inline bool attr_must_be_resident(struct ntfs_sb_info *sbi,
                      ^
   2 warnings generated.
--
>> fs/ntfs3/super.c:927:16: warning: implicit conversion from 'long long' to 'unsigned long' changes value from 220979426414 to 1936094318 [-Wconstant-conversion]
           sb->s_magic = 0x337366746e; // "ntfs3"
                       ~ ^~~~~~~~~~~~
   1 warning generated.

vim +1217 fs/ntfs3/attrib.c

680a72ac72184f2 Konstantin Komarov 2020-09-25  1133  
680a72ac72184f2 Konstantin Komarov 2020-09-25  1134  /*
680a72ac72184f2 Konstantin Komarov 2020-09-25  1135   * attr_allocate_frame
680a72ac72184f2 Konstantin Komarov 2020-09-25  1136   *
680a72ac72184f2 Konstantin Komarov 2020-09-25  1137   * allocate/free clusters for 'frame'
680a72ac72184f2 Konstantin Komarov 2020-09-25  1138   */
680a72ac72184f2 Konstantin Komarov 2020-09-25  1139  int attr_allocate_frame(struct ntfs_inode *ni, CLST frame, size_t compr_size,
680a72ac72184f2 Konstantin Komarov 2020-09-25  1140  			u64 new_valid)
680a72ac72184f2 Konstantin Komarov 2020-09-25  1141  {
680a72ac72184f2 Konstantin Komarov 2020-09-25  1142  	int err = 0;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1143  	struct runs_tree *run = &ni->file.run;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1144  	struct ntfs_sb_info *sbi = ni->mi.sbi;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1145  	struct ATTRIB *attr, *attr_b;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1146  	struct ATTR_LIST_ENTRY *le, *le_b;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1147  	struct mft_inode *mi, *mi_b;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1148  	CLST svcn, evcn1, next_svcn, lcn, len;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1149  	CLST vcn, clst_data;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1150  	u64 total_size, valid_size, data_size;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1151  	bool is_compr;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1152  
680a72ac72184f2 Konstantin Komarov 2020-09-25  1153  	le_b = NULL;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1154  	attr_b = ni_find_attr(ni, NULL, &le_b, ATTR_DATA, NULL, 0, NULL, &mi_b);
680a72ac72184f2 Konstantin Komarov 2020-09-25  1155  	if (!attr_b)
680a72ac72184f2 Konstantin Komarov 2020-09-25  1156  		return -ENOENT;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1157  
680a72ac72184f2 Konstantin Komarov 2020-09-25  1158  	if (!is_attr_ext(attr_b))
680a72ac72184f2 Konstantin Komarov 2020-09-25  1159  		return -EINVAL;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1160  
680a72ac72184f2 Konstantin Komarov 2020-09-25  1161  	vcn = frame << NTFS_LZNT_CUNIT;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1162  	total_size = le64_to_cpu(attr_b->nres.total_size);
680a72ac72184f2 Konstantin Komarov 2020-09-25  1163  
680a72ac72184f2 Konstantin Komarov 2020-09-25  1164  	svcn = le64_to_cpu(attr_b->nres.svcn);
680a72ac72184f2 Konstantin Komarov 2020-09-25  1165  	evcn1 = le64_to_cpu(attr_b->nres.evcn) + 1;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1166  	data_size = le64_to_cpu(attr_b->nres.data_size);
680a72ac72184f2 Konstantin Komarov 2020-09-25  1167  
680a72ac72184f2 Konstantin Komarov 2020-09-25  1168  	if (svcn <= vcn && vcn < evcn1) {
680a72ac72184f2 Konstantin Komarov 2020-09-25  1169  		attr = attr_b;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1170  		le = le_b;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1171  		mi = mi_b;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1172  	} else if (!le_b) {
680a72ac72184f2 Konstantin Komarov 2020-09-25  1173  		err = -EINVAL;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1174  		goto out;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1175  	} else {
680a72ac72184f2 Konstantin Komarov 2020-09-25  1176  		le = le_b;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1177  		attr = ni_find_attr(ni, attr_b, &le, ATTR_DATA, NULL, 0, &vcn,
680a72ac72184f2 Konstantin Komarov 2020-09-25  1178  				    &mi);
680a72ac72184f2 Konstantin Komarov 2020-09-25  1179  		if (!attr) {
680a72ac72184f2 Konstantin Komarov 2020-09-25  1180  			err = -EINVAL;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1181  			goto out;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1182  		}
680a72ac72184f2 Konstantin Komarov 2020-09-25  1183  		svcn = le64_to_cpu(attr->nres.svcn);
680a72ac72184f2 Konstantin Komarov 2020-09-25  1184  		evcn1 = le64_to_cpu(attr->nres.evcn) + 1;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1185  	}
680a72ac72184f2 Konstantin Komarov 2020-09-25  1186  
680a72ac72184f2 Konstantin Komarov 2020-09-25  1187  	err = attr_load_runs(attr, ni, run);
680a72ac72184f2 Konstantin Komarov 2020-09-25  1188  	if (err)
680a72ac72184f2 Konstantin Komarov 2020-09-25  1189  		goto out;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1190  
680a72ac72184f2 Konstantin Komarov 2020-09-25  1191  	err = attr_is_frame_compressed(ni, attr_b, frame, &clst_data,
680a72ac72184f2 Konstantin Komarov 2020-09-25  1192  				       &is_compr);
680a72ac72184f2 Konstantin Komarov 2020-09-25  1193  	if (err)
680a72ac72184f2 Konstantin Komarov 2020-09-25  1194  		goto out;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1195  
680a72ac72184f2 Konstantin Komarov 2020-09-25  1196  	total_size -= (u64)clst_data << sbi->cluster_bits;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1197  
680a72ac72184f2 Konstantin Komarov 2020-09-25  1198  	len = bytes_to_cluster(sbi, compr_size);
680a72ac72184f2 Konstantin Komarov 2020-09-25  1199  
680a72ac72184f2 Konstantin Komarov 2020-09-25  1200  	if (len == clst_data)
680a72ac72184f2 Konstantin Komarov 2020-09-25  1201  		goto out;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1202  
680a72ac72184f2 Konstantin Komarov 2020-09-25  1203  	if (len < clst_data) {
680a72ac72184f2 Konstantin Komarov 2020-09-25  1204  		err = run_deallocate_ex(sbi, run, vcn + len, clst_data - len,
680a72ac72184f2 Konstantin Komarov 2020-09-25  1205  					NULL, true);
680a72ac72184f2 Konstantin Komarov 2020-09-25  1206  		if (err)
680a72ac72184f2 Konstantin Komarov 2020-09-25  1207  			goto out;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1208  
680a72ac72184f2 Konstantin Komarov 2020-09-25  1209  		if (!run_add_entry(run, vcn + len, SPARSE_LCN,
680a72ac72184f2 Konstantin Komarov 2020-09-25  1210  				   clst_data - len)) {
680a72ac72184f2 Konstantin Komarov 2020-09-25  1211  			err = -ENOMEM;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1212  			goto out;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1213  		}
680a72ac72184f2 Konstantin Komarov 2020-09-25  1214  	} else {
680a72ac72184f2 Konstantin Komarov 2020-09-25  1215  		CLST alen, hint;
680a72ac72184f2 Konstantin Komarov 2020-09-25  1216  		/* Get the last lcn to allocate from */
680a72ac72184f2 Konstantin Komarov 2020-09-25 @1217  		if (vcn + clst_data &&

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009260502.nVsMM0it%25lkp%40intel.com.

--cNdxnHkX5QqsyA0e
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AQA=

--cNdxnHkX5QqsyA0e--
