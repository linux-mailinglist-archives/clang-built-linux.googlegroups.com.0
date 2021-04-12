Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTF72CBQMGQEQIPQUZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF9D35C3D4
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 12:24:14 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id e2-20020a17090a7c42b029014d9d6b18afsf6378904pjl.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 03:24:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618223053; cv=pass;
        d=google.com; s=arc-20160816;
        b=o9JWyw99ssdDS7NGVJf1og12hhVDgE5RTnpmvmbMXAQVxP65HNAWY/L1TDhM5pGPXx
         PwQK+Y8RAIs1GYBfkumMROW5jc9Cl3FrH+fiAZIbHaFWgaLSlkhJLj01xmrMsnfGCVF2
         hJdjj/v/9N9VcSWRBUlhJ5PrQG0Jg8ToXU7FBUHGenkhS9HlLZGFmq3iqQkNTIGlz+te
         SFy84DQaYXxXKye4NtENNDD07fNC4JKSJLoG7gTJwYshilOdYG10gNqzZuKaBhLlYqhY
         BdACkJ8Umg/XFPUtZyz7MyjoHq2K6H4YpHnBI4IWkKK6DPXvrOLjXGmA/Yq/Dn8oDG5N
         VPTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=jyTL2n4Q7k03YMCXpxBzY0x5YW7UaADpPT15rfMEGmU=;
        b=XUm36VFYXlvapqhKrtUF4Glehq8m+0pUPzIT5uMlxwmusuqqhojxCYkikriIVJEmnm
         SgBCm13m4ttDFQh41ko6F2qRyoCyhTzNnYEAWiiDFr+Dk5JjQABkLmOwkLn9J23Y1Nmt
         R0XE30CGxrKzAwRat4bcAtkODM8QnahwrNSYf0MbybDaWPtVUTmAiLIjcKikPTuXoM5C
         vs4W/4AUfSrfl03SJy5NQDxNoqJUdFaJQUXvqXgYdeMUwu/TAcfJlK9TCBwk1Tur4k4E
         FWz/xvjKyK+IVc99JGHsunmCwenmdExksMIpe4OjjHFJd4YnWVc6cH/PKm34aZmR6e85
         P69w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jyTL2n4Q7k03YMCXpxBzY0x5YW7UaADpPT15rfMEGmU=;
        b=GGM4b3tmP0gi9RIXDCwMr38+Ty8wFdbcE4hl7IDQTF4uIPmEoavfoLDKdxz/geRO1e
         S4QQKzNkw6DIY0Mom9LAkgCboOXn83LCsx4PPVROCwOMm33LvuHmbDnFe6hac5uohhPF
         OC0TSPkF4yg+8Nong0VaCdsnol0OifJwSnJezL/1FJdICY3SQmxgl0vp/8RX+POKLqXG
         wj6Abri0WYgy6owOScft4+6SaLsg0LllVIIV612A/qSJWfFxnYAZlWZUewSEGzvffXtq
         ycaBRgE21CJhgpp/TAFAP0VbEImpjZWQDmADzUSHzeG251jFoIozO8zoTU34HbvHRVWc
         SncA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jyTL2n4Q7k03YMCXpxBzY0x5YW7UaADpPT15rfMEGmU=;
        b=WWg+wEC8TLMYvwRjdW25rfmt4h5BPSYMqiTojC7BQAAYimOYaolAslk8IpqT8HfQhA
         2dDp/VXatNGt6k/gCI2u9v/Q1KaSdBTAZmm+zjNvW6ofgkQEXr2bbnmStxV/rnKdU+cA
         bek9PtU63vZ+/OdQxfeqm9DCbLr7pGA0i6KQweszuN5vDG2adAZidRnJeH+p/hm/SxbP
         m4gjvthJ04v5u5tdY4q7AJC117J98370GqSQhUy3y/H3m0mIHhfxJK9TWhTsvNTalQ04
         BFQTxAu6Vpt96SFwrCteSbENHUboyI/g8S/ZT8QtRq+yNJ+fL8evHF4ATCkG8BtP/FxH
         n40w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZnM1ncrXKv7Dj+PVKtPQh3jDNThu1lLiZKNN8CAX1WACysEMf
	lGefaQ7yEqWCl3K7t4f7cUg=
X-Google-Smtp-Source: ABdhPJyj4O48FjXzCS0WUn8Czx9d++1RFrzhVQkwFltcDqLCVlZ1ebseb6kBBEzVNyTA8m1OmLNH4Q==
X-Received: by 2002:a17:90b:1e0a:: with SMTP id pg10mr28648575pjb.129.1618223052757;
        Mon, 12 Apr 2021 03:24:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2f88:: with SMTP id t8ls7395929pjd.1.gmail; Mon, 12
 Apr 2021 03:24:12 -0700 (PDT)
X-Received: by 2002:a17:90a:f2ca:: with SMTP id gt10mr528731pjb.231.1618223052029;
        Mon, 12 Apr 2021 03:24:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618223052; cv=none;
        d=google.com; s=arc-20160816;
        b=h+Pa/VmH0wVd6nPtExQN2b0zThU0/ag00/s3Z8uH4GxWRp14T9zajGT4iwSWGsNFZu
         3294NMDU9dTgvDRPeEELlXBXpaa63xnlipiTUbjmJlWccoGHKir1DgP3kGABSTP5xPjm
         +uwI+g4/cmZ8zOPZnSXETInsKR+HLlzO/8zoWSv9xKVRVMbcdPGmJSRFqTErW8r05zhv
         +mHrpIZpMBFfTDZBImxEK1H1hiM+B82TPXkc9Ti0lwuYG8AVg41XbGm3d/5wPDSyXy/L
         QMKnYA2HynhTUazXsLn4e6tAlSKueDB3/WJhh3ugvnSR2cntg1F9vCGQqi++1G+VLdjU
         Dq7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=52mQZ19Zkp53TAJWNAFe4gzYD5aCyxEEo2RDYHNdYFM=;
        b=oiQxt3qsKeawQA7V1RGpSy/zYWN0iw1/zbfFIF+HwV0gHvb+Ac65kWzN8l3C07i+ts
         IazA6VI1q9V17m5Zp3IQZ+nzaxwzJvKM98aMOtF4PNXi3SbZJJCmCH/z2H1dL5VlcMCa
         aFSxUxKPeioaKd5cMtNRsWYCkxHOtnSO1qrIiBfWzJEdELQhrzaaTByPjEwwFSBW6c1b
         T1yU8Y7sYeYYYVHOnfASCLW4/MHTMqgUgMmM1lNweAoV30SwvnxZ1mvP/U7d5yScS+PQ
         AQXaxAxZk0OvZZrmE3DIbIvd4XA7hk1REQMl02PaZGpinzqULYbAR2Zf4F9toG7Lf6lI
         qsMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id p18si247536pgi.3.2021.04.12.03.24.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 03:24:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: t34F5vCewgfZ/C9U904eeH6P9jE0vV3DYvaGBG5nduZh4+HW9v68r3eYVs+f771xk7jEGMoXqt
 nOZkLrPxTLRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="181677427"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="gz'50?scan'50,208,50";a="181677427"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 03:24:11 -0700
IronPort-SDR: aapsCo8Pt0jj75vR4YP1F9NYs2PpwLEVxi9sP4ghEi9DoqsQpvwtMR40aJGzAifUnpZzGXnf5G
 SiPIa69GSrsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="gz'50?scan'50,208,50";a="423737654"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 12 Apr 2021 03:24:09 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lVtjk-0000Oo-QH; Mon, 12 Apr 2021 10:24:08 +0000
Date: Mon, 12 Apr 2021 18:23:53 +0800
From: kernel test robot <lkp@intel.com>
To: Bart Van Assche <bvanassche@acm.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [bvanassche:scsi-for-next 31/36] drivers/scsi/53c700.c:984:6: error:
 member reference base type '__u8' (aka 'unsigned char') is not a structure
 or union
Message-ID: <202104121828.XkiiUUXO-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://github.com/bvanassche/linux scsi-for-next
head:   82fed99944bad457ee009b37605e043e617280fd
commit: ead328d8360e918f3c8b83454fb19fec6f2f122b [31/36] Use struct scsi_st=
atus more widely
config: x86_64-randconfig-a002-20210412 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5=
e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/bvanassche/linux/commit/ead328d8360e918f3c8b83=
454fb19fec6f2f122b
        git remote add bvanassche https://github.com/bvanassche/linux
        git fetch --no-tags bvanassche scsi-for-next
        git checkout ead328d8360e918f3c8b83454fb19fec6f2f122b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/scsi/53c700.c:984:6: error: member reference base type '__u8' (a=
ka 'unsigned char') is not a structure or union
                   if(status_byte(hostdata->status[0]) =3D=3D CHECK_CONDITI=
ON ||
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/scsi/scsi.h:136:38: note: expanded from macro 'status_byte'
   #define status_byte(result) ((result).b.status >> 1)
                                ~~~~~~~~^~
   drivers/scsi/53c700.c:985:6: error: member reference base type '__u8' (a=
ka 'unsigned char') is not a structure or union
                      status_byte(hostdata->status[0]) =3D=3D COMMAND_TERMI=
NATED) {
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/scsi/scsi.h:136:38: note: expanded from macro 'status_byte'
   #define status_byte(result) ((result).b.status >> 1)
                                ~~~~~~~~^~
   2 errors generated.


vim +984 drivers/scsi/53c700.c

^1da177e4c3f415 Linus Torvalds    2005-04-16   961 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16   962  STATIC __u32
^1da177e4c3f415 Linus Torvalds    2005-04-16   963  process_script_interrup=
t(__u32 dsps, __u32 dsp, struct scsi_cmnd *SCp,
^1da177e4c3f415 Linus Torvalds    2005-04-16   964  			 struct Scsi_Host *h=
ost,
^1da177e4c3f415 Linus Torvalds    2005-04-16   965  			 struct NCR_700_Host=
_Parameters *hostdata)
^1da177e4c3f415 Linus Torvalds    2005-04-16   966  {
^1da177e4c3f415 Linus Torvalds    2005-04-16   967  	__u32 resume_offset =
=3D 0;
^1da177e4c3f415 Linus Torvalds    2005-04-16   968  	__u8 pun =3D 0xff, lun=
=3D0xff;
^1da177e4c3f415 Linus Torvalds    2005-04-16   969 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16   970  	if(SCp !=3D NULL) {
^1da177e4c3f415 Linus Torvalds    2005-04-16   971  		pun =3D SCp->device->=
id;
^1da177e4c3f415 Linus Torvalds    2005-04-16   972  		lun =3D SCp->device->=
lun;
^1da177e4c3f415 Linus Torvalds    2005-04-16   973  	}
^1da177e4c3f415 Linus Torvalds    2005-04-16   974 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16   975  	if(dsps =3D=3D A_GOOD_=
STATUS_AFTER_STATUS) {
^1da177e4c3f415 Linus Torvalds    2005-04-16   976  		DEBUG(("  COMMAND COM=
PLETE, status=3D%02x\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16   977  		       hostdata->stat=
us[0]));
^1da177e4c3f415 Linus Torvalds    2005-04-16   978  		/* OK, if TCQ still u=
nder negotiation, we now know it works */
^1da177e4c3f415 Linus Torvalds    2005-04-16   979  		if (NCR_700_get_tag_n=
eg_state(SCp->device) =3D=3D NCR_700_DURING_TAG_NEGOTIATION)
^1da177e4c3f415 Linus Torvalds    2005-04-16   980  			NCR_700_set_tag_neg_=
state(SCp->device,
^1da177e4c3f415 Linus Torvalds    2005-04-16   981  						  NCR_700_FINISHE=
D_TAG_NEGOTIATION);
^1da177e4c3f415 Linus Torvalds    2005-04-16   982  		=09
ac5669bf79d976f ganjisheng        2021-03-16   983  		/* check for continge=
nt allegiance conditions */
^1da177e4c3f415 Linus Torvalds    2005-04-16  @984  		if(status_byte(hostda=
ta->status[0]) =3D=3D CHECK_CONDITION ||
^1da177e4c3f415 Linus Torvalds    2005-04-16   985  		   status_byte(hostda=
ta->status[0]) =3D=3D COMMAND_TERMINATED) {
^1da177e4c3f415 Linus Torvalds    2005-04-16   986  			struct NCR_700_comma=
nd_slot *slot =3D
^1da177e4c3f415 Linus Torvalds    2005-04-16   987  				(struct NCR_700_com=
mand_slot *)SCp->host_scribble;
0f13fc09db68de9 James Bottomley   2006-06-29   988  			if(slot->flags =3D=
=3D NCR_700_FLAG_AUTOSENSE) {
^1da177e4c3f415 Linus Torvalds    2005-04-16   989  				/* OOPS: bad device=
, returning another
^1da177e4c3f415 Linus Torvalds    2005-04-16   990  				 * contingent alleg=
iance condition */
017560fca496f72 Jeff Garzik       2005-10-24   991  				scmd_printk(KERN_ER=
R, SCp,
017560fca496f72 Jeff Garzik       2005-10-24   992  					"broken device is =
looping in contingent allegiance: ignoring\n");
^1da177e4c3f415 Linus Torvalds    2005-04-16   993  				NCR_700_scsi_done(h=
ostdata, SCp, hostdata->status[0]);
^1da177e4c3f415 Linus Torvalds    2005-04-16   994  			} else {
0f13fc09db68de9 James Bottomley   2006-06-29   995  				char *cmnd =3D
0f13fc09db68de9 James Bottomley   2006-06-29   996  					NCR_700_get_sense_=
cmnd(SCp->device);
^1da177e4c3f415 Linus Torvalds    2005-04-16   997  #ifdef NCR_DEBUG
^1da177e4c3f415 Linus Torvalds    2005-04-16   998  				scsi_print_command(=
SCp);
^1da177e4c3f415 Linus Torvalds    2005-04-16   999  				printk("  cmd %p ha=
s status %d, requesting sense\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1000  				       SCp, hostdat=
a->status[0]);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1001  #endif
^1da177e4c3f415 Linus Torvalds    2005-04-16  1002  				/* we can destroy t=
he command here
^1da177e4c3f415 Linus Torvalds    2005-04-16  1003  				 * because the cont=
ingent allegiance
^1da177e4c3f415 Linus Torvalds    2005-04-16  1004  				 * condition will c=
ause a retry which
^1da177e4c3f415 Linus Torvalds    2005-04-16  1005  				 * will re-copy the=
 command from the
^1da177e4c3f415 Linus Torvalds    2005-04-16  1006  				 * saved data_cmnd.=
  We also unmap any
^1da177e4c3f415 Linus Torvalds    2005-04-16  1007  				 * data associated =
with the command
^1da177e4c3f415 Linus Torvalds    2005-04-16  1008  				 * here */
^1da177e4c3f415 Linus Torvalds    2005-04-16  1009  				NCR_700_unmap(hostd=
ata, SCp, slot);
67d59dfdeb21df2 James Bottomley   2006-06-13  1010  				dma_unmap_single(ho=
stdata->dev, slot->pCmd,
64a87b244b92976 Boaz Harrosh      2008-04-30  1011  						 MAX_COMMAND_SIZE=
,
67d59dfdeb21df2 James Bottomley   2006-06-13  1012  						 DMA_TO_DEVICE);
67d59dfdeb21df2 James Bottomley   2006-06-13  1013 =20
0f13fc09db68de9 James Bottomley   2006-06-29  1014  				cmnd[0] =3D REQUEST=
_SENSE;
9cb78c16f5dadef Hannes Reinecke   2014-06-25  1015  				cmnd[1] =3D (lun & =
0x7) << 5;
0f13fc09db68de9 James Bottomley   2006-06-29  1016  				cmnd[2] =3D 0;
0f13fc09db68de9 James Bottomley   2006-06-29  1017  				cmnd[3] =3D 0;
b80ca4f7ee36c26 FUJITA Tomonori   2008-01-13  1018  				cmnd[4] =3D SCSI_SE=
NSE_BUFFERSIZE;
0f13fc09db68de9 James Bottomley   2006-06-29  1019  				cmnd[5] =3D 0;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1020  				/* Here's a quiet h=
ack: the
^1da177e4c3f415 Linus Torvalds    2005-04-16  1021  				 * REQUEST_SENSE co=
mmand is six bytes,
^1da177e4c3f415 Linus Torvalds    2005-04-16  1022  				 * so store a flag =
indicating that
^1da177e4c3f415 Linus Torvalds    2005-04-16  1023  				 * this was an inte=
rnal sense request
^1da177e4c3f415 Linus Torvalds    2005-04-16  1024  				 * and the original=
 status at the end
^1da177e4c3f415 Linus Torvalds    2005-04-16  1025  				 * of the command *=
/
0f13fc09db68de9 James Bottomley   2006-06-29  1026  				cmnd[6] =3D NCR_700=
_INTERNAL_SENSE_MAGIC;
0f13fc09db68de9 James Bottomley   2006-06-29  1027  				cmnd[7] =3D hostdat=
a->status[0];
c603d04ef6826a2 James Bottomley   2006-12-01  1028  				cmnd[8] =3D SCp->cm=
d_len;
c603d04ef6826a2 James Bottomley   2006-12-01  1029  				SCp->cmd_len =3D 6;=
 /* command length for
c603d04ef6826a2 James Bottomley   2006-12-01  1030  						   * REQUEST_SENS=
E */
0f13fc09db68de9 James Bottomley   2006-06-29  1031  				slot->pCmd =3D dma_=
map_single(hostdata->dev, cmnd, MAX_COMMAND_SIZE, DMA_TO_DEVICE);
b80ca4f7ee36c26 FUJITA Tomonori   2008-01-13  1032  				slot->dma_handle =
=3D dma_map_single(hostdata->dev, SCp->sense_buffer, SCSI_SENSE_BUFFERSIZE,=
 DMA_FROM_DEVICE);
b80ca4f7ee36c26 FUJITA Tomonori   2008-01-13  1033  				slot->SG[0].ins =3D=
 bS_to_host(SCRIPT_MOVE_DATA_IN | SCSI_SENSE_BUFFERSIZE);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1034  				slot->SG[0].pAddr =
=3D bS_to_host(slot->dma_handle);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1035  				slot->SG[1].ins =3D=
 bS_to_host(SCRIPT_RETURN);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1036  				slot->SG[1].pAddr =
=3D 0;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1037  				slot->resume_offset=
 =3D hostdata->pScript;
91af2dd255ac928 Christoph Hellwig 2020-08-18  1038  				dma_sync_to_dev(hos=
tdata, slot->SG, sizeof(slot->SG[0])*2);
91af2dd255ac928 Christoph Hellwig 2020-08-18  1039  				dma_sync_from_dev(h=
ostdata, SCp->sense_buffer, SCSI_SENSE_BUFFERSIZE);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1040 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1041  				/* queue the comman=
d for reissue */
^1da177e4c3f415 Linus Torvalds    2005-04-16  1042  				slot->state =3D NCR=
_700_SLOT_QUEUED;
67d59dfdeb21df2 James Bottomley   2006-06-13  1043  				slot->flags =3D NCR=
_700_FLAG_AUTOSENSE;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1044  				hostdata->state =3D=
 NCR_700_HOST_FREE;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1045  				hostdata->cmd =3D N=
ULL;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1046  			}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1047  		} else {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1048  			// Currently rely on=
 the mid layer evaluation
^1da177e4c3f415 Linus Torvalds    2005-04-16  1049  			// of the tag queuin=
g capability
^1da177e4c3f415 Linus Torvalds    2005-04-16  1050  			//
^1da177e4c3f415 Linus Torvalds    2005-04-16  1051  			//if(status_byte(hos=
tdata->status[0]) =3D=3D GOOD &&
^1da177e4c3f415 Linus Torvalds    2005-04-16  1052  			//   SCp->cmnd[0] =
=3D=3D INQUIRY && SCp->use_sg =3D=3D 0) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1053  			//	/* Piggy back the=
 tag queueing support
^1da177e4c3f415 Linus Torvalds    2005-04-16  1054  			//	 * on this comman=
d */
^1da177e4c3f415 Linus Torvalds    2005-04-16  1055  			//	dma_sync_single_f=
or_cpu(hostdata->dev,
^1da177e4c3f415 Linus Torvalds    2005-04-16  1056  			//			    slot->dma_h=
andle,
^1da177e4c3f415 Linus Torvalds    2005-04-16  1057  			//			    SCp->reques=
t_bufflen,
^1da177e4c3f415 Linus Torvalds    2005-04-16  1058  			//			    DMA_FROM_DE=
VICE);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1059  			//	if(((char *)SCp->=
request_buffer)[7] & 0x02) {
017560fca496f72 Jeff Garzik       2005-10-24  1060  			//		scmd_printk(KERN=
_INFO, SCp,
017560fca496f72 Jeff Garzik       2005-10-24  1061  			//		     "Enabling T=
ag Command Queuing\n");
017560fca496f72 Jeff Garzik       2005-10-24  1062  			//		hostdata->tag_ne=
gotiated |=3D (1<<scmd_id(SCp));
^1da177e4c3f415 Linus Torvalds    2005-04-16  1063  			//		NCR_700_set_flag=
(SCp->device, NCR_700_DEV_BEGIN_TAG_QUEUEING);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1064  			//	} else {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1065  			//		NCR_700_clear_fl=
ag(SCp->device, NCR_700_DEV_BEGIN_TAG_QUEUEING);
017560fca496f72 Jeff Garzik       2005-10-24  1066  			//		hostdata->tag_ne=
gotiated &=3D ~(1<<scmd_id(SCp));
^1da177e4c3f415 Linus Torvalds    2005-04-16  1067  			//	}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1068  			//}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1069  			NCR_700_scsi_done(ho=
stdata, SCp, hostdata->status[0]);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1070  		}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1071  	} else if((dsps & 0xff=
fff0f0) =3D=3D A_UNEXPECTED_PHASE) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1072  		__u8 i =3D (dsps & 0x=
f00) >> 8;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1073 =20
017560fca496f72 Jeff Garzik       2005-10-24  1074  		scmd_printk(KERN_ERR,=
 SCp, "UNEXPECTED PHASE %s (%s)\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1075  		       NCR_700_phase[=
i],
^1da177e4c3f415 Linus Torvalds    2005-04-16  1076  		       sbcl_to_string=
(NCR_700_readb(host, SBCL_REG)));
017560fca496f72 Jeff Garzik       2005-10-24  1077  		scmd_printk(KERN_ERR,=
 SCp, "         len =3D %d, cmd =3D",
017560fca496f72 Jeff Garzik       2005-10-24  1078  			SCp->cmd_len);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1079  		scsi_print_command(SC=
p);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1080 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1081  		NCR_700_internal_bus_=
reset(host);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1082  	} else if((dsps & 0xff=
fff000) =3D=3D A_FATAL) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1083  		int i =3D (dsps & 0xf=
ff);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1084 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1085  		printk(KERN_ERR "scsi=
%d: (%d:%d) FATAL ERROR: %s\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1086  		       host->host_no,=
 pun, lun, NCR_700_fatal_messages[i]);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1087  		if(dsps =3D=3D A_FATA=
L_ILLEGAL_MSG_LENGTH) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1088  			printk(KERN_ERR "   =
  msg begins %02x %02x\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1089  			       hostdata->msg=
in[0], hostdata->msgin[1]);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1090  		}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1091  		NCR_700_internal_bus_=
reset(host);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1092  	} else if((dsps & 0xff=
fff0f0) =3D=3D A_DISCONNECT) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1093  #ifdef NCR_700_DEBUG
^1da177e4c3f415 Linus Torvalds    2005-04-16  1094  		__u8 i =3D (dsps & 0x=
f00) >> 8;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1095 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1096  		printk("scsi%d: (%d:%=
d), DISCONNECTED (%d) %s\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1097  		       host->host_no,=
 pun, lun,
^1da177e4c3f415 Linus Torvalds    2005-04-16  1098  		       i, NCR_700_pha=
se[i]);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1099  #endif
^1da177e4c3f415 Linus Torvalds    2005-04-16  1100  		save_for_reselection(=
hostdata, SCp, dsp);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1101 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1102  	} else if(dsps =3D=3D =
A_RESELECTION_IDENTIFIED) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1103  		__u8 lun;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1104  		struct NCR_700_comman=
d_slot *slot;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1105  		__u8 reselection_id =
=3D hostdata->reselection_id;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1106  		struct scsi_device *S=
Dp;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1107 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1108  		lun =3D hostdata->msg=
in[0] & 0x1f;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1109 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1110  		hostdata->reselection=
_id =3D 0xff;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1111  		DEBUG(("scsi%d: (%d:%=
d) RESELECTED!\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1112  		       host->host_no,=
 reselection_id, lun));
^1da177e4c3f415 Linus Torvalds    2005-04-16  1113  		/* clear the reselect=
ion indicator */
^1da177e4c3f415 Linus Torvalds    2005-04-16  1114  		SDp =3D __scsi_device=
_lookup(host, 0, reselection_id, lun);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1115  		if(unlikely(SDp =3D=
=3D NULL)) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1116  			printk(KERN_ERR "scs=
i%d: (%d:%d) HAS NO device\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1117  			       host->host_no=
, reselection_id, lun);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1118  			BUG();
^1da177e4c3f415 Linus Torvalds    2005-04-16  1119  		}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1120  		if(hostdata->msgin[1]=
 =3D=3D A_SIMPLE_TAG_MSG) {
64d513ac31bd02a Christoph Hellwig 2015-10-08  1121  			struct scsi_cmnd *SC=
p;
64d513ac31bd02a Christoph Hellwig 2015-10-08  1122 =20
64d513ac31bd02a Christoph Hellwig 2015-10-08  1123  			SCp =3D scsi_host_fi=
nd_tag(SDp->host, hostdata->msgin[2]);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1124  			if(unlikely(SCp =3D=
=3D NULL)) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1125  				printk(KERN_ERR "sc=
si%d: (%d:%d) no saved request for tag %d\n",=20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1126  				       host->host_n=
o, reselection_id, lun, hostdata->msgin[2]);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1127  				BUG();
^1da177e4c3f415 Linus Torvalds    2005-04-16  1128  			}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1129 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1130  			slot =3D (struct NCR=
_700_command_slot *)SCp->host_scribble;
017560fca496f72 Jeff Garzik       2005-10-24  1131  			DDEBUG(KERN_DEBUG, S=
Dp,
017560fca496f72 Jeff Garzik       2005-10-24  1132  				"reselection is tag=
 %d, slot %p(%d)\n",
017560fca496f72 Jeff Garzik       2005-10-24  1133  				hostdata->msgin[2],=
 slot, slot->tag);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1134  		} else {
68350a886e7df02 Christoph Hellwig 2016-07-11  1135  			struct NCR_700_Devic=
e_Parameters *p =3D SDp->hostdata;
68350a886e7df02 Christoph Hellwig 2016-07-11  1136  			struct scsi_cmnd *SC=
p =3D p->current_cmnd;
64d513ac31bd02a Christoph Hellwig 2015-10-08  1137 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1138  			if(unlikely(SCp =3D=
=3D NULL)) {
017560fca496f72 Jeff Garzik       2005-10-24  1139  				sdev_printk(KERN_ER=
R, SDp,
017560fca496f72 Jeff Garzik       2005-10-24  1140  					"no saved request =
for untagged cmd\n");
^1da177e4c3f415 Linus Torvalds    2005-04-16  1141  				BUG();
^1da177e4c3f415 Linus Torvalds    2005-04-16  1142  			}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1143  			slot =3D (struct NCR=
_700_command_slot *)SCp->host_scribble;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1144  		}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1145 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1146  		if(slot =3D=3D NULL) =
{
^1da177e4c3f415 Linus Torvalds    2005-04-16  1147  			printk(KERN_ERR "scs=
i%d: (%d:%d) RESELECTED but no saved command (MSG =3D %02x %02x %02x)!!\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1148  			       host->host_no=
, reselection_id, lun,
^1da177e4c3f415 Linus Torvalds    2005-04-16  1149  			       hostdata->msg=
in[0], hostdata->msgin[1],
^1da177e4c3f415 Linus Torvalds    2005-04-16  1150  			       hostdata->msg=
in[2]);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1151  		} else {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1152  			if(hostdata->state !=
=3D NCR_700_HOST_BUSY)
^1da177e4c3f415 Linus Torvalds    2005-04-16  1153  				printk(KERN_ERR "sc=
si%d: FATAL, host not busy during valid reselection!\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1154  				       host->host_n=
o);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1155  			resume_offset =3D sl=
ot->resume_offset;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1156  			hostdata->cmd =3D sl=
ot->cmnd;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1157 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1158  			/* re-patch for this=
 command */
91af2dd255ac928 Christoph Hellwig 2020-08-18  1159  			script_patch_32_abs(=
hostdata, hostdata->script,
d3fa72e4556ec1f Ralf Baechle      2006-12-06  1160  			                    =
CommandAddress, slot->pCmd);
91af2dd255ac928 Christoph Hellwig 2020-08-18  1161  			script_patch_16(host=
data, hostdata->script,
^1da177e4c3f415 Linus Torvalds    2005-04-16  1162  					CommandCount, slot=
->cmnd->cmd_len);
91af2dd255ac928 Christoph Hellwig 2020-08-18  1163  			script_patch_32_abs(=
hostdata, hostdata->script,
d3fa72e4556ec1f Ralf Baechle      2006-12-06  1164  			                    =
SGScriptStartAddress,
^1da177e4c3f415 Linus Torvalds    2005-04-16  1165  					    to32bit(&slot-=
>pSG[0].ins));
^1da177e4c3f415 Linus Torvalds    2005-04-16  1166 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1167  			/* Note: setting SXF=
ER only works if we're
^1da177e4c3f415 Linus Torvalds    2005-04-16  1168  			 * still in the MESS=
AGE phase, so it is vital
^1da177e4c3f415 Linus Torvalds    2005-04-16  1169  			 * that ACK is still=
 asserted when we process
^1da177e4c3f415 Linus Torvalds    2005-04-16  1170  			 * the reselection m=
essage.  The resume offset
^1da177e4c3f415 Linus Torvalds    2005-04-16  1171  			 * should therefore =
always clear ACK */
^1da177e4c3f415 Linus Torvalds    2005-04-16  1172  			NCR_700_writeb(NCR_7=
00_get_SXFER(hostdata->cmd->device),
^1da177e4c3f415 Linus Torvalds    2005-04-16  1173  				       host, SXFER_=
REG);
91af2dd255ac928 Christoph Hellwig 2020-08-18  1174  			dma_sync_from_dev(ho=
stdata, hostdata->msgin,
91af2dd255ac928 Christoph Hellwig 2020-08-18  1175  				       MSG_ARRAY_SI=
ZE);
91af2dd255ac928 Christoph Hellwig 2020-08-18  1176  			dma_sync_to_dev(host=
data, hostdata->msgout,
91af2dd255ac928 Christoph Hellwig 2020-08-18  1177  				       MSG_ARRAY_SI=
ZE);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1178  			/* I'm just being pa=
ranoid here, the command should
^1da177e4c3f415 Linus Torvalds    2005-04-16  1179  			 * already have been=
 flushed from the cache */
91af2dd255ac928 Christoph Hellwig 2020-08-18  1180  			dma_sync_to_dev(host=
data, slot->cmnd->cmnd,
91af2dd255ac928 Christoph Hellwig 2020-08-18  1181  				       slot->cmnd->=
cmd_len);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1182 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1183 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1184  		=09
^1da177e4c3f415 Linus Torvalds    2005-04-16  1185  		}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1186  	} else if(dsps =3D=3D =
A_RESELECTED_DURING_SELECTION) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1187 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1188  		/* This section is fu=
ll of debugging code because I've
^1da177e4c3f415 Linus Torvalds    2005-04-16  1189  		 * never managed to r=
each it.  I think what happens is
^1da177e4c3f415 Linus Torvalds    2005-04-16  1190  		 * that, because the =
700 runs with selection
^1da177e4c3f415 Linus Torvalds    2005-04-16  1191  		 * interrupts enabled=
 the whole time that we take a
^1da177e4c3f415 Linus Torvalds    2005-04-16  1192  		 * selection interrup=
t before we manage to get to the
^1da177e4c3f415 Linus Torvalds    2005-04-16  1193  		 * reselected script =
interrupt */
^1da177e4c3f415 Linus Torvalds    2005-04-16  1194 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1195  		__u8 reselection_id =
=3D NCR_700_readb(host, SFBR_REG);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1196  		struct NCR_700_comman=
d_slot *slot;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1197  	=09
^1da177e4c3f415 Linus Torvalds    2005-04-16  1198  		/* Take out our own I=
D */
^1da177e4c3f415 Linus Torvalds    2005-04-16  1199  		reselection_id &=3D ~=
(1<<host->this_id);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1200  	=09
^1da177e4c3f415 Linus Torvalds    2005-04-16  1201  		/* I've never seen th=
is happen, so keep this as a printk rather
^1da177e4c3f415 Linus Torvalds    2005-04-16  1202  		 * than a debug */
^1da177e4c3f415 Linus Torvalds    2005-04-16  1203  		printk(KERN_INFO "scs=
i%d: (%d:%d) RESELECTION DURING SELECTION, dsp=3D%08x[%04x] state=3D%d, cou=
nt=3D%d\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1204  		       host->host_no,=
 reselection_id, lun, dsp, dsp - hostdata->pScript, hostdata->state, hostda=
ta->command_slot_count);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1205 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1206  		{
^1da177e4c3f415 Linus Torvalds    2005-04-16  1207  			/* FIXME: DEBUGGING =
CODE */
^1da177e4c3f415 Linus Torvalds    2005-04-16  1208  			__u32 SG =3D (__u32)=
bS_to_cpu(hostdata->script[A_SGScriptStartAddress_used[0]]);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1209  			int i;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1210 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1211  			for(i=3D0; i< NCR_70=
0_COMMAND_SLOTS_PER_HOST; i++) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1212  				if(SG >=3D to32bit(=
&hostdata->slots[i].pSG[0])
^1da177e4c3f415 Linus Torvalds    2005-04-16  1213  				   && SG <=3D to32b=
it(&hostdata->slots[i].pSG[NCR_700_SG_SEGMENTS]))
^1da177e4c3f415 Linus Torvalds    2005-04-16  1214  					break;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1215  			}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1216  			printk(KERN_INFO "ID=
ENTIFIED SG segment as being %08x in slot %p, cmd %p, slot->resume_offset=
=3D%08x\n", SG, &hostdata->slots[i], hostdata->slots[i].cmnd, hostdata->slo=
ts[i].resume_offset);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1217  			SCp =3D  hostdata->s=
lots[i].cmnd;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1218  		}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1219 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1220  		if(SCp !=3D NULL) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1221  			slot =3D (struct NCR=
_700_command_slot *)SCp->host_scribble;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1222  			/* change slot from =
busy to queued to redo command */
^1da177e4c3f415 Linus Torvalds    2005-04-16  1223  			slot->state =3D NCR_=
700_SLOT_QUEUED;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1224  		}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1225  		hostdata->cmd =3D NUL=
L;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1226  	=09
^1da177e4c3f415 Linus Torvalds    2005-04-16  1227  		if(reselection_id =3D=
=3D 0) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1228  			if(hostdata->reselec=
tion_id =3D=3D 0xff) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1229  				printk(KERN_ERR "sc=
si%d: Invalid reselection during selection!!\n", host->host_no);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1230  				return 0;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1231  			} else {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1232  				printk(KERN_ERR "sc=
si%d: script reselected and we took a selection interrupt\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1233  				       host->host_n=
o);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1234  				reselection_id =3D =
hostdata->reselection_id;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1235  			}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1236  		} else {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1237  		=09
^1da177e4c3f415 Linus Torvalds    2005-04-16  1238  			/* convert to real I=
D */
^1da177e4c3f415 Linus Torvalds    2005-04-16  1239  			reselection_id =3D b=
itmap_to_number(reselection_id);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1240  		}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1241  		hostdata->reselection=
_id =3D reselection_id;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1242  		/* just in case we ha=
ve a stale simple tag message, clear it */
^1da177e4c3f415 Linus Torvalds    2005-04-16  1243  		hostdata->msgin[1] =
=3D 0;
91af2dd255ac928 Christoph Hellwig 2020-08-18  1244  		dma_sync_to_dev(hostd=
ata, hostdata->msgin, MSG_ARRAY_SIZE);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1245  		if(hostdata->tag_nego=
tiated & (1<<reselection_id)) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1246  			resume_offset =3D ho=
stdata->pScript + Ent_GetReselectionWithTag;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1247  		} else {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1248  			resume_offset =3D ho=
stdata->pScript + Ent_GetReselectionData;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1249  		}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1250  	} else if(dsps =3D=3D =
A_COMPLETED_SELECTION_AS_TARGET) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1251  		/* we've just disconn=
ected from the bus, do nothing since
^1da177e4c3f415 Linus Torvalds    2005-04-16  1252  		 * a return here will=
 re-run the queued command slot
^1da177e4c3f415 Linus Torvalds    2005-04-16  1253  		 * that may have been=
 interrupted by the initial selection */
^1da177e4c3f415 Linus Torvalds    2005-04-16  1254  		DEBUG((" SELECTION CO=
MPLETED\n"));
^1da177e4c3f415 Linus Torvalds    2005-04-16  1255  	} else if((dsps & 0xff=
fff0f0) =3D=3D A_MSG_IN) {=20
^1da177e4c3f415 Linus Torvalds    2005-04-16  1256  		resume_offset =3D pro=
cess_message(host, hostdata, SCp,
^1da177e4c3f415 Linus Torvalds    2005-04-16  1257  						dsp, dsps);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1258  	} else if((dsps &  0xf=
ffff000) =3D=3D 0) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1259  		__u8 i =3D (dsps & 0x=
f0) >> 4, j =3D (dsps & 0xf00) >> 8;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1260  		printk(KERN_ERR "scsi=
%d: (%d:%d), unhandled script condition %s %s at %04x\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1261  		       host->host_no,=
 pun, lun, NCR_700_condition[i],
^1da177e4c3f415 Linus Torvalds    2005-04-16  1262  		       NCR_700_phase[=
j], dsp - hostdata->pScript);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1263  		if(SCp !=3D NULL) {
3258a4d5690880a FUJITA Tomonori   2007-05-14  1264  			struct scatterlist *=
sg;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1265 =20
3258a4d5690880a FUJITA Tomonori   2007-05-14  1266  			scsi_print_command(S=
Cp);
3258a4d5690880a FUJITA Tomonori   2007-05-14  1267  			scsi_for_each_sg(SCp=
, sg, scsi_sg_count(SCp) + 1, i) {
3258a4d5690880a FUJITA Tomonori   2007-05-14  1268  				printk(KERN_INFO " =
SG[%d].length =3D %d, move_insn=3D%08x, addr %08x\n", i, sg->length, ((stru=
ct NCR_700_command_slot *)SCp->host_scribble)->SG[i].ins, ((struct NCR_700_=
command_slot *)SCp->host_scribble)->SG[i].pAddr);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1269  			}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1270  		}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1271  		NCR_700_internal_bus_=
reset(host);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1272  	} else if((dsps & 0xff=
fff000) =3D=3D A_DEBUG_INTERRUPT) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1273  		printk(KERN_NOTICE "s=
csi%d (%d:%d) DEBUG INTERRUPT %d AT %08x[%04x], continuing\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1274  		       host->host_no,=
 pun, lun, dsps & 0xfff, dsp, dsp - hostdata->pScript);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1275  		resume_offset =3D dsp=
;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1276  	} else {
^1da177e4c3f415 Linus Torvalds    2005-04-16  1277  		printk(KERN_ERR "scsi=
%d: (%d:%d), unidentified script interrupt 0x%x at %04x\n",
^1da177e4c3f415 Linus Torvalds    2005-04-16  1278  		       host->host_no,=
 pun, lun, dsps, dsp - hostdata->pScript);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1279  		NCR_700_internal_bus_=
reset(host);
^1da177e4c3f415 Linus Torvalds    2005-04-16  1280  	}
^1da177e4c3f415 Linus Torvalds    2005-04-16  1281  	return resume_offset;
^1da177e4c3f415 Linus Torvalds    2005-04-16  1282  }
^1da177e4c3f415 Linus Torvalds    2005-04-16  1283 =20

:::::: The code at line 984 was first introduced by commit
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
clang-built-linux/202104121828.XkiiUUXO-lkp%40intel.com.

--Qxx1br4bt0+wmkIi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
BDcOVXRKts2r2gn3w/58/wdaRQgpKA4CAA==

--Qxx1br4bt0+wmkIi--
