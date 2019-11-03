Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLXC7HWQKGQESOJDWLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB95ED24A
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 Nov 2019 07:18:23 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id y17sf10841350ybq.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 Nov 2019 23:18:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572761902; cv=pass;
        d=google.com; s=arc-20160816;
        b=uHfLzVNovyPNEpFF4jbIs2R6x9H5cIAInnsbvTMFnSOm4EYJmTlpM2iA4KGO9QjPdw
         NGGW2RT49YdTN3LMuCmoajl4Z0qdpA7E5NLCuYM1ZGhiBC0Xh9maj5wEPhPa15h7D3rf
         XnteIlFSjQ+2TiPJ+Ya2ZhLTStCLKTOvD7h6pZgw0af4Z8cKVrDFygiYHlVmJOBlEnQt
         tqUyrptQGI8n9ccb6EGnfZoYJ3Lr7OalX1vqyL+U37Ncfv9ZeyKw02pA7KuTQnmiFUND
         6karkohURTZbRFJFjdI9jOhZwd8VJzuFJGJ5Q2lgEO7vq+CJE/wZpAnESyfNvKfqbuXA
         KZ/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4uhzV00L5nMj9mWgd0PYoQSC0RZmapwXgZRcsg5WBgI=;
        b=iXlExkrB0hIMfbR+grdpyYSbx8cyFdgu6bgdF9FYMKrbQlCDNNS9RR4anly47LfFHZ
         pPdvsiOgUH6rqrNXT04yhmwrHMvR7o7dndoUr4jyS2FPD/F3Suy1c8GcEe6Yld4a5EFe
         jMY/2OYS4FCmE24eiGofshPt8Ft4EBRyBNLSitURL7VLBE5IAgMfxtUiDVXlk9zIQD9W
         6qo0U2OlvUcKI0liqTogPn0WWAuwH0+1YFfaTQVfUh3H380LfOWzmGuacnMEHXzWvpLc
         6x53B5A+IW04VUV7/VTdOyXjsckVRdV2Ba1kcYxnvfndW/RqRBTvk+2minUeJ+Et/y3E
         TsdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4uhzV00L5nMj9mWgd0PYoQSC0RZmapwXgZRcsg5WBgI=;
        b=sthT8B/r1C4hb0Jt0bb1rySHHA8PfB9EFSD8WvQMw97eOS00/sTT1iIwSqXIGIV7KY
         hhcRmPon/2H2rHQLsvFjcNkLUkr1dkNEyMy2Hd8VngrzJTqNqHzKWz3hJIRCNMIiGEup
         BA59vu+pxxFrT8fNZjmCloa836Ty0obs6O6WdxhHGJt6UgO9dIPW/jUW1KeNIw+SxrT2
         tF9QrxAVc9uyOzQnRmpix7dooeMGtKyKUgU2N90Vy8VXvb9+vIlChBf4dPuVjpbfpQv8
         rAo3tPjnx5OCLC/Fsl+MZw/40ACxB9afaLRUngWPkcvj22nmDQH47FhPulXjc0UM3ZMn
         s9fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4uhzV00L5nMj9mWgd0PYoQSC0RZmapwXgZRcsg5WBgI=;
        b=sEPR7Vf9GdKaK9JqiRF69G0hitaFBTaje6QBTlnO0vAZMpThBL8dtVZN6GFbYG+kxb
         BlcQs2rLD2UYSgqATTjCk6gnPMiiyX1k/1JilBSKi4RxtN42stHdFaJUOPnlVma+VQ+z
         JJ/w3UkRVnbqfDg34O1WYDKUXRJg3Lzxlcsh7g3grkwa1WnB+NKNf+TBSJ68+IYOD+1m
         Rxbbxt/+f69nD+hRTX17Y36RJxmWWdu28SOlGKhl1kW5qRELW+YM4UbRnKxP5BcMQaMr
         OYP1iYXoMIjZv34egehxba5yAqrNCKm13FU+BnklUboNbnBvu83OzbbW5TLfAG38hDWb
         unow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVDCelrCXlkgNyZSArF3NYD7o+SDS+ueGFo1dDS7lPCU/KSMA7K
	uCq0vDMy4UioF8xsBLNeYf8=
X-Google-Smtp-Source: APXvYqyUxLiPb6a8S16YbIWougRvwioVBiZ1XnYiwniTUDQJq2ckZ+kqdHs6YdmysR2kRss1D+QXJg==
X-Received: by 2002:a81:3497:: with SMTP id b145mr14906312ywa.315.1572761902516;
        Sat, 02 Nov 2019 23:18:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6b08:: with SMTP id g8ls1795064ybc.15.gmail; Sat, 02 Nov
 2019 23:18:22 -0700 (PDT)
X-Received: by 2002:a25:fc26:: with SMTP id v38mr17544710ybd.322.1572761902045;
        Sat, 02 Nov 2019 23:18:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572761902; cv=none;
        d=google.com; s=arc-20160816;
        b=sbaDB3nDQOq7GeKmMxe9FSnOzD0GKdY9ZMg03FSbPXhY90vs8qiVfyyEIlI6MQV+3D
         UsvlbbamVoVQWyrj5qnFoVK8nkbfA7AY+xnoowmrhbDzb0fnqm786u/ubJW3gwXXit/2
         BRjKyPAsVXRVpTQRDE4qG7QLrbJ+bvkNjI4Mtc2HXhTxAoW3iac/NNHcswyrf88q0WdR
         kVLi6M2gxcdzY6ZQsclmtjx9f7tWfcayD6Majf01nGpk/my/qF5SaAnM0Tog9condB40
         99l9dnhkYFpxwSC1ydrEUX2dRCaUpd3yip6sQxegqJXHWX+eKKu7c3tXZy53f+2dgj40
         LZIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=FNkBXHlumxxhV/wCcBaViR0ZY9ck1r7ekrz0tm2iw0g=;
        b=Zbm7nvll5lYXg6GT173XLAjNHKtYGPhFWbEjG/wmNCH6YyP3uyd2Jstazl2Z4h+iWb
         pYCQvR8rpcI5ZlkgWE45uGE+ASyvHkFSzm4OihTSh7IqWxl7AP+Q2m2KQmWlz0iPHAN1
         FKSEJoKPJLSY/qYeCI65UDBIInkYybargUfZ5THY1Ssg7+KQu1Pr1kWADLaLif85nLd7
         1as9jT3g4yga1PX/3csJqJdr9DVQeU+nxXU6XWoaUgvgowXkcPY5Xpj6puZqz4TKFDnW
         dsOaAX6ZTaMthe7EnQF5TlnRlBanSaWTe5l1cfSwJYuoxsggXbsQnkfEpjVxSBflKlIC
         0Nlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id f11si191407ybk.5.2019.11.02.23.18.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 23:18:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2019 23:18:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,262,1569308400"; 
   d="gz'50?scan'50,208,50";a="195125517"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 02 Nov 2019 23:18:19 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iR9DP-000FgH-3T; Sun, 03 Nov 2019 14:18:19 +0800
Date: Sun, 3 Nov 2019 14:18:17 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 2/9] iommu: Add dummy dev_iommu_fwspec_get() helper
Message-ID: <201911031431.ndtuEkIf%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="od4iut7z3ffo6btg"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--od4iut7z3ffo6btg
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
In-Reply-To: <20191102175637.3065-3-thierry.reding@gmail.com>
References: <20191102175637.3065-3-thierry.reding@gmail.com>
TO: Thierry Reding <thierry.reding@gmail.com>
CC: Ben Skeggs <bskeggs@redhat.com>, Joerg Roedel <joro@8bytes.org>
CC: linux-tegra@vger.kernel.org, nouveau@lists.freedesktop.org, Ben Dooks <ben.dooks@codethink.co.uk>, dri-devel@lists.freedesktop.org

Hi Thierry,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[also build test ERROR on v5.4-rc5 next-20191031]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Thierry-Reding/drm-nouveau-Various-fixes-for-GP10B/20191103-125101
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 56cfd2507d3e720f4b1dbf9513e00680516a0826
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 97725707f488d3f00f94d4c4f2d9e193c302b23c)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/x86/kernel/pci-dma.c:4:
>> include/linux/iommu.h:615:8: error: redefinition of 'iommu_fwspec'
   struct iommu_fwspec {};
          ^
   include/linux/iommu.h:201:8: note: previous definition is here
   struct iommu_fwspec {
          ^
   1 error generated.

vim +/iommu_fwspec +615 include/linux/iommu.h

4a77a6cf6d9bf9 Joerg Roedel    2008-11-26  612  
39d4ebb9592504 Joerg Roedel    2011-09-06  613  struct iommu_ops {};
d72e31c9374627 Alex Williamson 2012-05-30  614  struct iommu_group {};
57f98d2f61e191 Robin Murphy    2016-09-13 @615  struct iommu_fwspec {};
b0119e870837dc Joerg Roedel    2017-02-01  616  struct iommu_device {};
4e32348ba5269a Jacob Pan       2019-06-03  617  struct iommu_fault_param {};
a7d20dc19d9ea7 Will Deacon     2019-07-02  618  struct iommu_iotlb_gather {};
4a77a6cf6d9bf9 Joerg Roedel    2008-11-26  619  

:::::: The code at line 615 was first introduced by commit
:::::: 57f98d2f61e191ef9d06863c9ce3f8621f3671ef iommu: Introduce iommu_fwspec

:::::: TO: Robin Murphy <robin.murphy@arm.com>
:::::: CC: Will Deacon <will.deacon@arm.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911031431.ndtuEkIf%25lkp%40intel.com.

--od4iut7z3ffo6btg
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--od4iut7z3ffo6btg--
