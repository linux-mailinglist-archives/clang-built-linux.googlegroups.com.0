Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPFE7H5QKGQELVEILYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 551BA286B91
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Oct 2020 01:41:50 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id 62sf2398530pfv.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Oct 2020 16:41:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602114109; cv=pass;
        d=google.com; s=arc-20160816;
        b=b8ZY4QGCbJMHcR4CPZ4zwY/OCdHCZ92eRxGfQ6r0c1JYKGnkQljWvQX9mek1Xx2Ret
         ZLrcPJSfU2SU27mvY3fue9SY5pI0i83OoUZpdyKX00P8QKbT2oPv2ys4CBSYZ9NAcp9Q
         Ov0h4caHgNla4qs8yoW8frPqqQ2jNSqDftLpXpLs0djqtG8P+zQ0iKvpdsVpGTLW0zes
         6jRpq8Uvh7M6FA5Zk87NRQzsJ+1cxF+C8E+R7O1Zz7Oar2FbED2NuX1SHwTdqXwXoUcV
         AzFHeHm8Ilk5rl0qI/k8TLNIFao2/COgDY9pjB+iJPzcHJx6M5OIWv6eSAd6zS+aqodC
         VAjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ILVRke5IBv5S6KPlQqlq0KphRFC5TbR3MG3iRHLyc30=;
        b=fDANDKcvTTTGPOtxa9VPYtyidygJuhwk2sJurMz0xIg02R4a+tbKfNYNFUyWbyOp66
         xX6qircXmDRVFwpnIMezQ5IlBobTsf1sp+H5Jmb3o71AQsryQQC64zknyOzPHZIm8yxT
         E2zC2RRIdoVlBZHpOGZVCKCQdBni6lYw0JipTZFWpFF5y+3EDGWg05aQ9FLO3axcBoW8
         LnUUS3v9I9kxIIkivyu5JEUuotWXr2UD0onXQcBS3iYbnziCsZnUGq1pIUdH5IYEjohH
         iapY2NjQAKaEch0TTKBIcIZa5cwEEPrONnRZs9/btJYkcmCOOmQ5yxb8ALqNzv56L4wF
         y/tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ILVRke5IBv5S6KPlQqlq0KphRFC5TbR3MG3iRHLyc30=;
        b=pb3JBWpayazOgLtwJ9KdXtV8Tb0IkfRmjADwWIcNInn78uodKI4MVkE5MBBvd3JL8D
         2xseLmugnXeqOyxCcAWh9HpWA9Cif4E+kcCbGfupI8+gmE1g8LjT7kcZerEu4OLWbsf6
         Wws/hkFGoBtBSHbyNr669oXhaI0DLAolpbFEO0TFmTaYBWRtc7c4SZdFWvNM3A3Y8pGp
         dZixpKjAkf7YHbiWt3SUmBizAe3ubXcE3e0MufDiA/s0lSy5vBEFitHTPS8hBe3BBDDO
         2aD9O0UQ4aFSklTDei2qKiWHx3e+KVflrgY7QLD+decvDcInohklCzC33mcCwzxaWf5l
         l9Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ILVRke5IBv5S6KPlQqlq0KphRFC5TbR3MG3iRHLyc30=;
        b=e/jfArxWwftMZNVLHBXXTIk+EdWiwqEkkqHzyTbM4RbTRjU9Mt9wAQ6EQ10PRmUVtH
         7HFw0IBmgEt82Fe+nU441cF98Spk04/xhQfrhlsKc039bm6e/VzFLeHiSc2iBQWdhREr
         3z+DVcY8fbPed3laSYHWxOLuxb5RafhGCmz2PcKG9TQ/GN0dh3e7lA90QxhH4dqtg56v
         xBWDLektdx+vNhz0yUlwZRMzmxzg5jiU+xiMRUrKlAm6hB/NcdKutILWKy9NiwIVXCRB
         +W/mb8R4hJLNhMuYwxcQZpx/HvCpWCaCI60Tg7fCB1sNvh4g+KzNfAbXGgjEYr5mONMl
         wdFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MWcXFPGvBpjT0JaTygxjwuqXH4bA2b5mtDSPu/UIf19FVMskP
	stwOoZfrkCJVJH5ySaYhoh0=
X-Google-Smtp-Source: ABdhPJyyRzUV0HNLui5Xn3Wubpbthw1UGKFEeQWA03Rp1Pab7cTOzmrWv/bp+iiYBVoLiskR6ARePw==
X-Received: by 2002:a63:464f:: with SMTP id v15mr5004079pgk.330.1602114108504;
        Wed, 07 Oct 2020 16:41:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ee4b:: with SMTP id 11ls1792704plo.8.gmail; Wed, 07
 Oct 2020 16:41:48 -0700 (PDT)
X-Received: by 2002:a17:90a:ba06:: with SMTP id s6mr5200470pjr.13.1602114107868;
        Wed, 07 Oct 2020 16:41:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602114107; cv=none;
        d=google.com; s=arc-20160816;
        b=gbRMtklsY+sXdxIOLNWapkjVIyMYIVpvRVGsbdJ+smE2pZKrfYvgWxv348lah3jSgA
         OlCoFhCgHNH13n0NIrIgGJz+RXHXDhaTcP4Zdq0ctvaATTd1QXP8Unv+JPCEHA0NFSf2
         AEx5dDGqgPwLvR7SXA9nDeLYs5+2sYjmvZYzz3NGWON4cScLE3d04h6tOcCS/ypiRfeO
         CIEJD2GO2aIP5//4Bbpa9vkLv78zUHmA1DM/CqTrgCRB71UodBQ+8CH5svF3Nej6wClt
         gbW8UgeFwGNriu96fdtdrhl0I9Rww9MTWe7gLA25/R5cnwGzOAHoddvZbwwwrHb8hbsf
         Xkrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=FZRXO/N7wy2QFBFEp0FTH66jjdV7sDdx79MrWAIQe3A=;
        b=a2QRKhEXWGOLbBAJTo1tInGwgvUwvmgnHPwmCYhHSk+oqysmkDjtMWi+z6wRNnEv0v
         vTEtoi1RjfGvXyrx8zW+Hrd30Q8DWx6uwnsgQwG85YjwJQu6a8meuhPoNbvijqYixTGf
         IZ96T9esWQ93XPohl6QuHXh1LhSnLftDdCkRbvdpEnaL5anH16IO1ZR0Z4x0JMpCqamG
         kAZ2V5Ubv7or+nOVfWAKK/3Nec54eCiorSe8z5I4BQUILFAfTSMYZ0B8jMhzQZRHzvii
         iyj43He4AcD2z2dQzxG0Gp7ySxJQlw9CQ4CpJ3eaakuJNELor8mrT5N/nXuAO+NADk4R
         dzuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id n8si310026pfd.4.2020.10.07.16.41.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2020 16:41:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: h40UxKqcJPMybfT7KWISTEFlP1s9Cb0HZMO+LfxaXVbHUBpYVfSw08/MAfPXZDzHrOOK1fL9/H
 M8CrxnGjieeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="144522253"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; 
   d="gz'50?scan'50,208,50";a="144522253"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2020 16:41:46 -0700
IronPort-SDR: 5epLSdfZGPp0lxiFUgyjlP7MWd6Fc8Z84N1ogCHKJZKNrcYlYndUARsGBrHrrt654saceF4Ykt
 vZBpw/ECYC1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; 
   d="gz'50?scan'50,208,50";a="328325000"
Received: from lkp-server02.sh.intel.com (HELO b5ae2f167493) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 07 Oct 2020 16:41:44 -0700
Received: from kbuild by b5ae2f167493 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kQJ43-0001sN-NZ; Wed, 07 Oct 2020 23:41:43 +0000
Date: Thu, 8 Oct 2020 07:41:31 +0800
From: kernel test robot <lkp@intel.com>
To: Harald Freudenberger <freude@linux.ibm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>
Subject: [s390:features 73/81] drivers/s390/crypto/ap_queue.c:201:18:
 warning: format specifies type 'unsigned char' but the argument has type
 'int'
Message-ID: <202010080727.HGqasHVn-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git features
head:   eefc69a09ca5b441ee136f9fb68ab5970cfc2d51
commit: 2ea2a6099ae3d1708f90f43c81a98cba3d4bb74c [73/81] s390/ap: add error response code field for ap queue devices
config: s390-randconfig-r016-20201008 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4d1d8ae7100ec3c7e1709addb7b3ec6f9ad0b44f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git/commit/?id=2ea2a6099ae3d1708f90f43c81a98cba3d4bb74c
        git remote add s390 https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git
        git fetch --no-tags s390 features
        git checkout 2ea2a6099ae3d1708f90f43c81a98cba3d4bb74c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/s390/crypto/ap_queue.c:201:18: warning: format specifies type 'unsigned char' but the argument has type 'int' [-Wformat]
                               __func__, status.response_code,
                                         ^~~~~~~~~~~~~~~~~~~~
   drivers/s390/crypto/ap_debug.h:26:47: note: expanded from macro 'AP_DBF_WARN'
           debug_sprintf_event(ap_dbf_info, DBF_WARN, ##__VA_ARGS__)
                                                        ^~~~~~~~~~~
   arch/s390/include/asm/debug.h:256:21: note: expanded from macro 'debug_sprintf_event'
                                                 _fmt, ## __VA_ARGS__);    \
                                                 ~~~~     ^~~~~~~~~~~
   drivers/s390/crypto/ap_queue.c:255:18: warning: format specifies type 'unsigned char' but the argument has type 'int' [-Wformat]
                               __func__, status.response_code,
                                         ^~~~~~~~~~~~~~~~~~~~
   drivers/s390/crypto/ap_debug.h:26:47: note: expanded from macro 'AP_DBF_WARN'
           debug_sprintf_event(ap_dbf_info, DBF_WARN, ##__VA_ARGS__)
                                                        ^~~~~~~~~~~
   arch/s390/include/asm/debug.h:256:21: note: expanded from macro 'debug_sprintf_event'
                                                 _fmt, ## __VA_ARGS__);    \
                                                 ~~~~     ^~~~~~~~~~~
   drivers/s390/crypto/ap_queue.c:298:18: warning: format specifies type 'unsigned char' but the argument has type 'int' [-Wformat]
                               __func__, status.response_code,
                                         ^~~~~~~~~~~~~~~~~~~~
   drivers/s390/crypto/ap_debug.h:26:47: note: expanded from macro 'AP_DBF_WARN'
           debug_sprintf_event(ap_dbf_info, DBF_WARN, ##__VA_ARGS__)
                                                        ^~~~~~~~~~~
   arch/s390/include/asm/debug.h:256:21: note: expanded from macro 'debug_sprintf_event'
                                                 _fmt, ## __VA_ARGS__);    \
                                                 ~~~~     ^~~~~~~~~~~
   drivers/s390/crypto/ap_queue.c:341:18: warning: format specifies type 'unsigned char' but the argument has type 'int' [-Wformat]
                               __func__, status.response_code,
                                         ^~~~~~~~~~~~~~~~~~~~
   drivers/s390/crypto/ap_debug.h:26:47: note: expanded from macro 'AP_DBF_WARN'
           debug_sprintf_event(ap_dbf_info, DBF_WARN, ##__VA_ARGS__)
                                                        ^~~~~~~~~~~
   arch/s390/include/asm/debug.h:256:21: note: expanded from macro 'debug_sprintf_event'
                                                 _fmt, ## __VA_ARGS__);    \
                                                 ~~~~     ^~~~~~~~~~~
   drivers/s390/crypto/ap_queue.c:382:18: warning: format specifies type 'unsigned char' but the argument has type 'int' [-Wformat]
                               __func__, status.response_code,
                                         ^~~~~~~~~~~~~~~~~~~~
   drivers/s390/crypto/ap_debug.h:26:47: note: expanded from macro 'AP_DBF_WARN'
           debug_sprintf_event(ap_dbf_info, DBF_WARN, ##__VA_ARGS__)
                                                        ^~~~~~~~~~~
   arch/s390/include/asm/debug.h:256:21: note: expanded from macro 'debug_sprintf_event'
                                                 _fmt, ## __VA_ARGS__);    \
                                                 ~~~~     ^~~~~~~~~~~
   5 warnings generated.

vim +201 drivers/s390/crypto/ap_queue.c

   170	
   171	/**
   172	 * ap_sm_read(): Receive pending reply messages from an AP queue.
   173	 * @aq: pointer to the AP queue
   174	 *
   175	 * Returns AP_SM_WAIT_NONE, AP_SM_WAIT_AGAIN, or AP_SM_WAIT_INTERRUPT
   176	 */
   177	static enum ap_sm_wait ap_sm_read(struct ap_queue *aq)
   178	{
   179		struct ap_queue_status status;
   180	
   181		if (!aq->reply)
   182			return AP_SM_WAIT_NONE;
   183		status = ap_sm_recv(aq);
   184		switch (status.response_code) {
   185		case AP_RESPONSE_NORMAL:
   186			if (aq->queue_count > 0) {
   187				aq->sm_state = AP_SM_STATE_WORKING;
   188				return AP_SM_WAIT_AGAIN;
   189			}
   190			aq->sm_state = AP_SM_STATE_IDLE;
   191			return AP_SM_WAIT_NONE;
   192		case AP_RESPONSE_NO_PENDING_REPLY:
   193			if (aq->queue_count > 0)
   194				return AP_SM_WAIT_INTERRUPT;
   195			aq->sm_state = AP_SM_STATE_IDLE;
   196			return AP_SM_WAIT_NONE;
   197		default:
   198			aq->dev_state = AP_DEV_STATE_ERROR;
   199			aq->last_err_rc = status.response_code;
   200			AP_DBF_WARN("%s RC 0x%02hhx on 0x%02x.%04x -> AP_DEV_STATE_ERROR\n",
 > 201				    __func__, status.response_code,
   202				    AP_QID_CARD(aq->qid), AP_QID_QUEUE(aq->qid));
   203			return AP_SM_WAIT_NONE;
   204		}
   205	}
   206	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010080727.HGqasHVn-lkp%40intel.com.

--VS++wcV0S1rZb1Fb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--VS++wcV0S1rZb1Fb--
