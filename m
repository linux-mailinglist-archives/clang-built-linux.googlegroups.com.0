Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEEMZ76AKGQE2SHZ46Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8F4297B03
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Oct 2020 08:13:38 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id b14sf1411199vka.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 23:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603520017; cv=pass;
        d=google.com; s=arc-20160816;
        b=fdaLlQNcOEepZQk216xI1AH7fTzhG4nDqkdfNl4E/4I1cZLN33ZZzyd9otwX5r1G/N
         xeidAanxO6VrnEaVt4nyUK5wCmn6VDxHXQW8EtewQ2Ss539xaeQTxbRE5XeE0DpX7JFD
         V5EhxpgnQMT5GQS8bcBKHDRf7iazD5HIT1X22n3JtLfaZTQR+j4c7ji77VCvzMWD8On9
         6Nh0rnqi4N4XFYWM0YU2ff9nmwFHENQx1W1E+ZP2Khe6jbB40fu16c9f95JWU/z5kayC
         qtwsRzqHGCyVY7qnuhnwh19QpGSREdsIFCQ8S+sukTf+8bESr+Xk19Kc7U+VB2iAQCPi
         CyMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=5+SlVC8JrwoHDpXgS2F+HJdN1+/hcTrNiyJHaX/nnCA=;
        b=W/3U2gyMA4oeN6Nh540wC6UsbyVa6pocjlqufYoa4Ui7mxKXN5rFZ9qNyLpw9NObzQ
         o80Dc86VGy4Q2zPW0D9u34l4f2+nOo3fBG7BDMq8Lnt5J1ByzUBaQwfF6QyzKywTKHfN
         PYNclOrejMi5+KVDYwyaBw81ZX4JIfcOtMthvs373K7SVzlv0wT9shhygNqd8WDETYqw
         1UEqG0kSbuAr+ncmL/tgXmOd/xli4MPmbcpgPrGHY2Xu5qYR9U3Upb1A6dp1eQ/vKAev
         xAuxTBQx/45bbuWXsCCWS8iIMqAjcKkPzuXCTna28lZxqWzUTZ7wazcLvArLyt3eS5vI
         dVZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5+SlVC8JrwoHDpXgS2F+HJdN1+/hcTrNiyJHaX/nnCA=;
        b=ir9fUbP3B9yJy3YeYbnRNfkpEzzGvRc5FgpRm3ZbK7k1ffla/V9Xk/2oJZ5KPaTx3b
         YyFz/JijZvl5u2tvn/AJwCBZfS/peBgx16l9iAfHiJJTod/wKAVg0P3uzGPfsDTTZB/T
         8FjcMBFilTRcTbvSKekprH1TTGKFrSmyjF9jtkvo2rPlN6GmJ8KMcACuVy+AXlFDUTEM
         2wZqwrtjMmhI7eiDwCyYAa2qO4iOv/ZMU4YKMO1DjKYQXvdIidOuW9GHpHcq5AFljLw4
         syLU8vfNfPIWbSnQFjPR/mBsj3LsU9YOqTjQo/COI4WSLsZ0qECo4J3+btl+LEyLp5/d
         VlfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5+SlVC8JrwoHDpXgS2F+HJdN1+/hcTrNiyJHaX/nnCA=;
        b=R1rNObFtgP23tdT4DOTsVMm8A6X7mISHHkRuiX+lmtXs6Vh5VijjJipqnhWCBA7nVz
         02QX/224qD0fRU2U27ZGVVmHdCGnilBwfokVVfvFL13Jbxt7UTReqvRttRMizvwuPUV+
         imEXWS9BaKpBvxrR/mWQjzIfleADthDfHdjhFUKxLJRShZiKE7EpzBPoxK0sAgouNWzl
         UFIMJN+SHE2JBMPSQuQgZToq8hFHX06P7do3Zx0ykhiyyZ1INPsPlG4kyNuhzID9ObB8
         Afo3+RszVUCZUbF0qwyrt7XuZMRUR/5yFtc1G76atDli8jahOIJBM6V5uD2h5hfGOpXP
         g3ZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532MrAki1M0PsY2X1gruoWFfK8lDQakxoY3FHpnQq2VUYTSWKSBq
	Vkvu7MdB7jmBYQ871hhon7M=
X-Google-Smtp-Source: ABdhPJzfPLCiZRiGRDDR1k652RDe3kYklwweSz0ZfQ0+YouiP7CQkO0xOpySENhr7vtkh3rBalBwPA==
X-Received: by 2002:a05:6102:2c1:: with SMTP id h1mr3657885vsh.3.1603520016908;
        Fri, 23 Oct 2020 23:13:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:30c5:: with SMTP id k5ls188218uab.3.gmail; Fri, 23 Oct
 2020 23:13:36 -0700 (PDT)
X-Received: by 2002:ab0:658c:: with SMTP id v12mr5253876uam.39.1603520016276;
        Fri, 23 Oct 2020 23:13:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603520016; cv=none;
        d=google.com; s=arc-20160816;
        b=MClU4+Km5OkhmWDHl+JwRZ21I1SOWk8fBbWRfNH4uat5H+I2uRbt8ClSC3LRTf9oFu
         OoZ4lDvUC2ZAHygg0+1UwhxdeGf9haz9gEo75lJb8ohkfnnB48CVZ7gjjuhq1qrfLh7A
         KcVeMY/H6adPu5qbk3NEPDEUga890xrRQDYCkXGExpcao2zHVAMad6rorHXyo4LQCg0a
         p+dWjPng/aJJrK1qDcmgahaHRy0+IBHy+FuTBi/4/ZJNfxV0KIMyXy954SsNlqHliKxd
         F1lev0TojWtWK6gih5IvEBOBI2DBXfSKROrXDbo5Bf5P2taiDIjniy4XnGEv7ZS9K/hS
         Cdfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=CRcVG9JIpFP3KEzMASyfL1jpYkzz0hkm6FzQcUiJozI=;
        b=IXN/YTAYourxT3PTSWYwQD0PPEAm53zQQXKFdwFkAXMXa/kenJ9FOgJumbc430k3Om
         pNfk1bMdZYEuQ7+7y1OxzIrquRxbxD9qtyGUBrUjX3sY9iWS6v9u1QeEBokOqj7cknVZ
         a1kaz6374NQ9NmXX/yl4kkj4TGRgoORrpxuT84b4YjefK2aMEBqQFTRy7z5ox1nskOrI
         AO+2ikc2Qwo+V7dQU3smu6DmG73mUHXQE8AE0vB5V6yXQC6Ht4osGWpRr+yn/EOuAE1Y
         Z/hRtTvRqwbscyeMrwrMcCeJ4FWmQPjirqmvKUxiUuHVUcPSnzZLJRkYs48vC+YU8BZR
         UncQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id b16si253079vkn.5.2020.10.23.23.13.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2020 23:13:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: KZOkVulbC+021OM0+oew6GBAVW3SLeKNnuSwF3p41ZZmtbnY/n+mtn4g6bfzde76nsv3HMgcgX
 fKEcSW8VfGIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="165165571"
X-IronPort-AV: E=Sophos;i="5.77,411,1596524400"; 
   d="gz'50?scan'50,208,50";a="165165571"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Oct 2020 23:13:28 -0700
IronPort-SDR: aoCyMfm36O9xMm8pcNeVs11+SO8Nb9qsqCdUDmDfyYBbka0hgP0eq9x5DIYef8nUWqU28MPWR5
 48ZqAQ47d6Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,411,1596524400"; 
   d="gz'50?scan'50,208,50";a="523723529"
Received: from lkp-server01.sh.intel.com (HELO cda15bb6d7bd) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 23 Oct 2020 23:13:26 -0700
Received: from kbuild by cda15bb6d7bd with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kWCnt-0000QF-TW; Sat, 24 Oct 2020 06:13:25 +0000
Date: Sat, 24 Oct 2020 14:13:15 +0800
From: kernel test robot <lkp@intel.com>
To: Nayna Jain <nayna@linux.ibm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
	Eric Richter <erichte@linux.ibm.com>
Subject: security/integrity/platform_certs/keyring_handler.c:62:30: warning:
 no previous prototype for function 'get_handler_for_db'
Message-ID: <202010241412.uZRZfoQJ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="d6Gm4EdcadzBjdND"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   f11901ed723d1351843771c3a84b03a253bbf8b2
commit: ad723674d6758478829ee766e3f1a2a24d56236f x86/efi: move common keyring handler functions to new file
date:   12 months ago
config: x86_64-randconfig-a005-20201024 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 77cbf2595331b11018c2cffb76eb5b8db69f4577)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ad723674d6758478829ee766e3f1a2a24d56236f
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout ad723674d6758478829ee766e3f1a2a24d56236f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> security/integrity/platform_certs/keyring_handler.c:62:30: warning: no previous prototype for function 'get_handler_for_db' [-Wmissing-prototypes]
   __init efi_element_handler_t get_handler_for_db(const efi_guid_t *sig_type)
                                ^
   security/integrity/platform_certs/keyring_handler.c:62:8: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __init efi_element_handler_t get_handler_for_db(const efi_guid_t *sig_type)
          ^
          static 
>> security/integrity/platform_certs/keyring_handler.c:73:30: warning: no previous prototype for function 'get_handler_for_dbx' [-Wmissing-prototypes]
   __init efi_element_handler_t get_handler_for_dbx(const efi_guid_t *sig_type)
                                ^
   security/integrity/platform_certs/keyring_handler.c:73:8: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __init efi_element_handler_t get_handler_for_dbx(const efi_guid_t *sig_type)
          ^
          static 
   2 warnings generated.

vim +/get_handler_for_db +62 security/integrity/platform_certs/keyring_handler.c

    57	
    58	/*
    59	 * Return the appropriate handler for particular signature list types found in
    60	 * the UEFI db and MokListRT tables.
    61	 */
  > 62	__init efi_element_handler_t get_handler_for_db(const efi_guid_t *sig_type)
    63	{
    64		if (efi_guidcmp(*sig_type, efi_cert_x509_guid) == 0)
    65			return add_to_platform_keyring;
    66		return 0;
    67	}
    68	
    69	/*
    70	 * Return the appropriate handler for particular signature list types found in
    71	 * the UEFI dbx and MokListXRT tables.
    72	 */
  > 73	__init efi_element_handler_t get_handler_for_dbx(const efi_guid_t *sig_type)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010241412.uZRZfoQJ-lkp%40intel.com.

--d6Gm4EdcadzBjdND
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
4QEA

--d6Gm4EdcadzBjdND--
