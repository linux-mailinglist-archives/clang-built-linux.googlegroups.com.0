Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVVI7HWAKGQESTQVOPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 297E5D1B1C
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 23:42:48 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id y189sf3357231qkb.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 14:42:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570657367; cv=pass;
        d=google.com; s=arc-20160816;
        b=aMIlpr2Vh+t0NCpVQw7txX0UDZTt3pbJ6St3+igK8GdZ4/RBbFmJpLhJ4fe0RGHlPt
         OG2SxokQ/elboD50BV/OyhllZ9G4QDYP689C65ZYKhMJWf4dS+qXfcUBRLDvQXNKuOfh
         1kTgYANLDq+rDC0UyKXFsvJD+vmlsvnaaw1omdbiFgRrPLPqmbk1qJ/4hd7uXz1PVUS7
         zo+QOAq1gJ5in6xQH+t2qF4w97QqjvREF+r767B2mOU//mBaWsnnXlMtAStbZ/Ov6Tw2
         hpN9JMJOj7ET8Qf8a9kgRM7e19LDYOG/nHFKAd/TSSnkQJRszOxWOhsxLR3x67fEPfvQ
         xBZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xBPQPaRAR6JlaWQKh9KWXfbT6WUnLhVPQtTBp+wLBUA=;
        b=J7N2EezfZU+I2zyafoRrzciFlT7EVNuPb/11y9v+Fb4u6IxH6vb1bqOLIfxJHNWy51
         fDF0WMbHg5k2SqR537+rJCpDH7fWACd7TxHgVer/n2ON5DCiefEdHBReNU+xV44eqXKf
         GTDaiExUNfS0BNgAbb7ldzU5wnhaOa/FcX2Z01XezlGpzgbPMYvNI0yVYIL4rPUG7EDA
         /W1dirpRC/qp/v0R6zgW5FaNzJpfDb5KY8u/VkA4/kFJbDOKovp0R8/fBsggKwb9qZ+v
         6/bpbmRhANuaoh3zSmb6W4faR1+1Vg29Y1E6HbjB06IVENa2BZS0Y/loVQ9S1YJfzLkh
         /GHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xBPQPaRAR6JlaWQKh9KWXfbT6WUnLhVPQtTBp+wLBUA=;
        b=l+WKl3B8EIPH1G8102OfcJxAEfeFEtM2LEI51a0AqvkEUwAhxLAPkCVhgLH+5eTk32
         zT443w9e9yj79zdSlE4sPro4yn+eJEkup0/9ZAfs3pBPqpOQln7RuqZMXI6Goz77nsyY
         nBcU3JqO4AnXQwhyKF3QCrbkEduKzIRx3Yvn1IloSCLYb2TEUSjnQc9FMyCD1zdSxkqu
         E3JiZ8dGuvymJM3F5rtFqYxfyj1GulPxaNYy5PicWiPgQ8S69BGV6iGyxk81USZ/0yro
         JvqiMtN17HZPP++tDkOeFnQjtneJx2HxJk2nlStDRPOo5cWUGLzFxXgVjQqP31HjFZ0G
         RYIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xBPQPaRAR6JlaWQKh9KWXfbT6WUnLhVPQtTBp+wLBUA=;
        b=UUtF4f48J9nxjCR7MirGpzO6Q3i0vYc/lTemjNX3O4gWyN9xTZseKde5ASRzkHroX/
         ggj+bPG9n1itNb6goF6Sg+L9yodIr70r4o56dnf+5YDtBhNcfIF+kOQWQiitX4MbQVE/
         cxHATSAsjzNFR4VLI8Ib8n2ov8AR0cV6v0VMhNRSyf9rgjnqaVoVOVIqviS9kpCazfBK
         m4gDjF7m2vnseQ8fqGqplbBls0RyU4rHGgWVewQnUO0ebmeWYcakkVOFiHzXmjRE6ukB
         WbmwjENYOyt/SeFTVfty2WM2zaO67PkX+Sq27wwgyK+vBEC9GuFjh90O43Y7mzyjCa4f
         WiuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUEXpVHLdz4FGhHYoe93bmM2gbxW+kgM8akL2aioRQ3T0dUdpzp
	1QPEkB8ieryITDWnRF/4Xgw=
X-Google-Smtp-Source: APXvYqzoreCTy0f6G5iaKywQwGtQypafdJlOBoCV102xTM976ae68D6TGiA9OwpjCFvOgkrKpWuXeQ==
X-Received: by 2002:a05:620a:2145:: with SMTP id m5mr5552444qkm.363.1570657366895;
        Wed, 09 Oct 2019 14:42:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2efb:: with SMTP id i56ls611505qta.11.gmail; Wed, 09 Oct
 2019 14:42:46 -0700 (PDT)
X-Received: by 2002:aed:3c24:: with SMTP id t33mr6516404qte.186.1570657366142;
        Wed, 09 Oct 2019 14:42:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570657366; cv=none;
        d=google.com; s=arc-20160816;
        b=kooIFtry2JOYwEwYfXSZ6LqELSKftuVZ5Fx1iiyP4zVc6W4lrQpdYyOIvN/Hz2652j
         sPNXNjdl9KIpUEW1q8TBvdqtLJ3RFKGQMyBeNaEZGzoyFUKe6AUgAwL00Bul1nYtwB2l
         8Urd0WU0yvZ0mppSXs2pGYF8IlhTnXH31+piYzelNDRpdHdntVu/FPdQ7EoU7p9DRe21
         iXKQxgN9OEI0FlAPfgc4Yh1lAwxa59snXd34T/MimfOvGN0/IHszZIhIbpywKU3xaJKH
         IYzx2yQeMHGDW00nyDmf96W6oP40HFkjqxmHFa7DgPGwPOuzOk5OC6LN7tECIZQISE9Y
         3DYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=U3nKkfj4Vrw6rZ9co66xhTEgaZFy7BxuOcd0+XYSUuI=;
        b=Yq3veH6GhVRNC4gU4NxgbP2BJ94TxuP0D9WDxepDrldvIwT5ATftuXe5CoLx6jhpJ8
         FP5XVmCyPGs3o0j0pbIiV24017xHaZ94CY5M2UUD1VEVacPPJD41mLz6rAOo1u7Shpfr
         BQFbqqkIs8p6MtWHak3hA0EjOy8Y5h5U2vsoGk9SwZ5jnGFKwc+b10KtC7UmrFwCe0XB
         XdwDcytSYch2TKnRx/8ymSjcbgbx3WA2vZ71R4fRMW9unhRsJghkraemS+PD9Aat3lk7
         DOGxQlv+NZ1+yE0Bluxmd9hzZ/NPZEpEWhhc1Iz98cIPDQkl6e2u/QN74ZKM8zKjULM4
         seWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id v7si132692qkf.5.2019.10.09.14.42.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Oct 2019 14:42:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 14:42:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; 
   d="gz'50?scan'50,208,50";a="205883183"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 09 Oct 2019 14:42:42 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iIJjG-0008j5-66; Thu, 10 Oct 2019 05:42:42 +0800
Date: Thu, 10 Oct 2019 05:42:16 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [brauner:debugfs_namespaces 7/8] nsfs.c:undefined reference to
 `debugfs_real_fops'
Message-ID: <201910100505.JJh5Y3Ib%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="csr76t2hzxypdblu"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--csr76t2hzxypdblu
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Christian Brauner <christian.brauner@ubuntu.com>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git debugfs_namespaces
head:   d036a09de5402549174b5cee6a01d6ad7f3bd19b
commit: 7b9a1e6b19a7571e208f3bd2c0493765b2a08ce0 [7/8] save
config: arm64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 41c934acaf8539dedad4b48bbc88580c74fed25a)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 7b9a1e6b19a7571e208f3bd2c0493765b2a08ce0
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   aarch64-linux-gnu-ld: fs/nsfs.o: in function `proc_ns_fget':
>> nsfs.c:(.text+0x494): undefined reference to `debugfs_real_fops'
   nsfs.c:(.text+0x494): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `debugfs_real_fops'

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910100505.JJh5Y3Ib%25lkp%40intel.com.

--csr76t2hzxypdblu
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
hV7zuHUAAA==

--csr76t2hzxypdblu--
