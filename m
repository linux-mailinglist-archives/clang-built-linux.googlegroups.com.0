Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBBWNDYWCAMGQERL4TR2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 007C0372B63
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 15:53:31 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id h2-20020a05622a1702b02901b9123889b0sf3585243qtk.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 06:53:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620136410; cv=pass;
        d=google.com; s=arc-20160816;
        b=woIlD850n/EXXQhj6V+mF9emWS+7gnHlVko1f3wHv4BVnNTveDPiro6oGz9IVYgh6Q
         wcohUjyxiq9DP2v1q4RR+V89T5QprdDKaKzFF9fmYsrDqrAe9mmfZ19XDFxYUAnG4+Ih
         GwP0ds5uFRPb2vBESCmle+8ph0BqFtA8IXOoi1ffc8ym0xGVcDLqZ4U5XbjBz+85lpos
         5E7a1uZaBZmjBVSrR4f8QmRAaySQeU8dJBaFlWBUP372DGv5GG29zaoVdwnhKIRTbg9+
         kh4eXVXAXmNO4g2ar8sq2PnFDn5ygPCT/iy+Vb8VCwKVc2iXt1PhnDfqwxEXpmxabg8/
         0bqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=0PuVOMsxGr7Xa8U5yk8itBOKHhv3RFVGi/P00LyQY8Q=;
        b=kpUJyaAup0dc40u2CdIYil6IVhbyiP43pub6w3JpnqpPlUGMNdJ0jOKu0oWvsV0RWY
         ALHiK7Aa7oKlJ/Y55kVbK+8ey9IqCcw+b1uNhAeaygy9Sahvl/7gt/9Om5C7jCu4XAWA
         d955Kf9IdrKk87IHNjDMhpGUdynSUKAioqXv9oRFs7UyNpgytg4CFoyhTkwrDpOC276N
         OwzqJT941gPd7LZhE83oL8JYAlQ+tqopLfhl2AM6thNCXhc76sQEj0sPMC7Qm+4CklLa
         I9iLMdHFZig6VSznUtB1bG5kk/tN1i3aLK5GoiIV4hxyBipLRfwfBa61jHCI9aneRq7u
         poAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0PuVOMsxGr7Xa8U5yk8itBOKHhv3RFVGi/P00LyQY8Q=;
        b=O+xL2HTDzIsv5R7HlGu3ZRfW3inAS7dXbDboCuefoEPQiOp798kye22sQM8EjS/iVz
         KbrlMXcF44YFyRNMAsN552a0kHAPKuCDFvSLMrBGri6JfqUUNV3J5Ihx6okeyEGpuY5U
         H4HQ/yOvPSJkKh7VLajOsdpQ9q0ZeGeyTVDAHZwQaEKZc4DaSoWtkolYgE0LoHp5uyeI
         RW9Bc1K3yy5CTSEftFLyiHkEFS0E3xXmw1uY/jshsPC0x1E+lYkVjmFv7VX7q5b7eqL5
         wRIVfTxiUwOj1GqdMBppIPVMPed8qCAjsXGe3TBXfBDuHIgp/xbmceNCugvTflzqGapp
         yw3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0PuVOMsxGr7Xa8U5yk8itBOKHhv3RFVGi/P00LyQY8Q=;
        b=qaBQhnk5a32VDnXrKmyyYb/BKVg/G0Bvrkr5NenuqK0T6rs3RjlVVOFtS996+oCN99
         iPjZADYp4T7ZPtAfHfUB26+lFD/n38KI6r0IPbAQ5PdhlVOZNmZpRn4DQMmZKKIxvcKq
         BujgtEDlCXR4TXZeSHXK4jjqPUx61ii4P5J7KO1WBtp4T9x9TnE2zX13b2VxlN5yJ2DQ
         8UukuTXk5rxFok31xJW74Cl3T5tp6hgThq3z5sB5vAoy3nHXXz43IMSFa6aK8R2mwagl
         bvgVhYa3HC0FrxaH0GrtAdfGUvEO2/Lf5RryidaXHAFIQtPC9OQBtKYAv77d8WOzyOGG
         RM3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531M5//i/rtXhZrZcwVYOcSY9/Qq+Vm5UX7lQTabG+DaoY3wWEUq
	6tOqstOCjBLC1oID6xQbMtc=
X-Google-Smtp-Source: ABdhPJwwySGT8tzL4sfSDmp8ceMOC98ynufoYpIEAdpCczv4MKlXo2tEj/uHysde0F6ImNWccgHk+A==
X-Received: by 2002:ac8:5f48:: with SMTP id y8mr22529210qta.69.1620136409978;
        Tue, 04 May 2021 06:53:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7147:: with SMTP id m68ls10373151qkc.7.gmail; Tue, 04
 May 2021 06:53:29 -0700 (PDT)
X-Received: by 2002:a37:b446:: with SMTP id d67mr18166222qkf.390.1620136409535;
        Tue, 04 May 2021 06:53:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620136409; cv=none;
        d=google.com; s=arc-20160816;
        b=g22cBu+jwHbO4ZnMgDGFJ01aRnFI41GTOpF2aJ0YOkJLMC8o/sBmLVCD5eTwD1TNxN
         QN/3fpXxOBXd3DGe5Lbi3uYG/AlVIUyvOSTIx8kYTSfduka2yCKmI/OeytdvfwakjzOw
         wFBP12LYsZChjTGpf9xG2nJz7hkiJ0caAISzx4kO6RTSH/4YdUdKi662YnPSRukhNB3k
         vtXFrf2FwA8g4k+gmI8tZRqwHWc6llNY6hLV/TSJTCZGNgVJwVzQB8GskXmmT7xWoaVb
         pqLXpf25iDI86yBdcISSOkYeIr22soMcr84DFDqdffK2iKE1q3ITgjriCn/iB8oBmJkz
         6l9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=DiNFGjJ0ej4k4TeKPUenjTjlJPoPJpSUS4FW7dNB2QE=;
        b=uYvo5cVMzJkLs1x2+2KWD5c1kBT5RDT95qJ+IXqSJJAiFbYV5QiGeUqhR9MQ0GLg9r
         mBgAQUkxAYTjtXzOWNAzxhorOUXTOSJ4lWuJMwBQjQ7DmKE3DjlD81PFRsTkKJIwBN5O
         IetPIDclKFBRU9SiplJa/ylQxUhXxKrTSrVtyOMHo0sEWoh6z4/NkSK4jNBU9hnA/md6
         /OmbfgLeW7PuC/2sQ9FITCCFQPCpe4n5kgKQVM56mlNsOuu+Lbh14phzQcw9bzjK4KS2
         +xQKjRKkTWf97W8ntCG2y8G0YYYOxSXmrO2oM20ci4Z8jttKO9EEA6zwLTqWeP5hVjea
         5fYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id q12si412176qtl.3.2021.05.04.06.53.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 06:53:29 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: GmGTG3tUIeF0UE3As7iHf/AnOkhBp/b5E+INPkzJlpyzEWDh1px2glTi90fdiW2fL5Nh463rcJ
 WN8tmVGBtOlQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="194844596"
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; 
   d="scan'208";a="194844596"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2021 06:53:27 -0700
IronPort-SDR: 9IBzdtR05XNcA+WaFIt/dtBkcayAdn9/W4aqRzZ0upjmBbxoSR5geYnQn4XbjQdJDLxSX3MKNW
 cQ0UH5ZyOBrQ==
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; 
   d="scan'208";a="427779311"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2021 06:53:24 -0700
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1ldvUH-009YPd-II; Tue, 04 May 2021 16:53:21 +0300
Date: Tue, 4 May 2021 16:53:21 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: kernel test robot <lkp@intel.com>
Cc: "J. Bruce Fields" <bfields@redhat.com>, linux-kernel@vger.kernel.org,
	linux-nfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Chuck Lever <chuck.lever@oracle.com>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [PATCH v2 12/14] seq_file: Replace seq_escape() with inliner
Message-ID: <YJFR0atvema45xQs@smile.fi.intel.com>
References: <20210504102648.88057-13-andriy.shevchenko@linux.intel.com>
 <202105042134.dgC8x5iF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202105042134.dgC8x5iF-lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 192.55.52.93 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
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

On Tue, May 04, 2021 at 09:17:35PM +0800, kernel test robot wrote:
> Hi Andy,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on linux/master]
> [also build test WARNING on linus/master v5.12 next-20210504]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Andy-Shevchenko/lib-string_helpers-get-rid-of-ugly-_escape_mem_ascii/20210504-182828
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 1fe5501ba1abf2b7e78295df73675423bd6899a0
> config: s390-randconfig-r033-20210504 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # https://github.com/0day-ci/linux/commit/047508aa8c09cb58cf304e9025283021731b3921
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Andy-Shevchenko/lib-string_helpers-get-rid-of-ugly-_escape_mem_ascii/20210504-182828
>         git checkout 047508aa8c09cb58cf304e9025283021731b3921
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=s390 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/tty/vt/selection.c:36:9: warning: 'isspace' macro redefined [-Wmacro-redefined]
>    #define isspace(c)      ((c) == ' ')

Nice!
Also for the rest of redefinitions...

I'll prepare fixes.

-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJFR0atvema45xQs%40smile.fi.intel.com.
