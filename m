Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3PJ3D2AKGQE4Q7234Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F231A8E45
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 00:10:55 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id v19sf16766503ioq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 15:10:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586902254; cv=pass;
        d=google.com; s=arc-20160816;
        b=lSWhhp+rVhKWoTjcVsQzTNjqJAE9Q3sjITi0WDiVNkTZYAokbzJ8DCgK3HOchBkDjR
         jAALvX1SaCf2WEq+H7FUup0oxjOg5361Is/C6B9FnUYys9Fvdvu96nFav1I+7hc7hyqh
         4Cwg8tTo9E21/OGtj8x6kM4xcpSZVaJ3Q2jFb7dMv59w9mlDn7A2Ug/vRmlC560RKHyF
         +OUOoBiQD6EaeofTIVHiA+CC2Ztu45myOwT/+s2pJZ0RKDj0WZahaFXCIAdBKy8HzI69
         sr51lyVEEbQ8x8PPseuS6h7Phs4D7e9SFEAcCFDttVs7t9Bluo+pTOegHx+nH4qW7epn
         DvWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=jIh9qvlzv5uxTZmcSZAuJjTiJqLMe/vNLRghp93sQbQ=;
        b=tdg2BvAmjdMCEzxlYiCIu+lQAEC4/cKiImjXf/JutvF0Id3ixTlQGisP22u1nvkQKK
         uiWGSOBj/BSkVNSGH9/6Xwd67j9rAVZG0yR/1lPQtYWZBoT537mBiRBSa+Ce9o4hbdGd
         Y2vu0eOKcsCzBjXSaKOIFhbPA8RUgarypZ2tULrr0UAhFHyNgeUy70MwhPGalsZSFWIj
         Ix2gNGzWjViVdOw93zzLJxIDPuGwYzgLk+DWIUM6YD64QIzj3/wAqM8AK4UU9L7jEOy8
         Q0REJknwezgGCQVmHBkV61lxDUK1tkOHdwVv4GdVXvw06y7WQJM6fYtQrHv89YqOf1vd
         tYnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jIh9qvlzv5uxTZmcSZAuJjTiJqLMe/vNLRghp93sQbQ=;
        b=XC52siTdD6tFtNO7wonDxc0AXr+Dp8LJrgqY+uZEtyrOljYYGkxxO67OunoEHRCW1u
         +ClziFpSzASV38QvgqTy5ICk3iDJGaApkiL0pA2sbOvV9ANzig85gKV1rlqsiWLrK0Ed
         pUGGMotCujtQJsC3FI4hDuZCWs7WWbrfpYCihOofZ8/2MGwoCpOsS4amLtqCK3KxFJ46
         GAPNHmNDrYMbRTNuSyuby3jIPJf+yV//eSDw2vhb4BIkJPcgCLG9Ovv0hS4JFvPN09hj
         HSHocjy/hLCAl+12q5ox86YTmiwtqWNj6dw33DMG82Hvrfsg4rgpgk3KeLWoae+5RIiW
         zx3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jIh9qvlzv5uxTZmcSZAuJjTiJqLMe/vNLRghp93sQbQ=;
        b=mbyR2janr0fxbfIy/miYc4nswLbyTjPl8G0/qBYVaxCDC7TZ4n6HkQDJ7QyTNXa2UY
         RnHHYXoKSigc14LXJUWThXEuKb9RJeeoBCGkfl4Lwfjc6r1XEUZF33OKoSPplJzlAKkZ
         jOfLnPWA2HVfhD/jp/Z0Ch+pSNBqvAzAjFHUzjB5oalZxrO3xbeHFHgGoG5h9c7ua6Jb
         CqG9RVBQo8ISSRmZaw0VyhwyQXcfZs1pnWqwfY08UGeI7NI5cUFh/ICZgSebLhLjTFjX
         cWQF9ZG1PklKU4Ey+FWMMZqb6hhpMHrLJZlBaMGmqu8AlTjsbOVRUCiniQwAupBHV2nW
         2U+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua+9OOLYoX/1oGqEIjdCF7kLJJvpKtdvd0codRZCHeACAWQUgnL
	CNOrN8FHvwe2sqGGMQ+UMBE=
X-Google-Smtp-Source: APiQypI2EFu2FFqmntR73aXIttBiXiu8ux7XZqXl1OlCS2yYL400JpUZN9OBoqoKqonPkAzVE2g62Q==
X-Received: by 2002:a5d:9a94:: with SMTP id c20mr22835368iom.166.1586902253758;
        Tue, 14 Apr 2020 15:10:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:3007:: with SMTP id q7ls1056525jaq.4.gmail; Tue, 14 Apr
 2020 15:10:53 -0700 (PDT)
X-Received: by 2002:a02:650f:: with SMTP id u15mr23496038jab.53.1586902253219;
        Tue, 14 Apr 2020 15:10:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586902253; cv=none;
        d=google.com; s=arc-20160816;
        b=Ljb0BpqTNDSUvBARPpi1kV7nV2kVm2QME0pDkTHvOtGlj8wG41vGPHxvMr1cas2Fr/
         i59KcgYZfL98umLfSx4gpWG2MDReXQy1ZoV3BaPG6U+q7zzSKrOEKrilWGkNSdQhNjUB
         tMnbHioUM+xzQtUGtg7BbaqdHUaUydXat8abj4v/t4d84OUj94guMmsH9KVjUFBDmckW
         m2TcQVDkT3UPc2+yn4qZwqPCUxdT8nv4TFT5Tl4g6jJzWB7FjO8FMq4HaAopb4wihtpj
         fj5Flv6eugXc/aRFc+oJ/GUsA3jsgeJ1f1//jELNsoUh2THvQkl5ssrHaEMDNsJWvgyS
         UPpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=jE+Nave5U5OKziKv2GsQ4SFk+pnKqdUMmvlFcQ71tdY=;
        b=dgdUNV5qhkMToK/bshZYBUd3rhTCEVwqZDstE/+0j6UVirjPq6HEV5NdWRpqfPC+yc
         ssbPHnAaGWRahsddqaDFFBH0sg+e+WNp/vC7P3NioKpK6lyAZcJ7/cc1zG50/4EHbnQT
         vq8caHbIjoDeCBwTsCZL9IkyFQn3zZVngtgjnvQvj06WYEI9+9FNAiLhtpBbWpX6FNmp
         5mRz8aaTyuLkuKG1yd84erANGf1kvAhi874gfIatNg/cp2wLy9DTEyJ3sh996lHowUpx
         MeQnNPrHOQ0W91CRbEzuzvdevT127RvBRRRDLAVC6cYgEsHXMMudO3CVwBpAFEH4O2FE
         Ax+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id v22si112807ioj.2.2020.04.14.15.10.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Apr 2020 15:10:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: 88huj7FWIRiUEWwCAJcUF7Llk3mPkno8hXg/lpUanzSsQQh0RA/TfKWVfDM/z6xX6+APXBC2yH
 rwRR1TIsAeTQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2020 15:10:47 -0700
IronPort-SDR: u6ZI0SIWRJrmhyee4JCihfoduHDasKLozgZiSKBWmZF+Hp7CFMEbZnLa8gNF2XSamsigf2WiaF
 9EUE+6Of5RuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; 
   d="gz'50?scan'50,208,50";a="245536242"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 14 Apr 2020 15:10:33 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jOTlG-000BHu-Fu; Wed, 15 Apr 2020 06:10:30 +0800
Date: Wed, 15 Apr 2020 06:09:47 +0800
From: kbuild test robot <lkp@intel.com>
To: cros-kernel-buildreports@googlegroups.com,
	Guenter Roeck <groeck@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [chrome-os:chromeos-4.19 21350/21402]
 drivers/misc/echo/echo.c:384:27: error: equality comparison with extraneous
 parentheses
Message-ID: <202004150637.9F62YI28%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel chr=
omeos-4.19
head:   e747fc8dfce13c501be9b7032a5a3d8249bc27ab
commit: 12bd892cc0bd4a700dd41aa4b0d1e0cfc128e3e4 [21350/21402] CHROMIUM: Me=
rge 'v4.19.114' into chromeos-4.19
config: x86_64-randconfig-c002-20200414 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f3da6b=
7ab5698bb0b9bd208972115dbcbbc59f27)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 12bd892cc0bd4a700dd41aa4b0d1e0cfc128e3e4
        # save the attached .config to linux build tree
        COMPILER=3Dclang make.cross ARCH=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/misc/echo/echo.c:384:27: error: equality comparison with extrane=
ous parentheses [-Werror,-Wparentheses-equality]
           if ((ec->nonupdate_dwell =3D=3D 0)) {
                ~~~~~~~~~~~~~~~~~~~~^~~~
   drivers/misc/echo/echo.c:384:27: note: remove extraneous parentheses aro=
und the comparison to silence this warning
           if ((ec->nonupdate_dwell =3D=3D 0)) {
               ~                    ^   ~
   drivers/misc/echo/echo.c:384:27: note: use '=3D' to turn this equality c=
omparison into an assignment
           if ((ec->nonupdate_dwell =3D=3D 0)) {
                                    ^~
                                    =3D
   1 error generated.
--
>> net/decnet/dn_dev.c:1366:10: error: address of array 'dev->name' will al=
ways evaluate to 'true' [-Werror,-Wpointer-bool-conversion]
                                   dev->name ? dev->name : "???",
                                   ~~~~~^~~~ ~
   1 error generated.
--
>> drivers/regulator/da903x.c:395:2: error: division by zero is undefined [=
-Werror,-Wdivision-by-zero]
           DA9030_LDO(13, 2100, 2100, 0, INVAL, 0, 0, RCTL11, 3), /* fixed =
@2.1V */
           ^                          ~
   drivers/regulator/da903x.c:359:2: note: expanded from macro 'DA9030_LDO'
           DA903x_LDO(DA9030, _id, min, max, step, vreg, shift, nbits, ereg=
, ebit)
           ^                                 ~~~~
   drivers/regulator/da903x.c:320:39: note: expanded from macro 'DA903x_LDO=
'
                   .n_voltages =3D (step) ? ((max - min) / step + 1) : 1,  =
  \
                                                       ^ ~~~~
   drivers/regulator/da903x.c:415:2: error: division by zero is undefined [=
-Werror,-Wdivision-by-zero]
           DA9034_LDO(5, 3100, 3100, 0, INVAL, 0, 0, OVER3, 7), /* fixed @3=
.1V */
           ^                         ~
   drivers/regulator/da903x.c:356:2: note: expanded from macro 'DA9034_LDO'
           DA903x_LDO(DA9034, _id, min, max, step, vreg, shift, nbits, ereg=
, ebit)
           ^                                 ~~~~
   drivers/regulator/da903x.c:320:39: note: expanded from macro 'DA903x_LDO=
'
                   .n_voltages =3D (step) ? ((max - min) / step + 1) : 1,  =
  \
                                                       ^ ~~~~
   2 errors generated.
--
   In file included from drivers/scsi/osd/osd_uld.c:60:
   In file included from include/scsi/osd_initiator.h:18:
>> include/scsi/osd_types.h:31:21: error: 'weak' attribute only applies to =
variables, functions, and classes [-Werror,-Wignored-attributes]
   static const struct __weak osd_obj_id osd_root_object =3D {0, 0};
                       ^
   include/linux/compiler_types.h:219:33: note: expanded from macro '__weak=
'
   #define __weak                  __attribute__((weak))
                                                  ^
   1 error generated.

vim +384 drivers/misc/echo/echo.c

10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
273 =20
9d8f2d5dfbcc9d drivers/staging/echo/echo.c Tzafrir Cohen       2008-10-12  =
274  int16_t oslec_update(struct oslec_state *ec, int16_t tx, int16_t rx)
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
275  {
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
276  	int32_t echo_value;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
277  	int clean_bg;
3ec50be588d773 drivers/staging/echo/echo.c Jesper Juhl         2012-06-27  =
278  	int tmp;
3ec50be588d773 drivers/staging/echo/echo.c Jesper Juhl         2012-06-27  =
279  	int tmp1;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
280 =20
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
281  	/*
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
282  	 * Input scaling was found be required to prevent problems when tx
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
283  	 * starts clipping.  Another possible way to handle this would be the
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
284  	 * filter coefficent scaling.
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
285  	 */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
286 =20
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
287  	ec->tx =3D tx;
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
288  	ec->rx =3D rx;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
289  	tx >>=3D 1;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
290  	rx >>=3D 1;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
291 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
292  	/*
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
293  	 * Filter DC, 3dB point is 160Hz (I think), note 32 bit precision
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
294  	 * required otherwise values do not track down to 0. Zero at DC, Pole
196e76e86a3a90 drivers/staging/echo/echo.c David Rowe          2009-08-23  =
295  	 * at (1-Beta) on real axis.  Some chip sets (like Si labs) don't
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
296  	 * need this, but something like a $10 X100P card does.  Any DC reall=
y
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
297  	 * slows down convergence.
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
298  	 *
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
299  	 * Note: removes some low frequency from the signal, this reduces the
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
300  	 * speech quality when listening to samples through headphones but ma=
y
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
301  	 * not be obvious through a telephone handset.
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
302  	 *
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
303  	 * Note that the 3dB frequency in radians is approx Beta, e.g. for Be=
ta
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
304  	 * =3D 2^(-3) =3D 0.125, 3dB freq is 0.125 rads =3D 159Hz.
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
305  	 */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
306 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
307  	if (ec->adaption_mode & ECHO_CAN_USE_RX_HPF) {
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
308  		tmp =3D rx << 15;
196e76e86a3a90 drivers/staging/echo/echo.c David Rowe          2009-08-23  =
309 =20
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
310  		/*
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
311  		 * Make sure the gain of the HPF is 1.0. This can still
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
312  		 * saturate a little under impulse conditions, and it might
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
313  		 * roll to 32768 and need clipping on sustained peak level
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
314  		 * signals. However, the scale of such clipping is small, and
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
315  		 * the error due to any saturation should not markedly affect
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
316  		 * the downstream processing.
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
317  		 */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
318  		tmp -=3D (tmp >> 4);
196e76e86a3a90 drivers/staging/echo/echo.c David Rowe          2009-08-23  =
319 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
320  		ec->rx_1 +=3D -(ec->rx_1 >> DC_LOG2BETA) + tmp - ec->rx_2;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
321 =20
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
322  		/*
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
323  		 * hard limit filter to prevent clipping.  Note that at this
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
324  		 * stage rx should be limited to +/- 16383 due to right shift
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
325  		 * above
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
326  		 */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
327  		tmp1 =3D ec->rx_1 >> 15;
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
328  		if (tmp1 > 16383)
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
329  			tmp1 =3D 16383;
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
330  		if (tmp1 < -16383)
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
331  			tmp1 =3D -16383;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
332  		rx =3D tmp1;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
333  		ec->rx_2 =3D tmp;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
334  	}
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
335 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
336  	/* Block average of power in the filter states.  Used for
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
337  	   adaption power calculation. */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
338 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
339  	{
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
340  		int new, old;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
341 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
342  		/* efficient "out with the old and in with the new" algorithm so
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
343  		   we don't have to recalculate over the whole block of
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
344  		   samples. */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
345  		new =3D (int)tx * (int)tx;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
346  		old =3D (int)ec->fir_state.history[ec->fir_state.curr_pos] *
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
347  		    (int)ec->fir_state.history[ec->fir_state.curr_pos];
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
348  		ec->pstates +=3D
0f51010e87636e drivers/staging/echo/echo.c David Rowe          2009-05-20  =
349  		    ((new - old) + (1 << (ec->log2taps - 1))) >> ec->log2taps;
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
350  		if (ec->pstates < 0)
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
351  			ec->pstates =3D 0;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
352  	}
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
353 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
354  	/* Calculate short term average levels using simple single pole IIRs =
*/
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
355 =20
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
356  	ec->ltxacc +=3D abs(tx) - ec->ltx;
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
357  	ec->ltx =3D (ec->ltxacc + (1 << 4)) >> 5;
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
358  	ec->lrxacc +=3D abs(rx) - ec->lrx;
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
359  	ec->lrx =3D (ec->lrxacc + (1 << 4)) >> 5;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
360 =20
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
361  	/* Foreground filter */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
362 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
363  	ec->fir_state.coeffs =3D ec->fir_taps16[0];
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
364  	echo_value =3D fir16(&ec->fir_state, tx);
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
365  	ec->clean =3D rx - echo_value;
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
366  	ec->lcleanacc +=3D abs(ec->clean) - ec->lclean;
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
367  	ec->lclean =3D (ec->lcleanacc + (1 << 4)) >> 5;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
368 =20
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
369  	/* Background filter */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
370 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
371  	echo_value =3D fir16(&ec->fir_state_bg, tx);
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
372  	clean_bg =3D rx - echo_value;
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
373  	ec->lclean_bgacc +=3D abs(clean_bg) - ec->lclean_bg;
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
374  	ec->lclean_bg =3D (ec->lclean_bgacc + (1 << 4)) >> 5;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
375 =20
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
376  	/* Background Filter adaption */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
377 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
378  	/* Almost always adap bg filter, just simple DT and energy
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
379  	   detection to minimise adaption in cases of strong double talk.
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
380  	   However this is not critical for the dual path algorithm.
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
381  	 */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
382  	ec->factor =3D 0;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
383  	ec->shift =3D 0;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06 @=
384  	if ((ec->nonupdate_dwell =3D=3D 0)) {
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
385  		int p, logp, shift;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
386 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
387  		/* Determine:
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
388 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
389  		   f =3D Beta * clean_bg_rx/P ------ (1)
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
390 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
391  		   where P is the total power in the filter states.
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
392 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
393  		   The Boffins have shown that if we obey (1) we converge
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
394  		   quickly and avoid instability.
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
395 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
396  		   The correct factor f must be in Q30, as this is the fixed
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
397  		   point format required by the lms_adapt_bg() function,
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
398  		   therefore the scaled version of (1) is:
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
399 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
400  		   (2^30) * f  =3D (2^30) * Beta * clean_bg_rx/P
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
401  		   factor      =3D (2^30) * Beta * clean_bg_rx/P     ----- (2)
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
402 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
403  		   We have chosen Beta =3D 0.25 by experiment, so:
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
404 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
405  		   factor      =3D (2^30) * (2^-2) * clean_bg_rx/P
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
406 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
407  		   (30 - 2 - log2(P))
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
408  		   factor      =3D clean_bg_rx 2                     ----- (3)
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
409 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
410  		   To avoid a divide we approximate log2(P) as top_bit(P),
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
411  		   which returns the position of the highest non-zero bit in
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
412  		   P.  This approximation introduces an error as large as a
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
413  		   factor of 2, but the algorithm seems to handle it OK.
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
414 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
415  		   Come to think of it a divide may not be a big deal on a
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
416  		   modern DSP, so its probably worth checking out the cycles
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
417  		   for a divide versus a top_bit() implementation.
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
418  		 */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
419 =20
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
420  		p =3D MIN_TX_POWER_FOR_ADAPTION + ec->pstates;
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
421  		logp =3D top_bit(p) + ec->log2taps;
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
422  		shift =3D 30 - 2 - logp;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
423  		ec->shift =3D shift;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
424 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
425  		lms_adapt_bg(ec, clean_bg, shift);
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
426  	}
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
427 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
428  	/* very simple DTD to make sure we dont try and adapt with strong
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
429  	   near end speech */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
430 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
431  	ec->adapt =3D 0;
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
432  	if ((ec->lrx > MIN_RX_POWER_FOR_ADAPTION) && (ec->lrx > ec->ltx))
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
433  		ec->nonupdate_dwell =3D DTD_HANGOVER;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
434  	if (ec->nonupdate_dwell)
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
435  		ec->nonupdate_dwell--;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
436 =20
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
437  	/* Transfer logic */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
438 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
439  	/* These conditions are from the dual path paper [1], I messed with
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
440  	   them a bit to improve performance. */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
441 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
442  	if ((ec->adaption_mode & ECHO_CAN_USE_ADAPTION) &&
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
443  	    (ec->nonupdate_dwell =3D=3D 0) &&
dc57a3ea80a85a drivers/staging/echo/echo.c Alexander Beregalov 2009-03-12  =
444  	    /* (ec->Lclean_bg < 0.875*ec->Lclean) */
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
445  	    (8 * ec->lclean_bg < 7 * ec->lclean) &&
dc57a3ea80a85a drivers/staging/echo/echo.c Alexander Beregalov 2009-03-12  =
446  	    /* (ec->Lclean_bg < 0.125*ec->Ltx) */
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
447  	    (8 * ec->lclean_bg < ec->ltx)) {
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
448  		if (ec->cond_met =3D=3D 6) {
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
449  			/*
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
450  			 * BG filter has had better results for 6 consecutive
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
451  			 * samples
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
452  			 */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
453  			ec->adapt =3D 1;
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
454  			memcpy(ec->fir_taps16[0], ec->fir_taps16[1],
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
455  			       ec->taps * sizeof(int16_t));
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
456  		} else
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
457  			ec->cond_met++;
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
458  	} else
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
459  		ec->cond_met =3D 0;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
460 =20
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
461  	/* Non-Linear Processing */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
462 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
463  	ec->clean_nlp =3D ec->clean;
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
464  	if (ec->adaption_mode & ECHO_CAN_USE_NLP) {
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
465  		/*
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
466  		 * Non-linear processor - a fancy way to say "zap small
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
467  		 * signals, to avoid residual echo due to (uLaw/ALaw)
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
468  		 * non-linearity in the channel.".
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
469  		 */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
470 =20
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
471  		if ((16 * ec->lclean < ec->ltx)) {
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
472  			/*
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
473  			 * Our e/c has improved echo by at least 24 dB (each
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
474  			 * factor of 2 is 6dB, so 2*2*2*2=3D16 is the same as
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
475  			 * 6+6+6+6=3D24dB)
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
476  			 */
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
477  			if (ec->adaption_mode & ECHO_CAN_USE_CNG) {
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
478  				ec->cng_level =3D ec->lbgn;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
479 =20
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
480  				/*
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
481  				 * Very elementary comfort noise generation.
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
482  				 * Just random numbers rolled off very vaguely
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
483  				 * Hoth-like.  DR: This noise doesn't sound
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
484  				 * quite right to me - I suspect there are some
83aa3c7bf3f04a drivers/staging/echo/echo.c Jonathan Neusch=C3=A4fer 2011-03=
-01  485  				 * overflow issues in the filtering as it's too
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
486  				 * "crackly".
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
487  				 * TODO: debug this, maybe just play noise at
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
488  				 * high level or look at spectrum.
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
489  				 */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
490 =20
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
491  				ec->cng_rndnum =3D
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
492  				    1664525U * ec->cng_rndnum + 1013904223U;
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
493  				ec->cng_filter =3D
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
494  				    ((ec->cng_rndnum & 0xFFFF) - 32768 +
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
495  				     5 * ec->cng_filter) >> 3;
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
496  				ec->clean_nlp =3D
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
497  				    (ec->cng_filter * ec->cng_level * 8) >> 14;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
498 =20
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
499  			} else if (ec->adaption_mode & ECHO_CAN_USE_CLIP) {
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
500  				/* This sounds much better than CNG */
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
501  				if (ec->clean_nlp > ec->lbgn)
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
502  					ec->clean_nlp =3D ec->lbgn;
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
503  				if (ec->clean_nlp < -ec->lbgn)
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
504  					ec->clean_nlp =3D -ec->lbgn;
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
505  			} else {
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
506  				/*
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
507  				 * just mute the residual, doesn't sound very
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
508  				 * good, used mainly in G168 tests
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
509  				 */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
510  				ec->clean_nlp =3D 0;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
511  			}
4460a860f72898 drivers/staging/echo/echo.c J.R. Mauro          2008-10-20  =
512  		} else {
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
513  			/*
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
514  			 * Background noise estimator.  I tried a few
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
515  			 * algorithms here without much luck.  This very simple
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
516  			 * one seems to work best, we just average the level
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
517  			 * using a slow (1 sec time const) filter if the
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
518  			 * current level is less than a (experimentally
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
519  			 * derived) constant.  This means we dont include high
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
520  			 * level signals like near end speech.  When combined
49bb9e6d753469 drivers/staging/echo/echo.c Greg Kroah-Hartman  2009-08-10  =
521  			 * with CNG or especially CLIP seems to work OK.
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
522  			 */
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
523  			if (ec->lclean < 40) {
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
524  				ec->lbgn_acc +=3D abs(ec->clean) - ec->lbgn;
0c474826cfdd24 drivers/staging/echo/echo.c Lisa Nguyen         2013-05-05  =
525  				ec->lbgn =3D (ec->lbgn_acc + (1 << 11)) >> 12;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
526  			}
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
527  		}
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
528  	}
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
529 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
530  	/* Roll around the taps buffer */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
531  	if (ec->curr_pos <=3D 0)
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
532  		ec->curr_pos =3D ec->taps;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
533  	ec->curr_pos--;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
534 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
535  	if (ec->adaption_mode & ECHO_CAN_DISABLE)
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
536  		ec->clean_nlp =3D rx;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
537 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
538  	/* Output scaled back up again to match input scaling */
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
539 =20
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
540  	return (int16_t) ec->clean_nlp << 1;
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
541  }
9d8f2d5dfbcc9d drivers/staging/echo/echo.c Tzafrir Cohen       2008-10-12  =
542  EXPORT_SYMBOL_GPL(oslec_update);
10602db812fa27 drivers/staging/echo/echo.c David Rowe          2008-10-06  =
543 =20

:::::: The code at line 384 was first introduced by commit
:::::: 10602db812fa270fc923f5e48fb47202288828f3 Staging: add echo cancelati=
on module

:::::: TO: David Rowe <david@rowetel.com>
:::::: CC: Greg Kroah-Hartman <gregkh@suse.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202004150637.9F62YI28%25lkp%40intel.com.

--VS++wcV0S1rZb1Fb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--VS++wcV0S1rZb1Fb--
