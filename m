Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2PAY6DAMGQE7EGF7NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3AB3B072D
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 16:15:07 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id k193-20020a633dca0000b029021ff326b222sf13903657pga.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 07:15:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624371306; cv=pass;
        d=google.com; s=arc-20160816;
        b=tKUs2s7X9sA89fs4tbQCiEZq/cU/dx/sgegL08dT/81PZtb38c7QCxOtPyQhVD0RdS
         +OL1qHX2+XDqChEbBs4pN8tgU1V5+0YwbWk88R0mKsOx3/mNncjOZOyOXx+iVisnEQhD
         /8d8+zCNcPlhT5kW6Hce14ILK025mdymGDsq3XbsrElqF/JCOATzZ4/kQxFX8iI0/ysq
         U3zw+cal2kxBk+Ys/TXf5AaMu9WQrxqtpSYul/p3LrmMqJgwHlZTTbIV+ettIuEM6T/x
         nizCwufZX2sSAeJWDgvErE6h9zJmw2onVRDzGNsxUUEzJwNx+9A/Yh46vHb9yS7KEA0K
         kDAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=79MtNB4yAyW6f0uep8G4RwH8WsWZ/Shr3WuArSFILZ4=;
        b=p8vpGiVbs1RRSYhyH38nIdeXlrjUcB6ekzfdmhbRuHys4aN9vQtfiRTrrs/XGX3062
         yvtX9A6i6i06dY0ID+fa1QLDfssjKHypLI5SwX1mc0sekZRIA8/YmpG9VpVBcIkF4/3z
         648d6tdtvuXx/39gWWu/j7O69sWJF58Z7FyQrAq8i848SY7nIfXYmaPDG/w7Z4AEcs/R
         yrWW4z0h8rqHNp3fWPuDdmrWzvWlDDcvL/hJnxTMu5rO21QcukICPF4WDIYqmtOaIk5N
         vEJCXFA0LI4J1FQmq44HTHhT4igE7gZGO+7mS4fr2EcpHUOv63pPhnipHXu/hJil09/x
         RXCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=79MtNB4yAyW6f0uep8G4RwH8WsWZ/Shr3WuArSFILZ4=;
        b=NarCr2O8xSAPQvwLeWM/VUtiqtoWb8QulhtDYblhsX/GcF7AripxupfJwIYEl/k7ES
         perfEj0m50Wxg1kB60TkmoT0DtANiVD9PIRoWsFfe1EiKAyDv0RFP4U2dTMmGiCb7Rsf
         euxbLcdcBD45zGWqZIQskqqSnrfrAyNp39BLW4W67GE1T8FjOCTkaZ2wdyNhdotpAl6r
         LgivQr9BmxpPqdpWGt1mTfTueZks4hMyLWrQEMmOwoQDyaiY2kD0/5KEl/AaVXLvWoOg
         0PQWWJeMmApHM1Vj3xkWl4ndzcGIQEddm58lh5QvIFc0SlUP7T1AYJVt7Ln5ljvGoMkb
         tJtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=79MtNB4yAyW6f0uep8G4RwH8WsWZ/Shr3WuArSFILZ4=;
        b=Mhwre6vaXZymzyhoOXYH7BIBLvtqR7JykBpCzWxqfBVM1jINJpN+FNQ8XNo6T4ODZ4
         ztCTTHQXMnnXRlaHjCp3CxtTLxTU83geP5tVZYlI3p8BH+yRcTylVPGWWKLUwtAZqwkF
         UptcmG9Ega5d21EnEyNmlKjfhBiGF2FThDzfS6c4cWtrA1yBw9Ro4AiVJm2qeRWrV1ro
         TpK40uDnpZ5sj7FWWDB/tHxRUyXESABWSHIRnUUpXymtAX/5bWTR0DdbWTQPstsC1TUs
         tEVJhL0c7pL1SrWT8PchRLfyAsiZmowQCf/y0VPI0I2d011JgqnmSBC5R4BqOo4vyyVL
         iVag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Tc/68YrqjpqKo9caO2mGZStlgyNW5yRhH5pBcSerKSl/IgzdQ
	mpKsYGZb3OJ87+MJSWo5E60=
X-Google-Smtp-Source: ABdhPJwU3/q7rQGfZO0fQSxYielf0eKZ+0b268MDurYp+EnyuA9IRJ2EaMbR/8o29M7A3wb7nHndeg==
X-Received: by 2002:a62:1e82:0:b029:2f9:aad3:b368 with SMTP id e124-20020a621e820000b02902f9aad3b368mr3883111pfe.79.1624371305863;
        Tue, 22 Jun 2021 07:15:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8bd4:: with SMTP id s20ls915229pfd.4.gmail; Tue, 22 Jun
 2021 07:15:05 -0700 (PDT)
X-Received: by 2002:a05:6a00:180c:b029:304:922b:f8f1 with SMTP id y12-20020a056a00180cb0290304922bf8f1mr3875932pfa.47.1624371305111;
        Tue, 22 Jun 2021 07:15:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624371305; cv=none;
        d=google.com; s=arc-20160816;
        b=RsBz35YQKbdEuLgrPH3dWfm98s+F7f+TaxrnByqPsJPK55pYk9FA+eaqos2oPAcwIh
         pkI2BDyNSWI5Utn11vODxYoUtmoz3wBY5iO/AyyQ3cwXj1mjxAXstSBI7deRCvARdy56
         LY+tRZQShtP7A7JQ62PRkdBJK9BORRLityAUH2MWPo1NGhPQY1DYiSCTiX3GZ/yAJDAi
         rW/NZbtn5KrispLaOikaWURcULMs8timIXXgd1sKOpQpeBOsvEIq/wHfOWP27z4bZns8
         75uB0rWmskaJcCyCsbiNhLOgrUk8AQ0l/7mUhEiEqV+WlaAL1wTtASw0K8Vkvgj5srRW
         cHRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=JicHQ1a2DSVFnBQjS2t98OkFms6NZm67SjupOLHN7gM=;
        b=H9QLumeJiPAGM/n/DVusYWAGde1aGjKAAXU9z6xFLml6iLy0F3TVsZ7xcphJMmNtWt
         atqI0X9yZXUMOEZzyCr1YO5Zfd64GA6B5K0VgsXfSxs4U2BdVSGmpJ9soXF1XyEftl5A
         kbZq3v+P10kzCh1drVdQs0lXlkog13Y7jDxKZIPDfHJ2yuAaKVOs4UUz4OlNjZ/gbVQU
         8ujkA2VBOlrLX4N5Ne8eMCyNlpQ9c4MpDFVynfK2scnFHNtFJRIfXbeaNk3ogWlDTJsx
         DvyrJkdN/nrwoiMyPTKpw7XrAOVwXZAk9DlJNPoV5Jh3onw8tIBoMsTcgXWY3dkq+TOG
         qdiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id c12si49280plo.2.2021.06.22.07.15.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 07:15:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: yHN2aBoW3ZrTSwBRQYfHla1CgMRMsk5x819lDXJSQrvHT4TztWG8pVj95U/2OIYe0eTg8UiTPf
 x8Iuu23glV3g==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="228615850"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; 
   d="gz'50?scan'50,208,50";a="228615850"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2021 07:15:02 -0700
IronPort-SDR: /0DDPr6F/nHDddnd8ZfHY45lBYNq4FQCh7QCAhTGpqI/TrhD+I1+s/Wc6KrrVHe8aAJIP2qIbz
 qJUTx1LaRtrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; 
   d="gz'50?scan'50,208,50";a="480823588"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 22 Jun 2021 07:14:59 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lvhB4-0005HK-QE; Tue, 22 Jun 2021 14:14:58 +0000
Date: Tue, 22 Jun 2021 22:14:32 +0800
From: kernel test robot <lkp@intel.com>
To: Karen Sornek <karen.sornek@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
	Tony Nguyen <anthony.l.nguyen@intel.com>,
	Slawomir Laba <slawomirx.laba@intel.com>,
	Nick Nunley <nicholas.d.nunley@intel.com>
Subject: [tnguy-next-queue:dev-queue 39/99]
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:180:35: error: no member
 named 'physfn' in 'struct pci_dev'
Message-ID: <202106222222.1oUMfsZm-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="CE+1k2dSO48ffgeK"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--CE+1k2dSO48ffgeK
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   3717c1342e201571591f4602ca40b1858f15b47d
commit: 5086ff5c93e51e66935ddc19d6e536e92ab41b44 [39/99] i40e: Add restoration of VF MSI-X state during PCI reset
config: arm-randconfig-r016-20210622 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b3634d3e88b7f26534a5057bff182b7dced584fc)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=5086ff5c93e51e66935ddc19d6e536e92ab41b44
        git remote add tnguy-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
        git fetch --no-tags tnguy-next-queue dev-queue
        git checkout 5086ff5c93e51e66935ddc19d6e536e92ab41b44
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:180:35: error: no member named 'physfn' in 'struct pci_dev'
                           if (vfdev->is_virtfn && vfdev->physfn == pdev)
                                                   ~~~~~  ^
   1 error generated.


vim +180 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c

   154	
   155	/**
   156	 * i40e_restore_all_vfs_msi_state - restore VF MSI state after PF FLR
   157	 * @pdev: pointer to a pci_dev structure
   158	 *
   159	 * Called when recovering from a PF FLR to restore interrupt capability to
   160	 * the VFs.
   161	 */
   162	void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev)
   163	{
   164		struct pci_dev *vfdev;
   165		u16 vf_id;
   166		int pos;
   167	
   168		/* Continue only if this is a PF */
   169		if (!pdev->is_physfn)
   170			return;
   171	
   172		if (!pci_num_vf(pdev))
   173			return;
   174	
   175		pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
   176		if (pos) {
   177			pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_id);
   178			vfdev = pci_get_device(pdev->vendor, vf_id, NULL);
   179			while (vfdev) {
 > 180				if (vfdev->is_virtfn && vfdev->physfn == pdev)
   181					pci_restore_msi_state(vfdev);
   182				vfdev = pci_get_device(pdev->vendor, vf_id, vfdev);
   183			}
   184		}
   185	}
   186	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106222222.1oUMfsZm-lkp%40intel.com.

--CE+1k2dSO48ffgeK
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--CE+1k2dSO48ffgeK--
