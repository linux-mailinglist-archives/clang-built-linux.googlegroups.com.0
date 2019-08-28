Return-Path: <clang-built-linux+bncBCR5PSMFZYORBL4KTLVQKGQEGXLXO4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F6DA0392
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:44:16 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id m137sf19922ybf.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 06:44:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566999855; cv=pass;
        d=google.com; s=arc-20160816;
        b=QdzqKz9jQuuXmfS/a4WQ0JGx5I1ndz6gX6WRxxHXnMMZgPE8OcX/8L65SLbeuXE/iF
         omcrEVh1BanHTgzWBoI1XgXSpgD6pOwYpsVLQQsGUQAe45/m+FXKSgrxqfeqLUHVuMrm
         IXqrHZYHG5M77uF8hwGgQ29rfuuNNt7uT2Hbk0GJZ5Nt4n+zbgWtjW+shccB+OLJ9fOD
         3ObGx8zT8Fvm2QoqEMb/cJDwoQkNP7zyGmglBo1SmuJvK3PA67iMd09TqWx5ka1kWQuf
         gSZGXcscy/pySr/SAGcfGrqf90fiMTpbPUOEf0EeFhnsZqAUmPRBoDykU0rGjbL9Y9aC
         klQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=qJC35A5XW8b4MjAT9uDlcIAAZvbnNwM/aEU8F8rc7p4=;
        b=d0Kkv/WaA/nODCpRdmVp+Aa1wFNSfzd9gSZv0rGqWn9o0ir8eCGbile8HWxNAot0UW
         mQpNffPGxtCIi7eGBQnta0ZQATcxWDf0+ZMz6TVE92y1OYy1yrCs5l3znlshAYvAqGEx
         sQqyjpRr+BVmG9aWIF6llpqx1/9YhWVznWcbi271VXfwStRiW1IYJS9eEcwyIL0vG68Y
         DVjZ1P9udhrYAwWRJV8f702VKxa86qrfPYOFL1nSL3s/Bywa66qcWbd1t4Ou7bM3fqLp
         TBsgMXJhrveIxxqO8FPE/+7YwFpt+nsjVBbKPNsatD7TJvKRtxpVFGAgQDPFIKmE5fCL
         ncPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qJC35A5XW8b4MjAT9uDlcIAAZvbnNwM/aEU8F8rc7p4=;
        b=JFfmgz2xEbZeRQV/rWNfc0wFj/3MMq4PC36LOxl/IxSl/NQ3KmCia+hFhsJyd6lhOo
         qCRc4hpusLxxp3ZSmYbYhn5so54EQLrkhoSJdk8gzGV1MJNiLQ6WUx09sCDfuA7jDAP2
         avax7VI45z+JPygZU5f4jBS/AWr2B5tkPr6qPFVUkbut46V+aWkEuPEPHtOQT1Sh2TDK
         8YI1zjcThT6MRi7yxg/vM3zVxYSpYyUr6PM9Rv1pwG7n65R1OplLX51WAm0owNecB64h
         VDOD2A7ABm+MlxjzsedPWhjqk2pUSZdwEQQyuUOzyRXNTQN4Q41okQbTLcIi5i12W0Y5
         hRoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qJC35A5XW8b4MjAT9uDlcIAAZvbnNwM/aEU8F8rc7p4=;
        b=uLrlHZrctRTuz44Zv58/PHMZJPiqwQxUzx05WYpDOgtd+FjSuGB3NPKCQgpGfuXWj7
         94YhPkaNYrqn9e5AVSNPSRggeB2n/7Rli4N4+ml9TTs5UiP1cOpe7vxqt8P8TVLsdTrC
         vG/dRcWjBivhP3LNEI/qhXOJiRQC86yWw5TDOcQZigstus+tDNiUQ7CO+aEDlRedF8h/
         pNRJifrYTQBkTru5pj3T7o4xA0cXu9jtibyBLHrKjQibTVa+aoT72W/trC+Xg2c+HI7X
         0wigB0q5MTit3ueoc8yzqNgPjvl/EpkLkgAtMRNzi7F4A9xSrwsi1ypphIhJ2TB2ejTg
         iq4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUcNWnreBzIpfSACzzGP6bDvJ9d2rb044fMl0fXYXv7Y70amdsV
	9Mgv1xSetDZz/qOFq5C4Wls=
X-Google-Smtp-Source: APXvYqzd7qQI2Zdus/ufk7auQOEH3d7Av799bFKEZUSgaQKhOdOVtxvE+JRTFbCk2gwmyOq7pNKtbw==
X-Received: by 2002:a81:83c9:: with SMTP id t192mr3073134ywf.497.1566999855270;
        Wed, 28 Aug 2019 06:44:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:a109:: with SMTP id y9ls426704ywg.5.gmail; Wed, 28 Aug
 2019 06:44:14 -0700 (PDT)
X-Received: by 2002:a0d:cd05:: with SMTP id p5mr1667806ywd.188.1566999854901;
        Wed, 28 Aug 2019 06:44:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566999854; cv=none;
        d=google.com; s=arc-20160816;
        b=Folcw4VtBaJfV7auxeH1bLhgXZWgZjoRIPYgmLK8rH9ioiErHBUS9wUdwPwQuAa7ZC
         QYC1nLm4VioBp7AqnQdSjEe0SGdQa34GWrMAzuCRNsoVbnrKKPse7u3qsgUcrSdUV21d
         0qvq1o/cHCNdvXpKp5qX2PCm5VZ0P9FowvudurDq1BoCVE1YkoOvwklfr67O9SB3Atvq
         2orT1Tl8h2/gIhofbYvl0C9vcEwE/C6t0/v4fUNGjgcpBCjxzwFCpqGjSFHGXBrS4zcI
         VAnyRIUlHUTkH6836/9td/066Xrfi0JD2p0kdNA/Vvd0z+visD+fY/eKpj4ShqbFhCSW
         FTXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=4rhnAfCnJaTWtXABj73cM7DmFs7hoM7M+0X1zvpJMoE=;
        b=rSNoGWqrnvcfGPtELbPSAsjaWKO0Ws6a0HAGcvrIQw20JMKOAcS7g/6GeEon2cWMbU
         SBJXrHeIJStblQ8OXCaC8jvypRfeqTMiW/ccQMLaVk2d4Y4MY1t9kVrxxH09Vh+MvpNY
         bYd40BVvJxSYU3gzqk/PeB/iGN0JgybNw5t6+sVAoRlgZdjQXV6tW8SC8m+fEZ+nZf0N
         7H014kuJBmNxGQL5be9miBtgkzt8tFGT8jACzqXL/Gg08E7mATWgSE/Ubmkhrf9i7+WX
         ON0H24XyndmG5E9q1VW3f38b+uS5R++4W5Xmb7oyxaL5Nogs5DgMkEIC1MnatsiOtoTy
         bQRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id r134si199234ybc.4.2019.08.28.06.44.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 06:44:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 46JRmQ3ct3z9sNm;
	Wed, 28 Aug 2019 23:44:04 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Nick Desaulniers <ndesaulniers@google.com>
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>, stable@vger.kernel.org
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
In-Reply-To: <20190812023214.107817-1-natechancellor@gmail.com>
References: <20190812023214.107817-1-natechancellor@gmail.com>
Date: Wed, 28 Aug 2019 23:43:53 +1000
Message-ID: <878srdv206.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <natechancellor@gmail.com> writes:

> Commit aea447141c7e ("powerpc: Disable -Wbuiltin-requires-header when
> setjmp is used") disabled -Wbuiltin-requires-header because of a warning
> about the setjmp and longjmp declarations.
>
> r367387 in clang added another diagnostic around this, complaining that
> there is no jmp_buf declaration.
>
> In file included from ../arch/powerpc/xmon/xmon.c:47:
> ../arch/powerpc/include/asm/setjmp.h:10:13: error: declaration of
> built-in function 'setjmp' requires the declaration of the 'jmp_buf'
> type, commonly provided in the header <setjmp.h>.
> [-Werror,-Wincomplete-setjmp-declaration]
> extern long setjmp(long *);
>             ^
> ../arch/powerpc/include/asm/setjmp.h:11:13: error: declaration of
> built-in function 'longjmp' requires the declaration of the 'jmp_buf'
> type, commonly provided in the header <setjmp.h>.
> [-Werror,-Wincomplete-setjmp-declaration]
> extern void longjmp(long *, long);
>             ^
> 2 errors generated.
>
> Take the same approach as the above commit by disabling the warning for
> the same reason, we provide our own longjmp/setjmp function.
>
> Cc: stable@vger.kernel.org # 4.19+
> Link: https://github.com/ClangBuiltLinux/linux/issues/625
> Link: https://github.com/llvm/llvm-project/commit/3be25e79477db2d31ac46493d97eca8c20592b07
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>
> It may be worth using -fno-builtin-setjmp and -fno-builtin-longjmp
> instead as it makes it clear to clang that we are not using the builtin
> longjmp and setjmp functions, which I think is why these warnings are
> appearing (at least according to the commit that introduced this waring).
>
> Sample patch:
> https://github.com/ClangBuiltLinux/linux/issues/625#issuecomment-519251372

Couldn't we just add those flags to CFLAGS for the whole kernel? Rather
than making them per-file.

I mean there's no kernel code that wants to use clang's builtin
setjmp/longjmp implementation at all right?

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/878srdv206.fsf%40mpe.ellerman.id.au.
