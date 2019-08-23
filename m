Return-Path: <clang-built-linux+bncBCX2JBVY5MBBB3WC7XVAKGQEPXAAJHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6487F9A629
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 05:45:51 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id h15sf8626347qtq.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 20:45:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566531950; cv=pass;
        d=google.com; s=arc-20160816;
        b=yy+9Qy8SclxBftaO+W+HYOgKdVSnxx1z4Qj8kfZp/M+FlUzQTWLtApcL2xMoaqoeW6
         lEPqBizAU+MwL35QQNm/vYTQPS3Zcxoo+nQX7panbD3wmFoOJZRC2I3vf+276BoI9jBc
         iFs1uh3CzviI6gw9m+dOSNym8Ci+zcd6oua3KoVbCMbL6HDdVsrcILsyVBq1fvoZPSN9
         oz/GxaSsEXHYj5NZAHzYYJ0Ff2mRyQMGMID+RITfk+cutIfe2OrrMC1Y4Y9SZBQPGNAN
         OerbvBUD8zB1G3xPCoJJ7/PrpgZoN/iZrPccAMYe92wB/5CuAJusa19rRX78iasPw6bb
         JuPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=St3rN/MoV7QHcvOXFvEP/ABYo3f5z7L/AchaGB10nJY=;
        b=ELX+Fx/qJzEFDRmYClv4UoRvD0Ct+RRjZhSRE0nQmhlJ36JDBDFysEWeEWflVyj0Wq
         M7YmM+hOsazxCPQeCqi7XdG8AZOHjw2TJscPkb9+iNl3iN3MojXBZlUGYgdBNj/iHbVZ
         5O/OqGsIQLKksItkRP2J2CThGUjUW5JV9dczwzvfcxaLUgy/ob3eIoJOtpRXKuBEa2IL
         /XiczpbpZLPVVbwpVebBw5Xd5ga/UX7oMsFLEqEr0dFps/+2V09/16DETXF9LUlebVBR
         bhUwmVOg/ev02VNY+NNSMO2g193QWopQ0ofTyjIvZyrsvfiXs+kv3gS58OgC6COlzT+r
         LZ1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=St3rN/MoV7QHcvOXFvEP/ABYo3f5z7L/AchaGB10nJY=;
        b=DjgphusJsLEUqdhjdguAbDq4ZMs+iSA4JcoMIRTGCYT5a7JhlXhUKBjGv71qRHmx+d
         nYKUzeDlO8UgBzvEP2SuQ16otNFPHiGZxIPmo5yJ8p7zmt3LK8FUe+a8wlokhn8R9GAe
         I3ahMaMyAETmJR3cyUnFild3f8c52BzXR5lo+TzNdisk6EkSS6GCYovA66z0iiXgxOgJ
         3ZW7TF4SfjvMiZ/TryR5ULXUC//j3IyFZ7lTtPMby4YbrUKcitW3wRN1IFaUCS5/OX8x
         e+LVFZxeYIdUUA2dn1ayIGAWg3OZdiT3FwjRrDFQkAd0tdzz7U/1ZZQUBLpzdD2efFzx
         Nylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=St3rN/MoV7QHcvOXFvEP/ABYo3f5z7L/AchaGB10nJY=;
        b=GqVnJvkgoRJxRBKwVNXOFLvilO5MwRCeE+ZjRQHJR29u2PwCI36tfI19zHDLy6kutX
         y0cn/KHw5wmg6f6dciXWqT8J5quPh6SNfZ516UoyzpqpwMxJuKfFCDhUsbqmgn1tsynR
         Kb71zOdTvMhqLYMCHrR2dMkqqpQ7HrPwfZlzYhFHEFAGz9jLwhEuZcypgyWWUibKcH7y
         AzmbgzpV0M7NyJFi2phrViuekVZ+fznjrZh1VciL5noPKxHxNoq5oMHyMzdL8OPpN/CT
         s5qiHJRg/mtyuRpphAfIRopAPCrqiNlGtPy4o1iX3/Hvn8HCKVtlkRPs2a3wXV6yYXly
         XIyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVdPollvVsjOulPHd2moxPrvRexmPApWGbVkPxtRXE+8BUAq/ZQ
	gEzn3lzmKXlhhlWkiJZ4hVY=
X-Google-Smtp-Source: APXvYqxC4xC6GncoOavXtVXP+bYqFoxO/pKpkJyHF2WxPHep1bORBJOYNXsPZEKPjjfmHdANpRcSwg==
X-Received: by 2002:ac8:424e:: with SMTP id r14mr2941147qtm.158.1566531950402;
        Thu, 22 Aug 2019 20:45:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:65d3:: with SMTP id t19ls990080qto.9.gmail; Thu, 22 Aug
 2019 20:45:50 -0700 (PDT)
X-Received: by 2002:ac8:4910:: with SMTP id e16mr2886707qtq.260.1566531950080;
        Thu, 22 Aug 2019 20:45:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566531950; cv=none;
        d=google.com; s=arc-20160816;
        b=w/SXzwIGhrgnOlWLIBwHAjomkg8Tzu14WRsfQJq/Fms/Im1HtlFRLr93SRRyfbwE1d
         p1vE9Q89OJCZyVSN53u8cN6oPTa6Rr6NTKw0kp0epa1Rw2gY0bvgUQVIxIGT5o8FLgl3
         /dEs6JxeQeKYDKjIanb4RO7MuzsSlkmQScE882hwVpbMI1MxxGS0XgYaMV4johnFguaw
         1TUPkR9VA4obc8tU/q6Bdxyoem4jbWZnjyYTZtuAVANkuWMXt/7RKybOyZ4MTUh4ZryR
         4WhspKDhrEjD/21I0HB1GnU1NOCB3N6MEeNLm7ezpnn8hH/dgi2NbW8SpK58tqdCGD70
         NyiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Ukq80UFq2ZY4pq9ZLuGytF8F+Ea5GgAPPHH3cz1elJw=;
        b=OP6vxayYeLbgaf8o5dkwWpfYoKRrouwDGaDqnT4iWD5kF5LOaj6QuSW4SbyZZtOhvj
         taWVUBml6lTEr+ql41t+MzqSFdD9WZkunQblNlbjOqHMb8ZwPtqGEH5od6+H/Jr4wcW8
         2MPCJ4ei+v8WyH2rdopPLr7R1vK/gO9jKCRj2jXkA109T9LcJIYoD9QGZegeDB1C7jRG
         1J0O479BuZ0nR/dVRzzcJ58I5rRbq45SgemtINyWsfQpJpJ6EpK+D5XwANva0xs71SBt
         +s8ynPw9R0RZNqduMHnJ15naveKm6yKbi2c9NgS0/UnFbTKiE37Dq0Nv09is4eqC5UQu
         0QXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id j10si33327qtn.5.2019.08.22.20.45.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Aug 2019 20:45:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Aug 2019 20:45:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,419,1559545200"; 
   d="scan'208";a="173350313"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.13.128])
  by orsmga008.jf.intel.com with ESMTP; 22 Aug 2019 20:45:46 -0700
Date: Fri, 23 Aug 2019 11:49:57 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Chen Rong <rong.a.chen@intel.com>, Joel Stanley <joel@jms.id.au>,
	kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild test robot <lkp@intel.com>
Subject: Re: arch/powerpc/include/asm/current.h:32:43: error: unknown
 register name 'r2' in asm
Message-ID: <20190823034957.GA9858@intel.com>
References: <201908201102.0U21yPsV%lkp@intel.com>
 <CAKwvOd=sfYbVT=eY=MGX-aKVuVrXW2o_=pSvTG7r2EY4dsG9NA@mail.gmail.com>
 <8736hs5zrp.fsf@concordia.ellerman.id.au>
 <CAKwvOd=8ouR_mCbK=ZtQ6ojJtWnNpvMkyj=gL1xkpADmnPg0aQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=8ouR_mCbK=ZtQ6ojJtWnNpvMkyj=gL1xkpADmnPg0aQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.126 as
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

On Thu, Aug 22, 2019 at 08:39:57PM -0700, Nick Desaulniers wrote:
> On Thu, Aug 22, 2019 at 8:25 PM Michael Ellerman <mpe@ellerman.id.au> wrote:
> >
> > Hi Nick,
> >
> > For some reason I can't find the original mail from the buildbot,
> > despite it saying it sent it me?
> 
> Ah, haha, yeah sorry, I should have mentioned that 0day bot is just
> sending our mailing list the Clang reports as a trial run.
> 
> >
> > Nick Desaulniers <ndesaulniers@google.com> writes:
> > > +Michael and Joel,
> > > I thought this would be a bug in Clang not recognizing the register
> > > names, but my simple reproducer errors in GCC as well:
> > > https://godbolt.org/z/ivGCXo
> >
> > That link is compiling with both clang and gcc for x86_64?
> >
> > If I flip them to ppc64le it works for me:
> >
> >   https://godbolt.org/z/_mZlm7
> >
> > So I'm not sure what's going on here :)
> 
> Oh man, sorry, bad link (mine).  Indeed if I set `-target
> powerpc-linux-gnu` (or `-target powerpc64-linux-gnu`) for clang than
> it's recognized.
> 
> >
> > My best guess is that the clang they are using is actually targeting
> > x86. That would explain the register name not being understood and also
> > the BIG/LITTLE endian mismatch.
> 
> Indeed, Rong and Philip, is the ppc backend disabled in your build of
> clang per chance?  If you're configuring your clang build with cmake,
> please triple check `LLVM_TARGETS_TO_BUILD` has `PowerPC` in the `;`
> separated list.
sorry for wrong report and thanks for the instruction. We will follow up
to check and it's most likely our environment has missed something.

> 
> https://llvm.org/docs/CMake.html#llvm-specific-variables
> 
> You can also check `llc --version` to check that the backend is
> enabled.  Though PPC is a default target, IIRC, in LLVM so I think
> you'd need to be setting `LLVM_TARGETS_TO_BUILD` without `PowerPC` in
> the first place to observe that.
> 
> Can you triple check if that is the problem, or something else?
sure, we will check

> 
> Otherwise maybe an allnoconfig build is messing something up?
> make.cross looks gcc specific, I think there's still a TODO to include
> a link to the clang one for clang reports?
yes, this is a TODO to reproduce clang reported issue, but not yet started.

> 
> >
> > cheers
> >
> > > Though also the line:
> > >    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent
> > > configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
> > > makes me think nothing here is valid.
> > >
> > > On Mon, Aug 19, 2019 at 8:17 PM kbuild test robot <lkp@intel.com> wrote:
> > >>
> > >> CC: kbuild-all@01.org
> > >> CC: linux-kernel@vger.kernel.org
> > >> TO: Michael Ellerman <mpe@ellerman.id.au>
> > >>
> > >> Hi Michael,
> > >>
> > >> FYI, the error/warning still remains.
> > >>
> > >> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git master
> > >> head:   5f97cbe22b7616ead7ae267c29cad73bc1444811
> > >> commit: ed4289e8b48845888ee46377bd2b55884a55e60b Revert "powerpc: slightly improve cache helpers"
> > >> date:   3 weeks ago
> > >> config: powerpc-allnoconfig (attached as .config)
> > >> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > >> reproduce:
> > >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >>         chmod +x ~/bin/make.cross
> > >>         git checkout ed4289e8b48845888ee46377bd2b55884a55e60b
> > >>         # save the attached .config to linux build tree
> > >>         make.cross ARCH=powerpc
> > >>
> > >> If you fix the issue, kindly add following tag
> > >> Reported-by: kbuild test robot <lkp@intel.com>
> > >>
> > >> All errors (new ones prefixed by >>):
> > >>
> > >>    In file included from kernel/bounds.c:10:
> > >>    In file included from include/linux/page-flags.h:10:
> > >>    In file included from include/linux/bug.h:5:
> > >>    In file included from arch/powerpc/include/asm/bug.h:128:
> > >>    In file included from include/asm-generic/bug.h:18:
> > >>    In file included from include/linux/kernel.h:12:
> > >>    In file included from include/linux/bitops.h:19:
> > >>    In file included from arch/powerpc/include/asm/bitops.h:243:
> > >>    In file included from include/asm-generic/bitops/le.h:6:
> > >>    In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
> > >>    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
> > >>    #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
> > >>     ^
> > >>    1 warning generated.
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
> > >>    In file included from include/linux/compat.h:10:
> > >>    In file included from include/linux/time.h:6:
> > >>    In file included from include/linux/seqlock.h:36:
> > >>    In file included from include/linux/spinlock.h:51:
> > >>    In file included from include/linux/preempt.h:11:
> > >>    In file included from include/linux/list.h:9:
> > >>    In file included from include/linux/kernel.h:12:
> > >>    In file included from include/linux/bitops.h:19:
> > >>    In file included from arch/powerpc/include/asm/bitops.h:243:
> > >>    In file included from include/asm-generic/bitops/le.h:6:
> > >>    In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
> > >>    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
> > >>    #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
> > >>     ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
> > >>    In file included from include/linux/compat.h:10:
> > >>    In file included from include/linux/time.h:6:
> > >>    In file included from include/linux/seqlock.h:36:
> > >>    In file included from include/linux/spinlock.h:51:
> > >>    In file included from include/linux/preempt.h:78:
> > >>    In file included from ./arch/powerpc/include/generated/asm/preempt.h:1:
> > >>    In file included from include/asm-generic/preempt.h:5:
> > >>    In file included from include/linux/thread_info.h:21:
> > >> >> arch/powerpc/include/asm/current.h:32:43: error: unknown register name 'r2' in asm
> > >>    register struct task_struct *current asm ("r2");
> > >>                                              ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
> > >>    In file included from include/linux/compat.h:10:
> > >>    In file included from include/linux/time.h:6:
> > >>    In file included from include/linux/seqlock.h:36:
> > >>    In file included from include/linux/spinlock.h:445:
> > >>    In file included from include/linux/atomic.h:7:
> > >> >> arch/powerpc/include/asm/atomic.h:138:10: error: unknown register name 'xer' in asm
> > >>            : "cc", "xer");
> > >>                    ^
> > >>    arch/powerpc/include/asm/atomic.h:154:10: error: unknown register name 'xer' in asm
> > >>            : "cc", "xer");
> > >>                    ^
> > >>    arch/powerpc/include/asm/atomic.h:171:10: error: unknown register name 'xer' in asm
> > >>            : "cc", "xer");
> > >>                    ^
> > >>    arch/powerpc/include/asm/atomic.h:187:10: error: unknown register name 'xer' in asm
> > >>            : "cc", "xer");
> > >>                    ^
> > >>    arch/powerpc/include/asm/atomic.h:262:10: error: unknown register name 'xer' in asm
> > >>            : "cc", "xer", "memory");
> > >>                    ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:87:11: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>                    return (set->sig[3] | set->sig[2] |
> > >>                            ^        ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:87:25: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>                    return (set->sig[3] | set->sig[2] |
> > >>                                          ^        ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:103:11: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>                    return  (set1->sig[3] == set2->sig[3]) &&
> > >>                             ^         ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:103:27: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>                    return  (set1->sig[3] == set2->sig[3]) &&
> > >>                                             ^         ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:104:5: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>                            (set1->sig[2] == set2->sig[2]) &&
> > >>                             ^         ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:104:21: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>                            (set1->sig[2] == set2->sig[2]) &&
> > >>                                             ^         ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>    _SIG_SET_BINOP(sigorsets, _sig_or)
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    include/linux/signal.h:128:8: note: expanded from macro '_SIG_SET_BINOP'
> > >>                    a3 = a->sig[3]; a2 = a->sig[2];                         \
> > >>                         ^      ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:147:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>    _SIG_SET_BINOP(sigorsets, _sig_or)
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    include/linux/signal.h:128:24: note: expanded from macro '_SIG_SET_BINOP'
> > >>                    a3 = a->sig[3]; a2 = a->sig[2];                         \
> > >>                                         ^      ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>    _SIG_SET_BINOP(sigorsets, _sig_or)
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    include/linux/signal.h:129:8: note: expanded from macro '_SIG_SET_BINOP'
> > >>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
> > >>                         ^      ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:147:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>    _SIG_SET_BINOP(sigorsets, _sig_or)
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    include/linux/signal.h:129:24: note: expanded from macro '_SIG_SET_BINOP'
> > >>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
> > >>                                         ^      ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>    _SIG_SET_BINOP(sigorsets, _sig_or)
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >> --
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:153:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    include/linux/signal.h:129:24: note: expanded from macro '_SIG_SET_BINOP'
> > >>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
> > >>                                         ^      ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:153:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    include/linux/signal.h:130:3: note: expanded from macro '_SIG_SET_BINOP'
> > >>                    r->sig[3] = op(a3, b3);                                 \
> > >>                    ^      ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:153:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    include/linux/signal.h:131:3: note: expanded from macro '_SIG_SET_BINOP'
> > >>                    r->sig[2] = op(a2, b2);                                 \
> > >>                    ^      ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:177:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>    _SIG_SET_OP(signotset, _sig_not)
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    include/linux/signal.h:164:27: note: expanded from macro '_SIG_SET_OP'
> > >>            case 4: set->sig[3] = op(set->sig[3]);                          \
> > >>                                     ^        ~
> > >>    include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
> > >>    #define _sig_not(x)     (~(x))
> > >>                               ^
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:177:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>    _SIG_SET_OP(signotset, _sig_not)
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    include/linux/signal.h:164:10: note: expanded from macro '_SIG_SET_OP'
> > >>            case 4: set->sig[3] = op(set->sig[3]);                          \
> > >>                    ^        ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>    _SIG_SET_OP(signotset, _sig_not)
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    include/linux/signal.h:165:20: note: expanded from macro '_SIG_SET_OP'
> > >>                    set->sig[2] = op(set->sig[2]);                          \
> > >>                                     ^        ~
> > >>    include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
> > >>    #define _sig_not(x)     (~(x))
> > >>                               ^
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> > >>    include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> > >>    _SIG_SET_OP(signotset, _sig_not)
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    include/linux/signal.h:165:3: note: expanded from macro '_SIG_SET_OP'
> > >>                    set->sig[2] = op(set->sig[2]);                          \
> > >>                    ^        ~
> > >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> > >>            unsigned long sig[_NSIG_WORDS];
> > >>            ^
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:21:
> > >>    include/linux/mman.h:133:9: warning: division by zero is undefined [-Wdivision-by-zero]
> > >>                   _calc_vm_trans(flags, MAP_LOCKED,     VM_LOCKED    ) |
> > >>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
> > >>       : ((x) & (bit1)) / ((bit1) / (bit2))))
> > >>                        ^ ~~~~~~~~~~~~~~~~~
> > >>    include/linux/mman.h:134:9: warning: division by zero is undefined [-Wdivision-by-zero]
> > >>                   _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
> > >>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
> > >>       : ((x) & (bit1)) / ((bit1) / (bit2))))
> > >>                        ^ ~~~~~~~~~~~~~~~~~
> > >>    In file included from arch/powerpc/kernel/asm-offsets.c:23:
> > >>    In file included from include/linux/suspend.h:5:
> > >>    In file included from include/linux/swap.h:9:
> > >>    In file included from include/linux/memcontrol.h:13:
> > >>    In file included from include/linux/cgroup.h:26:
> > >>    In file included from include/linux/kernel_stat.h:9:
> > >>    In file included from include/linux/interrupt.h:11:
> > >>    In file included from include/linux/hardirq.h:9:
> > >>    In file included from arch/powerpc/include/asm/hardirq.h:6:
> > >>    In file included from include/linux/irq.h:20:
> > >>    In file included from include/linux/io.h:13:
> > >> >> arch/powerpc/include/asm/io.h:152:1: error: constraint 'Z' expects an integer constant expression
> > >>    DEF_MMIO_IN_X(in_be16, 16, lhbrx);
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    arch/powerpc/include/asm/io.h:109:23: note: expanded from macro 'DEF_MMIO_IN_X'
> > >>                    : "=r" (ret) : "Z" (*addr) : "memory");                 \
> > >>                                        ^~~~~
> > >>    arch/powerpc/include/asm/io.h:153:1: error: constraint 'Z' expects an integer constant expression
> > >>    DEF_MMIO_IN_X(in_be32, 32, lwbrx);
> > >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >>    arch/powerpc/include/asm/io.h:109:23: note: expanded from macro 'DEF_MMIO_IN_X'
> > >>                    : "=r" (ret) : "Z" (*addr) : "memory");                 \
> > >>                                        ^~~~~
> > >> >> arch/powerpc/include/asm/io.h:157:1: error: invalid output constraint '=Z' in asm
> > >>    DEF_MMIO_OUT_X(out_be16, 16, sthbrx);
> > >>    ^
> > >>    arch/powerpc/include/asm/io.h:117:5: note: expanded from macro 'DEF_MMIO_OUT_X'
> > >>                    : "=Z" (*addr) : "r" (val) : "memory");                 \
> > >>                      ^
> > >>    arch/powerpc/include/asm/io.h:158:1: error: invalid output constraint '=Z' in asm
> > >>    DEF_MMIO_OUT_X(out_be32, 32, stwbrx);
> > >>    ^
> > >>    arch/powerpc/include/asm/io.h:117:5: note: expanded from macro 'DEF_MMIO_OUT_X'
> > >>                    : "=Z" (*addr) : "r" (val) : "memory");                 \
> > >>                      ^
> > >>    31 warnings and 10 errors generated.
> > >>    make[2]: *** [arch/powerpc/kernel/asm-offsets.s] Error 1
> > >>    make[2]: Target '__build' not remade because of errors.
> > >>    make[1]: *** [prepare0] Error 2
> > >>    make[1]: Target 'prepare' not remade because of errors.
> > >>    make: *** [sub-make] Error 2
> > >>    16 real  4 user  6 sys  67.00% cpu   make prepare
> > >>
> > >> vim +/r2 +32 arch/powerpc/include/asm/current.h
> > >>
> > >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  28
> > >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  29  /*
> > >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  30   * We keep `current' in r2 for speed.
> > >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  31   */
> > >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09 @32  register struct task_struct *current asm ("r2");
> > >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  33
> > >>
> > >> :::::: The code at line 32 was first introduced by commit
> > >> :::::: 584224e4095d8abcf2bef38efacc291be9a44c20 [PATCH] powerpc: Merge current.h
> > >>
> > >> :::::: TO: David Gibson <david@gibson.dropbear.id.au>
> > >> :::::: CC: Paul Mackerras <paulus@samba.org>
> > >>
> > >> ---
> > >> 0-DAY kernel test infrastructure                Open Source Technology Center
> > >> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> > >
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190823034957.GA9858%40intel.com.
