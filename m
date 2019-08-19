Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSGP5DVAKGQEZJ5EPOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 727ED91C1B
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 06:38:34 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id y5sf1301338plt.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 21:38:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566189513; cv=pass;
        d=google.com; s=arc-20160816;
        b=c3ElhjblBew9UapkotlsFnKn6vJAIWCqDvRzgAsIpzjM5qGqk11WHVHfmAYxx0shhh
         jPbrZCn35t0d/pORNMkMBH5FVKVJw4m2zCYSWbQPzbbESpWaxBL1JtKg8Cul6xexek7R
         yn9RRNlo+thYcT1yUlDNbcTP/I1y53nwQygmg6S6nc7xhe1F7FNklofZoYwt4ioHsZNg
         J0Z8eYOQo/OfHPQfbzvI2dqmNJV3CxoB1D0Qkf1buV9jNvlNs449gTFgKL9q5sBPbTtA
         jRuw+NjmXhYhnB1OGG8WcDW/xt0193DgudImRdHOWjL1jlQbXtcgXAvYaU8MtqlyIE15
         hudQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=JvtYw4dxQ52iTqF63raHuDA+HWyHxpXk29LxD7rmr+0=;
        b=QnrxgWfMU7JKvgs4YaTv+McGDIGAnJi7rk67uv2p9YzYIeIWMSKof5WwfqOYxWFhz1
         TpiXvbCMarIipKG5ZHS8aR9PZBDKeS6Mbd5t3R80yygXlTekfPPuxpaCTltj0bVID+BX
         THKdXaJ9RdXXNPyugEeejhpcJPj7zTVTmLxOxRAkDqRgkCR43QeNuj5O+YTsAHXRLFkL
         9mZDl2h2W3oul5zHECO1ZDkIqU7KSB2zXoNA3rewHfaMHEQsO1RCmHrxOy/MBkW7CIB7
         yvO0nmwFzeyIIDFnAz9j/3WcIeMe0ZDxwsgsS6wd4BEFhMzsPWuKC5b5L+kzRITy72h/
         aoJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JvtYw4dxQ52iTqF63raHuDA+HWyHxpXk29LxD7rmr+0=;
        b=Vf6Y3layUPMfxjt6s6C9QQF5+PuYdeyWDVMvZw1eBzy0EdOypRCou+rzhQpcPKg7R2
         df+9uTNhqiIDjpioAbFg+JkpUKA/jCf5bA2k8GkOAEK/ZXMtuSVM+dac5gyqmEJGnk3I
         /yHMVxXnrLnTObh8PkBI2d5xCqvw9OHEtHdsq0Px/08W3EcDGePk0t7KASFgqYNyGZbK
         Va8nLADGSEyFxBInyjb0L2EbE+cgwEqxtAV1AM6NdwwNZDds+U83vfA1X69Aa3j97q07
         6iWCsPM4UuN2pYFLEJhX+8/8h4B0TEEBAKrgq1I24nh6KFfjO7Ou3pctKKL57yKnW9b7
         f13Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JvtYw4dxQ52iTqF63raHuDA+HWyHxpXk29LxD7rmr+0=;
        b=NSiWu1hBaKtmCjHiq76OMDZo+fKKjqkLPMOFb9qVHeqbmeW+E5mHyiWFq7uJWZqRBz
         XyYZqc8IPhrAi4ci7yDzYvVp5P2G9cOvNCE4WxVvt3tP2Gm4rj1h/6co3e8uAHrOllMy
         f0KSG+2kGGznspQBK+Ty52tChneBtJfGt+ZY9k+o0QQcXYEGdu8NI9fVfIWnsSPtxA1y
         Q/twcFMclqSp0lTBoRkwLtXMsHuOoRlyftOq2LSxmVmXGkSSjNqFc2XjhIiMN61Np17h
         +AgjYD9v4N9t16J/93XxnNge0q9n473XbqiZb+U2ie69TYErc6LWjwTHdWikHJwbwNTE
         P3Zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUfJJmYYmfiLnRnx2vJi8TpABNSl1lJtF7IF4MWUbqqExJiqbm/
	W8yqSWRCzvIF9pt5mbvsikA=
X-Google-Smtp-Source: APXvYqzU3FdEZGY8aCz5aJT+83VOoC05x24muYr5pAemtpgDx1P0aZfBUtHeRB7hRMplPURo5DDCOg==
X-Received: by 2002:a17:902:b591:: with SMTP id a17mr21192146pls.189.1566189512858;
        Sun, 18 Aug 2019 21:38:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:17eb:: with SMTP id q98ls3036786pja.1.gmail; Sun, 18
 Aug 2019 21:38:32 -0700 (PDT)
X-Received: by 2002:a17:902:a58c:: with SMTP id az12mr21252244plb.129.1566189512440;
        Sun, 18 Aug 2019 21:38:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566189512; cv=none;
        d=google.com; s=arc-20160816;
        b=ZjBrBTpleJ/53XRSK9A9Fx+JNMim38RvEpNBVI1IpSGhRo5Aw+pkd8xBZrtVX6d2Au
         JoG+bGpoJ25G4ivpEA5vsaQhch0ZmpPOuy29S+HVy9s1fCOls/gcxPG06MfTe0MoKucx
         S3YgzNWn/gTXr1ZKE6DOnIlY92rqhHG5biX1yx/n/jRWRdfFOTwAPc45T5G/aAlVZFZa
         Zac4Ypon1/ECWFoUmOOEI+WUZJiFcIakhLUQnwPLXEoGcx2pTL61ZZN/jj35kt3+8/B9
         j4DlAFgZeJVKSJLOD0qw2zFsneKdlGLDuPz8dlIbi15DdD/5pX8hGjKSJBwfVaGqiIIe
         sHeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date;
        bh=+N97I5qHk/CRXiiF8wq4yj9rUDliRIwElvGALJeyMAw=;
        b=vpJWrqn1WGlpiddbyzILKBXQ/WZY45SCr2uUujn83AOjRsrW2NywQuP10i9yCx/c4C
         mq96xckIEeKMj6hqNE4lUkIYmV9e6WIQX3jWHWB8QCr+uSbRVj8HwwUluD0LI3lClV+u
         d58rBXAo8VGR/Z0ECHtXSrVBaRd3gKHG3oJtnfUCujbRhOmVaqu0ueY4heNITD3WZToX
         bDAXEAeQZMfZMao6d6lSxztZnTm5+B9PHnIPt+eUNOvQB7EkIaXRYWSxzgGHLnIEJgRU
         HWpoX351VnHFThqlxSucjL37Dn0ohSELZH9aSgMsY2zTe/T7XtDu5FzYvbPOBnwqbxix
         ZmqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id a79si568642pfa.5.2019.08.18.21.38.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Aug 2019 21:38:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Aug 2019 21:38:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; 
   d="gz'50?scan'50,208,50";a="378069930"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 18 Aug 2019 21:38:30 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hzZR7-000HHm-Jg; Mon, 19 Aug 2019 12:38:29 +0800
Date: Mon, 19 Aug 2019 12:38:14 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [pinchartl-media:omapdrm/edid 8/8]
 drivers/gpu/drm/drm_edid.c:5259:8: warning: variable 'ret' is used
 uninitialized whenever 'if' condition is true
Message-ID: <201908191201.R0MZbion%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qcxnz76nlndwhhqw"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--qcxnz76nlndwhhqw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@01.org
TO: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

tree:   git://linuxtv.org/pinchartl/media.git omapdrm/edid
head:   20859175bc5ecb86ea98068a56e3866c76335f95
commit: 20859175bc5ecb86ea98068a56e3866c76335f95 [8/8] [WIP] drm/edid: Deco=
uple EDID retrieval from connector
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f=
77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 20859175bc5ecb86ea98068a56e3866c76335f95
        # save the attached .config to linux build tree
        make.cross ARCH=3Darm64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/drm_edid.c:5259:8: warning: variable 'ret' is used unini=
tialized whenever 'if' condition is true [-Wsometimes-uninitialized]
                           if (get_edid_block(data, block, j, EDID_LENGTH))
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/drm_edid.c:5308:9: note: uninitialized use occurs here
           return ret;
                  ^~~
   drivers/gpu/drm/drm_edid.c:5259:4: note: remove the 'if' if its conditio=
n is always false
                           if (get_edid_block(data, block, j, EDID_LENGTH))
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/drm_edid.c:5251:6: warning: variable 'ret' is used unini=
tialized whenever 'if' condition is true [-Wsometimes-uninitialized]
           if (!new)
               ^~~~
   drivers/gpu/drm/drm_edid.c:5308:9: note: uninitialized use occurs here
           return ret;
                  ^~~
   drivers/gpu/drm/drm_edid.c:5251:2: note: remove the 'if' if its conditio=
n is always false
           if (!new)
           ^~~~~~~~~
   drivers/gpu/drm/drm_edid.c:5231:7: warning: variable 'ret' is used unini=
tialized whenever 'if' condition is true [-Wsometimes-uninitialized]
                   if (get_edid_block(data, edid->data, 0, EDID_LENGTH))
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/drm_edid.c:5308:9: note: uninitialized use occurs here
           return ret;
                  ^~~
   drivers/gpu/drm/drm_edid.c:5231:3: note: remove the 'if' if its conditio=
n is always false
                   if (get_edid_block(data, edid->data, 0, EDID_LENGTH))
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/drm_edid.c:5221:9: note: initialize the variable 'ret' t=
o silence this warning
           int ret;
                  ^
                   =3D 0
   3 warnings generated.

vim +5259 drivers/gpu/drm/drm_edid.c

20859175bc5ecb Laurent Pinchart 2019-08-19  5211 =20
20859175bc5ecb Laurent Pinchart 2019-08-19  5212  static int __drm_do_get_e=
did(struct drm_device *dev, const char *name,
20859175bc5ecb Laurent Pinchart 2019-08-19  5213  			     struct drm_edid *=
edid,
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5214  	int (*get_edid_block)(vo=
id *data, u8 *buf, unsigned int block,
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5215  			      size_t len),
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5216  	void *data)
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5217  {
20859175bc5ecb Laurent Pinchart 2019-08-19  5218  	unsigned int valid_exten=
sions;
20859175bc5ecb Laurent Pinchart 2019-08-19  5219  	unsigned int i, j;
20859175bc5ecb Laurent Pinchart 2019-08-19  5220  	u8 *new;
20859175bc5ecb Laurent Pinchart 2019-08-19  5221  	int ret;
83dd000865eaae Lespiau, Damien  2013-08-19  5222 =20
20859175bc5ecb Laurent Pinchart 2019-08-19  5223  	edid->data =3D kmalloc(E=
DID_LENGTH, GFP_KERNEL);
20859175bc5ecb Laurent Pinchart 2019-08-19  5224  	if (!edid->data)
20859175bc5ecb Laurent Pinchart 2019-08-19  5225  		return -ENOMEM;
83dd000865eaae Lespiau, Damien  2013-08-19  5226 =20
20859175bc5ecb Laurent Pinchart 2019-08-19  5227  	edid->num_blocks =3D 1;
f1781e9bb2dd23 Ville Syrj=C3=A4l=C3=A4    2017-11-13  5228 =20
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5229  	/* base block fetch */
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5230  	for (i =3D 0; i < 4; i++=
) {
20859175bc5ecb Laurent Pinchart 2019-08-19  5231  		if (get_edid_block(data=
, edid->data, 0, EDID_LENGTH))
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5232  			goto out;
20859175bc5ecb Laurent Pinchart 2019-08-19  5233  		if (drm_edid_block_vali=
d(edid->data, 0, false, &edid->corrupt))
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5234  			break;
20859175bc5ecb Laurent Pinchart 2019-08-19  5235  		if (i =3D=3D 0 && drm_e=
did_is_zero(edid->data, EDID_LENGTH)) {
20859175bc5ecb Laurent Pinchart 2019-08-19  5236  			edid->null_counter++;
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5237  			goto carp;
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5238  		}
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5239  	}
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5240  	if (i =3D=3D 4)
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5241  		goto carp;
4eed4a0a4ac318 Damien Lespiau   2013-09-25  5242 =20
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5243  	/* if there's no extensi=
ons, we're done */
20859175bc5ecb Laurent Pinchart 2019-08-19  5244  	valid_extensions =3D edi=
d->data[0x7e] + 1;
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5245  	if (valid_extensions =3D=
=3D 0)
20859175bc5ecb Laurent Pinchart 2019-08-19  5246  		return 0;
20859175bc5ecb Laurent Pinchart 2019-08-19  5247 =20
20859175bc5ecb Laurent Pinchart 2019-08-19  5248  	edid->num_blocks +=3D va=
lid_extensions;
4eed4a0a4ac318 Damien Lespiau   2013-09-25  5249 =20
20859175bc5ecb Laurent Pinchart 2019-08-19  5250  	new =3D krealloc(edid->d=
ata, edid->num_blocks * EDID_LENGTH, GFP_KERNEL);
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5251  	if (!new)
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5252  		goto out;
20859175bc5ecb Laurent Pinchart 2019-08-19  5253  	edid->data =3D new;
83dd000865eaae Lespiau, Damien  2013-08-19  5254 =20
20859175bc5ecb Laurent Pinchart 2019-08-19  5255  	for (j =3D 1; j < edid->=
num_blocks; j++) {
20859175bc5ecb Laurent Pinchart 2019-08-19  5256  		u8 *block =3D edid->dat=
a + j * EDID_LENGTH;
83dd000865eaae Lespiau, Damien  2013-08-19  5257 =20
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5258  		for (i =3D 0; i < 4; i+=
+) {
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18 @5259  			if (get_edid_block(dat=
a, block, j, EDID_LENGTH))
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5260  				goto out;
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5261  			if (drm_edid_block_val=
id(block, j, false, NULL))
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5262  				break;
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5263  		}
83dd000865eaae Lespiau, Damien  2013-08-19  5264 =20
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5265  		if (i =3D=3D 4)
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5266  			valid_extensions--;
83dd000865eaae Lespiau, Damien  2013-08-19  5267  	}
40d9b043a89e23 Dave Airlie      2014-10-20  5268 =20
20859175bc5ecb Laurent Pinchart 2019-08-19  5269  	if (valid_extensions !=
=3D edid->num_blocks - 1) {
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5270  		u8 *base;
40d9b043a89e23 Dave Airlie      2014-10-20  5271 =20
20859175bc5ecb Laurent Pinchart 2019-08-19  5272  		connector_bad_edid(dev,=
 name, edid);
40d9b043a89e23 Dave Airlie      2014-10-20  5273 =20
20859175bc5ecb Laurent Pinchart 2019-08-19  5274  		edid->data[EDID_LENGTH-=
1] +=3D edid->data[0x7e] - valid_extensions;
20859175bc5ecb Laurent Pinchart 2019-08-19  5275  		edid->data[0x7e] =3D va=
lid_extensions;
20859175bc5ecb Laurent Pinchart 2019-08-19  5276  		edid->num_blocks =3D va=
lid_extensions + 1;
40d9b043a89e23 Dave Airlie      2014-10-20  5277 =20
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5278  		new =3D kmalloc_array(v=
alid_extensions + 1, EDID_LENGTH,
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5279  				    GFP_KERNEL);
20859175bc5ecb Laurent Pinchart 2019-08-19  5280  		if (!new) {
20859175bc5ecb Laurent Pinchart 2019-08-19  5281  			ret =3D -ENOMEM;
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5282  			goto out;
20859175bc5ecb Laurent Pinchart 2019-08-19  5283  		}
40d9b043a89e23 Dave Airlie      2014-10-20  5284 =20
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5285  		base =3D new;
20859175bc5ecb Laurent Pinchart 2019-08-19  5286  		for (i =3D 0; i < edid-=
>num_blocks; i++) {
20859175bc5ecb Laurent Pinchart 2019-08-19  5287  			u8 *block =3D edid->da=
ta + i * EDID_LENGTH;
40d9b043a89e23 Dave Airlie      2014-10-20  5288 =20
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5289  			if (!drm_edid_block_va=
lid(block, i, false, NULL))
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5290  				continue;
40d9b043a89e23 Dave Airlie      2014-10-20  5291 =20
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5292  			memcpy(base, block, ED=
ID_LENGTH);
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5293  			base +=3D EDID_LENGTH;
40d9b043a89e23 Dave Airlie      2014-10-20  5294  		}
40d9b043a89e23 Dave Airlie      2014-10-20  5295 =20
20859175bc5ecb Laurent Pinchart 2019-08-19  5296  		kfree(edid->data);
20859175bc5ecb Laurent Pinchart 2019-08-19  5297  		edid->data =3D new;
5e546cd5b3bc76 Dave Airlie      2016-05-03  5298  	}
5e546cd5b3bc76 Dave Airlie      2016-05-03  5299 =20
20859175bc5ecb Laurent Pinchart 2019-08-19  5300  	return 0;
5e546cd5b3bc76 Dave Airlie      2016-05-03  5301 =20
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5302  carp:
20859175bc5ecb Laurent Pinchart 2019-08-19  5303  	connector_bad_edid(dev, =
name, edid);
20859175bc5ecb Laurent Pinchart 2019-08-19  5304  	ret =3D -EINVAL;
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5305  out:
20859175bc5ecb Laurent Pinchart 2019-08-19  5306  	kfree(edid->data);
20859175bc5ecb Laurent Pinchart 2019-08-19  5307  	edid->data =3D NULL;
20859175bc5ecb Laurent Pinchart 2019-08-19  5308  	return ret;
06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5309  }
4b0d5c9d60903c Laurent Pinchart 2019-08-18  5310 =20

:::::: The code at line 5259 was first introduced by commit
:::::: 06a0c9cbe5e5ff227b29a72138e69b6a0449e3d1 drm/edid: Move functions to=
 avoid forward declaration

:::::: TO: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
:::::: CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

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
clang-built-linux/201908191201.R0MZbion%25lkp%40intel.com.

--qcxnz76nlndwhhqw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
CUH/C9N50+s5DwMA

--qcxnz76nlndwhhqw--
