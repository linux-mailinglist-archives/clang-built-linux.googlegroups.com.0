Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRWWY6AQMGQENDA535A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E774E320858
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Feb 2021 06:10:31 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id v42sf5300006ooi.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 20 Feb 2021 21:10:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613884231; cv=pass;
        d=google.com; s=arc-20160816;
        b=SZjEyftAWXjCQQoHlp7p1ZnZzvrF7U4VVoM6Uq8IRmsZqLThQgiDqqMPWa5fWKw2mr
         CtnKXq2Qpy8ZnvpdF3Hj2WtaRhxbbiVuT56CM9nJiUKT3kGlfTZIEPckerycKlUDVlei
         Tl4e/Tvqr+1iWfb4P9vuo86ni4kbzAv1zxtMJEL3efRb5+ZodD1JY0ZN2jymj7WUspGC
         D2TBpNTpC8IWw2Bq1uolgeKNSG6Ajvw0QGx88SoVXPe5LMTQmDXqtgbscQdV397iwjbv
         5xg81C+frTIYAUHBESBKzHyeY+Nutkj9aWimrF3IYnjZJaMwhjaq/+KPbSsF+trHwECf
         7X4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=e4kGA8e+wfvs1emiml2AZ/5oUThXw08CKbPctPkSpIk=;
        b=vTJ+1I0PHSNHaV9sMl5eIMD7AGjwl6Di0RKGkxdKo0XlayzbY5wLqEFBSqlnWhuSqk
         Dxp1I3SV0XncicmaSylN6Pwlb592Kb0cT7hEPICgyN1+g2FKtmCH7VsBjbzIQYXKTFv3
         xaGgs8OWJqZ9LU9p/KZ3b/Oro7SbmX2OY2FM/L+Ht2lqGbvzxrq+BZxFB5Zi4lqgO6Om
         cg2xn4J7v5iEw97DxlF/av5fI7nZQgBPTQWe+NwTHDPSHuTFOVuygu5AjymDqtbQeEco
         CxhrWF1ZlNeVLSxtejHmMlrH7j3jZduIDzkImo/UF/hv62OqtoC4XErZEbR4JEqTWLfZ
         J88w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=J1+VRsXH;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e4kGA8e+wfvs1emiml2AZ/5oUThXw08CKbPctPkSpIk=;
        b=SpEYOljMJ3l+UoWPg8BKjWYh6FSDzMrw4GQ5CFMs7SEOeVuQ2niQ3myGIWKNNOwAPu
         5jw2/jDu6Zd4uA22BK28ksEstGW7JYGPjF/5o/KIe72LHMCMqgZsQs/S7Nh72ru++jhf
         wkVDMltwDaAtEGHkm9EwXnPciy+ON1OyhcTJ9Ad1LNtQvHxl97EuG/FQleIPgXEq6jf3
         BOIFmTqYpDqzC/Gc8lM1cnBTXdccVLj5OGmJ7DBuEMjytSK7XHQ8yu5O0zXeY3ZB4hB4
         3nQ4udOLTXnGxxBTJT6ZVxJwHxan5O0k8wQN3/y3Co6y1fI4aFdDVG09zBUA0HPO+KIo
         7aOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e4kGA8e+wfvs1emiml2AZ/5oUThXw08CKbPctPkSpIk=;
        b=qv9IqA9c6rscSaFd6SyoAcbwS/rl1k8KbjlCW0KL0Q/r3mRzfLwCkyDMPHZ+8wdkCS
         HdXbEDWQOvjSpUNIVWhh6bQOCjVrpKA7m1l0wjKn7DgQVi42hFtWO/HdBmHEp/PsRtFN
         VaCvZM0ogCHT+5fZ0mttVnWJYzkrzVDvyqw/nCUM6qgJgLU0OgtjqpYt9235Fh+GbS3f
         6TFaDat2+MnDT9ho/KlVfWA+YgevX2j0QfNWwZ/eSeqHO05SHO34/fJT39axR6+P+6xz
         v8l6hmCS/FLzQbmy/ylKP3VXl+gz70aPs33OCQSW9X6UXkZelUa9SKGtdPaZI4haycSk
         QD2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xqyt4b6BTG1Stzg0TwOPrlN0+qvegn8TruvmiVK9hZ9F/CDiW
	QWFs3A5VQVNsch3KDhfKOuc=
X-Google-Smtp-Source: ABdhPJy3A7dbVo9+2ie74QXCyZvGFqyJo+iSA6++1cjfnqJ2qMhgUmoUSADwmtIFvkKKO27xAa0yKw==
X-Received: by 2002:aca:4b0e:: with SMTP id y14mr12092132oia.145.1613884230925;
        Sat, 20 Feb 2021 21:10:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b489:: with SMTP id d131ls3423798oif.10.gmail; Sat, 20
 Feb 2021 21:10:30 -0800 (PST)
X-Received: by 2002:aca:309:: with SMTP id 9mr11793920oid.85.1613884230594;
        Sat, 20 Feb 2021 21:10:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613884230; cv=none;
        d=google.com; s=arc-20160816;
        b=wQmD4wq5d91Uc7KnPPjs+vDfsTnf8hQmjRSYShZg89twjB0bbOVUlScXqumMdum2aM
         rkOMBbIduWpszaI1oFvGTut+rMSWR+ES7nTriOlHllgQVafpoiBw7Ofv8X3/2GQ0jfL2
         lfu8hgj81O1TeSEfNA45FMVNSWD18wwVKsJ3AF7W1M1aWGdBuDJ7Y01VnvCkryO+XnNi
         lNZkPtYmn755mubOgfSkfNd7feNfsvK3z9NKENHZ+xepEG5teoSzr21KtCTqRNkIPTvd
         APGGw/C8MfqIi8cPLA4d2n/2BelVGoPAybvFL4CyEKL/EFa0idQO3fUsHdkj2/6jkaCY
         zb+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WLk37eqBPEBEV5QnA6RdIvKxA4DJbgnW8UoTXXrdzhk=;
        b=itNk/Xe3KrJQx7H/2hGBHKKL/7SoVQ/QmbNum4JZrbperISkQs4zaPgKR+HgRH+cnP
         CSW++2XjGRblpEcU7vJNGNlQp3IFGKdJIDFgipWNRiqF84N9/1epnzt7MX+t10UUCaaG
         yeUHGtjIhShazhvJKt7pHjdU+nZyAplL9Mp8U7e3tF0kcsW0JKHlvRjoSyRZ2f9A0Wae
         A6wEFqFmGN/u0OKZtRG7vWY2vP5G55kgT4u5fGcaoTHdELkBfk3XbnqL0pXIg8+eWMxl
         ELgTpCdPvSJogkXBc2BT0UBU9X8DezCG41cg/rgvw9ll9Od2UfjlB1mCs2DumxU8j/s+
         Pm3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=J1+VRsXH;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q10si1374372oon.2.2021.02.20.21.10.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2021 21:10:30 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C28D564DE9;
	Sun, 21 Feb 2021 05:10:29 +0000 (UTC)
Date: Sat, 20 Feb 2021 22:10:28 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: CKI Project <cki-project@redhat.com>
Cc: clang-built-linux@googlegroups.com
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.11.0 (mainline.kernel.org-clang)
Message-ID: <20210221051028.GA21653@24bbad8f3778>
References: <cki.AE7E6672E1.KJACZMVHOY@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cki.AE7E6672E1.KJACZMVHOY@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=J1+VRsXH;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Transfer-Encoding: quoted-printable
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

On Sun, Feb 21, 2021 at 04:20:12AM -0000, CKI Project wrote:
>=20
> Hello,
>=20
> We ran automated tests on a recent commit from this kernel tree:
>=20
>        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torva=
lds/linux.git
>             Commit: e767b3530acb - Merge tag 'arm-drivers-v5.12' of git:/=
/git.kernel.org/pub/scm/linux/kernel/git/soc/soc
>=20
> The results of these automated tests are provided below.
>=20
>     Overall result: FAILED (see details below)
>              Merge: OK
>            Compile: FAILED
>  Selftests compile: FAILED
>=20
> All kernel binaries, config files, and logs are available for download he=
re:
>=20
>   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?p=
refix=3Ddatawarehouse-public/2021/02/21/624441
>=20
> We attempted to compile the kernel for multiple architectures, but the co=
mpile
> failed on one or more architectures:
>=20
>            aarch64: FAILED (see build-aarch64.log.xz attachment)
>=20
> We hope that these logs can help you find the problem quickly. For the fu=
ll
> detail on our testing procedures, please scroll to the bottom of this mes=
sage.
>=20
> Please reply to this email if you have any questions about the tests that=
 we
> ran or if you have any suggestions on how to make future tests more effec=
tive.
>=20
>         ,-.   ,-.
>        ( C ) ( K )  Continuous
>         `-',-.`-'   Kernel
>           ( I )     Integration
>            `-'
> _________________________________________________________________________=
_____
>=20
> Compile testing
> ---------------
>=20
> We compiled the kernel for 3 architectures:
>=20
>     aarch64:
>       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>=20
>     ppc64le:
>       make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>=20
>     x86_64:
>       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>=20
>=20
> We built the following selftests:
>=20
>   x86_64:
>       net: OK
>       bpf: fail
>       install and packaging: OK
>=20
> You can find the full log (build-selftests.log) in the artifact storage a=
bove.
>=20

This seems like a machine based failure according to the backtrace?

00:41:52 make[4]: /bin/sh: Operation not permitted
00:41:52 make[4]: *** [scripts/Makefile.modfinal:58: drivers/regulator/max7=
7650-regulator.ko] Error 127
00:41:52 make[4]: *** Waiting for unfinished jobs....
00:41:52 terminate called after throwing an instance of 'terminate called a=
fter throwing an instance of 'terminate called after throwing an instance o=
f 'terminate called after throwing an instance of 'terminate called after t=
hrowing an instance of 'terminate called after throwing an instance of 'ter=
minate called after throwing an instance of 'terminate called after throwin=
g an instance of 'terminate called after throwing an instance of 'terminate=
 called after throwing an instance of 'std::system_errorstd::system_errorte=
rminate called after throwing an instance of ''

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210221051028.GA21653%4024bbad8f3778.
