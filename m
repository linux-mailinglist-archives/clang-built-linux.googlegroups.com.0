Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOM57H3QKGQEV4TJABQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 967A2212E95
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 23:16:43 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id z16sf21545611pgh.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 14:16:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593724602; cv=pass;
        d=google.com; s=arc-20160816;
        b=uOIWYveQpizpymOIVL2O0goyFET4gz77GI9gdicUXP5uuPHImbPs5TQvrFECXNgmKt
         1iBq3EJDrZVDGqpCOKjLN0VL2zPq4C9NRyxyY+8LqczrjW8qeQVx+g6pmtX9I4Imoz0c
         6MOnozEkP2XmWIByybP3RTxS2Ec37b1B9jRFHNCJf2XU9TBMeNs4xI4GPW6bN3Fd9mQN
         gTtgnrCtgxlap+JWFDX0sawmI71J1AKdzng7z2UbCqzDIVx62io1J3+y8Bs122n5JXu5
         Nx8TcUD19k8DxhwVGnHxCGmf7xhYqPdtzmU5PwPs5C6uNe6k+P/cSk5Wy01te4Ka3THD
         8lPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=o68RtD34ZMSCW+yvKtpYeToml6vtQzIT8J6RRdT7vB0=;
        b=VlqVu4zGza1rB10Y/E4ahne6diQQpwB4DTvyxPOWmyZ6HW3cU4r0krXkma4ob1y6nJ
         F/XQmryPVzOrj2vwiWuNHutl9pthsrlzHAgEXjma3pVAIBaTZcjdE6993sjwKhwzABqP
         ggMipSW5E9NSVkmfXnCR5KTGXNPFu+bKh/lHKmt6ji/d4oX1GGwgIsqMSKD3VNTadlrq
         3WziPaTNrnXTt6S5u39Oh1nIbrf90ujvm7DT00IPKs3GGGSyDZYwQkU4Qkx9Wtxsxgak
         GWBZwStbO1SzVlU5+DhSYlxto3l9IquTBWPAL1dtlE6A+Oses8QieSF8DAk28BhQevJL
         1rJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o68RtD34ZMSCW+yvKtpYeToml6vtQzIT8J6RRdT7vB0=;
        b=Y20sDFnzoHMAMN5eRufpZlr+ujtwwUa8K3yVNBPcsZfh+GncktebaObvhc8jRard9+
         vbywib6+HEUg5Wd732SFWCT70ylQsP0v4hO2XUyb7YACoSywTzJ+zzGmnnN2Zh6SIGuk
         zYTPtrU2lYxgahFtJ51wkibrfy94ArNloTKvW9rUrC0i/jBFUdIVTeaSLUKcJqV3bO9r
         sDO6Ik3uDizesfJ0FHzorI1bcw4XasCz8dd2ZgpAwBCr/moBTd0Fh1f+9DlxR9puIsh0
         UrCg07n2HaPHopKiDURlBu03o09gzhUt30+i5TktfLOTzDoKSMN1rGqGf+uQ92/wCa0y
         d37Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o68RtD34ZMSCW+yvKtpYeToml6vtQzIT8J6RRdT7vB0=;
        b=AAao5nVhKk++nq93jZM5S/qeMvNZLWyzP9QP5mofkpirIWivhdFoeaZQuSNCavk6C9
         PPCCP2qmOsyE3xuJ9WmRJTSlA9VL2NqLirMZApk88DMFVj6hPM9Jk2Lw4rz38W87LsSj
         WVqSNi6yFxz3YLPJ7nh/pCKX4pXjqVdfy1gmNXnHYjhqyMydLzVGu/J1YSvkgsvQ+rda
         GpvOBzfA6qUElE8brjXF/gsJnITg2uzNdRj2FBLyou7fZauFLZUniuRpKMOxOSAtKxJD
         7ErQBTlpkIV1q49loCh9QnnrdJrOuxJoaAw8HU1t2yRDRiqOnoEWkYlMaAJzHpmHoEmO
         k1XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DWnTl55kyGvyL29X+uwQCim4JRUjE0X5KF5mzYu/9BjashYvR
	bz6Flv/7FWvNyXVLo3fW6DI=
X-Google-Smtp-Source: ABdhPJyiP7dNKOZxImBRZWbXpCkN7h08vl2O4ez8h1SV5YekxMtK1unhoxzcvxf2l/ya3u8IqDfOqg==
X-Received: by 2002:a62:1e44:: with SMTP id e65mr30226260pfe.233.1593724601537;
        Thu, 02 Jul 2020 14:16:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:224:: with SMTP id 33ls376558plc.9.gmail; Thu, 02
 Jul 2020 14:16:41 -0700 (PDT)
X-Received: by 2002:a17:90b:30d0:: with SMTP id hi16mr36259850pjb.65.1593724600992;
        Thu, 02 Jul 2020 14:16:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593724600; cv=none;
        d=google.com; s=arc-20160816;
        b=ZGiNboVMmQIC0fVLl+KclIjOwtxUOWDv/r/hCM17x2X0J6G5dvDUd+FLHfS9ccwsDJ
         6ztYwtYD4B4jDEXgvIYPtuZ9n5VnV/Hg72xtH6SPmX5QYX0nfekotirbfKW713qa4OIB
         b0D3jveeER3x7aoIcBt9hTjJe7ghTLuIv/wx5UZ30jCdh16zTF99Q12zl0Z3lKhbvfHb
         lQerQOu2xr5cPjRuzo3bPxBcHL1uimLFSsgGYB72Yol4kIn4HtgNZ4wSpgEEJ1gMMSKA
         remml0kJJXguCWh4E9W2DuhsXEEYgXSJTFVEgUSvbpjuvRyeCYD/WlRsRAecdy251r5C
         GF3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=KlsRpdAtfvtuvYp8ICEmx+xRjS3PE8AIpTa/ReQglbs=;
        b=p6r2K8RPUTl7ox+DHpQNVCktvl0MbZjCs1P1Ja7X/GUjc7EvNyNP0aUE4Bphb+VnMf
         E+MERv9rX8jWtB/hMPCyaWrUT6ZGKjHcOguyr2GEW6ra9Tyy1mK1yeDv3iXlc6VAypwj
         G3wLTfR513zpLQcwVhmcrA+24wzx61H1d4TEjjVNBpWdQY1kgDJrmYZWCzAsMqKr/XCt
         v1CMcq/+AEacniE/KTwVOannMGwViAW9L/OEVARgkCMpuNwFPIbZjHmqTf5cDIkpB0cP
         cnaDORg5LbLzdmRHj00CsWDXcInfTkYgauhrr0AU0bKLvv1HX6mJuGUowMOBeVnMMZrs
         58Ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id d16si528516pgk.2.2020.07.02.14.16.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 14:16:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: 0RYDubO0uPdc3QGgQOTe4eYNk9bK41pylnZcEWPhZSho72cR8Q+/O2qYcsZ0RREONuCB67B9l0
 2nkGn4WoPWVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="134490754"
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; 
   d="gz'50?scan'50,208,50";a="134490754"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jul 2020 14:16:38 -0700
IronPort-SDR: /Y7uNoL/MedSymoo/cLteqgEJ93njMkGtZllRLwh25SDbnUqiE1SHs6MKBfzstQ/Mt8yr6FfJE
 CfPgFkIVpNbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; 
   d="gz'50?scan'50,208,50";a="314258955"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2020 14:16:37 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jr6ZQ-0003pJ-S9; Thu, 02 Jul 2020 21:16:36 +0000
Date: Fri, 3 Jul 2020 05:15:51 +0800
From: kernel test robot <lkp@intel.com>
To: Mihai Carabas <mihai.carabas@oracle.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH RFC 7/7] x86: cpu: update blacklist spec features for
 late loading
Message-ID: <202007030506.GKK2yRkA%lkp@intel.com>
References: <1593703107-8852-8-git-send-email-mihai.carabas@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline
In-Reply-To: <1593703107-8852-8-git-send-email-mihai.carabas@oracle.com>
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


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Mihai,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on tip/auto-latest]
[also build test WARNING on linux/master linus/master v5.8-rc3 next-20200702]
[cannot apply to tip/x86/core]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Mihai-Carabas/CPU-feature-evaluation-after-microcode-late-loading/20200702-233210
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 7e44a91e0445a854af5d34ca0f5baceccd518e73
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 003a086ffc0d1affbb8300b36225fb8150a2d40a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/x86/kernel/cpu/intel.c:184:6: warning: no previous prototype for function 'check_intel_bad_spectre_microcode' [-Wmissing-prototypes]
   void check_intel_bad_spectre_microcode(struct cpuinfo_x86 *c)
        ^
   arch/x86/kernel/cpu/intel.c:184:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void check_intel_bad_spectre_microcode(struct cpuinfo_x86 *c)
   ^
   static 
   1 warning generated.

vim +/check_intel_bad_spectre_microcode +184 arch/x86/kernel/cpu/intel.c

   179	
   180	/*
   181	 * check_intel_bad_spectre_microcode verifies if a valid microcode was
   182	 * loaded and whitelist/blacklist the features related to speculation control.
   183	 */
 > 184	void check_intel_bad_spectre_microcode(struct cpuinfo_x86 *c)
   185	{
   186		int i;
   187		unsigned int features[] = {
   188			X86_FEATURE_IBRS,
   189			X86_FEATURE_IBPB,
   190			X86_FEATURE_STIBP,
   191			X86_FEATURE_SPEC_CTRL,
   192			X86_FEATURE_MSR_SPEC_CTRL,
   193			X86_FEATURE_INTEL_STIBP,
   194			X86_FEATURE_SSBD,
   195			X86_FEATURE_SPEC_CTRL_SSBD
   196		};
   197	
   198		if (bad_spectre_microcode(c)) {
   199			for (i = 0; i < ARRAY_SIZE(features); i++)
   200				set_bit(features[i], (unsigned long *)cpu_caps_cleared);
   201		} else {
   202			for (i = 0; i < ARRAY_SIZE(features); i++)
   203				clear_bit(features[i],
   204					  (unsigned long *)cpu_caps_cleared);
   205		}
   206	}
   207	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007030506.GKK2yRkA%25lkp%40intel.com.

--rwEMma7ioTxnRzrJ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ktNTUcwdBpspumIwJ3D/AcvxL/4pbAAA

--rwEMma7ioTxnRzrJ--
