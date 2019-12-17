Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBI5Z4TXQKGQENVM4QFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7D61234AC
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 19:21:24 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id t10sf4691220otc.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 10:21:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576606883; cv=pass;
        d=google.com; s=arc-20160816;
        b=jCxkEvrYrRE0rAdvswUpPd299zudKl+2o/6mh0d8dRl8XE1mcwFtSjzxpLNGu8Rk9Z
         c62iquqy+J6L4tTO/7YiQW3mzP1+kg19J8lRR9oFwA3rFSOyH6TrNfq0i69Boed2TkNL
         ARCSK3SJiI4oxxsI0mUbfvVRdmOl14z9jhQSdn+j8kl5MsGXO7aCkCsBceol4LWT15xh
         3E/Ge8la0RxCkDKRiL9p2AHSPar8tZQz/orOWiCDdffpfMSEy7yxd5xs/upJDUWWG/O6
         +62jdF1DzDwbMVIyD+BLLZbpv0hMz3U4GdiLH4+Bn869zMxIOFmhmCpHmIWaBafdMfez
         rgXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=1iuIqIpz6u2bgIt6RSH+IUKoMdNZMXdJNOFCjE8vY3s=;
        b=KmtT7fKWBgQFFFYZlyOryDhPcB6Yt42M3cGzOvU6+vbJW8LCnBDsncEBcCjxGvubXs
         rborhhR+TYTZBQ75tYOKSJcNKMrmcSbTS/VEc8Xyh/7kAB8+6AXTyoeF8H+BoMn5G8x+
         e3rNV+oeEySUqJaOfJ7uzhw8os7C24bNwn5qt60HNg1gEBt/3rQsTRl3BAxPQcgQzLJ7
         O6Qw0w7xyuQF19oJ2vwjD0sN3vsoKcdDpplJpBOQPhtXXfrlINjKFcOjt0qm1Gpqbws0
         u9NePpYSfkUZIqGklW0KakKjwwsCVCwAegQYBVOD4zzARvAKJ9b8TcN3CeYZiz8PHBoZ
         NAwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PneOBYDt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1iuIqIpz6u2bgIt6RSH+IUKoMdNZMXdJNOFCjE8vY3s=;
        b=IsJ3XnI9uyMlzENBoYgxv3GKeVZSaTQudqCH6/t8ign7pDoZ1hZJ/Z2FvG16iVulwF
         pnmguTv8p/CgkifTzCImVjUimAA0rmUbD1IR3C0GNjAzaiwZTZjO/FPloQQOPirIh1/W
         PhfEzavqpFbDXEKlf7nM07yJnBLBX7j64Z5sHiJtJhO9gvbOYP9/exwDWRQDf4bLl29p
         PvNQsaLzTgisatuXbSptk4C7w+RKFExRdqPdmc9YvUeahz/UTXGJ4vQKr4+sya//SF+B
         CJvy5ejJq7GFDT5rbqnlxG8jbXw8sdEF0fYe43VWIq9OqIUf9BB7GKpIj68Djyzwa7fg
         GpGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1iuIqIpz6u2bgIt6RSH+IUKoMdNZMXdJNOFCjE8vY3s=;
        b=CkIDjmaNqU87xu+48IeoMItq2zk4G2l7BKBt4GpV6GxCB3jZwoqb4lkf4CT5H4Pn6I
         J3PjCX3Jw234aYyoFdCc6l0GFZJj9HgPfrnznDtT6JMixDVGR5JtEUDwKWN7MZYG9yKo
         lRxcJHN1hpmmVdh0YSawB+WgDYkmIfeyubuhvq/laRlqOhLSLENbYh3RUH9wMZBQ6zRR
         KtuRtmwpcIzAoJaphgXHYmRWQXThuBZazkQR7JMM0FEXy8bak19O8n6kdEltjAk3IiZs
         HStIR06Ed1Ndm4SBr0E5xuQDkdSTzij2D790I4tah8qMm9vIg/8nOCjSJxPjCXK5MzSl
         bf7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1iuIqIpz6u2bgIt6RSH+IUKoMdNZMXdJNOFCjE8vY3s=;
        b=Cjht7kv1tCwNvGKuTRfwW890tfXxGZTybAhRHH0sXpj5vEppOYg6QoGhP/Qs5D8j9M
         c3aWAg0RiiFFP/DhqvN3oP3vGwXkOKG0c+lcwuLeCqqEXrMkR5uSoV7ZRK9O6JrsrgGv
         KnURjLa04l5Sj77KkCiy4qNOOWs+Eu1daf0uBsbW5aSUsUE27wHhjZC0+ow+zVuR3nLa
         pKEMEk2P6YC1iUYtkdB3t3fXg5tmj9JjfO4WCwoJW2QLswXhClrkHIX3di8oYKru8fiu
         TocXnMmm9+GqbihImLEPsxS7IWdpcifgLaIeZNo0qGQvJvTRd97M8IwUbBbBAAcZIkff
         2/TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUdnzhBbVZpeZkzAsZhVebJHmJLvqhFwGlNHSP9gWTEXchudQiu
	tYUXY8VNDd4M39uu2ZF37ro=
X-Google-Smtp-Source: APXvYqxL81/RHkfpbNfDpDsIlBWzE9GSAF3m5EfAql4kdXGS2KOIHwfnlXfWssEsvcQfLm3AXymZug==
X-Received: by 2002:a05:6830:1097:: with SMTP id y23mr38348219oto.332.1576606883419;
        Tue, 17 Dec 2019 10:21:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4919:: with SMTP id e25ls5913194otf.7.gmail; Tue, 17 Dec
 2019 10:21:22 -0800 (PST)
X-Received: by 2002:a9d:4d8a:: with SMTP id u10mr40161323otk.232.1576606882924;
        Tue, 17 Dec 2019 10:21:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576606882; cv=none;
        d=google.com; s=arc-20160816;
        b=vZ8kBaR80dwTN7sDNzCE1/nZp2aAM808ZTsdOHUaxONFvJRkm6ShIpvTYgJgzyKash
         40Ev65bwwSJTKUUO5/hl52ajUS+p3SJEuZu1qQvT1OxbEmyfGrXrudYW+PGbBEaPGnHU
         hbBacFRHeILYKKq3qWEMXho+wA0IatifOKDY4wjAsQFZxWAVI5D0+G9XVK93GlB6TI3Y
         BpG7hkWb7UqLZg2b4E81FRMjuJtPurll1NL/pmlErhRhYJiu4S5gTRqy37wKZDmsArnA
         tDFlvqQHqqr12TIkAH6TA9KDdjcigtgnyfUZynacgp25gwRzbZgoNO3SFM9CnrHRQHKb
         +YkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7Mw2ErST8z7hRqxD4IArnntQDuMjeS/y9PmyL5hRjP8=;
        b=yu9k3/9p81S2qNJwA4ZjDgayIAu3nFqZd2eWDEovkm2sqSYaYrjdUvg0gWERGfqgFu
         rbCNJgS147Frabfi1onB/Dmjd82uOTevWS+yazN+aixHPdxYWt/3jfixr3/aKAXKTs71
         KvtzjK19tzfRou+1J30BPVa7SxFOVX6j27TP099VO5A1ZTXw1Z15rR2LNCJNTofJqwa0
         aVq+67jr8AIN2jncTGE2wMVx+8aJW0XYxITcEa3v1a6PJzdO550PEzojZjbdg62D6siG
         xSTJwMtJf24xXJINeWvpJIjrYX2MooVglrXjnF1S/gzGNRbsW0RaSvKXKzgKaGRmfseN
         SyTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PneOBYDt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com. [2607:f8b0:4864:20::329])
        by gmr-mx.google.com with ESMTPS id l1si1028944otn.1.2019.12.17.10.21.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 10:21:22 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) client-ip=2607:f8b0:4864:20::329;
Received: by mail-ot1-x329.google.com with SMTP id a15so1774598otf.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 10:21:22 -0800 (PST)
X-Received: by 2002:a9d:4c88:: with SMTP id m8mr38357391otf.12.1576606882058;
        Tue, 17 Dec 2019 10:21:22 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b5sm8268659otl.13.2019.12.17.10.21.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Dec 2019 10:21:21 -0800 (PST)
Date: Tue, 17 Dec 2019 11:21:19 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
	TCWG Validation <tcwg-validation@linaro.org>,
	Arnd Bergmann <arnd@linaro.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	CI Notify <ci_notify@linaro.org>, Will Deacon <will@kernel.org>,
	Alex Deucher <alexdeucher@gmail.com>,
	"Koenig, Christian" <christian.koenig@amd.com>,
	"Zhou, David(ChunMing)" <David1.Zhou@amd.com>,
	amd-gfx list <amd-gfx@lists.freedesktop.org>
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allmodconfig - Build # 48 -
 Successful!
Message-ID: <20191217182119.GA3357@ubuntu-m2-xlarge-x86>
References: <112215220.5289.1576595244770.JavaMail.javamailuser@localhost>
 <CAKwvOdmPBgbJTgnoX8rJFL_3XrRDpfzuGA7w4fgh7GedNfydPw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmPBgbJTgnoX8rJFL_3XrRDpfzuGA7w4fgh7GedNfydPw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PneOBYDt;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Dec 17, 2019 at 09:19:37AM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> Bhawanpreet, I suspect you're missing the header to include udelay in
> drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c.
> Can you please send a fix for this?
> 

arm allyesconfig is also broken at link time, which I reported here
previously:

https://lists.freedesktop.org/archives/amd-gfx/2019-November/043109.html

ld.lld: error: undefined symbol: __bad_udelay
>>> referenced by hdcp2_execution.c
>>>               gpu/drm/amd/display/modules/hdcp/hdcp2_execution.o:(locality_check) in archive drivers/built-in.a
>>> referenced by hdcp2_execution.c
>>>               gpu/drm/amd/display/modules/hdcp/hdcp2_execution.o:(poll_l_prime_available) in archive drivers/built-in.a
>>> referenced by hdcp2_execution.c
>>>               gpu/drm/amd/display/modules/hdcp/hdcp2_execution.o:(poll_l_prime_available) in archive drivers/built-in.a
>>> referenced by hdcp2_execution.c
>>>               gpu/drm/amd/display/modules/hdcp/hdcp2_execution.o:(poll_l_prime_available) in archive drivers/built-in.a
>>> referenced by hdcp2_execution.c
>>>               gpu/drm/amd/display/modules/hdcp/hdcp2_execution.o:(poll_l_prime_available) in archive drivers/built-in.a
>>> referenced by hdcp2_execution.c
>>>               gpu/drm/amd/display/modules/hdcp/hdcp2_execution.o:(poll_l_prime_available) in archive drivers/built-in.a

> On Tue, Dec 17, 2019 at 7:07 AM <ci_notify@linaro.org> wrote:
> >
> > Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allmodconfig.  So far, this commit has regressed CI configurations:
> >  - tcwg_kernel/gnu-release-aarch64-next-allmodconfig
> >  - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
> >  - tcwg_kernel/llvm-master-arm-next-allmodconfig
> >  - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
> >  - tcwg_kernel/llvm-release-arm-next-allmodconfig
> >
> > Culprit:
> > <cut>
> > commit 51466b3fd2725bfb0de629f71c0854ff276d50ae
> > Author: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
> >
> >     drm/amd/display: Add execution and transition states for HDCP2.2
> > </cut>
> >
> > First few errors in logs of first_bad:
> > 00:03:03 drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c:162:4: error: implicit declaration of function 'udelay' [-Werror,-Wimplicit-function-declaration]
> > 00:03:03 drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c:472:3: error: implicit declaration of function 'udelay' [-Werror,-Wimplicit-function-declaration]
> > 00:03:03 make[4]: *** [drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.o] Error 1
> > 00:03:06 make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2
> > 00:03:26 make[2]: *** [drivers/gpu/drm] Error 2
> > 00:03:26 make[1]: *** [drivers/gpu] Error 2
> > 00:04:14 make: *** [drivers] Error 2
> > Configuration details:
> > rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> > rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> > rr[linux_branch]="32b8acf85223448973ca0bf0ee8149a01410f3a0"
> >
> > Results regressed to (for first_bad == 51466b3fd2725bfb0de629f71c0854ff276d50ae)
> > reset_artifacts:
> > -10
> > build_llvm:
> > -1
> > linux_n_obj:
> > 18938
> >
> > from (for last_good == eff682f83c9c2030761e7536c5d97e1b20f71c15)
> > reset_artifacts:
> > -10
> > build_llvm:
> > -1
> > linux_n_obj:
> > 25911
> > linux build successful:
> > all
> >
> > Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/48/artifact/artifacts/build-51466b3fd2725bfb0de629f71c0854ff276d50ae/
> > Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/48/artifact/artifacts/build-eff682f83c9c2030761e7536c5d97e1b20f71c15/
> > Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/48/
> >
> > Reproduce builds:
> > <cut>
> > mkdir investigate-linux-51466b3fd2725bfb0de629f71c0854ff276d50ae
> > cd investigate-linux-51466b3fd2725bfb0de629f71c0854ff276d50ae
> >
> > git clone https://git.linaro.org/toolchain/jenkins-scripts
> >
> > mkdir -p artifacts/manifests
> > curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/48/artifact/artifacts/manifests/build-baseline.sh
> > curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/48/artifact/artifacts/manifests/build-parameters.sh
> > curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/48/artifact/artifacts/test.sh
> > chmod +x artifacts/test.sh
> >
> > # Reproduce the baseline build (build all pre-requisites)
> > ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
> >
> > cd linux
> >
> > # Reproduce first_bad build
> > git checkout --detach 51466b3fd2725bfb0de629f71c0854ff276d50ae
> > ../artifacts/test.sh
> >
> > # Reproduce last_good build
> > git checkout --detach eff682f83c9c2030761e7536c5d97e1b20f71c15
> > ../artifacts/test.sh
> >
> > cd ..
> > </cut>
> >
> > History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allmodconfig
> >
> > Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/48/artifact/artifacts/
> > Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/48/consoleText
> >
> > Full commit:
> > <cut>
> > commit 51466b3fd2725bfb0de629f71c0854ff276d50ae
> > Author: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
> > Date:   Wed Sep 18 11:18:15 2019 -0400
> >
> >     drm/amd/display: Add execution and transition states for HDCP2.2
> >
> >     The module works like a state machine
> >
> >                                         +-------------+
> >                                 ------> | Execution.c | ------
> >                                 |       +-------------+       |
> >                                 |                             V
> >         +----+              +--------+                 +--------------+
> >         | DM |    ----->    | Hdcp.c |  <------------  | Transition.c |
> >         +----+    <-----    +--------+                 +--------------+
> >
> >     This patch adds the execution and transition files for 2.2
> >
> >     Signed-off-by: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
> >     Reviewed-by: Harry Wentland <harry.wentland@amd.com>
> >     Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
> > ---
> >  drivers/gpu/drm/amd/display/modules/hdcp/Makefile  |   3 +-
> >  drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c    |  86 +-
> >  drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h    | 127 +++
> >  .../drm/amd/display/modules/hdcp/hdcp2_execution.c | 881 +++++++++++++++++++++
> >  .../amd/display/modules/hdcp/hdcp2_transition.c    | 674 ++++++++++++++++
> >  drivers/gpu/drm/amd/display/modules/inc/mod_hdcp.h |   2 +
> >  6 files changed, 1764 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/Makefile b/drivers/gpu/drm/amd/display/modules/hdcp/Makefile
> > index 1c3c6d47973a..904424da01b5 100644
> > --- a/drivers/gpu/drm/amd/display/modules/hdcp/Makefile
> > +++ b/drivers/gpu/drm/amd/display/modules/hdcp/Makefile
> > @@ -24,7 +24,8 @@
> >  #
> >
> >  HDCP = hdcp_ddc.o hdcp_log.o hdcp_psp.o hdcp.o \
> > -               hdcp1_execution.o hdcp1_transition.o
> > +               hdcp1_execution.o hdcp1_transition.o \
> > +               hdcp2_execution.o hdcp2_transition.o
> >
> >  AMD_DAL_HDCP = $(addprefix $(AMDDALPATH)/modules/hdcp/,$(HDCP))
> >  #$(info ************  DAL-HDCP_MAKEFILE ************)
> > diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c
> > index d7ac445dec6f..a74812977963 100644
> > --- a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c
> > +++ b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c
> > @@ -37,24 +37,52 @@ static void push_error_status(struct mod_hdcp *hdcp,
> >                 HDCP_ERROR_TRACE(hdcp, status);
> >         }
> >
> > -       hdcp->connection.hdcp1_retry_count++;
> > +       if (is_hdcp1(hdcp)) {
> > +               hdcp->connection.hdcp1_retry_count++;
> > +       } else if (is_hdcp2(hdcp)) {
> > +               hdcp->connection.hdcp2_retry_count++;
> > +       }
> >  }
> >
> >  static uint8_t is_cp_desired_hdcp1(struct mod_hdcp *hdcp)
> >  {
> > -       int i, display_enabled = 0;
> > +       int i, is_auth_needed = 0;
> >
> > -       /* if all displays on the link are disabled, hdcp is not desired */
> > +       /* if all displays on the link don't need authentication,
> > +        * hdcp is not desired
> > +        */
> >         for (i = 0; i < MAX_NUM_OF_DISPLAYS; i++) {
> >                 if (hdcp->connection.displays[i].state != MOD_HDCP_DISPLAY_INACTIVE &&
> >                                 !hdcp->connection.displays[i].adjust.disable) {
> > -                       display_enabled = 1;
> > +                       is_auth_needed = 1;
> >                         break;
> >                 }
> >         }
> >
> >         return (hdcp->connection.hdcp1_retry_count < MAX_NUM_OF_ATTEMPTS) &&
> > -                       display_enabled && !hdcp->connection.link.adjust.hdcp1.disable;
> > +                       is_auth_needed &&
> > +                       !hdcp->connection.link.adjust.hdcp1.disable;
> > +}
> > +
> > +static uint8_t is_cp_desired_hdcp2(struct mod_hdcp *hdcp)
> > +{
> > +       int i, is_auth_needed = 0;
> > +
> > +       /* if all displays on the link don't need authentication,
> > +        * hdcp is not desired
> > +        */
> > +       for (i = 0; i < MAX_NUM_OF_DISPLAYS; i++) {
> > +               if (hdcp->connection.displays[i].state != MOD_HDCP_DISPLAY_INACTIVE &&
> > +                               !hdcp->connection.displays[i].adjust.disable) {
> > +                       is_auth_needed = 1;
> > +                       break;
> > +               }
> > +       }
> > +
> > +       return (hdcp->connection.hdcp2_retry_count < MAX_NUM_OF_ATTEMPTS) &&
> > +                       is_auth_needed &&
> > +                       !hdcp->connection.link.adjust.hdcp2.disable &&
> > +                       !hdcp->connection.is_hdcp2_revoked;
> >  }
> >
> >  static enum mod_hdcp_status execution(struct mod_hdcp *hdcp,
> > @@ -82,6 +110,11 @@ static enum mod_hdcp_status execution(struct mod_hdcp *hdcp,
> >         } else if (is_in_hdcp1_dp_states(hdcp)) {
> >                 status = mod_hdcp_hdcp1_dp_execution(hdcp,
> >                                 event_ctx, &input->hdcp1);
> > +       } else if (is_in_hdcp2_states(hdcp)) {
> > +               status = mod_hdcp_hdcp2_execution(hdcp, event_ctx, &input->hdcp2);
> > +       } else if (is_in_hdcp2_dp_states(hdcp)) {
> > +               status = mod_hdcp_hdcp2_dp_execution(hdcp,
> > +                               event_ctx, &input->hdcp2);
> >         }
> >  out:
> >         return status;
> > @@ -99,7 +132,10 @@ static enum mod_hdcp_status transition(struct mod_hdcp *hdcp,
> >
> >         if (is_in_initialized_state(hdcp)) {
> >                 if (is_dp_hdcp(hdcp))
> > -                       if (is_cp_desired_hdcp1(hdcp)) {
> > +                       if (is_cp_desired_hdcp2(hdcp)) {
> > +                               callback_in_ms(0, output);
> > +                               set_state_id(hdcp, output, D2_A0_DETERMINE_RX_HDCP_CAPABLE);
> > +                       } else if (is_cp_desired_hdcp1(hdcp)) {
> >                                 callback_in_ms(0, output);
> >                                 set_state_id(hdcp, output, D1_A0_DETERMINE_RX_HDCP_CAPABLE);
> >                         } else {
> > @@ -107,7 +143,10 @@ static enum mod_hdcp_status transition(struct mod_hdcp *hdcp,
> >                                 set_state_id(hdcp, output, HDCP_CP_NOT_DESIRED);
> >                         }
> >                 else if (is_hdmi_dvi_sl_hdcp(hdcp))
> > -                       if (is_cp_desired_hdcp1(hdcp)) {
> > +                       if (is_cp_desired_hdcp2(hdcp)) {
> > +                               callback_in_ms(0, output);
> > +                               set_state_id(hdcp, output, H2_A0_KNOWN_HDCP2_CAPABLE_RX);
> > +                       } else if (is_cp_desired_hdcp1(hdcp)) {
> >                                 callback_in_ms(0, output);
> >                                 set_state_id(hdcp, output, H1_A0_WAIT_FOR_ACTIVE_RX);
> >                         } else {
> > @@ -126,6 +165,12 @@ static enum mod_hdcp_status transition(struct mod_hdcp *hdcp,
> >         } else if (is_in_hdcp1_dp_states(hdcp)) {
> >                 status = mod_hdcp_hdcp1_dp_transition(hdcp,
> >                                 event_ctx, &input->hdcp1, output);
> > +       } else if (is_in_hdcp2_states(hdcp)) {
> > +               status = mod_hdcp_hdcp2_transition(hdcp,
> > +                               event_ctx, &input->hdcp2, output);
> > +       } else if (is_in_hdcp2_dp_states(hdcp)) {
> > +               status = mod_hdcp_hdcp2_dp_transition(hdcp,
> > +                               event_ctx, &input->hdcp2, output);
> >         } else {
> >                 status = MOD_HDCP_STATUS_INVALID_STATE;
> >         }
> > @@ -139,9 +184,13 @@ static enum mod_hdcp_status reset_authentication(struct mod_hdcp *hdcp,
> >         enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> >
> >         if (is_hdcp1(hdcp)) {
> > -               if (hdcp->auth.trans_input.hdcp1.create_session != UNKNOWN)
> > +               if (hdcp->auth.trans_input.hdcp1.create_session != UNKNOWN) {
> > +                       /* TODO - update psp to unify create session failure
> > +                        * recovery between hdcp1 and 2.
> > +                        */
> >                         mod_hdcp_hdcp1_destroy_session(hdcp);
> >
> > +               }
> >                 if (hdcp->auth.trans_input.hdcp1.add_topology == PASS) {
> >                         status = mod_hdcp_remove_display_topology(hdcp);
> >                         if (status != MOD_HDCP_STATUS_SUCCESS) {
> > @@ -154,6 +203,27 @@ static enum mod_hdcp_status reset_authentication(struct mod_hdcp *hdcp,
> >                 memset(&hdcp->auth, 0, sizeof(struct mod_hdcp_authentication));
> >                 memset(&hdcp->state, 0, sizeof(struct mod_hdcp_state));
> >                 set_state_id(hdcp, output, HDCP_INITIALIZED);
> > +       } else if (is_hdcp2(hdcp)) {
> > +               if (hdcp->auth.trans_input.hdcp2.create_session == PASS) {
> > +                       status = mod_hdcp_hdcp2_destroy_session(hdcp);
> > +                       if (status != MOD_HDCP_STATUS_SUCCESS) {
> > +                               output->callback_needed = 0;
> > +                               output->watchdog_timer_needed = 0;
> > +                               goto out;
> > +                       }
> > +               }
> > +               if (hdcp->auth.trans_input.hdcp2.add_topology == PASS) {
> > +                       status = mod_hdcp_remove_display_topology(hdcp);
> > +                       if (status != MOD_HDCP_STATUS_SUCCESS) {
> > +                               output->callback_needed = 0;
> > +                               output->watchdog_timer_needed = 0;
> > +                               goto out;
> > +                       }
> > +               }
> > +               HDCP_TOP_RESET_AUTH_TRACE(hdcp);
> > +               memset(&hdcp->auth, 0, sizeof(struct mod_hdcp_authentication));
> > +               memset(&hdcp->state, 0, sizeof(struct mod_hdcp_state));
> > +               set_state_id(hdcp, output, HDCP_INITIALIZED);
> >         } else if (is_in_cp_not_desired_state(hdcp)) {
> >                 status = mod_hdcp_remove_display_topology(hdcp);
> >                 if (status != MOD_HDCP_STATUS_SUCCESS) {
> > diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h
> > index d83f0ab1cadb..9887c5ea6d5f 100644
> > --- a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h
> > +++ b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h
> > @@ -44,11 +44,13 @@
> >  #define BINFO_MAX_DEVS_EXCEEDED_MASK_DP                        0x0080
> >  #define BINFO_MAX_CASCADE_EXCEEDED_MASK_DP             0x0800
> >
> > +#define VERSION_HDCP2_MASK                             0x04
> >  #define RXSTATUS_MSG_SIZE_MASK                         0x03FF
> >  #define RXSTATUS_READY_MASK                            0x0400
> >  #define RXSTATUS_REAUTH_REQUEST_MASK                   0x0800
> >  #define RXIDLIST_DEVICE_COUNT_LOWER_MASK               0xf0
> >  #define RXIDLIST_DEVICE_COUNT_UPPER_MASK               0x01
> > +#define RXCAPS_BYTE2_HDCP2_VERSION_DP                  0x02
> >  #define RXCAPS_BYTE0_HDCP_CAPABLE_MASK_DP              0x02
> >  #define RXSTATUS_READY_MASK_DP                         0x0001
> >  #define RXSTATUS_H_P_AVAILABLE_MASK_DP                 0x0002
> > @@ -92,8 +94,52 @@ struct mod_hdcp_transition_input_hdcp1 {
> >         uint8_t stream_encryption_dp;
> >  };
> >
> > +struct mod_hdcp_transition_input_hdcp2 {
> > +       uint8_t hdcp2version_read;
> > +       uint8_t hdcp2_capable_check;
> > +       uint8_t add_topology;
> > +       uint8_t create_session;
> > +       uint8_t ake_init_prepare;
> > +       uint8_t ake_init_write;
> > +       uint8_t rxstatus_read;
> > +       uint8_t ake_cert_available;
> > +       uint8_t ake_cert_read;
> > +       uint8_t ake_cert_validation;
> > +       uint8_t stored_km_write;
> > +       uint8_t no_stored_km_write;
> > +       uint8_t h_prime_available;
> > +       uint8_t h_prime_read;
> > +       uint8_t pairing_available;
> > +       uint8_t pairing_info_read;
> > +       uint8_t h_prime_validation;
> > +       uint8_t lc_init_prepare;
> > +       uint8_t lc_init_write;
> > +       uint8_t l_prime_available_poll;
> > +       uint8_t l_prime_read;
> > +       uint8_t l_prime_validation;
> > +       uint8_t eks_prepare;
> > +       uint8_t eks_write;
> > +       uint8_t enable_encryption;
> > +       uint8_t reauth_request_check;
> > +       uint8_t rx_id_list_read;
> > +       uint8_t device_count_check;
> > +       uint8_t rx_id_list_validation;
> > +       uint8_t repeater_auth_ack_write;
> > +       uint8_t prepare_stream_manage;
> > +       uint8_t stream_manage_write;
> > +       uint8_t stream_ready_available;
> > +       uint8_t stream_ready_read;
> > +       uint8_t stream_ready_validation;
> > +
> > +       uint8_t rx_caps_read_dp;
> > +       uint8_t content_stream_type_write;
> > +       uint8_t link_integrity_check_dp;
> > +       uint8_t stream_encryption_dp;
> > +};
> > +
> >  union mod_hdcp_transition_input {
> >         struct mod_hdcp_transition_input_hdcp1 hdcp1;
> > +       struct mod_hdcp_transition_input_hdcp2 hdcp2;
> >  };
> >
> >  struct mod_hdcp_message_hdcp1 {
> > @@ -150,8 +196,10 @@ struct mod_hdcp_connection {
> >         struct mod_hdcp_display displays[MAX_NUM_OF_DISPLAYS];
> >         uint8_t is_repeater;
> >         uint8_t is_km_stored;
> > +       uint8_t is_hdcp2_revoked;
> >         struct mod_hdcp_trace trace;
> >         uint8_t hdcp1_retry_count;
> > +       uint8_t hdcp2_retry_count;
> >  };
> >
> >  /* contains values per authentication cycle */
> > @@ -219,6 +267,50 @@ enum mod_hdcp_hdcp1_dp_state_id {
> >         HDCP1_DP_STATE_END = D1_A7_READ_KSV_LIST,
> >  };
> >
> > +enum mod_hdcp_hdcp2_state_id {
> > +       HDCP2_STATE_START = HDCP1_DP_STATE_END,
> > +       H2_A0_KNOWN_HDCP2_CAPABLE_RX,
> > +       H2_A1_SEND_AKE_INIT,
> > +       H2_A1_VALIDATE_AKE_CERT,
> > +       H2_A1_SEND_NO_STORED_KM,
> > +       H2_A1_READ_H_PRIME,
> > +       H2_A1_READ_PAIRING_INFO_AND_VALIDATE_H_PRIME,
> > +       H2_A1_SEND_STORED_KM,
> > +       H2_A1_VALIDATE_H_PRIME,
> > +       H2_A2_LOCALITY_CHECK,
> > +       H2_A3_EXCHANGE_KS_AND_TEST_FOR_REPEATER,
> > +       H2_ENABLE_ENCRYPTION,
> > +       H2_A5_AUTHENTICATED,
> > +       H2_A6_WAIT_FOR_RX_ID_LIST,
> > +       H2_A78_VERIFY_RX_ID_LIST_AND_SEND_ACK,
> > +       H2_A9_SEND_STREAM_MANAGEMENT,
> > +       H2_A9_VALIDATE_STREAM_READY,
> > +       HDCP2_STATE_END = H2_A9_VALIDATE_STREAM_READY,
> > +};
> > +
> > +enum mod_hdcp_hdcp2_dp_state_id {
> > +       HDCP2_DP_STATE_START = HDCP2_STATE_END,
> > +       D2_A0_DETERMINE_RX_HDCP_CAPABLE,
> > +       D2_A1_SEND_AKE_INIT,
> > +       D2_A1_VALIDATE_AKE_CERT,
> > +       D2_A1_SEND_NO_STORED_KM,
> > +       D2_A1_READ_H_PRIME,
> > +       D2_A1_READ_PAIRING_INFO_AND_VALIDATE_H_PRIME,
> > +       D2_A1_SEND_STORED_KM,
> > +       D2_A1_VALIDATE_H_PRIME,
> > +       D2_A2_LOCALITY_CHECK,
> > +       D2_A34_EXCHANGE_KS_AND_TEST_FOR_REPEATER,
> > +       D2_SEND_CONTENT_STREAM_TYPE,
> > +       D2_ENABLE_ENCRYPTION,
> > +       D2_A5_AUTHENTICATED,
> > +       D2_A6_WAIT_FOR_RX_ID_LIST,
> > +       D2_A78_VERIFY_RX_ID_LIST_AND_SEND_ACK,
> > +       D2_A9_SEND_STREAM_MANAGEMENT,
> > +       D2_A9_VALIDATE_STREAM_READY,
> > +       HDCP2_DP_STATE_END = D2_A9_VALIDATE_STREAM_READY,
> > +       HDCP_STATE_END = HDCP2_DP_STATE_END,
> > +};
> > +
> >  /* hdcp1 executions and transitions */
> >  typedef enum mod_hdcp_status (*mod_hdcp_action)(struct mod_hdcp *hdcp);
> >  uint8_t mod_hdcp_execute_and_set(
> > @@ -239,6 +331,22 @@ enum mod_hdcp_status mod_hdcp_hdcp1_dp_transition(struct mod_hdcp *hdcp,
> >         struct mod_hdcp_transition_input_hdcp1 *input,
> >         struct mod_hdcp_output *output);
> >
> > +/* hdcp2 executions and transitions */
> > +enum mod_hdcp_status mod_hdcp_hdcp2_execution(struct mod_hdcp *hdcp,
> > +       struct mod_hdcp_event_context *event_ctx,
> > +       struct mod_hdcp_transition_input_hdcp2 *input);
> > +enum mod_hdcp_status mod_hdcp_hdcp2_dp_execution(struct mod_hdcp *hdcp,
> > +       struct mod_hdcp_event_context *event_ctx,
> > +       struct mod_hdcp_transition_input_hdcp2 *input);
> > +enum mod_hdcp_status mod_hdcp_hdcp2_transition(struct mod_hdcp *hdcp,
> > +       struct mod_hdcp_event_context *event_ctx,
> > +       struct mod_hdcp_transition_input_hdcp2 *input,
> > +       struct mod_hdcp_output *output);
> > +enum mod_hdcp_status mod_hdcp_hdcp2_dp_transition(struct mod_hdcp *hdcp,
> > +       struct mod_hdcp_event_context *event_ctx,
> > +       struct mod_hdcp_transition_input_hdcp2 *input,
> > +       struct mod_hdcp_output *output);
> > +
> >  /* log functions */
> >  void mod_hdcp_dump_binary_message(uint8_t *msg, uint32_t msg_size,
> >                 uint8_t *buf, uint32_t buf_size);
> > @@ -289,6 +397,7 @@ enum mod_hdcp_status mod_hdcp_read_binfo(struct mod_hdcp *hdcp);
> >  enum mod_hdcp_status mod_hdcp_write_aksv(struct mod_hdcp *hdcp);
> >  enum mod_hdcp_status mod_hdcp_write_ainfo(struct mod_hdcp *hdcp);
> >  enum mod_hdcp_status mod_hdcp_write_an(struct mod_hdcp *hdcp);
> > +enum mod_hdcp_status mod_hdcp_read_hdcp2version(struct mod_hdcp *hdcp);
> >  enum mod_hdcp_status mod_hdcp_read_rxcaps(struct mod_hdcp *hdcp);
> >  enum mod_hdcp_status mod_hdcp_read_rxstatus(struct mod_hdcp *hdcp);
> >  enum mod_hdcp_status mod_hdcp_read_ake_cert(struct mod_hdcp *hdcp);
> > @@ -352,11 +461,28 @@ static inline uint8_t is_in_hdcp1_dp_states(struct mod_hdcp *hdcp)
> >                         current_state(hdcp) <= HDCP1_DP_STATE_END);
> >  }
> >
> > +static inline uint8_t is_in_hdcp2_states(struct mod_hdcp *hdcp)
> > +{
> > +       return (current_state(hdcp) > HDCP2_STATE_START &&
> > +                       current_state(hdcp) <= HDCP2_STATE_END);
> > +}
> > +
> > +static inline uint8_t is_in_hdcp2_dp_states(struct mod_hdcp *hdcp)
> > +{
> > +       return (current_state(hdcp) > HDCP2_DP_STATE_START &&
> > +                       current_state(hdcp) <= HDCP2_DP_STATE_END);
> > +}
> > +
> >  static inline uint8_t is_hdcp1(struct mod_hdcp *hdcp)
> >  {
> >         return (is_in_hdcp1_states(hdcp) || is_in_hdcp1_dp_states(hdcp));
> >  }
> >
> > +static inline uint8_t is_hdcp2(struct mod_hdcp *hdcp)
> > +{
> > +       return (is_in_hdcp2_states(hdcp) || is_in_hdcp2_dp_states(hdcp));
> > +}
> > +
> >  static inline uint8_t is_in_cp_not_desired_state(struct mod_hdcp *hdcp)
> >  {
> >         return current_state(hdcp) == HDCP_CP_NOT_DESIRED;
> > @@ -481,6 +607,7 @@ static inline struct mod_hdcp_display *get_empty_display_container(
> >  static inline void reset_retry_counts(struct mod_hdcp *hdcp)
> >  {
> >         hdcp->connection.hdcp1_retry_count = 0;
> > +       hdcp->connection.hdcp2_retry_count = 0;
> >  }
> >
> >  #endif /* HDCP_H_ */
> > diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_execution.c b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_execution.c
> > new file mode 100644
> > index 000000000000..c93c8098d972
> > --- /dev/null
> > +++ b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_execution.c
> > @@ -0,0 +1,881 @@
> > +/*
> > + * Copyright 2018 Advanced Micro Devices, Inc.
> > + *
> > + * Permission is hereby granted, free of charge, to any person obtaining a
> > + * copy of this software and associated documentation files (the "Software"),
> > + * to deal in the Software without restriction, including without limitation
> > + * the rights to use, copy, modify, merge, publish, distribute, sublicense,
> > + * and/or sell copies of the Software, and to permit persons to whom the
> > + * Software is furnished to do so, subject to the following conditions:
> > + *
> > + * The above copyright notice and this permission notice shall be included in
> > + * all copies or substantial portions of the Software.
> > + *
> > + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> > + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> > + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
> > + * THE COPYRIGHT HOLDER(S) OR AUTHOR(S) BE LIABLE FOR ANY CLAIM, DAMAGES OR
> > + * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
> > + * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> > + * OTHER DEALINGS IN THE SOFTWARE.
> > + *
> > + * Authors: AMD
> > + *
> > + */
> > +
> > +#include "hdcp.h"
> > +
> > +static inline enum mod_hdcp_status check_receiver_id_list_ready(struct mod_hdcp *hdcp)
> > +{
> > +       uint8_t is_ready = 0;
> > +
> > +       if (is_dp_hdcp(hdcp))
> > +               is_ready = (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_READY_MASK_DP) ? 1 : 0;
> > +       else
> > +               is_ready = ((hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_READY_MASK) &&
> > +                               (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZE_MASK)) ? 1 : 0;
> > +       return is_ready ? MOD_HDCP_STATUS_SUCCESS :
> > +                       MOD_HDCP_STATUS_HDCP2_RX_ID_LIST_NOT_READY;
> > +}
> > +
> > +static inline enum mod_hdcp_status check_hdcp2_capable(struct mod_hdcp *hdcp)
> > +{
> > +       enum mod_hdcp_status status;
> > +
> > +       if (is_dp_hdcp(hdcp))
> > +               status = ((hdcp->auth.msg.hdcp2.rxcaps_dp[2] &
> > +                                               RXCAPS_BYTE0_HDCP_CAPABLE_MASK_DP) &&
> > +                               (hdcp->auth.msg.hdcp2.rxcaps_dp[0] ==
> > +                                               RXCAPS_BYTE2_HDCP2_VERSION_DP)) ?
> > +                               MOD_HDCP_STATUS_SUCCESS :
> > +                               MOD_HDCP_STATUS_HDCP2_NOT_CAPABLE;
> > +       else
> > +               status = (hdcp->auth.msg.hdcp2.hdcp2version_hdmi & VERSION_HDCP2_MASK) ?
> > +                               MOD_HDCP_STATUS_SUCCESS :
> > +                               MOD_HDCP_STATUS_HDCP2_NOT_CAPABLE;
> > +       return status;
> > +}
> > +
> > +static inline enum mod_hdcp_status check_reauthentication_request(
> > +               struct mod_hdcp *hdcp)
> > +{
> > +       uint8_t ret = 0;
> > +
> > +       if (is_dp_hdcp(hdcp))
> > +               ret = (hdcp->auth.msg.hdcp2.rxstatus &
> > +                               RXSTATUS_REAUTH_REQUEST_MASK_DP) ?
> > +                               MOD_HDCP_STATUS_HDCP2_REAUTH_REQUEST :
> > +                               MOD_HDCP_STATUS_SUCCESS;
> > +       else
> > +               ret = (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_REAUTH_REQUEST_MASK) ?
> > +                               MOD_HDCP_STATUS_HDCP2_REAUTH_REQUEST :
> > +                               MOD_HDCP_STATUS_SUCCESS;
> > +       return ret;
> > +}
> > +
> > +static inline enum mod_hdcp_status check_link_integrity_failure_dp(
> > +               struct mod_hdcp *hdcp)
> > +{
> > +       return (hdcp->auth.msg.hdcp2.rxstatus &
> > +                       RXSTATUS_LINK_INTEGRITY_FAILURE_MASK_DP) ?
> > +                       MOD_HDCP_STATUS_HDCP2_REAUTH_LINK_INTEGRITY_FAILURE :
> > +                       MOD_HDCP_STATUS_SUCCESS;
> > +}
> > +
> > +static enum mod_hdcp_status check_ake_cert_available(struct mod_hdcp *hdcp)
> > +{
> > +       enum mod_hdcp_status status;
> > +       uint16_t size;
> > +
> > +       if (is_dp_hdcp(hdcp)) {
> > +               status = MOD_HDCP_STATUS_SUCCESS;
> > +       } else {
> > +               status = mod_hdcp_read_rxstatus(hdcp);
> > +               if (status == MOD_HDCP_STATUS_SUCCESS) {
> > +                       size = hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZE_MASK;
> > +                       status = (size == sizeof(hdcp->auth.msg.hdcp2.ake_cert)) ?
> > +                                       MOD_HDCP_STATUS_SUCCESS :
> > +                                       MOD_HDCP_STATUS_HDCP2_AKE_CERT_PENDING;
> > +               }
> > +       }
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status check_h_prime_available(struct mod_hdcp *hdcp)
> > +{
> > +       enum mod_hdcp_status status;
> > +       uint8_t size;
> > +
> > +       status = mod_hdcp_read_rxstatus(hdcp);
> > +       if (status != MOD_HDCP_STATUS_SUCCESS)
> > +               goto out;
> > +
> > +       if (is_dp_hdcp(hdcp)) {
> > +               status = (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_H_P_AVAILABLE_MASK_DP) ?
> > +                               MOD_HDCP_STATUS_SUCCESS :
> > +                               MOD_HDCP_STATUS_HDCP2_H_PRIME_PENDING;
> > +       } else {
> > +               size = hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZE_MASK;
> > +               status = (size == sizeof(hdcp->auth.msg.hdcp2.ake_h_prime)) ?
> > +                               MOD_HDCP_STATUS_SUCCESS :
> > +                               MOD_HDCP_STATUS_HDCP2_H_PRIME_PENDING;
> > +       }
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status check_pairing_info_available(struct mod_hdcp *hdcp)
> > +{
> > +       enum mod_hdcp_status status;
> > +       uint8_t size;
> > +
> > +       status = mod_hdcp_read_rxstatus(hdcp);
> > +       if (status != MOD_HDCP_STATUS_SUCCESS)
> > +               goto out;
> > +
> > +       if (is_dp_hdcp(hdcp)) {
> > +               status = (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_PAIRING_AVAILABLE_MASK_DP) ?
> > +                               MOD_HDCP_STATUS_SUCCESS :
> > +                               MOD_HDCP_STATUS_HDCP2_PAIRING_INFO_PENDING;
> > +       } else {
> > +               size = hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZE_MASK;
> > +               status = (size == sizeof(hdcp->auth.msg.hdcp2.ake_pairing_info)) ?
> > +                               MOD_HDCP_STATUS_SUCCESS :
> > +                               MOD_HDCP_STATUS_HDCP2_PAIRING_INFO_PENDING;
> > +       }
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status poll_l_prime_available(struct mod_hdcp *hdcp)
> > +{
> > +       enum mod_hdcp_status status;
> > +       uint8_t size;
> > +       uint16_t max_wait = 20000; // units of us
> > +       uint16_t num_polls = 5;
> > +       uint16_t wait_time = max_wait / num_polls;
> > +
> > +       if (is_dp_hdcp(hdcp))
> > +               status = MOD_HDCP_STATUS_INVALID_OPERATION;
> > +       else
> > +               for (; num_polls; num_polls--) {
> > +                       udelay(wait_time);
> > +
> > +                       status = mod_hdcp_read_rxstatus(hdcp);
> > +                       if (status != MOD_HDCP_STATUS_SUCCESS)
> > +                               break;
> > +
> > +                       size = hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZE_MASK;
> > +                       status = (size == sizeof(hdcp->auth.msg.hdcp2.lc_l_prime)) ?
> > +                                       MOD_HDCP_STATUS_SUCCESS :
> > +                                       MOD_HDCP_STATUS_HDCP2_L_PRIME_PENDING;
> > +                       if (status == MOD_HDCP_STATUS_SUCCESS)
> > +                               break;
> > +               }
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status check_stream_ready_available(struct mod_hdcp *hdcp)
> > +{
> > +       enum mod_hdcp_status status;
> > +       uint8_t size;
> > +
> > +       if (is_dp_hdcp(hdcp)) {
> > +               status = MOD_HDCP_STATUS_INVALID_OPERATION;
> > +       } else {
> > +               status = mod_hdcp_read_rxstatus(hdcp);
> > +               if (status != MOD_HDCP_STATUS_SUCCESS)
> > +                       goto out;
> > +               size = hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZE_MASK;
> > +               status = (size == sizeof(hdcp->auth.msg.hdcp2.repeater_auth_stream_ready)) ?
> > +                               MOD_HDCP_STATUS_SUCCESS :
> > +                               MOD_HDCP_STATUS_HDCP2_STREAM_READY_PENDING;
> > +       }
> > +out:
> > +       return status;
> > +}
> > +
> > +static inline uint8_t get_device_count(struct mod_hdcp *hdcp)
> > +{
> > +       return ((hdcp->auth.msg.hdcp2.rx_id_list[2] & RXIDLIST_DEVICE_COUNT_LOWER_MASK) >> 4) +
> > +               ((hdcp->auth.msg.hdcp2.rx_id_list[1] & RXIDLIST_DEVICE_COUNT_UPPER_MASK) << 4);
> > +}
> > +
> > +static enum mod_hdcp_status check_device_count(struct mod_hdcp *hdcp)
> > +{
> > +       /* device count must be greater than or equal to tracked hdcp displays */
> > +       return (get_device_count(hdcp) < get_added_display_count(hdcp)) ?
> > +                       MOD_HDCP_STATUS_HDCP2_DEVICE_COUNT_MISMATCH_FAILURE :
> > +                       MOD_HDCP_STATUS_SUCCESS;
> > +}
> > +
> > +static uint8_t process_rxstatus(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input,
> > +               enum mod_hdcp_status *status)
> > +{
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_rxstatus,
> > +                       &input->rxstatus_read, status,
> > +                       hdcp, "rxstatus_read"))
> > +               goto out;
> > +       if (!mod_hdcp_execute_and_set(check_reauthentication_request,
> > +                       &input->reauth_request_check, status,
> > +                       hdcp, "reauth_request_check"))
> > +               goto out;
> > +       if (is_dp_hdcp(hdcp)) {
> > +               if (!mod_hdcp_execute_and_set(check_link_integrity_failure_dp,
> > +                               &input->link_integrity_check_dp, status,
> > +                               hdcp, "link_integrity_check_dp"))
> > +                       goto out;
> > +       }
> > +       if (hdcp->connection.is_repeater)
> > +               if (check_receiver_id_list_ready(hdcp) ==
> > +                               MOD_HDCP_STATUS_SUCCESS) {
> > +                       HDCP_INPUT_PASS_TRACE(hdcp, "rx_id_list_ready");
> > +                       event_ctx->rx_id_list_ready = 1;
> > +                       if (is_dp_hdcp(hdcp))
> > +                               hdcp->auth.msg.hdcp2.rx_id_list_size =
> > +                                               sizeof(hdcp->auth.msg.hdcp2.rx_id_list);
> > +                       else
> > +                               hdcp->auth.msg.hdcp2.rx_id_list_size =
> > +                                               hdcp->auth.msg.hdcp2.rxstatus & 0x3FF;
> > +               }
> > +out:
> > +       return (*status == MOD_HDCP_STATUS_SUCCESS);
> > +}
> > +
> > +static enum mod_hdcp_status known_hdcp2_capable_rx(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > +{
> > +       enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> > +
> > +       if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK) {
> > +               event_ctx->unexpected_event = 1;
> > +               goto out;
> > +       }
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_hdcp2version,
> > +                       &input->hdcp2version_read, &status,
> > +                       hdcp, "hdcp2version_read"))
> > +               goto out;
> > +       if (!mod_hdcp_execute_and_set(check_hdcp2_capable,
> > +                       &input->hdcp2_capable_check, &status,
> > +                       hdcp, "hdcp2_capable"))
> > +               goto out;
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status send_ake_init(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > +{
> > +       enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> > +
> > +       if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK) {
> > +               event_ctx->unexpected_event = 1;
> > +               goto out;
> > +       }
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_add_display_topology,
> > +                       &input->add_topology, &status,
> > +                       hdcp, "add_topology"))
> > +               goto out;
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_create_session,
> > +                       &input->create_session, &status,
> > +                       hdcp, "create_session"))
> > +               goto out;
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_prepare_ake_init,
> > +                       &input->ake_init_prepare, &status,
> > +                       hdcp, "ake_init_prepare"))
> > +               goto out;
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_write_ake_init,
> > +                       &input->ake_init_write, &status,
> > +                       hdcp, "ake_init_write"))
> > +               goto out;
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status validate_ake_cert(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > +{
> > +       enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> > +
> > +
> > +       if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
> > +                       event_ctx->event != MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {
> > +               event_ctx->unexpected_event = 1;
> > +               goto out;
> > +       }
> > +
> > +       if (is_hdmi_dvi_sl_hdcp(hdcp))
> > +               if (!mod_hdcp_execute_and_set(check_ake_cert_available,
> > +                               &input->ake_cert_available, &status,
> > +                               hdcp, "ake_cert_available"))
> > +                       goto out;
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_ake_cert,
> > +                       &input->ake_cert_read, &status,
> > +                       hdcp, "ake_cert_read"))
> > +               goto out;
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_validate_ake_cert,
> > +                       &input->ake_cert_validation, &status,
> > +                       hdcp, "ake_cert_validation"))
> > +               goto out;
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status send_no_stored_km(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > +{
> > +       enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> > +
> > +       if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK) {
> > +               event_ctx->unexpected_event = 1;
> > +               goto out;
> > +       }
> > +
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_write_no_stored_km,
> > +                       &input->no_stored_km_write, &status,
> > +                       hdcp, "no_stored_km_write"))
> > +               goto out;
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status read_h_prime(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > +{
> > +       enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> > +
> > +       if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
> > +                       event_ctx->event != MOD_HDCP_EVENT_CPIRQ &&
> > +                       event_ctx->event != MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {
> > +               event_ctx->unexpected_event = 1;
> > +               goto out;
> > +       }
> > +
> > +       if (!mod_hdcp_execute_and_set(check_h_prime_available,
> > +                       &input->h_prime_available, &status,
> > +                       hdcp, "h_prime_available"))
> > +               goto out;
> > +
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_h_prime,
> > +                       &input->h_prime_read, &status,
> > +                       hdcp, "h_prime_read"))
> > +               goto out;
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status read_pairing_info_and_validate_h_prime(
> > +               struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > +{
> > +       enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> > +
> > +       if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
> > +                       event_ctx->event != MOD_HDCP_EVENT_CPIRQ &&
> > +                       event_ctx->event != MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {
> > +               event_ctx->unexpected_event = 1;
> > +               goto out;
> > +       }
> > +
> > +       if (!mod_hdcp_execute_and_set(check_pairing_info_available,
> > +                       &input->pairing_available, &status,
> > +                       hdcp, "pairing_available"))
> > +               goto out;
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_pairing_info,
> > +                       &input->pairing_info_read, &status,
> > +                       hdcp, "pairing_info_read"))
> > +               goto out;
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_validate_h_prime,
> > +                       &input->h_prime_validation, &status,
> > +                       hdcp, "h_prime_validation"))
> > +               goto out;
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status send_stored_km(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > +{
> > +       enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> > +
> > +       if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK) {
> > +               event_ctx->unexpected_event = 1;
> > +               goto out;
> > +       }
> > +
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_write_stored_km,
> > +                       &input->stored_km_write, &status,
> > +                       hdcp, "stored_km_write"))
> > +               goto out;
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status validate_h_prime(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > +{
> > +       enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> > +
> > +       if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
> > +                       event_ctx->event != MOD_HDCP_EVENT_CPIRQ &&
> > +                       event_ctx->event != MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {
> > +               event_ctx->unexpected_event = 1;
> > +               goto out;
> > +       }
> > +
> > +       if (!mod_hdcp_execute_and_set(check_h_prime_available,
> > +                       &input->h_prime_available, &status,
> > +                       hdcp, "h_prime_available"))
> > +               goto out;
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_h_prime,
> > +                       &input->h_prime_read, &status,
> > +                       hdcp, "h_prime_read"))
> > +               goto out;
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_validate_h_prime,
> > +                       &input->h_prime_validation, &status,
> > +                       hdcp, "h_prime_validation"))
> > +               goto out;
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status locality_check(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > +{
> > +       enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> > +
> > +       if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK) {
> > +               event_ctx->unexpected_event = 1;
> > +               goto out;
> > +       }
> > +
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_prepare_lc_init,
> > +                       &input->lc_init_prepare, &status,
> > +                       hdcp, "lc_init_prepare"))
> > +               goto out;
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_write_lc_init,
> > +                       &input->lc_init_write, &status,
> > +                        hdcp, "lc_init_write"))
> > +               goto out;
> > +       if (is_dp_hdcp(hdcp))
> > +               udelay(16000);
> > +       else
> > +               if (!mod_hdcp_execute_and_set(poll_l_prime_available,
> > +                               &input->l_prime_available_poll, &status,
> > +                               hdcp, "l_prime_available_poll"))
> > +                       goto out;
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_read_l_prime,
> > +                       &input->l_prime_read, &status,
> > +                       hdcp, "l_prime_read"))
> > +               goto out;
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_validate_l_prime,
> > +                       &input->l_prime_validation, &status,
> > +                       hdcp, "l_prime_validation"))
> > +               goto out;
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status exchange_ks_and_test_for_repeater(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > +{
> > +       enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> > +
> > +       if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK) {
> > +               event_ctx->unexpected_event = 1;
> > +               goto out;
> > +       }
> > +
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_prepare_eks,
> > +                       &input->eks_prepare, &status,
> > +                       hdcp, "eks_prepare"))
> > +               goto out;
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_write_eks,
> > +                       &input->eks_write, &status,
> > +                       hdcp, "eks_write"))
> > +               goto out;
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status enable_encryption(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > +{
> > +       enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> > +
> > +       if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
> > +                       event_ctx->event != MOD_HDCP_EVENT_CPIRQ) {
> > +               event_ctx->unexpected_event = 1;
> > +               goto out;
> > +       }
> > +       if (event_ctx->event == MOD_HDCP_EVENT_CPIRQ) {
> > +               process_rxstatus(hdcp, event_ctx, input, &status);
> > +               goto out;
> > +       }
> > +
> > +       if (is_hdmi_dvi_sl_hdcp(hdcp)) {
> > +               if (!process_rxstatus(hdcp, event_ctx, input, &status))
> > +                       goto out;
> > +               if (event_ctx->rx_id_list_ready)
> > +                       goto out;
> > +       }
> > +       if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_enable_encryption,
> > +                       &input->enable_encryption, &status,
> > +                       hdcp, "enable_encryption"))
> > +               goto out;
> > +       if (is_dp_mst_hdcp(hdcp)) {
> > +               if (!mod_hdcp_execute_and_set(
> > +                               mod_hdcp_hdcp2_enable_dp_stream_encryption,
> > +                               &input->stream_encryption_dp, &status,
> > +                               hdcp, "stream_encryption_dp"))
> > +                       goto out;
> > +       }
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status authenticated(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > +{
> > +       enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> > +
> > +       if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
> > +                       event_ctx->event != MOD_HDCP_EVENT_CPIRQ) {
> > +               event_ctx->unexpected_event = 1;
> > +               goto out;
> > +       }
> > +
> > +       if (!process_rxstatus(hdcp, event_ctx, input, &status))
> > +               goto out;
> > +       if (event_ctx->rx_id_list_ready)
> > +               goto out;
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status wait_for_rx_id_list(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > +{
> > +       enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
> > +
> > +       if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
> > +                       event_ctx->event != MOD_HDCP_EVENT_CPIRQ &&
> > +                       event_ctx->event != MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {
> > +               event_ctx->unexpected_event = 1;
> > +               goto out;
> > +       }
> > +
> > +       if (!process_rxstatus(hdcp, event_ctx, input, &status))
> > +               goto out;
> > +       if (!event_ctx->rx_id_list_ready) {
> > +               status = MOD_HDCP_STATUS_HDCP2_RX_ID_LIST_NOT_READY;
> > +               goto out;
> > +       }
> > +out:
> > +       return status;
> > +}
> > +
> > +static enum mod_hdcp_status verify_rx_id_list_and_send_ack(struct mod_hdcp *hdcp,
> > +               struct mod_hdcp_event_context *event_ctx,
> > +               struct mod_hdcp_transition_input_hdcp2 *input)
> > </cut>
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/112215220.5289.1576595244770.JavaMail.javamailuser%40localhost.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmPBgbJTgnoX8rJFL_3XrRDpfzuGA7w4fgh7GedNfydPw%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191217182119.GA3357%40ubuntu-m2-xlarge-x86.
