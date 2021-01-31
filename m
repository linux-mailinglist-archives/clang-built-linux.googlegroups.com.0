Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBN7G3CAAMGQEQO2W5NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C92309A37
	for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 05:34:01 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id u1sf6954418ooi.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 20:34:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612067640; cv=pass;
        d=google.com; s=arc-20160816;
        b=LbDc1hcA88hdNXAPo1EM2TQWR/6jGPuzOAe+X01TwaPBNCK4PgYLbgq9DrQxRaeA+z
         kPyxLR/WSX3vm75GXRsRXw5kKIKJ+nPVskPlxlO7ncyyV2snJnZT5v2JZEih/RXbF80s
         fADy4kwa/BpYGeuweGzZEgFjSZXR4s2N1luX6G1KuNP/hMQN41j6RwcOZcnfzZvZrhxb
         pbTO9rdY8PosFuOB9wHbgMfC1bUhH1QWeNVmKoDUeT/yjUU0Y+H3eoNCibz6vzdCfwOU
         Ven5nmLsMe5uHZQ5hd8XwyYVrr7CZ/30ZjU1H6gQfuCZBflwzHRcaWnWjLnN9pHFi7HE
         6wTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=zXcsVnkxNG8FXgfDZWjkX0iyHTFDUVoUbw8xdoXitiQ=;
        b=TVHAAfw+65q6BjkYARvi6Kibawwz5Gbq0UuX8dgecMtzLhIg7eU/MEeJMqC6+bgdF8
         OhUKyOrCAaOebRF4W1yGn0DyHMyCt0UW16xyG1m3B0OEbzMgP7iTd4C67gKUhw1hwkH8
         Hkgmt/dJnm93VPgTqPa08kXdPps+ocCyizpLKIxhV5+SDMSFPSI0qvNMOTPFnayaxI0I
         AiwtSRjZlqWUq4GPpnpHMUXvGCsRkFLOmhZeyA2eMAdZ9Bhnc+1E3sMZFDWR8kQbEh2B
         ZIemD3qQT0oyi1jt6yK//CwxUhzhWrFkbkt3/oAnMo3wFhPiWdBwjklyL44uuG1gzRr4
         Nx+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zXcsVnkxNG8FXgfDZWjkX0iyHTFDUVoUbw8xdoXitiQ=;
        b=aBIbRSrPvWNGFTijBKC0CA78ezkpB7JKr3h+SKyXb8p8ljxIQYg7WFHMq2pjvKUVvg
         cZSVV9X2LhN4yFTziYqlzII8FkFpvuls7Wx54nw8ySTHD+Ar5CKi46tdGHGI9Lef+sT3
         4MjJs75OgpKQPWJPZhLqWI/nOUQJeEcVabhXhUrWiDZKC0Tea9Lem7sFlkufmHDw7bDo
         rnCucN07lsJW3pTUP0WmemT2U6CyyOEYA2VMrI+nPyHW1GIFGb10x1PYH4QZmhAARg3e
         lyMoTRXRGZR30MONExn7308OoUmD2efhtHnBS5FxgNfb3zU4Q4ebsN7LFJRDLryxTuQ8
         fgpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zXcsVnkxNG8FXgfDZWjkX0iyHTFDUVoUbw8xdoXitiQ=;
        b=Yb28uGBKlIiTt8zitk/C2KojcXFq6y79RFZIkj8EIME7oba7BbKyBCDkDVmyl881D8
         uJdYZB8v9nNGnFOfBfuErdKKoVm+arMHNSmIPtIDtQjAG+LHxQM0TnDA2tN0gvKz7x9/
         Rxv8ghelq/l8k7A+a1uBgoAWQbNS5s5x42wMHawG4ES/CQHRsx0dyeVJkpe+8G4qRqGP
         GzcS8Mu6Ygz467xGOkkS9KZs6eIjOaiTmFrmD5fazkPt1hQlxmNjl5sGBCPi9+P1x0dI
         rNiCwYzR7tLiNGoZtzmHDglHhWLtNp80nCInc+q+vYtkaYOoUS18HJ6FvbW+V725RrZv
         R9fA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329Gbgv9KBYTs1GwVquqW04TlMkzo9XaODTdUjb0PlS4P0hZR6R
	XKi1J/9q3HmiSuN2QWzUksA=
X-Google-Smtp-Source: ABdhPJzWlUjJFrIOHrFQQJarn3G3USWt5UWpBqlAEF6CG9Myr/f6e473Pb+SzO1fMxlHdjqaah2jxw==
X-Received: by 2002:a4a:7353:: with SMTP id e19mr7889287oof.55.1612067639885;
        Sat, 30 Jan 2021 20:33:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e31:: with SMTP id t17ls1301821otr.3.gmail; Sat,
 30 Jan 2021 20:33:59 -0800 (PST)
X-Received: by 2002:a9d:64c3:: with SMTP id n3mr7781239otl.188.1612067639476;
        Sat, 30 Jan 2021 20:33:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612067639; cv=none;
        d=google.com; s=arc-20160816;
        b=1JtSsuc5dUC89HesNHLH4cxeWYSDvwL7PT/TJh2fMn7b1E6k1QgQNy8bZNh+s2b9Cw
         CUsEceKuvk21E4AnoEcYIovCeiUPoHFzmVJADbQwM8B6zU2yD/CoWtZQ/sLIrpchQBFg
         hkuwcBCu9J3rfmaNP91B9DvKweTPjf4ug5Daofc/FUiiapZ+w7kgPuHxoT2CWy/ZYhQk
         vdrg8HY4bUCzTc1cwUoZi2k2+d/nWMBYEh7q550iZkpGgwVyNxK42kYpizfIq3BiZ6Jk
         txRpxwuJbE296iB9TzSJjJ7QQGfoy5kkhLEnRBswIHNiMJSntShbBdKliu7eKap1xGSH
         edMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=A23ZHh07SAeNBQ0uE1rcBTcjWz0FN0lpfgQyvxxXI40=;
        b=a2TJHUn88Z1cGzK8bX10JP6676byVVuSQ8wqoNbE/bxY8dfaF96XR38bQwgBN6DlNG
         5MtNRLUoxPw6MYLm1nKfkgvfjNnyy0ugkOcklDxHnf9u4JBrWFFiMQ+zylrCoGGlOrnp
         8UOXFI0gSMS1Abj4mYXeZ/80x0H8q0OWmKhcQmZ7nLUYftwvuLBNCQka6jTLkO6/oUCP
         ajVKXzL6gujKeV03zPxoD5tV6t0ZoqOjNKVotA+4CUmcVTBSVglXZoGlsa5iBYaPN1YE
         yVlhuPiDm5+VaEYdLMGmHRdFTEakvVjgE2/v2mf6t//Vxvz7NkiX7fq/yuEWfSOuGASr
         xdXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id t22si761913otr.0.2021.01.30.20.33.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Jan 2021 20:33:59 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: FTq9UX55DXFDhVX+5ABWLyH4EZGt0EyE37odpGG3Y47j6+GhHci1t8e4QsQu41jqT3TsQBqd/q
 mbLhYTbL3gcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9880"; a="265396790"
X-IronPort-AV: E=Sophos;i="5.79,389,1602572400"; 
   d="scan'208";a="265396790"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jan 2021 20:33:57 -0800
IronPort-SDR: pRsduZCTxNPPIgDiufhGUBs6PnH7axeCNYlKXQMyGOAFOlfF22pp/n5MlwFd3T6S6WXvpH9Aju
 Ivw9u0Ztqn9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,389,1602572400"; 
   d="scan'208";a="431670098"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga001.jf.intel.com with ESMTP; 30 Jan 2021 20:33:55 -0800
Date: Sun, 31 Jan 2021 12:28:19 +0800
From: Philip Li <philip.li@intel.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] Re: aarch64-linux-gnu-ld: warning: orphan section
 `.eh_frame' from `security/keys/trusted-keys/tpm2key.asn1.o' being placed in
 section `.eh_frame'
Message-ID: <20210131042819.GA28302@intel.com>
References: <202101292235.TSfb52uc-lkp@intel.com>
 <aa8e8553c1e94e2b2225aa66557f6a49886b0203.camel@HansenPartnership.com>
 <20210129173934.GA2433246@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210129173934.GA2433246@localhost>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.43 as
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

On Fri, Jan 29, 2021 at 10:39:34AM -0700, Nathan Chancellor wrote:
> On Fri, Jan 29, 2021 at 09:20:52AM -0800, James Bottomley wrote:
> > On Fri, 2021-01-29 at 22:27 +0800, kernel test robot wrote:
> > > tree:   
> > > https://github.com/0day-ci/linux/commits/UPDATE-20210129-183238/James-Bottomley/TPM-2-0-trusted-key-rework/20210129-175906
> > > head:   d98ce41d6c32fa78e380385c6e146f752e4d3809
> > > commit: af175fe469c6f0bdd1e14a14a3d107e7adb122bb security: keys:
> > > trusted: use ASN.1 TPM2 key format for the blobs
> > > date:   4 hours ago
> > > config: arm64-randconfig-r023-20210129 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project
> > > 275c6af7d7f1ed63a03d05b4484413e447133269)
> > > reproduce (this is a W=1 build):
> > >         wget 
> > > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > > -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install arm64 cross compiling tool for clang build
> > >         # apt-get install binutils-aarch64-linux-gnu
> > >         # 
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=af175fe469c6f0bdd1e14a14a3d107e7adb122bb
> > >         git remote add linux-review 
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > >         git fetch --no-tags linux-review UPDATE-20210129-
> > > 183238/James-Bottomley/TPM-2-0-trusted-key-rework/20210129-175906
> > >         git checkout af175fe469c6f0bdd1e14a14a3d107e7adb122bb
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> > > ARCH=arm64 
> > > 
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > 
> > > All warnings (new ones prefixed by >>):
> > > 
> > >    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > `fs/dlm/rcom.o' being placed in section `.eh_frame'
> > 
> > What's the problem here?  the file you're complaining about is pure
> > machine generated so I can't alter its .c anyway and this looks like
> > some type of linker problem anyway.
> > 
> > Let's start with what does the error actually mean?
> 
> Unfortunately, this is a clang bug:
> https://github.com/ClangBuiltLinux/linux/issues/1069
> 
> $ curl -LSs https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/message/OWC2ZF3C6UTA6ND74UJVSJ4BRRKFGJKC/attachment/2/config.gz | gzip -d | rg "GCOV"
> # GCOV-based kernel profiling
> CONFIG_GCOV_KERNEL=y
> CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
> CONFIG_GCOV_PROFILE_ALL=y
> # end of GCOV-based kernel profiling
> 
> I will try to send out that workaround today so that we stop pinging
> developers about it (and it would be nice if the 0day folks could just
> send warnings of this nature to our mailing list only).
Got it Nathan, we will send this warning to clang mailing list only.

> 
> Cheers,
> Nathan
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210131042819.GA28302%40intel.com.
