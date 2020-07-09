Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBL6ITH4AKGQEYN3RBNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B3F219509
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jul 2020 02:26:25 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id z16sf451575pgh.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jul 2020 17:26:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594254384; cv=pass;
        d=google.com; s=arc-20160816;
        b=UWyyNbKaG+YjFCw+tVKRCJYwqUTGkpglSuRTSj9H/pWtRtUCrqSEp4VEPIpyPyy2MK
         SKxNZnJRqALXUTHymgvpWBGBPWcEBV2Hbjdv26mrvQiwEb5tu4gdHK6nRRMEDxUQIVRz
         HzNnb2vv9vXHKA3Zg7JMXZPZCeR7yw84CQmOxR32ImJAPoCfFvKMo42PEuyw5aiaR+PE
         lgK//qoaVRMGu63W2tjR/HFBStA/GqtZy5DUlGvNXePLCTNF8Kz0DDt4W6Z0BaFgV+/Z
         bXEmYKTTMyCzAzLRebC0E6IyvsDQ6xYd4EoDZVtc7Ck2eWcjGa6JD/Or/bUWeKmwBnIG
         bOhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=WtqfG6OJCZd2oFtIk3wh3XL94EZHCp8seSioLp4Nk4k=;
        b=eOeIIXVig1CS/7XylAQCDSxurFa4BKCevsLuBohbatbpA8w29vsoyrVeMgQSLK285y
         RnQnG6vT89RWG3ciwqO6FiblP5CXaFbUM2md6gZBacmA7PUcJ2nD4QfwGGY4OZ+TNzJ2
         ruoJsUge8i716yYA4VPkIWhUllDdf32ssfLCMDCvuoxl18Z8/uDKAR0rHJ9oC7c5Dxoz
         A0r9a77HTT4fnuvQGObzVQHF1+E1nFuzQPYOMvYqmoW886Q+PKimYek8jpEcChC+v17n
         7l32CTflSng+V8Bp6Xs7rTIBhpM+0aZEK1do706oKFF9wu4154Do8cI0Q8iu4/yI8FQq
         ykCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WtqfG6OJCZd2oFtIk3wh3XL94EZHCp8seSioLp4Nk4k=;
        b=OXPMyLxYBxiJoAzfAnGUu2SBXDocoLLVUvLKwJz2Vh8xBsXzqPWif+kFlk5GW+dT91
         CNHv23rMZ/aV5qZLtI4BliYjmBDXaEc6CF13XSonX8YgDuuP0VADn2bcT64VL7KDS6OC
         IAZjk/ViGLH5TsCY7DzHEEfB+EF0pwzT2zuCMhGiKySx4lUhzh63Y1/KdsBhI8WNcDTc
         QcEaKMuyubgVsrGuT5HXS5Xo6xUdECIhclMIvDg719/ueftQBnM3jCbFS1buy+V0DZLC
         igxp2pdqhL6Cv4YZLsMNJKDgD4Z7CHiSYqp4253zM97g+jCNHPqNpu5d95oBuxtXP7Wh
         7i+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WtqfG6OJCZd2oFtIk3wh3XL94EZHCp8seSioLp4Nk4k=;
        b=gnCjOOLMvOQi0sFa2xzyNRh0JUID8tw7Kxq9X/k2+Ddo4AvkH6vg/IDz+yJkMdDUb+
         G9sGz1bbBENF212AYbio594tKOb2POqUniTMuRltvkxtc9JWSZ/6Ko3DWs5G5sI7GRUB
         NT78DwzuMomHgiQBOKTRBKWK1k3FfhUnXbwjfZ9d9llj/diWwdlqnyI+62dHDqPKWpIb
         ze4DbPHrCkZDOB35Vr5Ot2iJzgO5sF8whGxzbTgbd40QEojAaVC9NNKQ9ql1b1JZpr9N
         m4N0UES9ZljqVxNY6A0BUsaVIKfHKwiypuos+51Jtg9nJ556kfZPxzAl/Gg5Q1G6pCQ1
         om5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533G+c3PDuYnhnn3c8ghx0MJqJoi/IyrxX3hePEongP1MVavfWkM
	yk/9PtUWlZroty1o2ENr7vU=
X-Google-Smtp-Source: ABdhPJw8dBhvTf1T2cZdMHnRZ7NtcXJIC/TtxSUxiOICd9sXiB1ekr/w3SJxCy1GAmB/6nojU5Fs0Q==
X-Received: by 2002:a17:90b:190d:: with SMTP id mp13mr12859021pjb.211.1594254383894;
        Wed, 08 Jul 2020 17:26:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6891:: with SMTP id e17ls1190647pgt.3.gmail; Wed, 08 Jul
 2020 17:26:23 -0700 (PDT)
X-Received: by 2002:aa7:8090:: with SMTP id v16mr16936530pff.199.1594254383459;
        Wed, 08 Jul 2020 17:26:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594254383; cv=none;
        d=google.com; s=arc-20160816;
        b=ePi1B3z9KCWkRtMgmwQ3D9Bu4mWQMciSnxb3dlNyYV1mSGWip70hHkcNcJ4ceVOn5z
         tgNdV8+OrgZh+/bx7CEz+KaT61mERedH7gK64u03pBoIWTxFKWl15b9AW6FW+OwhL1d2
         j+tqhMPJYp0U/lRVfPBmtPp3SCiRyvBEQFNock8Qg2A+dyS8LVSevwzhCEllIFhhCDPJ
         UuXQGCYwGvSGc/B1q28uqmNvZwjXr77Wt2ZifSQ4tSIz9hYDOTK/MaPrrit3I5RcDnbS
         x8ndZmp31tpJXo3r3/hB3eqYcvAbVRtgZyOrsKON1VRymRprTs2mJmjH43bH+2emSkoz
         +yJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=w3nklHeZP/pk54sZZJKKTBxCrGZi6DeFc+6DSxGSI3s=;
        b=mpu1h9QTXKjCWFSta8+Ooy+cE2BzKd9OWE48L9oBKnuGRxcHBbPpdX0X2DaHswDSTe
         Y/A+zS+HVVgKP7sPt70T6cjJisVL5iPIqWa9HcEd6+DP0KhKmLBN1MJiWzyf/PIgC34M
         WKPC+9dM1cS9wJShNQugm3Ffaixf5HOnpTcbTAufsF8/8E3BbdYHpiVCAT0wHE1uwxkW
         tW2ACwz0Fw20WBa7b/qeeBGusBp9uD+Jc3uDw7TFqMlSoRD2IbpEvnTE7LZ4eES9AeWu
         eYL0npt8fvkqrg43bmEdBTrDvIc4iyOW8c4p2/MEcfcM6RMC49nM1UTn7GQzmWYUkbUz
         ysMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id i6si92608pgj.5.2020.07.08.17.26.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jul 2020 17:26:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: 6TuylxWv7fd7+rb+KwckqVZaRamgtr3nuVPZTiW5djW/NX2j0qwSXgKwdp8xonTvncaGdAXF9H
 twAHfL5Ct4Vw==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="147914174"
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; 
   d="scan'208";a="147914174"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jul 2020 17:26:23 -0700
IronPort-SDR: vN7EOjxXzMAchRaBAEf3S1Uv7I75GIMysOyk28iYuXX2yZSZ43jMP4ZL5mOBSGWhNAXHRF9dB6
 bwGQr9ijhdcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; 
   d="scan'208";a="268608171"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga008.fm.intel.com with ESMTP; 08 Jul 2020 17:26:20 -0700
Date: Thu, 9 Jul 2020 08:26:35 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Chen Rong <rong.a.chen@intel.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	kernel test robot <lkp@intel.com>, Mans Rullgard <mans@mansr.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sasha Levin <alexander.levin@microsoft.com>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [linux-stable-rc:queue/5.4 109/220] /tmp/filter-273424.s:50187:
 Error: bad expression
Message-ID: <20200709002634.GB12731@intel.com>
References: <202007061558.jOn3THo0%lkp@intel.com>
 <CAKwvOdnA27AKP4aMGWBQXdjr3wi2XtbK2rvFj2btCGq6RCqGVw@mail.gmail.com>
 <20200707023303.GA277193@ubuntu-s3-xlarge-x86>
 <CAKwvOd=fdVa0K=cVLhuj2EEhAj7fs6Z7r50vwBAps9njbBpmJA@mail.gmail.com>
 <20200708012932.GA18919@intel.com>
 <CAKwvOd=_PUTQWZ7bOvFqaQKqPaVPnL11uG5iC96K9Hf-3yDGoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=_PUTQWZ7bOvFqaQKqPaVPnL11uG5iC96K9Hf-3yDGoQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.65 as
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

On Wed, Jul 08, 2020 at 11:13:13AM -0700, Nick Desaulniers wrote:
> On Tue, Jul 7, 2020 at 6:29 PM Philip Li <philip.li@intel.com> wrote:
> >
> > On Tue, Jul 07, 2020 at 10:01:12AM -0700, Nick Desaulniers wrote:
> > > Looks like c4e5c229b610, should we ask stable to backport to 5.4?  I
> > > don't think we had clang builds working for 5.4 for s390, so maybe we
> > > should just Philip to disable Clang builds of this stable branch for
> > > s390? (There may not be too many backports to support, but I don't
> > Got it, we will disable s390 for the linux-stable-rc.
> 
> Yeah, it's hard for s390 and probably riscv support on stable as we
> only got those working on mainline recently.
got it, we will disable riscv for stable as well when kernel <= 5.4.

> 
> > BTW: does the bot need switch to use clang's as instead of gnu's?
> 
> No; in the process of whipping LLVM's binutils substitutes into shape,
> we're doing pretty well, except for clang's integrated assembler (IA).
> Ironically, right now we can only build risc-v with clang's IA.
> 
> I would recommend `make LLVM=1` for most cases, though `make CC=clang
> LD=ld.lld ...` may be all that we can get away with for testing stable
> tree's branches.
> 
> Will you, Rong, and the rest of the 0day bot team be attending Linux
> Plumbers Conference this year?  I would like to put together a session
> on "CI and Clang" with the kernelci folks and tuxbuild folks to go
> over our current compatibility table, which is a little complex ATM.
> If you're attending the conference, would you be interested in
> attending such a session?
thanks, this is not decided yet at our side, we will update this later.
Yes, if we have chance to attend, we are glad to join such session.

> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200709002634.GB12731%40intel.com.
