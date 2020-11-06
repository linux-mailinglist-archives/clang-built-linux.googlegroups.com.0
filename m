Return-Path: <clang-built-linux+bncBAABBUXHSL6QKGQE7FNM3EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3C72A8CB3
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 03:24:19 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id q16sf2873598pfj.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 18:24:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604629458; cv=pass;
        d=google.com; s=arc-20160816;
        b=vcinRkNDCXbyOzwl5iHVvsWHe9Y1ip1Xks/2a26h36cTpbz8LJpbR4t/g0P1PmcVZS
         GR+x2Tkqur7gVRxQnZwSs/WBIEoSaEIabYhY8WM1wv4RU4AAT15GbBzZU7up6NZqsXpD
         MQdNx1Ooocum4FgeNyRpF6zKpK1FwtAb8Ov5ElY9zlD4IXkVy/zehs3+urvClm/bks/r
         MSanVD01+u5X7JTJZMczblUqsRsSdyv7jmdCWq/oWS4CxnGIUUxLvvYaZhPIuHp2uwML
         xqkr/zzOBzoUxLl87rOdOfeKB7Y+ecH1zJaamzavT80hl51Wx6yv99AbPjN6UpfA5PtG
         AkKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=8nglb1ay6og+E+WiTSkja2VkEyTdour9+E47BwmCxlI=;
        b=bQMtta+kaVfQRN1OADnTK1qPv5+oRjdn+I7A2QEhKLdItmlLD3LVCzhtf7mp3e5q8k
         mObvrv+r07+9XzwIsdM1TNLY8q8PgkVk8UWpPWAxhfeJVNo+6ajZnt31ctlGYNDcu+6G
         i/i8XKx0msD/D3gVVprxSHdR6ZkV35DpgMWW52QzFrFRMz7OY9Qj0Jf0PH6lWkPEDEdX
         6ltgRaMQqThRnIvMBmyBJwIRXxsbofk5Ng2Y4hI8Qi4d11inwGKfVf10OxfO8V/CAeyN
         wB3OZ/ROldVcZ42faYD+VfMHyODiw7qaorW9bJS5pjWizA9tcT07weDf4LYYir/meOxt
         Wfig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=v10ZtJEa;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8nglb1ay6og+E+WiTSkja2VkEyTdour9+E47BwmCxlI=;
        b=QDTbTnvnwRGQ5e2niMdvxd00879dUaaAjYWtv0I4gW177sfXwBzgqg7eZuGmVawhUC
         c+COntQCa8uCm8Vf6NgQxFgTHG+xEvsxxhTYIc4IXO7qdwQDFb1HP+Jxn+RNTrYe9V5d
         UpwSEFLEevk72w+ZG3dJyiMepSW7LD28ROsERLqPXWCcx7iIc00+KIrhPCJXBtw8Bm1Y
         N0Y3OITkYjkmjvK+VgKHy8l8NAtZ2dWS83wx3KtHxFTNCsRsx58nUfGQxv9aIPoxCYTm
         Q46vImUv3hj5UHMgOleqHbzfIPRIAsjg49k2l6lsHvKe0cdr6V1hTWmZRYR4CpMnCijX
         kFJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8nglb1ay6og+E+WiTSkja2VkEyTdour9+E47BwmCxlI=;
        b=X9wZ8RxTQ1yh39074X5o711JjME7QyhTixurquSb/yqCPmu9/SGuMNI6NTV8x7p2iO
         oW1/WTnvRblq5NeGz56CwceiXngmnvOKWifi5Ewi8O48+XR2NSro69pLgI/Gic64PxGh
         XIN/OjTtWTiA5ue7hqE0qUmAWJfp6IyyL+atAqFVgi8v2hQvLAGb9s6N4tkyKhR5SGE6
         /pazmpX96dbppFA4nHRUk8IbJuV5g+2oRD6lxONKK+Dr+4eVQ8TInLJ/6eA/9O9PBhmK
         LdC4JWGoqZmmNhCWm+MXBw8Fn2WFVNb3Jd0MGVJUdOkGsfJ/DlpfwQQaafh7DFJ0DE9O
         Upmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/q/sOydav3MwWWJfNyoVQgDybjXi5ejU5qERdYetM9tCNnXUx
	WdgWKYMqUghT+dl7PvUJ1v8=
X-Google-Smtp-Source: ABdhPJxkUVB1G/gL1fDqfspC7ffQxJp71FLcziDFtcPcDCVkXn2kq/lmeisCkIgsuCyK8Iq+b9zSiQ==
X-Received: by 2002:a62:f94d:0:b029:15c:f1a3:cd47 with SMTP id g13-20020a62f94d0000b029015cf1a3cd47mr5391732pfm.81.1604629458358;
        Thu, 05 Nov 2020 18:24:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8616:: with SMTP id p22ls1513012pfn.3.gmail; Thu, 05 Nov
 2020 18:24:17 -0800 (PST)
X-Received: by 2002:a05:6a00:1744:b029:18b:a1cc:536a with SMTP id j4-20020a056a001744b029018ba1cc536amr1898475pfc.74.1604629457832;
        Thu, 05 Nov 2020 18:24:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604629457; cv=none;
        d=google.com; s=arc-20160816;
        b=z0p0MQv0eD3rb5VsbTinAFiZ47ITIzZZrQezPjZOwa75lyaQ8EedPasoOKaUcBOj/9
         LPFyKtzmh0SGbCeEFsZCbR6/eEjk5iGALnLKudID6HECCs4Nui/e0JEBJxIKPGU/7t35
         aIIWaEh+3LM5Hqgj4fm9uEElnhgXdt5ARWf+Wyyn/9RoKisI2JhIEac0s+I4x7muRHyo
         exXSQPfg5H1OWOOeeE9lwrtwW5cZiG/vRTObdnp9fakzgJbMDLTEtls08SEcNjCg8RNL
         BVzmqsleLuPD3Wfvtdsl41z8gwoWZnI6PL2AtHetHUODbkBFBnjssV/D3fm2tCzt5Nkk
         /BBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nBrBnYxBLVAAPrb/hZQpMKZ8Cpk1V+LYFFc2o3fZuNI=;
        b=Eu5Mc88335TSXt3ywhkAb+tgFDPHaeRg8Y/xy5l9sD87RVCie74+2Xh0z6ERR1q8Pq
         LwaABff/TAF+r16SYwHE1GXUSPtnGx5a0sLHrJIp5w22zqZduvPskJzGPO2zi7v/6ajR
         PjTZgo6OqNfW+oxEuiF20GRID9F9wAxsvUtN3k+1H9RwtdzCpaW/rqFizev0iGRFQMCB
         0vB+24qpOso80y2egcRVHimS9aKNmFONlwt9UyX/COBaQwp2c194HjNh9Sa8kI9+LN9l
         +C2GrawBXkohDhxSKKFQukA9UCFdF0G1RxLGb9F0f9swb2faTNC5fVLJ6pXFbpyyS2/J
         yDKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=v10ZtJEa;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m62si325387pgm.2.2020.11.05.18.24.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Nov 2020 18:24:17 -0800 (PST)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 588BA20756;
	Fri,  6 Nov 2020 02:24:15 +0000 (UTC)
Date: Fri, 6 Nov 2020 11:24:13 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Vasily Gorbik <gor@linux.ibm.com>
Cc: kernel test robot <lkp@intel.com>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Borislav Petkov <bp@alien8.de>, Peter
 Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
 linux-tip-commits@vger.kernel.org, x86 <x86@kernel.org>
Subject: Re: [PATCH 1/1] x86/tools: Use tools headers for instruction
 decoder selftests
Message-Id: <20201106112413.80248e44fef68d9acf932dec@kernel.org>
In-Reply-To: <your-ad-here.call-01604481523-ext-9352@work.hours>
References: <patch-1.thread-59328d.git-59328d9dc2b9.your-ad-here.call-01604429777-ext-1374@work.hours>
	<202011041702.EIrDb4hS-lkp@intel.com>
	<your-ad-here.call-01604481523-ext-9352@work.hours>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=v10ZtJEa;       spf=pass
 (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mhiramat@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, 4 Nov 2020 10:18:43 +0100
Vasily Gorbik <gor@linux.ibm.com> wrote:

> On Wed, Nov 04, 2020 at 05:11:28PM +0800, kernel test robot wrote:
> > Hi Vasily,
> > 
> > I love your patch! Yet something to improve:
> > 
> > [auto build test ERROR on tip/x86/core]
> > [also build test ERROR on v5.10-rc2 next-20201103]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Vasily-Gorbik/x86-tools-Use-tools-headers-for-instruction-decoder-selftests/20201104-043600
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 238c91115cd05c71447ea071624a4c9fe661f970
> > config: x86_64-randconfig-a005-20201104 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1fcd5d5655e29f85e12b402e32974f207cfedf32)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://github.com/0day-ci/linux/commit/ab4952becdfae8a76a6f0e0fb4ec7d078e80d5d6
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Vasily-Gorbik/x86-tools-Use-tools-headers-for-instruction-decoder-selftests/20201104-043600
> >         git checkout ab4952becdfae8a76a6f0e0fb4ec7d078e80d5d6
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All error/warnings (new ones prefixed by >>):
> > 
> >    In file included from arch/x86/tools/insn_sanity.c:19:
> > >> tools/arch/x86/lib/insn.c:72:7: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    if (peek_nbyte_next(insn_byte_t, insn, i) != prefix[i])
> >                        ^
> >    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
> >            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:115:6: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >            b = peek_next(insn_byte_t, insn);
> >                ^
> >    tools/arch/x86/lib/insn.c:34:28: note: expanded from macro 'peek_next'
> >    #define peek_next(t, insn)      peek_nbyte_next(t, insn, 0)
> >                                    ^
> >    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
> >            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:140:7: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    b = peek_next(insn_byte_t, insn);
> >                        ^
> >    tools/arch/x86/lib/insn.c:34:28: note: expanded from macro 'peek_next'
> >    #define peek_next(t, insn)      peek_nbyte_next(t, insn, 0)
> >                                    ^
> >    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
> >            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:145:7: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    if (unlikely(insn->prefixes.bytes[3])) {
> >                        ^
> >    tools/arch/x86/lib/insn.c:157:7: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    b = peek_next(insn_byte_t, insn);
> >                        ^
> >    tools/arch/x86/lib/insn.c:34:28: note: expanded from macro 'peek_next'
> >    #define peek_next(t, insn)      peek_nbyte_next(t, insn, 0)
> >                                    ^
> >    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
> >            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:171:6: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >            b = peek_next(insn_byte_t, insn);
> >                ^
> >    tools/arch/x86/lib/insn.c:34:28: note: expanded from macro 'peek_next'
> >    #define peek_next(t, insn)      peek_nbyte_next(t, insn, 0)
> >                                    ^
> >    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
> >            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:174:20: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn_byte_t b2 = peek_nbyte_next(insn_byte_t, insn, 1);
> >                                     ^
> >    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
> >            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:187:9: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                            b2 = peek_nbyte_next(insn_byte_t, insn, 2);
> >                                 ^
> >    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
> >            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:189:9: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                            b2 = peek_nbyte_next(insn_byte_t, insn, 3);
> >                                 ^
> >    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
> >            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:197:9: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                            b2 = peek_nbyte_next(insn_byte_t, insn, 2);
> >                                 ^
> >    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
> >            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:245:7: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >            op = get_next(insn_byte_t, insn);
> >                 ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:265:8: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    op = get_next(insn_byte_t, insn);
> >                         ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:297:9: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    mod = get_next(insn_byte_t, insn);
> >                          ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:359:22: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                            insn->sib.value = get_next(insn_byte_t, insn);
> >                                              ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:410:31: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                            insn->displacement.value = get_next(signed char, insn);
> >                                                       ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:415:7: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                                             get_next(short, insn);
> > --
> >                                           ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:448:26: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->moffset2.value = get_next(int, insn);
> >                                           ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:467:27: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate.value = get_next(short, insn);
> >                                            ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:472:27: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate.value = get_next(int, insn);
> >                                            ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:490:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate1.value = get_next(short, insn);
> >                                             ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:494:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate1.value = get_next(int, insn);
> >                                             ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:498:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate1.value = get_next(int, insn);
> >                                             ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:500:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate2.value = get_next(int, insn);
> >                                             ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:518:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate1.value = get_next(short, insn);
> >                                             ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:522:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate1.value = get_next(int, insn);
> >                                             ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:531:27: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >            insn->immediate2.value = get_next(unsigned short, insn);
> >                                     ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:568:27: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate.value = get_next(signed char, insn);
> >                                            ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:572:27: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate.value = get_next(short, insn);
> >                                            ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:576:27: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate.value = get_next(int, insn);
> >                                            ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:580:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate1.value = get_next(int, insn);
> >                                             ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:582:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate2.value = get_next(int, insn);
> >                                             ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> >    tools/arch/x86/lib/insn.c:602:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
> >                    insn->immediate2.value = get_next(signed char, insn);
> >                                             ^
> >    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
> >            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
> >                   ^
> > >> arch/x86/tools/insn_sanity.c:128:19: warning: implicit declaration of function 'ARRAY_SIZE' [-Wimplicit-function-declaration]
> >            tmp = fgets(buf, ARRAY_SIZE(buf), input_file);
> >                             ^
> >    37 warnings generated.
> >    /usr/bin/ld: /tmp/insn_sanity-8655a9.o: in function `insn_get_prefixes':
> > >> insn_sanity.c:(.text+0x1bd): undefined reference to `unlikely'
> > >> /usr/bin/ld: insn_sanity.c:(.text+0x203): undefined reference to `unlikely'
> >    /usr/bin/ld: insn_sanity.c:(.text+0x24d): undefined reference to `unlikely'
> >    /usr/bin/ld: insn_sanity.c:(.text+0x30f): undefined reference to `unlikely'
> >    /usr/bin/ld: insn_sanity.c:(.text+0x353): undefined reference to `unlikely'
> >    /usr/bin/ld: /tmp/insn_sanity-8655a9.o:insn_sanity.c:(.text+0x38e): more undefined references to `unlikely' follow
> >    /usr/bin/ld: /tmp/insn_sanity-8655a9.o: in function `main':
> > >> insn_sanity.c:(.text+0x13cf): undefined reference to `ARRAY_SIZE'
> >    /usr/bin/ld: /tmp/insn_sanity-8655a9.o: in function `__insn_get_emulate_prefix':
> >    insn_sanity.c:(.text+0x1cc1): undefined reference to `unlikely'
> >    /usr/bin/ld: insn_sanity.c:(.text+0x1cef): undefined reference to `unlikely'
> >    /usr/bin/ld: insn_sanity.c:(.text+0x1d1f): undefined reference to `unlikely'
> >    /usr/bin/ld: insn_sanity.c:(.text+0x1d47): undefined reference to `unlikely'
> >    /usr/bin/ld: insn_sanity.c:(.text+0x1d6f): undefined reference to `unlikely'
> >    clang-12: error: linker command failed with exit code 1 (use -v to see invocation)
> 
> Right, this is expected. The patch is based on jpoimboe/objtool/core,
> which has extra commits.

Has that series already submitted to LKML? I need to look at the series too.
Or, Josh, can you review it and if it is OK, please pick it to your series
and send it.

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106112413.80248e44fef68d9acf932dec%40kernel.org.
