Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB34TZHWAKGQEWI62VRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A1446C25FD
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Sep 2019 20:31:12 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id o123sf11459207ybc.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Sep 2019 11:31:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569868271; cv=pass;
        d=google.com; s=arc-20160816;
        b=gvjU+1/YCGm3IfkghVEOtcbAxsu6AqUk7zZ/o28Mtt4wej9Sfz8g+VX3fVikxjMKFw
         Ajj2Y0JH6j75GauyO0527PyIREZCI1MEF3saJczsfwLmsVjgR6gMMZs+3A41tt5QDyup
         FNk4pjXUJtjvmzjrJYke2NxK1GVFRqf3t3pOiJBAaKNbA7mw0jyqu9QrD2rNuK14p/oh
         FlEFOWb+nzcUi4wpOq0vkvfWykrZbbvTFqSendgcVYfNt/MEsm1iO10jBUf+7MX7og//
         hp8Bz6o3MhxpVS3/n5g6NKlAABbM5tjkEy6cTjzQpPtbidOGQVuvfBpphFi+W7hgMJUh
         2K6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9/tn2pE9bDmO4QLZ+jNNr1pE5GpWm0IkTMSQiMguFCQ=;
        b=KttAVDr3+evbYNFeUinW97H11xioDsJDu6Pc/HmHzLO5h9hhxZfi2IXmdcdTg1mDXv
         lkbSqQT2572glsoa6jxEcXHjNsfjLer+aaZtaYl6P1SgajM3t+IiXuvB+WnwTf48VjnW
         wDMREFDR/mh9VpdcLv4jFAtDkJhaugaqKItK9UcgsfOfDsdrwMrLGKG3Ug1RulJVWIrn
         x1kZyz0cCA70/S95uDK4IS/zN/eSAHfIXFcJUNRz3FLcNVFhbVu9u9LfuwE65+HuaISj
         BbV/ms0Y/L5t1Zqr4O0tDDUG1doNe61EMOJW3Ho4ZcjZzdgwwuKnwSe7AN/Hosn9Ipof
         FPSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9/tn2pE9bDmO4QLZ+jNNr1pE5GpWm0IkTMSQiMguFCQ=;
        b=qCJHmVzDIondQfrehJfdg5efvGi+f0dOR3BVIEVYICRh/2RcU72nnlnMIBqvJkNH4/
         rHfd8rp8m2ZUEQvR9mmxQCUn9TIg/lrIlsFa7104k/1UweKf8L3EkkI7VfARu+sJedIg
         oT99f+teRDCBMcm0zrWc3RXkECkoUPZunctwZ1uZ3eE6taWWN62Pf4KzE77xtN0s5Fg3
         sX0NSSKrcLrIicmtml07frioiyMc4eT3eCxO+EZdb/VSDS8c8isbrYknzBaNYRN/w0rD
         Qi5fjG+071q8mcacKyjoETVK2crmWxkD+aOd/j2JOpFnw8GQQVLu92x0ADAiGEBD2cB5
         lRmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9/tn2pE9bDmO4QLZ+jNNr1pE5GpWm0IkTMSQiMguFCQ=;
        b=aY2U8vFUNB5pSxaquT85KS29nianZJOnbqQAgVPQmKBCwCjx6Zkv8Zw6cBbh+qqjul
         p90Loji5il3H7XTjfTXKQPiZ/qZDaFpnehbzVhAeZJE0f+hqX6K35G/cSaRMa61GA+JP
         Yf4clJufC3NUCYomUHw6H17AtNZlaq5D9OU6Kw3G2iMTWhaFtdjsNK8YGV8qy4t+KFZt
         bkBpdLA1UTYcwTI7wR0VugxPcE8qH4iiPG71Zv90TAxzncQGi2Rt3OiSORijAyZh/jA8
         QCAMoofzsILX9ra7Q8gdw8MGmwwrZPhGiVX8yJTQ9ehOsQuAWKuGa2OIIMcIaGUp9Lgr
         W58w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV5p/+4u8c4PlmS7LSqYjzyqBPjYxMGqTkj1hhj+PpfC20PTfMC
	vqrZ2qwYW535DdPrGzITSS4=
X-Google-Smtp-Source: APXvYqzpQz9YSi6+AzCVnyjhsnz8t8CSF/oWKWKVgVK8nvvN9vJvWRy6Ab29qoLayx/jQnLCUvedtA==
X-Received: by 2002:a25:b842:: with SMTP id b2mr15724143ybm.443.1569868271486;
        Mon, 30 Sep 2019 11:31:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5f10:: with SMTP id t16ls2192324ybb.8.gmail; Mon, 30 Sep
 2019 11:31:11 -0700 (PDT)
X-Received: by 2002:a25:49c7:: with SMTP id w190mr16592668yba.457.1569868271012;
        Mon, 30 Sep 2019 11:31:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569868271; cv=none;
        d=google.com; s=arc-20160816;
        b=T+mOiQUqjDEwp3ChjNNMjjcZldLOxdd3hW9FrrMrguzbBSQZWNnMX8HtJVNDG+NWGx
         WQgxXk3ac+LE7hNaDAAlZm/a04P7nObJcckATQTJ73/2VVDq9VoH4si/r70Rgt6+VXqW
         Hljky/gLMxkX09T+NMNkPI+X4u8M3+xjOY1zMY+UG6r00qGaQ4cB3MHr5us8Wlsm4EcG
         eE1l9TzSsve7xShp1RiY58uDi+2FxuB03vUOze7RoW6fIcnbFeHfvdWaQhU3+OGiLV5y
         JkFG2Z9dHWKoQxkkBNTThBYAR1dl9v8/odLy1O9HfPrmNIHAHN7K9jExDM5WeiIQBMdR
         FQ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=4hXS7ghKQhdC9zFBD74WnhqBHwH0HajJsjRxLf5OoAQ=;
        b=Aei/oEeGFgXJrEfPJjKf99bQzQH47W6Kfb3h9+L2Mkqwsny44lTBessYAANWuRktoG
         ltEQLz2MuZL9vGjeHp/9aSqgI2wTmfQrfCXo9/2QRtRDWT5y/TNhZK97ovWWTA9MDwMt
         Y3IVi4MCBF5p9Zy44wcQWnzDsSI9AAZ5u5dVBdkZS9MLI4CyYp22n/i3o2yYZ1SoPQwu
         RovdKA5tVoHBwjSvdBBi5T06kGULmoPXn9DOS0VtEd5JKdzox/IdQduyzMLqqEd5VACG
         x3Cgk9zQYHmNClyqu2wsQdwkxIwG/tJ7Si90r8F7pGxUiuqXSwXbkl8XB16DolWHfSFx
         pKgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id h83si878169ybg.3.2019.09.30.11.31.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Sep 2019 11:31:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Sep 2019 11:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,568,1559545200"; 
   d="gz'50?scan'50,208,50";a="274752625"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 30 Sep 2019 11:31:06 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iF0Rt-0003oU-QO; Tue, 01 Oct 2019 02:31:05 +0800
Date: Tue, 1 Oct 2019 02:30:55 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [hch-misc:dma_alloc_pages 6/6]
 drivers/media/pci/ddbridge/ddbridge-core.c:278:13: error: static declaration
 of 'dma_free' follows non-static declaration
Message-ID: <201910010246.99DigCjF%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dnoyt6e3wbfqlcnf"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--dnoyt6e3wbfqlcnf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Christoph Hellwig <hch@lst.de>

tree:   git://git.infradead.org/users/hch/misc.git dma_alloc_pages
head:   aadd1578979b47af197cf5acedc2a63d068e357e
commit: aadd1578979b47af197cf5acedc2a63d068e357e [6/6] dma-mapping: add a new dma_alloc_pages API
config: x86_64-rhel-7.6 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 00966d1791f9150d5b9931bab64341fcf8be5e0d)
reproduce:
        git checkout aadd1578979b47af197cf5acedc2a63d068e357e
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers/media/pci/ddbridge/ddbridge-core.c:278:13: error: static declaration of 'dma_free' follows non-static declaration
   static void dma_free(struct pci_dev *pdev, struct ddb_dma *dma, int dir)
               ^
   include/linux/dma-mapping.h:449:6: note: previous declaration is here
   void dma_free(struct device *dev, void *vaddr, size_t size);
        ^
>> drivers/media/pci/ddbridge/ddbridge-core.c:303:12: error: static declaration of 'dma_alloc' follows non-static declaration
   static int dma_alloc(struct pci_dev *pdev, struct ddb_dma *dma, int dir)
              ^
   include/linux/dma-mapping.h:448:7: note: previous declaration is here
   void *dma_alloc(struct device *dev, size_t size, gfp_t gfp);
         ^
>> drivers/media/pci/ddbridge/ddbridge-core.c:346:19: error: incompatible pointer types passing 'struct pci_dev *' to parameter of type 'struct device *' [-Werror,-Wincompatible-pointer-types]
                                   if (dma_alloc(dev->pdev, port->input[0]->dma, 0)
                                                 ^~~~~~~~~
   include/linux/dma-mapping.h:448:32: note: passing argument to parameter 'dev' here
   void *dma_alloc(struct device *dev, size_t size, gfp_t gfp);
                                  ^
>> drivers/media/pci/ddbridge/ddbridge-core.c:346:30: warning: incompatible pointer to integer conversion passing 'struct ddb_dma *' to parameter of type 'size_t' (aka 'unsigned long') [-Wint-conversion]
                                   if (dma_alloc(dev->pdev, port->input[0]->dma, 0)
                                                            ^~~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:448:44: note: passing argument to parameter 'size' here
   void *dma_alloc(struct device *dev, size_t size, gfp_t gfp);
                                              ^
   drivers/media/pci/ddbridge/ddbridge-core.c:350:19: error: incompatible pointer types passing 'struct pci_dev *' to parameter of type 'struct device *' [-Werror,-Wincompatible-pointer-types]
                                   if (dma_alloc(dev->pdev, port->input[1]->dma, 0)
                                                 ^~~~~~~~~
   include/linux/dma-mapping.h:448:32: note: passing argument to parameter 'dev' here
   void *dma_alloc(struct device *dev, size_t size, gfp_t gfp);
                                  ^
   drivers/media/pci/ddbridge/ddbridge-core.c:350:30: warning: incompatible pointer to integer conversion passing 'struct ddb_dma *' to parameter of type 'size_t' (aka 'unsigned long') [-Wint-conversion]
                                   if (dma_alloc(dev->pdev, port->input[1]->dma, 0)
                                                            ^~~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:448:44: note: passing argument to parameter 'size' here
   void *dma_alloc(struct device *dev, size_t size, gfp_t gfp);
                                              ^
   drivers/media/pci/ddbridge/ddbridge-core.c:357:19: error: incompatible pointer types passing 'struct pci_dev *' to parameter of type 'struct device *' [-Werror,-Wincompatible-pointer-types]
                                   if (dma_alloc(dev->pdev, port->input[0]->dma, 0)
                                                 ^~~~~~~~~
   include/linux/dma-mapping.h:448:32: note: passing argument to parameter 'dev' here
   void *dma_alloc(struct device *dev, size_t size, gfp_t gfp);
                                  ^
   drivers/media/pci/ddbridge/ddbridge-core.c:357:30: warning: incompatible pointer to integer conversion passing 'struct ddb_dma *' to parameter of type 'size_t' (aka 'unsigned long') [-Wint-conversion]
                                   if (dma_alloc(dev->pdev, port->input[0]->dma, 0)
                                                            ^~~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:448:44: note: passing argument to parameter 'size' here
   void *dma_alloc(struct device *dev, size_t size, gfp_t gfp);
                                              ^
   drivers/media/pci/ddbridge/ddbridge-core.c:361:19: error: incompatible pointer types passing 'struct pci_dev *' to parameter of type 'struct device *' [-Werror,-Wincompatible-pointer-types]
                                   if (dma_alloc(dev->pdev, port->output->dma, 1)
                                                 ^~~~~~~~~
   include/linux/dma-mapping.h:448:32: note: passing argument to parameter 'dev' here
   void *dma_alloc(struct device *dev, size_t size, gfp_t gfp);
                                  ^
   drivers/media/pci/ddbridge/ddbridge-core.c:361:30: warning: incompatible pointer to integer conversion passing 'struct ddb_dma *' to parameter of type 'size_t' (aka 'unsigned long') [-Wint-conversion]
                                   if (dma_alloc(dev->pdev, port->output->dma, 1)
                                                            ^~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:448:44: note: passing argument to parameter 'size' here
   void *dma_alloc(struct device *dev, size_t size, gfp_t gfp);
                                              ^
   drivers/media/pci/ddbridge/ddbridge-core.c:382:13: error: incompatible pointer types passing 'struct pci_dev *' to parameter of type 'struct device *' [-Werror,-Wincompatible-pointer-types]
                           dma_free(dev->pdev, port->input[0]->dma, 0);
                                    ^~~~~~~~~
   include/linux/dma-mapping.h:449:30: note: passing argument to parameter 'dev' here
   void dma_free(struct device *dev, void *vaddr, size_t size);
                                ^
   drivers/media/pci/ddbridge/ddbridge-core.c:384:13: error: incompatible pointer types passing 'struct pci_dev *' to parameter of type 'struct device *' [-Werror,-Wincompatible-pointer-types]
                           dma_free(dev->pdev, port->input[1]->dma, 0);
                                    ^~~~~~~~~
   include/linux/dma-mapping.h:449:30: note: passing argument to parameter 'dev' here
   void dma_free(struct device *dev, void *vaddr, size_t size);
                                ^
   drivers/media/pci/ddbridge/ddbridge-core.c:386:13: error: incompatible pointer types passing 'struct pci_dev *' to parameter of type 'struct device *' [-Werror,-Wincompatible-pointer-types]
                           dma_free(dev->pdev, port->output->dma, 1);
                                    ^~~~~~~~~
   include/linux/dma-mapping.h:449:30: note: passing argument to parameter 'dev' here
   void dma_free(struct device *dev, void *vaddr, size_t size);
                                ^
   4 warnings and 9 errors generated.

vim +/dma_free +278 drivers/media/pci/ddbridge/ddbridge-core.c

22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  277  
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12 @278  static void dma_free(struct pci_dev *pdev, struct ddb_dma *dma, int dir)
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  279  {
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  280  	int i;
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  281  
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  282  	if (!dma)
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  283  		return;
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  284  	for (i = 0; i < dma->num; i++) {
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  285  		if (dma->vbuf[i]) {
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  286  			if (alt_dma) {
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  287  				dma_unmap_single(&pdev->dev, dma->pbuf[i],
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  288  						 dma->size,
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  289  						 dir ? DMA_TO_DEVICE :
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  290  						 DMA_FROM_DEVICE);
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  291  				kfree(dma->vbuf[i]);
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  292  				dma->vbuf[i] = NULL;
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  293  			} else {
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  294  				dma_free_coherent(&pdev->dev, dma->size,
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  295  						  dma->vbuf[i], dma->pbuf[i]);
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  296  			}
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  297  
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  298  			dma->vbuf[i] = NULL;
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  299  		}
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  300  	}
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  301  }
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  302  
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12 @303  static int dma_alloc(struct pci_dev *pdev, struct ddb_dma *dma, int dir)
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  304  {
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  305  	int i;
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  306  
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  307  	if (!dma)
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  308  		return 0;
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  309  	for (i = 0; i < dma->num; i++) {
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  310  		if (alt_dma) {
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  311  			dma->vbuf[i] = kmalloc(dma->size, __GFP_RETRY_MAYFAIL);
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  312  			if (!dma->vbuf[i])
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  313  				return -ENOMEM;
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  314  			dma->pbuf[i] = dma_map_single(&pdev->dev,
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  315  						      dma->vbuf[i],
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  316  						      dma->size,
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  317  						      dir ? DMA_TO_DEVICE :
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  318  						      DMA_FROM_DEVICE);
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  319  			if (dma_mapping_error(&pdev->dev, dma->pbuf[i])) {
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  320  				kfree(dma->vbuf[i]);
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  321  				dma->vbuf[i] = NULL;
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  322  				return -ENOMEM;
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  323  			}
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  324  		} else {
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  325  			dma->vbuf[i] = dma_alloc_coherent(&pdev->dev,
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  326  							  dma->size,
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  327  							  &dma->pbuf[i],
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  328  							  GFP_KERNEL);
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  329  			if (!dma->vbuf[i])
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  330  				return -ENOMEM;
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  331  		}
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  332  	}
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  333  	return 0;
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  334  }
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  335  
a96e5ab8a713e9 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-07-29  336  int ddb_buffers_alloc(struct ddb *dev)
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  337  {
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  338  	int i;
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  339  	struct ddb_port *port;
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  340  
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  341  	for (i = 0; i < dev->port_num; i++) {
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  342  		port = &dev->port[i];
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  343  		switch (port->class) {
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  344  		case DDB_PORT_TUNER:
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  345  			if (port->input[0]->dma)
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12 @346  				if (dma_alloc(dev->pdev, port->input[0]->dma, 0)
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  347  					< 0)
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  348  					return -1;
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  349  			if (port->input[1]->dma)
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  350  				if (dma_alloc(dev->pdev, port->input[1]->dma, 0)
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  351  					< 0)
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  352  					return -1;
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  353  			break;
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  354  		case DDB_PORT_CI:
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  355  		case DDB_PORT_LOOP:
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  356  			if (port->input[0]->dma)
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  357  				if (dma_alloc(dev->pdev, port->input[0]->dma, 0)
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  358  					< 0)
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  359  					return -1;
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  360  			if (port->output->dma)
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  361  				if (dma_alloc(dev->pdev, port->output->dma, 1)
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  362  					< 0)
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  363  					return -1;
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  364  			break;
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  365  		default:
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  366  			break;
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  367  		}
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  368  	}
22e743898dcd69 drivers/media/pci/ddbridge/ddbridge-core.c Daniel Scheller 2017-08-12  369  	ddb_set_dma_tables(dev);
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  370  	return 0;
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  371  }
ccad04578fcbe2 drivers/media/dvb/ddbridge/ddbridge-core.c Ralph Metzler   2011-07-03  372  

:::::: The code at line 278 was first introduced by commit
:::::: 22e743898dcd693cf587593781699db2fa888e23 media: ddbridge: bump ddbridge code to version 0.9.29

:::::: TO: Daniel Scheller <d.scheller@gmx.net>
:::::: CC: Mauro Carvalho Chehab <mchehab@s-opensource.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910010246.99DigCjF%25lkp%40intel.com.

--dnoyt6e3wbfqlcnf
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--dnoyt6e3wbfqlcnf--
