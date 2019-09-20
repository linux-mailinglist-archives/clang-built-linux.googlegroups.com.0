Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPW4STWAKGQENZSPPZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FACBB981F
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 21:53:36 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id s137sf5398147pfs.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 12:53:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569009215; cv=pass;
        d=google.com; s=arc-20160816;
        b=pm2+rVtvrkaKN9oDj6AnDER7n57XyeJFx7J4R184Tprtf92Fe4gFierui6Uu7HXqnj
         WFAY5YKbuF7Oh54fQqyUCta1QGnmQT2amzIYUoMYOm6ZmS6F38yWldFxY4gvur7EQrHT
         aNZIDEiAcABzmKjJU1lV49REGLK3BOlv4URAKQiy/APy7ZzpRt9shwX7YI+QG1AAzI28
         lQg95/4VL+rdmOOGf4h8YixqmNOgOmTMgANKrA4+irvfopOv72mo+BOQSdLWs+nTZ1iM
         gmF0iEDl3oYISG1Ph3gjEF9q9TUWTWVmax/m4x1Znf2m89VGXsbpYOoCBdQbfYMQo4EH
         /12w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JnvqziDdzetOyqbq9X6GZccaRUMXY6aMD63+SuSZScU=;
        b=An1buVOz3jIONH+TzVrpl7xKeqIwTl0gdEddwg1bbm0ebFOf23O0TlN0dHLPwQ0/S3
         76nGm22e2amRxXmeZb/slg4z4oVyU6kFA+lIHYTHX7qkyN6VMiRbrhH1Jvk+hMyYMwHB
         fkvtYFpA+eUhsoxhomncoZhDXOzmWVRrUT05UEEhhoTbDptVAFuXi+3DNY4xCQrKgTvZ
         FYf2M53iL1KuTyy1bOspv4vYas+1VJZW6ruD0Eke3FXCdQodsAql+hUBP1yWoWapobwG
         8UlchvJNbV1hg8xJgSYoCWFJZKuvEqyar6fAlWD771vR6/QsAbJow0qAo/nFAG8lkGPh
         rhWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JnvqziDdzetOyqbq9X6GZccaRUMXY6aMD63+SuSZScU=;
        b=FOSjVvqxTYeWHVY0jbtVn0dUWieS12SH7g4ug1cHdQDbHAyrykzGb1uFhkLAo8co6/
         qVjGo4x1Awehv+kgwvtv8sXJ6mVQx+VwoEyErQmWqbzdsd7d4k3gEwPaVOjlgSdxPCFl
         dsSQ60xAKdHYlu8ZumUk4od4XCsGe/4rGLiDi6ODgmjDhTeVPz+HxzOusGgVogaQLiWg
         azz8yxyybDNjVOz1sFjOHB0C5tYx0tFqYlrLLVzfXLlZkySJRMHiXdSaX5RPk5yK7Nvy
         4rJ5pThGS1enH2IUKJ9kO1gpDDfARY64cWnP0CyITDFUILmp1jIp01YvAVbtnZ9JNAJX
         6xMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JnvqziDdzetOyqbq9X6GZccaRUMXY6aMD63+SuSZScU=;
        b=hjU8p02kf3KKDQKUBHNbAtY6RUipYZqdTHW63dpVoxAdA8nL8f/S7DxBJwurJtGOYQ
         v7U2njJ3tmpoIK88hdQ1cEn0QBmPoaFHivA6/PtgE2FGj60fLwaoM6Y6JeoIwCI1I8RJ
         ToW7T5wGcCcPpnTWCFvbX5y07B/9MSR9EFhb1Nag+kB1sWJWnRfWls13TPPWDYx/fQM4
         GfWBg9vG3aLYXf2KdV96TbsvKOZnD01oZInRp3cBOqeXio5A6RgvBfC5QfnyEQPDIW3O
         vy1guIJbkLo5E0J4H/HI5ga6WC+DBMW5yAwndYRmcfHxoxrK6g+vlJ0p3BeFhprKWGbN
         4F4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQzJqhRzBOZAp5kxPWg9o2NeeGSW51ckVUoiNvP5GKiYyqcAwj
	zwruEDwvLkPTnDoYRYFzaw4=
X-Google-Smtp-Source: APXvYqyoQEUqnenLa36Pt7za6pwV1fn0IT22sKMyZY0CzAE5h1qaU9I6R8F4e3ly8NzGwHhN8S59Pg==
X-Received: by 2002:a17:902:ac98:: with SMTP id h24mr19086607plr.64.1569009215010;
        Fri, 20 Sep 2019 12:53:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:db42:: with SMTP id u2ls881970pjx.0.canary-gmail;
 Fri, 20 Sep 2019 12:53:34 -0700 (PDT)
X-Received: by 2002:a17:902:6b81:: with SMTP id p1mr19061112plk.171.1569009214651;
        Fri, 20 Sep 2019 12:53:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569009214; cv=none;
        d=google.com; s=arc-20160816;
        b=CdhWcyT4c633sCoDI+hwr3fCKe1EUJJ4nz/tksXx/gVbDbxj0Ut0MDxkqJ63o6py2S
         ZQFAe2lqfb459QZ2WZSDVGk5kqe0EOeDfD4/P6ZamVZs3ZvhvHc03/QCbC+hROlOj2HZ
         eU/lkpB3JxeNOUZ3gNoh1d0k+ZeAkxcV9tJkIBlSzBkNecqNX7D6qQf9WR03B2ocF5Ah
         j2KNd5jMdbSD6AaR8p38d3gCZFlLcVdRPyNSeFBsRbuk2mBnUokJL/JrjfRjsRu3a4Df
         32bZGLBoL/IhQzbfJbdztjuOERFvAF2dn4WXL4ahygVyfUeNRGJ2wjMkd3XZbNwQNX/C
         8p/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=x6QnOdW1Ed+19rND4rqmb72+ifx6DDdAv8zO2BAx1OI=;
        b=seKYK3CxIprLEeTNGJr2m0jyQWDN9HzLdtd1pXHeM7wpkOxuPDdF0bgPuvCLLQDgV5
         9Yzi0RJquaEu1aNNrG1E1CdPKJFwwSfgIhwARvoHw/yvOXdYqkP8mKYxNAOjD4BAiZAY
         Jzntl1Nu36Bx5NIZm6VaOszoaiFNyl5/dI7QAHnjfKtWMPtG6Kt0YFn+e+DT4AQtEQZI
         wZxTEuvG4k7rBzo6rDmif0P/xD1r1N80JaJAMmQQCH+C6FfNJ9hZPMoP05ttSbkonkGv
         YpzF3Q7n/TUcpKiUuSI7TEjls0DxZtCdFAb71iRNZZi9StNs3RIn5O7xKetX/D7vPZzt
         aYhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id g12si166339plm.2.2019.09.20.12.53.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Sep 2019 12:53:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Sep 2019 12:53:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; 
   d="gz'50?scan'50,208,50";a="339072460"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 20 Sep 2019 12:53:32 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iBOyC-000BpD-5m; Sat, 21 Sep 2019 03:53:32 +0800
Date: Sat, 21 Sep 2019 03:52:49 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [mark-rutland:arm64/kcsan 1/2] vgetcpu.c:(.text+0x10): multiple
 definition of `kcsan_end_atomic';
 arch/x86/entry/vdso/vclock_gettime.o:vclock_gettime.c:(.text+0x10): first
 defined here
Message-ID: <201909210346.EgVhxKza%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ghso5vc2g4z3qki5"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--ghso5vc2g4z3qki5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Mark Rutland <mark.rutland@arm.com>

Hi Mark,

First bad commit (maybe != root cause):

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/mark/linux.git arm64/kcsan
head:   8be50891d505fce67f46244c1201ac390a0ad1ad
commit: 339d212d4ec937c7055d5360a898b6011ff1e78d [1/2] kcsan: add stub definition of kcsan_atomic_next()
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        git checkout 339d212d4ec937c7055d5360a898b6011ff1e78d
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld: arch/x86/entry/vdso/vgetcpu.o: in function `kcsan_begin_atomic':
>> vgetcpu.c:(.text+0x0): multiple definition of `kcsan_begin_atomic'; arch/x86/entry/vdso/vclock_gettime.o:vclock_gettime.c:(.text+0x0): first defined here
   ld: arch/x86/entry/vdso/vgetcpu.o: in function `kcsan_end_atomic':
>> vgetcpu.c:(.text+0x10): multiple definition of `kcsan_end_atomic'; arch/x86/entry/vdso/vclock_gettime.o:vclock_gettime.c:(.text+0x10): first defined here
   ld: arch/x86/entry/vdso/vgetcpu.o: in function `kcsan_atomic_next':
>> vgetcpu.c:(.text+0x20): multiple definition of `kcsan_atomic_next'; arch/x86/entry/vdso/vclock_gettime.o:vclock_gettime.c:(.text+0x20): first defined here
   objdump: 'arch/x86/entry/vdso/vdso64.so.dbg': No such file

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201909210346.EgVhxKza%25lkp%40intel.com.

--ghso5vc2g4z3qki5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ghso5vc2g4z3qki5--
