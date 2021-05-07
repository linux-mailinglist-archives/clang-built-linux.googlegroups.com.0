Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPWY2KCAMGQE2KRB4KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDBC375EED
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 04:56:00 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id x194-20020a6286cb0000b029027b2c6cb53esf4889461pfd.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 19:56:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620356159; cv=pass;
        d=google.com; s=arc-20160816;
        b=CuDnGPrSl4DTT1tD9F0zrLHUmHdiH5ZRf0+m1zHMzXzuRYuA1OWSuJM9Tn2hWsI5Jp
         NQywUNdSq0+erlCHwqZlt2772wSzwWGuFQWT8Vz+YyY6LPYtFn6s1sbRl17BGYcFQhxZ
         SM3Jq/Kle/srjpCNivty8vvqP4DDvyPTlpBYRDpgxb7bsBXf00UtDUAV2om4R31xvSnT
         AF76lslBY3/CI6etJPfpd72x6wFL24NjurWlDomb+BOA2xP//wS9t986kcz/EqSTCse5
         UFQmo/t5psXaTCurAng/UPpFtT+ET/P8JKGhCMeBjQyNV6RKl0i0zvc4CDKxNerKn+aL
         KNnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature;
        bh=M7MlwmQ9VDBbAerXXMDbf5p16c8e83B/8dESVAlwfTA=;
        b=ObIT3SlXdojpksHisJb/+zH49qZV0I2sOv1GSQrA7u2JHdA7Qc/NFoKPz/cC9WcJPj
         TFczKWuzDhAZ77bhyu/V542T/TAiKa8EAhoDgQWvGe0W3HMDJUbIH1/5AtQFzXuY37xT
         NUkF5v6B2MCn+LiQoVgy6QMPylnPMumbvwt1oxOzg/2eSB6hSQJcd+WgYfAnycPJKyFn
         gL5ORmrnrQquiTE0S/7MeURWAd34AEdjIjajG/EhpTOFJVmc1aIB8+AiPcHuKVmxlwwZ
         G3kLdEjJMF6Eb1lMOJxc+Ju9jinna0cxFI4GhhOOKSwTHb5AQfDjkVeHrIwzN1q1QAdg
         wrVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uO6b4P8W;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M7MlwmQ9VDBbAerXXMDbf5p16c8e83B/8dESVAlwfTA=;
        b=nZJ67BgLZLBTtrWGl+A9ib/uFAtP0azOn29+gcwe/7z3KQR+eI2MQhEsGKCZGdVp0T
         Z96KQucrg51zjqZg5CqdnhXVCrpjwb5dJx53qMw1cYuDnqh9IVMgIk0mBMJW1r7Wm7ux
         GWXpOEXzkMKMXrLi2Pqcd7d5mNhLbcGs3TiXD36LRJgaFK76KYiToqtNZOJf4H2KxAP6
         K4SJKHcAykwnjenQi/9PP6vywJMC80kT1jSk84CsjOamJ2qGtiSinqIPK7FzjE4Omq9i
         2N3DMWpy5egncNaK4D08V2YuxT/pVKTXdHMN8qyXzSIMuUeWo8Q0BKIywG6Yporzebxa
         dD9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=M7MlwmQ9VDBbAerXXMDbf5p16c8e83B/8dESVAlwfTA=;
        b=h7QRUY8fuSHgGjqjUsfCUgDNGtOj5U2/XPxlaxF4HyooYpOliirTRdauXgyGhatcsR
         3Q9cI0u+zjNNtH22OfSpYGgDhF3mNlPhwucbny1qd65nIrQ/75GOnnFq5gG2BbgHmiAr
         3NgSuGpZ/PSHWIIXvKKuViRoNoYQTUER46I8ho0m6hCBciN+Nb6e/6+ySpAOWtX6E3IO
         ZUJhsCLltBCV1Rx8nhEWpcHztP/lVvrCHy8pg6DWzc9CGNdDBc+nV2ssUIwiEbA5EXii
         lvFFInMm08sDWcNGpNSLP2Gm2MaNlvjc5ZTNhNwQkw1rlS3Mf+aa4u5IkaFm1Yq91WuT
         jMtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vO5MV/9gy06os/0PryWS+bx0xH3wDhJjx5V3VCtusSeAcKWJI
	j8CYjZITHtEuY3u3TL6Vrlo=
X-Google-Smtp-Source: ABdhPJz0jJOwbfTLEUP9LIBlsffcXM7BQ+ZqoRxeDSjnChlgpzROWMHnB1JwSPdxIBoAytt05pk+vw==
X-Received: by 2002:a17:90a:f40f:: with SMTP id ch15mr7842640pjb.113.1620356159022;
        Thu, 06 May 2021 19:55:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e142:: with SMTP id h2ls2048719pgk.10.gmail; Thu, 06 May
 2021 19:55:58 -0700 (PDT)
X-Received: by 2002:a63:a64:: with SMTP id z36mr7465986pgk.342.1620356158495;
        Thu, 06 May 2021 19:55:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620356158; cv=none;
        d=google.com; s=arc-20160816;
        b=o1jaQ1I12LFTrUdac8wn82cBnZmgh4cc0JaIVb0zgs419O7NTLCby1k20wvNUZNPuI
         ebX3GodYGZHpS9tLOAh5Gswqaj6VkmL3Ts9PcPSNbXu656xV9Yvv23Tr+93k19KRPNh+
         TJ/4zGoUQgZmviWcCUtX83A+tKrz10lMxTExMIzrqFI2cNUxM/38kuFxb4+r92VzY/6Q
         CMB+b6LJOv4U0tkdeAI6j4ABa3Kop/rZQMtOFtbPKBpX4f6lxzlUnhN+X4xmNtSxjURN
         k67foGsfmWThuK/R9b3i5h0Y4ASE2R7/IDgNa9fobDGy7VO/uMrT/QEzqw3b5aIYhZvl
         y7XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=JR7zIJDgtvlix+zdDaoaUIQTS7lKkJGZid9p2vcl0Iw=;
        b=xg/+8H/sGtAERjQfPzyH3yPCrXy5UomvaU4pkQeDMzlpvxx5YN/HsH8scFvqU+pQmQ
         bg3a5alfVmNHqo9aVLoK4PPZFkm+cmMmLyRevd4bVwlgipDqLRTi4XiSewepEprqDIHo
         58JlDcx3/f1FSInc3AYIZnotZ03fWqy7RhB6iqvZcE80aFLW7D84DeQWu1N8/ykIOO/X
         sycPp8A7VpB1Mln/g/hVZqIEWcyvNdWEO694iYDeOR1eDhqwZkcNuiHac6NI6BgfepRO
         ESAKrhHnOTewtn7B9zp18AtLYLKMbcGhwWcSuuFJcHzIDiPQymDVp1OjuYqiJoCC1NqB
         wG0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uO6b4P8W;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b17si386310pgs.1.2021.05.06.19.55.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 19:55:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EAA1861164;
	Fri,  7 May 2021 02:55:57 +0000 (UTC)
Subject: =?UTF-8?Q?Re=3a_=e2=9d=8c_FAIL=3a_Test_report_for_kernel_5=2e12=2e0?=
 =?UTF-8?Q?_=28mainline=2ekernel=2eorg-clang=2c_e4866123=29?=
To: CKI Project <cki-project@redhat.com>, clang-built-linux@googlegroups.com
References: <cki.BBC2B7DD04.YLWUGFRXUD@redhat.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <d62c058b-e66f-8dc0-7828-5557cea4cb13@kernel.org>
Date: Thu, 6 May 2021 19:55:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <cki.BBC2B7DD04.YLWUGFRXUD@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uO6b4P8W;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

On 5/6/2021 3:21 PM, CKI Project wrote:
> 
> Hello,
> 
> We ran automated tests on a recent commit from this kernel tree:
> 
>         Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>              Commit: e48661230cc3 - Merge tag 's390-5.13-2' of git://git.kernel.org/pub/scm/linux/kernel/git/s390/linux
> 
> The results of these automated tests are provided below.
> 
>      Overall result: FAILED (see details below)
>               Merge: OK
>             Compile: FAILED
>   Selftests compile: FAILED
> 
> All kernel binaries, config files, and logs are available for download here:
> 
>    https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/05/06/298731354
> 
> We attempted to compile the kernel for multiple architectures, but the compile
> failed on one or more architectures:
> 
>               s390x: FAILED (see build-s390x.log.xz attachment)
> 
> We hope that these logs can help you find the problem quickly. For the full
> detail on our testing procedures, please scroll to the bottom of this message.
> 
> Please reply to this email if you have any questions about the tests that we
> ran or if you have any suggestions on how to make future tests more effective.
> 
>          ,-.   ,-.
>         ( C ) ( K )  Continuous
>          `-',-.`-'   Kernel
>            ( I )     Integration
>             `-'
> ______________________________________________________________________________
> 
> Compile testing
> ---------------
> 
> We compiled the kernel for 4 architectures:
> 
>      aarch64:
>        make options: make LLVM=1 -j24 INSTALL_MOD_STRIP=1 targz-pkg
> 
>      ppc64le:
>        make options: make CC=clang -j24 INSTALL_MOD_STRIP=1 targz-pkg
> 
>      s390x:
>        make options: make CC=clang -j24 INSTALL_MOD_STRIP=1 targz-pkg
> 
>      x86_64:
>        make options: make LLVM=1 -j24 INSTALL_MOD_STRIP=1 targz-pkg
> 
> 
> We built the following selftests:
> 
>    x86_64:
>        net: OK
>        bpf: fail
>        install and packaging: OK
> 
> You can find the full log (build-selftests.log) in the artifact storage above.
> 

This patch should resolve the build error, I provided a Tested-by tag 
for it.

https://lore.kernel.org/r/20210506205622.3663956-1-kafai@fb.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d62c058b-e66f-8dc0-7828-5557cea4cb13%40kernel.org.
