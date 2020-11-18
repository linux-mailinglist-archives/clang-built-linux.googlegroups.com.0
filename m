Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQGK2H6QKGQEANHUHTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0448F2B72D0
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 01:05:22 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id l7sf50138pgq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 16:05:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605657920; cv=pass;
        d=google.com; s=arc-20160816;
        b=OrghOq46H+vp7jeaGyc0avNfXATeMFfjRBwD+5sJMuVtP2G5N2HD5SNgdZtE3FozoN
         +R33SnwniIWlQW3VjA3xXNGmPNtNqJHJJUrCiUs1yoUPibnk1TRDu9d3x0TxnE8WdP8N
         CiECsXJzpDXtqgdBi9cSPkM5Yjj2z5FKE2kyIFTh5eVjFycrcrZAaDzXs64qs26zYXfk
         DHjRiIxUjxF4tpV9sLAAESSQfpBKYs9oQHRrPHy0WtxSshWSiRaKCdxfWHHAyTSxfdIh
         F04r26JytF1J2+hOqNGYV5rBFY1SdHKNobH7D99eHtXdaySOZWDyGu7U4kiIccVaM3bQ
         NzzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=l2fUgBTS8yF/eATnwbAYDA130CUgKOnw1f3U0+IFIqQ=;
        b=sHbeKA+RWkcgLgGRgyFfFiUcacULZUnH9RX8UdqEdc6hkENe0YOu4bTRdpLQJ3yURt
         uVIexavvrP7fdc9Sxk/aL8dX8cpXUO/FF27GWW+gUYixScC8d27qyijANKdQ13iL0tmy
         +b03DuskaOzNTmisRmnHLoPrqCdAIcFLFMVY7W1752+bLea8fROY8FAJQoFuUdjUitru
         yfthPu88tIatgAniO4wLePBjnddzTjdrWYUsw6lRY/fcBhSmnu6HgAL3Ju3fa6zumIT5
         XbafG3yuFG7SZ/XQqXQmfZaAl+NrZRnsG8rbWrX0TeMq7ExBEx1BKI5ZuXA/yHLDme3d
         +CYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l2fUgBTS8yF/eATnwbAYDA130CUgKOnw1f3U0+IFIqQ=;
        b=F65Za73RYzzzgBQJjS7UHCjY2bYPv4hm7H+zQ+tKYm8OcEbLQH2WUyrfJuP6kgDyT3
         laYEbanppBLeqflsEv+NxBo2S0UGfKpWOqYDxJAUYrxxSa6AfiS81jBCIKA+yUC6bzFZ
         1kQvDPDNFOlh+BEpbr3OsANYjDKsPxAwsJBZD3Np5i7N9JAZCNJEkuh08+uwdHihl1zX
         e0XE8QUeTuptXLuKcc6pUONj6HKsOiqkq5s0KqXZn6szj2K15fClqSVM18kGTXo7yFRO
         tzyVLR95lvItakbmyG18HYJNabi2jIhj52ncZLP9jVpVUqaJPJANMyXp/nw714EuazIZ
         JmBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l2fUgBTS8yF/eATnwbAYDA130CUgKOnw1f3U0+IFIqQ=;
        b=F7t0Gi8by5oF9twYFTSgmhrJvA8PjrbLTsEYyR5Agx1TLsvFyglhPE5oC9v5FXWSHt
         6kIfRq/KXLN8ALZlqDLn6Szi2nuo5kBDEX4qlqg94fSjhk1pByFZz4D3XJ4EtZsVjAgb
         IGNDrcvQE1eBtwz+u+ao9yigfsrOSa9YncQNK0CvhImmAg2BXsVBCeJwewFFUXtrqHcx
         Rxz0VRGUOJmGJVih2bAnsdKtv0yILiIi4HCa+yqXD/lBZt20K/rxO0S36Ar+/aBSr/B1
         kHRwvHKOYhEvwku8A+tF9KkWXPCBRfsZt1QeFExOW8GdwbYE/fCRrE7sHMZ8oqAtSnpo
         VFQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XokMsjfFnpsaK4/3pdKK77NWrAClhF2i5G+dc5A5YaTvp9irJ
	UDGSVGIHlf25izgpkGwPfrQ=
X-Google-Smtp-Source: ABdhPJyeuYw4rCQVEmMsUnIOg403+gPn5xaTYhsxhFgSx9ECk2/Rzc1wt4ZQ8lhAC/v1aS6Hkr+dfQ==
X-Received: by 2002:a62:8685:0:b029:18b:9e0e:2ec1 with SMTP id x127-20020a6286850000b029018b9e0e2ec1mr1750587pfd.51.1605657920573;
        Tue, 17 Nov 2020 16:05:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ce83:: with SMTP id y125ls936022pfg.7.gmail; Tue, 17 Nov
 2020 16:05:20 -0800 (PST)
X-Received: by 2002:a62:ac19:0:b029:18b:cfc9:1ea5 with SMTP id v25-20020a62ac190000b029018bcfc91ea5mr1769808pfe.45.1605657919812;
        Tue, 17 Nov 2020 16:05:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605657919; cv=none;
        d=google.com; s=arc-20160816;
        b=I2YEi8JZDqYd+Muw0/HPMRtG+Kos1XFtBEXvz4wflTsIMELwQzUKK8yxoKOaWklOKn
         acynPJVyLPMzH0xxOnvGdangzfdK2LV+ZdiFeTcS1AMuqDvsabEc9k9ErzaUblhwEzZF
         cSCxck0hk9+CR5yQB23ytZgkyUPpS+aZxXZOfTFe7WLN/AQFWKT5WJ2lXJAsa5bAuTFm
         tCKtcnqs2T+JBYK4aU7/BWJJp42/PVypEMwtjZV0FfyGEQzdZAZQDOKYoHzxQffLl71Q
         dx2MN/97gtaODKxDK5qT41t/26UCZtwO+ODFb1L640aELGBLpEF/TLYrkX8mpLfKwJyE
         xg3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=FhDrhi72X80on8Sony2FIVw14IDgnTyAgFSs3AX8Ftw=;
        b=Qnm0OpKZ1Ls4o3qDl1xQ/e47sTEA/BT5lTTH4FpiNMyhkkv105z1OSjOgmG1R+Jlhc
         ENG8/K58aN/xd5w6rJqkEbvfV71774Wl79LYNnNKsqtlkQeFAXYrQYQq2A2e9+Ak2+TY
         PWswbpQ45NInf6Swke7fujWk4XeUjKDZubuSxGNJ7BVD2/+2oEO8GgQdrLhKfJh4l6SM
         DO+B5kmobX8DRcv4F5tBimgFDej9zaNL1Naf+xZX8YzFNdlK9mlLFP3geBvsgXEOgSMa
         cjWw6Fw3LeDMugVi0heMmZyq4N2BW4TTiOR/FQ1YIl+HFpwoL3rBaYEwPRDBwu9q6Jij
         ry/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id x6si1117742plv.3.2020.11.17.16.05.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Nov 2020 16:05:19 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: lZuwmzuHXqCf0IhUiXk8RVsyfyeu9yy8aObJ7xec9EN2IPgKgJRfbPCO1lp5UNTQWC4a0CCZci
 aXhf1EpY9sjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="232651360"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; 
   d="gz'50?scan'50,208,50";a="232651360"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2020 16:05:17 -0800
IronPort-SDR: oLPu0lCAtFy1blpwt1cxLJ1wYNLv/uP6GGrkvb34A/qrY4s9fVOerB15r1Oh2f8P32fSASeDgr
 Pw/BkaYhzZnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; 
   d="gz'50?scan'50,208,50";a="310388069"
Received: from lkp-server01.sh.intel.com (HELO d102174a0e0d) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 17 Nov 2020 16:05:15 -0800
Received: from kbuild by d102174a0e0d with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kfAyI-0000CG-T3; Wed, 18 Nov 2020 00:05:14 +0000
Date: Wed, 18 Nov 2020 08:04:29 +0800
From: kernel test robot <lkp@intel.com>
To: Connor McAdams <conmanx360@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.de>
Subject: sound/pci/hda/patch_ca0132.c:8214:10: warning: no case matching
 constant switch condition '0'
Message-ID: <202011180828.XjJ2MFRz-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline
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


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   9c87c9f41245baa3fc4716cf39141439cf405b01
commit: bf2aa9ccc8e598d788132ded9c7e94c6af3a9d1e ALSA: hda/ca0132 - Cleanup ca0132_mmio_init function.
date:   3 months ago
config: arm64-randconfig-r005-20201117 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ace9653c11c6308401dcda2e8b26bf97e6e66e30)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bf2aa9ccc8e598d788132ded9c7e94c6af3a9d1e
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout bf2aa9ccc8e598d788132ded9c7e94c6af3a9d1e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> sound/pci/hda/patch_ca0132.c:8214:10: warning: no case matching constant switch condition '0'
           switch (ca0132_quirk(spec)) {
                   ^~~~~~~~~~~~~~~~~~
   sound/pci/hda/patch_ca0132.c:1076:29: note: expanded from macro 'ca0132_quirk'
   #define ca0132_quirk(spec)              ({ (void)(spec); QUIRK_NONE; })
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.

vim +/0 +8214 sound/pci/hda/patch_ca0132.c

  8209	
  8210	static void ca0132_mmio_init(struct hda_codec *codec)
  8211	{
  8212		struct ca0132_spec *spec = codec->spec;
  8213	
> 8214		switch (ca0132_quirk(spec)) {
  8215		case QUIRK_R3D:
  8216		case QUIRK_SBZ:
  8217		case QUIRK_ZXR:
  8218			ca0132_mmio_init_sbz(codec);
  8219			break;
  8220		case QUIRK_AE5:
  8221			ca0132_mmio_init_ae5(codec);
  8222			break;
  8223		}
  8224	}
  8225	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011180828.XjJ2MFRz-lkp%40intel.com.

--yrj/dFKFPuw6o+aM
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICDVitF8AAy5jb25maWcAnDzZchu3su/5ClbykvMQh5sW31t6wGAwJMLZDGCo5WWKlihH
N1p8KMlJ/v50A7MAGAzjc1UuF4lubI1G7+BPP/w0Ie9vL0+7t4fb3ePj35Mv++f9Yfe2v5vc
Pzzu/3cSF5O8UBMWc/UBkNOH5/e/ft0dnk6Xk5MP5x+mvxxuzyab/eF5/zihL8/3D1/eofvD
y/MPP/1Aizzhq5rSesuE5EVeK3alLn68fdw9f5l82x9eAW8ym3+YfphOfv7y8PY/v/4K/z89
HA4vh18fH7891V8PL/+3v32bfJ6fzhb3n+f30/uTxenH2d3ddD6bnX882d1//vxxOVssT87u
b3dn//qxnXXVT3sxbRvTeNgGeFzWNCX56uJvCxEa0zTumzRG1302n8KfNcaayJrIrF4VqrA6
uYC6qFRZqSCc5ynPmQUqcqlERVUhZN/Kxaf6shCbviWqeBornrFakShltSyENYFaC0ZgM3lS
wH+AIrErHM5Pk5U+6sfJ6/7t/Wt/XDznqmb5tiYC6MAzri4Wc0DvlpWVHKZRTKrJw+vk+eUN
R+gIV1CStkT68ce+nw2oSaWKQGe9lVqSVGHXpjFmCalSpdcVaF4XUuUkYxc//vz88rzvGUBe
yy0vaU+KspD8qs4+VayyyHxJFF3XXiMVhZR1xrJCXNdEKULXAOz2UkmW8iiwAVLBPemHWZMt
AzLC+BoAKwIapD3ca9WnAgc8eX3//Pr369v+qT+VFcuZ4FSffymKyFqsDZLr4nIcUqdsy9Iw
nCUJo4rjgpOkzgyfdPsQMeDIWl7WgkmWx+Ex6JqXLqvGRUZ47rZJnoWQ6jVnAol1PRw8kxwx
RwGDedYkj4FJm5GdroieFIKyuLkc3L74siRCsqZHd+D2JmMWVatE2qf/02T/fDd5ufcOL0Si
DHiWN8sTw/3oe7wdMEoLpnCLNnCGubJEgmYwlCKK000diYLElEh1tLeDpvlOPTyBQA6xnh62
yBlwkDVoXtTrG5QGWZHbpILGEmYrYk4DF8T04rB5u49pTao0HetinSxfrZEJNam0ZOyoP9hC
P0MpGMtKBYPlzD05D2FbpFWuiLgOrKTBsSRK04kW0GfQzDVhNHFpWf2qdq9/TN5giZMdLPf1
bff2Otnd3r68P789PH/xyA0dakL1uIY9u4VuuVAeGA84sFxkN81PzkC2aJJ0DbeAbFc+vxuA
WjORkRT3I2UlWIgkktv94GsnmGMuUR/FwYvyHQSxVA7slssiJUhSezhNW0GriQxwLRxCDbDh
aTmN8KVmV8Cx1vlJB0MP5DWBdJS6a3O1AqBBUxWzULsShLLhmqQCAdBfLwuSMzgayVY0Srl9
yxGWkBwsjIvT5bARZD9JLixFbkBSmQsWvBSIEhWFq+gdaF7QCM8nwBre9mpth2SRfWHdo+tH
5hvzIcTUmzWMgxf/qTc50HJIQMPxRF3Mzux2ZJ2MXNnwec8PPFcbMDcS5o+x8EWnuRBagLZ3
Wt7+vr97f9wfJvf73dv7Yf+qm5utBaCOvJZVWYKhJuu8ykgdETAuqXNBG8sQljibn3vCvuvc
QXtR6gwXICBdiaIqLfVRkhUzEkwrpG4ksH7o+ACGIv0oCeGiDkJoAtoG9N0lj9XaYlfloffX
3bSXPJbj04s4I9YcpjGBq3pjq9WmfV2tmEojq70EE87WoWBSUZyxgQxGiNmWUxZYJeCDeA1Z
wu02mEgC/bQVEeglC5T+DQ5RxOm6ZnRTFnDoqADBLwhJ5Eamg4GtB7Gk2rWEk4gZiEFKlH1C
PqTezu1pBUtJSB1G6Qbpog1zYQ2nv5MMhpRFBXaW4waIuF7d8DIsUOI6Ath8DJjeZCSwDoBc
3TgLRtRifJRlaDNFgXocPzt3sAA9nvEbhiajPssCVGLusYKHJuFD6GTAqlMpaBvKtHFgZKPl
yJVJ/6XTSf19RMsRmFMENyaBw9ForxvbMTw/nolvWybGGPX9pM68cqSl/73OM267oo6pwtIE
SBrk0oiAkY0Gn42fVIpdBZBZWbiIkq9ykiZxSOvgshOLG7W9azfINUg2ezTCQ74oL+pKeLYX
ibcc1t2QMCSdYOiICMFtIbRB3OtMDltq5yC6Vk0cvHXojtnzA4ccOV+tGi4JSIfWBEP832yH
FNlHg2yCdP5Dv3iYJaf67CyBLZljI2oJpltDR5ZFLI5tIaMNTrxAte+/6EZYWb0FYxM0rAWh
s+my1bdNkKncH+5fDk+759v9hH3bP4PRSEDlUjQbwfrvDcDgXGbRgRk7xf2d01gGeWZmaXVo
iC1kWkVmbkduFFlJ4JTEJnylUxKKMeBYzmVIizAaieBEBSj3hh3cTgBFdYk2ZC1AAhTZ6CJ6
RAwEgEUUh1HXVZKA060NCk1XAjpqZNRKm42AKxQnIW4GjZzwtL2AzeG4IauegbPTZX/Gp8vI
5vksq2xeB1SzwsbUO3VB8EU1oBPngmQZAasjBxXFwfDKeH4xWx5DIFcX87MwQnvu7UDfgwbD
9UsFi50XaAFCu63hFaEbY3A3FqKllNOUrdCXQ/MBLviWpBW7mP51t9/dTa2/3nimG7AIhgOZ
8cFfTFKykkN4azEbXh82doKtXYocoq0vGXj5oQiGrLJAK0l5JMByAU4HU6VHuAFvvzaGYsd6
bdtiPiZCWa7jqE30b12oMrX3EsYR8GlrSUuZWQezYSJnaZ0V4ALmzHboEtC0jIj0Gr7XRi+1
/L8y4VwdspMXc2f6zgGodCzQDwZpa3aD4ttE3C0VI0kO7E3i4rIukgRN3elf+3v42y97HtDy
tnzcvaEIBPo87m+bkH6vCnVUk6IdExJ4BrziKbsa+C75lRMzMKhpyUciMxoe0Wx+vjg5ilBz
3PfYYiImUp4PJobbhSHC0V6CZlJF/ulfXeeFHIy1WYwNA1wJjE5JyQad0tVsM9ZtzeWQVBmL
OfD6aKeMSZvDTNsWdI/fdkW9lk8gcbwmcNpTmGuwCAFXTxI5fh5wEhsMB49jyPEbKBlRyjZJ
TSuIHsWvZtPBasBa+QRumGsa2wiKrQTxhytFPBhJras8PjKOAc8H/aqclxi/Huu4BXseo2je
Gq5QhHltN/6NuYHdaWnSqcHA1bRNpKSPR+hm0GyT/eGwe9tN/nw5/LE7gBFz9zr59rCbvP2+
n+wewaJ53r09fNu/Tu4Pu6c9YvWGlFGMmHQi4FGiYkoZSBFKwNN0CYF4TMApVVl9Pj9dzD4G
6eGinQGar6B76HJ6+vHIJLOPy7Owv+ghLubTs5N/Xs1ysZwdmW82nS/PZuej41hEkiWjVaPp
iDoy5Oz05GQevgoOHpBpcXp2ZKCTxfTjPCyCvLUJVsINq1Ua8THKz+bnp+fTs1Hw8nQxn58c
W81yvgyePyVbDggt4ny+ODuxXG4Pupgtl8egJ0vHovbgZ8uT039ewmI6mw2XoK7m/UAuUyQV
eFWy6sDTGWjNWZANUYSnHLV7R5nT2el0ej4Nsy3K4Doh6aYQFtdNF/8N8sdx5E9xAldq2q98
ehq6FaGBGfhiM8vAKSjofrAueumLEXaunJTM/0/0+Ey13GiTfUzdIMrsNIDjYJy2o/g8vSXG
xl7Oh+zcwcbvfINysZy77WXXdeh+ND3O3RxHhI5zDto9ZI4gQspRLTY41lHokF9G/RaZ2fk6
oWObF/OTU4s7jXE7EsHHWLI1AFivsnGNuq2iEw3eNC5OR54Rqea+2w9mpomEmsQVGBXWsJjO
aEE6bABGsQBfk4KutXPQRcow4K0NePug1jfI8+HLd1PPT6aBnQFgMZ0ORwnjXix6v8hQdi0w
SzcWlW+CDMBrXjyjsTswwwy2fuNEjIJ7t921jVJGVet5oEuRetQ2LkCSo4/H3TBvv8YmJJ6E
8shas9dYjaJDmU481JyncSAwDmWcTmsSRtFvtfwYIgjmLG1it21+ejJ4iBt2xSjwRBp2D6gg
cl3HVRY2Na+CqVGd/9eJIeSmQoBNZ7nzVY4ueOO0gZ5k6dQmMYZAwDEgufa0wBrHEp0BAkvn
YPV51Tvm/ksZOZanKDDSr8OhXejO8EYowtmMcVkrFYkp0DL3x1dktcIcQByLmkSOB2FiCoMc
KvT7dv5hNtkdbn9/eAOT8h2jLE5ey5lhfVmTJI7CIaNWyOVHoCg3UomWUZFxOi60t42J2auT
Y+u09jIf34u7EFIMpX4Jt+vI4oHjwAVU3v6cJY5Oby1x8Z1LLJXAfM7au4ey58FCAbkpmHXD
yjIMlSOgErlmCNcHkRoH+g7aaMJBNK8wqCIIXnIVOIjRHVi7XH43U5Gs+ieyjg5mTXjynWSN
FP8eirp4jZE7Lf34uQmhDkk0uhp/93IbypMYGEj5CgOrqZIBZpWsigtMxIQzXkwHYlGahOF6
4Zi6wrRDkPa+W6mJHb0A2stXdD5DZ0lLjmJ+g+UpSM6CFqEoL81iXfXY1/UxYDypKivkAi1W
AD/jNpGdVYQidKjndLg34ytB7Jqc8uXP/WHytHvefdk/7Z+Dm5EVuHF5SAqXdqguG8b2oY3E
W8wUxqO5XsCh6cYZpw1pmsI166pefqrL4hLMJJYknHLWZ3mO9a8LK6Wo4+1+gGfNI9BzmjCY
+JM8YJEYItjgPhIxRsS27KnByDqMNiiBMH73uLfqhLHMx8lEti0m91liQZ/g27bqy0daFds6
BRkXjMI4WBnLq9EhFAulA2NlMLQklC0PoXvTbmQSHx6+ORkogOLQfrUbNpeS8hY2Ju8CI1vl
U4Z4HSmTw/7f7/vn278nr7e7R1NQ5uwvEW6izhkr0NsGD85QD548HJ7+3B1GNi5pxrub72/f
ADU/G04Niz7AK61BnvxByvFBXEx0SjDXkICbGjIHucguwS1Bq9pkVPosZ8Z56P5Du0mo93VI
OEPaRynBFBZ+0YiPImTI79LeN5CovwhtC2z0Mk8LLKRCR2sgAUDNCy4BeFWLS+VkuVdFsQL+
bbc6MAFByk5+Zn+97Z9fHz4Dz3WnyzHheb+73f9rIt+/fn05vNmsheJ6S4JJTwQxaeeGtGwv
El2+AsRhLgS9gkwCo2LsIfa6CfQQwFm4FKQsnaQRQrsyLeXmRhEGDIDNcIOjGkk3UkDhD9OU
tbQaKtDV6khJKVFDG6SeJRCGhfJ9C+5cmZLyDegkxVetUnJW0hRP1iWIiditeulu5n9zYs6Z
NPkmKzmYXdWxLC1WhgZJHRnZNNXliE9iRFpiVZ83zigwbkYpHWvHrdIChPp1K1TV/sthN7lv
d3OnpYtV2Imx/Jpv7aJL3RSVbpQ8PI6e4ubv539PslK+0JAU63OFOvIevDPdLEeHapEGkHDg
AK0mS/kOvnUMupI+hFICvPWp4sItptNAbYCswtkJhMuSCvN6ZNAVXO9gwbuNQ4JJN4REwOh4
sk9eD3D2rxvRHVVKFSOiW6+9oMFUV6MZKDg0hfDsBhfotfMSTMjBgkyp82gijsgGT9/KqgR+
i4fEcqBHtuTbgy4YPivQZuPH1UbtTAzI2x4WUz65rFFJ8LIBW62LeLDzaCVC1YsaBrxUoQGL
IQ2tH4s89edzg4RmCRkZPILRfFIyPqAZNo7Nr9/mxIWVfIezw2I7wVbcSXI2dIPPtkY25+2U
J5hrpGK/qSyV1YTBqYqk/KYVzo5zQ8V16Tzy0t8xKjY/OW2qUZ6GwJPZvCtVscJXLXjWjh6y
UKwpOrSjc9ReiWKHsTDwI3NkC3uKwRDZ8jsWulpjVO7IMFRQNZvGPPmOwQiTfo2PD6kpOwoE
+ZgdR4hsT2yAgFUbGiWwkzWBf/OpxhkJUWrEskivZ4vpyQDRRcvXDuKRRUXI6s5TPivWsP/l
bv8V1I/r2TZDbfyykd8q0HMpiexgMro6cNs2DOPGLE20IeNe694ZrXK4Lqscw46UOkGmjWDK
n053HizCtI6hJ1Wuy00wIYUSP/+NUfd2ajSnILWPh+uypXVRbDwgGFda4PJVVVSBUiQJdNGO
n3krNkTQQCxQNVmOQDg9AQHEk+u2GnqIsGGs9IuoOyCaiwNBbwNjUPnUqwSz9m3ef5qXpPXl
mivmPhsxqDJDj6J5nulTHqQtsBzmtLXVag4YBLdP6KZCNHho+Jh0tOP6so5gmaa23YPpWk1c
Qagd61mbVWEGIESAEGeHoHbBbYOWZVUN5jmYBo1mxzrIIBjft4RQmoMybGlemtCsvKJr/yVW
e3mac8KIlYfR9DPvaEdgcVE54Zt+n01aBtMoyq5NHmu3eiJ1UzgcD6jb0TVnbvqjjTs7YP3u
ztZHLni0Dqg1jI8lnMZBhjZwuTFLjQJgM3wCN/KczsP656d0rZDJMX+HArENPIbwEIa1xz7D
whVsk4CM8sR+V2ZCwFInTrCuHrk1IBA0qI3ohqZ2qlS9AVyYV97qFJarosRIhOmRkuui8q8t
LcrrVvio1JqJpliAGcFhgEUZu5E8U/C6mMP8mtyhbGy3E6Sff+K9YFQgm1WbwxOXVk3VEZDf
vYm7h7qHQP3amkfyol6HoGC+pot5G5l3Ba6pJpM6FCUYbhFviU0lrMy1K87lIJSzAn/6l8+7
1/3d5A8Tuv96eLl/eHSemSJSQ4QAATTUlGAz95VCANKXZx+Z2CED/jgDujAmxD0o7/4HM6aL
pcAx4JMR21TQbycklvX3v/DQ3B2biM3xmTwwRm1CbzkMTqUDbv5NbLp2QHvkVo0GjcGmuxS0
+zEE9zXHAJOHfcUGjKyGWb3xDWARwmWdcSlRuOFvJYCMwhruTAtXe/FVDqwHWug6i4o0vH5g
/6zF2+BzldGJpXk6m4LRVTkx1SgN+/QlaV68tdwo81nv5FS5+YUMEI4814Qfr8AwaeVaZFY4
SrOK6QxEB+ll6ztxKVk2BtQ3bgTW3Vf9CxKxRkN8iyXHIX5ncRnuOmjv7mmOKwJGSklZ4uk2
Kd5an3BIsJnXQ20Ytcfon06aaPBf+9v3tx2GFfF3YCb6Lcyb5UFEPE8yLI1IvFl6QJc1HhhD
CGzEmk+JVV4hCB+/WQYvdGgeI/VMZOaRVPAy/D65wQDGD8WncLzGZuwjqiO71iTJ9k8vh7+t
LMjQrTpam9MX9mQkr0gI0jfpqqgu66VLr3xbwUxS6t/jUKFpwOoBDcJCoK1JdAwqkAYYvjmP
78VXAy8HHRj9esy9k7oirIXhL9BYl9GsvnvVP4AMnl247c1KHcHrIrSmSqGFRliCeq83Qq+o
yhRskVJpEaDr55Y9A4G14nmgOtMsGAohx0S0k89dd3Q6a//F2xqcbV24o/x3TBtp8Ue7O32K
QFvd52I5/XjqHEwnEJutJoSnlf2ob9DeF8RdgjcmQbwYRzv01PKotRuCwm4vybWjcYJomXlo
Gbq1WHo+qDynwXfBN2Whk4bt16iyIqM3i6RInWjojTSPAQMjtb6+zpxgQJE5VwMOgwnhem/m
54rs/EncPo1rPZFjweZSP2ZyXYSmzhKlqh2oqMo6YjldZ0Q47zS06Y0BWzDDS/0uORl9qdNO
qf0O4th042Kvl1Xdj8jk+zcs4AV7bygc4bJs7AIl872OObEuCij5K0flXzWJUMtEgTbsFLzS
cNXDygDasQAeHV4k1FEcuITa/QBKZ+VYWSIgG6c5RFM39QpfwUkaEUKR4PEqxOpb6FKfT+cz
59Vt31qvtiJc82jhZGM4MaMeqVpjJ6XWT2ukdG6F0xXREdBuiG0NVkTK3GZexnFpXyzdAKqG
/oezJ1mOG1fyV+r0YubQ01yK2+EdWCSrim2CBRGUivaFobb0ph0jWQ5LfuP++0ECXLAkKMcc
3K3KTCzEmjtyirQ3BIrrPWdjNPstPV9cE1pXVQXfGO1d0yN9dTHbfaF4Fx347ORwft6pfV6h
8593SEUKVVtgVc62M41xMbD4qliJhJcBPs+QLKLqsV3NP59fex/m3bVeeRQNW4fRatlZHYEz
w1b2Tdcr5m34xYWt0oD0t60BIedaMYGr2Ue6IxN6QYUdGqiuFZDJMKCLtEND9RWKosm5mKNI
awDsIP8L+zhOaQTmIb7R3FKmWHnH4BxBhJLJ8PSjbvf2+Po2u9tMR6aFMhDq8agMeE66vKzx
vBUFGhNw6LU1C6HkVYm7NxwgARBaBYfrahgOIuwISjOcHlvT/WIhcLV+rPKesxj2mpfehE8/
Ht9eXt7+2j08/vvL59larwocvfSeWdcRfC+/G9TfXa/jz0V96G/ZAQWKJCmTc5uyLBSCg371
qCjSYxKsSgF9sQrf5qi1dSpXkMALB6uzNPe9wZhpgB95M87K7vg/owzp7nBNwwE8Us6h44v4
p0K3RWWz26VruuZi17rjshDTN/LxBAe2b03+gvj6+Pjwunt72f35yFsCOewBZLAdyQtBsK6G
GQLc0ChsjeDML6IVvLUPEDX/rP2cYjNkHsR0PYQ+1I2ycuTveWPowBOtLyslnA0Z1Y+bjAqt
cq05lk8Ilytokdeqpyb/haSLACivh9+7jhpGWOpqo0eMm6WMszVNpX9EfVQAzZUf4VIxuMa8
cREBNA2481R/7jmzPV87Lr1ttSYkERNfysWD+g/m5KCogqSHT35WLm5pBSr0/HMF7gRNiyLv
SmvhCX3jl89TB3YX2wH4Vipaz1VDUU6Pz0VPqBpFM0O4+K8lBeQLtS3zxrCDcPFdNLB4IIoU
qFZHF/+hp5f7B9UZ6nidfc7+tkBC2ighrZmiSBm49LG0prhdr6WETU1+sDb/GAHECDagy8ec
KpcCs4pSFSvML1p2qTQz3Kn6mXlVCD0mjjOgCpsL2116DTv4YEFQ3XWO8EJJADfbVM3oVBZA
YiFM+heFc5FSZ6pCZnBd9tuSyALsUPxSciR4BfTdbcN/5Ie6qftaVQpxXhC4HOW8qk6a+Ch/
j3VQWDAmXaJ04NW3QITUF7tCNbnqXCGEGcMdoEgLJAdbXSdX5FFdsYA6cvmgMjNizR8ujWsX
zr9dTh8tg4G9gSVL8eN1up20HT1ldBhPNXAA3QGd9DVqt6EFSgHukNeqJhiPDM661aEOlMmp
4cQFB32YIuVWZrdt5IFHWAAYTAEF6TLGTrAwq9JEnob8V+tQzQiCk+oKMWcgWJOcrVubNSMp
HB3grPvS6fn2V0ZWUWe1syVYOd34opQpmDCtSqu6icAvcJkG9cOzBiSQpBFDsLo74pjbw7Ai
VuGnR6XBXtkQFy1X3+UI6obekeqaY49N3veaxZ8DpZYIRX24HP7QAOXHNie11gE7TIvDtE12
Oc4O1OVo5DLjKGkOwBL2caTurUfzTk/eMwHGfEjTJItthB+kexvaQriUqsVsqfZjOkQJ/6op
AFtG4Hx/eXv5/PKkKolaOrm9SiHrjlSa1/ksSKlwqZ3/8vpZ2e7zlVFGQcSZPqrZGlbgdBqu
h/0tIR9hsJHRqwuWhQHbe766pvix1VwgOe7s7o/fIuJMKC41P+Qc1r4p5J71HUXdaWnJMs7y
5o0accCaIPO8cP02CQk87YypWnbp2NhzXISGQ88Uh7OfJN5a/wwXjWeewkyfSRGHkRYwXzI/
TvGkBqzL8XjKATJ88a1aHivso8F0w+UoptjY6R3NW3XDFIFYwpMjXFXxM4fsXpFABYHhck6A
K4wmPGTJKrDNM+G5DBGnSaS4+Et4FhZDrC0MCa/LfkyzM60YmtlQElWV73l79Yg1vmPyi/95
/7qrv76+ff/xLDLSvf7FOaiH3dv3+6+vQLd7+vKVy2J8K3z5Bn+qSaVHpklw/4/KVj6sr2RM
KF2z1n99e3za8ZNs94/d98cn8YAEMgl3F2peM2vu9I0qlvEqzorwtSyPRe6ZddbqYSCT9Ras
nmXVtV/z8uRIsNapVWAFdMkDQrYpP+QhI6gh6clssbZjRv312483uxuK9pre2sHZ5/vvDzKu
4/fLDopoFsdOZcnET/ivfqxLMIRjHkoTCnLWB6JJURLR1AfKsLw0Et3lV/2QEZXJpbFVjuPA
romU7YrNgjmF/ljfetvu6xFBgJyuw2+NwTrlpJrODgMytiyKUgTeaJsUm5h1NSNTLeea77P7
z2+cXbWuq77/qOn6Ma4D7B9ZOtJet6PJc0uAMaU+BNkI0WJyV5GbgvPO90+2qk1yTmqckDZV
HJUaaTXkZf3y9TeBeJX1ikPE3myyBlh2fPt4ejYvCyleQbk4QpdNajwDj/E1MvKoIvX5gnJ1
E/mcRc2sRsCxXulkLCd8ZZ70RbnCR1CosXG/jV9tzQZ2at4qLdn+Xg/cMnHvd57LNioPIGDQ
IS5yVkjNM+r9ihfKtpu+0Dco9JSzCtD5zYQRbJoY+ZWlI5guLmViESjzmNdHcAo2x+MGGwlW
FO2A29sWCj+uWTIMmwtanqJ/9PnJoS/WCSftrBMHTIt09TIXlEp0yG9LSKL5T9+PAiXhjaSc
ODXKZGvmLOho52TxMx6DbdHDWpGd962BAsG1odtjJGjq9thUw6LFNpdXWw1C7VSfuMzfoP7I
y/Zvx09+GFnDLbIJ2nWLxIuj2cOVy9BPYLOxou8WhbNZcwvPQ4FKscOE2nY86fuiheQy/H5x
+PSJnLEOze3drLZSdK8AK+y5BDWcVBasN9qcORyBTXr4xWdFQHW1Y0M39zGluDZcKuDtdQXB
f8vrO88aFCK6y6q4lCY5MHlWLn6JAVFEKjhwJZGoVzCDm/Hngo7VRocYP3p0OzpZQ+JctYig
ysvRLHj4lW6cr2oaExMoU6vXFyM3jkUmsrCOXXsKPDVt0oK/gFby2YYvNhMLI9KgIiUADm8V
ICiZWBNByHv9Gfs+mdUV1weuvad9hS/Flabg+xZ17wGPHl1f0xf8H8UGlJ+ozUdDWzjDxssR
PU5s1nItO09id8t6M98bTgRPIthR71KQCQqbs9M0yzL0MsCCNQF6uMCTYppLIIBlBIABEwm1
7nQguR1mkZ/8eHrjEurjT/7Z0K/iry/fUOEqAEXyQQoGvNKmqVrU8Waq37D0rVDZtgFu+mIf
erGNoEWeRXtNZ6Sjfm50gdYt3AF2rXxMdWBZ6fRWY6QZCtrgrzFtDqHaymT1AUFCn4+8OV00
b8UZyL9x0RHwmheRCXTI2Arim3qIzmUwzy6sI1tCAULIIaJWLV8R2v0JymlJv/uP55fXt6e/
d4/Pfz4+PDw+7H6fqH7jospn/pH/qVc5ZZnWznkAS5OBY54KvkNa1WohgLBL7QVUVpCPSxj6
BKfrQrImvzNqVLCL1sGY5opUd5j8LHDicIv0Fk3WYoaN84uLf1jhWRotFxQczYF5pKFwImgN
fqgIbUpjOev5qgXoLt4Pw2DOQ8uvjrLGfffEUQNjiom/gOQLUVXXqJghN1viIDkHzrakQrfA
BIcFDYKF/q03qus0ALoP4aBDWE36yhi2KVW1AjESWi+gOQmGAocwk7yv9dwOgJA8u/MLh4Zm
upwyRQaIlK1PsOd+ZwT28f3D/Tdx6WDbtKwv4I54K5aCPsjSeuAYwe5yuPTH20+fxovkg9RP
zS+Ms13WBhBpJQynGNHpy9tf8mibeqwcEnpvBd/Ap74mnIvRx/HTEGRxosOOrFYVQs4TTptM
yFGjT6+92wVoUg+bXymNKebDOggJnL/vkDiVscoFv/Qr1GwlRdkygMFbobgbbHlV8Jq4TFGB
W7NCwy8hxouUD/ziVrg5NfsJ/6FxE1Jlyurd55evb99fnp7kHK/gpy+g7l6nHSoAHkMzXFJb
eUt7ygu/fP4fjLngyNGP0lQ+EWdvGuHMtKPnj/BuLDx36PQ1fnvhxR5lduSHhy9g0OabTTT8
+l+qDczuzyJGTVyAZUefEKP1BFzdAlOD0QPrMAdx6yXgL7wJiTA8KKa2MX+kqVf5QAMvW6d5
gasOpjOwzDMvDtStMWNIQYOQeSm68mciCIVDNVULweBH3qB/sID35IiAuw+pF9m9vBRVo5oe
Z/jKaJgI65WKZRRYmGC2O73keDjtC6RBUOlhQDPLk4JKCW6z00jwhBcaCa4P00hu3iW5wUQk
jWCgru8oh61VZzyNsQx3x3mNfMxp6sVObEF933Niw2RABp2oYTxLCXrD29k7ECmCqOnN3vOR
3VK7qhKIZI+WiD0/RbuaxrGHjSugshjPur3QlCSLffzNFrWeIcGy0Wgt+bHdbYFIYmfvsndr
zVy1ZilW603B9t5WpZBc32Bb17KQwE8oaMDCuTUkkpQdbFLzKCoSP/WwI5CVJH5ncjhJut+e
Gz4SfvROLcS0BJkEph1kRixP6KBwM93PUp3GCKtQPhpZGiObcX5vyAbv6zHHti/4ZOElYl4i
9LH5XZAjLi0pdCmnC/D3HAyq8Jeo0hBXPtpkv9q3X6I7Yy+NmCRjh44jx92FzDGOGXT2nWU3
U40Y26nOo8fJ9IRbNvb9zwXCM/ZOhkmDnkYLcrO3hkSngf0A2QsCE2ALWEqCg3SKMHCfkCtJ
SjboDaDL5hp4PA0HpIEZ1zhQKT/WsGtRFMsH5KhYUFslT36AjN5UFN2ynFE/t/kpxyYFlCCc
U1fYWwkQDlo0789TLFC0viZ9OUp1ilbEyOE411J3N/A2ls0kAwG6GEVlViSYilxfIlej1Z/v
v317fNiJei2BV5RL9sNgOPbKngvToOIDIYCkpL1BOD+R9mz0dtKLuT+nvOYUU6oJZFUX1gtd
UjXVw/88Hz8h1KFY1D3OIeumGdOLn5sr/sClwDaXU13coVHCgCaHNGbJYIwRqdpPfpBYTRFa
pMOAKdEkWudNJWworGpo48W484NcNznJozLgK/9ywPINSyJp5zarZvXF2T39Np6XaKH7TQiw
OJFc1RiPoK2wkR1MsFBZGYtyaKgBgbytRslP5pTwpTwei/M/7VBnbM8sWmYBffz5jcvwRrJY
WWtJoyjFHgua0C21Bud0HS3FvDbj+ZCE6NM0KzowB0XYFkIHVHcnnjDHNLLWbU/rIkh9z1Ry
GaMgT5xjaY+ONTaBZ3TpUPKbJ0it4+NQZlHikytm3ZXHR555UWDUZiqY5ZalaRIOVgsAjmKc
BxYEXRH1UYozYXJ4ijBKM+f+6CmLIy+NrUHl4EC9bldwGg/25gFE5jsXwIQPrA+8WlLQutTt
yRKTCMpTZIlPpRCsuf5Ppw5eDUF9KORyvRSQDmgNy9NMY1cfbPaW/sz/7X+/TCpVcv+qv/PM
i0gN41iyYJ95RnUKzuGdvBLxsxXptlqJfyV4/ebNbRGwk6YqRr5I/VL2dP/vR/0jpUpYJCpW
R2+CMzAs6z2TCPhwD1/kOg2uMNNofHwv6PVgD+5pFEGI9J8jNA2aViL0XAjfhQidgxGGkHz2
vU6GKV5zpHrBq4gkNVeegvLfaS6tvL1jUCo/QdbNtD4UrlYk087vMP5Q4kTmeY0RXsGYiROl
czKoJhH82eOOWSqp+cKtiiPMoYBUaISyhDry7qqETV8EWYQfAFqjfRyij2iqRNO3KfKGglSe
ekVbEKzNOw0sbJQTtzr6oESflFXaVeDJIdJRKQ5bshYVt8YD38lARqSYbAPSCqmJwFXoErc8
48pc4jW3F4iIFFB0Qqa08WOaUpLGHm6jBJvNCdY8Zytc7O9cUXENPIcmciaBfRpjd6xKoO9x
DYNtcY0gwIqyA7Zh509jB839h+RcXpXgjcYON0ECWshnB2KsdVOsiT6XuDrepCv78ZZPLp9K
WDDbYytYtU0SzsX6ibffmoCJRPHo1zCBr7F48xjWjEKpzSXEy6eZh+36mQJ4xSBZx3SGmwLk
WqOYqq0a+zCOfLvGsppS5sJH7eNI4R5nEqkhJoeDXZpPzt6PBgci87C+AiqIko2+AkWiOr0q
CM4Ae3YXee/CPTJeE++b2KvzlENSXHFMq8/MzgW7PttHSA9uC+Z7XoB0rcyyLFJu1fOVXFrj
53hXlyZoMq9L/YwMbBAP1Cr6k9WQPQfIlcnex9eYRoIJhisB8b1A44Z1FH5+6TQY86VTKCYj
DaGyUirCTxIUkXFWD+9rzz90K8pQUqDNcYRu1NVQCa7z0WkwNe1CATZUtHpWJHGAHeELxVCP
x1xEfvSdmlZuIZietXJhKIZhtFKf61jg/UCR8SlZHCDRmRB4GWDk4tTlw1Jgn3wE41F03Phk
oEiD4wkvHYVJhDvLzjQnNO/mjCWFHyZp6Oxez6WmW/HY2nYjTeSnDFPxKRSBx4g9Pid+3+dY
2xyBh6FNaOkh19o1nutz7IfIFNUHkldIFzicVgMC71Nk1/1R7AMbytmozg+whQGJLyEnI/KJ
qPLbphKn8daOkhRIXyeEyWxo6Gx7P4NLrR+5grpWmsB/p4f7IEDGTSD2kQMRY+MpEMhOg6s6
9mKkLoHxkTNXIOIUR2TIgHJ46CfY4oKQZPQAEIgQbzyO9+hBK1AOq69Gk2EMg97ZDD1rSUFD
b/Os7Ys42qOrhsS4BmIlSN4l2FwsBLvtOBSZqIak2BohaYh3Pd1uGNvwDcnQJjJsOZPM0TAX
e0PMbUGj2CPrRyIirFZapEnocDFQafbB1jJp+0IqtGoGmUOQdtqi57sE48xViiRBO8lRXGLb
OsqBIvPQtdbSgrjj9CTNBdLYp3DGvU+WcbHNFYs4j9cxjTL8vKPE8tQ0S18hfQSWJXCmYOfe
R8eJIzb3I8eHP+3lwcEFyq6WpOIn1dbEV/z233uhXSdHBL4DEYMQj3SDsGKfkA0Mtl0k7hBi
Ry0rzlHMJVwuZmkig4YPEnQoARVuceGs71kSob0lcYzOD2eR/CAtUx9X0a5kLEmDTRGDD2KK
3RR1m2uulyp8wPiTNg8DrKK+UD3MFuiZFBFykvWE+h4yOQKOLAIBR45iDt9jSwPgaC8JjXyk
/kV1Z2N6P/DRxX5NwyQJ8SyuKk3q4yY+lSbzsVhOjSIoXZ3Itm8+QbJ1BXGCJkmjnjka4MgY
jWpTaPiuOB/t0ZOY6nzEqrb0oVjcj73Yl8d/0a92v+dovyk4Q4zg8wXcXq7GCzcLSkaSiki5
KZd+iVBdaNUKJ2+oxLPQ8hnhSddwvX/7/NfDy3/v6PfHty/Pjy8/3nanFz4KX1/0gViK8xU7
1Q3PV1sDuVRoJVtcxxSe5MUCS1fvFClKbgSfCn/scB3dZw0RqAjDSOmuE7wmvDhDKr2WOe9x
qZkzphD0jfo+1XUHZhV7CQgwo2gvhfhOuay8PUSC7MDyrQ4ojsFIJyaHGQQjH9wKC86leSp6
nUEDh03QFS8p8sttTQJn9kO0vzUZAnMSpEs5QJGqODK5bahZRrqrbXRB6DuhkKoLX1zQtlcQ
UDlnlRSby0W4xSGrr+tL388GfDzBF3VzoVDhz7zVsHRimL54gh04N+qFqQ6EbAR54E8DOhvw
pxeYlo1f3H9/UEzJnIIW9mwyduDnKWO18Qoww3MMFyRXyRWw1ud8hDQrkJxSrVMg2LHJ2Rk3
CgB+SpV5InkxFgRNf62SGYp4iUNzTYto13/9+PoZYmuc+abJsRzNN2cANme/+sjICb97BFXR
p9k+wnyeAC29j08UlF9m/SxMHJlsZnSAiTQyTGpysflbbSzP+yBNPON6E5ieVM0IqTGKi6Kd
WlHnpigLvQwf2Cjz1MgGAZ29dYxaCt/zDBBE+WiWmhVqSlI2gZEIEzAEItRzx1bjYwIXUIj5
6CzYKNA/ZrrtjNyACwZjomZkHOhfK69Fs8sc6vKsF+imxWYYUJN7fENzlUsFzCnvK4goE3pX
HQWqVs0iqABHLUZXIGgQq1YCgJ3rmDPSYsQsRBQNEqEmjeghvJPVBc6TApq36/J6g4rrGxYH
2KwBcvLy0iZN2IrNxSaBEUIZe4M5ucLgFiWJs0/gaZfEgXviJAEaELGi0xhpmMMzTMuxoNN9
iBRLM2+zu2nmsBot+Oyd8hkucwp8H4eoxXxGZom1V6v2GPgHgutLgOKuplUn4jmdJJzfxbNX
AJIWx4jvONdYClaio8ZhtwTmmP3t+shz1jW5B+qLCwIBU6uaNupj1PgnWq8K5Gxm9T6JByNN
gECQSJV1F5B1BQrMh48pX9S47V0WRa00+WGIPPPKyA+h7wJeemq1zcVszNFlugBjPuSd+iq3
gBuOLwDr6zEnYciPmZ4VhrkI8A0Ns71rksBwn6ZWhQ25Nav5P8qupblxHEnf91co5rDRfegd
PkSR6ok9QCQlcc1XkZQs+8Jwu1RVinbZHtsV0/XvFwmAJB4JaubQXVZ+iXcSSACJzJrkBbHE
PKzblesE2HTEbTzlVxicEmrTrWQLqpTK6WvbZ2Telw8NGGxaTXKw0iY80+B0pHJ7U526dh2U
6iFtolRzDaEInYvVp1Ldbb50fMf+cJ0yrJylySDle5u7XugjH0Ve+IGvfYrCOtfo8U/FKcJO
6Fg+w72YoZY12X1VEutZL6tdES0d++pAYd81dByDJXBm1CBu0qu2van2BTejPhmNHTCqz9im
nym5Z0xcbQezInY2LD7wrVHi6GecfspNim1vhs22GEXVC41NLx8Tp7tDTpSI0yNJNz2bgG12
SmnVqrzT7kMnFnA/deDe4NpDYTlWmtjBmSgPo4olMNipzrHTbLsVEFSXaxmA0iJNBBMGm41I
/uglKAn8dYS3mJT0Hywkl8TCtw6W9Gzmn08/KPsGYm4jJGwURhw6WfoRfTKA8M2Yo6lMqBmA
xuJj1aSI8jJPQ1xURkkZ+IFs4zRhqiehic71cjtyDHzL4HHF/UofZG2+9h1sv6PwrLzQJXgx
dF5eoZsviWWccpFmwNoeog1kiId1JLPVO1nqw5bN+frAEhrYk9uejKhc6BsgiYUvTrgcA7gK
V1dKge1KgC5kCk+0Wq6xXmKQbOWgQusA7dtxC4N2z8xGRmOKHHv2kbdCMbFhHZcNlCNEL4tV
nki+EJSh2qW6GI7VwVJ2QiAjURSsbcgKneCK+lO49hx89GHnZDkAUplQM3WVJUAnUXNvNmH1
9nCfuhYtRmI7RpGDbv40nsgy/zAQVXslntsCq760h0MyFsaxCXDM5j66ZMDKMPZ2EiR2eCZA
FSksQesVNVGjRqhg62IalsQTFFG4Qpf+Nt8FdLQsotTSzZ+zwg4hFZ7IW6JiSrX4wKVyhtcc
tH/PZgOistGPal5Wxz0TXgvtFZ2GuT76yZpbJwNDh3HcF1lbbXmMZzDZqjVsjUwdVHXbJAHI
mxIJ/VQU8eAR5spwmG8CBUtsnEIApay6bJvJrn+BWmelQejTpgF1oJQC3BRpkhHGIAJRK+bn
aTy8z0eDeo4wPO2nPFNnAqRqRKwI4Ry9DWq1ctyzwsgLsRnrQ96mEaByjVjURpKV7Z4k1S2g
+EaNtUq0yLhd2L09vH67PL5jXsL4TRfciLi46pWoj9X5TTilyXGsxG5JJv/XlJzOXISOcpN1
KcRlG66Ftm8P38+LP358+XJ+EzfByhXwVnv6NURpw5Lx6FoPj38+Xb5++1j89yKPE2tsDYrx
oKzCAfE0DoBgniyh2nm223dKOrR6VyoxlLRPRHyLIWqYPkQDIwtbJpkvwM++YjGz1IsgFYEr
eFpXNBhYq2RYJtyLskqq5SimgtCn8gH3QMzSeB1EKj0pSFrusjI189nfJmmtktr0kzESQG/I
bZElmUocAvf11XbLAkco6P9x+ZIotEPS4pCrxILuvRuAzDZy4tSrE5lKxoG2yWLyJvhYV+J9
3u+boaOVZCLeFq1UWTVovDXoI/5p91We9KRWQ6NA0eDf2hKSGfAjHGC3qfBxbinDiO45Eof0
1vzjLu+PJM8SAk75LPkfR6+L6uAfwMTA6BYmFRD7ylromBRGx9ZvNBfR77QpzIesUX4PUsZd
ppuCKSRQ7RN2v2u6Y9wnv5Efny8vUmQRGPaEaJ9AQkZ/IGo81wHVloeBzL8dg5t+6YxgIjVc
qRvROAcU/MrHNDVcH9+YpXGYlCSXDQ1UtM12BVEiIKv4MSN6500gzIHWwZ3Y4qxp8DiEKpsI
mWCrSkz1XdeZQ2WdDUP7pEV6X3CwFdjeTb4jv/vSpMAExOtV9uBaSK0zLRajnJmlNamZGa22
VQboN7srIWaf4m1nrAYIR17FPIrxainjiisnQejJIdEiQwjgQFzH8mxCcMQkI1iMuwFfbTO9
cUDeZxA5QC9yEyeegx4EDungIcoKq2ldoQaPE7pPzFp0VPjUuE0DciRNJod8ZvNKFRuEcUZQ
186fOpsUuFZDpGCkGkLUl14DtQBjCH0tFkB83yck9Nx1cVpHfhBCdOu9lbXpgtUyGHiULuVG
G5TX0qmbuGC2XJnX9rf7rO1yZIWc/IxTNmPabV/iBfseWGDu7dv5/P748HRexPVhdLMbv3z/
/vIssYpg90iS39Xpu2UrKzg7bZBRA6QlxgoxQMUn68I0ZHugs6ApHzzjFhk2BtSJ7H9ahlJe
G6wuWbzNcltNU2jfTF3Big4UnKQgZvYAQkMOWkOY6R0Tdm2ghJar9f7lf4rT4o8XsA37XTEG
lYpJ28j3LEbnElu76/LAsZwZKYzQldfGiH14RIumo7U9O6H7gVnhVHODT2CfrTzX0cVcYrrJ
mpvbqkImERkRZp1+6PTJBq+1xTx8wEu6qvc3aVps0LitAx8Ewt108bFNhkEm0GJ5fMn3p5ev
l8fF69PDB/39/V39vsR+Ozvo1Zx87G2bJLG8ClT4ukrjw7mSoocNHnvkrXahyjTGpbHXjLJl
uKMPg686oBGhFDa+hxOShnOAuILN9hyelTa4TgoMghL7Q5flLYoyHWaXHywdsTtJFZ9tIzs2
6SrCcsSKEgygGXbIpMiZurUjHg0N5w7XRc6UcDhrnRHswUusWgdxnmPsaseDHmRiFhD9pLEP
cUxZJDf2kzCU27IKSDmJipqFltXtTClV0lRZYuZMmjIhuSEFcsXodonQhbxwI/QAeWSvtqCv
8Fhbhr4CKK6zAFJt0QpA5Gru1R0i1c8tu5yVllzVwkWMdgwoM5aVUOHNszWEu+2oCtf1ZAP+
+9P4prVla5gBmzx462G5me854JhJHUkttnDY+pc5Rv93eqLWJ7CB2hdxMgZGbrvi8vj2cn46
P368vTzD6Rcl+d4CtMUHWU+QDxn/g1R8PXp6+tfl+fn8Zqofho7BTKDZeNsXR+Yq2ODBOdDd
s/C9O8uwzMR8YZCxj547SU7Yhg3O1Xk0s2l6nOkBfZDEixWz8AljezzbCirxDTU1ROnUbesd
seg49ye9ifcnfe6kFLqgzimrEOkJ/mZziBhmGDEzrqxIcVv0+8MGnaFJvA7nBxyYEnLAVtAB
c0PlMaCCnKzIagZRLdxkNFSczyiI66If94D1+7llYeTCS75ZuvLtlURfBjg90M9EBH3l+mgt
KbJEn06PDIEfrbAsAx472cwyj4MVehE4cGwSL1rJ7gFHoOvb2DjrYDuF1g9yf66inAPJlANI
r3AgsAFIo+N26eVLRBAYECCSJQDDP4YM23wZSDwr9EWnxKD5u5ER12JnKDOdTog0CWCm7r7r
286DBg41JJ6CrGeTBn7u4406eU6IvhkYONgpCyIJ/PQFyzPBQzAMMOjO/aBgG4nTNnR9i1eo
icVbzilvsAV3jbOzAfEM5wMa064rVthkmJVlBcHHHB/Ne7TJ6nEfPsMWgZzWkRMhIsKRtWNB
/CA0zqpHMECDbCgssjGEAqw9G+KHyMAPiE2UR7xN5iZrzmZt7QoDWvEMME5wvUTjgdjEHUFP
lOi+w12h/gdljjBamyUIAF9kGLhGdoYCsKfi1hM4YE3lO1g/CcA2QADTxht22SZb4Hp/odkD
gFeKfh++hwh3k9NFCvmomo5OexHICoYFKxdZOYCO5wWnvFiTAYm8KxLZdKGD9CYj2yoYumg9
KNmeAlkkGRlPMRwUIgjcbcGVjxXBh2hER03cYCjo/q0n9P/ckAXhaLZCz0aOSvhmCt/7t4Xn
O+gYAbRyvCtSSbmWATaVtR1RPLrL9ADrvY7uVQiqUHek9QKLsbPCg7s8kzhCXJWgEFhnzScO
QhdpDgM8pD0UoMonopl1dKVeushE1m3JOgrRJbzLj77nkCz2/CvjMXL67gmr7gh7J6xuMoxL
68Rizz6JT+4S65PWJ54XphjCFTILornSEtAhIa6Pu4Uad2lRoN/hDnRMR2d0pF+AHqGiQxHb
U2eZ5coNBLD4c6sfYwhtFZjVvoAB++AYHe+DMEQ1KkCiuU+MMkQO3n2Ublv/4OjRmd8mMJYr
A71e2QZojQZnUxiQFRLoEbI26M+XRnpLogibIu7ZEch6VXvI5gqUqzBAZgNm+owsZrpJtERf
YcpHSQ5RgH2MAETYx8EArK4cwKaNmoDPSOLJp0jqAYqShK9ntksECdYHlC9xu4bUe9vlAdyh
V/s46/Os62g2aZlkRDL1BNw40GT2BNxTlmZLmadJ3zUZfvnFDBXyOtND0Cq5lqUWVInZPTTx
vt+Ttt/HiYLo5RO6yTmAR5UyvRVGb+aFdnF5fzw/PT08n19+vLMIF+K2WvGYMViG9HXatFmr
NV+1KtOrUXX2HqAY3MR3aU4zneXa5Mwusu3g7MzSYWDgxHqceUZuN+ZAQeT29tDWdGRpk3Jy
97+eDHN3Z2MkkP3L+8ciHuPoSr6D5FFahSeqVMJgfJfpJxAkTlUaw+jJZhcT7O3ZyFHT/5q0
TLleY6CI4ehUaIZHax8ZeFwlLKkRqEhhSUWTbJ/O6eC5zr4WgqkkBTfkLt39aKkVni0dZ7iQ
nilh6lOdKgIqao0aEqCxsBTONo+ooj9XvSYiq1WwDmeZoCzwvWJpAMDM+b8IKzCKmvBOFT89
vCOhuZnoMgsdpTBmYWl5qgn4bWJvb6c6IeCOvqsu/X3BeqOrGrJLF5/Pr3RKfl+AOUvcZos/
fnwsNvkNzCZ0i7P4/vBzMHp5eHp/WfxxXjyfz5/Pn/+xgCDOck7789Mruy/9/vJ2Xlyev7wM
KaH52feHr5fnr5Kht/xVJnGkPvGg1Ky2PZRmH2VStr42RwOJGZ9jdB4gWOmhgg1YglqqsFnv
NtaKAMpQAo+ZLe6EF7unH4PrsUWr24iPSUcZ1gEpxp8JwlUgW/aQysDFs0H29K8EaKzepjX/
w+ev54+/Jz8enn6jk+CZjt7n8+Lt/M8fl7czXy44y3gl/sGk4MwCfn822ujBApLV+7Qhud7f
DE7gDXJTobGpJybdeHhEENthnaVr6EJCl6q2TUED2Rrr1VQEq2yVZPgNHROefVZnSWr73Fnw
BVmzmogu3YIYry8EP3caNdMLA9+OJLuUc9qyQjt0/O7YkCFuBpl20rahxdkL+7Bp36geBsdc
VZ0Cnc3SIlt5qmRSkrdSu4okh04OzM7LPbbpTqXl6a7qWJAVJXmurxTxHbfnj+/CeKXPD3dD
bCm1H8GaxmKNzhatDuy5c4Jb5rBG1PTbTOh45Kh1E4P7Ypux4Jo8fIPWDK0VVIKpVnfMNo3q
CIBVt7olDRXaRpcHWHVmFnYImsMWpm126g4WDxVcruBtyhY7fAP4jqY9qdVN71k/nTy9SlSR
g3+9wD3Z1JV9S9VK+ocfONpwDchy5Sw1YcjKm572NYTboC3SB5T2cNXepLipPxuvznyEBFJd
f/v5fnl8eFrkDz/pNI6Kdb2XTGLLquaaVZxmR7VPmOvHI1X9DXGjn63vYHtytiSdWrUIPrLw
qgrIShGwuVAZ2XbjmKW3ow2KFNfO0jql0my20RrCZyB0RhbY3HsOPQsqfrkl4oHJats3DeXS
7u2ThtyqOr5AhV7Sl4eCbsG2W7qvkfjE7MacW/DJdRKD89vl9dv5jXbVtDXQ506w5ATRvqrr
0kXA1oqGrRBKbw8qqC419Yl4IXbzx4TmaGYENN/YmrRlDaxMWbbWHLw0r+0N2yTxTKPKtPO8
0FBABBkMfufHVA+AOsn/yWgje9Az7sBkUUdHUJ1CNmD7XrV0Z6pmumV6uPqhCWHRqSmsJzpx
eLSgZIml3/bVRp9Jt32pF77tU5N0ILGn09TXbZy2zxKdJLYUxqTJ/tyaxweSBvj6dn58+f76
As43H1+ev1y+/nh7GI4SlNzu0wZ78somX/1Rhxh42iT8pJStMN3eJjZmj/EMt8bMuz2UMTwo
s08r6Dix91zozCj1pbLd4O8qENnamQOyg5OCWq8qp9of2Ek8osrKOkCnxKnGanDTqyM55NPd
1eqlPyP0XYx6HeDgIZbfGMCvPo53GkXYYmr57hO/bX3Pw6wqRMnszXl0ks9vup+v599i7ljp
9en81/nt78lZ+rVo/3X5ePxmvtrlWRaHU19nPqgfTuB7emf9p7nr1SJPH+e354eP86KATZWh
T/BKJDW4XBUBCrVeKY8ZPMUWOPok4Hp5imTQta5vb7NOBIYWUFGg/rjSou2yWHrNN1BGdUAK
xd5+XB7/xLYaY6JD2ZJtCgEcD4W5W5FzuXouN+YpHhxC46ZqwnGo+haSHRyy59ZyJ0/U3vDV
K7NsGlCJS9hY7G9Bvyx3zA86qzflMIeWJRv9cOpFktJ3vGCNLYUch0AQ0u0LrwS8bZJv6ydq
oFOZtzjHKJeRsTuaCfWxRLih3Iiu5atcRuXeWzSi8Gig5Q6+DXETohEP7KXXQYDEsRgx2XXU
RNQrBkTZr60gRoHq02Qg466PBlQxhmFEFpM8MKVA0G2RlUeelW+mNT18KanUIM6MNnrIsAp5
4kWO0QudH6xNmRBumO3DhngqUhm6mIBDlBmGPA7W7gnTeUdpDf7Sqpu1vrvNfXetC6QA+CWy
9tmyQ8s/ni7Pf/7i/srm02a3YTgt+gdEAV+0r+fHC9Um6fI9fOuLX+iPvttn5a74VZ7ueGfC
HhVbKHnv5Cc6HFoVweGeRuJ+PC3iDR9eiBA9FqBkbGP3dvn61ZybxCWKcjam3K7YfA8oTBWd
E/dVZ8jHgO9T0nSb1LLZUFhHrxjXWeP6cK1ihGp6x6y70ztUwOhUNIDDTRgSpv3y+gHHnu+L
D96rk4SU548vF1h/hT61+AU6/+Phjapbv+J9z4552kxxFKC2k9AhINYRqkmZYcu2wkQ3Xkl6
1BbCKQewuS8tKNfUJz+4cZyCO3y6QeukA4o0IbF5ZwrUqVWMJ093JL4bg4GMbWKg8YJFhdlh
TxsT1N0ur8FdWdU0b3lUGWBEX1Fh/eGWVq0iDlCVtOli2ENKrowogesXCmkfdxXUCiMObkr+
9vbx6PxNZqBgV+1jNZUgaqnG+gKL7R0QYCzm9aCzUMLi8kyl9cuDchkDjHTLsTVHaUTAOQja
YSMHraCVIWmOxkElqxEYLkGtDE1qSCU5NccQxQmnAMhmE9ynrY8haXW/xuinCCtCc/M/kEVQ
eb2fAEpa13ewCGEyQ7g0i+J0EfHCxFahZ9Zjf1dEwQppp+4ceqBDzJO15lRtgpgDxJmqGy7A
R6ANYj+0OB4VPFmbu56DOo9UODzPrLZAVli9TxRBHXkKnAWf83wzUwY4WO8xxLciatgDBcJ9
NA49vHS7yEEGhdH14DGjrH3yvZv570r4dZspenR+bbQIc2g9Div3FTiTb0t3DmuHmG3aFr4S
L3bMkn5nLip/FAlQW285qReYWaYF3VSFSFFHSo8wehQ5iDy0QYEQE/o1R8P02daZfbKSn4tJ
/A90u351kktaum1CBJ8KlefSxhkAa9w69oz76CvFuJ7ib3CiB4rvXokeIF0F81EU9FtSZPmd
ZRZcRRZvsjKLxanfxBJ617MJl2gEUpkjigJLNcPl/LSVtN7SwfepI4ttTyYzYLNJus2wmaTt
btywI3NTZbGMOmwgge4j3wjQgzU67bfFyrvSB5tPSzza6CiNdRA7iPyAkCKTAPevbbLf35Wf
ijE4/cvzb6DwqwJtLivFKclmqgb3Nduu6ElOmgLpGGZ/caQ/p+oMQcl6hTpNeTE6/ecO+jJM
xl2zfBYuAh2X40xmwi9HhGgsItaaWdK2o3852BJgRNEZ61xEKJ07FjOF74T2DCX3xznpacuj
oXKKocVfaY05m+5+B6XAqvyPIhv6FldSIwcPhmZorHAW0J6f31/ebLKZQOQm3CiTQpvD1rTE
pNuYmF2RSu/pbxlVOuHnieWu4pS+qKjEMo+mmB2CYGrTfAsquLQpEQjdrdctki2js/1Hqu2V
xBm01popA3I4IXYRI0x3sCkWwvKgWMRmVV/DQNCxzJpPyh00hRK6rREQnhPdsRzUY1+IhIC5
3ZNgNdAMp0BwH+zg4ZjUktXWkZn2ZFWXS7vDo2qVxnkgO51Gt+tKwYwIBWDlMjBuwJskN2QW
e+zxXB5cG7y/fPlY7H++nt9+Oy6+/ji/f2B+EK6xStd1TXqHWzS3HdllpWIkQDfXqTotc33o
9fzw549XOCp5B5uz99fz+fGb4pcB55AuFbYJ3dLir+h5Pbgb26EvyPPnt5fLZ8XBrCDp6Vhw
JuXUpUv7XVKE3hJ3artre/BBAEFS8RvMMqMfT1sT3JCTH+/1cX7Tn/LyBH/c3qvm68JU7/3P
8wfmKldDhgadsrwnp4zWLtsq8rzN0jxhxhOWrfquyv+fsWfrbdxm9q8EfToHaHFi5+Y87ANN
yTYb3SxKtrMvQjbr7hrdJAsnwdd8v/5wSFEakkNvURQbzwwv4mU4Q84lWYhI8kKdOFCtui4S
2IKvajXtg0EubeyRp1nGinJH2u3iA1iNxrhJ1A8wTM3K8q6tvJMaxq+qUzXKOMTzMLZ2IfAf
L8MzlQnvo9qu93/tj/tnSMeyfz18cx+0BZdUfBJoT1YznAUDQEN6mFJybILzL9sNO45TEpDI
20vsiYJwXiB3hDHJMahhUictDhjvIKoIQlyBsztZmUJdRVGTy1h9l5exMjfnZBme8PTm3HFM
8rCxRHGYTEKYx45XvyLs4/RRiwJ11gS+R91VwHVZi7W7YDI5UfopUxshS4TPPQfGEBVkENHg
1H66Y07WAQTf8Cty1ImUNHgsdOYhiPhJdw8q4Pl0dkHpZs6SVCvlmitVgZ5hjb+NTLBCXpPJ
Gjyam/PIVyjkze2Mb6ZkmE9350ynTuIbMKxcCYlM8WTTzkliEIEdftYD1N5qnY4pkA6PRHHF
AVmQRSKL16IpIcki17uKXABGOeodkOMEYIiciM0Jilyt8RPoasVkSnM5gz9ZWsKfCbbDDEg2
AvxEsu50L1kJP/gJijT9FYXSWMFpKtYQpHUmEWy3jMF9yzJcHfgNjA81Jgk3q1QvlOyeVThU
L87Q7SzFodTs/DrIUtgjeTWZnAdInWdkmUh6PNYm8+6wEjU1u7pQ80AsRY3VH1xxaeNDBMX1
4VbR7zYDQTxFCqvW3ZLzTp2O6AQCaJ4HYNETQ+oJ3BELvz4n816KoQ0cKgKgGQk1tDc4853M
DfTa9V0d4GpkaNFqILigAs2MaGypANAshCaG9vYaB0IAaBZCVQ1m/G5jHb6hL9BQSdIZd6zg
lhqf29trshc+uCeeedCqJeG2EgReqyVplgJ2c+UdqLgKrE7Jcwe+JIG6vQCcK4mxBw7jIiHk
eZKWPT2l6qiZ4Ez31Iul0U/cdSR9DXxK09ag7lySvtNAsL6Wsikr73v7mk2DGGgGMuyH/QaF
inxCP4BBlToLdIDo2584fus9cHrljqDNe6s1B0HdpWl+sVrA2TLUdlep2dhx9IKN5bo+luf4
1m1SViseeX3pKhweQZuAZwoImtqaA/WyTlDBmK7RFjvhH/kaqP4q+R2lko8kkIk2vGUM8TNS
qg3Ibt2kEaYXnLodgbLGgHte5Uh8MDB9Zi8yx1VstZWVKOCTAhXYKFHy5f1IZbQ3iRnKBWpE
Q7TFqQfTcT0dQVzW3Atcb7po0mzgo9A4aFv4eNnlYLp008imThl5ArmkZZl1kNqc1To/C9bU
IZh2XbOmVQXOz2dX5BMHiJ+Z4GUx0E6uJ+f6P6+DaoVaElXX7ZSMDWFCSlq6trgrym0xcYfA
dFzpv9g5Ry9kb7wMob7DvVerv0EotS/rEhzsuko015fzUF32ZnooyEQ2L3duj/JVi45U1V7u
kNh7hp5uvIPMLqbnmpaep0FaqrdNbuscS3MyuXTWpGrlaOKncZJARwmAoCF4Xe0/zzo3OYIT
iEWi4v4iXcnKq0RrjJ3MRK6WetBv88SiahKxTzcJrHO59EqawKt0Gd1F1TvH7VEoxtZGs0nV
+6eXt/3P48sj8VyZ5mWTgsHJ+FkwsQjujo5aYXnPWvtlRFRvmv359PqNaLFSH4weOuAn2PvW
PszIvGDkF8cEKfw03twlk9fobqeGiQCesDXpKvrA9+/PX7eH457KczVQm6Dr4dVryc/+R368
vu2fzsrnM/798PN/4Xb18fDX4RHZWZtL0z7yNUR6DcbKBvsuNsx5NOjhWhViMuZpiIJ9c1Es
KAPYgaRSEkKZQ94ytEesIuYgvepzsvrxApj4PPPdcN381fvssViINRnDji8PXx9fnujhglAo
o71QD+wB6iMw7yMrMv77u+r/xqj/65ejWAe9RCdHUjHq4WDdCiUrmbwg6J1FwWRWbh0IeiNS
dU2Ru9zQ21/1yRhOQjIGclxgQy8rvplGZtK8/rUwfhSXKrm518A9ChrTXVi/P/xQgxqZHsNd
4SnFPD17+qTiYWDTkVBurGbHp4XopOPCYeByTklUGpdlLqfUwJLnKSUyaORaibNGo5ce66vz
ZiE7Y+LnVqjYDuXYYHFV4jNRozcHX7LlhdQHeBbRKPTxVJM7jRx7PIcxodq43wfgKm8JWMgl
jGAqa5ZjWQHkLn1qQhomiU8XhAPfTYND8tNYcnbtr0iS7PbyxMI1NItW4tfeEa72opsuc8RV
OSfB4CG/ZE3qydqaYrBG2h1+HJ7/obdBH217099H9tNHlMAnDu8+N7Rz0r87bZA4lcOT1KJO
qWvKdNdwfe+kvyL95+3x5dmGVQkchAyxDa40WvUacM52FxdX9IPASHJzM7ukrN56iqopriau
vtljhsy7EIWCXiQ9Zd3Mbm8uKCbdE8j86up8SnyCdTKPnK55WdNv7oJ0NoE3gQ/0YzAARiDr
84VAJh/TKgOfR1PFOJUKHb/419i0znByEQ3zT0gA9rY7LnAl5pvGLawOgolLpCDYaq4HdU3l
VabFBbcy7Xkzu/JGxc/joYFOggINgeD6bknPVgZAn3d2LYPtwqPaG6GfosIAC3Q1naXgAaCr
8hCm1nBX1J8mPnxzEdJuLjrROCcvU6MuKN6lpvXm/GLWZZPOGGR40kw2deHJVh0M807wBjGz
4dxHMh1ErYLOVD5M8NYHlSbnqQOr8MAYkEwRVSZh9zh9q5gSx8ErGELB8Ao1Y5SZeg2H/1xJ
Slhx1dIl4Hz+ogtVpHc8fLAqIpsUV6WhRZO3O8xwgwWB750hug1tgTEEjjOvUgra1GWW4fZ+
hek3pZOGWcPN3NKWUpgCfnFG3e0bMvXBN2H1JkPUkgo6YgjMDv0ggH3cP1Y7qakMwSDVReu1
ExaWhYfwaDE/HlMP7a/oHCCErjUvJv5ton07hHuB4O3EIvUL4pNXJb5PM3a/q/sz+f7lVR+1
I/uwaQCdkCLqh7kdcEEmI0jrRhnsEXATAHcFCbRDcHNDdWuLu2C4TAIXa8QjFULP3czEhyEw
Su8zATb83qDUTtH4GyHdBYTbo5yHRlKd0UoROZdDDlYPAZD0Ac1p1tjdlYXpWzjsc319yhrm
f5VGgOth7HN6e86uKes6LWg7I0x3YqYsiRRwxeeO/YBj2aZ0+w6nsHlC7p2t3VESuzT75SLp
r7uCVdLfjRGLT4c61Cz4VK1SmID//WJyh1ZzND3qkfI9heNCrr9JnyCQ9+5cR3TAAXh8fNtg
sxmMne1s4Y8QbV5UqcqrndJBZkWu4yD53zQg/S2AG2BVtSqLFJ7r1OCe+3WUPM3KBuJHJGSC
K6Dplbr17Pz60qzbpwAtqjW8jYaTarHw2GkXvY+G3TQlKl1j9WWEUvOrMS0Z1GNEm9g3sluk
eVN2m0glOuqUHtjo/hqrizXYq6NJZR6+/JZ6tN4pmiDalNVr44zL5kkLeagpewWYxJFOFc6G
0+k3cS9yuCcI6gnolHQo05w721X97LIqDDpZ7Y/gkvIAZm5PL8+Ht5cjlTMLBFEOkU9z6hnJ
YB3BBEBx4kS27jWB5V9dktQ9xhXbsqlfnYe/iDTXrNoiSeudLo/n29zBx/soq9TvieZlQTfs
HJ0YyUFC0Lexgc2rbbXQ2fjo61BrDzvafzPqlt96kuKfvr5ogFq4FQGtzinHywZlM/AQ2iDK
vZZaL6q6DJsFJVsmzLmu6lHm7kdQoWaH6+HUvX3pSxYbCOWwrPC1v3YGqbo01d0IWjMPKtRF
D7yX2GaM48D27O348AjRUAN9TzaOEq1+wkulYllzJkldbKSA57XGLxzkvEc4Wba1Our5cKUb
4gb/ffSypiX1ZoVUmB5i31lHVcUilg1tSTwQSDK+04BWXC7sQFc1gujEGKjO5jcPh3tgCdUS
nWj9q11Vd33oWTzLATIeQ03no8uXNeRvZI3YmYtE4vs04bwWCY4H2Te0qNP0czpiR55ibugq
iFPAy1ZpIZS5p666TpcCqx3lgoZrYLLIQki3yFMaCh8YwYR9dtCm9fjIAR1bUCxzIZ3lpX7a
wOdd4YVHQiQ5Uyp3GPIBobx44xQJU6w6pYNCA5Wk079q1Dztze8RsMS2JU06sAb1Z3gnW1ZA
8eT87OQq15ENq1psuootU/lpMq55XM/A89qsEWq57HSYEeMggmJZhe977a5jyfLmFsckBmA/
kgiizSaQLEHVO0ggufoCfDct8Ks1/ILLjeBiBR6y6UsPHYJN/V2kvHH5gYX6sZ99HG1nG1IV
pytZR3ncQBdJE6z2sY4jN66RBoRdlnh51/LSD/FqHbDcW3A9uYsD+M1ocQ7NasIZX6VgbZL0
ET3GVjcsEwm8Hiwk3ItJp0cKVEqhlgRHl3jpDh71vXgePaybgwmPmmzaAQSc3MBi/U4UdOCP
BXg18fq+ajx2MeI3aW1ikeBCBngioshIM2+F2hMFJFkqGATFpdbXQhqPOtxMEjrZoQnXOB3P
h26fnSi9bktST4W8Bgt52S3Qw5+BOSCQMxwAb91Hyd6VbUFPSqkGJmP3HREHkj88fsehQhZS
rySXpZrFJRvWRCa9pwCtvlRaCK1nWapTU2goyvmfsK3C3BLWish02qghr/v3ry9nf6ltEewK
sCXp3GWsQXd+BHoXDfd6Df0cqvHAlyHlhKDDbmkavhJZUqfobvMurQssS3uidZNXbk81YNyd
lIKiKXaswdZXq3aZNtkcV92DdL/xbbfx+FJiIIIOd81LsWRFI7hXyvxjlufILxZiw2o70lar
CScGsTwhjUOscT+ll1WRNmA+F6OzVBlWUDJpAz19+u3w+jKbXd3+MfkNoyFHjZ7BywvnxtrB
3VxQQV5ckhvHJNbBza4os16PZHqiOP2G6RH9sotO0DoPM3EHDWGm0VGZXVPvph7JZfyzyKyv
Hsl1tMe30YpvL6i4Ni7J1Xn0s24v6Ptml4hM7+p2UQf+cYoLWcIS7ChfAqfsZHoVmyuFmvj1
MskF9YyB25z442UR1NUixl+4HbHgS3fFWPBV7Jtjc2LxN3Qzt3Qzk4tYOxPa/cAhie+nu1LM
OvpEH9CU1gLInPGuLnNW+F0DBE+VEEJbCYwkSj5syZjKA0ldKmUz0sJ9LbKMvD+wJEuWZoJT
hZdKE6Vs0i1ecEiOkLhzpBFFK5oQrMch0lElg93F3I6Bpm0W1AZpC8FNup2BugcpxbDOlVj7
mek3Xhv7gBL3y267xseSIz8b28n94/vx8PaBwjYM7d2l96RPfMpbI47mqdTPd00tsJ5iCZxj
GO6aVqxO0iJNtBzJy+q+Y5kSl92EEAHRCZSSO7MMoiw6140BldYlq0i2i4WS7EG2NddDJAkI
fzpxQ1pDzGJjrUaMjI2yOI4QQ4/3mcw//QYm4F9f/vP8+8fD08PvP14evv48PP/++vDXXtVz
+Po7RLD7BhPy+5eff/1m5uhuf3ze/zj7/nD8un+GO59xrlCU4bPD8+Ht8PDj8F8d9XoUBDnX
Mg1I1h1IKkLJblipFJBXAB7gi7Jw1htCsYwWCTUJPCXCPEaiTAbEcA8UpbXqNv1NFh0fksFM
y1/Yw3CA+lXa2wl+/Pj59nL2CPmdXo5n3/c/furECA6x+rwlw/4WDngawlOWkMCQVN5xnVko
igiLqMlckcCQtMZ2PSOMJBxER78Ai/bEYoIid1UVUt/hKxJbAzwThqSKm6otGw5KDw8L9IFm
h6Xm0oMzFpsr3VzHiCHXplcg3TXgJuOTu8TLxWQ6y9ss+PyizWhg2PFK/xsQ63+INdQ2q7Tg
AbnrVWFXkMiHgN7V+5cfh8c//t5/nD3qFf/t+PDz+wfm9nYlSEpV75FJuPBSHnYn5YowBNaJ
ZMQkKV65SadXVxNHxjSvPe9v3/fPb4fHh7f917P0Wfdd7eaz/xzevp+x19eXx4NGJQ9vD8TH
cE5eTfXTh5Ms2AIrpYOz6XlVZvcTkyfa38VLAZHmiO+wKD3wpxaZTNek294wUCumWOXG3mjO
tdsQ5DB7DRgTn4ejzxfzENaEm5Q3kpiksGxWb4mvLReU3fiwquc8WCk7oj0lYmxrnALcbpbV
MAPBHoCoQE0bzh1E8h0GbfXw+j02ZjkLO7fKGSe+cqc+JP6ZG1PIRL86fNu/voWN1fxiSswR
gMMR2mneHnZjnrG7dHpiwA2BDGpU7TSTc8iE7mOWfVPexI2jHrDGhFY1BnQkFkmPFmpVa2ua
E+NZ5wm9tQBBx8IY8NOra7rgBRns2G7FFZuER6/iAFfXxBAoxNWEUiBH/EVYW07AGiUCzctl
gGiW9eR2SnzItvJaNtxOpwQKlzhLw6WgYMZgPuBbRTsXJ09FVnPKn3pYe+UWAisFi8kigmDv
dnEyiJgkWLhqGQQBs4UCpq6wZOCVEX0dtJUQI7IwZ284Incr9pmdZuEsk+zUwrIHCdF/6b26
+di6csKnD8vokqirIbM4WuS21PMSLDIDHxNAm7X08vTzuH99NbqD35ASDjPme0R458RnSpfv
kbNLalVnn0+sK4VccWJ2PssmDCRWPzx/fXk6K96fvuyPZ8v98/7oq0F2tUMGn4qSjJN6vjQR
7EjMijo3DMZI5MGYAU6dvCfkKUURNPangAj2KVgzV/cBFiTdjlXURrYo3Z94owMZ0j2iVdWR
lyyfDrSbE4saXk88levH4cvxQal4x5f3t8MzcU5nYk4yMoD35501Bia+AFGdWGJi3u/UoaZA
+hlIqPULSFJ8DekoDgRwe+QqyVt8Tj/dniIZPzdOFOumJ9me7mz0CFxtw0Nof3wD3ycliL/q
KHAQ9e3h7V1p1I/f949/K/Ucu5r+G3KT6SO6QDJRpKzuashZhB16mH55HQFzoc5ZiIiJ3nD0
RZR+6KGw1rhcHdAFh/ulWptGYlUUk2RpEcEWkP6tEZnzqsXLOiHln6oWuc7qOHe8IGt9w4cz
oQ3G71yAEzqOXSWbvLKJFNwXLXg/5Xm146ulfp2u04VHAfdDkMjVGlQINzpEX4e8zxX7LMpG
dwsNvCgSUcOjZYVDTSjZE4wfm8YBTZyzmXeheMo70bSdW8oVljn4OPbXnu4a1ZhMDcH8fhbh
W4gkJtBqElZvvQPPwc+F28PrS+fnpdcv6rkKEjYG6gFHwXl6fWCciTYRTcgEDFhPE1ynsIZi
i2qzJGWOBo7okDqkdQ0Q63HsBUDBLsuH6/N5pP9AcEw/wHefAYz7ZCDdbkYHferR2lq3oh8T
ehLBrilBosdCdOyPENas1H4LEBDSlAfQOf8zgLmXLuMXK3y4YYmL7h2ra3ZvthzmTxJ2NrZG
BVCSIzG5SCELuI5l3CkWtMSWixoHCMUc9LnrcwPAMbAXbrrrS2cVA0Z9RsZqsKBcaRmEYBQy
bdpKE5eVpPAQ7xnQi7KmGVJA5TipDSSAheinRGfk1otGDLRFWVjKLnd4I2AHVFWWmYuq04C6
Z2gWM1rJwOiBQ0gkLY1cZmaunf1ftTmTd125WOjrdIqpVK1SVp1erDHfz8q5+2tkgOg1yrWG
4NnnrmGoHHj3qfMf1ZtXwkn5o34scJaWUiTauFEddjhTM5dTOP+cw1YfrHa5bxJZhptgmTYQ
OqdcJAy96izKogmzLWno7J/JtQeCZwz16Y5hnNotvf0nOg3VOCdpVeJFo3vsnhy9UBLIGu7D
ixViNPTn8fD89rdOfvH1af/6jXo6M1lOdaAg+rgHLGeutyI3VsvqjF5mSjDJhhv5myjFuhVp
8+lyHAgp4dU8qOFy7BqEdLY9SNJYGPPkvmAQYyy2zh28sSzGlo33+bxUZywEXFJ0tNpoiqr/
yVzb/cREB3vQWQ8/9n+8HZ566fFVkz4a+JGaGtNsJD5LWuh3gryFC4hVylHEs0WtPqTbsrr4
NJvcTvGiqjomwV0gx0mxlEKk61IotEkUVIl4qnm1QPFGNL2Sqc7mCxZCOTP5TG0zHkZ3pCuL
7N5jnFumNonpa1VqQ03pf0MPd9iaSU5egoH8NmV34Dns56QbJfh/O+omxDfo4odHu5mS/Zf3
b9/gyU48v74d35/2z29ualUGrtvyXpLB720WdUqgv1smjvMO/KbMDu350s4lAye6QjRK8+qY
G7JNY8nv/1df5HYY7N/SYLrBEOyTk3B2rAwZ8sGOTndNWkjD4rxZA7w+cihOA2XLbeHOtoaq
VSDLImapaqquy4Q1LMhuFhzUmni7878PQwbNpUlaxxFO/7YcxAXqWlzDQFOxsZEkjROydm6J
8HEAYHsLgRdOPz3qBMnUsg9bspgTg2ReyFtgvLT1gGIkSU+VFonhK78ezk3eVcsGWIg/rJs8
hOi3CG28GnyCQtbUPkDNLDK2lESlQQf8Poq6aVlGtGkQJ0bNhPPQNgEkVY/XZsUCXmTrugTb
BZj46Mf0XAtkX5pDMMmKKALSkjTOQPSmEwYbXr5gbKwsGHGC1FGUI6NR0rejGdlujZwLN/j/
lR3Lbtsw7Fd63GEIsiHobQfDkRcjTpTI9rydjCA1iqFoEzTJ0M+fSMqxRNEe1lNqUm+KL1Gi
MFreJCuo6wpcJKMF822Rh6EerkJHo7Dm460C0rd5VJY60+ZLq2OPRYIDIyH8qaCPgQdGW23F
UqLQ0RvgP+jT+fL5oTgdX25nkkerw9tzqJVBdlGIQNEsgl+Cw9WBWtmBBkDUX+vKH3+pswrc
KmAUqcqSp5Yj6gjYruB2a2XNAaEDzd7Kbyvdlzp4NB+njZoQ5216AijOy8rppxvmHY8lDHEo
9hYOfQQ9iX3r2egQaiPUHe5LmLW1UjuWSsVtWqPUZhc/owgj8YTrp8v59xschdtBvt6u3Udn
f3TX42w285PR6j6TO+Y9GcwKP4r9x/QtDawDRjnKZwx4yir1U0VMs3/mNR6mKzDBEpuGkPDJ
ul0i3h907Tel2ghyEXse6QIMKak0aO5lYRdktAU3P3ROEGdXwoYsocMFk94Rcm9mGIfgahpM
rv9Y3sCqq0ziexRQEbZjbustnKxZmiVXF1+ZNSkNovwfjJBeHaMt9UIa3tPhengA1e4IbmrB
muCXNUL6Bmi8VqVoViGoF3rBCpNK06JCZrUlU0eXiBg/GOl82FRqFDLspLifz5i0lphEsNq+
YzGtQe5mY1oiwFlZDwLSGk2hO2f9+iWsG5dbJGeAqn0p3anpXx8NhsKU072zdwzzP8E55zb9
VWmejSert2SEYZfMGPS7SXYrGae3mjNGwwKwbfJqBb4Xrsg48AYv2FkEOFRgKHCHB6cUMNHa
45WkriDVMgChxAjfzMYXokzg5SBJomJj6xQUBHCP5kV0sEDKJF2VL5F3NSp4Lpqiix1OJCQO
76+PC9FqykF44atQ8D7WMnzu+nFhJ6DQacS7wA4p45Ttjp54a76XqOouV2BkIHjT05/u/fDc
BdHUNVN13XdRw83DyIfd5t+K8B1ZZ7i445VLncCU6jK6fxPPkTjv6uBgwJheEZAXZeE7I+EL
WaKRv5TVcjf6p4ymdar9vCSkfFu6s59pH7T+C9MhNvzXu37wBMWAaVwyBPDZmHoDLuTAdUNA
s7d9UUmLh7jzj8Xc/nmsyu4yOOIDcqM8bmLaPUvh3DM5SV1RODQ5Kv8Czah0vSKKAQA=

--yrj/dFKFPuw6o+aM--
