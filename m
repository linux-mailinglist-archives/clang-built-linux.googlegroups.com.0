Return-Path: <clang-built-linux+bncBAABBUUKQL5QKGQEPI5OJXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 0524426A1C0
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 11:11:48 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id z4sf1629812pgv.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 02:11:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600161106; cv=pass;
        d=google.com; s=arc-20160816;
        b=UJ0v9bSs+tw9o9gn6YhFej+pasjvP1PJRBrGSeyythCA9boxWTw8Hh8WRsR6KT+Hi9
         M0BHoYtLg5fjGy6f48CUONTuF/306CJ4YgDhIyQ0Ev3lHA0zDArQAZT0ZfloQq1aLFsR
         iJSHQHd17s23X0Nb9e8gMbsbYmxrr/V1L10S9HDiagzuNp0h30C4PcOmZQc5t2WFiMWq
         pVFyDAxNzy8ZNvbR3i8AZAemfdxtDTMLY9o2lKyKiyEZsa1Avza2RV47b767Y8nl9XIZ
         YYIA+wDJYEDvStJXZK5bNRmiZlM9i2bDu4D6eAFZ0rhCm43t8botV7NPqz0VIomjouTo
         SS4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=/SG780XuTaU0qyaQKp4jNkPu+MOUiz/SBlZ5gG00LcE=;
        b=mkqp39RIQUk7HNHIKhMnkVxUm77/U88xPcSuJECawLGh14qYLJiE2vw54SgIus+6+6
         YbfhMfEGw/3XyZUYjHWhyp3a0tJg5D9PzP4wkUabqkqFs6S40yjLB31eZky/4t4y4jVm
         v60Yn1+VlyroCL85DDVrAjcVwrzilm/ZfBlcvrRKEvVQEXW0xC0fb+QfchOLwnH5ASYE
         FyUdYAxGc7+FyqNmlgfLSy8FKnWNVuKm9uYYpVEy2hGMQuzVQkt06vQh7iCk/7yk3ms+
         Kf20XTpiwSuzpSm7Vxr8vPH+GOqE9vRlvb9kFDLIwj9QI+sLiawwjAQt6aIw4gZT26mX
         xgYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/SG780XuTaU0qyaQKp4jNkPu+MOUiz/SBlZ5gG00LcE=;
        b=qtXintRFgQJV7ERdFYUMUxdaVT07MFZmKqZFd642OQHJbnFlbPmhuDaFQgLKpi8MFv
         TsrLDVfRy1T1mUp3/1V6bcv+nzRUWizu3ZiIXZw3k33OxVBY+VVgO4BMKT51ptN5RB9c
         irwwaf5iDH0gnxi9156aTl2NddaU+qpOVb4+KdHVDPCPlmIyD2fAPSWITbpQ7r5TCHD2
         D7Dc8wNMzYxVb8hbiBOUJdM2DQ7pRVahWZCfVN4ILYz49aykI/FAP1DPGH+vWXvaEDqN
         AaA3GXR62l3eskW8THcZ7NAuAeuh6j8WR6vxdiLJO9icUe+oEK5hgIqdzCPH4zWkST9C
         xkSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/SG780XuTaU0qyaQKp4jNkPu+MOUiz/SBlZ5gG00LcE=;
        b=hnTGMyzkbgzvAqY28favwcC/lr60VRD3neiJD9ZEdv7UoS/10bT9EX8bztbOavJSmR
         cBj+5Vl2j8QITNfl1mTy2rU0smhPzuFm9O9YpwXQGrvSMN6FAYc8czuRMlmCnQogjeFh
         M5UmVXq6dZFbOVzFhMw66SQl6VnAtck7F+l8cpx22j8HskmXmUaV5ZL76sUF5Tnjp0Qy
         Nxws6JoYA9rIT9pl5ugJjErZbmOnWcHAGpbH9T/6rkj3E85GEYugtJE71rXdIw7Nutff
         4EP4LGm6yTh5pZrl9UZ5BXYuqMZGuiaIHak5s2UiJ+VwCV+pQTF3aT2kCJ00PxAJ0kRR
         BJXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tbHNE3scyQINPjLAuW56X1/hQZrIbptK7HSTfimhSPxlyTFN+
	p/1lH64tijB7gT59o5EToWw=
X-Google-Smtp-Source: ABdhPJxC20UFDfYSM/jj7AwfM8H5IgUtzq1W8IQyX+Xnu/3HKi4YdUqyFhCJh6wCTwBTgcfE8sdPeg==
X-Received: by 2002:a17:902:b107:b029:d1:e5e7:be6b with SMTP id q7-20020a170902b107b02900d1e5e7be6bmr850962plr.69.1600161106418;
        Tue, 15 Sep 2020 02:11:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7612:: with SMTP id k18ls6345766pll.8.gmail; Tue, 15
 Sep 2020 02:11:46 -0700 (PDT)
X-Received: by 2002:a17:90b:188d:: with SMTP id mn13mr3314850pjb.66.1600161105953;
        Tue, 15 Sep 2020 02:11:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600161105; cv=none;
        d=google.com; s=arc-20160816;
        b=waOiZ9kWM7jrz2KII6U9Z5zy3zs04QzpmFCkUlnWQYbZaJi//HW9gWf27mOmn5UaLQ
         UaVvLnYg4TSC2oWHVWAXUK9wMkFD/NKAy7vKge6wTMK4Tj+dc0Gs6LdNEOL4tl/xsAm/
         sBIKJxq326aK9MzYsxUmfzDuVjm1aQWfUTILGDp+LxB5MVKj3r4AEdIdOF8AjJGs5KDS
         1BUaxVCz3daQEskxla8cfI11dt7/FGZ3H8Q+iXxXaHincmPqOHVYfO550tP/JDkpmRn9
         8mSATn0mfeWrHog/rBMBUN2J36wD7XkPWvC2KXVsJB/AMJYXQUBgyamMCuExQU/s3RzU
         UGLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=e+9GXhZntdeClJtjt/OYZbtR66ZlSEtDkCyGDmAS+jM=;
        b=eLwQUzpXTL264vKahBZ/t6rklkjLeEgXEePG/NKNZhzMIG3nVM/5b2ldylyvglVtdA
         m2o2AM1jyr2RXHqCZrcdNyep6cfrzdqwPsGCU3lDnfKDbWoTb/22f5kKLlsWBiZyBOMA
         BC9JU/F9Bgn3eLGi/xjq93M7uWivIXMYaDhWCF0/xUY6buEnFpzpVfUMemEumhcOnHLI
         xYwiJMdTz00amLKZ355hPWd4vougBUGkxx1LYSDq9S+xAzVn60rgWNEPyx3Q2yCZ3HfA
         +BNzOSZb/06K+D8bYhImHmKWq7Pq8/lyZtJLVwpkIIut0kJuiJxZAqAo+MBsamuIqtPc
         nnjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id mm16si1016370pjb.2.2020.09.15.02.11.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 02:11:45 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: JAKofLzRacoEh6SS/ps33hwVbAUYa27wyqYzTfRiCTpQFJMk6VlaE8Fpz6yZrUkfqckwxMg6Sz
 oMY6s2sKMKvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="139236147"
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; 
   d="scan'208";a="139236147"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2020 02:11:45 -0700
IronPort-SDR: eg0hSxc3c9ubKGopyNsAshyS4dBktDHEOKFMCGJlheSmAD3eTTNPXb/sfjCbT7HlVgo+Vi+rRN
 89DbMHIhQbRw==
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; 
   d="scan'208";a="507470635"
Received: from blank-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.62.208])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2020 02:11:42 -0700
Date: Tue, 15 Sep 2020 12:11:40 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: kernel test robot <lkp@intel.com>, linux-integrity@vger.kernel.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Mimi Zohar <zohar@linux.ibm.com>,
	David Woodhouse <dwmw2@infradead.org>, keyrings@vger.kernel.org,
	David Howells <dhowells@redhat.com>
Subject: Re: [PATCH v11 4/5] security: keys: trusted: use ASN.1 TPM2 key
 format for the blobs
Message-ID: <20200915091140.GC3612@linux.intel.com>
References: <20200912172643.9063-5-James.Bottomley@HansenPartnership.com>
 <202009131413.8dt8QEc8%lkp@intel.com>
 <1600016571.7833.9.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1600016571.7833.9.camel@HansenPartnership.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: jarkko.sakkinen@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com
 designates 192.55.52.151 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Sun, Sep 13, 2020 at 10:02:51AM -0700, James Bottomley wrote:
> On Sun, 2020-09-13 at 14:26 +0800, kernel test robot wrote:
> > Hi James,
> > 
> > I love your patch! Yet something to improve:
> > 
> > [auto build test ERROR on integrity/next-integrity]
> > [also build test ERROR on linus/master v5.9-rc4 next-20200911]
> > [cannot apply to security/next-testing dhowells-fs/fscache-next]
> > [If your patch is applied to the wrong git tree, kindly drop us a
> > note.
> > And when submitting patch, we suggest to use '--base' as documented
> > in
> > https://git-scm.com/docs/git-format-patch]
> > 
> > url:    https://github.com/0day-ci/linux/commits/James-Bottomley/TPM-
> > 2-0-trusted-key-rework/20200913-013201
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/zohar/linux-i
> > ntegrity.git next-integrity
> > config: arm-randconfig-r013-20200913 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> > 3170d54842655d6d936aae32b7d0bc92fce7f22e)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master
> > /sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm cross compiling tool for clang build
> >         # apt-get install binutils-arm-linux-gnueabi
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> > ARCH=arm 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> > > > security/keys/trusted-keys/trusted_tpm2.c:19:10: fatal error:
> > > > 'tpm2key.asn1.h' file not found
> > 
> >    #include "tpm2key.asn1.h"
> >             ^~~~~~~~~~~~~~~~
> >    1 error generated.
> 
> Do you have the actual build log for this?  On x86 the build process
> builds any precursors first, which is the tpm2key.asn1.o, which
> generates that header file, so we see:
> 
>   ASN.1   security/keys/trusted-keys/tpm2key.asn1.[ch]
>   CC [M]  security/keys/trusted-keys/trusted_tpm2.o
>   CC [M]  security/keys/trusted-keys/tpm2-policy.o
>   CC [M]  security/keys/trusted-keys/tpm2key.asn1.o
>   LD [M]  security/keys/trusted-keys/trusted.o
> 
> Is ARM doing a lazier version of that?  In which case the fix might be
> to move trusted_tpm2.o to after tpm2key.asn1.o in the Makefile, this
> line:
> 
> trusted-y += trusted_tpm2.o tpm2key.asn1.o
> 
> James

You can try to reproduce the arm build with BuildRoot. That's what I
usually do when bumping something like this with arm.

/Jarkko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915091140.GC3612%40linux.intel.com.
