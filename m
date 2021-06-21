Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBS4IYODAMGQEDW5OJVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA783AF10A
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 18:54:36 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id d22-20020a056a0024d6b0290304cbae6fdcsf371368pfv.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 09:54:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624294475; cv=pass;
        d=google.com; s=arc-20160816;
        b=mebqkNVESjYzF5qFZ8sP20YlnTWnsJQPaM8y0nheSnvaRaaOfQNuaHFz+lRqMGG95M
         aVXwyMbzl0MmPb6OGoo53YIcAWNboPI38QgD+e7yfgjSSLe7DIJII9ylrmen3Gt3Vgqn
         BJqCgBD0dqViPmzndyL4OFGf2oRJ/K8eyBkG3KMOY6DhLu3CXaGy5h6d+s4m7OEBiVgf
         VckztMv7HLuSFw1NUkowYPAMAegJ5OitP7MZXFvKAN0YFOxnBQ/9i88CxDPrcYytRg4w
         hMKXeNORQ/wsQHDzs0wDUKUlACFl2ZNZBXDvaNsaxgBGLo4uomnl4IOh5tNqwM7hOso1
         dcRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=IWchYqJga6YLHtdyjEme9FafoOeGigLwfc1WTGjq33g=;
        b=bUBxpT6sGXebqT2BOvqZlHwsjmEKkXUypsEvTpEQrCJwy/kcScXImm7rNa7b/vG+0A
         pbrXLdLPo1rWuk6Crqnfr+VzHa8pbB4pFIg2DAYMYwTvP2hhAkRD8MfCjgPcXzfSCPcI
         ieO6uBOn7K9wBSb9YdqFJDf5j2J3PrkV7Mct8xNrs7ikkJ74JCn3kQpONpOeQGSF2Z44
         xLQ3NmuaSAOAsCRzU2HC5ldrwbe5U6DJGfjYj0vhz9vZpJ3Foi5qDgNkvm99+sOrZwJj
         LT0zfmwxmwNZzKBtAR0btsSZdajHneq4a80cdZqDrIa0cOw1nRe76ExM6PB78q5QCEkx
         IAJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IWchYqJga6YLHtdyjEme9FafoOeGigLwfc1WTGjq33g=;
        b=TlKTcpixGtnhMguKxeDIcz+6raeRX1sVEnOgTWb40LEOd/AbUoPzj2fQeI8BJu4MY4
         W+P0Is7YWW40FLJ2ga62GI1Nyei6XKj+oKjcHu9/6dIlrFLL0+LX898p/y8Nxq17wdlK
         w+r2aQo00FraMsf9xc2D24nUqTCRaYNzdGV5MpU0I3o3E9IJ9AtGkeMuTK30NeOKdeUM
         Xl5/4A+K0UqxfMYuy/tSadtHJ6dLWpI8jBSQpLDKPfzbP5M9aTjTZA8+3+UNbrMIa4Xm
         wGnO3MmU/AEJAKu6NZewf8JCtg9yOKfzDe0u6X3QqnF1HjU9Q8/SNCbscI9eYCzEc5qh
         r3Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IWchYqJga6YLHtdyjEme9FafoOeGigLwfc1WTGjq33g=;
        b=O3td5jaNTxQZYKzJPhlTVgoqRUcGTSX++jHiIGLNHaZC7xq4qyWctNMN5WhknN6gm/
         kivgjMHjWLJcxVl5PCEbEqbVg7+eV7Suup9O9GY5zHR/S9Xe6PSPKK80gh6UYRTgd40Y
         XkhJ4zhqS4dHn1WJN0lT61guiCFo2BiIMPo3I57fGz1sPUVNLi6wAb1EBFZC1I58PQfH
         LC6DNUBZ4+749dKkwEdh/Uqvzwx8JGnS2tmzHix1eb4p3AEn/uEVVObFYsrEaskTOa1a
         Af7WrRtD437MxsL1umFLhE4FLCIRdrziNgH+OtHRz8wh4En0Lnvz43qJqh4XajSVLVJD
         c4zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315EJUUlI9p9XHRDpAo0XSErqGyi9wOqKYKReNzPbkqkj0dSjMv
	GssRgnn8kLaX0cf2LSOrgas=
X-Google-Smtp-Source: ABdhPJyVwM2p2hvDzI0P1obb9OddR3GY1vLQwbEhBmxi5rkSEZlmKywAYMVupDGbw9H/G/kMfIPPlQ==
X-Received: by 2002:a17:90a:8585:: with SMTP id m5mr28299379pjn.224.1624294475554;
        Mon, 21 Jun 2021 09:54:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4ecc:: with SMTP id v12ls7583138pjl.2.gmail; Mon, 21
 Jun 2021 09:54:35 -0700 (PDT)
X-Received: by 2002:a17:90b:3b92:: with SMTP id pc18mr27790076pjb.100.1624294474852;
        Mon, 21 Jun 2021 09:54:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624294474; cv=none;
        d=google.com; s=arc-20160816;
        b=MCobtQ3qcy7M2fBriR2NGPYxEswC2orVw17Q2GyFt1IGOZGeXkNfHtt29gdu84rg6Q
         +WZ3YnoAtjwk96KHH0KHw6CctxMoP394dOSja+90CmgQRSqChn6jYiAIMqX7FQFxxeN8
         c5nBb/8DqczXMLRlG1wQEVv4OBXd3O/ZGZ75ghFy1Eh8Oa3XENprHNg/GGqgAbAuwenl
         mJ396MMxPBCfQVlP4Z+TdP6/WqZEM3J9W8WWnTT3SVl3Q6YJiadKQOEBw05KQPOkgpBG
         g6kmKNxi4oOgKUDElVxuaVSI0tGcwMRawp4D9URCJu/Q6rL07nScJfHoDSdGED1DAHeG
         eilw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=6PSR3Q0mrOVLJd088b2kBJdJwl5fBuEOf/JtSDY2ZO8=;
        b=st4h9SkCtJUb8kWG1p3ec42xPkQOYzE3t9OuhVm0XznfaYn3TnJh3ro+tdHv7eGA1s
         iTFO1bJAxYvc3W/7EJZkwsUnK8vtUBI39zbnmBC/ZYxswRt5mI2NrYl5Of5hgDE8uAd+
         x1rrt/Cb1rPPg0rW7bl0wRz8U7cx4GwBNg7kcVYkPlIC37f5JsznDw5w7iehDj/GHY+n
         Aw9zz1aSPv5ExHR2Fgr2WdC8CRkx8+ndx2qp6u45/+fkRLLRFWpoYJO0u4CtuXBomQJ3
         k1ar62s5egJbKhwZDL9jYmbmxCLAnsOwoPNaMYYQKcfipM3qKesyrbW4QX25kBD8myGq
         b0Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id m14si2116866pjq.1.2021.06.21.09.54.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 09:54:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: 34TfEAmCZX2V/ciOMmLf+/uWxA3jVjQLMARKFYuCsNHzCgor30IuEZenfPzwRoZnBo58jqi61c
 K/qoEFVa0/6Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="206927268"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="gz'50?scan'50,208,50";a="206927268"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2021 09:54:32 -0700
IronPort-SDR: JC9epNZ1PHm7ef/VadyrJBHV61zlgmfrNyxmOCNmKFIEEu6/rA5btjA6AXDEOSFo5XPaIi0QPO
 wDlFMM051RRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="gz'50?scan'50,208,50";a="556303778"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 21 Jun 2021 09:54:30 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lvNBs-0004hx-E4; Mon, 21 Jun 2021 16:54:28 +0000
Date: Tue, 22 Jun 2021 00:53:48 +0800
From: kernel test robot <lkp@intel.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Dinh Nguyen <dinguyen@kernel.org>
Subject: drivers/edac/altera_edac.c:541:42: warning: unused variable
 'ocramecc_data'
Message-ID: <202106220038.lTRUjmoB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k+w/mQv8wyuph6w0"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Krzysztof,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   13311e74253fe64329390df80bed3f07314ddd61
commit: 4a9a1a5602d82c079325bf37466af0b67d6c0b9e arm64: socfpga: merge Agilex and N5X into ARCH_INTEL_SOCFPGA
date:   3 months ago
config: arm64-randconfig-r024-20210621 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e1adf90826a57b674eee79b071fb46c1f5683cd0)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=4a9a1a5602d82c079325bf37466af0b67d6c0b9e
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 4a9a1a5602d82c079325bf37466af0b67d6c0b9e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/edac/altera_edac.c:541:42: warning: unused variable 'ocramecc_data' [-Wunused-const-variable]
   static const struct edac_device_prv_data ocramecc_data;
                                            ^
   drivers/edac/altera_edac.c:542:42: warning: unused variable 'l2ecc_data' [-Wunused-const-variable]
   static const struct edac_device_prv_data l2ecc_data;
                                            ^
>> drivers/edac/altera_edac.c:543:42: warning: unused variable 'a10_ocramecc_data' [-Wunused-const-variable]
   static const struct edac_device_prv_data a10_ocramecc_data;
                                            ^
   drivers/edac/altera_edac.c:544:42: warning: unused variable 'a10_l2ecc_data' [-Wunused-const-variable]
   static const struct edac_device_prv_data a10_l2ecc_data;
                                            ^
>> drivers/edac/altera_edac.c:642:37: warning: unused variable 'altr_edac_device_inject_fops' [-Wunused-const-variable]
   static const struct file_operations altr_edac_device_inject_fops = {
                                       ^
   5 warnings generated.


vim +/ocramecc_data +541 drivers/edac/altera_edac.c

c3eea1942a16db Thor Thayer  2016-02-10  532  
c3eea1942a16db Thor Thayer  2016-02-10  533  /*
c3eea1942a16db Thor Thayer  2016-02-10  534   * EDAC Device Functions (shared between various IPs).
c3eea1942a16db Thor Thayer  2016-02-10  535   * The discrete memories use the EDAC Device framework. The probe
c3eea1942a16db Thor Thayer  2016-02-10  536   * and error handling functions are very similar between memories
c3eea1942a16db Thor Thayer  2016-02-10  537   * so they are shared. The memory allocation and freeing for EDAC
c3eea1942a16db Thor Thayer  2016-02-10  538   * trigger testing are different for each memory.
c3eea1942a16db Thor Thayer  2016-02-10  539   */
c3eea1942a16db Thor Thayer  2016-02-10  540  
1cf70377247302 Thor Thayer  2016-06-22 @541  static const struct edac_device_prv_data ocramecc_data;
1cf70377247302 Thor Thayer  2016-06-22  542  static const struct edac_device_prv_data l2ecc_data;
1cf70377247302 Thor Thayer  2016-06-22 @543  static const struct edac_device_prv_data a10_ocramecc_data;
1cf70377247302 Thor Thayer  2016-06-22  544  static const struct edac_device_prv_data a10_l2ecc_data;
c3eea1942a16db Thor Thayer  2016-02-10  545  
c3eea1942a16db Thor Thayer  2016-02-10  546  static irqreturn_t altr_edac_device_handler(int irq, void *dev_id)
c3eea1942a16db Thor Thayer  2016-02-10  547  {
c3eea1942a16db Thor Thayer  2016-02-10  548  	irqreturn_t ret_value = IRQ_NONE;
c3eea1942a16db Thor Thayer  2016-02-10  549  	struct edac_device_ctl_info *dci = dev_id;
c3eea1942a16db Thor Thayer  2016-02-10  550  	struct altr_edac_device_dev *drvdata = dci->pvt_info;
c3eea1942a16db Thor Thayer  2016-02-10  551  	const struct edac_device_prv_data *priv = drvdata->data;
c3eea1942a16db Thor Thayer  2016-02-10  552  
c3eea1942a16db Thor Thayer  2016-02-10  553  	if (irq == drvdata->sb_irq) {
c3eea1942a16db Thor Thayer  2016-02-10  554  		if (priv->ce_clear_mask)
c3eea1942a16db Thor Thayer  2016-02-10  555  			writel(priv->ce_clear_mask, drvdata->base);
c3eea1942a16db Thor Thayer  2016-02-10  556  		edac_device_handle_ce(dci, 0, 0, drvdata->edac_dev_name);
c3eea1942a16db Thor Thayer  2016-02-10  557  		ret_value = IRQ_HANDLED;
c3eea1942a16db Thor Thayer  2016-02-10  558  	} else if (irq == drvdata->db_irq) {
c3eea1942a16db Thor Thayer  2016-02-10  559  		if (priv->ue_clear_mask)
c3eea1942a16db Thor Thayer  2016-02-10  560  			writel(priv->ue_clear_mask, drvdata->base);
c3eea1942a16db Thor Thayer  2016-02-10  561  		edac_device_handle_ue(dci, 0, 0, drvdata->edac_dev_name);
c3eea1942a16db Thor Thayer  2016-02-10  562  		panic("\nEDAC:ECC_DEVICE[Uncorrectable errors]\n");
c3eea1942a16db Thor Thayer  2016-02-10  563  		ret_value = IRQ_HANDLED;
c3eea1942a16db Thor Thayer  2016-02-10  564  	} else {
c3eea1942a16db Thor Thayer  2016-02-10  565  		WARN_ON(1);
c3eea1942a16db Thor Thayer  2016-02-10  566  	}
c3eea1942a16db Thor Thayer  2016-02-10  567  
c3eea1942a16db Thor Thayer  2016-02-10  568  	return ret_value;
c3eea1942a16db Thor Thayer  2016-02-10  569  }
c3eea1942a16db Thor Thayer  2016-02-10  570  
c3eea1942a16db Thor Thayer  2016-02-10  571  static ssize_t altr_edac_device_trig(struct file *file,
c3eea1942a16db Thor Thayer  2016-02-10  572  				     const char __user *user_buf,
c3eea1942a16db Thor Thayer  2016-02-10  573  				     size_t count, loff_t *ppos)
c3eea1942a16db Thor Thayer  2016-02-10  574  
c3eea1942a16db Thor Thayer  2016-02-10  575  {
c3eea1942a16db Thor Thayer  2016-02-10  576  	u32 *ptemp, i, error_mask;
c3eea1942a16db Thor Thayer  2016-02-10  577  	int result = 0;
c3eea1942a16db Thor Thayer  2016-02-10  578  	u8 trig_type;
c3eea1942a16db Thor Thayer  2016-02-10  579  	unsigned long flags;
c3eea1942a16db Thor Thayer  2016-02-10  580  	struct edac_device_ctl_info *edac_dci = file->private_data;
c3eea1942a16db Thor Thayer  2016-02-10  581  	struct altr_edac_device_dev *drvdata = edac_dci->pvt_info;
c3eea1942a16db Thor Thayer  2016-02-10  582  	const struct edac_device_prv_data *priv = drvdata->data;
c3eea1942a16db Thor Thayer  2016-02-10  583  	void *generic_ptr = edac_dci->dev;
c3eea1942a16db Thor Thayer  2016-02-10  584  
c3eea1942a16db Thor Thayer  2016-02-10  585  	if (!user_buf || get_user(trig_type, user_buf))
c3eea1942a16db Thor Thayer  2016-02-10  586  		return -EFAULT;
c3eea1942a16db Thor Thayer  2016-02-10  587  
c3eea1942a16db Thor Thayer  2016-02-10  588  	if (!priv->alloc_mem)
c3eea1942a16db Thor Thayer  2016-02-10  589  		return -ENOMEM;
c3eea1942a16db Thor Thayer  2016-02-10  590  
c3eea1942a16db Thor Thayer  2016-02-10  591  	/*
c3eea1942a16db Thor Thayer  2016-02-10  592  	 * Note that generic_ptr is initialized to the device * but in
c3eea1942a16db Thor Thayer  2016-02-10  593  	 * some alloc_functions, this is overridden and returns data.
c3eea1942a16db Thor Thayer  2016-02-10  594  	 */
c3eea1942a16db Thor Thayer  2016-02-10  595  	ptemp = priv->alloc_mem(priv->trig_alloc_sz, &generic_ptr);
c3eea1942a16db Thor Thayer  2016-02-10  596  	if (!ptemp) {
c3eea1942a16db Thor Thayer  2016-02-10  597  		edac_printk(KERN_ERR, EDAC_DEVICE,
c3eea1942a16db Thor Thayer  2016-02-10  598  			    "Inject: Buffer Allocation error\n");
c3eea1942a16db Thor Thayer  2016-02-10  599  		return -ENOMEM;
c3eea1942a16db Thor Thayer  2016-02-10  600  	}
c3eea1942a16db Thor Thayer  2016-02-10  601  
c3eea1942a16db Thor Thayer  2016-02-10  602  	if (trig_type == ALTR_UE_TRIGGER_CHAR)
c3eea1942a16db Thor Thayer  2016-02-10  603  		error_mask = priv->ue_set_mask;
c3eea1942a16db Thor Thayer  2016-02-10  604  	else
c3eea1942a16db Thor Thayer  2016-02-10  605  		error_mask = priv->ce_set_mask;
c3eea1942a16db Thor Thayer  2016-02-10  606  
c3eea1942a16db Thor Thayer  2016-02-10  607  	edac_printk(KERN_ALERT, EDAC_DEVICE,
c3eea1942a16db Thor Thayer  2016-02-10  608  		    "Trigger Error Mask (0x%X)\n", error_mask);
c3eea1942a16db Thor Thayer  2016-02-10  609  
c3eea1942a16db Thor Thayer  2016-02-10  610  	local_irq_save(flags);
c3eea1942a16db Thor Thayer  2016-02-10  611  	/* write ECC corrupted data out. */
c3eea1942a16db Thor Thayer  2016-02-10  612  	for (i = 0; i < (priv->trig_alloc_sz / sizeof(*ptemp)); i++) {
c3eea1942a16db Thor Thayer  2016-02-10  613  		/* Read data so we're in the correct state */
c3eea1942a16db Thor Thayer  2016-02-10  614  		rmb();
332efa6374de75 Mark Rutland 2017-10-23  615  		if (READ_ONCE(ptemp[i]))
c3eea1942a16db Thor Thayer  2016-02-10  616  			result = -1;
c3eea1942a16db Thor Thayer  2016-02-10  617  		/* Toggle Error bit (it is latched), leave ECC enabled */
811fce4f2a7aea Thor Thayer  2016-03-21  618  		writel(error_mask, (drvdata->base + priv->set_err_ofst));
811fce4f2a7aea Thor Thayer  2016-03-21  619  		writel(priv->ecc_enable_mask, (drvdata->base +
811fce4f2a7aea Thor Thayer  2016-03-21  620  					       priv->set_err_ofst));
c3eea1942a16db Thor Thayer  2016-02-10  621  		ptemp[i] = i;
c3eea1942a16db Thor Thayer  2016-02-10  622  	}
c3eea1942a16db Thor Thayer  2016-02-10  623  	/* Ensure it has been written out */
c3eea1942a16db Thor Thayer  2016-02-10  624  	wmb();
c3eea1942a16db Thor Thayer  2016-02-10  625  	local_irq_restore(flags);
c3eea1942a16db Thor Thayer  2016-02-10  626  
c3eea1942a16db Thor Thayer  2016-02-10  627  	if (result)
c3eea1942a16db Thor Thayer  2016-02-10  628  		edac_printk(KERN_ERR, EDAC_DEVICE, "Mem Not Cleared\n");
c3eea1942a16db Thor Thayer  2016-02-10  629  
c3eea1942a16db Thor Thayer  2016-02-10  630  	/* Read out written data. ECC error caused here */
c3eea1942a16db Thor Thayer  2016-02-10  631  	for (i = 0; i < ALTR_TRIGGER_READ_WRD_CNT; i++)
332efa6374de75 Mark Rutland 2017-10-23  632  		if (READ_ONCE(ptemp[i]) != i)
c3eea1942a16db Thor Thayer  2016-02-10  633  			edac_printk(KERN_ERR, EDAC_DEVICE,
c3eea1942a16db Thor Thayer  2016-02-10  634  				    "Read doesn't match written data\n");
c3eea1942a16db Thor Thayer  2016-02-10  635  
c3eea1942a16db Thor Thayer  2016-02-10  636  	if (priv->free_mem)
c3eea1942a16db Thor Thayer  2016-02-10  637  		priv->free_mem(ptemp, priv->trig_alloc_sz, generic_ptr);
c3eea1942a16db Thor Thayer  2016-02-10  638  
c3eea1942a16db Thor Thayer  2016-02-10  639  	return count;
c3eea1942a16db Thor Thayer  2016-02-10  640  }
c3eea1942a16db Thor Thayer  2016-02-10  641  
c3eea1942a16db Thor Thayer  2016-02-10 @642  static const struct file_operations altr_edac_device_inject_fops = {
c3eea1942a16db Thor Thayer  2016-02-10  643  	.open = simple_open,
c3eea1942a16db Thor Thayer  2016-02-10  644  	.write = altr_edac_device_trig,
c3eea1942a16db Thor Thayer  2016-02-10  645  	.llseek = generic_file_llseek,
c3eea1942a16db Thor Thayer  2016-02-10  646  };
c3eea1942a16db Thor Thayer  2016-02-10  647  

:::::: The code at line 541 was first introduced by commit
:::::: 1cf703772473022ac89d815871b20aa4738449b4 EDAC, altera: Make all private data structures static

:::::: TO: Thor Thayer <tthayer@opensource.altera.com>
:::::: CC: Borislav Petkov <bp@suse.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106220038.lTRUjmoB-lkp%40intel.com.

--k+w/mQv8wyuph6w0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--k+w/mQv8wyuph6w0--
