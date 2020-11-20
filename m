Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCGH376QKGQEV5JWCFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CB02BAF22
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 16:40:57 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id r4sf11369986ybs.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 07:40:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605886856; cv=pass;
        d=google.com; s=arc-20160816;
        b=yT0EWutnpL0CCE17GD5dTla0QGukl7Muin4Wn14if5Bv4dCywzK05eygC8g7bIehmm
         ze+lXDnUbMxKXAZtwvtmMlcJ74H1mvjm04+rG8V51b8pqQ9NBxAbJuyK6DY0p3AtcHiF
         CMB9Vy1oQ6V8Rz6DmP0rzYMnYIf1HlGfgBt+SgMGufNSDGPz+yJdR84HKDnT10EN19Ib
         k5anZpJUlk7zdfCtEoWbuHTuRSdv65FG4yafGRWFX/32HE09d5qq7ZKBA+nNBRrlgpsG
         1oU+X4GVu3F+CQOx7tgnopaQdrBE6XtO8LDn7SSAdYc2bvz0qzrL5CfMU9yQGEcYNoLu
         Wr+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=3cZPk3xrJny29kQSWoVNtd7tpCvPGMsU/QMScbGxXkA=;
        b=XPIj2mZcs08jHk2PLhMGyY9FLVZLFTGl5I0D1zdbjW8OfLVw5zncjsruoEsljyy9px
         +Q718qoKTusf69rFvEdmYDF+t9lo9P21h+iNFCBcpfXfI1uufdjouKgCo9eJfC+8uFQq
         7fRhUhYZnx7ZLS9qA6bj1OjzdrxpwOm7BxnvlloliIrH3qz9BvSWFG/eMyzXL1iENj91
         v+BRjKiOPU/JEtUuMIVDvjC7hIl5P+JbCIhqVSSHkH5rR4UE/gdO7NX/4jANr08gaTFl
         /eN8iF1t9yQZ30RnFM9kBBeuJO4gOqTS1nLc/Ag49++/hX4nOulexgNFJHMukJDW/CuN
         6IVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3cZPk3xrJny29kQSWoVNtd7tpCvPGMsU/QMScbGxXkA=;
        b=fQ+bnZcH8cMZtNiLTvBSo9Bk3vpvCDOhY4kq0N78T4e7A955NV5BptEFF5AkKXnfYL
         WjTAK5+K5qUO4vAic7sJJ0KSKV6KVb0se5Hx/jv3ph4eC7LXyIe1dp0RbHP7R9LMXl/6
         s6kx10NYBnlBAE+CxF3FDzbv34P40FTUscqvTKNc5fI5KKtDv6bkT5P0G+OqB2AEdVNq
         r1yLNuQaHWVn4jzM2BeQZg6q2btAJtbLxmfGabyO+aFC/b1cuTJlWog0bSFwZAsJWCRQ
         SxfLWeMv86/8ohqYb8x+J4si9Ub9JtZYgqtDOYUliTdG8cflimBF79TeC3Qgw+JpRXqd
         rnOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3cZPk3xrJny29kQSWoVNtd7tpCvPGMsU/QMScbGxXkA=;
        b=cAdz/+dwAN86sPFECz4s5kMZ4FslwdEILBRe+JAFPXxjnjd3zVG+XMrCAgc92kPKIu
         XcZauG1s1wSXcdZ6IRRWI+D63YHU4OLTnN6pOA9AbNom/l95kttKUox82P4LNHGZt/sN
         xab+aMUvNq69GfneMCdZ58CPWLdl+20oF8Sk8jdOk30sSq4qDA9W9AzkelN0dbOAZl2N
         deqY9fiyBqIrQxjKsoa705IZu6DqJTRG0Zv2POgb3GRvjDyQJ/ZMR0WauwrLu7gfrvFv
         +YhI3sXvNsCBLFh+BU3o7IplsAVAm93KuPuq9OIbexgyk7oqJirT35vJxchvY5ldX+e1
         e3hA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aigB+SuJDZyveAIDWxqk/V1Mck+uOtL61K2U4QBlr0CH+1R9M
	KX9v1gHYZWyaRwAePIk16oY=
X-Google-Smtp-Source: ABdhPJzdYzdK0DjmZAR1OF1F7EOVl4MfMIkLEVvoM2hv7S0nCYM+ShDEU1mmLALVpbVCRC40GqXk6Q==
X-Received: by 2002:a25:5806:: with SMTP id m6mr28723981ybb.449.1605886856476;
        Fri, 20 Nov 2020 07:40:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c553:: with SMTP id v80ls3541246ybe.2.gmail; Fri, 20 Nov
 2020 07:40:56 -0800 (PST)
X-Received: by 2002:a25:504c:: with SMTP id e73mr24835710ybb.376.1605886855932;
        Fri, 20 Nov 2020 07:40:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605886855; cv=none;
        d=google.com; s=arc-20160816;
        b=azwT4eYe3G330pCXMdSMG5o/WW1e6urEh78qkkJrMvRyI8cOFJvuTrUNS0XzZNEs8M
         KEunlyRCvzAL7cmPJKL+jrE5gXsqg3riEvbDs2nMtE0rCdV630PkSC3RMX5/t6JAMiLs
         4BbIBZcVmIKCUL+6qfo8SI3lGho7ghkxdDX889LNJgfQysJoT0ojvf2VL7pViY/Ib/L5
         /sjo7PInFEo1Za1rH1FbEnLiJ5eGXWZt0NDpsOpCAQNvPeHA128l6pT/8bT8bE4aXbnL
         cVqeTN0L3bjt05puMR0qYr6YAyAbVABIqGnD5a+7eEuYM2TZxOoFc/262yqSmAY37IFA
         Jo1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=3rOZTaooNO2ORo7WFeqm74dq5ArNKPNcB4XHFXsnfMc=;
        b=hguQpSzVQ7CpXf1WlKw7Pjy+wGFRerW/l1bwgVVy1Nt1RZB+KhY4plNtAHgJiecBrW
         ryA01P6ZoSayr3JHxYyOKRLY+A/Yzbi8B+TD6WPPUM7PBP8vLBPvS6zYPeydvyfjU/4h
         g92Ka9xl/aV41FSYZZT+mw2IFOHSm+IaDsG4rBwTvyj+ylOkfU74uTAIVH3rQArhZsGv
         iQumZi8xBFv0cf3pO06L/Elht3XOZLf22vtgd2eWQyaVWq/cDWY+LYJ8HyTIIQ4bQtZN
         YKSQdtv0cHSj3idI0WCgkQ95ytXzSgnWfq2lEujstsNsvVyNMDFiINGeqjOkVZtvR5NL
         egUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id n185si243513yba.3.2020.11.20.07.40.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Nov 2020 07:40:55 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: luAwj1iUSH3z46AP0IQqJqPBTEwhz8c3Cd2+jCIl9FBS39CUhNgHYQKE2l4EdY9xDpbUo4G2dt
 ET7gbHr2Z5OQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="158530696"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; 
   d="gz'50?scan'50,208,50";a="158530696"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2020 07:40:54 -0800
IronPort-SDR: I8r1ex2A6gJpACexgiQ3/F3Mw709tLR9NP7K0nIeHgZuqEAtHXaV5gELSpWpNt6Cu/sbpJE5fI
 uDLuq+zy+wpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; 
   d="gz'50?scan'50,208,50";a="363802765"
Received: from lkp-server01.sh.intel.com (HELO 00bc34107a07) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 20 Nov 2020 07:40:52 -0800
Received: from kbuild by 00bc34107a07 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kg8Wp-00000h-MQ; Fri, 20 Nov 2020 15:40:51 +0000
Date: Fri, 20 Nov 2020 23:40:50 +0800
From: kernel test robot <lkp@intel.com>
To: David Howells <dhowells@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [dhowells-fs:iov-ops 1/28] fs/io_uring.c:3195:12: error: no member
 named 'type' in 'struct iov_iter'
Message-ID: <202011202346.YWcdI8wu-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git iov-ops
head:   f1a1314d873d43870dccf3d7200855c2c179a35b
commit: cd87a8c96dfdef2df6fb3d74f25b197267e86f64 [1/28] iov_iter: Switch to using a table of operations
config: x86_64-randconfig-a016-20201120 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 3ded927cf80ac519f9f9c4664fef08787f7c537d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/commit/?id=cd87a8c96dfdef2df6fb3d74f25b197267e86f64
        git remote add dhowells-fs https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
        git fetch --no-tags dhowells-fs iov-ops
        git checkout cd87a8c96dfdef2df6fb3d74f25b197267e86f64
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> fs/io_uring.c:3195:12: error: no member named 'type' in 'struct iov_iter'
           if (iter->type == ITER_BVEC)
               ~~~~  ^
   1 error generated.
--
>> drivers/nvdimm/pmem.c:313:9: error: implicit declaration of function '_copy_from_iter_flushcache' [-Werror,-Wimplicit-function-declaration]
           return _copy_from_iter_flushcache(addr, bytes, i);
                  ^
   drivers/nvdimm/pmem.c:313:9: note: did you mean 'copy_from_iter_flushcache'?
   include/linux/uio.h:237:8: note: 'copy_from_iter_flushcache' declared here
   size_t copy_from_iter_flushcache(void *addr, size_t bytes, struct iov_iter *i)
          ^
>> drivers/nvdimm/pmem.c:319:9: error: implicit declaration of function '_copy_mc_to_iter' [-Werror,-Wimplicit-function-declaration]
           return _copy_mc_to_iter(addr, bytes, i);
                  ^
   drivers/nvdimm/pmem.c:319:9: note: did you mean 'copy_mc_to_iter'?
   include/linux/uio.h:249:8: note: 'copy_mc_to_iter' declared here
   size_t copy_mc_to_iter(void *addr, size_t bytes, struct iov_iter *i)
          ^
   2 errors generated.

vim +3195 fs/io_uring.c

32960613b7c3352 Jens Axboe     2019-09-23  3185  
ff6165b2d7f66fc Jens Axboe     2020-08-13  3186  static void io_req_map_rw(struct io_kiocb *req, const struct iovec *iovec,
ff6165b2d7f66fc Jens Axboe     2020-08-13  3187  			  const struct iovec *fast_iov, struct iov_iter *iter)
f67676d160c6ee2 Jens Axboe     2019-12-02  3188  {
e8c2bc1fb6c9495 Jens Axboe     2020-08-15  3189  	struct io_async_rw *rw = req->async_data;
b64e3444d4e1c71 Pavel Begunkov 2020-07-13  3190  
ff6165b2d7f66fc Jens Axboe     2020-08-13  3191  	memcpy(&rw->iter, iter, sizeof(*iter));
afb87658f89b65e Pavel Begunkov 2020-09-06  3192  	rw->free_iovec = iovec;
227c0c9673d8673 Jens Axboe     2020-08-13  3193  	rw->bytes_done = 0;
ff6165b2d7f66fc Jens Axboe     2020-08-13  3194  	/* can only be fixed buffers, no need to do anything */
ff6165b2d7f66fc Jens Axboe     2020-08-13 @3195  	if (iter->type == ITER_BVEC)
ff6165b2d7f66fc Jens Axboe     2020-08-13  3196  		return;
b64e3444d4e1c71 Pavel Begunkov 2020-07-13  3197  	if (!iovec) {
ff6165b2d7f66fc Jens Axboe     2020-08-13  3198  		unsigned iov_off = 0;
ff6165b2d7f66fc Jens Axboe     2020-08-13  3199  
ff6165b2d7f66fc Jens Axboe     2020-08-13  3200  		rw->iter.iov = rw->fast_iov;
ff6165b2d7f66fc Jens Axboe     2020-08-13  3201  		if (iter->iov != fast_iov) {
ff6165b2d7f66fc Jens Axboe     2020-08-13  3202  			iov_off = iter->iov - fast_iov;
ff6165b2d7f66fc Jens Axboe     2020-08-13  3203  			rw->iter.iov += iov_off;
ff6165b2d7f66fc Jens Axboe     2020-08-13  3204  		}
ff6165b2d7f66fc Jens Axboe     2020-08-13  3205  		if (rw->fast_iov != fast_iov)
ff6165b2d7f66fc Jens Axboe     2020-08-13  3206  			memcpy(rw->fast_iov + iov_off, fast_iov + iov_off,
f67676d160c6ee2 Jens Axboe     2019-12-02  3207  			       sizeof(struct iovec) * iter->nr_segs);
99bc4c38537d774 Pavel Begunkov 2020-02-07  3208  	} else {
99bc4c38537d774 Pavel Begunkov 2020-02-07  3209  		req->flags |= REQ_F_NEED_CLEANUP;
f67676d160c6ee2 Jens Axboe     2019-12-02  3210  	}
f67676d160c6ee2 Jens Axboe     2019-12-02  3211  }
f67676d160c6ee2 Jens Axboe     2019-12-02  3212  

:::::: The code at line 3195 was first introduced by commit
:::::: ff6165b2d7f66fccb7095a60ccc7a80813858665 io_uring: retain iov_iter state over io_read/io_write calls

:::::: TO: Jens Axboe <axboe@kernel.dk>
:::::: CC: Jens Axboe <axboe@kernel.dk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011202346.YWcdI8wu-lkp%40intel.com.

--bp/iNruPH9dso1Pn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--bp/iNruPH9dso1Pn--
