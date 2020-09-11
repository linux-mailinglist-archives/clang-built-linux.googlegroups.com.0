Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3WB575AKGQEH66YMEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0A026699E
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 22:41:20 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id u6sf3586492oiv.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 13:41:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599856878; cv=pass;
        d=google.com; s=arc-20160816;
        b=ficHgPSBbhJzCfPhTfk6zIYL3q5SjI5INdIV13/ACMYpzmV2171ZecRScawSZMW7Xw
         61nood2W7gYC5pjXAMSL1B/Hjt76TpHSdg6DaJAAzaIq3E/3kIi32K18Z2nsMODhPuqz
         5H8XriO6owmSX/+kbhK04s18udJLUEbNmCOVyW2cRJ+19gBgDwekyTl0pGQ9QRg6sevt
         sXKcK9pAu4V6aZo8proKn3jkSw0ToVtWFpE6x5DWPecK79KuYHXuy/CCTd3yqIxV2Quj
         LnXSDWXvfERqfrTXw9vdJ/5V0i27y5s7HqgbkBwBOZeCnoMKbC9UMWTcLEB+4hcs84qi
         0VIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=i3DYHa5WEmsrxhesogmIurWITQqFmifAFd/D4Il+SjI=;
        b=VfaxfxidL3YP1tTV3DThDe0LlZ+Zxx32WcDZ0bvlXk+ALm3X1TUIwJBjKPbDlGpCht
         HYMFDWwR1ov/FGxb5IWK9kVCGGppUAwHXp4dis0OEON4Dpaxaib8TSjS8kljrJtDYqew
         Gk0UOoZawb/JgxlIHvKo1JcI3y8x64t6MYAKCaL1LE0sPZip4doQw9YC8KvjMziqsXZg
         2auMqcfBbbKTbn6XEJxKqIFfoJPI9nfj+iE1LAHf1xTt/mPX1A9DHYIAkQ0cl+1GHlo1
         2Wk2X8GpGtC0IQfZyoyIDGL3chgjlr4pAM12wBDgK+xZM2mRcLBW2aEW5M+g7ahVU2J8
         Kgxg==
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
        bh=i3DYHa5WEmsrxhesogmIurWITQqFmifAFd/D4Il+SjI=;
        b=gBRT5Pis10ZjC+fHwBsAnjyD1qkW+ddbOvyLyRTTUd2JRrfKhIfZykYb+ZWh7l7iJu
         2CAhjAZknNkTbeICdnRIAhP7DzRAPQQ99iZ78esLj5BX6qh1DtZrAlOxVNPrYwrIyYHs
         t5cB5rIC/DqwbW/QpU0lzsKwMICUq64I7R5Kj0WgWb91GXlpYLxa61zqtEXgEXyf4RM2
         xV3n2GBlSRpiQ7Iiogw6j3S1F3xKcGVRdaRZmUELDmAVRySpmukJKYXH7n8mHJGIHalw
         cRQgex3KCwX+5Nl3+U1rSvMdFar0nOe9Gsv8gg3Vdkg6i6ZO4XM50wKKL5fHmeMjeeHy
         qR4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i3DYHa5WEmsrxhesogmIurWITQqFmifAFd/D4Il+SjI=;
        b=s8gHYNUzbP2WQ3eboLbFGB5IxhNapmBPNaq+TaauEfjjOWlsmNvYloCgVv6n0yswTR
         16eHHyV26vGo/UurxJjDDRRj2AjU1bc2c7AjYa/dwBptJAqafELrfnfkaQL6fhIxjJnz
         gu4//jLXuXBb+PmeYjhqHvyVGkO6CH8FBOxckIqy7NyBfSD+dAcJZE6NxxGH5bAQifHS
         Ct5XUbpasYDeOwKDJBKPuE9RXj7ZHfNhYOeu6Oop8Wm7V3v66Zb6Oyw6W0PnYvIAEUjd
         1fb0lSfux71JgxMvtxHgY7EeNk5s1KCUbaU4zY5mA8UhtMX1nmT94XGxk+G2f5z/ETwV
         waOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331Q5HzgbHgPxUXxkBG5i1Mjt78aPxyNeEXli+bfrEjodT0xd+S
	SktRS4LMP0+LYszu8ZOE/rI=
X-Google-Smtp-Source: ABdhPJyJ7hmk47JAuVx+gWyulcqSlIK74Mk3ewjHrsD7Esjj4ndK7q+yhPFIYMjiyIOlaiD0fwoc2w==
X-Received: by 2002:a9d:7745:: with SMTP id t5mr2328449otl.114.1599856878177;
        Fri, 11 Sep 2020 13:41:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4816:: with SMTP id v22ls693787oia.6.gmail; Fri, 11 Sep
 2020 13:41:17 -0700 (PDT)
X-Received: by 2002:aca:5546:: with SMTP id j67mr2449931oib.107.1599856877716;
        Fri, 11 Sep 2020 13:41:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599856877; cv=none;
        d=google.com; s=arc-20160816;
        b=SsXl3RKBqB+xG08Zmnt3WTiwJWJjza+V0a+S22E6XX6T2Hy+ch8L6OEPjaMcNvhejH
         6M+j/bkV+EAVXcmvnObu4K6e4tHdOkRxcmujxB3O0ykXqK0K1cZ4N93AOOpyGGRI12oA
         lIcch4wSP1BuioTGU+4pQEhGI1RnDWLVCrCehNsTbU2cjqgSVAn9qqL/O9H43mgWTCWC
         AMXuES2tzQa30cuM9RmsTBs1jQQRcvtnGLevbYJCx92Ao+LjiKRAym8bNcFyjceOAGsZ
         l87wTm2fSbYxnpd/9wI1D4752bXQTHsuDOmEzn1LJ7tRi0TIfCfBy/jhvlPZGTIK7pCy
         I19w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=ZPwFjiLZdu5E4xcxRwjD+CpdeR0ek5RK9n/9XlKoLX0=;
        b=GV3XBAQl9/Z5C/hPrCwD1pufVfxUZJoXRFvGrZ+Or0ZdsGlSVQSM8kGFJjieQnIx6z
         uZHpKY1uIPi0E9D4uVACEU+pdq+Jv/HSG9MvmmfQ+Kcp93a1ZETowzH7Yg6rf/Jmos2Q
         ff/nuyo4RT8Lzr8QHKX1uG4l1i50BAB5jqZBCU7T1l3Uj/XdI34Pgg/i8MWhUFpDjaCR
         LY6rQrvN9mBV2+LzA/WXS0tjG4ox8vzFI30kHrfIfz/2JgTFQP/3LJs938vsC0DRB11N
         Tc2J8YJVE0+d4zIBolMxIJy6L62BUPFcJBp9WS1xJxmjrBwIc2WNX1hlwfnjleQpNICb
         RxMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id d11si309564oti.2.2020.09.11.13.41.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Sep 2020 13:41:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: 9751zdb3rDNXpqCUFmXMQlxi4OMHBm5qsG98PCikoWtBaytwp/sMp5M+QTEU9s1ZoXKntGt1KD
 7bExVxoMo9hw==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="146585763"
X-IronPort-AV: E=Sophos;i="5.76,417,1592895600"; 
   d="gz'50?scan'50,208,50";a="146585763"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Sep 2020 13:41:15 -0700
IronPort-SDR: 7hBr60cp6VjmMJKEQR3q7fq4NATcry6+mZoTk35E/CStSTcOIa4iWFlme3C0ckzwK4V1+Kl6RW
 i16Q4eb+eN3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,417,1592895600"; 
   d="gz'50?scan'50,208,50";a="408251010"
Received: from lkp-server01.sh.intel.com (HELO a75722977aa5) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 11 Sep 2020 13:41:10 -0700
Received: from kbuild by a75722977aa5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kGpr3-0000MN-PS; Fri, 11 Sep 2020 20:41:09 +0000
Date: Sat, 12 Sep 2020 04:40:55 +0800
From: kernel test robot <lkp@intel.com>
To: Alessio Balsini <balsini@android.com>,
	Miklos Szeredi <miklos@szeredi.hu>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Akilesh Kailash <akailash@google.com>,
	Amir Goldstein <amir73il@gmail.com>,
	David Anderson <dvander@google.com>,
	Eric Yan <eric.yan@oneplus.com>, Jann Horn <jannh@google.com>,
	Jens Axboe <axboe@kernel.dk>, Martijn Coenen <maco@android.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Lawrence <paullawrence@google.com>
Subject: Re: [PATCH V8 1/3] fuse: Definitions and ioctl() for passthrough
Message-ID: <202009120431.cnrPLejv%lkp@intel.com>
References: <20200911163403.79505-2-balsini@android.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline
In-Reply-To: <20200911163403.79505-2-balsini@android.com>
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


--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alessio,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on v5.9-rc4]
[cannot apply to fuse/for-next next-20200911]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Alessio-Balsini/fuse-Add-support-for-passthrough-read-write/20200912-003643
base:    f4d51dffc6c01a9e94650d95ce0104964f8ae822
config: arm-randconfig-r025-20200911 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0448d11a06b451a63a8f60408fec613ad24801ba)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/fuse/dev.c:2222:5: warning: no previous prototype for function 'fuse_passthrough_open' [-Wmissing-prototypes]
   int fuse_passthrough_open(struct fuse_dev *fud,
       ^
   fs/fuse/dev.c:2222:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int fuse_passthrough_open(struct fuse_dev *fud,
   ^
   static 
   1 warning generated.

# https://github.com/0day-ci/linux/commit/c8c14de554673fa450ce2cadee8957f5f8c021e3
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Alessio-Balsini/fuse-Add-support-for-passthrough-read-write/20200912-003643
git checkout c8c14de554673fa450ce2cadee8957f5f8c021e3
vim +/fuse_passthrough_open +2222 fs/fuse/dev.c

  2221	
> 2222	int fuse_passthrough_open(struct fuse_dev *fud,
  2223				  struct fuse_passthrough_out *pto)
  2224	{
  2225		int ret;
  2226		struct fuse_req *req;
  2227		struct fuse_pqueue *fpq = &fud->pq;
  2228		struct fuse_conn *fc = fud->fc;
  2229	
  2230		if (!fc->passthrough)
  2231			return -EPERM;
  2232	
  2233		/* This field is reserved for future use */
  2234		if (pto->len != 0)
  2235			return -EINVAL;
  2236	
  2237		spin_lock(&fpq->lock);
  2238		req = request_find(fpq, pto->unique & ~FUSE_INT_REQ_BIT);
  2239		if (!req) {
  2240			spin_unlock(&fpq->lock);
  2241			return -ENOENT;
  2242		}
  2243		__fuse_get_request(req);
  2244		spin_unlock(&fpq->lock);
  2245	
  2246		ret = fuse_passthrough_setup(req, pto->fd);
  2247	
  2248		__fuse_put_request(req);
  2249		return ret;
  2250	}
  2251	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009120431.cnrPLejv%25lkp%40intel.com.

--zYM0uCDKw75PZbzx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--zYM0uCDKw75PZbzx--
