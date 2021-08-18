Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLFY6KEAMGQESDGGMUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 115CE3EFA27
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 07:35:42 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id q40-20020a9f386b000000b002ac424902b9sf344318uad.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 22:35:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629264941; cv=pass;
        d=google.com; s=arc-20160816;
        b=lSyUefotSMZw0nEdn9sKVa2mhCt1+uzdf3xIBLZUDI8mVPjD4aSaW99gRXyUiWgmm0
         fHxiQK9b7OkWwUbKlCsYATgJMxu/d+yy7GJIfKJQoHj84tD9x2Pz80GFvhRsYAUtizl5
         4jlC96zgcY+r6VegzshChkPSH/rc7jYaPgtEesGRYju9Rz8kVQiIWhrCDU6fnHSyo0zU
         W5qgPKNGXMgD9slMCYTm/7uhGns5iY1sPAhCdnb0h9tKT2AJKNgfShd7RfNKmMDDi2oI
         XZkfa1o4IEl939m//Nmxq0QGgQgeO/J/S2sDlr2gpREK4x91raUaXOR+PXfjClI6Hgju
         MzLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1C0TRA+rgLORusSTsjdOC2LZgXJ7VKijIc2esGvWc9w=;
        b=xeR8QivJ/jDBywREF0HAsXuSDkaJYcB4S9TQ4+s799ULtBRHbamQ8SOXefatQ8No0w
         s6FUEwbQaCxPqEkQwo37bLwk2jVeT5y9prOvaMFa7BGZAMVwKkWopD+OZirepBSht4sd
         V5mTgavzcVdrxd2pdQIwiYKuNcH70tHV8PFDFNYwyZQytUAGCaUVOvk267EceU+wjTjL
         d7fQgpjNEDPwVbKWpZlLsr6nGypawhrExZ1WYads6X+653TOCAEuAd/pczv8s9lbPyej
         LWZYTPMUaG0oHwvD7N2Bf7Bo4L2INylrNvJqItvM+YSexoPJv57JoOpJJq7Ysp3iepyq
         pUaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1C0TRA+rgLORusSTsjdOC2LZgXJ7VKijIc2esGvWc9w=;
        b=fWUut7dWGRTm+FVCtI6lRoPma5ZpV+ma6TBrqBMAoKD9l4ba63kM4FT4h504wWUeuQ
         sgUouAOcUhmDkGMtIUy0mcodojywjCzeqrovdCDWt4v0iUW+YGsOumRUm17mzjG1RyJV
         hnITA/vNwx13FbPBQQROueLckz12SMUIl/Ux26XZGHi2etrqM986q1hm4t8aSN0CEA6N
         GxNefxpZP2Y9+MG6gA3y7SLXzwJxfr9gd70ygIUvG+C6fqheKsPjH7o1hGK746fc7ShU
         u7wcxX9H3jTHpd2YSXqdZ4yW7wJaj9bEvvg7OUHEOUIuQvMopJ+oCRmMbYfhlpNxRFsA
         eKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1C0TRA+rgLORusSTsjdOC2LZgXJ7VKijIc2esGvWc9w=;
        b=CsqXxnV5xIauw8LvHkpi/9BxSPthRyVwGOcpC9lD2VFdMJk+J40ALVMfEpqN+4zt/4
         LRwhzPKnekXn8DwzHX9bnUdaBKEaBg0aN2zbmqEIAhxd592Iuq0ZRLXkGRxBJMVqi23k
         YTPS9xLe9wv36PLivLb9wo3e6/keGk+iPfmA3nrcvRLdrZuLZob+AWViCxbt30RhHEHq
         k0LAHkMabuZp3amQ9mqGmxzG6fBC7Zx6r4zJAqiHi7M/+elaPHqkAhbfF9oB9YbljSu4
         EqXSmsWJwsF4Xbfsg+tuLpT6mOanep7S1vMgCrYvRpOL82tcRPrZDPcU4UjIznpZu2Fg
         Tz/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330wTibhLAipbneETYFFWprlZMSFLK5sNWgolu/AamDSoC8n4b8
	Xxeno1tcV8jwMrxoAhxNBek=
X-Google-Smtp-Source: ABdhPJxCof34ECBj6fHpnfz3eU0VUCPSRx/NghM0CurKCM23jcNUfJZm7J5xKB5EER8eNxVmyu0Sxw==
X-Received: by 2002:ab0:3255:: with SMTP id r21mr5435627uan.46.1629264940909;
        Tue, 17 Aug 2021 22:35:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6cac:: with SMTP id j12ls99022uaa.6.gmail; Tue, 17 Aug
 2021 22:35:38 -0700 (PDT)
X-Received: by 2002:ab0:1331:: with SMTP id g46mr5389186uae.41.1629264937886;
        Tue, 17 Aug 2021 22:35:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629264937; cv=none;
        d=google.com; s=arc-20160816;
        b=pbcv+z7oQU4jHUj0dPvHpHfGTejDKSh7XlJOAjhX0BQqDCEwTH7nz2NEbOcNpab7VE
         z9A0Pl51wkfYC2EaHy7Vdtcrunq6s7BZ+axh1dfR1vH+aU/0oM9KYrstW5thIb5I9jmF
         S3IBehBIdBDABWdhnX75vZRhlKVIjDS9tpFkGArd6VHpbzRhr7y3HdgAc6YzlYtEf4cO
         E2/ckLYHNbxRiZHzajmMKSit3s+8At5R0NekCaRSE6zvkDxEt/c5rSeoblgFSOpvGJ49
         nZ5NTk/9uLPGbcsb4ikyHBNDvVNerM/oGjDWxEoPxjf44HIW4MvLyeb4CcUxL91ZaabL
         Lb8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=233B35qH8sDTgtXNfZZnkfhESWY9dOb/Rbf4g5E2mYo=;
        b=zJzoETd2DdCu65M5z27FNAIoCzuX4a2vwnK2kQrF/OzTC9u/p6DonoK2g6npW9KBV2
         BtxKwTgnkcPBvpxOBcsr/tLGmw+mlhn/ZEjsrI4pomUVr1CFM+LwpyU7vp4NnO3pmLhK
         SfO3rcqGbcsRy3h5K2SesIf2IjJNr2xR92bM5KXlZEtnMtX7GGinDIpY3ar1J/WuuLEg
         KaDlT1hNwx2KCT9B/YMjn8z/UoFSjpoykrGnCcoNpZv2DjnYt7VDWAq6drg0ryAQfe7o
         n+Z85kmQAoINWO5lXeMkW1UJWlMRjJgNT9Juw3xcZAaHM5U0tQ2KEAO5O6P9Ki+Q3oBj
         aeuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id m15si253770uab.1.2021.08.17.22.35.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 22:35:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="196517147"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="gz'50?scan'50,208,50";a="196517147"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Aug 2021 22:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="gz'50?scan'50,208,50";a="676907962"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 17 Aug 2021 22:35:32 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mGEEd-000SdH-EA; Wed, 18 Aug 2021 05:35:31 +0000
Date: Wed, 18 Aug 2021 13:34:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Kees Cook <keescook@chromium.org>
Subject: [gustavoars-linux:for-next/clang-fallthrough 1/1]
 drivers/scsi/st.c:3831:2: warning: unannotated fall-through between switch
 labels
Message-ID: <202108181308.GTC6oVAB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bg08WKrSYDhXBjb5"
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


--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.gi=
t for-next/clang-fallthrough
head:   3b37740f7d04ef32cc1a7bb17c2bc69d737c9056
commit: 3b37740f7d04ef32cc1a7bb17c2bc69d737c9056 [1/1] Makefile: Enable -Wi=
mplicit-fallthrough for Clang
config: x86_64-randconfig-a016-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project af7818=
093677dcb4c0840aef96bc029deb219e57)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.=
git/commit/?id=3D3b37740f7d04ef32cc1a7bb17c2bc69d737c9056
        git remote add gustavoars-linux https://git.kernel.org/pub/scm/linu=
x/kernel/git/gustavoars/linux.git
        git fetch --no-tags gustavoars-linux for-next/clang-fallthrough
        git checkout 3b37740f7d04ef32cc1a7bb17c2bc69d737c9056
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/scsi/st.c:3831:2: warning: unannotated fall-through between swit=
ch labels [-Wimplicit-fallthrough]
           default:
           ^
   drivers/scsi/st.c:3831:2: note: insert 'break;' to avoid fall-through
           default:
           ^
           break;=20
   1 warning generated.


vim +3831 drivers/scsi/st.c

8038e6456a3e6f Kai Makisara      2016-02-09  3353 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3354 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3355  /* Partition the tape in=
to two partitions if size > 0 or one partition if
^1da177e4c3f41 Linus Torvalds    2005-04-16  3356     size =3D=3D 0.
^1da177e4c3f41 Linus Torvalds    2005-04-16  3357 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3358     The block descriptors=
 are read and written because Sony SDT-7000 does not
^1da177e4c3f41 Linus Torvalds    2005-04-16  3359     work without this (su=
ggestion from Michael Schaefer <Michael.Schaefer@dlr.de>).
^1da177e4c3f41 Linus Torvalds    2005-04-16  3360 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3361     My HP C1533A drive re=
turns only one partition size field. This is used to
^1da177e4c3f41 Linus Torvalds    2005-04-16  3362     set the size of parti=
tion 1. There is no size field for the default partition.
^1da177e4c3f41 Linus Torvalds    2005-04-16  3363     Michael Schaefer's So=
ny SDT-7000 returns two descriptors and the second is
^1da177e4c3f41 Linus Torvalds    2005-04-16  3364     used to set the size =
of partition 1 (this is what the SCSI-3 standard specifies).
^1da177e4c3f41 Linus Torvalds    2005-04-16  3365     The following algorit=
hm is used to accommodate both drives: if the number of
^1da177e4c3f41 Linus Torvalds    2005-04-16  3366     partition size fields=
 is greater than the maximum number of additional partitions
^1da177e4c3f41 Linus Torvalds    2005-04-16  3367     in the mode page, the=
 second field is used. Otherwise the first field is used.
^1da177e4c3f41 Linus Torvalds    2005-04-16  3368 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3369     For Seagate DDS drive=
s the page length must be 8 when no partitions is defined
^1da177e4c3f41 Linus Torvalds    2005-04-16  3370     and 10 when 1 partiti=
on is defined (information from Eric Lee Green). This is
^1da177e4c3f41 Linus Torvalds    2005-04-16  3371     is acceptable also to=
 some other old drives and enforced if the first partition
^1da177e4c3f41 Linus Torvalds    2005-04-16  3372     size field is used fo=
r the first additional partition size.
8038e6456a3e6f Kai Makisara      2016-02-09  3373 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3374     For drives that adver=
tize SCSI-3 or newer, use the SSC-3 methods.
^1da177e4c3f41 Linus Torvalds    2005-04-16  3375   */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3376  static int partition_tap=
e(struct scsi_tape *STp, int size)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3377  {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3378  	int result;
8038e6456a3e6f Kai Makisara      2016-02-09  3379  	int target_partition;
8038e6456a3e6f Kai Makisara      2016-02-09  3380  	bool scsi3 =3D STp->dev=
ice->scsi_level >=3D SCSI_3, needs_format =3D false;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3381  	int pgo, psd_cnt, psdo;
8038e6456a3e6f Kai Makisara      2016-02-09  3382  	int psum =3D PP_MSK_PSU=
M_MB, units =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3383  	unsigned char *bp;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3384 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3385  	result =3D read_mode_pa=
ge(STp, PART_PAGE, 0);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3386  	if (result) {
b30d8bca5b525b Hannes Reinecke   2014-06-25  3387  		DEBC_printk(STp, "Can'=
t read partition mode page.\n");
^1da177e4c3f41 Linus Torvalds    2005-04-16  3388  		return result;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3389  	}
8038e6456a3e6f Kai Makisara      2016-02-09  3390  	target_partition =3D 1;
8038e6456a3e6f Kai Makisara      2016-02-09  3391  	if (size < 0) {
8038e6456a3e6f Kai Makisara      2016-02-09  3392  		target_partition =3D 0=
;
8038e6456a3e6f Kai Makisara      2016-02-09  3393  		size =3D -size;
8038e6456a3e6f Kai Makisara      2016-02-09  3394  	}
8038e6456a3e6f Kai Makisara      2016-02-09  3395 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3396  	/* The mode page is in =
the buffer. Let's modify it and write it. */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3397  	bp =3D (STp->buffer)->b=
_data;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3398  	pgo =3D MODE_HEADER_LEN=
GTH + bp[MH_OFF_BDESCS_LENGTH];
b30d8bca5b525b Hannes Reinecke   2014-06-25  3399  	DEBC_printk(STp, "Parti=
tion page length is %d bytes.\n",
b30d8bca5b525b Hannes Reinecke   2014-06-25  3400  		    bp[pgo + MP_OFF_PA=
GE_LENGTH] + 2);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3401 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3402  	psd_cnt =3D (bp[pgo + M=
P_OFF_PAGE_LENGTH] + 2 - PART_PAGE_FIXED_LENGTH) / 2;
8038e6456a3e6f Kai Makisara      2016-02-09  3403 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3404  	if (scsi3) {
8038e6456a3e6f Kai Makisara      2016-02-09  3405  		needs_format =3D (bp[p=
go + PP_OFF_FLAGS] & PP_MSK_POFM) !=3D 0;
8038e6456a3e6f Kai Makisara      2016-02-09  3406  		if (needs_format && si=
ze =3D=3D 0) {
8038e6456a3e6f Kai Makisara      2016-02-09  3407  			/* No need to write t=
he mode page when clearing
8038e6456a3e6f Kai Makisara      2016-02-09  3408  			 *  partitioning
8038e6456a3e6f Kai Makisara      2016-02-09  3409  			 */
8038e6456a3e6f Kai Makisara      2016-02-09  3410  			DEBC_printk(STp, "For=
matting tape with one partition.\n");
8038e6456a3e6f Kai Makisara      2016-02-09  3411  			result =3D format_med=
ium(STp, 0);
8038e6456a3e6f Kai Makisara      2016-02-09  3412  			goto out;
8038e6456a3e6f Kai Makisara      2016-02-09  3413  		}
8038e6456a3e6f Kai Makisara      2016-02-09  3414  		if (needs_format)  /* =
Leave the old value for HP DATs claiming SCSI_3 */
8038e6456a3e6f Kai Makisara      2016-02-09  3415  			psd_cnt =3D 2;
8038e6456a3e6f Kai Makisara      2016-02-09  3416  		if ((bp[pgo + PP_OFF_F=
LAGS] & PP_MSK_PSUM_UNITS) =3D=3D PP_MSK_PSUM_UNITS) {
8038e6456a3e6f Kai Makisara      2016-02-09  3417  			/* Use units scaling =
for large partitions if the device
8038e6456a3e6f Kai Makisara      2016-02-09  3418  			 * suggests it and no=
 precision lost. Required for IBM
8038e6456a3e6f Kai Makisara      2016-02-09  3419  			 * TS1140/50 drives t=
hat don't support MB units.
8038e6456a3e6f Kai Makisara      2016-02-09  3420  			 */
8038e6456a3e6f Kai Makisara      2016-02-09  3421  			if (size >=3D 1000 &&=
 (size % 1000) =3D=3D 0) {
8038e6456a3e6f Kai Makisara      2016-02-09  3422  				size /=3D 1000;
8038e6456a3e6f Kai Makisara      2016-02-09  3423  				psum =3D PP_MSK_PSUM=
_UNITS;
8038e6456a3e6f Kai Makisara      2016-02-09  3424  				units =3D 9; /* GB *=
/
8038e6456a3e6f Kai Makisara      2016-02-09  3425  			}
8038e6456a3e6f Kai Makisara      2016-02-09  3426  		}
8038e6456a3e6f Kai Makisara      2016-02-09  3427  		/* Try it anyway if to=
o large to specify in MB */
8038e6456a3e6f Kai Makisara      2016-02-09  3428  		if (psum =3D=3D PP_MSK=
_PSUM_MB && size >=3D 65534) {
8038e6456a3e6f Kai Makisara      2016-02-09  3429  			size /=3D 1000;
8038e6456a3e6f Kai Makisara      2016-02-09  3430  			psum =3D PP_MSK_PSUM_=
UNITS;
8038e6456a3e6f Kai Makisara      2016-02-09  3431  			units =3D 9;  /* GB *=
/
8038e6456a3e6f Kai Makisara      2016-02-09  3432  		}
8038e6456a3e6f Kai Makisara      2016-02-09  3433  	}
8038e6456a3e6f Kai Makisara      2016-02-09  3434 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3435  	if (size >=3D 65535 || =
 /* Does not fit into two bytes */
8038e6456a3e6f Kai Makisara      2016-02-09  3436  	    (target_partition =
=3D=3D 0 && psd_cnt < 2)) {
8038e6456a3e6f Kai Makisara      2016-02-09  3437  		result =3D -EINVAL;
8038e6456a3e6f Kai Makisara      2016-02-09  3438  		goto out;
8038e6456a3e6f Kai Makisara      2016-02-09  3439  	}
8038e6456a3e6f Kai Makisara      2016-02-09  3440 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3441  	psdo =3D pgo + PART_PAG=
E_FIXED_LENGTH;
8038e6456a3e6f Kai Makisara      2016-02-09  3442  	/* The second condition=
 is for HP DDS which use only one partition size
8038e6456a3e6f Kai Makisara      2016-02-09  3443  	 * descriptor
8038e6456a3e6f Kai Makisara      2016-02-09  3444  	 */
8038e6456a3e6f Kai Makisara      2016-02-09  3445  	if (target_partition > =
0 &&
8038e6456a3e6f Kai Makisara      2016-02-09  3446  	    (psd_cnt > bp[pgo +=
 PP_OFF_MAX_ADD_PARTS] ||
8038e6456a3e6f Kai Makisara      2016-02-09  3447  	     bp[pgo + PP_OFF_MA=
X_ADD_PARTS] !=3D 1)) {
8038e6456a3e6f Kai Makisara      2016-02-09  3448  		bp[psdo] =3D bp[psdo +=
 1] =3D 0xff;  /* Rest to partition 0 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3449  		psdo +=3D 2;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3450  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3451  	memset(bp + psdo, 0, bp=
[pgo + PP_OFF_NBR_ADD_PARTS] * 2);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3452 =20
b30d8bca5b525b Hannes Reinecke   2014-06-25  3453  	DEBC_printk(STp, "psd_c=
nt %d, max.parts %d, nbr_parts %d\n",
^1da177e4c3f41 Linus Torvalds    2005-04-16  3454  		    psd_cnt, bp[pgo + =
PP_OFF_MAX_ADD_PARTS],
b30d8bca5b525b Hannes Reinecke   2014-06-25  3455  		    bp[pgo + PP_OFF_NB=
R_ADD_PARTS]);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3456 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3457  	if (size =3D=3D 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3458  		bp[pgo + PP_OFF_NBR_AD=
D_PARTS] =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3459  		if (psd_cnt <=3D bp[pg=
o + PP_OFF_MAX_ADD_PARTS])
^1da177e4c3f41 Linus Torvalds    2005-04-16  3460  		    bp[pgo + MP_OFF_PA=
GE_LENGTH] =3D 6;
b30d8bca5b525b Hannes Reinecke   2014-06-25  3461  		DEBC_printk(STp, "Form=
atting tape with one partition.\n");
^1da177e4c3f41 Linus Torvalds    2005-04-16  3462  	} else {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3463  		bp[psdo] =3D (size >> =
8) & 0xff;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3464  		bp[psdo + 1] =3D size =
& 0xff;
8038e6456a3e6f Kai Makisara      2016-02-09  3465  		if (target_partition =
=3D=3D 0)
8038e6456a3e6f Kai Makisara      2016-02-09  3466  			bp[psdo + 2] =3D bp[p=
sdo + 3] =3D 0xff;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3467  		bp[pgo + 3] =3D 1;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3468  		if (bp[pgo + MP_OFF_PA=
GE_LENGTH] < 8)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3469  		    bp[pgo + MP_OFF_PA=
GE_LENGTH] =3D 8;
8038e6456a3e6f Kai Makisara      2016-02-09  3470  		DEBC_printk(STp,
8038e6456a3e6f Kai Makisara      2016-02-09  3471  			    "Formatting tape =
with two partitions (%i =3D %d MB).\n",
8038e6456a3e6f Kai Makisara      2016-02-09  3472  			    target_partition,=
 units > 0 ? size * 1000 : size);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3473  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3474  	bp[pgo + PP_OFF_PART_UN=
ITS] =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3475  	bp[pgo + PP_OFF_RESERVE=
D] =3D 0;
8038e6456a3e6f Kai Makisara      2016-02-09  3476  	if (size !=3D 1 || unit=
s !=3D 0) {
8038e6456a3e6f Kai Makisara      2016-02-09  3477  		bp[pgo + PP_OFF_FLAGS]=
 =3D PP_BIT_IDP | psum |
8038e6456a3e6f Kai Makisara      2016-02-09  3478  			(bp[pgo + PP_OFF_FLAG=
S] & 0x07);
8038e6456a3e6f Kai Makisara      2016-02-09  3479  		bp[pgo + PP_OFF_PART_U=
NITS] =3D units;
8038e6456a3e6f Kai Makisara      2016-02-09  3480  	} else
8038e6456a3e6f Kai Makisara      2016-02-09  3481  		bp[pgo + PP_OFF_FLAGS]=
 =3D PP_BIT_FDP |
8038e6456a3e6f Kai Makisara      2016-02-09  3482  			(bp[pgo + PP_OFF_FLAG=
S] & 0x1f);
8038e6456a3e6f Kai Makisara      2016-02-09  3483  	bp[pgo + MP_OFF_PAGE_LE=
NGTH] =3D 6 + psd_cnt * 2;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3484 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3485  	result =3D write_mode_p=
age(STp, PART_PAGE, 1);
8038e6456a3e6f Kai Makisara      2016-02-09  3486 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3487  	if (!result && needs_fo=
rmat)
8038e6456a3e6f Kai Makisara      2016-02-09  3488  		result =3D format_medi=
um(STp, 1);
8038e6456a3e6f Kai Makisara      2016-02-09  3489 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3490  	if (result) {
b30d8bca5b525b Hannes Reinecke   2014-06-25  3491  		st_printk(KERN_INFO, S=
Tp, "Partitioning of tape failed.\n");
^1da177e4c3f41 Linus Torvalds    2005-04-16  3492  		result =3D (-EIO);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3493  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3494 =20
8038e6456a3e6f Kai Makisara      2016-02-09  3495  out:
^1da177e4c3f41 Linus Torvalds    2005-04-16  3496  	return result;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3497  }
^1da177e4c3f41 Linus Torvalds    2005-04-16  3498  =0C
^1da177e4c3f41 Linus Torvalds    2005-04-16  3499 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3500 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3501  /* The ioctl command */
dba7688fc9037c Christoph Hellwig 2021-07-24  3502  static long st_ioctl(str=
uct file *file, unsigned int cmd_in, unsigned long arg)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3503  {
dba7688fc9037c Christoph Hellwig 2021-07-24  3504  	void __user *p =3D (voi=
d __user *)arg;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3505  	int i, cmd_nr, cmd_type=
, bt;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3506  	int retval =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3507  	unsigned int blk;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3508  	struct scsi_tape *STp =
=3D file->private_data;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3509  	struct st_modedef *STm;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3510  	struct st_partstat *STp=
s;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3511 =20
28f85009e0cf6a Matthias Kaehlcke 2007-07-29  3512  	if (mutex_lock_interrup=
tible(&STp->lock))
^1da177e4c3f41 Linus Torvalds    2005-04-16  3513  		return -ERESTARTSYS;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3514 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3515  	DEB(
^1da177e4c3f41 Linus Torvalds    2005-04-16  3516  	if (debugging && !STp->=
in_use) {
b30d8bca5b525b Hannes Reinecke   2014-06-25  3517  		st_printk(ST_DEB_MSG, =
STp, "Incorrect device.\n");
^1da177e4c3f41 Linus Torvalds    2005-04-16  3518  		retval =3D (-EIO);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3519  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3520  	} ) /* end DEB */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3521 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3522  	STm =3D &(STp->modes[ST=
p->current_mode]);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3523  	STps =3D &(STp->ps[STp-=
>partition]);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3524 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3525  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  3526  	 * If we are in the mid=
dle of error recovery, don't let anyone
^1da177e4c3f41 Linus Torvalds    2005-04-16  3527  	 * else try and use thi=
s device.  Also, if error recovery fails, it
^1da177e4c3f41 Linus Torvalds    2005-04-16  3528  	 * may try and take the=
 device offline, in which case all further
^1da177e4c3f41 Linus Torvalds    2005-04-16  3529  	 * access to the device=
 is prohibited.
^1da177e4c3f41 Linus Torvalds    2005-04-16  3530  	 */
906d15fbd23c12 Christoph Hellwig 2014-10-11  3531  	retval =3D scsi_ioctl_b=
lock_when_processing_errors(STp->device, cmd_in,
83ff6fe8580a7c Al Viro           2008-03-02  3532  			file->f_flags & O_NDE=
LAY);
906d15fbd23c12 Christoph Hellwig 2014-10-11  3533  	if (retval)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3534  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3535 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3536  	cmd_type =3D _IOC_TYPE(=
cmd_in);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3537  	cmd_nr =3D _IOC_NR(cmd_=
in);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3538 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3539  	if (cmd_type =3D=3D _IO=
C_TYPE(MTIOCTOP) && cmd_nr =3D=3D _IOC_NR(MTIOCTOP)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3540  		struct mtop mtc;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3541 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3542  		if (_IOC_SIZE(cmd_in) =
!=3D sizeof(mtc)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3543  			retval =3D (-EINVAL);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3544  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3545  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3546 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3547  		i =3D copy_from_user(&=
mtc, p, sizeof(struct mtop));
^1da177e4c3f41 Linus Torvalds    2005-04-16  3548  		if (i) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3549  			retval =3D (-EFAULT);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3550  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3551  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3552 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3553  		if (mtc.mt_op =3D=3D M=
TSETDRVBUFFER && !capable(CAP_SYS_ADMIN)) {
b30d8bca5b525b Hannes Reinecke   2014-06-25  3554  			st_printk(KERN_WARNIN=
G, STp,
b30d8bca5b525b Hannes Reinecke   2014-06-25  3555  				  "MTSETDRVBUFFER on=
ly allowed for root.\n");
^1da177e4c3f41 Linus Torvalds    2005-04-16  3556  			retval =3D (-EPERM);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3557  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3558  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3559  		if (!STm->defined &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3560  		    (mtc.mt_op !=3D MT=
SETDRVBUFFER &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3561  		     (mtc.mt_count & M=
T_ST_OPTIONS) =3D=3D 0)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3562  			retval =3D (-ENXIO);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3563  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3564  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3565 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3566  		if (!STp->pos_unknown)=
 {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3567 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3568  			if (STps->eof =3D=3D =
ST_FM_HIT) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3569  				if (mtc.mt_op =3D=3D=
 MTFSF || mtc.mt_op =3D=3D MTFSFM ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3570                          =
            mtc.mt_op =3D=3D MTEOM) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3571  					mtc.mt_count -=3D 1=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3572  					if (STps->drv_file =
>=3D 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3573  						STps->drv_file +=
=3D 1;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3574  				} else if (mtc.mt_op=
 =3D=3D MTBSF || mtc.mt_op =3D=3D MTBSFM) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3575  					mtc.mt_count +=3D 1=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3576  					if (STps->drv_file =
>=3D 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3577  						STps->drv_file +=
=3D 1;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3578  				}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3579  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3580 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3581  			if (mtc.mt_op =3D=3D =
MTSEEK) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3582  				/* Old position must=
 be restored if partition will be
^1da177e4c3f41 Linus Torvalds    2005-04-16  3583                          =
           changed */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3584  				i =3D !STp->can_part=
itions ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3585  				    (STp->new_partit=
ion !=3D STp->partition);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3586  			} else {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3587  				i =3D mtc.mt_op =3D=
=3D MTREW || mtc.mt_op =3D=3D MTOFFL ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3588  				    mtc.mt_op =3D=3D=
 MTRETEN || mtc.mt_op =3D=3D MTEOM ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3589  				    mtc.mt_op =3D=3D=
 MTLOCK || mtc.mt_op =3D=3D MTLOAD ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3590  				    mtc.mt_op =3D=3D=
 MTFSF || mtc.mt_op =3D=3D MTFSFM ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3591  				    mtc.mt_op =3D=3D=
 MTBSF || mtc.mt_op =3D=3D MTBSFM ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3592  				    mtc.mt_op =3D=3D=
 MTCOMPRESSION;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3593  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3594  			i =3D flush_buffer(ST=
p, i);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3595  			if (i < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3596  				retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3597  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3598  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3599  			if (STps->rw =3D=3D S=
T_WRITING &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3600  			    (mtc.mt_op =3D=3D=
 MTREW || mtc.mt_op =3D=3D MTOFFL ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3601  			     mtc.mt_op =3D=3D=
 MTSEEK ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3602  			     mtc.mt_op =3D=3D=
 MTBSF || mtc.mt_op =3D=3D MTBSFM)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3603  				i =3D st_int_ioctl(S=
Tp, MTWEOF, 1);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3604  				if (i < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3605  					retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3606  					goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3607  				}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3608  				if (mtc.mt_op =3D=3D=
 MTBSF || mtc.mt_op =3D=3D MTBSFM)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3609  					mtc.mt_count++;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3610  				STps->rw =3D ST_IDLE=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3611  			     }
^1da177e4c3f41 Linus Torvalds    2005-04-16  3612 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3613  		} else {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3614  			/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  3615  			 * If there was a bus=
 reset, block further access
^1da177e4c3f41 Linus Torvalds    2005-04-16  3616  			 * to this device.  I=
f the user wants to rewind the tape,
^1da177e4c3f41 Linus Torvalds    2005-04-16  3617  			 * then reset the fla=
g and allow access again.
^1da177e4c3f41 Linus Torvalds    2005-04-16  3618  			 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3619  			if (mtc.mt_op !=3D MT=
REW &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3620  			    mtc.mt_op !=3D MT=
OFFL &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3621  			    mtc.mt_op !=3D MT=
RETEN &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3622  			    mtc.mt_op !=3D MT=
ERASE &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3623  			    mtc.mt_op !=3D MT=
SEEK &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3624  			    mtc.mt_op !=3D MT=
EOM) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3625  				retval =3D (-EIO);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3626  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3627  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3628  			reset_state(STp);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3629  			/* remove this when t=
he midlevel properly clears was_reset */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3630  			STp->device->was_rese=
t =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3631  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3632 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3633  		if (mtc.mt_op !=3D MTN=
OP && mtc.mt_op !=3D MTSETBLK &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3634  		    mtc.mt_op !=3D MTS=
ETDENSITY && mtc.mt_op !=3D MTWSM &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3635  		    mtc.mt_op !=3D MTS=
ETDRVBUFFER && mtc.mt_op !=3D MTSETPART)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3636  			STps->rw =3D ST_IDLE;=
	/* Prevent automatic WEOF and fsf */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3637 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3638  		if (mtc.mt_op =3D=3D M=
TOFFL && STp->door_locked !=3D ST_UNLOCKED)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3639  			do_door_lock(STp, 0);=
	/* Ignore result! */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3640 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3641  		if (mtc.mt_op =3D=3D M=
TSETDRVBUFFER &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3642  		    (mtc.mt_count & MT=
_ST_OPTIONS) !=3D 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3643  			retval =3D st_set_opt=
ions(STp, mtc.mt_count);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3644  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3645  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3646 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3647  		if (mtc.mt_op =3D=3D M=
TSETPART) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3648  			if (!STp->can_partiti=
ons ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3649  			    mtc.mt_count < 0 =
|| mtc.mt_count >=3D ST_NBR_PARTITIONS) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3650  				retval =3D (-EINVAL)=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3651  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3652  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3653  			if (mtc.mt_count >=3D=
 STp->nbr_partitions &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3654  			    (STp->nbr_partiti=
ons =3D nbr_partitions(STp)) < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3655  				retval =3D (-EIO);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3656  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3657  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3658  			if (mtc.mt_count >=3D=
 STp->nbr_partitions) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3659  				retval =3D (-EINVAL)=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3660  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3661  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3662  			STp->new_partition =
=3D mtc.mt_count;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3663  			retval =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3664  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3665  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3666 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3667  		if (mtc.mt_op =3D=3D M=
TMKPART) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3668  			if (!STp->can_partiti=
ons) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3669  				retval =3D (-EINVAL)=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3670  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3671  			}
8038e6456a3e6f Kai Makisara      2016-02-09  3672  			i =3D do_load_unload(=
STp, file, 1);
8038e6456a3e6f Kai Makisara      2016-02-09  3673  			if (i < 0) {
8038e6456a3e6f Kai Makisara      2016-02-09  3674  				retval =3D i;
8038e6456a3e6f Kai Makisara      2016-02-09  3675  				goto out;
8038e6456a3e6f Kai Makisara      2016-02-09  3676  			}
8038e6456a3e6f Kai Makisara      2016-02-09  3677  			i =3D partition_tape(=
STp, mtc.mt_count);
8038e6456a3e6f Kai Makisara      2016-02-09  3678  			if (i < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3679  				retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3680  				goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3681  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3682  			for (i =3D 0; i < ST_=
NBR_PARTITIONS; i++) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3683  				STp->ps[i].rw =3D ST=
_IDLE;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3684  				STp->ps[i].at_sm =3D=
 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3685  				STp->ps[i].last_bloc=
k_valid =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3686  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3687  			STp->partition =3D ST=
p->new_partition =3D 0;
8038e6456a3e6f Kai Makisara      2016-02-09  3688  			STp->nbr_partitions =
=3D mtc.mt_count !=3D 0 ? 2 : 1;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3689  			STps->drv_block =3D S=
Tps->drv_file =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3690  			retval =3D 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3691  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3692  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3693 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3694  		if (mtc.mt_op =3D=3D M=
TSEEK) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3695  			i =3D set_location(ST=
p, mtc.mt_count, STp->new_partition, 0);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3696  			if (!STp->can_partiti=
ons)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3697  				STp->ps[0].rw =3D ST=
_IDLE;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3698  			retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3699  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3700  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3701 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3702  		if (mtc.mt_op =3D=3D M=
TUNLOAD || mtc.mt_op =3D=3D MTOFFL) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3703  			retval =3D do_load_un=
load(STp, file, 0);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3704  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3705  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3706 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3707  		if (mtc.mt_op =3D=3D M=
TLOAD) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3708  			retval =3D do_load_un=
load(STp, file, max(1, mtc.mt_count));
^1da177e4c3f41 Linus Torvalds    2005-04-16  3709  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3710  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3711 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3712  		if (mtc.mt_op =3D=3D M=
TLOCK || mtc.mt_op =3D=3D MTUNLOCK) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3713  			retval =3D do_door_lo=
ck(STp, (mtc.mt_op =3D=3D MTLOCK));
^1da177e4c3f41 Linus Torvalds    2005-04-16  3714  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3715  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3716 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3717  		if (STp->can_partition=
s && STp->ready =3D=3D ST_READY &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3718  		    (i =3D switch_part=
ition(STp)) < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3719  			retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3720  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3721  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3722 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3723  		if (mtc.mt_op =3D=3D M=
TCOMPRESSION)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3724  			retval =3D st_compres=
sion(STp, (mtc.mt_count & 1));
^1da177e4c3f41 Linus Torvalds    2005-04-16  3725  		else
^1da177e4c3f41 Linus Torvalds    2005-04-16  3726  			retval =3D st_int_ioc=
tl(STp, mtc.mt_op, mtc.mt_count);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3727  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3728  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3729  	if (!STm->defined) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3730  		retval =3D (-ENXIO);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3731  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3732  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3733 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3734  	if ((i =3D flush_buffer=
(STp, 0)) < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3735  		retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3736  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3737  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3738  	if (STp->can_partitions=
 &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  3739  	    (i =3D switch_parti=
tion(STp)) < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3740  		retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3741  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3742  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3743 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3744  	if (cmd_type =3D=3D _IO=
C_TYPE(MTIOCGET) && cmd_nr =3D=3D _IOC_NR(MTIOCGET)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3745  		struct mtget mt_status=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3746 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3747  		if (_IOC_SIZE(cmd_in) =
!=3D sizeof(struct mtget)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3748  			 retval =3D (-EINVAL)=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3749  			 goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3750  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3751 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3752  		mt_status.mt_type =3D =
STp->tape_type;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3753  		mt_status.mt_dsreg =3D
^1da177e4c3f41 Linus Torvalds    2005-04-16  3754  		    ((STp->block_size =
<< MT_ST_BLKSIZE_SHIFT) & MT_ST_BLKSIZE_MASK) |
^1da177e4c3f41 Linus Torvalds    2005-04-16  3755  		    ((STp->density << =
MT_ST_DENSITY_SHIFT) & MT_ST_DENSITY_MASK);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3756  		mt_status.mt_blkno =3D=
 STps->drv_block;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3757  		mt_status.mt_fileno =
=3D STps->drv_file;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3758  		if (STp->block_size !=
=3D 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3759  			if (STps->rw =3D=3D S=
T_WRITING)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3760  				mt_status.mt_blkno +=
=3D
^1da177e4c3f41 Linus Torvalds    2005-04-16  3761  				    (STp->buffer)->b=
uffer_bytes / STp->block_size;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3762  			else if (STps->rw =3D=
=3D ST_READING)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3763  				mt_status.mt_blkno -=
=3D
^1da177e4c3f41 Linus Torvalds    2005-04-16  3764                          =
                ((STp->buffer)->buffer_bytes +
^1da177e4c3f41 Linus Torvalds    2005-04-16  3765                          =
                 STp->block_size - 1) / STp->block_size;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3766  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3767 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3768  		mt_status.mt_gstat =3D=
 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3769  		if (STp->drv_write_pro=
t)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3770  			mt_status.mt_gstat |=
=3D GMT_WR_PROT(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3771  		if (mt_status.mt_blkno=
 =3D=3D 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3772  			if (mt_status.mt_file=
no =3D=3D 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3773  				mt_status.mt_gstat |=
=3D GMT_BOT(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3774  			else
^1da177e4c3f41 Linus Torvalds    2005-04-16  3775  				mt_status.mt_gstat |=
=3D GMT_EOF(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3776  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3777  		mt_status.mt_erreg =3D=
 (STp->recover_reg << MT_ST_SOFTERR_SHIFT);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3778  		mt_status.mt_resid =3D=
 STp->partition;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3779  		if (STps->eof =3D=3D S=
T_EOM_OK || STps->eof =3D=3D ST_EOM_ERROR)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3780  			mt_status.mt_gstat |=
=3D GMT_EOT(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3781  		else if (STps->eof >=
=3D ST_EOM_OK)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3782  			mt_status.mt_gstat |=
=3D GMT_EOD(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3783  		if (STp->density =3D=
=3D 1)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3784  			mt_status.mt_gstat |=
=3D GMT_D_800(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3785  		else if (STp->density =
=3D=3D 2)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3786  			mt_status.mt_gstat |=
=3D GMT_D_1600(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3787  		else if (STp->density =
=3D=3D 3)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3788  			mt_status.mt_gstat |=
=3D GMT_D_6250(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3789  		if (STp->ready =3D=3D =
ST_READY)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3790  			mt_status.mt_gstat |=
=3D GMT_ONLINE(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3791  		if (STp->ready =3D=3D =
ST_NO_TAPE)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3792  			mt_status.mt_gstat |=
=3D GMT_DR_OPEN(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3793  		if (STps->at_sm)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3794  			mt_status.mt_gstat |=
=3D GMT_SM(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3795  		if (STm->do_async_writ=
es ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3796                      (STm=
->do_buffer_writes && STp->block_size !=3D 0) ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  3797  		    STp->drv_buffer !=
=3D 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3798  			mt_status.mt_gstat |=
=3D GMT_IM_REP_EN(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3799  		if (STp->cleaning_req)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3800  			mt_status.mt_gstat |=
=3D GMT_CLN(0xffffffff);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3801 =20
1207045da5a7c9 Arnd Bergmann     2018-09-07  3802  		retval =3D put_user_mt=
get(p, &mt_status);
1207045da5a7c9 Arnd Bergmann     2018-09-07  3803  		if (retval)
^1da177e4c3f41 Linus Torvalds    2005-04-16  3804  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3805 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3806  		STp->recover_reg =3D 0=
;		/* Clear after read */
^1da177e4c3f41 Linus Torvalds    2005-04-16  3807  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3808  	}			/* End of MTIOCGET =
*/
^1da177e4c3f41 Linus Torvalds    2005-04-16  3809  	if (cmd_type =3D=3D _IO=
C_TYPE(MTIOCPOS) && cmd_nr =3D=3D _IOC_NR(MTIOCPOS)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3810  		struct mtpos mt_pos;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3811  		if (_IOC_SIZE(cmd_in) =
!=3D sizeof(struct mtpos)) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3812  			 retval =3D (-EINVAL)=
;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3813  			 goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3814  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3815  		if ((i =3D get_locatio=
n(STp, &blk, &bt, 0)) < 0) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  3816  			retval =3D i;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3817  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3818  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  3819  		mt_pos.mt_blkno =3D bl=
k;
1207045da5a7c9 Arnd Bergmann     2018-09-07  3820  		retval =3D put_user_mt=
pos(p, &mt_pos);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3821  		goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3822  	}
28f85009e0cf6a Matthias Kaehlcke 2007-07-29  3823  	mutex_unlock(&STp->lock=
);
d320a9551e394c Arnd Bergmann     2019-03-15  3824 =20
dba7688fc9037c Christoph Hellwig 2021-07-24  3825  	switch (cmd_in) {
dba7688fc9037c Christoph Hellwig 2021-07-24  3826  	case SG_IO:
dba7688fc9037c Christoph Hellwig 2021-07-24  3827  	case SCSI_IOCTL_SEND_CO=
MMAND:
dba7688fc9037c Christoph Hellwig 2021-07-24  3828  	case CDROM_SEND_PACKET:
dba7688fc9037c Christoph Hellwig 2021-07-24  3829  		if (!capable(CAP_SYS_R=
AWIO))
dba7688fc9037c Christoph Hellwig 2021-07-24  3830  			return -EPERM;
^1da177e4c3f41 Linus Torvalds    2005-04-16 @3831  	default:
^1da177e4c3f41 Linus Torvalds    2005-04-16  3832  		break;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3833  	}
dba7688fc9037c Christoph Hellwig 2021-07-24  3834 =20
2e27f576abc6f0 Christoph Hellwig 2021-07-24  3835  	retval =3D scsi_ioctl(S=
Tp->device, STp->disk, file->f_mode, cmd_in, p);
dba7688fc9037c Christoph Hellwig 2021-07-24  3836  	if (!retval && cmd_in =
=3D=3D SCSI_IOCTL_STOP_UNIT) {
dba7688fc9037c Christoph Hellwig 2021-07-24  3837  		/* unload */
dba7688fc9037c Christoph Hellwig 2021-07-24  3838  		STp->rew_at_close =3D =
0;
dba7688fc9037c Christoph Hellwig 2021-07-24  3839  		STp->ready =3D ST_NO_T=
APE;
dba7688fc9037c Christoph Hellwig 2021-07-24  3840  	}
dba7688fc9037c Christoph Hellwig 2021-07-24  3841  	return retval;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3842 =20
^1da177e4c3f41 Linus Torvalds    2005-04-16  3843   out:
28f85009e0cf6a Matthias Kaehlcke 2007-07-29  3844  	mutex_unlock(&STp->lock=
);
^1da177e4c3f41 Linus Torvalds    2005-04-16  3845  	return retval;
^1da177e4c3f41 Linus Torvalds    2005-04-16  3846  }
^1da177e4c3f41 Linus Torvalds    2005-04-16  3847 =20

:::::: The code at line 3831 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202108181308.GTC6oVAB-lkp%40intel.com.

--bg08WKrSYDhXBjb5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
/LY2Qklt2szng+Tvt/fHl5u/wOyv+PTmP15Yu3v+ffP48tfjF7j69MfI+sDWnp9Zn/tPtYMQ
GNvNYSovaLlruC2Q0c4mDtIqkw3bauhsBOBFH1EWiuXNPtCKujhhW3OA6UdgU5h45M4m4Y82
k8fAPExn5nKbI5lV4O4WfZEgmkLdF9rUNF4LfJncLrMZ7htbLzHoDzE4PIz3z4xNKi7IaOVX
k6HP4Gz8ZO4qHN6/ijF1jFxqDmrE4/CsyjoeuU/OBbXhDx3qtNaJe8rg0Ng6VH7F/asIQ4kr
33Fbk2D62Ww9YGnJ+tplocCQfoViuACQ8o5k17es+FvUGEarPhmhfMVX0tKPYkyd3csWEfbc
ttii4Ygtfip7ZHib5hwe/PwEJh4lLzZgXIxpPUuUbav6QGnpyi3Fpm+BYTQ2CBvTQn1VtKBT
lvCm5JYvC9DIJRbfw71GGnsEuu6eSeOGwyzl32Cm/eH99Yc5R/cty8Pr5/82FTvwz+eGSXIh
qh0LNXzcBl7c5Bbc79PNeH0WLqJZHfq9vzL5H29Yn2WjwJcnsB3PhgYuztt/2QS53J6UhZOG
lnmfeK2PawEm1+IVSyOe6jPaNczSm2Ue9UvDJ8AIXLj/M2k3lYWDJozxQZ3cHhuibbdDTOw3
PAkBSKtf6OFreuskVza0npOuU2p8v2rCa9J6PnWwA5yJQln1y7v1c3hfb6XlwBTc3SaOYrp2
Ag6kqA4W/y+TNNPF2gu1XqubuJvsvu+ycr2E2EK/6+5PZYHvqk+06r4ZEN8vellWORi/v7XY
G57kYuvg3rKMnsXKmubQXI2KFHkGTowsVuBHVl40p6K7lmRR3e5hX/5amkVdlz3dHDuLj6mp
S/A31VdjK1mdX+N8hKOT6+UKhG1Z6Ms0nVWcy+vS02PTlbS4XuV9uTNF40Nnx4bpt4e3m+9P
3z6//3jGHhDYKEih3x2Z6rXpyiOmWkBXECdGagDTGWkP1pIuVckq7c/QnS1FHrbTvCJ9clG9
D0yxlN2d/phVDEHWLsgj48ZD7TDBty04Ng5+mnT81qmz7GgIN+svD9+/s+UAlwVZZ/Av42AY
uBVhW4LiDEU5hubBdd6iLmN4BmZTEnJofs7ajRERHEHai2Lbw3+OiylPcnnIarwCd0hd7qtz
rvH4q82TUaybJKLxYMhMszoLc4+1wcMG2wcTJH6qpsVIy8OgB91Tor4J5sGnIVFvfMjgmeSp
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
h421+9fnF8sVctFlnfYghRS3/w/tGxqXKSQCAA==

--bg08WKrSYDhXBjb5--
