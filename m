Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBCP33L5QKGQEXZWANEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C4B280D1E
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 07:41:30 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id y76sf340742pfb.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 22:41:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601617289; cv=pass;
        d=google.com; s=arc-20160816;
        b=MhwzqbsNmaYvc/BpsTUq9oE/E1y0x1fvR0tXb7CbQckt0+BkixzNuGs9PZtAbAof3y
         1/0N3Um2RIEfhSN/fviLk1vI58XeWBxpznWmyiPEBG/W9UzkGFyskjfYDcOFLXm3f8ZN
         8ZOqwG04fd7eH20/JpHcVwQwKrQ+buEQbIhU2HVNGbHWXyozQpF9uaOWcFenD3iqtwlA
         Aan6Gz4c54m4JAZoP/yJJWQNFehEBNox3FI7Y2hZEX/lwO3B1pvqCl8KoJdOcBexABl2
         wTgCEG/bmXCxvwD+Q4wyiu7XwFYFU5mVz+OJqHRwqQiFT8OevlmvTlRzHeOONnQznQ4G
         uS5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=fjHkNvsU/Y9KH3HYherTOt1T9UBtp6OV8ytFKym4dvc=;
        b=URYuhKOlcyRviyo876kt2xEc7cI7eBED8HTvmu417d+0UkRMGT0qmi3lzdaS7F31vm
         Z887lApF1Gp0C91AJvW4EzeuN3FoxTleDMdRh7vkmK071fAwwstaJ3wFUUPdGiDOAl9A
         67xRWFrFQSQn8vKheHqzL81vj5+D8gywMsEAcRUxM69B4UVw+q+f3i+xI3v6JCiFHbuU
         IPJl98aBqqn3WUfDvmq5RsHyBYgySlKR0OBeLs+DRqy14WB5SRWlBXwuqliiJ/h78mZi
         PQYMHcPrqqpHefQKMgMMfIhLNMF19gR3D0bYa2usFdPWVweSYeWb54luGbY26f7gYCBX
         VUfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fjHkNvsU/Y9KH3HYherTOt1T9UBtp6OV8ytFKym4dvc=;
        b=EQFwltYAXtFO+rAVxLJ1FCpneCXcymH6x0GnCI57nm4TmfeJV8u0W61PNwgE9tqvmd
         se7LLsHSHcYIOddBswDOF/IJMqtIxRbJGqSVhSKe7rQokmJi3EQ1ZMVdbnkVeMecuKw4
         rwIX2NaeiL2tf7VA6cL/2qNxOst5B/pQtlxH8LIQnWgmj6QUfjgsobP7I+cLXN5p/Vrd
         NA6FqXptzB8MxfBdndsBHrSkGIKH1iKXQPdkHW5k9Wk+fnIOicKUqjPZBaqcu6kvzU7l
         fiaxoyYbQUwLa+36AVBs6iCD+2flFdDaceNsCLCwjKQ5JqqA8hMDBJyoA6vJc6Y9HiDR
         M/Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fjHkNvsU/Y9KH3HYherTOt1T9UBtp6OV8ytFKym4dvc=;
        b=CX5Y1lsUWIWvu29bmPEfrBCubeIn9gl2d5tNzMy19FhuGCGds4txgw++R3E0pmg6LW
         ccOo+x1elC3sYftohGI5v8eqSSpLoGNN5RHEdbTd+AF24tJoq+hsZHWxObc5ov8HRumT
         UbgWGQGtlU3AzTfCN4ac1apXNmRv9qtdYE2ndMeeJRtXpoaP97tJhRKaTgxUEZWtzAu3
         EUb/dcGjFOEMlJQKBI7yoNu66ZhcZiDWk0H0KQGvd68QtWcDFv+3p0L6Tv5Hitp1Xqsb
         0SgtP77xoT9kUQ8mDJQcUqqrYHxLndk2WvzkE48q6p4e304iZPMY/bt2wekeFjdoB/OM
         EvIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JTmFKrS30uP1Vzufm685kNetNgy11ttHRds2ZXEOOThsldxjg
	JnOXRt94eNz1e27vpu0zG+w=
X-Google-Smtp-Source: ABdhPJy6Vqad4KwqQUPBhfW0etkw6oYEASVfmgl8n7UFlwJXJMnypQniUaZsCwfegqPmX9VIr5jJNQ==
X-Received: by 2002:a62:503:0:b029:13e:d13d:a0f9 with SMTP id 3-20020a6205030000b029013ed13da0f9mr835563pff.21.1601617289416;
        Thu, 01 Oct 2020 22:41:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:480c:: with SMTP id a12ls359990pjh.3.gmail; Thu, 01
 Oct 2020 22:41:28 -0700 (PDT)
X-Received: by 2002:a17:90a:c381:: with SMTP id h1mr980738pjt.225.1601617288757;
        Thu, 01 Oct 2020 22:41:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601617288; cv=none;
        d=google.com; s=arc-20160816;
        b=Fn/LdpkypPjirjjP++x9p8NyhcGFgvVqedfIQ3efnlfhTJhsm/mqAH7VxiXo5ynvuR
         MrKan9nYBPh/XvFaPFm9uvFqwTrTqR8lLRA5r0y2qfOpzIMo2hBG3FHGEfixoVd20H5f
         ZS2sYyz43QnfRITu3QY4deCkVHH2y6Znlf+HCgPUMnCWDPLW4d3nMdj2IGCc9EHvc/+u
         WZR/zjGJmVmUphVAEv1rgVfRFFbtF4jEE28QCkaBO1RKRgmhWjGINfJTdNpJPNSy7zbx
         ya/9zUiZ2c0tOTw85//V2S3D+2RlumpR1MB6KTxGlUb26stkLTvQHtvnwKmZJo30w+4P
         W+6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=7jcW37fd3MbUCVIeB+Dzk099SjQNZULKRxh9BGLpmGU=;
        b=qY6E7jtmsHkobg8UPrvk4VDkmvARE0vYac704ixNoFLmNKjdzGIUudAwAro4OEqYCu
         mlR9wgUyiVoSqREeaTACWeNHZcpFSIljMVmxJn2UMGwE9EzUtihbgaNfS8qAYp4nwX3c
         yZcCIpsukLthQKXclj0bZe3surasaM55P9v+WvjCz4w5ZU4xoLKkSAhfmBqYEKq/SzWW
         qynT+tFv+3X7Uff9qrxcTs+daUuYnXo4r/nhYGyJqVaV9E7pyuzCM4hLzJ8G69aMNFa4
         bgTsfbO1DzwPQJX6lY7FitdrqT1xoYsx2HWqZFrFbAd4k+FgORGzSsXhchYxFaNtJS4D
         PCvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id bk9si31919pjb.1.2020.10.01.22.41.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 22:41:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: qjzDtodP/usL4iiGRL9ZzlZM30WszM2C+J73hHuq9TdXF7yGLnXhzXU6IU+m90mrfcCBZ55Ybc
 JgycfEfrwUdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="160323155"
X-IronPort-AV: E=Sophos;i="5.77,326,1596524400"; 
   d="scan'208";a="160323155"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2020 22:41:28 -0700
IronPort-SDR: x3BqFq5tuciMpSf6ibq/IJBhv+tZQnf2I0SgcWAgZt0LQKMkMf3OYoJwDA9cFJRkKY9Wqu8a6a
 VRyfiBxHJd3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,326,1596524400"; 
   d="scan'208";a="325706221"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga002.jf.intel.com with ESMTP; 01 Oct 2020 22:41:26 -0700
Date: Fri, 2 Oct 2020 13:38:10 +0800
From: Philip Li <philip.li@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kernel test robot <lkp@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [linux-next:master 12268/12330] ld.lld: warning:
 drivers/built-in.a(hwtracing/coresight/coresight-core.o):(.ARM.extab) is
 being placed in '.ARM.extab'
Message-ID: <20201002053809.GC30771@intel.com>
References: <202010011618.NJOZzKqU-lkp@intel.com>
 <20201001171259.GA2468854@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201001171259.GA2468854@ubuntu-m3-large-x86>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.120 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Thu, Oct 01, 2020 at 10:12:59AM -0700, Nathan Chancellor wrote:
> On Thu, Oct 01, 2020 at 04:00:25PM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   de69ee6df1cfbf3c67787d8504fd21b59da39572
> > commit: ad32dae3950bd32340f4b7c9ee05f0633d9e8e32 [12268/12330] Merge remote-tracking branch 'char-misc/char-misc-next' into master
> > config: arm-randconfig-r011-20200930 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bcd05599d0e53977a963799d6ee4f6e0bc21331b)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm cross compiling tool for clang build
> >         # apt-get install binutils-arm-linux-gnueabi
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ad32dae3950bd32340f4b7c9ee05f0633d9e8e32
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout ad32dae3950bd32340f4b7c9ee05f0633d9e8e32
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> >    ld.lld: warning: drivers/built-in.a(crypto/ccree/cc_hash.o):(.ARM.extab) is being placed in '.ARM.extab'
> >    ld.lld: warning: drivers/built-in.a(crypto/ccree/cc_aead.o):(.ARM.extab) is being placed in '.ARM.extab'
> >    ld.lld: warning: drivers/built-in.a(crypto/ccree/cc_sram_mgr.o):(.ARM.extab) is being placed in '.ARM.extab'
> 
> Should be fixed with
> https://lore.kernel.org/r/20200928224854.3224862-1-natechancellor@gmail.com/,
> obviously not caused by anything in that merge. Still waiting for review
thanks, we will look into this to avoid false positive.

> and acceptance.
let me disable this warning for a while to reduce duplicated (and wrong bad commit)
reports.

> 
> Cheers,
> Nathan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201002053809.GC30771%40intel.com.
