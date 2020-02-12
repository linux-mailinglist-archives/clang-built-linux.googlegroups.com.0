Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSXYRXZAKGQEZMBFUKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F63159FDF
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 05:17:16 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id v8sf685839pju.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 20:17:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581481035; cv=pass;
        d=google.com; s=arc-20160816;
        b=gZGtQSozTu6LlNq5O/phMsJTg/Pxkjq1R6Q7mayohBzNLE0XLaX8x72AMEGnFNSRD3
         bw2Na/gnXa2VFPVIBVTReXkn/LHUQBjaVgjofB36WafYaVQwExFQw+VcLoWoDt9rAWkC
         3hTjnToCqZoPHG9HYN9wEA7IJ5tbxhbMshyYK02RufoIul2SS4n4+g15F27u1er+St+K
         eWzrHbXy1EcAvtX/1AoNW4zDCy6HebiiYE5bv5YaPatHF+i7IUe2/5KgMSkGTJEokkmr
         iQkegCec4xni+fYTI7A8cdJqeEZdX5xCdoIQtkc6QKzPLbbAEOhoHgD/nt1JcK4IcMoC
         esqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=QalhHKEPUm9lD1J5sI+Ix8kKZBLLNttyBfj/K+qN+ec=;
        b=IfLxLlIiscNRp9PBr5pjyNDVMfxqlVkmyJi7FtAsTsx4BGw24MRaBA0WY2JPzwu5K9
         cnLoJk1ZO1Gcdh/W5Q/4YEoqK5P9ADX2H6Mvj2/piXzXKlN95aSridp4ZVVmTgSS1SNm
         PfkgTJkwkc4gk8VDv6xh23l9wRuT4RC/XWIQUa1VUGz8AYw7DbY2UhqBY/5c3hr6xd6D
         6y8Mm5iurlwVtx+3PEGSFSkAnt+ApIzQcdlKL0USe942fmVmChvC/W12QrXgMC8BqBlq
         WCTvKeHlhQGMJMTJMFGH7y2suj4hECWtAKslYboA50GYrx3qdffAnrvHzHpL4ZHTWwuH
         Cjgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qpIVtu9R;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QalhHKEPUm9lD1J5sI+Ix8kKZBLLNttyBfj/K+qN+ec=;
        b=ZywLhGV+/z2n8sIiIBobAVZ+CzUHC/jv631xdv3d43R0ApjTG3wKUQkHeBFza0TK0I
         OMDFAQ2yokDdtUhVUJPC9NC25VmDhErR6A9BFwSYYaauqKVkAiS1KZf6jznWGYuJcCWf
         9u3IOLknw8lpXW1Kz0slW3wXrOlAtZIY5QGyqxpr8lP6wEMfxE07MOHMi3i9Xv4NaE/x
         O1jYLIOxjXAWPVvStgofsipLbQWBTNnLTQAdzFYr5AQFdfKU84e7jHCpF/8OcbYd/HQA
         Qm0V97+6aeU4wFCV89Hm28ml23+ySf9cyrNP39wbhDY/3t/lPSag3e5AVlTYoAfNHA/1
         qjTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QalhHKEPUm9lD1J5sI+Ix8kKZBLLNttyBfj/K+qN+ec=;
        b=YRFL3urtIsgsbIr4XlOPebYKQbMu7oT1ZnpQtor5KQolxbXLpjd/4OZuEOs/Wzp4st
         rO0U2XH2dcPc2kfhws3L5ZgqMVvf186nI97zDPYTEgzgOxPXmYw3KqgjWqzMkEKeip+e
         e5PnmEG+jI2guSztoeXLc5E/1WzRaCcrC1mGgjTgjkyVRf7T5sU8UbKAhee9ZO87f7kY
         jqrSNZT7y6GaAz1cE4Gu3P2Gb+Uxk3NFdm3REObxzumLEnYqG6jbELATTWfUJ3DECIAc
         1hbiDlOes3gD2SjDbBA3patlV/a6FdINdqo7nGtnAtoNflVirTHDWM9955yQ+I/o+8z3
         DnXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QalhHKEPUm9lD1J5sI+Ix8kKZBLLNttyBfj/K+qN+ec=;
        b=NfJ57peRUhFJ1ygj6LTAnxwHXw5PDovvR6ZvvPVZkyWjUy4VxJSXfW1NSkWCIc2Fvq
         Mo+j3kRdRvgmutPLHVIb61WwOH/MdNWoBIeMjp7xJFYfsng7B7YhK93iZ2BQtf5ALFFZ
         FBfgV91P+2onwXq4NccQTqYK00YCUaR3xN537R3UvaAVa7VlUqndnKNAcRoDQ6w6f4O0
         ZiEab9xIEojl+GORDtYh5j/JMicOsKSZr9xEzu+89j5ICBOi5Vj6rp4bAKXM333oYtvS
         hHc/kGg9a3Z/J1326Ed2Sd9BK6DLANZE3Xd8VfEVUmWEfKt2J/tQDjeH8VDlhqASziT9
         yQDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUF3ElRDFAhCwnNJqTLO8GfZehBgWcEBb4SQa3QAhj5uZu/EdKw
	m8tqDqDzBi/8CEuV6UVdl+4=
X-Google-Smtp-Source: APXvYqwGLyC8QOmu1+CSmA11psO1vWuUAvSsXdNWt0n2lUFMD5+TbybKi/KYRWx1O1RloQKIAilUbQ==
X-Received: by 2002:a17:902:b484:: with SMTP id y4mr20887157plr.126.1581481034934;
        Tue, 11 Feb 2020 20:17:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab86:: with SMTP id f6ls6648225plr.10.gmail; Tue, 11
 Feb 2020 20:17:14 -0800 (PST)
X-Received: by 2002:a17:90a:b008:: with SMTP id x8mr7877230pjq.106.1581481034459;
        Tue, 11 Feb 2020 20:17:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581481034; cv=none;
        d=google.com; s=arc-20160816;
        b=hdTyglxhcHXo7Qbddpt9PAFwpZhoyFGQ0ONDqCTGLPlArOHUHv1IC9DrYdxrIkqgC4
         9ne5v/q6sjKnhEJ9nNbxoi49JTzQf0g4bqyuNyccC/KYOuzjWGM82afCE7UIMUrLZz1s
         op/LwaRd6Jb1EhE8Qeccjl50nA4LHNMTheyh3LVqTiB1Xlg1Jl0uX+83nnQ+dkJu1wpC
         NLcgnjgkJXzU92XJX8hRISqWnPVFh+zM7se/qKRrl+1w0m/emvymN6kgMHKUHvpGcNfk
         QMydEhKzDPIrm8H6lWj3m/ct4FujNtOCXBdWJ0O8l14Kax+POa9lMLFr2CuHLST/hrsb
         6Nmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=oo+742o8WYQFZ3eRjJ1DV6oH4HGPUZrWhskellDil5U=;
        b=SZPx6jk5YPECsFb9w7I6pJZ4/ukkZAYkLhZAwL8qqAgVan2JdnE1aUuzlJZgvbTIvE
         S21NCcLpS8t85gn3hsDmXjMCTpxVk29qkAAYfiRhPc0gurSep6SWZP4XZQTyTKbnHdCn
         XJGTqksz+20LA45qZU0ejPRW/I8N6CuKvLHfilWkxOLqMMFksCDwm8Fs0r4TTK2w7bL7
         7dsJuZTzf0ulPk/GU3f3++adyNhWuSXv1YqOjYe16SBxs96Y4wnDljwET8GqTQCx1mwF
         4pGxQxeEtlsdsD3mmPKYlyGiG6x+MtZkR0yRago7MUy5pqGs2BnPW5/pVzdli0L16+lr
         +iWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qpIVtu9R;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id d12si215266pjv.0.2020.02.11.20.17.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 20:17:14 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id q84so777400oic.4
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 20:17:14 -0800 (PST)
X-Received: by 2002:aca:6542:: with SMTP id j2mr5114658oiw.69.1581481033578;
        Tue, 11 Feb 2020 20:17:13 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id h1sm1941294otm.34.2020.02.11.20.17.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 11 Feb 2020 20:17:12 -0800 (PST)
Date: Tue, 11 Feb 2020 21:17:11 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: ci_notify@linaro.org
Cc: tcwg-validation@linaro.org, llvm@linaro.org,
	clang-built-linux@googlegroups.com
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-defconfig - Build # 18 - Successful!
Message-ID: <20200212041711.GA34689@ubuntu-m2-xlarge-x86>
References: <388874779.1235.1581466890388.JavaMail.javamailuser@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <388874779.1235.1581466890388.JavaMail.javamailuser@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qpIVtu9R;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Feb 12, 2020 at 12:21:29AM +0000, ci_notify@linaro.org wrote:
> Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-next-defconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-master-arm-next-defconfig
> 
> Culprit:
> <cut>
> commit aadb635e04854220064b77cc10d0e6772f5492fd
> Author: Florian Hahn <flo@fhahn.com>
> Date:   Tue Feb 11 15:06:59 2020 +0000
> 
>     [SCCP] Remove forcedconstant, go to overdefined instead
>     
>     This patch removes forcedconstant to simplify things for the
>     move to ValueLattice, which includes constant ranges, but no
>     forced constants.
>     
>     This patch removes forcedconstant and changes ResolvedUndefsIn
>     to mark instructions with unknown operands as overdefined. This
>     means we do not do simplifications based on undef directly in SCCP
>     any longer, but this seems to hardly come up in practice (see stats
>     below), presumably because InstCombine & others take care
>     of most of the relevant folds already.
>     
>     It is still beneficial to keep ResolvedUndefIn, as it allows us delaying
>     going to overdefined until we propagated all known information.
>     
>     I also built MultiSource, SPEC2000 and SPEC2006 and compared
>     sccp.IPNumInstRemoved and sccp.NumInstRemoved. It looks like the impact
>     is quite low:
>     
>     Tests: 244
>     Same hash: 238 (filtered out)
>     Remaining: 6
>     Metric: sccp.IPNumInstRemoved
>     
>     Program                                        base     patch    diff
>      test-suite...arks/VersaBench/dbms/dbms.test     4.00    3.00  -25.0%
>      test-suite...TimberWolfMC/timberwolfmc.test    38.00   34.00  -10.5%
>      test-suite...006/453.povray/453.povray.test   158.00  155.00  -1.9%
>      test-suite.../CINT2000/176.gcc/176.gcc.test   668.00  668.00   0.0%
>      test-suite.../CINT2006/403.gcc/403.gcc.test   1209.00 1209.00  0.0%
>      test-suite...arks/mafft/pairlocalalign.test    76.00   76.00   0.0%
>     
>     Tests: 244
>     Same hash: 238 (filtered out)
>     Remaining: 6
>     Metric: sccp.NumInstRemoved
>     
>     Program                                        base    patch     diff
>      test-suite...arks/mafft/pairlocalalign.test   185.00  175.00  -5.4%
>      test-suite.../CINT2006/403.gcc/403.gcc.test   2059.00 2056.00 -0.1%
>      test-suite.../CINT2000/176.gcc/176.gcc.test   2358.00 2357.00 -0.0%
>      test-suite...006/453.povray/453.povray.test   317.00  317.00   0.0%
>      test-suite...TimberWolfMC/timberwolfmc.test    12.00   12.00   0.0%
>     
>     Reviewers: davide, efriedma, mssimpso
>     
>     Reviewed By: efriedma
>     
>     Differential Revision: https://reviews.llvm.org/D61314
> </cut>
> 
> First few errors in logs of first_bad:
> 00:03:07 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
> 00:03:08 make[2]: *** [net/mac80211/sta_info.o] Error 134
> 00:04:18 make[1]: *** [net/mac80211] Error 2
> 00:04:18 make: *** [net] Error 2
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[llvm_branch]="06617c452204e4b84c0f70407aa4ecd32d3b295f"
> 
> Results regressed to (for first_bad == aadb635e04854220064b77cc10d0e6772f5492fd)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 5859
> 
> from (for last_good == 6b0ed508fa3947ec1f3a1bd87a08b598e98423e3)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 6421
> linux build successful:
> all
> linux boot successful:
> boot
> 
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-defconfig/18/artifact/artifacts/build-aadb635e04854220064b77cc10d0e6772f5492fd/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-defconfig/18/artifact/artifacts/build-6b0ed508fa3947ec1f3a1bd87a08b598e98423e3/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-defconfig/18/

Reported with a creduce'd reproducer:
https://reviews.llvm.org/D61314#1871290

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200212041711.GA34689%40ubuntu-m2-xlarge-x86.
