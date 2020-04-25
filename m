Return-Path: <clang-built-linux+bncBAABB6EZSP2QKGQELKKUOZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E401B8A21
	for <lists+clang-built-linux@lfdr.de>; Sun, 26 Apr 2020 01:51:22 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id ev2sf12248766pjb.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 16:51:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587858680; cv=pass;
        d=google.com; s=arc-20160816;
        b=LeyidE04VQmARQd7LRVrWccA5Dv/foKqMcaIYcO75LgYDdybHg4sHgohsR0lSBxP/H
         AGixRp1kj11Wv4YyHxABB2UmvxOug8V/O/0g9Eml4eQiVsURCQMm2LdV0htlcXTIXMDn
         ZuR62EMo250RpKhHeUC5duDzO5rHSwLsFree/FH1S87ikAmbxYKgKWrbcZx6b+Mn3s9f
         qHIMDdJ8zQmtUD3Kcy8+S/ymTLfuEbsijKv2eDTUyDhEEXVEunLUrlnzSjxop4Qrngg9
         wBzyHZMDePJ7PNsce+4MrbYULR43m1KUFanRJqu/mJONo0qKXnN/plpmapETwvPy787p
         L1nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:cc:from:to
         :in-reply-to:mime-version:sender:dkim-signature;
        bh=N9zsRylRD1RvZIfLmOWV7rbBDG327qOwq7b5FhvY18I=;
        b=0U65p9edSpPLe6NYJ+XD457dU+dXPHHWX6SDzXcRl4kjjceX8sCjtcMB6KARFepnnO
         0Xs3uj1C8NYGxTP7PP+DOrpCTsYCs/IhisiSPbp+6FDitpR6ZQLvPYVuOSBApctJOOdQ
         4+9t3QaXQvqqpM3fO3N0r/X+kkKl4hIiclOsZQTezh/D8Psobbdp28DyTxs5BBf6QHpl
         GpRCHywaovwiLohyTcSFIkr1j96TEEbq5ZbvXz3RboVXcKu5WaKK2caQV95V7yB2w0Fo
         7a+5uNdUVgjxODYXZCo9AGlc2SdYHFKlwz4ZGhVtt9YRGgaT0NcCB2NC+CSaJmznLtgG
         mdSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:to:from:cc:subject:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N9zsRylRD1RvZIfLmOWV7rbBDG327qOwq7b5FhvY18I=;
        b=KVz2KyOGo0iDDSHuLUtBX1RSC6ABPFNOleNFxjAfGrRxid1ZzF9GJA7KcA9eilqa2F
         4qRjXe1d81wTkUU/WgQXB0wUS8Aa3EW6INAGVpVBVfWLvW4p4YmZIqtkYziPymZCZizU
         d676CMp+pxIA5ZQFrq/Z65FJ/4tDfpZ6IWQcKwuffxT7I13UF1nm2a0zV2rPEPPNy/69
         wa48Tv/ogis3MLKYzwiXdXSNlasRrevPCInK27d3RNI+KfB/e4EczFk7HsCKt53lgEjz
         lrSe17GrXhvZeR7JSeT7EhePZ2CsQbQxHEkMYRNRL7xvlAJ/06E4oHJosLsA7x0fb3Pz
         3+Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:to:from:cc
         :subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N9zsRylRD1RvZIfLmOWV7rbBDG327qOwq7b5FhvY18I=;
        b=p/EPmMtFU1mXcPTx7+b6Fe7h8QnLrhHFWTzPVTwEKwOuHfp2BolzvziBQZcCIOaUhn
         0ekF8gZIbygITual/19NoHLAUTbXXIKFRd+WXc3NsqMI3HJToh8T+3j6kuxFfndCktuv
         TV7ew3gYNCArKXfgn5l7sGTLWMrMKAjswYgeCr20Mz4p6HgbmbYmxhkXazCCI+Eb8UYW
         gKqeFLer54abQu+N4A5T8Do0oJW7Sn/CQ9NqfPIcgM2cdMIq3VNFxluaWuis0n44KlFg
         xdlpatHZ9l+Utf+L17h+sKS3josTXiGsfcPVQrm7SvTBeZ+5JIZFrYQai6s+y4xz+tUm
         71nA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZDIF8azAnmtjs7RGqYK5liyzo/uiedbi89ipQ+Lvw/tWekZZad
	dbmDzrvve+ehfuHPdr6bhAs=
X-Google-Smtp-Source: APiQypJPQoQjKnLRrXhVC0cxjYfXXVFjpiHJarvI75fq8TExdIy1IleS6FD6dcWHUFnr/r6BcuyWTw==
X-Received: by 2002:a63:ee4f:: with SMTP id n15mr16419375pgk.149.1587858680535;
        Sat, 25 Apr 2020 16:51:20 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fe52:: with SMTP id x18ls10889495pgj.6.gmail; Sat, 25
 Apr 2020 16:51:19 -0700 (PDT)
X-Received: by 2002:a62:6585:: with SMTP id z127mr16970804pfb.217.1587858679897;
        Sat, 25 Apr 2020 16:51:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587858679; cv=none;
        d=google.com; s=arc-20160816;
        b=KnozHEMrWMhE7TACjimL/Ua8jE+aFoeGzjI7y0NmuVjLeDFfuzZgAhT3NHlIEH7AM3
         cl8XTqUUTiZd0VLT7B9ZzoTvT56Yu6tPLg20XjFPvylIP/aa9zW3C/Z3gBklC+Tk1Q2H
         80Qk2vuqeDJXbNra0cZVaEFL3ZseN6UVm5Vw1dSqEXCmm6JOise6IaHpT7P8nIy0dagc
         h7/S2Eb0ALWy2WkYGYSNVBl561dJRYTj4kkYKTKBo03v9jlwyVvP2GJ00bBwOauWFo7s
         J6+OdPQhT9wL9HgA51aJlLEHedSQ9Ov4ru/6rJzCMMGk9eqjAiMAgPV07Odl6+I1oJJT
         jEQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:cc:from:to:in-reply-to;
        bh=vUm52sNgJ+ytu+dv6U1QF2uBACxwJjHQ6bHRJ22/Bjs=;
        b=sLEtHGQZil6IphPCrVc2lFieCGp5bZBW01bgzmQpgAHK7k58Lja2kl4N0Qw4tWb0cI
         nIXL6wA5RRclM3wIK+n/GrRx79czIJpTlAuva26YBa6A9Ue7tLzmA/JFMzXj6nVKem8M
         BFhcTGHNAu9f0Tfr+2Pq6Mt3gYdjdodHd1eV+PijEh6QRObz9TUN/+PqqAMnj+tKsQUk
         yiXCt4VYNQvNUkVYjC5TBZVv0TZx8P2oLBdJRP5bfq3b+ZEUdjW7m6f90gU8yT2tph2l
         Pv+EKrGJ/7t04p+duIijP0MMJwhD5p/hZkZfCSmOvDLQfpsS38EIn9+CrKKi4TF0BI27
         ktgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id t6si1255436pjl.0.2020.04.25.16.51.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2020 16:51:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 498nqk5LQ7z9sRf; Sun, 26 Apr 2020 09:51:14 +1000 (AEST)
X-powerpc-patch-notification: thanks
X-powerpc-patch-commit: 5990cdee689c6885b27c6d969a3d58b09002b0bc
In-Reply-To: <20200413195041.24064-1-natechancellor@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>
From: Michael Ellerman <patch-notifications@ellerman.id.au>
Cc: kbuild test robot <lkp@intel.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Paul Mackerras <paulus@samba.org>, linux-crypto@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH] lib/mpi: Fix building for powerpc with clang
Message-Id: <498nqk5LQ7z9sRf@ozlabs.org>
Date: Sun, 26 Apr 2020 09:51:14 +1000 (AEST)
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=michael@ozlabs.org
Content-Type: text/plain; charset="UTF-8"
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

On Mon, 2020-04-13 at 19:50:42 UTC, Nathan Chancellor wrote:
> 0day reports over and over on an powerpc randconfig with clang:
> 
> lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a
> inline asm context requiring an l-value: remove the cast or build with
> -fheinous-gnu-extensions
> 
> Remove the superfluous casts, which have been done previously for x86
> and arm32 in commit dea632cadd12 ("lib/mpi: fix build with clang") and
> commit 7b7c1df2883d ("lib/mpi/longlong.h: fix building with 32-bit
> x86").
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/991
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied to powerpc fixes, thanks.

https://git.kernel.org/powerpc/c/5990cdee689c6885b27c6d969a3d58b09002b0bc

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/498nqk5LQ7z9sRf%40ozlabs.org.
