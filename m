Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGX45GEAMGQE7623YPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9FC3ED96B
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:02:52 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id 64-20020a4a0d430000b02902446eb55473sf6999784oob.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 08:02:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629126171; cv=pass;
        d=google.com; s=arc-20160816;
        b=BF1Dk1F7SIbqDme/lgZ8PIMFq72htbQGE/JLo2OWKfSr7p14ZTitQVrpFk5FNKveiY
         ++1AuRsLx7dsBUjMmOhJOF20vL+v6Ka6benvZMjNHHMVIpiFmhZEE1x6JBhz9dz6wKsa
         vy3qY8wmEYh70+H3p+3Iql4iOJx4JHDAPkZRyPNCWHkaknWFEYfvFcoATbPm8fW4D1fx
         nxvbi1v9BsVUiE8HMiiYKBMm03qwPtg+7Ynk1y7jVU6O+9jIsTrNL50kYatFTYPSoqq1
         zdhJ8RW0vmu8oXEZpsSkJDedqafHACMAdhoR47VL7kWfrcdf/8Kw4MSYmYBrIqau7AFi
         hl7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:sender:dkim-signature;
        bh=zIWcmJLVRZ4iPnunwPglBAqXuz6CYQ/08CReU3ldOrc=;
        b=lK2gIz2Y+zCO3U0SBtpc8YYTrUE2NmSHpCZeWh55JLk0jpVhx9hcZjmdRWbMcfTS4d
         EesQfAMJdmHmn6rhTouVIc8nylgxkBm0OeGWpI7HZm3LNdjxHRgy44tvFJJm6Kf5u3HY
         HxwN7EapTULzqV+cOFPEQSYsCmY5rPh1RL6ifx6U6p3D2vhKGpHuHVgxyNWnNExVwA4f
         OVSFwVlG1FrwpCJx4/9gKrBo4mSxRLPJt0v+cApsAmx0KDTKXfYQG/POPlImG2BJO70T
         4SpYsvCveLF/QOKo1CGb4k+7hA7Szi2w8OyYH4p1Xx/qiWQCIOyEB9GE8G/9bLln4WnO
         +xDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zIWcmJLVRZ4iPnunwPglBAqXuz6CYQ/08CReU3ldOrc=;
        b=MuBq0A9u7UoUWzqOahZyy0DLqt9gjAaMSHBbiMNf24Ap3Z+SPlmrFPECO/CDs5N+OX
         +Chs796NlRFqoueT8DObBfBi98kQPaWoNXkRRNoVKCJJ0Hp9N6iP6FODf6tNB3dRvCYQ
         R3dvPPD46fWZU/wMJjsStUdePKtlKRg9olH6s0KsOH1ZwlD5nX6jP02HvYIoVcwggfxZ
         ROjRmrek9MAE2IyrjlO+DjOccFR3t+phiZ7A4iNvRTYkQCsDy3J/OFuaP/IvMwj8S4y6
         IWco4SDhajpRZwxQAmXdB88BMFH5TdDIOJHa7ESkTNLvUKpZrwGAUgWMlaR52O7qrDr2
         MMoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zIWcmJLVRZ4iPnunwPglBAqXuz6CYQ/08CReU3ldOrc=;
        b=W/zTqLT7WQQVIQn0F4gfoPe8VpNNAR7uP1VKz8F0cbLSwgUWxDJLP7a0imo3LPsZIs
         LiuAPKKoLNtywMABp1KmvOge1sdp5GcPb5b41N+gdzmxBvhyQDpcdz35TCEM30R1sjMT
         alLfud7jBBKZmrOXAympK5NorAu0zWfwkcU8Q8/czt60Ne03F0+DnycRbbi80KmNxMhs
         8+EHBaBUvS+sK8Ixb++VdmzHWsp0so/G0xuF6DwV3m8ZJl7fCAOQ8b0JHOiHlGqjStda
         nA5+c2W3ZtfyDjbIDkXhNdHurwyRRgcXcyzVULtecHR8FLu7Udcc/UgOd1SsCYHRtUK2
         660g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JHcukW2bXvhHHy8XRKD3ljYePLS92nOhemTyjOWQKEadiuOwT
	PNLxuFob8NtWviMeOlxFvEo=
X-Google-Smtp-Source: ABdhPJzAaqUflgy8/f+Z5kbc9SA3dGuNItREkEyKSf4ZqzS+ctkfk3I9x3KvOAqqRAWiD8KOCkE7+g==
X-Received: by 2002:a05:6808:1415:: with SMTP id w21mr11947514oiv.140.1629126170251;
        Mon, 16 Aug 2021 08:02:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:180d:: with SMTP id bh13ls2173556oib.5.gmail; Mon,
 16 Aug 2021 08:02:49 -0700 (PDT)
X-Received: by 2002:aca:bf84:: with SMTP id p126mr11661014oif.154.1629126169365;
        Mon, 16 Aug 2021 08:02:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629126169; cv=none;
        d=google.com; s=arc-20160816;
        b=VCe9qn6RHixSizMvQnutMuqCgSY2fN0iQKGtoRQfBXfdMHR8ne/zH6DQBMWxkzSzBc
         ZQ0ceCrh6dLm40dQAw/fndWj16hC9NPUpAv1tBj2DUAHWrBZ2GK+BmXHYeOj21gaiCEX
         PLtxClpovz0xxbaUbK0Ja82GqfOBX7KUF/wR89G2AShiGIXWYgdzo20e9yY5s0ZKBfi6
         MXH5KHoJ7Lap7GfuV4t9SutK/f8KCPLP/aqWtos7xvfB7I3wqz6uRXLEOveO47eKl8rn
         /Dum/xefG/6WSxCEsfQ2+R85TfjY9Y+qox9hL4oLbYPbMZRvTCnmHlcopUj8Qqrvda5W
         d1Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date;
        bh=r2KX1ygjqUGC5VoIk92C5dbQ9vnb1GCPn8oZtBtJbok=;
        b=xZT8l58eIGTqtbw8bzflNuZu0mHRTNmzgsKd9jwxRrSDtXGO9W+gi/cAtynTZcNFXt
         yTBRhuhdees8ZSwA/qZS0T+9DpMXuFT2rz4QIYcLcIwFSXcMWR/s3hZ7kN5MSHS2wq2c
         hJkXdA9OYt///v6S/KGnoCn7FoseAwXGq13EITF/3wHdCvwkhiro4ep38kaOGDs0vtm+
         ZrrSH19qH14YMi4XAOimPEDvxrEIFI+xbd0x+XuN86EFzd4R1VllRbUZ3Ux39AV0JyR4
         En44k7YT9Y3nVyHi2EJIwKx9UeT8sog9zIxQwP17HKDUSK9gPiWA5jLBaPymBQWDxsiX
         OqRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id b9si735977ooq.1.2021.08.16.08.02.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 08:02:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="215875227"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; 
   d="gz'50?scan'50,208,50";a="215875227"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2021 08:02:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; 
   d="gz'50?scan'50,208,50";a="448618568"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 16 Aug 2021 08:02:45 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mFe8S-000Qj2-Bc; Mon, 16 Aug 2021 15:02:44 +0000
Date: Mon, 16 Aug 2021 23:02:07 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [linux-next:master 7766/8423] clang-14: error: unsupported option
 '-mfentry' for target 's390-unknown-linux'
Message-ID: <202108162358.Nz3ggSgm-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: Linux Memory Management List <linux-mm@kvack.org>
TO: Nick Desaulniers <ndesaulniers@google.com>
CC: Nathan Chancellor <nathan@kernel.org>
CC: Andrew Morton <akpm@linux-foundation.org>
CC: Linux Memory Management List <linux-mm@kvack.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   b9011c7e671dbbf59bb753283ddfd03f0c9eb865
commit: 9b9a2f6284409ce3171fd72c288cc0e82bb34c6f [7766/8423] Makefile: remove stale cc-option checks
config: s390-randconfig-r011-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 44d0a99a12ec7ead4d2f5ef649ba05b40f6d463d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=9b9a2f6284409ce3171fd72c288cc0e82bb34c6f
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 9b9a2f6284409ce3171fd72c288cc0e82bb34c6f
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=s390 prepare

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> clang-14: error: unsupported option '-mfentry' for target 's390-unknown-linux'
--
>> clang-14: error: unsupported option '-mfentry' for target 's390-unknown-linux'
>> clang-14: error: unsupported option '-mfentry' for target 's390-unknown-linux'
   make[2]: *** [scripts/Makefile.build:271: scripts/mod/empty.o] Error 1
   make[2]: *** [scripts/Makefile.build:117: scripts/mod/devicetable-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1218: prepare0] Error 2
   make[1]: Target 'modules_prepare' not remade because of errors.
   make: *** [Makefile:220: __sub-make] Error 2
   make: Target 'modules_prepare' not remade because of errors.
--
>> clang-14: error: unsupported option '-mfentry' for target 's390-unknown-linux'
   make[2]: *** [scripts/Makefile.build:271: scripts/mod/empty.o] Error 1
>> clang-14: error: unsupported option '-mfentry' for target 's390-unknown-linux'
   make[2]: *** [scripts/Makefile.build:117: scripts/mod/devicetable-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1218: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:220: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108162358.Nz3ggSgm-lkp%40intel.com.

--PEIAKu/WMn1b1Hv9
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICNV2GmEAAy5jb25maWcAnDzbctu4ku/zFaxM1dach4xl+ZJ4t/wAgaCEiCRoApQvLyzF
lhPt2JaPJGcm5+u3G7wBICindh4yYncTl0bf0fTvv/0ekLf95nm5X98vn55+Bt9WL6vtcr96
CB7XT6v/CUIRpEIFLOTqTyCO1y9v/xztTi5Gwdmfx6d/jj5u78+C+Wr7snoK6Oblcf3tDV5f
b15++/03KtKIT0tKywXLJRdpqdiNuvxw/7R8+Rb8WG13QBfgKH+Ogj++rff/fXQE/z6vt9vN
9ujp6cdz+brd/O/qfh+cnj6MlhcXy+Px6v7Tavlw+jB+PFs9np9efF2Ozr6ejh7PH07PTx7+
9aGZddpNezkylsJlSWOSTi9/tkB8bGmPT0fwX4MjEl+YpkVHDqCGdnzyqSONQySdRGFHCiA/
qYEw1zaDsYlMyqlQwlifjShFobJCefE8jXnKeqhUlFkuIh6zMkpLolRukIhUqrygSuSyg/L8
qrwW+byDTAoeh4onrFRkAgNJkRtrULOcEWBAGgn4B0gkvgoy8Hsw1RL1FOxW+7fXTip4ylXJ
0kVJcmAIT7i6PBm3DBKUxA2HPnzwgUtSmEzSyysliZVBPyMLVs5ZnrK4nN7xrCM3MRPAjP2o
+C4hfszN3dAbYghx6kfcSRX6MUVKRZLlTEqGFL8HNY2xo2C9C142e2RuD6/3dYgAd3cIf3N3
+G1hol3kqWfFuNVDQ5ob9owdsogUsdKiY5xyA54JqVKSsMsPf7xsXladKZC3csEzai4oE5Lf
lMlVwQrmXdE1UXRWDuNpLqQsE5aI/BY1itCZl66QLOYTL4oUYFQ929QiQHKYXlPA6kHq40ad
QDOD3dvX3c/dfvXcqdOUpSznVCsuT78wqlB1LH0ORUK4A5M86QAyI7lkCO9g5rghmxTTSGo+
rl4egs2jsxr3JW0uFt0GHDQFfZ6zBUuVbHan1s/gFnwbVJzOS5EyOROG3QHLNrsDG5Ykerct
bwGYwRwi5NTD4eotHsbMGcnQQz6dlSCJeg+5tefeGlsblEWGm8ADvCapauUT0OUXrpqtwqNv
n0jVcazdEIKLNMv5oh1PRJFnbyBweSJCVoZAywxDjyOAbsWChOZu7GU0xEDIkkwBV7Q76fSm
hi9EXKSK5Ldeya6pTJzeMs2KI7Xc/RXsgYXBEhaw2y/3u2B5f795e9mvX751fFjwXJXwQkko
FTAXN122B1mmRMGGO5pMcuuh5VvIJXowiwu/sDJD92FiLkVMUMd6m8xpEUiP/AJPSsB1a4KH
kt2AmBryLC0K/Y4DAs8q9au1FnlQPVARMh9c5YR61iQVyF6nUwYmZQx8LJvSScylsnERSSEw
uTw/7QPLmJHo8vi842CFk6rSOq8M6fkEnSC3vQTOHkodgCSOqa2P1z6T1gDOqx+Xz92oDQwD
Juqdl89nMBPYBI/yxQIjEVDgGY/U5fEnE45Sk5AbEz/u1I2nag7hS8TcMU4qqZL331cPb0+r
bfC4Wu7ftqudBtf782AtOySLLIN4DSLBIiHlhEDESy2FqgNFWMXx+LOp8HSaiyKTfh84Y3Se
CXgJLSUEkH5XKYEu1OGaHsvDNrB3kQT9BLtBibKDHRdXLvwxDVg2cusZexLP4e2FDhpyI9DS
zySBsaUocsowoOgGC3vRVYdx4kWA1GGi+fpA7KSJfXGTRpw6g7jxUrMlIVRZi655giIDZ8Xv
IMgXObo/+F8CB20ZcJdMwg//iVAVg3miLFM6c0M962Zr7VY7cAKmlaPz8cvAlKkEFLZxbX4i
fdQeihofzUha+Wwnjqt8tOeNSq8MN1DpWZpwy7cWU8+7LI6Aybk13YRAfBQV/tUVkN12U+nH
MjN8kI7rKjBNshs6M06PZcL295JPUxJHvuPXu40sJdFBlJdYziBGNUkJ94kfF2WRVxahowwX
HLZbn4ePvTD0hOQ5N8OMOdLeJrIPKa0gsIVqnqL22u4bRUn7azOhngPjDM2TzIhUdXTqwGB9
LAyZm1+hbpRt4NkJEz0enfb8eV3cyFbbx832eflyvwrYj9ULBAcEjC/F8ADCwSq+qcfphvd6
o18csQ12kmqwUoc6zEzTMV0iEFnqRL2TnZj4Mw4ZFxOfjMRi4r4PZ5tPWRMz+UebFVEUAzcJ
EMJpQnIOPsBvTBRLypAogmUPHnFK7PSkqk5YHkkbHO1crODbria0gpgYMQw62gkefhpyYkyC
2Qb4kcYZGkEXZG/zKpDo4ZpcZXbNICPwILTQ1dJb6vVaJ6RTOO2ErVSDC5wG4gFDnG1PXQBP
JswYSZ5cjIwn7VRFAoNH4MbaqQ2eTqtCTQzCE8vLM0sDYlhthiluk41k2839arfbbIP9z9cq
AjYCjeZMirQViW6i89MJN7lpqmia43FIIyyE9C2LC31Klszp/ShgC8Q/Pj8OCdvxaOTkeOOz
kVc0AXUyGkTBOCPvDJfHXY2uWtAsx7zTMEDshlmFBH1oOfglkQxXQ1IxySxzfQPb5KnP8WKC
BtqBJ2cYOj0+umw0lqY6HDo2fa7J6nmz/ekW3ypR0+k+2HDQFHs+B907cQxjs9mtRCScvbw8
NWL7DJSpUqmBwkqeluFtShJQHg9ZvTFr3VXh40hY+XI74lXodWl0JimeoqkzsNzCUCmI45Oa
pKtoWNPoecK351eAvb5utntzYpoTOSvDIsm8W7Be68K0a9cZpUzxsNHDxXq7f1s+rf/TFNGN
pFooRnUEDNlvQWJ+p61oOS0g+Pbn4cPGmyY+eUUbU85uMwjDIumsc74wSkX2EqxS32JwYL1Q
k9fOZqtEZ/X0uF/t9obZ0S8X6TVPMfuMI4XDPBvZT/uKVXBebu+/r/ere9SGjw+rV6AGJxts
XnEyY/jqGOtQz9RzB9ZYfHDF+a215cpUe/n8BaSjBH/KfCGj5iuLwB9y9O8FRHwQ9mGyRCmT
0lFIiIh0mVvxtJzIa9IrZ7seo4LmTPkRFbQECYqc6L6OVFNdRCxZnkOi4CkqarIqljYherF6
xJkQcwcZQv4Jz4pPC2GqYsNc8B66MFffKDgswBwVshbFo9smbesTSKbqwqynGidb26N0OqKv
Prx06KXxasRBnozB4sFZKIi7IojFUxG6nMObmESE9UWFy/ecTSEURlFG41cfdUl6mYIdyXZx
K77vg2PAXI+JJsl3KJ0wHsZ6wnGIsMopUTOYoworopz50ViLeYcEWFv96p1eJVBVIaSXJGl0
Da3uggZwoSj6/kzXYnlGy6rK3dwueRghGcXA+gCqhGjVCrZ6r7xDWFIC8UWVsxgRqhJNxdWc
+WApdIjCKW932gFsAwsDxJhH/sI4oJkDCp5iiICGa1ZMGWYBXo6JCEuuubp1sKAhTaDBKOYE
hqiIsIjBNKHFwzQcxdF5G4fFOwmwT+I6reTes1v9dhM99RQx5tVVZhv/G0lEDOcA4RadQ8AS
SqPeI/CekU9lAetOw5MeglDXJdZZWmU5kOu+aCXDcqfhDKKeA9abWkDK4O7WB+ve6ILHeWUd
BAzNrNrNAIkv++uJkwKrrZpAN782KiAHUO7r1YF7X7dQ7YoxlzOzYl91op2kCnFpfpu5lh6x
i1AKnZsOZWJVYQHlWye5TaQ2pWLx8etyt3oI/qoS+tft5nH9ZN1iIFHNAc/UGtvczDsXPi7O
G2IeWoMlCdgNgWkXT73Z9DuhUpuHwHFg/cqMJXT5Ria4+mNbf1EZSl2DVD3VdgFIR7H2Tay6
Vo0sUkR44yvDz/oKVPVCctp2DZg1qG6dPli1Js9yEOecSJUnbPTz42b7bbUP9ptgt/72EmxX
/35bb+GEnjdYot8Ff6/334Pd/Xb9ut8dIclHbLXpZMaYRc7I8cACADUenw7xxKQ6O/8FqpPP
vzLW2fH4AJe1sMnZ5Yfd9+XxBwfb3Oz3rhRd/GBbg0s4UGJ3yQabDmpCVOrrMuFSVreICQO3
BrLIE63+/v3q2BlsgoLdHu2+rl+O4HRB976u2n2D+UpAcsGHhWBWrYqoCS2vZ1wxfZ/2weGZ
rC4AY4iiC6t+MEHz5yt3E8eOyfTYMTtVhxD4XOzSyW9xoPcpysnsANE7Y/zaAHbXwSCJJAs3
qDHJ0FAcXExFcHg5Nc3hBXVE9dWXn1ZfSh7ks6b4BfTgmjuKwRVbJMMs1GSHWGgQHF7Oeyx0
iA6y8DoH/TjMw4rkV/CDyzZIBldt0wzzsaI7xEiT4p0lvcdKl6rHyyJ9V0PaUIcogalxnhhF
Ku3xq5erYNtMZ/JrCcHVAFIvaQDXRYDV9RLsg2SZptC+lP2zun/bL78+rXQjaqBvSvbWNcuE
p1GiMMQfCv46CgyPlcGUGiNpzjOsJdlgcAZGNoJVoDqjbgOnoeWZNddk+bL8tnr21pza4qoR
73bl2Buw+2Zu1qEW8A9G+27FtkfhJlss0U5Dl23LPl43Y0wLA1y3trV9Ls7RVQtoqOqivuXW
LczQCfWGgY2LhbWxGJKmTOnF66uEU98ANVkS1qTm6UHy1UvJ9J1VzlDqwev7fDyf5s6+qS5b
lU0S0IyEDCVhmJeqvQnpKoPSVwxtGpH0SSagHvj65enowqii+9JrfyE3ZiTV1QRfVmn3JcBj
lc34Sa0GPwOs7+UHXoEVEnn5qXvhLhPCV+u80zmCybkGonWzAwN3WJ5jo5GuzVVHpVs+jWXp
EqHGYN4+95/hHabwoc0CMDGYauOU/oItKEGpnIK6a7MyxaqqBYlNozCs980IKWvb/9LV/u/N
9i/I1PrWAa9QmDLbkipIGXIy9a4ajPyN71q/oIvOupFIPxvcuAmzUmIT5gAzwG34rw8Aju3h
WM5KSO6/6WloQEN01QN4nmTOSZnEVanMx3eVGJtQSRkTSCFaiFSZYcFzHk6Z+1wmuR1AV1Aa
Jd7FLGCC8vNofHzlRYeMOnxpHF5MzUODR1+6BCF6PO9WiM1J4PpiZoN5FoaZ84hVDNN034zP
rPlI5r/3z2bCv2DOGMN9nhm96R2sTOP6h273gSNMFbGKFAZtJUY+S0poPcWzoQbV/WqjDFdv
q7cVqMJR3chW1VBM4UD6kk6uPBM02JmyuhhacCS9PcA12hKuBpjl3Gjjb6C6xemqDwdjZR5D
A5aRr9miw17151XsKu6PryaRb3w68RnlBgv65BmJ1DvrDTbNvS33DTqUqOb9AeH/zMO/MM/7
wOTKz1Y5n2hE7wU6E3Pm2/lV5FfM9kUReu/bGnx0VZF4piRz1l+h76hms8gjN5z5mAvzAebg
kt0gqUfAvKWIluHtFb1hpaooI/LpTIesOeF5UQ5wucFnEY+EjhwPTFAv8PLD47/L+83D6ulD
3Qr+tNzt1o/re+djMaSnsbTPAABYZzSvCBqwojwNzb67BhFd28eDsOJkbIpTDdLXZwOxVUXg
ujhn2Fwusv4CEHruWVcsrj27yyI/qZkzNfAEG3ewkOmoBtOIQSnCVyESPqQXcKBGIEYtexqm
Ett8BX6A5WtKBUNKMJRdmLXhBtb89CNT6gU7t2MGBoM++4OAOorpzryB6JjJA46FyPB6x0Bx
SAaEbygb0bTG29yHFHs+HJ8lmbeBEhmfSiP/n8ncHPcqVz5eZxjCYtyQs4imZiN+ZmhOHkl9
u2x4FNxBmd9U3zVhGphZXLzJHMXLsV1d3pZ1d2pzEK6TQkGtv+Gzo9sA2zIaZ15HyT2UgzAj
YkMVSeplbB7N+UA7Ma7swtfDTQmPrBwHnofzIkTCUMBuIxVEYCEnlgxEvjAjkxD0xj0vxiO/
O4ivVZGmXucVER4L64sepmYKkq1G+hreh6sf6/tVEG7XP6rG1Ea2dKsAtVqf4dErX5TkYacA
GU0g13Gf9W1NSXn78VZGP94vtw/B1+364ZvuG+z6cdb39YIC0WY7XfZS3eTNWJwN9I8D91WS
ebNQSCvSkMT9D5X0mBHPk2tIUqsPRHtXNtF6+/z3crsKnjbLh9W2Y1Z0rbfHjDgGyzKkHdD6
XqClrrowDmyko2wuKLwXe+662txBX1ag6htVqZZHeE/ZfvZl8E7D2SIf6FGqCDDprd8uqyqM
/7MbJCPyNqUNsb4L8bf9Yi8ZyxdcCkNs28//sM+gUEK/70cvihgeyITHXHHz1jBnU6uIVT2X
fEy786phMkt4D2iVU7EnSc4I1hwmRRQ53ANkBHlXVWlg3tMakPDqM7+3XfCgNdIS+WTG0bR6
hzNfMYpPKcOPtI3KUy5o18XecC+VzhPk6Dk3W2U0MMHPjSqEYZoqep5HNc5zqpqkmNz0hk2U
YTHgQUsKetHKNiy3+zWyJXhdbneWXUJakn/CvhzT6yKYJqEuXTeojn2AFFEF9+WcgIbj1B/K
eIZtUCHPNU9vqxu1y4/H9gzWELo9TzfnejOlPj1ecog0vjVLRH02aO4U8DNI6vth/AhAbZcv
uycdGwfx8mePXxC89PiBs3IsWYIcJxCV2xao+jaRJEe5SI4iiL6/B/ff16/Bg+smNN8j7o7+
hYWMDqk6EoDeVqbAfRMG00Gb0F8SDR0XauWEQAx1zUM1K48twXKx44PYUxuL8/NjD2zsgaWK
xfhHKp5dDElC6Uo4wsH9kD60UDx2+QDMH5IbkdhDkIkEtTZ7XA+cXBVwgRO0zxAhVQdrbx3X
GtmTDkYpTPdt/bIyup3dEYHIZlsDLeU1hBhJ4nxFNEBSysT/eaVLP3EzmuYGxrPYNpJEZugt
xVkY5sF/Vf8fQ4SSBM9VldYr95rMPoor/TctOsGup3h/YHtLxcQXaIXKYKaIzN9Y0lWKmZ/Z
AjCK8a93mG2VAGQkj2/9qLmYfLEAdferBbOcoYjqKnX3DHEDOHG0KuZ9VYXAdNCCYYgak9s2
EVgkLJBG73xzRCa8ujVb7+4NT9kEESyF4AHSNS5P4sVobFXaSHg2Prspw0z4q9QQHyW3uD1f
6ZPKi5OxPB0dGxFeSmMhC4gWccOcMusqhGShvPg8GhNvKsdlPL4YjU6Mkq2GjEfmipvtKMCd
nfm+QmkoJrPjT5+87+p1XIxuvFueJfT85Mz/iWwoj88/+yrSdKw/eqpdNWMg7Ynvg4cKUxI1
0HhU42M2JdT/lwFqioTcnH/+dOZZSk1wcUJvzk3m13Cw7+Xni1nGpO+6oyZi7Hg0OjW11dlS
9acmVv8sdwF/2e23b8/667vd9yX2ae3R9yJd8ITW5QHkcv2KP80/RlHanyD8PwbzSXgdwOr1
kaf9arsMomxKgscmHXjY/P2CKUHdTBb8UXeXwdxj+i/zrAhephB0T5k/PWZ05vtspsCSgRFk
LjKScmpdc5mKWn2zQSWvIX3PgUhsaDKH8L1gFBQgV3GVTxewnC/Mm53meB1j3BDp5/J4bKp2
Axyd9YHgEHswvGfpwURyMfrnnyG4WcJuRuYgspbFUkmdNg18Uq9LEX2CLuPHXlLlcgaSgFDk
5Qn1foVmUJCYUGwYqb95smVFyeEadfN+Qu6EvxJjUQ3dJTQEVwVJFTda1UxkTgf2R8mCF+/s
kOorfTIwArujs4H2QoMqKr5wJYvDE02FmMa9cn+NnBXkmvH35uGfwX35DJlJgxHpwCzgyHOB
nfDvTZSwOP4/yp5kuXEc2fv7Ch9nDt3NXdRhDhRJSSxzK4KSKF8Ufra6ytG25bDliO75+pcJ
kBQAJuR6F4WYmdi3RG6Iyoo+MvQMf6WHRMlp8WUTy6j9JbK0baqyIk3jZbKMnDE1bKFowm7o
JphsOcpsr+fdpGXKosmmM2BR9kvJYiUaFhVso3K/MrbKowaYNEOUDJmyYDRvrOQW402v+3Lo
2b6Eu+Ke3m4kum1GxwKTSDp00f5yDnVZo21Dkh56rwXDGjjkJKsOYteXuG8Eor+mBsnaBcbv
k281CF/VqhuoYCrRN7T4fD7DoXv8W/D7vaySDQfQ5CYAuEMHP/IBT9CP5LViWwCfhwVLULxH
iVYBm6TIq6d6oqn9g4Iu6ppaHRyFiuleBHwBV0K1LWdS0XMP8+AiPSOWy/valmbqWE6GSmH5
enSWYH9gyMjXXvQ/6fiL/DsmDY3auFAWvmrXAutlRUOEeOwCj+Mdj0Gj8CLXqsbrtj59nH/7
eHo83mzYYuBXeDWPx0eMlHl655hBsxE93r8B7zZlhXZyOIJ1olqL4DeyIkT7BxSe/5fGcGic
sbjSYMtGA+AM7bnK7nfH/4MbikjtAK4UTRkf5ZGQTDsIfoRT7oDxfD5+fNxAu+Sku52urOm7
WkmgKJAuug3h6/369nk2cpRZifEvX5TPw3KJ19Mc3WY1jLCNvC1kjk5giqhtsq7HjIK4Z/Si
f8IYHH/ea1LbPlmF5vvp1mAyhSTfqr1GoKDTLaqTXnQgqjtf5B4wqXJEgtt0v6iiRosNKWBw
N6ZXs0RQ+34Y/grR/Aui9nZBMXwjwfcW+G7lLqugZtQ9WKJw7MC6dNaISHqVaxOEPoHOb6FW
BBzPCbIqiOCaztQUpLInbOMo8OzgWqWBJPTskChezDmqvkXoui6Zopu5/pzCxIxsSVE3tmNf
b0SZ7lqVk9cpWFvtol20JwoGNkd07jTf7qvJADcr2+46JejaZVkZlwysKKbG4hggh6iM8kph
CC4olx7LC0FCaW0ltKQ7GqFxtWgiAr5aOrdkNVaNgaVWKA4kx3Ah2WQwN4uqJUrmsV+iuCVL
Z1mSYvAEkn8dqdoiiamchRecCXFwuE2NjtxhWKiqITBFtOKXEQLF/a6qZkE3ApELOjDYhQit
uVOq2HaXJfBBYO7WaQnXNXr6MN+y6YU00uBWv7k+ct93WRaTBSxZFgUURywmPfejl8Ms8+9e
9QadDEympx8jbbXB0CdNmioW7xIYZvUsnM2JUlUiaTooiMYGvkDVtSr4Fq6bh0JWoijoDeyy
WRdnDY1fbBzbst0rSGdOI/HiiibfWVyGrrz5KkT7MG6LyPaU82hKsbJtOoCQStq2rJ4Ipq7Q
eiYplkyKQvq6qUwVXEdFzdbZL5SZAqv8RVnpKsqjzlSUwJq1wQptF7uWZdHd3otUTOWsqioh
LdiVdsM+ltZ0/us9AOHXCzpjY+CKBLPnq1LQ1iC9NeXBArafBfYXeaw25V1q7NPbdunYzuyr
7lQ2SRVT0Qi+IRx2ocUln2ThggTW7helA9Nh26EsQVWwMWyMlnEFFQWzbe+rEtJ8ic75We0Z
CmErJ3ANy7jgHzQuK9MuM66e4nZGejHLNHVaFhhWwND/CVw3Wr+zAhrP/zc8XJwZDwcyjR33
Rnr8kjacdd0vjCD/nwHz7JryajFAFkbJ/ionFjuW1Q3KZCOFYRwFcnalFog+ZGo9SNqmOBg8
VZQ1muVpREbOVIiY+Qhjra3wNQquCwPf1NSaBb4162jsXdoGjmMcjjvOUH1R7aZaF/0paDgi
s+/MN++Bd+hJldFCvJ4NzwzSx6bIpqeXEJDcvz9y9RQGT8O7uqLAVYz++Sf+9hpHBZxni5o5
OlRRzwgQUBVKRDoBFjc4OYeNVvwqKlK15AFyKBncdOVuGzG5pu3spRlUq8cocpQAQ0gSft6/
3z+geGii625bJazYljLVRkeveXio271k5iUUrkagCJHyH8eX/AvzBIaZm9/poTV6AjjEmCI+
LDd5rosAe9R6GxN2hwhFIRyp5OYMLNoxKgH5JHjcNrw4NRwnAIagvi9TmIh1+Z9gwPSG2/DF
KlVVs94RQRt7wTDatt48EMN0EXjuy5gLH2hpJdxy0VDdU5ihC9SToLAqHU+9C9c74Oxyk2Go
sXpDjtB3WsTfdVSueKhuETl40mIhANVzpKSzbek6MwNXDCjbJ1Eszmuz7BiR29ZxLCPJusDZ
RU4jTFwtF9IEwlCBbVSnquD5fP92vPk5rNepinpIdXC9Ttq8Jbg/l0ZtW+TVqkmUQ3pbxNQd
sKjKJlXtiAHEnfYbraBtsZGsOzu47O9hceDzRLJMc4BPIWhAJGksphvNkEDM/EPbbFjLg4n3
ls6D8BVYi6nMVT4q4ePAhTloGyV5DjpxH+tKg62BVJF3ArDYdIOsU9LP8MJjtG6jagBXz4XY
5Ln/S1quFCa7z3aiCSII4Je6dPf4vI09l3N3k6R1HM19j+L/VYq/ycRZiduasW5J+itUSFPk
XVznCblFXO1ONSthqM6PAUOLWCHm2jgzoucfp/en88+XD21o8lWF3u8vOrCOl3pfCHBE1l4r
Q6lLu1noWbE82pJCQ96daNeuBvG8wLESsh5InvZSGS7FZ3ObcslpR/1Q1oZgkFh283B6Pb+f
np8lJSQHPz+hvZDkpgEZ4IqRdXlqmPKaTb1VxNlVsyE/ynwLE8K5hW4Rt5OjgKLiTAKpcxxJ
emn6WHz/ftzpXa6BwLY1VO708JeOSF95HI1eOYzKF6PnOMbUOh5vzj+PN/ePj9yQ+v5Z5Prx
u2xeOC1srLtYXVLvAgD+TR0QJog+EByVATIrcAA4LrNCda/UsUNnNdBRH/cfN29Prw/n92fl
uB1sfg0kY0Wh76HLpJoLAPfJxNhUvU+Wf3loZKDImu8oLZu6ieh7p5ROxIFQSzvEil/UCDps
bQ3KtRhWJ28lvKzj328w5BqjwVMQCqpphtKpfIE6CkclbgW4K7vUpn9Bz/TMYOsKffk2x6Ft
ncVOaFvyYUs0Rxxty4Rq5rBTT7FyEGiBm5gniM5ZrRpg8BWHENEBVXyrKrjJ3MbpiS6m3MJX
OrQlIDrMbPK+nMseoRDA8mwMdijIiwIF94rAV6mozYTnhSGI8v20DAE3eucNazVKYvQPBaZK
EvFzV6W696G9mNjB3rrCQw+mlxXQwv0+q0O8cyybMlMdCBLmzELpvjnA2ULRzA1lMtJlH64F
UY+VEw15Lb47s440ExsoUFg3U+4VGkaq4VAVwIRz2Vx5QOR1OHNmU7iuN71kxGtPXYSGHFs3
kM0uL/DYswMnn2KStOWOObz+XuAHUxLoFc/2OwNiblFVRZTjU4JXmWLm+mSuviiOytWHrrye
qz8PTVXyA3JwxzlTLFxvRk2MVbRZpdiLzpzkSAe6pvUt16VKb9q551PzeyDYxMy2LGL6LJL5
fO57iphpnTYFqSXgjykmleRpPEA07mwEl9Uu2lfyK6cjSjwCJB5BEtGfEoKqqlEcB7wDZmJJ
tikDwSSo0ZQEH38ouINj2uc0NYG5Pz/8fDz9uKnfj/h03OnzfLM6wQ77elJPtDHTS2aHVbU1
Z2gy/eDxlKcdepdlDfr3jhjZPA61bo6NsmNicNBn3QlDIk9y6x+Bxj35QrHMOnyuoMrbSI7J
cyHonxHgEppNkRoKQiGeiMk50F0tNQzrVRh0VHlR3IZh4JOoxHfnIYVJornt2AaMYyvLWsPR
p4vUQVHpuz65AjWiMDSUY7zsXkgyls9d63ohQBM4MzuiC8lrdz6jthiNxKF6iR8o5HAgxvcN
Rbaxq1kekTTBLKAzwKPDDykrHYUmDLw5VTeOku2OVFQ4d02ouU92A3KmwCsEJC6u7cC3HENL
al8zNyKJwtC/3l1IQq+Lov4+mzt0Y9vAtW1DxRB3fV4hY+35ZM71MuwsA2Zzhz48JG4LS4Ee
F44yrROOnNPCS4lqR1suXyi+o/4U7/9Xm82pNmxx2ArxCZFR03qh9dUG0bSBHXxVaSByvOvD
0LTFlh5flq9826L7mu3hmhNEBlQoJNc0alZSqLZmvh245PpA3ZnjBobhE5o1x73ayqn6TcPZ
dNFb9UKvDWMeLbKFdMtu4olbLYCKiLbwyrPGoE5DQRQGXzK4AnE894Mi0UUKB/chTuMheuuE
lVi937/9fHpQRUFDxAIdJ+RRWTKVuwLw0mfwcbnjtE1arlo5ek2WoLLuEnp2knZ4tLaXArC3
48MTXE2x4Mk9F+kjj/sqKXlEcbNRGPEReCBfROboWgRhkUGbJo1yrWlpfivr5REWA1sr3yoF
LIMvHVhtVlGjwooIg9vqhHzsNNieBwPRmwX9uarKJiMNI5EgLRi0Wk+W5intCsaRd7fpXh+W
YpE1+lgtm0KD5FWTVbLuAaHbbBvlsp0kAqGIwUJDqdntnrZaQtwuytuKUqKIUtIdq0rVjo5X
at9MHmKW0FkcJdrIZ60G+BYp9pwIandZuY7KSfXTEsPE05azSJDHQuCgpcvTstrSfJqYJqss
nti/aiQ5ukhdwe+XecTWhno1qZhK2vQcHMg0cIXmpHySqGWgnwkfVkMpZatNA9iX0lsVVEcl
3hRhKskRhi5AnM7/qOXWGBtzb3A94gSwHPOYUmNzbA65Nzh3JusLUHuMBZtd6dm6yYB3M+TN
It1aTEC5J5gpTVqQieo05TbtpmRtGmkLEkBpjkrzdNIyKL/O9QAz8oQgORi+oNBQJGKZchcY
geY9FkNEtt+qPRYrJ5Xh5tRttq20JVjVLE21TWmDJ8yhZq4K7rKyqPQuuEub6mof3O0TODeM
aznKa8UHjDqtRmE2eXZyHRsuAylW5AXWWz3qcmQ5Jz3RyHgMNigELbKd1TrOgPVo2zydvINa
wJnRW9JL3ISAGRRLIrIxOz89/EUEzhjSbkr+bhecY5tiVMDLSdGR6iYe9WCScOMiMU53sFkm
5Hs+/KW0jAeDGuNLwJjc//X5htq1j9Pz8ebj7Xh8+CmzOgaKUfxRRIS7+QVq6BEg6EU0Uk9g
rChgiTL5BS+EjWIOOFFKfIz1RcZWyn63ZPkhxdwpm/A2zQ8ZIANF8Ma51HWmJRqrGY8axjGF
iN/Vdgctjdx+PQj2kN9isyTi2WN++FSR3BS2OxidCkVGBwwzdigrfNCPEk0JIi0OZA8dXoJU
9poet04j/c364VFOtQHj3Np0ScZqEbikh6GoEw4V2WPP82ahNcR/1OFy0yGdQz5IHuFbWDgP
MCg1TGfl1TSBFcqSHnd5E6avzmGR4/NcukZjwNDHmEQxYRJGog2p+dsuM3yuGF/va/d1Kqn1
EKN+wUhySg1aCOOPi6kMvjJnDnIgrLYUSzhhx1WkJeWTv01qiXnbrivWclKpFhyGrA7rd8Pe
Om7cpJ4e3k8fpz/PN+t/3o7vv21vfnweYa8ibk5fkSpH5n4S4m0YkArvALRFVAvMoCFKuph5
hzgneYQdvrXRv37QB9lFDTg7fb7T9lyjuz8wUG3gLcgVQ2Yy7v1Rli8qKfyumCniNcuLEQUH
mu6pDZwQ5+Pb++mBqiOGImwxfEtM1o5ILDJ9e/n4MT2rmrpgioM+B/D1QUkWOFJ+wVNApBk6
VEMp7iKr35QJmvON993T5+sjesFKZ4dAQPP+xfibwzfVKzfZ+TeeVA8YIlk6J0VkmJfn0w8A
s1NMmQ1QaBGK8P10//hwejElJPEiilNX/7F8Px4/Hu7hBP1+es++mzL5ipTTPv1edKYMJjjZ
SCR/Oh8FdvH59PyITtZDJxFZ/Xqi/xFR6O+fofnG/iHxl7GGAzUbVl6Hb/D9bcqIwo7syi/N
hPHEwNe5t8uGPxUrTmjxqWihhsNRoFDvdGAZhqWF8yJJi6hUXDllMgyNjS/4laRhukKJ117+
JpIhq1GL81VGETB521RvD8ErXhov/PyJjNOujfmlV0yiv8/ABRpVa4KY2xJ8E5Ghx6J61JJF
cy+kVL09Qa8kV4Fwe3Rd35/A67b0bVk23sObNpzP3GgCZ4Xvy7rYHoz8PlkuIGBOwq8ri371
p5EzOWXGQ270MVAnsEO8oEj5GysGeM8OU9j17qL3U/C3PLA8UKngtslWq1SK0qpgxd8lI9Oo
jRlKZTi9RxJHJmG7STiSHjyQy3aISuUmU1Hs2Q8PR7jynF6OZ2XORUmXu540N3qAakTGgbJ2
rQeoVIsiskNL+fasyXef5mJNUMQwCUWkcGppRo6qUkki16ZUgTDYTaIazQoQpZTiGFV1uuxy
Fs4DJ1oanJv4ALSiogc36jJtrEccXpYH/Jj9bccSQxyDLv52iy6nlGlO7DquvHiKaObJS7kH
6J2K4MCguAFc6PnkQ5pFNPd9exq1U8CNKSRhSNHFMMa+AggcVcnK2tvQJX3gELOIfMW0TZu5
Yja/3gOPgeaYj08/ns5og3l6hc1Un9sza243StkAc+ZUSwAxn0uam7TcpnlVp6MtkCTw6Wa2
pI/PysjpOtVfGY1ivJmituSgkHZR4Lg5ZRiEWmQ3kDs46uaBqhAt4tr1HKo/y2gDF0Np3fKr
+hZPmPERARmDesVDprTkAt8KuHrt5xhAGFwveBwQ8ZwoKrSIKrY8uRXasiscwhgsCV+ZCNcG
XZ4Wy/fT6xmYr0fZRBwduVL++DiRp5Si53DfnoHfUdVBRew5aoUuVIItuH+7f4CKvcLh/vXU
tNVp/nXi3n3r+PIErO0NO75+KNxV1Ob4NNi6D+go7dUckd5VF4y0+aYByU/EMQvVWZZF3w2u
43AnmYnIo5eBjxPXMvulY0WyBt9DZqvaJcOQ1kze9/inetoI0BhDfLhq34VzRaI56TChaXx6
7AE36PcZA1fNX4G5CDZJAnk2FWwMnSlFzURiFheZND4X4aqOE1cvVg8lTasxRWonjloFGtdv
54Kd7ecVTLF7Mffp6elbqowPzZPIiQIIz5OMSuDbnzsNf5dbg7qNAghCNVkwD9RmYFxdOO5l
CPM8R/J9LQLHlVXqsDn69kz9Dh19s/RmDr1dwb4Dxfn+zCbv+lf7bhz9x8+XlyEKs7r/9Hce
HhVY599kXB9Un6zihFbworQri14bXsclhmw9vj78c8P+eT3/PH48/Rfqf5Mk7I86z4c7vpC6
rAZvij+Sp4/z+9P/fvavJWnSGQOd8Lv4ef9x/C0HsuPjTX46vd38C8r5982fYz0+pHooThT/
z5Tj4xXXW6isgx//vJ8+Hk5vR+g6bUNdFCsl8JP4VqfosouYgxaqJGzCldUb1/Kt6/zlat9U
BvaSo0juMmtXcMmyrk7baVPFVni8fz7/lParAfp+vmnuz8eb4vT6dFaPmmXqebK7Pd4wLcVg
qoc4irKIylNCytUQlfh8eXp8Ov8zHZuocFxbYeySdWswd1wnMVSNVKAmsWPZUq3XLXNkU0vx
rQ75ut2oOwrL4PQz8D+AcuhRmbRNbCCwjs6o43s53n98votXPD+hr9SXh4usn4lEo5ZdxcKZ
PBYDRJ+Ot0Vn8D/Iyu0hiwvPCaxJMQoRzOiAmNHqdtUeclYECRky+0IwT5g1mfE9fKz56N5u
7CbeT/nTj59nYtYk35ID08wJo2TT2dooDajcVaYHfMMqk2QNPBS64gQkgqOrVmQRm7kOeWfF
IOuyAAa/5Rt0XEDC0FYB8oEH364ciAG+A/n2hd+K78OqdqJasagXEGiWZUkCj5Gv4EHk5WBG
KsaRMBxiq2+CfmOR7ZB3vaZuLF9ebHnb+HLAl3wLne+pNhOwrXjo105fbAWSuu+XVWS7csdU
detacmk11NOxVBjLbFsOiYffsqwErquuK08QmLGbbcYcnwBp0T5i5nq2pwFmigWuEqw/oMQD
HBOqET0QRN5wETNTSwCQ57sU8Yb5duhIxg/buMzViAIC4irDvU2LPLBIjl6gZB+3bR7Yqmzn
DoYFRoFmv9RFLfRm9z9ej2chGpCW+2Xl3YbzGRUIiCNkqdetNZ/Ll/peKlVEq5IETo72aOWa
InYVRez6jkd1Sr/N8RzpM38oTEcPkwOupX7ouUaEXtEB3RQwc01nyD4qonX0f5U92XLbyK7v
5ytUebqnKpmRZHm7VXlokS2RI27mYsl+YSm24qjGW1l2ncn5+gugufQCKrkvcQSAvTcaQKMB
+FOcnhhaKjvg9iN6S+2OK0MhMwibQ+/ucf/MzGLH7Rk8EZRv+4cHlO2+jA6gOt+DUK6nScDa
20c0vd1UQ1LYwrzKSh5dYgwlTNQ4ZHWlRzwtkl20fAubQ+oZBCJ6cLx9fvh4hP+/vhxUdiZm
FH6H3BBtX1/e4VjcMybf06luy/UL2IUnFpc9nZ3wSTxQf4LzYBDHs5Myi2xpcKCZbBdg6PQn
6lGcXU7a+F8DxalPlAbytjuglMAIBPNsfDaOl/oWz6amDRt/25vIjwLgZXxoTz8DCYPb60Fm
ZGfxsoklMmfRZHJq/zaPDYCdTEzBNy5Oz1jhAhEn5w5Daf18Gah1RJ3O9AYH2XR8pqFvMwGi
yJkDsGU1Z/R7Ce0Zc22yS91GNvP48s/+CWVm3AT3+4OyljmzSnKIKUqEvsjRH03W17q5YG6G
2aJspN2vfOGfn890UanIF2PDKlJsLvm5BsSpGZ8Ov+XekuMpejKeGsfi6Uk03rjjeLT3jSvD
4eURUwAOmR81v4WjlIq77p5eUa03t06/8KLN5fiMjbOnUEYEsxikzjPrtxmTLc4mEzYoIXBZ
IxAg/m4SMXXpb9yWdpO61mK3w48ujEB/j7uOXS87A6tCipYeFykV8fjKSEWBVgdafqVSpLkO
mW7cAxHVi5B3LnHK6ZYmvXyHH2WO8aK70DlZcDMqPr4d6Ppee7HfRpQItHtXDG7hiQTTSiaF
Jyl6lr7cjKK6j/CW3RNm4IYyG3i0JNyY7eL5/u1lb0R6F4mfpyEfS6Yl784qM1Qove936gjW
mPbojviHE2qp1FYD/MDMamVqZ/fuEZhEtDQRyn5ngIq0ypvnoSrQl4sLpMjLuRR60Lkeu6Dk
noaxxO1E329KysSo/nogGPhB3qwYDSNJfWliVIJGdW/PIQIz1A1iCv5JBznlZ5Hc0PqxZUHG
XbfCu7Ll+eXUcPDmAidpqDhuXv8zQYacmBIxqHfGEi3CgdwzRRTGQz5yJBx6Ku8pd0OCQe3M
J8O9OOmx3iBxWuiZHckpsPVNbMUY0zdEWWz36DZMG9FgwNcCzzU400AGpRwD3P0a4tIihDH3
tCdmcoOucCYbbGEqGSkMIT8s6GVbI8WQk+ACnRy9/CYbfNUAFMBtQjaW36JQ7riav60NCBWA
PHoM12XhevL2t5VVWvK+xhh9alHMaja7s0LWC8MKsYCaefIm+6BF30PxHQwlfcW8AWxrOFoR
rQXwoUWK2ZeP1lpjmPWNPigaLsGZ2dg+kBzlBobYicrFEcayFF6a3Tg82Nve/dBd0xOJK6tx
wTRyqSC4FHoO4UXhCS8wXLkbkKIcWFOKIgiLMl3yuU5bmtah2/k4nf+F4x2FRckeR02v1Fl7
2H3cv4y+w+bs92bLgTA1siVkIGg1eCNKaDhsvJJzgiFsJtBnO01CNwszyBSRn0vNJ3wl80QP
luQIPU46895eXi1lGc357ZB7QR2Iol6GS8ygplql+azTH7Vh9LTD7lh1XBDjgCJPgRaWMtaa
nObopd6X1bIpYi31QOP/WiyKKb83PVgUZlF5GlPx3IjDKtKjDavfmDpJwHlXr9ANd35TyuIr
qLWzsUuGGZa6HOs6M2hIotuUTcFuU82OFzILvIFM7iblxWz6W3S3BWYQ/mW7ujb9dEqw+96O
2e91sqXWFrhZY0fw6fG/s08OkSWANfDG69oENjKXmS2N4r5py5GzJesPaOBH36L94QWDIHyZ
fNLR+Maa9u7sxFB4DNz5Caf6mCS6wdLAXJjJbSwc6xhkkgwXfD6EOTtSJRuf3iKZDhZ8MoiZ
DWIGO3B2dqSZvD+eQXR5wkXwMEn0Gxzr4+lg7Zcz9p7CaOC51eGwSHF91RcD9U2mg00B1MRE
icILQ778CQ+e8uATHjzQ9lMe7ExTizgfnKOWYmgcu94MNHAy0MKJ1cRVGl7UOQOrTFgsPDxR
zEfbLcKToCUNZFXsSEB9qHJOA+pI8lSUoZ6XocPc5GEUhZ6LWQrJw3NpvgFuEaGHqR/YmNwt
RVLpkVaNzrOtK6t8FRaBXVtVLjiTWJWEnqGwNgBQYzHAV3hL76W7B3j64596faXLHYbmpLyt
dncfb2hEc54QruSNcZzhbxDBryqM4kfiIXeCybwAYZFCmkqYgmSpCTCNFiR9ruzaDzBImIod
wB/JhfQq1JJqP5YFGX3KPPR44b2lZYWZBeakBYVJGRt084RAEQ71KAyOqKLx/gJdY2DPr5/+
PHzbP//5cdi9Pb3c77782D2+7t4+aapwLFSbJNp3agyAguGe0Xk+TdkwYI1k1XdaaAaZqIjh
wN8+36O70Wf8BzNRf/65fdp+xnzUr/vnz4ft9x0UuL//jMnzHnCWP397/f5JTfxq9/a8e6Qg
3DsyLfcLQHsnPNo/79GxYP/fbePp1OmcYYkDAopxkurvawmBrzZAN/O6XujPM1uKBWw4k6C3
ZvCVt+jhtnd+gvay7oVeWIFdHGDv7efr+8vo7uVtN3p5G6lZ000KihwEoIyXoAkroqV6YMeB
py5cCp8FuqTFyguzQF+DFsL9BJSRgAW6pHmy5GAsoSuHtg0fbIkYavwqy1zqFVmorBJQyHVJ
mwiXQ3D3A9swYtLXflhg2EKKT3pkmltyuSkxOTc9dbZrWi4m04u40kNoKgRma3CoEei2NqO/
Dpj++E7BoioDYKwOeXMSKNX849vj/u7L37ufozta8Q8Ybuhnv5vbeS6EU44fOFVKz61Oen7A
DDGAC84y26FzwOvHYLu+Y05Kb0eiyq/l9PR0ctl2UHy8/8Bbzrvt++5+JJ+pl3gR/J/9+4+R
OBxe7vaE8rfvW6fbnhc7fVx6MdMsL4BzT0zHWRrdTPgQft1+XoYFrAV358qr8JoZvkAAX7xu
OzQnN1I8Sg5uc+ceM9LegruMaZElt/69Y6tdenOnlVG+dgbKSPfQreC55xBuyoJpA5z863wg
VFc7lPhAvGTzzLdtxReK7dAF28OPoZGLhbtyAw64UYNsAq9j0fm1+/uH3eHdrSH3Tqbs9CDi
WC83m4CPFtTg55FYyemcKVphjkwl1F1Oxn64cFc5nRY2tF3dHMv0uevNDnnqlBWHsLIx/WDo
rog89tGh2NkhgZhwwOnpGQc+nUyZhgKCcxDr2MuJW1QJ8sg8XTKFrbNT02VPiQj71x/GTU63
9d1zAWDqNbKzuJNqHh6TLXJv5gzcPErXi5A551uEExKjXQkilqAVcRzXE0XJO+1qBJzu354T
snDauVAnmQ1eBeJW+NwmadjrkYmT0pWdMHuVSivuHiOzY10q5ZGzqVyn7Bg38H6I1WJ4eXpF
xw5DSO6GRuWXt8chuk2ZQbiYHTn6olt3NZDR04Gi4bJlVjkoCi9Po+Tj6dvurX2cwLVUJJjs
Ist1t4+2E/l8aYXx0DENF7U7o3BDEU50IjiijiwuoHDq/SvEuIcS7/yzGweLMp8d98JCOQ0b
IBuUwjsKJUkP1oPysyeuuVB6NimrHHRYFV+7Tudo1S0lw8MEI5RiN2s9/Umj9jzuv71tQc16
e/l43z8z5yVmpuC4GcEVY7L7jKhfHkhIpPa6FoByiIRHdSJgVwLXSE1S5ErheBbC2wMQBOLw
Vn6dHCM5Vn13kA73rpclWaLu2LPHOeDuPUVxE8cSjSJkUcH4QH27NGRWzaOGpqjmJtnmdHxZ
exINJKGH9xbqJl27LVh5xQUG4btGLJbRUDzpFOdtxKT++/5ihPCUDQI+57zFwmUiMcygulzH
u3FqTKjxW3zw8J0E/sPoO+juh/3Ds3J4uvuxu/t7//yguVjge1uJxWKFXz/dwceHP/ELIKtB
LfrjdffU3VGom47OPtPYsYyrQwtfaGGhGqxSErVxdL53KGpabLPxZZcvr5DwH1/kN79sDGw5
b4XXtL9BQewA/4et7g1miiyX16ka6SO3vr8x9m3t8zDB9lM+wEU7edEg44nCRIq8pptO8zJN
OA4WXQ0guGHoKm2IWwevRJZ1VYZR4aIWYeLDPzmmXAt1bTvNfZ0fYbRJCZp6PIcqtN2EF7/o
9uDF2cYLluQBksuFzgc80CzhjDJ3rzfhhSivdmV0rw7LqjYEKNAijCpOprrdV68HMbDL5fyG
d042SHipnghEvlbL1/oSRm2o3LOB4mZWKdwVH3C9TonqKTU9WilKmlsqZc8zx6FB3VJqpURJ
Xya0lcm0Bin4Iio97gmAfj+t2WFvU4oa7cKNe+oeql1PG3C2FOPyWXMsRrBG3yE2twjWhop+
15uLMwdGjouZSxtiLEMbKHIjgWUPLQPYF8xgNRQF8H63irn3lwMz563vWz2/DXULoIaJbmMx
gJi5253M0WZ6JlEUqRcCr7uW0JdcDzWIHh2+XnwCegcFh4xFRlKWtFgB4oTv53VZn80MhoIY
aF0k6D4+IInV+hiro2TDRFwl3UWJxsXXYVpGc7NYzxgBAGQyB07VIpShYvd9+/H4Tunu9g8f
Lx+H0ZOyrm/fdtsRvgX+X03ww2sKOIawJLx/Q2eWiZaupcMXqNOTwwe31XUqraSfQwWFA2ES
DSI25i+SiAjkhRiH9aL/liYEROahrCjtZM5hsEF5yVfaWC8jtV40FpRVdR4LzUTtX2n23GWU
zs1fPTfSLv9EWepKRHRbl8Kw6IT5FQqNnMtTnIVGbjn4sfC1hZRSUOklnNm5sZBhcbd74Nov
UndnLGVJCXAWvr4D9G8ob48Rdo9WLd3+rEWkjxyCfJmlpQVTQgccrRjYafwv7WWDJQmYd1Ot
HEfQ17f98/vfytv/aXd4cK8sm6zD2FxDdlBgjPw+kGOR2kjuL/W8CiO/DrnrXk9508BRv6TE
xt2dyPkgxVUVyvLrrJvERiZ2Sugo/JtExKHnxFjVwW2SJk12i+cpSvQyz4FOslLb4PB19ov9
4+4LJk1SUtyBSO8U/E0b7H6LUWNQseTuWHNoSL0WeQITPrvoV0MeZsB68dlBbEh4AaXlRY9N
mA12C4A4TIJpHBYxJkei0us0iXTnWGqTYqaLKlEfEINAvqzXdx2DsIme1APWZ72ktRQrCk4G
fIAXiX93+Gj8yAKzv2vXub/79vHwgPeY4fPh/e3jyQ4PTOHoUULPr9ibYmqoGS+5gREfW9f8
eHZEeAFGdDElJh8uB696j3lBVvNCJCAyYk57YNuC7ry6wgjLDt9vDYjZbHTolJHb1thKkapf
ZnflaiwDtyOoYhiAp7mDNopDPJ0FnLMDfpuuE0u7JaU3DTE5woBHeF80sGwuALsiyFNflMKS
jbqxVjTrjb32dUj30KX0q1g7vNRvh480YCpnwJ9U1aH8grmjnw6cZoZiGUewcewG/gqOERFh
ANNIKcSTs/F4PEBpHrAWsnMtWDg5Yzsa9OmuC08wM6/OrQr5NceLvED6DY1MKCuJtxqcpWvo
0LJE253dkuvYrRmo8appwMWmo8nn7KfZEjSb5bHZ61tzhEiFpSRnjWNrWPFEZKKDq4HGYiUK
Pea9hcD+WgKXR8OH7qewi4Dx9EwFpOzW09Z0F+m3tzOXQWiyzkY0BvpR+vJ6+DzCqDofr4pp
B9vnBzOwKdTtoctKmrLdNPD4DKWSX8cmsk992DUMw+jVQQW9K0Vh7Aa1bjtU9/Fkqoni6DcE
+pWINUKqi7ORDNHajV1f6XkHe+d4tNVFlMmW5d/HR1I5msGpeP9BWQY0LtyLMLSfhoR1hTWz
2xOsNXj3jj9MNebOwcFcSZkpI5myR+Fle3/o/M/hdf9MOaw/j54+3nf/7OA/u/e7P/7449+a
qSpt0zNgeHDtKYf+huGafRqkl4A9sJlCXtZxVcqNbnpvFnIfUdzcrTz5eq0wdQGnNzmq2TWt
C+ONgYJSw6wNiTCQ7B0A2oGKr5NTG0wODUWDPbOxinE2EjeRXB4jIe1B0c2cisLcq0C7Bllb
Vm1pU5sDNNRHWJkoU5Swi0hK7qKmLwZnm66FuoQHeqIBHLoSFgJ6+tkpG9pN1s2KY7EqvIXx
taEyF74qfi3Cknug2+pU/4/V7Ajz+ZVzejg6Ut9cEsBhoWCqESl92KPKGuceTCslMgzw4L+V
3He/fd+OUOC7Q2OyESmbBj8snK2ScUD9cYOC0EO4UFlwew6KkkxSk5AFohA+VHRe6BkMbqCZ
ZlVeDgORlKEgq7O6f/UqTva0JrqBAnFNcTkZuPGFke+uQklS+46ZQCTCs5rUq+5MmU6MCuwn
IAiUV0zWlf7lvNE5e97hQFEqVM4oT+3ChkYFcEBFSuqitzL0kpvjmYBOvJsy1ThRQgFJoOG5
JWB0CuBx7DIXWcDTtHr3wlr4DLJeh2WAJpjCrkehY3ogCwR4w2CR4EM3mhSkBN0hKZ1C8J7b
Nuxgx1WxPUJV5pmHBN4IOXHEKaoi0Rv3RTj2oBChxRF1bHtYHPpWxxggdN84uu+MUDwhG1Pz
DWdOGJrKX8zi0AT+eu66guEYx2tI0xG8PZrM9875VQHaRoPhLU0kybgE7bSuYYE7nUiLBPRJ
6Q4xRvLhPmh61Swr850jkdZFAhJ7wHqez4GHw8Q33W7du3WphuAiAaYqyIOdPmAtwe0wqwie
TgMH9oSJxVs2RcGtdVxihmG2uElgLu0K8RlsG5jIHY9mL4SJfUbpRLQvOXuxtrs09JNbh4jI
5IzDxy1xRaa6in+qvLFJHCdo1OTpBdee4dKWHiZ3aCbT3h7tAnIElBZRCjiJMuuI6jnK71CQ
UsEtUb39ejHshtKJuwAAxEx8GZVi4HFnLmUMp31+hVTiZrh4bTUhpxsmNBbYkfAphcBgtUff
EvsSw3jUYWN1M66B6MVLQ2GwntTEOYLW4eRyzAohNBet3OdyaynyqLm/d7SO9kzqT3KKIWZv
ok5UsNqg2/rL3eEdpVXUGj1MlbJ92On64aqyDBHd2a8EOzR9Y9p0qjzUA7mnC9oEw9TaDY0s
VXQQnqprjNLPu7qOzeUKdpmxtoGB0UkH64hYl5VDy37jwo+L8xBGXZT8H7HuOUQ/+AAA

--PEIAKu/WMn1b1Hv9--
