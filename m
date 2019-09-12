Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEGD5LVQKGQESGORIEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A269B14EB
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 21:50:43 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id c7sf24696766qkc.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 12:50:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568317842; cv=pass;
        d=google.com; s=arc-20160816;
        b=hVsW1euN/gOpDL3sFSZ6QA4b6q7STGcS3HGzfJ0zhdJTK895Z3evOVq5TasbNZEaM/
         fXoVjs1YfKVQcrUvazB/VvRG1Y7Ab9eNsR8sGPupTvMcpXpiGk5Hvz4RtD7377D7cVT8
         qrZI/eFzpmTJnYcf/2pjuw1XyJfqmcrm9oX3aAvmS+LUsuOxSuBVGLLbjs5vYTi6rbqB
         nqjx6bzXWVJb4uvbnDJaWUFAjw5NlsX/ADrd7IhzbmiuS9g+i2N0dm6BfajVyGWuD0ms
         JPExiGQz73rJISvMHRROo+IDoYm+TiDOn3+S7RCTOduwFIDcUq9YI/EdqIvSfZ9KSNxP
         aRvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8n5/RarkwVusn2qILmJAeqkuBIktJtk0WuxPc8HfE9M=;
        b=UwGeuvGfm0VDlA4gbrtNMIbLVfylw/NZh9EXBPkAcx39wxxkXe5ijILQzttUBjxXqp
         TJYLM8UsVRWgiqU/s4kRRtYr6bJQamMjw245/Ccc7/FXySxWima+I1/ACqId0gY1ay/l
         UxDKM1SHVADHWXRGIuEyiY7Avhz/Pa4AGHUiktblwh37QwEi7t9tKtVvL3pkJlBKN0VD
         bL1tFGbIIHrF3xTLGb0t4M0WLDV3P52mIh5n08zWqlz+HKFc343vZGlZkbGdyeVOwFpS
         t86cPc5CNp5HkEd3A0frULNBgX3c3Rahx+1KgXRtAY/rKsD9MLG4BXXPqdO2lIRby9Ch
         M7hA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8n5/RarkwVusn2qILmJAeqkuBIktJtk0WuxPc8HfE9M=;
        b=HoMftpq10qE2w47WzWk1V6CE9k9LgSE7U9TgWEQ33BuDi2zg0ZBKyUAUGGIRmbsFu/
         8v/+ouyp2eyF6EKbgXBF3W5CiBf+kbvAqC9RvzBgxz1/+7/OwsTT92GzBiaz0j+hwHw+
         t29VXINfZMRFL9nDDbpYh8phg9+HUbcAQyJQNOFHrDhYwzDPDa/eiptqqSc321mr41wr
         QaWO44wdTwCNRH0XCar9Y0XyDMz9oK5kFqTM6v+/Zbgu5+uCAhaJaywFZNiKkR/mxZfj
         kfOAxOlOKKt3r5XCnZCCTaVbCmlGzV8ksO1K9MaNwe306kqkiXCXIp5v1Cti3d4ULBiy
         DvpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8n5/RarkwVusn2qILmJAeqkuBIktJtk0WuxPc8HfE9M=;
        b=Aqsi+L16j4FcJFuB2Y0VLfiq7VpgNy/Bb/x5vr8QYQXuksHFHjyqccB2tj1H0qWXDC
         7jqB0MsKbKZ0ytO2syadb9p8PwWNhW6CJ/2ZmelEWDcHBxT3a1CuD9AQeum9YiQx2WHB
         W1zgTOxHtamNrKj0ZtnnQ/KHEelGFU3Epl1dujKP8qbjCO+69ScY2WZQcd3MHCO1MXE1
         W/8Vx0x2lrfOW+Wc1EN03ey6AbvBcAtyC6tA9a9HXFdd62LfD1CKcFS30SfvXpbXGSS8
         0qNJTPH4eOeyvOIe/eFet1u/mGS3cg0UkYsGvZDgVIiVfQlk6BATOR4Ze2PNfEpTBj4e
         GaQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW5nRwQs4N/+Y+4wKBYSDCLg4cTVuD7RriLwYg9776IaeO4IEHT
	em3OHZI9pQGR5oBN2HHb9jg=
X-Google-Smtp-Source: APXvYqwm/Sj8cr6rbOAiNb72JDVJc6JDXb7mj1C7sIsZco40gFgk9A+r1Hjlat0sG0qx9NGo7XmRmg==
X-Received: by 2002:a37:9202:: with SMTP id u2mr4656863qkd.8.1568317840827;
        Thu, 12 Sep 2019 12:50:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:8741:: with SMTP id j62ls67568qkd.6.gmail; Thu, 12 Sep
 2019 12:50:40 -0700 (PDT)
X-Received: by 2002:a37:8204:: with SMTP id e4mr42250315qkd.281.1568317840545;
        Thu, 12 Sep 2019 12:50:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568317840; cv=none;
        d=google.com; s=arc-20160816;
        b=rJgm9QWbmCh0Urn0MYxAegqdPtDjWbFn5UXkcm1l/M5rNR5ilZkdR5BaO+a6TgXXLa
         1Ct8vd1VsfCdJFTiJ5XRQI9RrP827oCo2b2qVdQl1dKdjpdf9+H6ZCaMC2qdvoRXb4mU
         g4qFDpwUuleutcNuIk+Q33xjF18cKEmEckMHOLuRMaEHNxwOdRC1EIhRsvrgfEIDVYgh
         jNJHKgkjqN24R+ryo4qYb6Cx7RjwbPcxaTmF0MDLKB36uRGNab3Gb+dAP7iimcHLyUtf
         yVJbzLADWMUbIwTzendm9xHROmXf/tq9dO2ASwdpJgnYjvgdziMG+MBZ41MyMhc/rcI5
         21pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=jpklTaF/bQgCTJ7tPHXYIjdF3f4d+rutmgqz/VAYZc8=;
        b=uTK5CX1hLl9LjzZPW1YT1RB/566Id1fVcYJdnP7TV515f9CM0LLSHDAEaiMP3FtTCH
         zkAX1Jgy+mHD+vXKwk25ooWQeOUUl3rpYWed0F5cO6F5IOq0DnOgZV7LOAT8DzRJ0n8s
         GVQfSUDOWYTDuSboDVn4njlDFoXeU5tRxlhBRFuSaL1FnQw/BDEgLVuuuZPp8z5JhoAO
         qI4R9BQLOH/TBJAfNGYaZqRRHSzsTms/fYSZ+K+GPPmljtn1TVl4StfvhRhurDMRAVar
         rwXBtSGg+pJWX70tWuwryDjFxyEKD0p6LgNT0IO1qkSzeIiOShDJLK9uIIFcVfXiPri9
         WnwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id x8si803563qkn.2.2019.09.12.12.50.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Sep 2019 12:50:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Sep 2019 12:50:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,498,1559545200"; 
   d="gz'50?scan'50,208,50";a="210135598"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 12 Sep 2019 12:50:37 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1i8V6z-00018L-00; Fri, 13 Sep 2019 03:50:36 +0800
Date: Fri, 13 Sep 2019 03:50:02 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [p2pmem:xcopy-v0.1 2/2] fs/splice.c:1202:17: warning: incompatible
 integer to pointer conversion initializing 'struct device *' with an
 expression of type 'int'
Message-ID: <201909130300.V4khIqo8%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="iyt6y4xfnxqfwuy4"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--iyt6y4xfnxqfwuy4
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
CC: Stephen Bates <sbates@raithlin.com>

tree:   https://github.com/sbates130272/linux-p2pmem.git xcopy-v0.1
head:   10a2c6658d7087a222b072aff306f545aef2cf53
commit: 10a2c6658d7087a222b072aff306f545aef2cf53 [2/2] xcopy v0.1: code cleanup and fixes
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        git checkout 10a2c6658d7087a222b072aff306f545aef2cf53
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   fs/splice.c:1202:21: error: implicit declaration of function 'disk_to_dev' [-Werror,-Wimplicit-function-declaration]
           struct device *d = disk_to_dev(f->f_inode->i_sb->s_bdev->bd_disk);
                              ^
>> fs/splice.c:1202:17: warning: incompatible integer to pointer conversion initializing 'struct device *' with an expression of type 'int' [-Wint-conversion]
           struct device *d = disk_to_dev(f->f_inode->i_sb->s_bdev->bd_disk);
                          ^   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/splice.c:1204:7: error: implicit declaration of function 'blk_queue_pci_p2pdma' [-Werror,-Wimplicit-function-declaration]
           if (!blk_queue_pci_p2pdma(f->f_inode->i_sb->s_bdev->bd_queue)) {
                ^
   fs/splice.c:1223:25: error: implicit declaration of function 'disk_to_dev' [-Werror,-Wimplicit-function-declaration]
           clients[P2P_DMA_SRC] = disk_to_dev(in->f_inode->i_sb->s_bdev->bd_disk);
                                  ^
   fs/splice.c:1223:23: warning: incompatible integer to pointer conversion assigning to 'struct device *' from 'int' [-Wint-conversion]
           clients[P2P_DMA_SRC] = disk_to_dev(in->f_inode->i_sb->s_bdev->bd_disk);
                                ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/splice.c:1224:23: warning: incompatible integer to pointer conversion assigning to 'struct device *' from 'int' [-Wint-conversion]
           clients[P2P_DMA_DST] = disk_to_dev(out->f_inode->i_sb->s_bdev->bd_disk);
                                ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   3 warnings and 3 errors generated.

vim +1202 fs/splice.c

  1199	
  1200	static inline bool __splice_pci_p2pdma_supported(struct file *f)
  1201	{
> 1202		struct device *d = disk_to_dev(f->f_inode->i_sb->s_bdev->bd_disk);
  1203	
  1204		if (!blk_queue_pci_p2pdma(f->f_inode->i_sb->s_bdev->bd_queue)) {
  1205			pr_err("peer-to-peer DMA is not supported by the driver of %s\n",
  1206			       dev_name(d));
  1207			return false;
  1208		}
  1209		return true;
  1210	}
  1211	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201909130300.V4khIqo8%25lkp%40intel.com.

--iyt6y4xfnxqfwuy4
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--iyt6y4xfnxqfwuy4--
