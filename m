Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWXK4SCAMGQEVUM6N7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 555C8378CC8
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 15:30:09 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id q26-20020a4ad55a0000b02901b6b9f33e6dsf7338799oos.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 06:30:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620653403; cv=pass;
        d=google.com; s=arc-20160816;
        b=m4cxa/kVRa9jdoq1feRG4omMnCtXRHv5ce02CNz3kkSqC9rrPL5UdkLIK6gbVvtOqN
         QWauK7GJsv0qhOsnuT10iv/HaHDdv2rRqHs0AUBjdZ9Rga+yY/EdbPxgLx+3I/B+hz7Q
         t+VF8Q/35NfbUHqlF3vFbm6Zcv/fNuclBsRnhyMCQNr6P490DDRxIgQeRb/z7ZlFiBjY
         r3xZ26wBFmTJSaV1WvFSVeY0SUa2iYFDWdwk2UAOB3F6uMZ+0arPcudwwoLrjb7LBxMd
         UUk1sEPn5ZGxu4OWs4wi7uZsiRRpARYay5E/sOTgTyz/YJm8zqmSkH4/CBPUSI48oev1
         Bvbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=LHbQBtXPxU2t4d9/1iWOv77CSAvOHtNdvTbiX+Wqte4=;
        b=Dg0WCE4voTY8rTzrS2TZfqeZY1eE7FKJDIR1D9wBKyxpcEDwgra+EhlXj+9pHWscva
         smqyWFZIuzayDLIfpvs71crmL/qy0dc6sVsxJ66N6yQJ7dCFImbdlFXr33qntlZPtREP
         1vGH56HzDoI8P/p9pgo4YCs1C8iWnWY7KjBpiI7FSpEpmenM8fW2rr8ZHbkccUd6Ww5+
         IPUq4D4N4CeM6l7/GapLt+z6FUxVvVuc7kE8bLSgqlbrt/g8jWM8zz7wW0eZyT6GGHYQ
         7A6AWCfGV4KOqp2C8Vu8jK79MNCbxm1ISuuTEKS8kLK/Rqxrjs3+wBrs0Bynq6n9Qdvx
         STRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LHbQBtXPxU2t4d9/1iWOv77CSAvOHtNdvTbiX+Wqte4=;
        b=Ac1iuyRUJ+FnFtl73ZTbPRsKLpbtbXDU4BWnjvTpl/BbUy80eOk+dwMubh1V8+iJTt
         L+cNVZXzRG7K71VGsCupkzxQ5Hk7dqVm+aSMarzSYUqdjSWGexOFY+LUpIc9mpgcE+dF
         HzswnxXCJ6hP+k1UyL3xWpUaPa65+s4/pg1ubXINTBd26RLup0Qiu7K7O0A5BZHrFXgG
         UhXaROeLj+6ZwzJuXUWXEXlUOsc4qZAJXA2/v/EccKW0zENZFXwlaNOWmxRgm1iTHZLR
         fjDHQvrHavSZl7kVkEsB9uM4WLMmmL4YDFSiTs/QK9DBq9mHJgzNngOHcbdLnYF3xZ28
         ckcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LHbQBtXPxU2t4d9/1iWOv77CSAvOHtNdvTbiX+Wqte4=;
        b=V5VB8UjRm+pxmpXtkVJaLX0FckNhCemYNU8ZzNIVsq3XzSFSPnK78Fvv4geOU+oJgr
         FAtcDEIz1gDt235Va/0IPHOS+eND7vUTE+bgo96l6pNpW4w0L7+mdVUF2/2BqqiCB4xU
         ePoa/VA0gxL0wgDplKFV2DIEctHxvxIOrFHTSyqMgW4y5k1npC9J5GbjDwyx1BxwMnVd
         PdBHqsHNyzKXir95ZGfiJ6tcrlXBYsxOASgTAIFYPaz/zC49NXw2Ul83xwaLTI3rq4Yk
         ZoTK11pCRjtdmSsJjqbPZAB32HgU3IKCOmdYmPe2bfDgsTA5ulf7WufBlvmwe/Aqylnw
         IkiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307vGzXv+IEx2vmQSX69GBzuIFmGlgu4ZJqOpBXl54lsJxuF5t7
	YzMWa0TISiyEyHSEeB36yrA=
X-Google-Smtp-Source: ABdhPJyQIl0mF8kwZk0RmnWQjK7RvpOReuQgL3qJRtqdOMnqv3O+lbgO1gMkeOm/MZVHnF1Rvt4UMQ==
X-Received: by 2002:a9d:459a:: with SMTP id x26mr21812771ote.337.1620653403008;
        Mon, 10 May 2021 06:30:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b102:: with SMTP id a2ls1567096oif.5.gmail; Mon, 10 May
 2021 06:30:02 -0700 (PDT)
X-Received: by 2002:aca:ad03:: with SMTP id w3mr25956136oie.46.1620653402379;
        Mon, 10 May 2021 06:30:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620653402; cv=none;
        d=google.com; s=arc-20160816;
        b=G35/TiP3SX0gCWkjkTNgrTZhk64XygEhsXQfJ3WXVxFMBfQjhDLlq2nh9OGfGb3elQ
         Gb94URSymjysUA4bQPYg92Z5KqXlmhz/KBsRfB48Ky8BSJ+CASQk8QJ4Sh7kLupdSJ9L
         ILeNpZ7StQb1EW7RGPEFkjblYHH9OSA5kxH4OrJmlZkhMQGVadk2dRAl6MFVRoqNB2xk
         0XoRTS8VyjMLIqLZjNLK6dKNPwUSCSmAPA6QcMBr/xMCwxzzMnduuJ1sb/1kQ741jEem
         hmqtGBK2REYXwpjVmYCZYQrK8q79ZC803lZntIEdYrTmfBJnPbB1poGqTNr0PnknuK0t
         AjWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=FEOxqFYeSu64h92bcVLwMZEPmdiwyg1cLftIBOTtXbM=;
        b=M+N5vKmCGMk1hPQj9BObwUJLi/VhMvu/W31XPD2ngXRj3oSq/R3iT/FO7tnKBiACTw
         z37VDE8KdSnQfmqjT1AGp09eJKSO0IivIjHI9cFG+3EC5SxZqUCiUtc2YcWNRP2ktpHM
         uhGLp0RNg+TVfgQeTl36b2eYOxDfAZmBXSm4JmccMQU5UJ/HNgJrIG8VFW6hd4kAASxP
         /NyP2kZjIUhIMexzItlhL0bD4neo+RG39o91wubJ7yJ3Y9pI6ieWZPLlcErb0FRInpHN
         1EyV9leyhSDCixH96qZbWUrxz+y0eibnFjQDndvj2GkBjkKecITC3BCIwzJbb+EhW5Ns
         5deQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id o7si1376696otk.1.2021.05.10.06.30.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 06:30:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: piaH7T8cbhVHqO9dppPPn4VN9dbcAW7tTCgk2fc1BshKXIohIwuf1eHvgPnVdGGhrNxTb8OgGS
 Ga6nyTp0/6HQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="220140642"
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; 
   d="gz'50?scan'50,208,50";a="220140642"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2021 06:29:59 -0700
IronPort-SDR: /1Im44kevhX6/p9wu5NUNmCHPmvNyvDjS3Lb6rvT/LmpXLUqKhBX3gj+1qg+pZL0no+AGrdAPl
 a6hXh1ba89Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; 
   d="gz'50?scan'50,208,50";a="436144171"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 10 May 2021 06:29:54 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lg5ys-0000Bk-Au; Mon, 10 May 2021 13:29:54 +0000
Date: Mon, 10 May 2021 21:29:12 +0800
From: kernel test robot <lkp@intel.com>
To: Niklas Schnelle <schnelle@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>,
	Vineet Gupta <vgupta@synopsys.com>,
	"David S. Miller" <davem@davemloft.net>
Cc: kbuild-all@lists.01.org, netdev@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org
Subject: Re: [PATCH v5 3/3] asm-generic/io.h: warn in inb() and friends with
 undefined PCI_IOBASE
Message-ID: <202105102111.SyGVczHt-lkp@intel.com>
References: <20210510085339.1857696-4-schnelle@linux.ibm.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline
In-Reply-To: <20210510085339.1857696-4-schnelle@linux.ibm.com>
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


--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Niklas,

I love your patch! Perhaps something to improve:

[auto build test WARNING on soc/for-next]
[also build test WARNING on asm-generic/master v5.13-rc1 next-20210510]
[cannot apply to sparc-next/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Niklas-Schnelle/asm-generic-io-h-Silence-Wnull-pointer-arithmetic-warning-on-PCI_IOBASE/20210510-165435
base:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git for-next
config: openrisc-randconfig-r025-20210510 (attached as .config)
compiler: or1k-linux-gcc (GCC) 9.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/fa75946a8988026bee808b5840438a3908f0a65b
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Niklas-Schnelle/asm-generic-io-h-Silence-Wnull-pointer-arithmetic-warning-on-PCI_IOBASE/20210510-165435
        git checkout fa75946a8988026bee808b5840438a3908f0a65b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross W=1 ARCH=openrisc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/kernel.h:10,
                    from include/linux/list.h:9,
                    from include/linux/module.h:12,
                    from drivers/net/arcnet/com20020.c:31:
   drivers/net/arcnet/com20020.c: In function 'com20020_reset':
>> include/linux/compiler.h:70:32: warning: 'inbyte' is used uninitialized in this function [-Wuninitialized]
      70 |   (__if_trace.miss_hit[1]++,1) :  \
         |                                ^
   drivers/net/arcnet/com20020.c:286:9: note: 'inbyte' was declared here
     286 |  u_char inbyte;
         |         ^~~~~~


vim +/inbyte +70 include/linux/compiler.h

a15fd609ad53a6 Linus Torvalds 2019-03-20  59  
a15fd609ad53a6 Linus Torvalds 2019-03-20  60  #define __trace_if_value(cond) ({			\
2bcd521a684cc9 Steven Rostedt 2008-11-21  61  	static struct ftrace_branch_data		\
e04462fb82f8dd Miguel Ojeda   2018-09-03  62  		__aligned(4)				\
33def8498fdde1 Joe Perches    2020-10-21  63  		__section("_ftrace_branch")		\
a15fd609ad53a6 Linus Torvalds 2019-03-20  64  		__if_trace = {				\
2bcd521a684cc9 Steven Rostedt 2008-11-21  65  			.func = __func__,		\
2bcd521a684cc9 Steven Rostedt 2008-11-21  66  			.file = __FILE__,		\
2bcd521a684cc9 Steven Rostedt 2008-11-21  67  			.line = __LINE__,		\
2bcd521a684cc9 Steven Rostedt 2008-11-21  68  		};					\
a15fd609ad53a6 Linus Torvalds 2019-03-20  69  	(cond) ?					\
a15fd609ad53a6 Linus Torvalds 2019-03-20 @70  		(__if_trace.miss_hit[1]++,1) :		\
a15fd609ad53a6 Linus Torvalds 2019-03-20  71  		(__if_trace.miss_hit[0]++,0);		\
a15fd609ad53a6 Linus Torvalds 2019-03-20  72  })
a15fd609ad53a6 Linus Torvalds 2019-03-20  73  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105102111.SyGVczHt-lkp%40intel.com.

--y0ulUmNC+osPPQO6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--y0ulUmNC+osPPQO6--
