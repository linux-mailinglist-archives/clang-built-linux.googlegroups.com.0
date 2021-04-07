Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBXN6W2BQMGQERMCRMOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 20247356BB1
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 14:02:38 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id e29sf5449266ljp.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 05:02:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617796957; cv=pass;
        d=google.com; s=arc-20160816;
        b=xJDIjaWw2Fi/CEFMbDb56OklGoBM7A7HvU9G8W3ptIadQnOKI8W4zuwU3iTWQGiPQm
         Mrzu9ExhYdMeWW7j1HH+fUh+7JarhYUJwsFgiefc4du5p9lvTFm34BIJq7YQd/kSqPTa
         W++sHt0kEmKFPz+fWxrTdWTyo+z2tOXzZoMd3xjeKoAssw2lbMcgjZcUNiKlT57CAmTs
         VmvT0dWYFOxBYq5440QZ1ucoWC9Mqcr6c/GSF3aeUUy0OJqhYq7PaDvlvl2jXsplOyg5
         6ZOc32cYqXMZZoinVbYIOq9v1PJ5MlaYKEOLGfGfcjZP5QMOEIXZF4+erdHAQtlq2ms3
         vDPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=D+IVBeT1+fzcaD8RwZ7+Tqi2viBZUFWnLbKkN7Avol0=;
        b=IV6x16UPpcVj7xdwjeBL9l1Q1ouLsiNBBORHVLioTjKQTSAJGVnDHZEJE+jQPlVBsa
         qkdlZ+rPZXTxhB+vlVN2+4QbfWvU4/IVyR+Q1zaK6GWzD86X6X+QzzfpzWgVDwhsvYWa
         A3CnSAdLJrWx7vw7M43WRBdL9CXnl6HCBSdsjMVU1K3GnSvC7YHDzqP6q2U+vQjv8TgF
         EttS1mGHe2dLekylmu5kdjXyB7AX3995Gr4RAagazHoh6uTTUTuqeL8YcNl0s2nyZ+kP
         xxlmKzOlaUHZxTAp13hjpm+b+2sknbPH5isUjXgfvXsgVoClwEhRggOO5UNmVXIuIprK
         ayng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b="YZ+sDJ/z";
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D+IVBeT1+fzcaD8RwZ7+Tqi2viBZUFWnLbKkN7Avol0=;
        b=HRmwUmA/p2yWQl3dxdtJTLqS7R1x+aJGhcUghkab9K+n6BV+H68+c/btkp/AwBh5xT
         goPM+w/LP1QP5YgSDffr86SesItvjiCUR5uWvthPjvowbKd7GYuFdx1vgIqb9HJviJaa
         eIUEdiEO7/L7s/dRV9nnr9I4fnArA4f8Z2nXDg6xg0iB6eWQNggrnw/iXSTbCO2w5MyY
         S0LdDVbyN08aehemmAFUTzYomeZLQ7ixb88yxVmarQAUc66AbPaZKE4OJiOWi+rK8rf5
         uIiGRvGcQq1I6Zy+39NzW3OB/8xuGZtrOFehFZPBQHp1+NDa0Qw0Ems7+HfxY/pjOzNt
         koiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D+IVBeT1+fzcaD8RwZ7+Tqi2viBZUFWnLbKkN7Avol0=;
        b=q65NjZY4BjWf7XtkHZqLfo4vSfp/frf0+wfhJhRuce7TR+Z3f5pGmi0AnBmE44lmPv
         HLFR2088eM7nX6r6NYifJUCAaRe5uDcjjOvKCMbsO6XbEGe1OmLO1hHOXVpj1cgXgijR
         cQwsZinivwwqTGCT1dxritSoUBKiTEbvNOa1tyx5QiAxVOJqMYvIjqfZwWKAyuwJ9VmC
         bfhMvuqlV1AS179orUGpK/ZIt1HqnUScgcKpJ+zpxGuhk1iXjCWSFNjCezv+aPmoglJQ
         PjYxEAatL4JJnQ1wAZsGz7wsWDCJKR5zIWYJXhob6uLy5dlsWFLK/OlF48EVu4Kbunb1
         CSLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531h31sTgEfA+cslyMZNgkf5os1Py45s/ZTEtN+v//WENO0jfbff
	IDkAi+Iw0/o/vZFZYxoo3Xo=
X-Google-Smtp-Source: ABdhPJyWHzZc+rkNVOXy/zK9C+W2RqK8X2FXYllsTL7E1+pURPee9fNHMsoXbfIzKYYLvBzfPk/cPA==
X-Received: by 2002:a05:6512:203a:: with SMTP id s26mr2258095lfs.535.1617796957579;
        Wed, 07 Apr 2021 05:02:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls1783078lff.3.gmail; Wed, 07
 Apr 2021 05:02:36 -0700 (PDT)
X-Received: by 2002:a05:6512:3ca0:: with SMTP id h32mr2340954lfv.184.1617796956407;
        Wed, 07 Apr 2021 05:02:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617796956; cv=none;
        d=google.com; s=arc-20160816;
        b=ilADOYQPAgF/huahv2H+QBAOli3jhsFMCur70/nHSuzWlsqoFI5THu+lZSj/sDpOu1
         k4Rk0oZCFkyNkhZw+MRQJzZa/jAcf2VmfFqnZ1tslLxWESOmJb3ToK+mNUtH/iLlkdqM
         PYyBj2iR1SvBk5XKPXO16N8OnCB1j75lkVIdrS97v9C09ntiia3pPT6WdhDR15MPJnJA
         65ImPDh+Gz8plcrfiwCiaekNNA5Mt+urcIRva4wKVSHzW/fKz55A3f7DQ7bW+AYp9wOb
         PTo6axaDIMfCjxuyTV1ZtMdnTxDAnOt+qsKpATDqiMZpnfIO6p8PY/a0XqL0NX8queNu
         uQ6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FH2Q5rVpM1/neojk900lZ6GLJs64ZVvXVp6ndMfzNog=;
        b=qfEYVxnxoLf49hrgUE7CRD1lLjH7Rl/dlQDrpFS1tZBGWh/ZzG6HOsgPMyxssAhx7P
         P+xuhUeDG2G8eV+SEIUJb7MzUnk3l/Hn/zcMjFPL00fKs/zaQQWU+ar7CG3PLDcIudNd
         D8ad9A8KjhRZZF6S35+O06jigl80e1cZgeCKYc3Fte/R2pTimbkixLUtn7n3tI/Glksr
         64bnQ9Q7Q4NMx6opIZHJR5K8fzTa1zMYD8c6G4eD8YAGaJM9Jb3h0LJsEqW7SSeo7yrN
         ZjNpkWxowi+28Qu/k2iODjUm4aQyuEZgWyIfO9BOqt9mMeeXc4orVvCoUJgjQKlmKd9i
         rJ1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b="YZ+sDJ/z";
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id d19si1947779ljo.1.2021.04.07.05.02.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 05:02:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f08fb0043d828d1ba5b6809.dip0.t-ipconnect.de [IPv6:2003:ec:2f08:fb00:43d8:28d1:ba5b:6809])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 9BD981EC0288;
	Wed,  7 Apr 2021 14:02:35 +0200 (CEST)
Date: Wed, 7 Apr 2021 14:02:39 +0200
From: Borislav Petkov <bp@alien8.de>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: tglx@linutronix.de, mingo@redhat.com, x86@kernel.org, hpa@zytor.com,
	nathan@kernel.org, ndesaulniers@google.com,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86/kernel: remove unneeded dead-store initialization
Message-ID: <20210407120239.GD25319@zn.tnic>
References: <1617177624-24670-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1617177624-24670-1-git-send-email-yang.lee@linux.alibaba.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b="YZ+sDJ/z";       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Wed, Mar 31, 2021 at 04:00:24PM +0800, Yang Li wrote:
> make clang-analyzer on x86_64 defconfig caught my attention with:

I can't trigger this here using:

make CC=clang-11 -j16 clang-analyzer

I get all kinds of missing python scripts:

multiprocessing.pool.RemoteTraceback:
"""
Traceback (most recent call last):
  File "/usr/lib/python3.9/multiprocessing/pool.py", line 125, in worker
    result = (True, func(*args, **kwds))
  File "/usr/lib/python3.9/multiprocessing/pool.py", line 48, in mapstar
    return list(map(*args))
  File "/mnt/kernel/kernel/linux/./scripts/clang-tools/run-clang-tools.py", line 54, in run_analysis
    p = subprocess.run(["clang-tidy", "-p", args.path, checks, entry["file"]],
  File "/usr/lib/python3.9/subprocess.py", line 501, in run
    with Popen(*popenargs, **kwargs) as process:
  File "/usr/lib/python3.9/subprocess.py", line 947, in __init__
    self._execute_child(args, executable, preexec_fn, close_fds,
  File "/usr/lib/python3.9/subprocess.py", line 1819, in _execute_child
    raise child_exception_type(errno_num, err_msg, err_filename)
FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'
"""

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/mnt/kernel/kernel/linux/./scripts/clang-tools/run-clang-tools.py", line 74, in <module>
    main()
  File "/mnt/kernel/kernel/linux/./scripts/clang-tools/run-clang-tools.py", line 70, in main
    pool.map(run_analysis, datastore)
  File "/usr/lib/python3.9/multiprocessing/pool.py", line 364, in map
    return self._map_async(func, iterable, mapstar, chunksize).get()
  File "/usr/lib/python3.9/multiprocessing/pool.py", line 771, in get
    raise self._value
FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'
make: *** [Makefile:1914: clang-analyzer] Error 1

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210407120239.GD25319%40zn.tnic.
