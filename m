Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZXW3TUQKGQEMMQLGCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D9371D22
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 18:52:59 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id s197sf16835043oih.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 09:52:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563900777; cv=pass;
        d=google.com; s=arc-20160816;
        b=P4AjXPT600dpp4fhSqQuKpYv8A9JrD2x2TH3scwiE4OlbQhYou0rAhNldWTvD2onyI
         LVcbcyuFSxTuCghYqeRh7mn0KaMlCRG4yuVaNUWI1eysyVgC6UALC57eYtIdpjMCGqF4
         JdCPsksxqQiy7Kztxuy97XDKY6CMx0UeSWL9zeNn59cW7qNPgyB8PXGzi++utWeGy3p+
         SVQckkO4RowjZ5k2CRpCfDz1mVDrID2fhbqyJhnXLwOQZOpAqn77IGWWqQyTThaN6MLN
         filREqgdpvSDsul9iGlHZw7rf8L4f6j1Eim6dGl2+5ep10oP3up/iJb+ygYiX/Qu6DSv
         NQdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XJJK3J/aJ3Vq0/mLlI0LMfUwngFqbTRs4GgehxSHvys=;
        b=wC2XSDBd94VpZALIjPy68radmfiwzCZ5Q2R4/YBU19S+w8+yKL0pgV3A3MBQHOM7t4
         PVsuSPvkcDDmeoWPjWrDWCfDoE5+0ANipQsnTkYH2eJhsU3ujobCoeued1ognO4iLSJC
         1zZsZLnEPecdxpPA9TipNU1rdj1ph8d1gRrs1OQQe4ctg20qozQnmZrsfn+09b685zNG
         wxITThBV7tSesmlOwJbtSy6umCsKdtFOTkwbQrCZRTzS/Ms/vJlajm8x7VmlGUnbHgWn
         qhaZZrQmiiPJsuDy7LdCi0Y6gB0iIOlQRZFWzYyt2M/bqONx81926WZ0Nc/AUqbdAexD
         L42g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XJJK3J/aJ3Vq0/mLlI0LMfUwngFqbTRs4GgehxSHvys=;
        b=bIkTVvX71h8Sfs9wYsv5XW3ujsMPBNuJ2GZEaPkMDthLUgergtY2UnvIEfJ/kFClpl
         WlfzzAtu9GPKkImqSc4PrQj+qJyZHPGnI5ihUZ3ZYsjcKZg1vaw4TA0n8m/N5dz3l3dk
         l9SFD0qPUoEG3U1EA/OTsfpyjfrkHPtS8XgXkyOXyYkTtqySbVfPHDIsCChjWswZzI+J
         kX6DgVwL1tM5CWCYd+2mEVvGDsoWGl5/wkDKV3kbXAC+B0b/mUKWZqQbkSHfvXN9tCSy
         G+tWwj5bbSzivp8nmIPVN5yAmJ3OjifoOtjQW+0U4bvtyOiX3NOfzSLgyBzpQ03uoojO
         4DEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XJJK3J/aJ3Vq0/mLlI0LMfUwngFqbTRs4GgehxSHvys=;
        b=ssCgms53H7UisliJWnzjLZ2mbEZS/+fF2UONI+cG/cS+NXDETAwGRLd/1T/jYXU6nq
         NI4jdhTEt/J96j5Qq75Um46YFy1AxmnYdLZJMCnhyTrT3fZHPecOfjlFhDQdJItQ3Sqf
         LinOTP7KOR42yFP7c+zoddt8mPmmlfvfiIgvg57VWpxb2ezNtiughrnSaWvJESQsC259
         ghrbcZk/CuD8dFxDHR61OIrmT8sgt4FnwR5f+0xVlWxK4iPf7oTzgrU8jKg6knrYIzEZ
         chUN5uKF23Jakq86C/srDClwoM7GmZ6NChYyT+7hLuZ7BlWW9lwUnDAzT4nPiiXblA4I
         ajEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUAQA4Pq1XL0VEYmLnxfY5IlQFKEC7Iwf9S8CuPrOVmtuWF07JJ
	fkqPZrC9suJrdMgP6RyDcWQ=
X-Google-Smtp-Source: APXvYqzVU+nI7i+U9CLQb+lY8Zyw/4TwrPmyO7Nw2/iGUHnLdh1Yu0pRjnSKFO692xKpKbOIEH638Q==
X-Received: by 2002:a9d:6195:: with SMTP id g21mr24614434otk.103.1563900774418;
        Tue, 23 Jul 2019 09:52:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2083:: with SMTP id y3ls6872862otq.3.gmail; Tue, 23
 Jul 2019 09:52:54 -0700 (PDT)
X-Received: by 2002:a9d:774e:: with SMTP id t14mr6283550otl.187.1563900773904;
        Tue, 23 Jul 2019 09:52:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563900773; cv=none;
        d=google.com; s=arc-20160816;
        b=BLmiHtPCz1VNZ6261wwYoj47sny/diq/vdKGadIb8RqFOLugC06TyXN2GRGmKqvPuP
         AxQoQFj7XDlDtiePxBciWfwbRgXAIQ9v5UFx/ikqVngC8gvNtCEANGhBm48COm/edJej
         Xg6MYQK6WvECehLePOQSLzbAzN9t9d9aNVRBKcN9J5L/GpJfiqXJt3rnI3IfV1UKAwzN
         iOezrT0vVeG/jNIxE7kS5W/E5zewp+gvfOhgVHyiVeV0m8h/WTgoNUoSIPDq1LaBSiqb
         Tp5+iHVFM2+hAuE5SFZjbvlHFBw+yUw8TzxZhaC5g8lqWCdAkKMMkejN9iJk73WSLVM2
         xYjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=yZodDodspBlVwV178dQHBeRmJMy2xC9Tbpi6shyq3bQ=;
        b=aq9w3lqpk6lIW6KY8a+x8ixmJYBX1Z9Ny2eqWEoAwksZvp6tJEACb78deenO2S9LK5
         GsjIDheimkounlmqfFfkVSK/d4j6VfFQ9J9oK4iW/6YMKgMHTeGowQNZ5BfFnBXiN53w
         vC8g5qVNM8Gqym+KigHz0nopVeyXRZdV55dluxuPRPZCe1ouC5nNLHNJbFhruOeX9TQ8
         qlLFE6TDIYIWhu8OsOHyPXAfW1uVjG9xIHzahjEuyWYA/BHlJuwe8VQmAfv8eQ1p+T7X
         xca+5zyjwJ4ttCNAt1DpVXs1l5iUWHf88CHIQ1kq//bKFWzDV5I+YuxsJKeD6B4xcJ3T
         2jaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id i20si2398540otf.0.2019.07.23.09.52.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 09:52:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Jul 2019 09:52:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; 
   d="gz'50?scan'50,208,50";a="163552964"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 23 Jul 2019 09:52:48 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hpy1w-000I4g-69; Wed, 24 Jul 2019 00:52:48 +0800
Date: Wed, 24 Jul 2019 00:52:00 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [t-kristo-pm:ipc-next 32/86]
 drivers/remoteproc/qcom_q6v5_mss.c:1041:62: error: too few arguments to
 function call, expected 4, have 3
Message-ID: <201907240054.ZHxvhFKI%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="araykq6p57ktbha5"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--araykq6p57ktbha5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@01.org
TO: Suman Anna <s-anna@ti.com>
CC: Tero Kristo <t-kristo@ti.com>

tree:   https://github.com/t-kristo/linux-pm ipc-next
head:   07c69a1db9eadce67e6ee677f78d2012f2d6a3c6
commit: abbf9b65653b8679a90758470d2f57d075be9ef7 [32/86] remoteproc: extend=
 rproc_da_to_va() API with a flags parameter
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 3d68adebc57972=
0a3914d50e77a413773be34f16)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout abbf9b65653b8679a90758470d2f57d075be9ef7
        # save the attached .config to linux build tree
        make.cross ARCH=3Darm64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/remoteproc/qcom_q6v5_mss.c:1041:62: error: too few arguments to =
function call, expected 4, have 3
           void *ptr =3D rproc_da_to_va(rproc, segment->da, segment->size);
                       ~~~~~~~~~~~~~~                                  ^
   include/linux/remoteproc.h:619:1: note: 'rproc_da_to_va' declared here
   void *rproc_da_to_va(struct rproc *rproc, u64 da, int len, u32 flags);
   ^
>> drivers/remoteproc/qcom_q6v5_mss.c:1179:14: error: incompatible pointer =
types initializing 'void *(*)(struct rproc *, u64, int, u32)' (aka 'void *(=
*)(struct rproc *, unsigned long long, int, unsigned int)') with an express=
ion of type 'void *(struct rproc *, u64, int)' (aka 'void *(struct rproc *,=
 unsigned long long, int)') [-Werror,-Wincompatible-pointer-types]
           .da_to_va =3D q6v5_da_to_va,
                       ^~~~~~~~~~~~~
   2 errors generated.
--
>> drivers/remoteproc/qcom_q6v5_pas.c:177:14: error: incompatible pointer t=
ypes initializing 'void *(*)(struct rproc *, u64, int, u32)' (aka 'void *(*=
)(struct rproc *, unsigned long long, int, unsigned int)') with an expressi=
on of type 'void *(struct rproc *, u64, int)' (aka 'void *(struct rproc *, =
unsigned long long, int)') [-Werror,-Wincompatible-pointer-types]
           .da_to_va =3D adsp_da_to_va,
                       ^~~~~~~~~~~~~
   1 error generated.

vim +1041 drivers/remoteproc/qcom_q6v5_mss.c

051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1033 =20
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1034  static void qcom_q6v5_dump_segment(struct rproc *rproc,
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1035  				   struct rproc_dump_segment *segment,
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1036  				   void *dest)
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1037  {
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1038  	int ret =3D 0;
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1039  	struct q6v5 *qproc =3D rproc->priv;
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1040  	unsigned long mask =3D BIT((unsigned long)segment->priv=
);
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17 @1041  	void *ptr =3D rproc_da_to_va(rproc, segment->da, segmen=
t->size);
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1042 =20
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1043  	/* Unlock mba before copying segments */
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1044  	if (!qproc->dump_mba_loaded)
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1045  		ret =3D q6v5_mba_load(qproc);
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1046 =20
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1047  	if (!ptr || ret)
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1048  		memset(dest, 0xff, segment->size);
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1049  	else
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1050  		memcpy(dest, ptr, segment->size);
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1051 =20
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1052  	qproc->dump_segment_mask |=3D mask;
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1053 =20
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1054  	/* Reclaim mba after copying segments */
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1055  	if (qproc->dump_segment_mask =3D=3D qproc->dump_complet=
e_mask) {
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1056  		if (qproc->dump_mba_loaded)
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1057  			q6v5_mba_reclaim(qproc);
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1058  	}
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1059  }
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1060 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1061  static int q6v5_start(struct rproc *rproc)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1062  {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1063  	struct q6v5 *qproc =3D (struct q6v5 *)rproc->priv;
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1064  	int xfermemop_ret;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1065  	int ret;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1066 =20
0304530ddd29300 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1067  	ret =3D q6v5_mba_load(qproc);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1068  	if (ret)
0304530ddd29300 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1069  		return ret;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1070 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1071  	dev_info(qproc->dev, "MBA booted, loading mpss\n");
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1072 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1073  	ret =3D q6v5_mpss_load(qproc);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1074  	if (ret)
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1075  		goto reclaim_mpss;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1076 =20
7d674731f36c2b3 drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2018-06-04  1077  	ret =3D qcom_q6v5_wait_for_start(&qproc->q6v5, msecs_to=
_jiffies(5000));
7d674731f36c2b3 drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2018-06-04  1078  	if (ret =3D=3D -ETIMEDOUT) {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1079  		dev_err(qproc->dev, "start timed out\n");
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1080  		goto reclaim_mpss;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1081  	}
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1082 =20
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1083  	xfermemop_ret =3D q6v5_xfer_mem_ownership(qproc, &qproc=
->mba_perm, false,
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1084  						qproc->mba_phys,
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1085  						qproc->mba_size);
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1086  	if (xfermemop_ret)
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1087  		dev_err(qproc->dev,
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1088  			"Failed to reclaim mba buffer system may become unsta=
ble\n");
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1089 =20
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1090  	/* Reset Dump Segment Mask */
7dd8ade24dc2a35 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1091  	qproc->dump_segment_mask =3D 0;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1092  	qproc->running =3D true;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1093 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1094  	return 0;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1095 =20
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1096  reclaim_mpss:
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1097  	xfermemop_ret =3D q6v5_xfer_mem_ownership(qproc, &qproc=
->mpss_perm,
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1098  						false, qproc->mpss_phys,
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1099  						qproc->mpss_size);
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1100  	WARN_ON(xfermemop_ret);
0304530ddd29300 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1101  	q6v5_mba_reclaim(qproc);
663e98453a6e449 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1102 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1103  	return ret;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1104  }
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1105 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1106  static int q6v5_stop(struct rproc *rproc)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1107  {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1108  	struct q6v5 *qproc =3D (struct q6v5 *)rproc->priv;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1109  	int ret;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1110 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1111  	qproc->running =3D false;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1112 =20
7d674731f36c2b3 drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2018-06-04  1113  	ret =3D qcom_q6v5_request_stop(&qproc->q6v5);
7d674731f36c2b3 drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2018-06-04  1114  	if (ret =3D=3D -ETIMEDOUT)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1115  		dev_err(qproc->dev, "timed out on wait\n");
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1116 =20
0304530ddd29300 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1117  	q6v5_mba_reclaim(qproc);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1118 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1119  	return 0;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1120  }
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1121 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1122  static void *q6v5_da_to_va(struct rproc *rproc, u64 da, =
int len)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1123  {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1124  	struct q6v5 *qproc =3D rproc->priv;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1125  	int offset;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1126 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1127  	offset =3D da - qproc->mpss_reloc;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1128  	if (offset < 0 || offset + len > qproc->mpss_size)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1129  		return NULL;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1130 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1131  	return qproc->mpss_region + offset;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1132  }
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1133 =20
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1134  static int qcom_q6v5_register_dump_segments(struct rproc=
 *rproc,
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1135  					    const struct firmware *mba_fw)
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1136  {
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1137  	const struct firmware *fw;
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1138  	const struct elf32_phdr *phdrs;
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1139  	const struct elf32_phdr *phdr;
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1140  	const struct elf32_hdr *ehdr;
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1141  	struct q6v5 *qproc =3D rproc->priv;
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1142  	unsigned long i;
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1143  	int ret;
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1144 =20
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1145  	ret =3D request_firmware(&fw, qproc->hexagon_mdt_image,=
 qproc->dev);
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1146  	if (ret < 0) {
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1147  		dev_err(qproc->dev, "unable to load %s\n",
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1148  			qproc->hexagon_mdt_image);
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1149  		return ret;
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1150  	}
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1151 =20
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1152  	ehdr =3D (struct elf32_hdr *)fw->data;
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1153  	phdrs =3D (struct elf32_phdr *)(ehdr + 1);
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1154  	qproc->dump_complete_mask =3D 0;
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1155 =20
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1156  	for (i =3D 0; i < ehdr->e_phnum; i++) {
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1157  		phdr =3D &phdrs[i];
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1158 =20
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1159  		if (!q6v5_phdr_valid(phdr))
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1160  			continue;
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1161 =20
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1162  		ret =3D rproc_coredump_add_custom_segment(rproc, phdr-=
>p_paddr,
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1163  							phdr->p_memsz,
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1164  							qcom_q6v5_dump_segment,
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1165  							(void *)i);
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1166  		if (ret)
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1167  			break;
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1168 =20
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1169  		qproc->dump_complete_mask |=3D BIT(i);
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1170  	}
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1171 =20
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1172  	release_firmware(fw);
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1173  	return ret;
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1174  }
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1175 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1176  static const struct rproc_ops q6v5_ops =3D {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1177  	.start =3D q6v5_start,
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1178  	.stop =3D q6v5_stop,
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20 @1179  	.da_to_va =3D q6v5_da_to_va,
f18b7e914fd2ed5 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-10-17  1180  	.parse_fw =3D qcom_q6v5_register_dump_segments,
0f21f9cc9d86878 drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2018-01-05  1181  	.load =3D q6v5_load,
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1182  };
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1183 =20
7d674731f36c2b3 drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2018-06-04  1184  static void qcom_msa_handover(struct qcom_q6v5 *q6v5)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1185  {
7d674731f36c2b3 drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2018-06-04  1186  	struct q6v5 *qproc =3D container_of(q6v5, struct q6v5, =
q6v5);
663e98453a6e449 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1187 =20
663e98453a6e449 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1188  	q6v5_clk_disable(qproc->dev, qproc->proxy_clks,
663e98453a6e449 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1189  			 qproc->proxy_clk_count);
663e98453a6e449 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1190  	q6v5_regulator_disable(qproc, qproc->proxy_regs,
663e98453a6e449 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1191  			       qproc->proxy_reg_count);
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1192  	q6v5_pds_disable(qproc, qproc->proxy_pds, qproc->proxy_=
pd_count);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1193  }
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1194 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1195  static int q6v5_init_mem(struct q6v5 *qproc, struct plat=
form_device *pdev)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1196  {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1197  	struct of_phandle_args args;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1198  	struct resource *res;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1199  	int ret;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1200 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1201  	res =3D platform_get_resource_byname(pdev, IORESOURCE_M=
EM, "qdsp6");
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1202  	qproc->reg_base =3D devm_ioremap_resource(&pdev->dev, r=
es);
b1653f23ea464b6 drivers/remoteproc/qcom_q6v5_pil.c Wei Yongjun             =
 2016-07-14  1203  	if (IS_ERR(qproc->reg_base))
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1204  		return PTR_ERR(qproc->reg_base);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1205 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1206  	res =3D platform_get_resource_byname(pdev, IORESOURCE_M=
EM, "rmb");
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1207  	qproc->rmb_base =3D devm_ioremap_resource(&pdev->dev, r=
es);
b1653f23ea464b6 drivers/remoteproc/qcom_q6v5_pil.c Wei Yongjun             =
 2016-07-14  1208  	if (IS_ERR(qproc->rmb_base))
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1209  		return PTR_ERR(qproc->rmb_base);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1210 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1211  	ret =3D of_parse_phandle_with_fixed_args(pdev->dev.of_n=
ode,
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1212  					       "qcom,halt-regs", 3, 0, &args);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1213  	if (ret < 0) {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1214  		dev_err(&pdev->dev, "failed to parse qcom,halt-regs\n"=
);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1215  		return -EINVAL;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1216  	}
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1217 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1218  	qproc->halt_map =3D syscon_node_to_regmap(args.np);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1219  	of_node_put(args.np);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1220  	if (IS_ERR(qproc->halt_map))
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1221  		return PTR_ERR(qproc->halt_map);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1222 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1223  	qproc->halt_q6 =3D args.args[0];
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1224  	qproc->halt_modem =3D args.args[1];
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1225  	qproc->halt_nc =3D args.args[2];
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1226 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1227  	return 0;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1228  }
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1229 =20
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1230  static int q6v5_init_clocks(struct device *dev, struct c=
lk **clks,
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1231  		char **clk_names)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1232  {
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1233  	int i;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1234 =20
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1235  	if (!clk_names)
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1236  		return 0;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1237 =20
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1238  	for (i =3D 0; clk_names[i]; i++) {
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1239  		clks[i] =3D devm_clk_get(dev, clk_names[i]);
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1240  		if (IS_ERR(clks[i])) {
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1241  			int rc =3D PTR_ERR(clks[i]);
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1242 =20
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1243  			if (rc !=3D -EPROBE_DEFER)
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1244  				dev_err(dev, "Failed to get %s clock\n",
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1245  					clk_names[i]);
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1246  			return rc;
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1247  		}
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1248  	}
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1249 =20
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1250  	return i;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1251  }
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1252 =20
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1253  static int q6v5_pds_attach(struct device *dev, struct de=
vice **devs,
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1254  			   char **pd_names)
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1255  {
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1256  	size_t num_pds =3D 0;
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1257  	int ret;
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1258  	int i;
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1259 =20
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1260  	if (!pd_names)
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1261  		return 0;
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1262 =20
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1263  	while (pd_names[num_pds])
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1264  		num_pds++;
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1265 =20
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1266  	for (i =3D 0; i < num_pds; i++) {
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1267  		devs[i] =3D dev_pm_domain_attach_by_name(dev, pd_names=
[i]);
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1268  		if (IS_ERR(devs[i])) {
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1269  			ret =3D PTR_ERR(devs[i]);
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1270  			goto unroll_attach;
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1271  		}
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1272  	}
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1273 =20
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1274  	return num_pds;
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1275 =20
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1276  unroll_attach:
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1277  	for (i--; i >=3D 0; i--)
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1278  		dev_pm_domain_detach(devs[i], false);
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1279 =20
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1280  	return ret;
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1281  };
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1282 =20
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1283  static void q6v5_pds_detach(struct q6v5 *qproc, struct d=
evice **pds,
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1284  			    size_t pd_count)
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1285  {
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1286  	int i;
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1287 =20
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1288  	for (i =3D 0; i < pd_count; i++)
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1289  		dev_pm_domain_detach(pds[i], false);
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1290  }
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1291 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1292  static int q6v5_init_reset(struct q6v5 *qproc)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1293  {
5acbf7e52070902 drivers/remoteproc/qcom_q6v5_pil.c Philipp Zabel           =
 2017-07-19  1294  	qproc->mss_restart =3D devm_reset_control_get_exclusive=
(qproc->dev,
9e483efd3470d13 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-08-30  1295  							      "mss_restart");
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1296  	if (IS_ERR(qproc->mss_restart)) {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1297  		dev_err(qproc->dev, "failed to acquire mss restart\n")=
;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1298  		return PTR_ERR(qproc->mss_restart);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1299  	}
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1300 =20
29a5f9aaf9d365c drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-08-30  1301  	if (qproc->has_alt_reset) {
29a5f9aaf9d365c drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-08-30  1302  		qproc->pdc_reset =3D devm_reset_control_get_exclusive(=
qproc->dev,
29a5f9aaf9d365c drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-08-30  1303  								    "pdc_reset");
29a5f9aaf9d365c drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-08-30  1304  		if (IS_ERR(qproc->pdc_reset)) {
29a5f9aaf9d365c drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-08-30  1305  			dev_err(qproc->dev, "failed to acquire pdc reset\n");
29a5f9aaf9d365c drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-08-30  1306  			return PTR_ERR(qproc->pdc_reset);
29a5f9aaf9d365c drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-08-30  1307  		}
29a5f9aaf9d365c drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-08-30  1308  	}
29a5f9aaf9d365c drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-08-30  1309 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1310  	return 0;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1311  }
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1312 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1313  static int q6v5_alloc_memory_region(struct q6v5 *qproc)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1314  {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1315  	struct device_node *child;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1316  	struct device_node *node;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1317  	struct resource r;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1318  	int ret;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1319 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1320  	child =3D of_get_child_by_name(qproc->dev->of_node, "mb=
a");
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1321  	node =3D of_parse_phandle(child, "memory-region", 0);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1322  	ret =3D of_address_to_resource(node, 0, &r);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1323  	if (ret) {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1324  		dev_err(qproc->dev, "unable to resolve mba region\n");
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1325  		return ret;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1326  	}
278d744c46fd4f1 drivers/remoteproc/qcom_q6v5_pil.c Tobias Jordan           =
 2018-02-15  1327  	of_node_put(node);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1328 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1329  	qproc->mba_phys =3D r.start;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1330  	qproc->mba_size =3D resource_size(&r);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1331  	qproc->mba_region =3D devm_ioremap_wc(qproc->dev, qproc=
->mba_phys, qproc->mba_size);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1332  	if (!qproc->mba_region) {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1333  		dev_err(qproc->dev, "unable to map memory region: %pa+=
%zx\n",
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1334  			&r.start, qproc->mba_size);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1335  		return -EBUSY;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1336  	}
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1337 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1338  	child =3D of_get_child_by_name(qproc->dev->of_node, "mp=
ss");
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1339  	node =3D of_parse_phandle(child, "memory-region", 0);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1340  	ret =3D of_address_to_resource(node, 0, &r);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1341  	if (ret) {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1342  		dev_err(qproc->dev, "unable to resolve mpss region\n")=
;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1343  		return ret;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1344  	}
278d744c46fd4f1 drivers/remoteproc/qcom_q6v5_pil.c Tobias Jordan           =
 2018-02-15  1345  	of_node_put(node);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1346 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1347  	qproc->mpss_phys =3D qproc->mpss_reloc =3D r.start;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1348  	qproc->mpss_size =3D resource_size(&r);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1349  	qproc->mpss_region =3D devm_ioremap_wc(qproc->dev, qpro=
c->mpss_phys, qproc->mpss_size);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1350  	if (!qproc->mpss_region) {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1351  		dev_err(qproc->dev, "unable to map memory region: %pa+=
%zx\n",
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1352  			&r.start, qproc->mpss_size);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1353  		return -EBUSY;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1354  	}
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1355 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1356  	return 0;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1357  }
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1358 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1359  static int q6v5_probe(struct platform_device *pdev)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1360  {
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1361  	const struct rproc_hexagon_res *desc;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1362  	struct q6v5 *qproc;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1363  	struct rproc *rproc;
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1364  	const char *mba_image;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1365  	int ret;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1366 =20
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1367  	desc =3D of_device_get_match_data(&pdev->dev);
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1368  	if (!desc)
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1369  		return -EINVAL;
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1370 =20
bbcda30271752bb drivers/remoteproc/qcom_q6v5_mss.c Brian Norris            =
 2018-10-08  1371  	if (desc->need_mem_protection && !qcom_scm_is_available=
())
bbcda30271752bb drivers/remoteproc/qcom_q6v5_mss.c Brian Norris            =
 2018-10-08  1372  		return -EPROBE_DEFER;
bbcda30271752bb drivers/remoteproc/qcom_q6v5_mss.c Brian Norris            =
 2018-10-08  1373 =20
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1374  	mba_image =3D desc->hexagon_mba_image;
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1375  	ret =3D of_property_read_string_index(pdev->dev.of_node=
, "firmware-name",
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1376  					    0, &mba_image);
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1377  	if (ret < 0 && ret !=3D -EINVAL)
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1378  		return ret;
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1379 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1380  	rproc =3D rproc_alloc(&pdev->dev, pdev->name, &q6v5_ops=
,
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1381  			    mba_image, sizeof(*qproc));
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1382  	if (!rproc) {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1383  		dev_err(&pdev->dev, "failed to allocate rproc\n");
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1384  		return -ENOMEM;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1385  	}
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1386 =20
4107102d60791d0 drivers/remoteproc/qcom_q6v5_mss.c Ramon Fried             =
 2018-05-24  1387  	rproc->auto_boot =3D false;
4107102d60791d0 drivers/remoteproc/qcom_q6v5_mss.c Ramon Fried             =
 2018-05-24  1388 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1389  	qproc =3D (struct q6v5 *)rproc->priv;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1390  	qproc->dev =3D &pdev->dev;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1391  	qproc->rproc =3D rproc;
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1392  	qproc->hexagon_mdt_image =3D "modem.mdt";
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1393  	ret =3D of_property_read_string_index(pdev->dev.of_node=
, "firmware-name",
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1394  					    1, &qproc->hexagon_mdt_image);
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1395  	if (ret < 0 && ret !=3D -EINVAL)
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1396  		return ret;
a5a4e02d083d88d drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-15  1397 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1398  	platform_set_drvdata(pdev, qproc);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1399 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1400  	ret =3D q6v5_init_mem(qproc, pdev);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1401  	if (ret)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1402  		goto free_rproc;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1403 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1404  	ret =3D q6v5_alloc_memory_region(qproc);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1405  	if (ret)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1406  		goto free_rproc;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1407 =20
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1408  	ret =3D q6v5_init_clocks(&pdev->dev, qproc->proxy_clks,
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1409  			       desc->proxy_clk_names);
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1410  	if (ret < 0) {
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1411  		dev_err(&pdev->dev, "Failed to get proxy clocks.\n");
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1412  		goto free_rproc;
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1413  	}
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1414  	qproc->proxy_clk_count =3D ret;
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1415 =20
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1416  	ret =3D q6v5_init_clocks(&pdev->dev, qproc->reset_clks,
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1417  			       desc->reset_clk_names);
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1418  	if (ret < 0) {
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1419  		dev_err(&pdev->dev, "Failed to get reset clocks.\n");
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1420  		goto free_rproc;
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1421  	}
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1422  	qproc->reset_clk_count =3D ret;
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1423 =20
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1424  	ret =3D q6v5_init_clocks(&pdev->dev, qproc->active_clks=
,
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1425  			       desc->active_clk_names);
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1426  	if (ret < 0) {
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1427  		dev_err(&pdev->dev, "Failed to get active clocks.\n");
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1428  		goto free_rproc;
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1429  	}
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1430  	qproc->active_clk_count =3D ret;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1431 =20
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1432  	ret =3D q6v5_regulator_init(&pdev->dev, qproc->proxy_re=
gs,
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1433  				  desc->proxy_supply);
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1434  	if (ret < 0) {
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1435  		dev_err(&pdev->dev, "Failed to get proxy regulators.\n=
");
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1436  		goto free_rproc;
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1437  	}
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1438  	qproc->proxy_reg_count =3D ret;
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1439 =20
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1440  	ret =3D q6v5_regulator_init(&pdev->dev,  qproc->active_=
regs,
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1441  				  desc->active_supply);
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1442  	if (ret < 0) {
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1443  		dev_err(&pdev->dev, "Failed to get active regulators.\=
n");
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1444  		goto free_rproc;
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1445  	}
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1446  	qproc->active_reg_count =3D ret;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1447 =20
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1448  	ret =3D q6v5_pds_attach(&pdev->dev, qproc->active_pds,
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1449  			      desc->active_pd_names);
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1450  	if (ret < 0) {
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1451  		dev_err(&pdev->dev, "Failed to attach active power dom=
ains\n");
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1452  		goto free_rproc;
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1453  	}
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1454  	qproc->active_pd_count =3D ret;
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1455 =20
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1456  	ret =3D q6v5_pds_attach(&pdev->dev, qproc->proxy_pds,
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1457  			      desc->proxy_pd_names);
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1458  	if (ret < 0) {
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1459  		dev_err(&pdev->dev, "Failed to init power domains\n");
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1460  		goto detach_active_pds;
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1461  	}
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1462  	qproc->proxy_pd_count =3D ret;
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1463 =20
29a5f9aaf9d365c drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-08-30  1464  	qproc->has_alt_reset =3D desc->has_alt_reset;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1465  	ret =3D q6v5_init_reset(qproc);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1466  	if (ret)
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1467  		goto detach_proxy_pds;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1468 =20
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1469  	qproc->version =3D desc->version;
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1470  	qproc->need_mem_protection =3D desc->need_mem_protectio=
n;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1471 =20
7d674731f36c2b3 drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2018-06-04  1472  	ret =3D qcom_q6v5_init(&qproc->q6v5, pdev, rproc, MPSS_=
CRASH_REASON_SMEM,
7d674731f36c2b3 drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2018-06-04  1473  			     qcom_msa_handover);
7d674731f36c2b3 drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2018-06-04  1474  	if (ret)
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1475  		goto detach_proxy_pds;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1476 =20
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1477  	qproc->mpss_perm =3D BIT(QCOM_SCM_VMID_HLOS);
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1478  	qproc->mba_perm =3D BIT(QCOM_SCM_VMID_HLOS);
4725496e4872824 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1479  	qcom_add_glink_subdev(rproc, &qproc->glink_subdev);
4b48921a8f74e7d drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2017-01-29  1480  	qcom_add_smd_subdev(rproc, &qproc->smd_subdev);
1e140df0496541c drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2017-07-24  1481  	qcom_add_ssr_subdev(rproc, &qproc->ssr_subdev, "mpss");
1fb82ee806d170b drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2017-08-27  1482  	qproc->sysmon =3D qcom_add_sysmon_subdev(rproc, "modem"=
, 0x12);
027045a6e2b7cd8 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-08  1483  	if (IS_ERR(qproc->sysmon)) {
027045a6e2b7cd8 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-08  1484  		ret =3D PTR_ERR(qproc->sysmon);
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1485  		goto detach_proxy_pds;
027045a6e2b7cd8 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2019-01-08  1486  	}
4b48921a8f74e7d drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2017-01-29  1487 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1488  	ret =3D rproc_add(rproc);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1489  	if (ret)
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1490  		goto detach_proxy_pds;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1491 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1492  	return 0;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1493 =20
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1494  detach_proxy_pds:
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1495  	q6v5_pds_detach(qproc, qproc->proxy_pds, qproc->proxy_p=
d_count);
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1496  detach_active_pds:
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1497  	q6v5_pds_detach(qproc, qproc->active_pds, qproc->active=
_pd_count);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1498  free_rproc:
433c0e04bc06da6 drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-10-02  1499  	rproc_free(rproc);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1500 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1501  	return ret;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1502  }
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1503 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1504  static int q6v5_remove(struct platform_device *pdev)
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1505  {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1506  	struct q6v5 *qproc =3D platform_get_drvdata(pdev);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1507 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1508  	rproc_del(qproc->rproc);
4b48921a8f74e7d drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2017-01-29  1509 =20
1fb82ee806d170b drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2017-08-27  1510  	qcom_remove_sysmon_subdev(qproc->sysmon);
4725496e4872824 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1511  	qcom_remove_glink_subdev(qproc->rproc, &qproc->glink_su=
bdev);
4b48921a8f74e7d drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2017-01-29  1512  	qcom_remove_smd_subdev(qproc->rproc, &qproc->smd_subdev=
);
1e140df0496541c drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2017-07-24  1513  	qcom_remove_ssr_subdev(qproc->rproc, &qproc->ssr_subdev=
);
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1514 =20
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1515  	q6v5_pds_detach(qproc, qproc->active_pds, qproc->active=
_pd_count);
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1516  	q6v5_pds_detach(qproc, qproc->proxy_pds, qproc->proxy_p=
d_count);
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1517 =20
433c0e04bc06da6 drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-10-02  1518  	rproc_free(qproc->rproc);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1519 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1520  	return 0;
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1521  }
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1522 =20
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1523  static const struct rproc_hexagon_res sdm845_mss =3D {
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1524  	.hexagon_mba_image =3D "mba.mbn",
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1525  	.proxy_clk_names =3D (char*[]){
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1526  			"xo",
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1527  			"prng",
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1528  			NULL
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1529  	},
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1530  	.reset_clk_names =3D (char*[]){
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1531  			"iface",
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1532  			"snoc_axi",
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1533  			NULL
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1534  	},
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1535  	.active_clk_names =3D (char*[]){
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1536  			"bus",
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1537  			"mem",
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1538  			"gpll0_mss",
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1539  			"mnoc_axi",
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1540  			NULL
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1541  	},
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1542  	.active_pd_names =3D (char*[]){
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1543  			"load_state",
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1544  			NULL
deb9bb83e7ae742 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2019-01-30  1545  	},
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1546  	.proxy_pd_names =3D (char*[]){
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1547  			"cx",
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1548  			"mx",
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1549  			"mss",
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1550  			NULL
4760a896be88e83 drivers/remoteproc/qcom_q6v5_mss.c Rajendra Nayak          =
 2019-01-30  1551  	},
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1552  	.need_mem_protection =3D true,
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1553  	.has_alt_reset =3D true,
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1554  	.version =3D MSS_SDM845,
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1555  };
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1556 =20
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1557  static const struct rproc_hexagon_res msm8996_mss =3D {
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1558  	.hexagon_mba_image =3D "mba.mbn",
47b874748d50002 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-12-29  1559  	.proxy_supply =3D (struct qcom_mss_reg_res[]) {
47b874748d50002 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-12-29  1560  		{
47b874748d50002 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-12-29  1561  			.supply =3D "pll",
47b874748d50002 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-12-29  1562  			.uA =3D 100000,
47b874748d50002 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-12-29  1563  		},
47b874748d50002 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-12-29  1564  		{}
47b874748d50002 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-12-29  1565  	},
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1566  	.proxy_clk_names =3D (char*[]){
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1567  			"xo",
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1568  			"pnoc",
80ec419c3404106 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-12-29  1569  			"qdss",
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1570  			NULL
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1571  	},
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1572  	.active_clk_names =3D (char*[]){
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1573  			"iface",
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1574  			"bus",
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1575  			"mem",
80ec419c3404106 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-12-29  1576  			"gpll0_mss",
80ec419c3404106 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-12-29  1577  			"snoc_axi",
80ec419c3404106 drivers/remoteproc/qcom_q6v5_mss.c Sibi Sankar             =
 2018-12-29  1578  			"mnoc_axi",
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1579  			NULL
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1580  	},
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1581  	.need_mem_protection =3D true,
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1582  	.has_alt_reset =3D false,
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1583  	.version =3D MSS_MSM8996,
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1584  };
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1585 =20
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1586  static const struct rproc_hexagon_res msm8916_mss =3D {
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1587  	.hexagon_mba_image =3D "mba.mbn",
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1588  	.proxy_supply =3D (struct qcom_mss_reg_res[]) {
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1589  		{
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1590  			.supply =3D "mx",
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1591  			.uV =3D 1050000,
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1592  		},
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1593  		{
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1594  			.supply =3D "cx",
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1595  			.uA =3D 100000,
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1596  		},
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1597  		{
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1598  			.supply =3D "pll",
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1599  			.uA =3D 100000,
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1600  		},
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1601  		{}
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1602  	},
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1603  	.proxy_clk_names =3D (char*[]){
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1604  		"xo",
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1605  		NULL
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1606  	},
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1607  	.active_clk_names =3D (char*[]){
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1608  		"iface",
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1609  		"bus",
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1610  		"mem",
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1611  		NULL
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1612  	},
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1613  	.need_mem_protection =3D false,
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1614  	.has_alt_reset =3D false,
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1615  	.version =3D MSS_MSM8916,
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1616  };
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1617 =20
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1618  static const struct rproc_hexagon_res msm8974_mss =3D {
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1619  	.hexagon_mba_image =3D "mba.b00",
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1620  	.proxy_supply =3D (struct qcom_mss_reg_res[]) {
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1621  		{
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1622  			.supply =3D "mx",
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1623  			.uV =3D 1050000,
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1624  		},
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1625  		{
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1626  			.supply =3D "cx",
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1627  			.uA =3D 100000,
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1628  		},
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1629  		{
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1630  			.supply =3D "pll",
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1631  			.uA =3D 100000,
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1632  		},
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1633  		{}
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1634  	},
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1635  	.active_supply =3D (struct qcom_mss_reg_res[]) {
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1636  		{
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1637  			.supply =3D "mss",
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1638  			.uV =3D 1050000,
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1639  			.uA =3D 100000,
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1640  		},
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1641  		{}
19f902b53b47327 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1642  	},
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1643  	.proxy_clk_names =3D (char*[]){
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1644  		"xo",
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1645  		NULL
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1646  	},
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1647  	.active_clk_names =3D (char*[]){
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1648  		"iface",
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1649  		"bus",
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1650  		"mem",
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1651  		NULL
39b2410bdcdbc2f drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1652  	},
6c5a9dc2481b481 drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1653  	.need_mem_protection =3D false,
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1654  	.has_alt_reset =3D false,
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1655  	.version =3D MSS_MSM8974,
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1656  };
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1657 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1658  static const struct of_device_id q6v5_of_match[] =3D {
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1659  	{ .compatible =3D "qcom,q6v5-pil", .data =3D &msm8916_m=
ss},
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1660  	{ .compatible =3D "qcom,msm8916-mss-pil", .data =3D &ms=
m8916_mss},
7a8ffe1fcaf89bb drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2016-12-30  1661  	{ .compatible =3D "qcom,msm8974-mss-pil", .data =3D &ms=
m8974_mss},
9f058fa2efb10cd drivers/remoteproc/qcom_q6v5_pil.c Avaneesh Kumar Dwivedi  =
 2017-10-24  1662  	{ .compatible =3D "qcom,msm8996-mss-pil", .data =3D &ms=
m8996_mss},
231f67d1fb2fe80 drivers/remoteproc/qcom_q6v5_pil.c Sibi Sankar             =
 2018-05-21  1663  	{ .compatible =3D "qcom,sdm845-mss-pil", .data =3D &sdm=
845_mss},
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1664  	{ },
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1665  };
3227c876fb9a50f drivers/remoteproc/qcom_q6v5_pil.c Javier Martinez Canillas=
 2016-10-18  1666  MODULE_DEVICE_TABLE(of, q6v5_of_match);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1667 =20
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1668  static struct platform_driver q6v5_driver =3D {
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1669  	.probe =3D q6v5_probe,
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1670  	.remove =3D q6v5_remove,
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1671  	.driver =3D {
ef73c22fa025fe1 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2018-09-24  1672  		.name =3D "qcom-q6v5-mss",
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1673  		.of_match_table =3D q6v5_of_match,
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1674  	},
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1675  };
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1676  module_platform_driver(q6v5_driver);
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1677 =20
ef73c22fa025fe1 drivers/remoteproc/qcom_q6v5_mss.c Bjorn Andersson         =
 2018-09-24  1678  MODULE_DESCRIPTION("Qualcomm Self-authenticating modem r=
emoteproc driver");
051fb70fd4ea40f drivers/remoteproc/qcom_q6v5_pil.c Bjorn Andersson         =
 2016-06-20  1679  MODULE_LICENSE("GPL v2");

:::::: The code at line 1041 was first introduced by commit
:::::: 7dd8ade24dc2a35e683c5eccdb81ee9e279b0348 remoteproc: qcom: q6v5-mss:=
 Add custom dump function for modem

:::::: TO: Sibi Sankar <sibis@codeaurora.org>
:::::: CC: Bjorn Andersson <bjorn.andersson@linaro.org>

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201907240054.ZHxvhFKI%25lkp%40intel.com.

--araykq6p57ktbha5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
/hcvCBXgGgoDAA==

--araykq6p57ktbha5--
