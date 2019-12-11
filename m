Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBM6VYXXQKGQESNJAQVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FCA11BFB0
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Dec 2019 23:16:23 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id 16sf368819ywz.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Dec 2019 14:16:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576102582; cv=pass;
        d=google.com; s=arc-20160816;
        b=afBagPXqFwFiic7sQDFwC5bhocrsOsvdOrMprV7v5mc/RJoYHQgm7kurl+SCPiNG98
         pX6JuJabvqLseddC/wU7UyybMr4D1/GNK/pS1ppdTB+Ou/U4NCEFlfFIhcpaCr65CDZQ
         ZQY9jihHotYGmab4RLBF6W1Ip1qTrGs17R0EVlzBYbTP/AsWiTyLhta2P3M6JZLQoKQN
         AgimEJcuLNP3DNNJbCQ1nFU+j3XjXBHdwr5a8Aq7e5YFXynB54gRnjejlrX68b2ELSyq
         J+wcRMRPbtI0dzjqEzlN9ro7sWxslwiHFouiLo84JGi2LO0A2xMqSwqqChHSsd9EkWj0
         m5Kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oE3EEZH3jPAahK7cW/nofp5XF+TDvklBUDQZDtDZCBo=;
        b=F0PlnMkE1Ko71pQauDob7K9BK4t61fxfKlOcTu/OrlbdP/aKe2SIQvvjdlmsCgcKdC
         OHGJT1tBt0+i44OWQZ/zOb+QiVOjx9PxVZ22Cw8zdTlJB8svhLOneMBOCbDr5Tv0tkpU
         b3GiD6x3gOH7aEPmQuwXiUHG2wYWuHEkAT39zke/Q/3i79pdryS6pVkfARQOot5HyBVG
         h7LPUhQEZD70LnsWt2V2oA3+TcLRZH2KkrOM2/BBNAa9IJLpkVR58O5cPiX4OgWf+Cms
         k8OCm3/KikHC8Stb+97guzJRiqOHp3UiwN0sCT1SS0KeetR2Rj0XNbhTdIaokK5mTDfJ
         81zA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oE3EEZH3jPAahK7cW/nofp5XF+TDvklBUDQZDtDZCBo=;
        b=QVtGBhNd7PIvVgacRpZSnQljSLpedFUrvhxJtT37Dlxy4uas0KqrHIca3FQ/V2YtGW
         hYuP0mu1nufRi9YS4bvNR845h4g8UDIUtIlXUEvj1hW1INjQNsfJDUP0YwglptnR5nnw
         OvPKP3t0t3I2HIsBaZbmsCzBErkX0NY6t5G+PPCyETK/6/WbX8hD1jlGNec/LEevy+Tb
         HqvuKW5MHulAvvuND+nraqB/peJI+wDc2orZz0qcyDb/s54EFKH7XxtdWVeeLhLgZSCt
         PoiAply3n2BZAXPp6RiVQP6nd+7fP0+R44Mu/sAhJmo8wSlCZ5/PcdQDuB6/cjzdgI41
         +2kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oE3EEZH3jPAahK7cW/nofp5XF+TDvklBUDQZDtDZCBo=;
        b=G/gXTIFmtS/g1ONYtlA/xQuqvRK9ee5b4VTLAvC1hTuPadb78LYHM7+wxNlHqvId/8
         8lt8bpd9oBogVBQtVJ7aE9vvD3QfS8eES+mbaS1ZGor08ZurI4TSsWYyveFFxCVzOBDc
         L8myIhaJ4jtO00EPpps7LFR56fnXgnkn8kWjBywPb5LVkfePCVTcXN3VD/250iXpdTlx
         1O/FqTDmcJrH4Vfffej6eQ2kWdPTw8fgFgEbMgl0QsYhJJMJ/fX06DYm3uVgCxo1okkJ
         RmZrsgAFNj6D05RF5RPS1kF7EdmlArykb3liIZlTxbKi+LIPBR9QyjkdmUuBF67Ld9I8
         zxVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXiuGIoZk6PAlVF3oBTgb8TdBNEPrc/M+YnHSTktsKpy0dPMm9H
	8L8SZjJUeJ1S5mjTc2tN+5E=
X-Google-Smtp-Source: APXvYqxppBQYE1p2YQG7k+/rDjqy3qBAkdY6VBZeF5KftGPaHyTdk1wB9+BcbVWnbS3utQFCbrjl+g==
X-Received: by 2002:a25:d84e:: with SMTP id p75mr1767075ybg.385.1576102579927;
        Wed, 11 Dec 2019 14:16:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:694b:: with SMTP id e72ls572220ybc.0.gmail; Wed, 11 Dec
 2019 14:16:19 -0800 (PST)
X-Received: by 2002:a25:cc48:: with SMTP id l69mr1806785ybf.212.1576102579315;
        Wed, 11 Dec 2019 14:16:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576102579; cv=none;
        d=google.com; s=arc-20160816;
        b=fGg3x8xZkoYlc+x7rAOTqDHhOTIV5DkbmaxWYgAoPCRivDh2c9AHrYIx2sGaxYjKl+
         b6M3OeyjU0oGwd/lf9tHjeH/GaGXtH+kqMfRlhehP6idvePh8KwFCCHaxHMmbfLk6nrN
         jOo9o33XmqWIT0C+h0DLIbSr7HtQWYAI3IxyLgtaLcXACNPkNcLWzmjYxqylkTnFw8GQ
         P6qvcZKLooTG3XHNeuamP3YibCbsOPCvaRC9m+/JIaQHdghslsrhmkKan2PRNSNpa3Px
         Hnks52++iM6YA6QhUYZdd/h6WhJ9+/P0fgKg39OF7aRqWXbSqg/PFptC9JzfSqhu+Puq
         Vd4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=a+tocCyjlHDcdJ6hfWR5tqeYaOOmFAsaPHjab5Whdxc=;
        b=tTq/+/pkzjBEBALQseUpm2sQfvqANL3WQemheyhZGVYnPofTlmCzXnVozScVXj3tWS
         MKRJzh+5KQ9d4i+P+vdifb+xRhNWY5Sf8iHX0oUilCNS2Eu9+5ywTW3pdA8ZwkfuNUgA
         CkVX72fuCTjzzwm/Qk12/yhzMUnkzf2KmGRJLbXuRD+WC5u7PrJs8HVHJKV104bOWQry
         NU1yAC/x3yTgltSEXSWkC2xo9Wu5YtD2PXMt3TB91MkXrarczYCvwwted76A3SlrTJtZ
         zKjafsJiwjZvlbaPRxp+l4fDD/e/G4TqkPE+/Vou3H4GiXrEl/ncmt7SIvpoGDCkq2nR
         /tTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id w126si11906ywb.3.2019.12.11.14.16.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 14:16:19 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Dec 2019 14:16:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; 
   d="gz'50?scan'50,208,50";a="265020370"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 11 Dec 2019 14:16:15 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1ifAHG-0001SS-L8; Thu, 12 Dec 2019 06:16:14 +0800
Date: Thu, 12 Dec 2019 06:15:39 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [linux-review:UPDATE-20191211-061349/Maarten-Lankhorst/drm-i915-execbuf-Add-support-for-parallel-execbuf-submission/20191211-014930
 7/7] drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2596:8: error: use of
 undeclared label 'err_context'
Message-ID: <201912120604.qzbJ32he%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gjlabyjnqkyio2kj"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
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


--gjlabyjnqkyio2kj
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: 0day robot <lkp@intel.com>

tree:   https://github.com/0day-ci/linux/commits/UPDATE-20191211-061349/Maarten-Lankhorst/drm-i915-execbuf-Add-support-for-parallel-execbuf-submission/20191211-014930
head:   01f3423a672507b98db286e47316953d99d31b42
commit: 01f3423a672507b98db286e47316953d99d31b42 [7/7] drm/i915: Use per object locking in execbuf on top of struct_mutex, v2.
config: x86_64-rhel-7.6 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project e8d955f29de7ee4b50d889c418b4efb18add0653)
reproduce:
        git checkout 01f3423a672507b98db286e47316953d99d31b42
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1476:22: warning: result of comparison of constant 576460752303423487 with expression of type 'unsigned int' is always false [-Wtautological-constant-out-of-range-compare]
           if (unlikely(remain > N_RELOC(ULONG_MAX)))
               ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
>> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2596:8: error: use of undeclared label 'err_context'
                   goto err_context;
                        ^
   1 warning and 1 error generated.

vim +/err_context +2596 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c

cf6e7bac6357f0 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Jason Ekstrand         2017-08-15  2502  
54cf91dc4e51fd drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2010-11-25  2503  static int
650bc63568e421 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-15  2504  i915_gem_do_execbuffer(struct drm_device *dev,
54cf91dc4e51fd drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2010-11-25  2505  		       struct drm_file *file,
54cf91dc4e51fd drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2010-11-25  2506  		       struct drm_i915_gem_execbuffer2 *args,
cf6e7bac6357f0 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Jason Ekstrand         2017-08-15  2507  		       struct drm_i915_gem_exec_object2 *exec,
cf6e7bac6357f0 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Jason Ekstrand         2017-08-15  2508  		       struct drm_syncobj **fences)
54cf91dc4e51fd drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2010-11-25  2509  {
44157641d448cb drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Jon Bloomfield         2018-06-08  2510  	struct drm_i915_private *i915 = to_i915(dev);
650bc63568e421 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-15  2511  	struct i915_execbuffer eb;
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2512  	struct dma_fence *in_fence = NULL;
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2513  	struct dma_fence *exec_fence = NULL;
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2514  	struct sync_file *out_fence = NULL;
d534d76cb2cb00 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-12-10  2515  	struct i915_vma *batch;
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2516  	int out_fence_fd = -1;
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2517  	int err;
432e58edc9de1d drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2010-11-25  2518  
74c1c694a2deab drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-09-21  2519  	BUILD_BUG_ON(__EXEC_INTERNAL_FLAGS & ~__I915_EXEC_ILLEGAL_FLAGS);
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2520  	BUILD_BUG_ON(__EXEC_OBJECT_INTERNAL_FLAGS &
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2521  		     ~__EXEC_OBJECT_UNKNOWN_FLAGS);
54cf91dc4e51fd drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2010-11-25  2522  
44157641d448cb drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Jon Bloomfield         2018-06-08  2523  	eb.i915 = i915;
650bc63568e421 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-15  2524  	eb.file = file;
650bc63568e421 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-15  2525  	eb.args = args;
7dd4f6729f9243 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2526  	if (DBG_FORCE_RELOC || !(args->flags & I915_EXEC_NO_RELOC))
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2527  		args->flags |= __EXEC_HAS_RELOC;
c7c6e46f913bb3 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-08-16  2528  
650bc63568e421 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-15  2529  	eb.exec = exec;
d534d76cb2cb00 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-12-10  2530  	eb.vma = (struct eb_vma *)(exec + args->buffer_count + 1);
d534d76cb2cb00 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-12-10  2531  	eb.vma[0].vma = NULL;
c7c6e46f913bb3 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-08-16  2532  
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2533  	eb.invalid_flags = __EXEC_OBJECT_UNKNOWN_FLAGS;
650bc63568e421 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-15  2534  	reloc_cache_init(&eb.reloc_cache, eb.i915);
650bc63568e421 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-15  2535  
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2536  	eb.buffer_count = args->buffer_count;
650bc63568e421 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-15  2537  	eb.batch_start_offset = args->batch_start_offset;
650bc63568e421 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-15  2538  	eb.batch_len = args->batch_len;
650bc63568e421 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-15  2539  
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2540  	eb.batch_flags = 0;
d7d4eeddb8f723 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2012-10-17  2541  	if (args->flags & I915_EXEC_SECURE) {
44157641d448cb drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Jon Bloomfield         2018-06-08  2542  		if (INTEL_GEN(i915) >= 11)
44157641d448cb drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Jon Bloomfield         2018-06-08  2543  			return -ENODEV;
44157641d448cb drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Jon Bloomfield         2018-06-08  2544  
44157641d448cb drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Jon Bloomfield         2018-06-08  2545  		/* Return -EPERM to trigger fallback code on old binaries. */
44157641d448cb drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Jon Bloomfield         2018-06-08  2546  		if (!HAS_SECURE_BATCHES(i915))
44157641d448cb drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Jon Bloomfield         2018-06-08  2547  			return -EPERM;
44157641d448cb drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Jon Bloomfield         2018-06-08  2548  
b3ac9f2591061e drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniel Vetter          2016-06-21  2549  		if (!drm_is_current_master(file) || !capable(CAP_SYS_ADMIN))
d7d4eeddb8f723 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2012-10-17  2550  			return -EPERM;
d7d4eeddb8f723 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2012-10-17  2551  
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2552  		eb.batch_flags |= I915_DISPATCH_SECURE;
d7d4eeddb8f723 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2012-10-17  2553  	}
b45305fce5bb1a drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniel Vetter          2012-12-17  2554  	if (args->flags & I915_EXEC_IS_PINNED)
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2555  		eb.batch_flags |= I915_DISPATCH_PINNED;
54cf91dc4e51fd drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2010-11-25  2556  
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2557  	if (args->flags & I915_EXEC_FENCE_IN) {
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2558  		in_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
4a04e371228937 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniele Ceraolo Spurio 2017-02-03  2559  		if (!in_fence)
4a04e371228937 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniele Ceraolo Spurio 2017-02-03  2560  			return -EINVAL;
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2561  	}
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2562  
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2563  	if (args->flags & I915_EXEC_FENCE_SUBMIT) {
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2564  		if (in_fence) {
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2565  			err = -EINVAL;
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2566  			goto err_in_fence;
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2567  		}
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2568  
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2569  		exec_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2570  		if (!exec_fence) {
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2571  			err = -EINVAL;
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2572  			goto err_in_fence;
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2573  		}
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2574  	}
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2575  
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2576  	if (args->flags & I915_EXEC_FENCE_OUT) {
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2577  		out_fence_fd = get_unused_fd_flags(O_CLOEXEC);
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2578  		if (out_fence_fd < 0) {
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2579  			err = out_fence_fd;
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2580  			goto err_exec_fence;
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2581  		}
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2582  	}
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2583  
4d470f7359c4bf drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-29  2584  	err = eb_create(&eb);
4d470f7359c4bf drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-29  2585  	if (err)
4d470f7359c4bf drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-29  2586  		goto err_out_fence;
4d470f7359c4bf drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-29  2587  
4d470f7359c4bf drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-29  2588  	GEM_BUG_ON(!eb.lut_size);
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2589  
1acfc104cdf8a3 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-20  2590  	err = eb_select_context(&eb);
1acfc104cdf8a3 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-20  2591  	if (unlikely(err))
1acfc104cdf8a3 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-20  2592  		goto err_destroy;
1acfc104cdf8a3 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-20  2593  
e5dadff4b09376 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-08-15  2594  	err = eb_pin_engine(&eb, file, args);
d6f328bfeb0b0a drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-02-07  2595  	if (unlikely(err))
e5dadff4b09376 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-08-15 @2596  		goto err_context;
d6f328bfeb0b0a drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-02-07  2597  
dd39515ee4e61c drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Maarten Lankhorst      2019-12-10  2598  	err = mutex_lock_interruptible(&dev->struct_mutex);
e5dadff4b09376 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-08-15  2599  	if (err)
8f2a1057d6ec21 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-04-25  2600  		goto err_engine;
01f3423a672507 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Maarten Lankhorst      2019-12-10  2601  	i915_gem_ww_ctx_init(&eb.ww, true);
8f2a1057d6ec21 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-04-25  2602  
ab22b47595d23a drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Maarten Lankhorst      2019-12-10  2603  	err = eb_relocate_and_parse_cmdbuf(&eb);
ab22b47595d23a drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Maarten Lankhorst      2019-12-10  2604  	if (err)
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2605  		goto err_vma;
351e3db2b36315 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Brad Volkin            2014-02-18  2606  
01f3423a672507 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Maarten Lankhorst      2019-12-10  2607  	ww_acquire_done(&eb.ww.ctx);
01f3423a672507 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Maarten Lankhorst      2019-12-10  2608  
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2609  	/*
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2610  	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
d7d4eeddb8f723 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2012-10-17  2611  	 * batch" bit. Hence we need to pin secure batches into the global gtt.
28cf541543302d drivers/gpu/drm/i915/i915_gem_execbuffer.c     Ben Widawsky           2013-11-02  2612  	 * hsw should have this fixed, but bdw mucks it up again. */
ab22b47595d23a drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Maarten Lankhorst      2019-12-10  2613  	batch = eb.batch->vma;
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2614  	if (eb.batch_flags & I915_DISPATCH_SECURE) {
058d88c4330f96 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2016-08-15  2615  		struct i915_vma *vma;
59bfa1248e22d6 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2016-08-04  2616  
da51a1e7e39812 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniel Vetter          2014-08-11  2617  		/*
da51a1e7e39812 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniel Vetter          2014-08-11  2618  		 * So on first glance it looks freaky that we pin the batch here
da51a1e7e39812 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniel Vetter          2014-08-11  2619  		 * outside of the reservation loop. But:
da51a1e7e39812 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniel Vetter          2014-08-11  2620  		 * - The batch is already pinned into the relevant ppgtt, so we
da51a1e7e39812 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniel Vetter          2014-08-11  2621  		 *   already have the backing storage fully allocated.
da51a1e7e39812 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniel Vetter          2014-08-11  2622  		 * - No other BO uses the global gtt (well contexts, but meh),
fd0753cf8052bc drivers/gpu/drm/i915/i915_gem_execbuffer.c     Yannick Guerrini       2015-02-28  2623  		 *   so we don't really have issues with multiple objects not
da51a1e7e39812 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniel Vetter          2014-08-11  2624  		 *   fitting due to fragmentation.
da51a1e7e39812 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniel Vetter          2014-08-11  2625  		 * So this is actually safe.
da51a1e7e39812 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniel Vetter          2014-08-11  2626  		 */
d534d76cb2cb00 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-12-10  2627  		vma = i915_gem_object_ggtt_pin(batch->obj, NULL, 0, 0, 0);
058d88c4330f96 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2016-08-15  2628  		if (IS_ERR(vma)) {
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2629  			err = PTR_ERR(vma);
ab22b47595d23a drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Maarten Lankhorst      2019-12-10  2630  			goto err_pool;
058d88c4330f96 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2016-08-15  2631  		}
d7d4eeddb8f723 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2012-10-17  2632  
d534d76cb2cb00 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-12-10  2633  		batch = vma;
59bfa1248e22d6 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2016-08-04  2634  	}
d7d4eeddb8f723 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2012-10-17  2635  
7dd4f6729f9243 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2636  	/* All GPU relocation batches must be submitted prior to the user rq */
7dd4f6729f9243 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2637  	GEM_BUG_ON(eb.reloc_cache.rq);
7dd4f6729f9243 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2638  
0c8dac889539ab drivers/gpu/drm/i915/i915_gem_execbuffer.c     John Harrison          2015-05-29  2639  	/* Allocate a request for this batch buffer nice and early. */
8f2a1057d6ec21 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-04-25  2640  	eb.request = i915_request_create(eb.context);
650bc63568e421 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-15  2641  	if (IS_ERR(eb.request)) {
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2642  		err = PTR_ERR(eb.request);
0c8dac889539ab drivers/gpu/drm/i915/i915_gem_execbuffer.c     John Harrison          2015-05-29  2643  		goto err_batch_unpin;
26827088392196 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Dave Gordon            2016-01-19  2644  	}
0c8dac889539ab drivers/gpu/drm/i915/i915_gem_execbuffer.c     John Harrison          2015-05-29  2645  
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2646  	if (in_fence) {
e61e0f51ba7974 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2018-02-21  2647  		err = i915_request_await_dma_fence(eb.request, in_fence);
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2648  		if (err < 0)
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2649  			goto err_request;
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2650  	}
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2651  
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2652  	if (exec_fence) {
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2653  		err = i915_request_await_execution(eb.request, exec_fence,
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2654  						   eb.engine->bond_execute);
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2655  		if (err < 0)
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2656  			goto err_request;
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2657  	}
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2658  
cf6e7bac6357f0 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Jason Ekstrand         2017-08-15  2659  	if (fences) {
cf6e7bac6357f0 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Jason Ekstrand         2017-08-15  2660  		err = await_fence_array(&eb, fences);
cf6e7bac6357f0 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Jason Ekstrand         2017-08-15  2661  		if (err)
cf6e7bac6357f0 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Jason Ekstrand         2017-08-15  2662  			goto err_request;
cf6e7bac6357f0 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Jason Ekstrand         2017-08-15  2663  	}
cf6e7bac6357f0 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Jason Ekstrand         2017-08-15  2664  
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2665  	if (out_fence_fd != -1) {
650bc63568e421 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-15  2666  		out_fence = sync_file_create(&eb.request->fence);
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2667  		if (!out_fence) {
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2668  			err = -ENOMEM;
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2669  			goto err_request;
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2670  		}
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2671  	}
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2672  
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2673  	/*
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2674  	 * Whilst this request exists, batch_obj will be on the
17f298cf545804 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2016-08-10  2675  	 * active_list, and so will hold the active reference. Only when this
17f298cf545804 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2016-08-10  2676  	 * request is retired will the the batch_obj be moved onto the
17f298cf545804 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2016-08-10  2677  	 * inactive_list and lose its active reference. Hence we do not need
17f298cf545804 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2016-08-10  2678  	 * to explicitly hold another reference here.
17f298cf545804 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2016-08-10  2679  	 */
d534d76cb2cb00 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-12-10  2680  	eb.request->batch = batch;
d534d76cb2cb00 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-12-10  2681  	if (batch->private)
d534d76cb2cb00 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-12-10  2682  		intel_engine_pool_mark_active(batch->private, eb.request);
17f298cf545804 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2016-08-10  2683  
e61e0f51ba7974 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2018-02-21  2684  	trace_i915_request_queue(eb.request, eb.batch_flags);
d534d76cb2cb00 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-12-10  2685  	err = eb_submit(&eb, batch);
aa9b78104fe321 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2016-04-13  2686  err_request:
650bc63568e421 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-15  2687  	add_to_client(eb.request, file);
8f2a1057d6ec21 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-04-25  2688  	i915_request_add(eb.request);
c8659efac544b7 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-03-02  2689  
cf6e7bac6357f0 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Jason Ekstrand         2017-08-15  2690  	if (fences)
cf6e7bac6357f0 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Jason Ekstrand         2017-08-15  2691  		signal_fence_array(&eb, fences);
cf6e7bac6357f0 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Jason Ekstrand         2017-08-15  2692  
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2693  	if (out_fence) {
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2694  		if (err == 0) {
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2695  			fd_install(out_fence_fd, out_fence->file);
b6a88e4a804cf5 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniele Ceraolo Spurio 2018-02-14  2696  			args->rsvd2 &= GENMASK_ULL(31, 0); /* keep in-fence */
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2697  			args->rsvd2 |= (u64)out_fence_fd << 32;
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2698  			out_fence_fd = -1;
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2699  		} else {
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2700  			fput(out_fence->file);
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2701  		}
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2702  	}
0da5cec1de1eb3 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Eric Anholt            2012-07-23  2703  
0c8dac889539ab drivers/gpu/drm/i915/i915_gem_execbuffer.c     John Harrison          2015-05-29  2704  err_batch_unpin:
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2705  	if (eb.batch_flags & I915_DISPATCH_SECURE)
d534d76cb2cb00 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-12-10  2706  		i915_vma_unpin(batch);
ab22b47595d23a drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Maarten Lankhorst      2019-12-10  2707  err_pool:
d534d76cb2cb00 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-12-10  2708  	if (batch->private)
d534d76cb2cb00 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-12-10  2709  		intel_engine_pool_put(batch->private);
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2710  err_vma:
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2711  	if (eb.exec)
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2712  		eb_release_vmas(&eb);
01f3423a672507 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Maarten Lankhorst      2019-12-10  2713  	i915_gem_ww_ctx_fini(&eb.ww);
54cf91dc4e51fd drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2010-11-25  2714  	mutex_unlock(&dev->struct_mutex);
01f3423a672507 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Maarten Lankhorst      2019-12-10  2715  err_unpin:
e5dadff4b09376 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Chris Wilson           2019-08-15  2716  	eb_unpin_engine(&eb);
01f3423a672507 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c Maarten Lankhorst      2019-12-10  2717  err_engine:
8f2a1057d6ec21 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-04-25  2718  	i915_gem_context_put(eb.gem_context);
1acfc104cdf8a3 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-20  2719  err_destroy:
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2720  	eb_destroy(&eb);
4d470f7359c4bf drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-29  2721  err_out_fence:
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2722  	if (out_fence_fd != -1)
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2723  		put_unused_fd(out_fence_fd);
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2724  err_exec_fence:
a88b6e4cbafd6f drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2019-05-21  2725  	dma_fence_put(exec_fence);
4a04e371228937 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Daniele Ceraolo Spurio 2017-02-03  2726  err_in_fence:
fec0445caa2732 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-01-27  2727  	dma_fence_put(in_fence);
2889caa9232109 drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2017-06-16  2728  	return err;
54cf91dc4e51fd drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2010-11-25  2729  }
54cf91dc4e51fd drivers/gpu/drm/i915/i915_gem_execbuffer.c     Chris Wilson           2010-11-25  2730  

:::::: The code at line 2596 was first introduced by commit
:::::: e5dadff4b09376e8ed92ecc0c12f1b9b3b1fbd19 drm/i915: Protect request retirement with timeline->mutex

:::::: TO: Chris Wilson <chris@chris-wilson.co.uk>
:::::: CC: Chris Wilson <chris@chris-wilson.co.uk>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201912120604.qzbJ32he%25lkp%40intel.com.

--gjlabyjnqkyio2kj
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
IF00Xp5lN/GDjhL4P+sPue5PDwMA

--gjlabyjnqkyio2kj--
