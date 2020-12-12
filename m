Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBU7H2P7AKGQE3ERZOEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB992D8861
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 17:46:12 +0100 (CET)
Received: by mail-vs1-xe3f.google.com with SMTP id z15sf2985221vso.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 08:46:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607791571; cv=pass;
        d=google.com; s=arc-20160816;
        b=DAz4uHg7ZXnFkbDID8/qMMT7J3C2WS4+Z8SPRdNYKlTEOoQekjUYGaaioqRIl0/TDC
         jA2K8cPeTdc22rKppyr3er5VtYQjZDXQaGO4RYg9Lu7UFsWwDHDXRyHioU0NcmrUEHI9
         dd05cuyFTt6angXP5Ru1dmMvBbwo8SId+hIsKbMoZE4Rz4VUhWHwkPcvfpYU8GfxvWO/
         MbX94m26/Wn8xtF69pU/HFi5MCS3PjQ7RCaysyNkn5J6PiLYbqY86FFfT6PPyK10iGEn
         E8ARIa3xHDOzQ3e6saVdl4GfDD2KXQ7hprmferX590E8o0F9c0Ulc09Yuj+uPVkXQv4K
         pvNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=LGDE0XwsOJktf8wkvbrjFF2FX+MEK1bwxo+7ZFpp3lg=;
        b=aqldFFzkiB2IU3LF/qzc7EaDW/jC3VeEpFgOlZfW6Xb6YTjjynhOh3HtSpsvNPDX9O
         6z60FzqQA/2eKgJsCsAgRAV5DQsWoJmmJgZ/ifaSTVa8NlMuMzre3pLTHETYT9n1iKiR
         nUq7PFzy2lmXP2bGpWNSfiLulv6WtmDi0VWXkEjWhpZu+w4z75+PqKtHRw9/JaPm+DMe
         5R3WSK3LxLxfyhglU5gMjhF0nwVGt1/8dO5CO6aFYn/BZX9EEt0UUI4+DLQnr0wyG54x
         6R0t5CIBNdO3lav1UP1fIB9pxvs2CKtNo0UXE8kr/m2x8MPtWFNZ5LI+hOtcVBChaL+I
         2NCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LGDE0XwsOJktf8wkvbrjFF2FX+MEK1bwxo+7ZFpp3lg=;
        b=nWlWERJNMuUUffBLCRSABvOZlrKh+zaCxGJxi+a7NFhyoodMOjDSYAzfDFUCR+cwSS
         wuVxP14th436CB6RXwe+aJzggiF59yY3DJ48QMVcaVA/ohUilz2rr+ZtLZFae/oNBb9f
         r1XH658keVVIXVF0fFzq8gDzUCSdKI+QHrHj//wu8N4t6XJtaZKbzTTvyRmvSW4msM4H
         7VA3tx/hUxcm2s/RaMPJGTn49/tyHsvD79ChlGqGLVu2YCuGjqejuWqqhmUwtfq6MoFA
         qexweCjgaeXMwIlxlWhMx9gFGfVkru8xyxbLIl0X0yQL+Fspppxb/qyKxehJ5SM1yP+B
         fkTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LGDE0XwsOJktf8wkvbrjFF2FX+MEK1bwxo+7ZFpp3lg=;
        b=PtSDudxvZkF7a0TX9JAWVHAGooy1cjhby8SUzNRiy5TFY4qRreq9I8g7m9D4ze/1Dh
         mtkpjBlTz4WgtG0kUG+7xoavZs3nXh/wA0CKZUQTGqPzf/Mtv/wT9ix0WqEOvqf8K13T
         QuVkqYL0NI62QvCyRdx+D4d0nArRfj8fcv3vlFuFwtcwz/ERwLxF+ZiuM8YUX+F6w1jY
         8B1pAPusEeQrMS/jzN7ffcBXi2y6bBBdTpfY6Dg+oC5nk/nd9GB6RfubHMixA2r5KXzT
         JqtAqWFD0TMbhYXFxTl/VGfOJwrlJg10hxsFeqQOaPwFVmhMiLFRsMa4Bz181ZTFudg/
         GK+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pe8i+c33xktTQptUuElwMiIRKFybP84KyWVa/DMUkVtsFYwqe
	+oz48OpBnJo1kU1nEqbof4A=
X-Google-Smtp-Source: ABdhPJy2YSO1xhap/ZolUhy4OrejMP7SrCfHTF85IgdNMu9g1shEqiKDi8eVLYPr2//jkFbjUPQ10Q==
X-Received: by 2002:a67:2cc1:: with SMTP id s184mr16703702vss.23.1607791571591;
        Sat, 12 Dec 2020 08:46:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2409:: with SMTP id 9ls901076uaq.1.gmail; Sat, 12 Dec
 2020 08:46:11 -0800 (PST)
X-Received: by 2002:ab0:2052:: with SMTP id g18mr786855ual.60.1607791571088;
        Sat, 12 Dec 2020 08:46:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607791571; cv=none;
        d=google.com; s=arc-20160816;
        b=dPx3SnEPIQoBWPCENw18ca2fqCFG4ogBoX5nDsegDRIzRPnWg9pNUBQjZpfHnxiE8x
         OWStxBE0UBOsWHH8LZGoRAP1wrdlQNw/Y2O/kluJ835L5F8AoY3Jr0hvpsgMsOnXq7j8
         mQ8Pd0JhZSxC9RjLelPp9q+Cj7qUkjivr53jTH9UWmt8hKwI3vD0wTKKxm++npA7Nspo
         y5a4XSCXYXo24iGraWtYUhFYsICeKxMxNCZp3DE1/WcrTSIabznSdbM1NYVtARPYKQq5
         IClhwqeVSrTaHVXH2+YNS8e5PzUiUn6Rs/aLuTrRY2C/Y5/H2t0ofFw3CArO+/iLMg6a
         J/vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=/u+x8dtPqcY5oKz9koz+FIlmXdG0/wZztsaec6voGFo=;
        b=cWGbSCzo2W6M/ULU6gQPZ5kDWeXA1kq7QQKehwElptlGAuBVLS72wAglzIRJ3WcuKl
         qGCfusGSlXYIhljzAKC+yMnN9um0HrG+Y+dcgxvig/d7GggYkSku63mDQVQqkJi1NYw+
         F/ZKFnZf/0//xvpakVRJLoMR+PqUqr0MC4Y2sgGxNZgKXAkthVpOxvLDsgQvmWyg1OCg
         uT5zCLFCCUpcZ/b3FRiTtfvveVP3rrNYWpKSg1ZBfdbVp+fKChUpnzjpkX+0zxG+/cq3
         7Ac3xeNjDjpYKjttgHXo4m4VMSuQOVJjInP+aiXM//EMudCQ8YgZLC5aTdUa25EQ0hI+
         MiPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id e2si1025028vkk.0.2020.12.12.08.46.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Dec 2020 08:46:11 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: EmV94Zhmv0kgqupLSdkdSVSlovwAEANmI9llaZimk1JVfr+qfLbJAVN6dhitkc8PHY71G6z0TC
 CPZJQucuh7Eg==
X-IronPort-AV: E=McAfee;i="6000,8403,9833"; a="171049235"
X-IronPort-AV: E=Sophos;i="5.78,414,1599548400"; 
   d="gz'50?scan'50,208,50";a="171049235"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2020 08:46:09 -0800
IronPort-SDR: DzbWjwhbo0dZ6X3yjBI4s+LNI8pNsQ8W+U79ns67usRFlf4ueRdfd6nYAQBKT9RmhpA57SXP4Z
 4kCdnfVURWsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,414,1599548400"; 
   d="gz'50?scan'50,208,50";a="366140826"
Received: from lkp-server01.sh.intel.com (HELO ecc0cebe68d1) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 12 Dec 2020 08:46:07 -0800
Received: from kbuild by ecc0cebe68d1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ko822-0001Pz-Uo; Sat, 12 Dec 2020 16:46:06 +0000
Date: Sun, 13 Dec 2020 00:45:26 +0800
From: kernel test robot <lkp@intel.com>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [frank-w-bpi-r2-4.14:5.10-rc 22/24]
 drivers/misc/mediatek/btif/common/mtk_btif.c:522:6: error: no previous
 prototype for function 'btif_rx_notify_cb'
Message-ID: <202012130023.fQ8qKRXL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/frank-w/BPI-R2-4.14 5.10-rc
head:   9cab5c0a19ff709f07113ec5bd8e8cedbfdf6b08
commit: f43ce62478a0f245f0fcc53c073b54c31786f15e [22/24] mt6625l: add wifi-driver from 5.9
config: arm-randconfig-r013-20201212 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 84c09ab44599ece409e4e19761288ddf796fceec)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/frank-w/BPI-R2-4.14/commit/f43ce62478a0f245f0fcc53c073b54c31786f15e
        git remote add frank-w-bpi-r2-4.14 https://github.com/frank-w/BPI-R2-4.14
        git fetch --no-tags frank-w-bpi-r2-4.14 5.10-rc
        git checkout f43ce62478a0f245f0fcc53c073b54c31786f15e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/misc/mediatek/btif/common/mtk_btif.c:522:6: error: no previous prototype for function 'btif_rx_notify_cb' [-Werror,-Wmissing-prototypes]
   void btif_rx_notify_cb(void)
        ^
   drivers/misc/mediatek/btif/common/mtk_btif.c:522:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void btif_rx_notify_cb(void)
   ^
   static 
   1 error generated.
--
>> drivers/misc/mediatek/btif/common/mtk_btif_exp.c:24:12: error: no previous prototype for function 'btif_exp_srh_id' [-Werror,-Wmissing-prototypes]
   p_mtk_btif btif_exp_srh_id(unsigned long u_id)
              ^
   drivers/misc/mediatek/btif/common/mtk_btif_exp.c:24:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   p_mtk_btif btif_exp_srh_id(unsigned long u_id)
   ^
   static 
>> drivers/misc/mediatek/btif/common/mtk_btif_exp.c:512:5: error: no previous prototype for function 'btif_open_no_id' [-Werror,-Wmissing-prototypes]
   int btif_open_no_id(void)
       ^
   drivers/misc/mediatek/btif/common/mtk_btif_exp.c:512:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int btif_open_no_id(void)
   ^
   static 
>> drivers/misc/mediatek/btif/common/mtk_btif_exp.c:527:5: error: no previous prototype for function 'btif_close_no_id' [-Werror,-Wmissing-prototypes]
   int btif_close_no_id(void)
       ^
   drivers/misc/mediatek/btif/common/mtk_btif_exp.c:527:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int btif_close_no_id(void)
   ^
   static 
>> drivers/misc/mediatek/btif/common/mtk_btif_exp.c:541:5: error: no previous prototype for function 'btif_write_no_id' [-Werror,-Wmissing-prototypes]
   int btif_write_no_id(const unsigned char *p_buf, unsigned int len)
       ^
   drivers/misc/mediatek/btif/common/mtk_btif_exp.c:541:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int btif_write_no_id(const unsigned char *p_buf, unsigned int len)
   ^
   static 
>> drivers/misc/mediatek/btif/common/mtk_btif_exp.c:562:5: error: no previous prototype for function 'btif_dpidle_ctrl_no_id' [-Werror,-Wmissing-prototypes]
   int btif_dpidle_ctrl_no_id(ENUM_BTIF_DPIDLE_CTRL en_flag)
       ^
   drivers/misc/mediatek/btif/common/mtk_btif_exp.c:562:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int btif_dpidle_ctrl_no_id(ENUM_BTIF_DPIDLE_CTRL en_flag)
   ^
   static 
>> drivers/misc/mediatek/btif/common/mtk_btif_exp.c:586:5: error: no previous prototype for function 'btif_loopback_ctrl_no_id' [-Werror,-Wmissing-prototypes]
   int btif_loopback_ctrl_no_id(ENUM_BTIF_LPBK_MODE enable)
       ^
   drivers/misc/mediatek/btif/common/mtk_btif_exp.c:586:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int btif_loopback_ctrl_no_id(ENUM_BTIF_LPBK_MODE enable)
   ^
   static 
>> drivers/misc/mediatek/btif/common/mtk_btif_exp.c:597:5: error: no previous prototype for function 'btif_dbg_ctrl_no_id' [-Werror,-Wmissing-prototypes]
   int btif_dbg_ctrl_no_id(ENUM_BTIF_DBG_ID flag)
       ^
   drivers/misc/mediatek/btif/common/mtk_btif_exp.c:597:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int btif_dbg_ctrl_no_id(ENUM_BTIF_DBG_ID flag)
   ^
   static 
   7 errors generated.
--
>> drivers/misc/mediatek/connectivity/common/common_detect/wmt_detect.c:75:9: error: no previous prototype for function 'wmt_detect_write' [-Werror,-Wmissing-prototypes]
   ssize_t wmt_detect_write(struct file *filp, const char __user *buf, size_t count, loff_t *f_pos)
           ^
   drivers/misc/mediatek/connectivity/common/common_detect/wmt_detect.c:75:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   ssize_t wmt_detect_write(struct file *filp, const char __user *buf, size_t count, loff_t *f_pos)
   ^
   static 
   1 error generated.
--
>> drivers/misc/mediatek/connectivity/common/common_detect/wmt_detect_pwr.c:51:5: error: no previous prototype for function '_wmt_detect_output_low' [-Werror,-Wmissing-prototypes]
   int _wmt_detect_output_low(unsigned int id)
       ^
   drivers/misc/mediatek/connectivity/common/common_detect/wmt_detect_pwr.c:51:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int _wmt_detect_output_low(unsigned int id)
   ^
   static 
>> drivers/misc/mediatek/connectivity/common/common_detect/wmt_detect_pwr.c:63:5: error: no previous prototype for function '_wmt_detect_output_high' [-Werror,-Wmissing-prototypes]
   int _wmt_detect_output_high(unsigned int id)
       ^
   drivers/misc/mediatek/connectivity/common/common_detect/wmt_detect_pwr.c:63:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int _wmt_detect_output_high(unsigned int id)
   ^
   static 
>> drivers/misc/mediatek/connectivity/common/common_detect/wmt_detect_pwr.c:75:5: error: no previous prototype for function '_wmt_detect_read_gpio_input' [-Werror,-Wmissing-prototypes]
   int _wmt_detect_read_gpio_input(unsigned int id)
       ^
   drivers/misc/mediatek/connectivity/common/common_detect/wmt_detect_pwr.c:75:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int _wmt_detect_read_gpio_input(unsigned int id)
   ^
   static 
   3 errors generated.
--
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/common/dump.c:47:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/include/precomp.h:171:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_os.h:591:
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:22: error: redefinition of typedef 'UINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:22: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                        ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:31: error: redefinition of typedef 'PUINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                                 ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:31: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                                 ^
   2 errors generated.
--
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_lib.c:967:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/include/precomp.h:171:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_os.h:591:
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:22: error: redefinition of typedef 'UINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:22: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                        ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:31: error: redefinition of typedef 'PUINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                                 ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:31: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                                 ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_lib.c:4118:13: error: no previous prototype for function 'wlanQueryCompileFlag' [-Werror,-Wmissing-prototypes]
   WLAN_STATUS wlanQueryCompileFlag(IN P_ADAPTER_T prAdapter, IN UINT_32 u4QueryID, OUT PUINT_32 pu4CompilerFlag)
               ^
   drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_lib.c:4118:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   WLAN_STATUS wlanQueryCompileFlag(IN P_ADAPTER_T prAdapter, IN UINT_32 u4QueryID, OUT PUINT_32 pu4CompilerFlag)
   ^
   static 
>> drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_lib.c:5431:1: error: no previous prototype for function 'wlanoidQueryACSChannelList' [-Werror,-Wmissing-prototypes]
   wlanoidQueryACSChannelList(IN P_ADAPTER_T prAdapter,
   ^
   drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_lib.c:5430:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   WLAN_STATUS
   ^
   static 
>> drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_lib.c:5738:8: error: no previous prototype for function 'wlanCfgFindNextToken' [-Werror,-Wmissing-prototypes]
   INT_32 wlanCfgFindNextToken(struct WLAN_CFG_PARSE_STATE_S *state)
          ^
   drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_lib.c:5738:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   INT_32 wlanCfgFindNextToken(struct WLAN_CFG_PARSE_STATE_S *state)
   ^
   static 
>> drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_lib.c:5897:1: error: no previous prototype for function 'wlanCfgParseAddEntry' [-Werror,-Wmissing-prototypes]
   wlanCfgParseAddEntry(IN P_ADAPTER_T prAdapter,
   ^
   drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_lib.c:5896:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   WLAN_STATUS
   ^
   static 
>> drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_lib.c:5954:13: error: no previous prototype for function 'wlanCfgParse' [-Werror,-Wmissing-prototypes]
   WLAN_STATUS wlanCfgParse(IN P_ADAPTER_T prAdapter, PUINT_8 pucConfigBuf, UINT_32 u4ConfigBufLen)
               ^
   drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_lib.c:5954:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   WLAN_STATUS wlanCfgParse(IN P_ADAPTER_T prAdapter, PUINT_8 pucConfigBuf, UINT_32 u4ConfigBufLen)
   ^
   static 
   7 errors generated.
--
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_oid.c:1061:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/include/precomp.h:171:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_os.h:591:
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:22: error: redefinition of typedef 'UINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:22: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                        ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:31: error: redefinition of typedef 'PUINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                                 ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:31: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                                 ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_oid.c:8204:31: error: overlapping comparisons always evaluate to true [-Werror,-Wtautological-overlap-compare]
           if (prNewKey->ucKeyID != 0x1 || prNewKey->ucKeyID != 0x0) {
               ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~
   3 errors generated.
--
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_p2p.c:217:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/include/precomp.h:171:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_os.h:591:
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:22: error: redefinition of typedef 'UINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:22: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                        ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:31: error: redefinition of typedef 'PUINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                                 ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:31: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                                 ^
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_p2p.c:218:
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_p2p_ioctl.h:570:2: error: "Please ENABLE kernel config (CONFIG_NL80211_TESTMODE) to support Wi-Fi Direct"
   #error "Please ENABLE kernel config (CONFIG_NL80211_TESTMODE) to support Wi-Fi Direct"
    ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_p2p.c:529:1: error: no previous prototype for function 'wlanoidSetP2pNetworkAddress' [-Werror,-Wmissing-prototypes]
   wlanoidSetP2pNetworkAddress(IN P_ADAPTER_T prAdapter,
   ^
   drivers/misc/mediatek/connectivity/wlan/gen2/common/wlan_p2p.c:528:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   WLAN_STATUS
   ^
   static 
   4 errors generated.
--
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic.c:637:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/include/precomp.h:171:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_os.h:591:
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:22: error: redefinition of typedef 'UINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:22: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                        ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:31: error: redefinition of typedef 'PUINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                                 ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:31: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                                 ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic.c:1213:6: error: no previous prototype for function 'nicHifInit' [-Werror,-Wmissing-prototypes]
   VOID nicHifInit(IN P_ADAPTER_T prAdapter)
        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic.c:1213:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   VOID nicHifInit(IN P_ADAPTER_T prAdapter)
   ^
   static 
>> drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic.c:1316:6: error: no previous prototype for function 'nicProcessFwOwnBackInterrupt' [-Werror,-Wmissing-prototypes]
   VOID nicProcessFwOwnBackInterrupt(IN P_ADAPTER_T prAdapter)
        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic.c:1316:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   VOID nicProcessFwOwnBackInterrupt(IN P_ADAPTER_T prAdapter)
   ^
   static 
>> drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic.c:2611:13: error: no previous prototype for function 'nicSetAutoTxPowerControl' [-Werror,-Wmissing-prototypes]
   WLAN_STATUS nicSetAutoTxPowerControl(IN P_ADAPTER_T prAdapter, IN P_CMD_TX_PWR_T prTxPwrParam)
               ^
   drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic.c:2611:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   WLAN_STATUS nicSetAutoTxPowerControl(IN P_ADAPTER_T prAdapter, IN P_CMD_TX_PWR_T prTxPwrParam)
   ^
   static 
   5 errors generated.
--
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic_tx.c:426:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/include/precomp.h:171:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_os.h:591:
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:22: error: redefinition of typedef 'UINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:22: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                        ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:31: error: redefinition of typedef 'PUINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                                 ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:31: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                                 ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic_tx.c:991:6: error: no previous prototype for function 'nicTxReturnMsduInfoProfiling' [-Werror,-Wmissing-prototypes]
   VOID nicTxReturnMsduInfoProfiling(IN P_ADAPTER_T prAdapter, IN P_MSDU_INFO_T prMsduInfoListHead)
        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic_tx.c:991:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   VOID nicTxReturnMsduInfoProfiling(IN P_ADAPTER_T prAdapter, IN P_MSDU_INFO_T prMsduInfoListHead)
   ^
   static 
>> drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic_tx.c:1151:6: error: no previous prototype for function 'nicTxLifetimeRecordEn' [-Werror,-Wmissing-prototypes]
   VOID nicTxLifetimeRecordEn(IN P_ADAPTER_T prAdapter, IN P_MSDU_INFO_T prMsduInfo, IN P_NATIVE_PACKET prPacket)
        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic_tx.c:1151:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   VOID nicTxLifetimeRecordEn(IN P_ADAPTER_T prAdapter, IN P_MSDU_INFO_T prMsduInfo, IN P_NATIVE_PACKET prPacket)
   ^
   static 
>> drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic_tx.c:1279:1: error: no previous prototype for function 'nicTxLifetimeCheckByAC' [-Werror,-Wmissing-prototypes]
   nicTxLifetimeCheckByAC(IN P_ADAPTER_T prAdapter,
   ^
   drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic_tx.c:1278:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   VOID
   ^
   static 
>> drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic_tx.c:1308:1: error: no previous prototype for function 'nicTxLifetimeCheck' [-Werror,-Wmissing-prototypes]
   nicTxLifetimeCheck(IN P_ADAPTER_T prAdapter,
   ^
   drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic_tx.c:1307:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   VOID
   ^
   static 
   6 errors generated.
--
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic_rx.c:812:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/include/precomp.h:171:
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_os.h:591:
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:22: error: redefinition of typedef 'UINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                        ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:22: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                        ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:128:31: error: redefinition of typedef 'PUINT32' is a C11 feature [-Werror,-Wtypedef-redefinition]
   typedef unsigned int UINT32, *PUINT32;
                                 ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_typedef.h:115:31: note: previous definition is here
   typedef unsigned int UINT32, *PUINT32;
                                 ^
   In file included from drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic_rx.c:827:
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_cfg80211.h:61:5: error: 'CONFIG_NL80211_TESTMODE' is not defined, evaluates to 0 [-Werror,-Wundef]
   #if CONFIG_NL80211_TESTMODE
       ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_cfg80211.h:70:5: error: 'CONFIG_NL80211_TESTMODE' is not defined, evaluates to 0 [-Werror,-Wundef]
   #if CONFIG_NL80211_TESTMODE
       ^
   drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_cfg80211.h:301:5: error: 'CONFIG_NL80211_TESTMODE' is not defined, evaluates to 0 [-Werror,-Wundef]
   #if CONFIG_NL80211_TESTMODE
       ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/os/linux/include/gl_cfg80211.h:332:2: error: "Please ENABLE kernel config (CONFIG_NL80211_TESTMODE) to support Wi-Fi Direct"
   #error "Please ENABLE kernel config (CONFIG_NL80211_TESTMODE) to support Wi-Fi Direct"
    ^
>> drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic_rx.c:1499:8: error: no previous prototype for function 'nicRxProcessGSCNEvent' [-Werror,-Wmissing-prototypes]
   UINT_8 nicRxProcessGSCNEvent(IN P_ADAPTER_T prAdapter, IN OUT P_SW_RFB_T prSwRfb)
          ^
   drivers/misc/mediatek/connectivity/wlan/gen2/nic/nic_rx.c:1499:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   UINT_8 nicRxProcessGSCNEvent(IN P_ADAPTER_T prAdapter, IN OUT P_SW_RFB_T prSwRfb)
   ^
   static 
   7 errors generated.
..

vim +/btif_rx_notify_cb +522 drivers/misc/mediatek/btif/common/mtk_btif.c

   521	
 > 522	void btif_rx_notify_cb(void)
   523	{
   524		BTIF_DBG_FUNC("++\n");
   525		rx_notify_flag = 1;
   526		wake_up(&btif_wq);
   527		wake_up_interruptible(&btif_read_inq);
   528		BTIF_DBG_FUNC("--\n");
   529	}
   530	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012130023.fQ8qKRXL-lkp%40intel.com.

--FL5UXtIhxfXey3p5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--FL5UXtIhxfXey3p5--
