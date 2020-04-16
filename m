Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBOUI4D2AKGQEHGEJM2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A00B61AB95B
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:07:39 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id k10sf699999otp.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 00:07:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587020858; cv=pass;
        d=google.com; s=arc-20160816;
        b=SJh5jcVah1P7L6D0AlblRJi+5ADI9sfekQ+oJQPi+kzp4nqIoyojgkh8/l7MlVM2o7
         85X9VgtnW5Q97I/wePgzU7/ZsQ8wdDejjJMwe4d7GObFQlk4oAXYK4+6R2MvoGRx/uoF
         Yp/ou/56xTal0dsNzXs5V0dgeuWeFiSML50AyyxuMmiut5W67fIg8jvS4YVkNxULsrAR
         cZ9PhWqkic3xjiq8dOaArUDgxMrH0WUwR+cn1YXbzLvyU6cv536SkDy06tdNIlV6Jqk9
         Be2h2IqfahSEPe7EbhkbE1UMNKfEk5ycQ3CYVGF39hhGMGyVZRW2yyFC5ZQjZDC7y0Vt
         GZjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=wcvUCs5L8xD5rYF05c4weJpzVjFBwNUCOVtKAn0Mbvo=;
        b=a3x9KLtLSUijqD/OCmQWW/4iC1OwP6heIOLeJvtKMbDsrbDNnYGCYDV2meF5cndr8U
         J0Q/7b9jrd6cwNHOYSChC1/Y74Ss/3Dx1Uk5brUVwp0yrNAMHrdrSmZYgyx4Yq8gH6u0
         GmmjkHl4Eynuq/A4g6XTnPfkIUwb7Xi+qNtzBhv1GEQCMA3tPdu/7FWyZY/4MLQPuQ7e
         2Y+wjRhKGySVwkNC9IHXWiqFVzCcqzA8UhDqjj6fBA7Ny1jmSZswTJ5qsF53G2ncNI3K
         aU3jm/22VNjim481T0mFR7sBVxRUf63IrfrQNKw+lqmUwL4INBipgrRLv4pW/c5a2E0T
         a3tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wcvUCs5L8xD5rYF05c4weJpzVjFBwNUCOVtKAn0Mbvo=;
        b=XohcWK5ZTvoEL5Q4tYTJEwNUgmjE5x/0BKL8FQD9V2jksZdep7gLzfoK40qsNk+6vH
         nEGGsZCia34ZHl461AaEizNRQB6dQNYYV2lOANRFvxuhOcUxFRoSaOEGUzdo92uZbGhn
         5UJLGCw1Xe+GZiK2ACCMPbzk2G7JE9SMKAWOgLPftX0pqzc/R7LTBv0D6zGkHFEQTMGI
         MVudqf1b7qvESf3s62ZJ1BJtKYzWbRp0CyaMmwbsK7nLiYPRYHNeBBiCmecNBEpH3Noj
         XSq3FTBK7oP5j/Vuaiyns8UYUBIiXGj6MqXDciQO1Bw0Y+ovusTSl59nH9Y0FfW1T2wv
         iXlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wcvUCs5L8xD5rYF05c4weJpzVjFBwNUCOVtKAn0Mbvo=;
        b=eeiiL/qkuBWaOqPPGO8ZO36fqYPEgTKhk5huktxOYI38ev/dpQM4R5sqD19KVglMZA
         H2vFRGe77nQeLYyg1r6ZLh5Nc07ELsgEkP8q2+WhMMFPZ52eSEVCY1GthKWTaooCwQAK
         ug+dCgDqw8Y/DNmD6Zl22fOEREp05HTryrUblVUOAL8r4b+w4+L5xTvQNcxocvJ8fLKb
         tG2YGzARL7G8/89s8+bQ/xbdVodaWEcZAKTJ/Ig52ZQa3DsSmzfXV5VGtmjqxnTKhZp7
         bJ94tbADDCxIW7uipNkc8Jn0VGqpBgdAhUVJv+1rPdIU1zYE+lNjGZGDeFmxIESSIovA
         Zakw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubCszV5cSSdZrZFB1ec5/1R9gWfENwmSij8U8CBbEMtEArG1bK3
	UhuMGOJ5FhP6hmFL/CrFtH4=
X-Google-Smtp-Source: APiQypJfGM8uH+vUJu+6TxcUOdD2RO/RFPXUJz1lcgsVHerorqxaMnSYLahpOgNGsqEMMDsojoktMA==
X-Received: by 2002:a4a:250b:: with SMTP id g11mr15882558ooa.27.1587020858434;
        Thu, 16 Apr 2020 00:07:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:2f4d:: with SMTP id p74ls42555oop.1.gmail; Thu, 16 Apr
 2020 00:07:38 -0700 (PDT)
X-Received: by 2002:a4a:3005:: with SMTP id q5mr3409725oof.53.1587020857995;
        Thu, 16 Apr 2020 00:07:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587020857; cv=none;
        d=google.com; s=arc-20160816;
        b=JL4xs5JbidO0dJvARkUk/mD/K1Wjnx8zXFVldzbFzbCzUN7eDTQS9YjTYXL9+pqjBK
         sawrkRFWANee3EX60afG9UNZmAsHsEQsN8foGPjR+fcjzFnZJ5kmaLsR3Qw/Aaavk/1V
         D+hGEyz0tdh96eGf+A42lX2hWi0i27t0zusbGXAh0zQ54BGlLKLNqpCJ51jn89ONLZuu
         Kj8g625Cayeo+gjlWKnRdSAPJ+W/wdgXmmNcTMmQfxOBz50/+QaPhIQEK68Vu+Jrnesk
         dnzniGkkv0GFqSQ0Kb2EPEL3ktbtQqefySLhIOfu3maxWcdqtPEQvCpqPXo+jZ5k3hEp
         Uh6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=6EwcT2CyP2Y2qTL0d6uExwjHg0n7Gr7FHdBM5qEg+FI=;
        b=GB3J0HZFCK3C/qO+apxZhh72amH6B2RMmcp6YmkP/UtgqD2M5g+4kU1FGCXeeg0kNl
         cbc32g1bzR6ML82kNZYuWuDAuiorLlQsYUQpkwpnV6LAMkuhENPO16L0gVwndXjG69RY
         WfNKovjtRn4m0WZI3kgLmuo+CPve77EiPpIgLPwU5aKe6x7kjJJ6l3XKBK+rbtxW50r5
         pbRfSbZzTY8vLT5fCHvkf5BaDCGrtp5LJkkL5np2obOW2kAfPwRHSHcTOZMsS/rATH6D
         oR0QZSwChFnZSlkFP2uLj0nGCjXnSZBHLnZEeJt+ItdRPfrSZCXBfE9ngK+iuNW0NoK6
         Digg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id f7si1270517oti.0.2020.04.16.00.07.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Apr 2020 00:07:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: Ad3pN2wY9pSZn/Oun8u8rwOIP4m2havVZOkcZjBbc1NNHTzLMB2Q0AcdYcBCLDoFRk3iB1YDAr
 ya8c2dpCKvLg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2020 00:07:36 -0700
IronPort-SDR: Ug6pk0r4VtQ7GJqrZWOiIN2gHIdmYfexAJdbi+8F7EpdDY2LfRMSSGYJxdqsHrJgp6U1GPJpcr
 oysBCqV2jLmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,390,1580803200"; 
   d="scan'208";a="455168920"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga006.fm.intel.com with ESMTP; 16 Apr 2020 00:07:34 -0700
Date: Thu, 16 Apr 2020 15:07:26 +0800
From: Philip Li <philip.li@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kbuild test robot <lkp@intel.com>, Dirk Mueller <dmueller@suse.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>
Subject: Re: [linux-stable-rc:linux-4.19.y 9753/9999] clang-11: error: unable
 to execute command: Segmentation fault
Message-ID: <20200416070726.GA22887@intel.com>
References: <202004161215.yWleVNqS%lkp@intel.com>
 <20200416070249.GA372946@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200416070249.GA372946@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.20 as
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

On Thu, Apr 16, 2020 at 09:02:49AM +0200, Greg Kroah-Hartman wrote:
> On Thu, Apr 16, 2020 at 12:17:18PM +0800, kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> > head:   53a9f76066d0832721801cd2fe2431facf1b8cab
> > commit: 621f2ded601546119fabccd1651b1ae29d26cd38 [9753/9999] scripts/dtc: Remove redundant YYLOC global declaration
> > config: powerpc-allyesconfig (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bee6c234ed28ae7349cb83afa322dfd8394590ee)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install powerpc cross compiling tool for clang build
> >         # apt-get install binutils-powerpc-linux-gnu
> >         git checkout 621f2ded601546119fabccd1651b1ae29d26cd38
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> >    PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace, preprocessed source, and associated run script.
> 
> Why are you reporting a clang bug report to the kernel developers?  :)
sorry for the noise, this line was wrongly interpreted as error info, and
start to bisect it. We will blacklist this, and report to clang side if
it is a valid issue.

> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416070726.GA22887%40intel.com.
