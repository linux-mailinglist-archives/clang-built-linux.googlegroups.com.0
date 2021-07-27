Return-Path: <clang-built-linux+bncBDY57XFCRMIBBLMAQKEAMGQECRIDY6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id A93263D8223
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:52:46 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id r23-20020a17090aa097b0290176fc47a8b7sf4516416pjp.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:52:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627422765; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fa6NA+age43zbJU34AofVIBaY9mLSUPfnRXgWWfybgIuVYnAHIYRoj6hvHSqsw/OGW
         6wtuuqWLsB0wJHhJws9Fn1aOjV2o7PFxnMD54t3NLDa/RKyRypwmYSlwd6ZG7R2Vr0YY
         64iMED82sakLE5tnJ5mJEAN4Ln9912Zi5XwvDqJqvugwexZWEKJo2lpRS4pxJUzb0kxc
         15bSgon1ZQWmjmpb+99r67fo9HWBiycEGpDyv7jg1nxp3+K0wsXKAh2RY5tJ/piS3q9/
         o8+nmBinQ9dfYv9GscjEBisAziR9Rchpq07lB9nPyi6bKFnNQFafeZLCGXsbMr2VbKbc
         hLLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=zq9TKFVIHz8RLxwJyc+t9ipIa4Rf0kaTyiiveR1+WCY=;
        b=li2KBZGeOqLBkOsqxTK1mbie2RGXXem7OvtSnez22Sa8J1dWus1PnFOp8CRUzI7lFy
         EdLtYIYFp5EAJrHWhA8BVSmwA0bFsycJ4x4Bvr56iEqg87FmbUm9B2GzwriNV7eOXXVT
         3ilWpNhsCxZGoCYcy4woXEbvg6ZVp6r8h5/4ZC4qvV2txcz4g1YfdllxW5n59SuqEjOO
         cFyTxmDYOjH7ohKgYujggPbLNahecyd0lT3eN/gsPgbh8N87uDoSbISiDJvFRhz0YM2t
         vsbUS44wyuIcHDYRM9i1J+9yMTLwbQgiHlSrFtDr4cogOZJVv4FNJOZYRi42PNi3dj1L
         06wA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="D796/Ydp";
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zq9TKFVIHz8RLxwJyc+t9ipIa4Rf0kaTyiiveR1+WCY=;
        b=DJjdJPryixD5avpVjNogSLFUHd1buH8jKBOJcgn0/hODs1CL8SR9vrwE8UPyGgbXyJ
         lgEOrij/NcvBxIKII1HvGFvxOaW/DRVYG2fyPt46mxBBobAH3pZ3r0Yf+6nrTUE3bZQh
         Tg37QO7WGwjiY7Q0QIKyRGFyaM1Q1yKI89wPmpYyyvXxpvgqIdyRmHei5FcL8yRRRsdr
         jHKUY+vu3/14sh18Lb/wb+oxv4kovl42H13SIgyM7Igb9LVayaFEFT3Zaai6fvmDTpv3
         0i2nCQlm81LzZPz0FUpkZ036RNKiu8bbbcmpR3J2gjqEMn+9r8se7GHiJxAhAWfyblzl
         hqAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zq9TKFVIHz8RLxwJyc+t9ipIa4Rf0kaTyiiveR1+WCY=;
        b=Laj10bubnuSJH7jZ1WT7zHum5Ad+vMFkd6PJXer189Mf4sqrvImw3bva1Pxgq/oinp
         rIZkntVSSPzb25ONSLq/4gGn0xyuSiDgG8eMk4hCMElnerPp7eiShqLsNMSRQhwuIufO
         wZAEp3A9xME8Ct2Ea+/v3FU9VnuHPwJyv3Wk0IXncZALHyy1uCieDVjRJltdxVT8dpVZ
         0G2cvQdBBMcNq6XHk4xRdUwjMUJGnQV0Z2HUIfIt0yT2KVTlJXjV9K30Tko9Q7Yk3SZy
         /2xl5hwwjwUQgu+rLmqX3rq7KZCsmakhYmIhx04D8U+1Cft+tz48PQeeiZSiHUKNh/B/
         8W/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bNeM4vXidCDoyC7qDEtHnp0waHTr4Qk897/Jr1h7xtptdKEQB
	vgjO7mDi4cVjZ4qnivx2/cI=
X-Google-Smtp-Source: ABdhPJwAHIrebfAV+SOV+4vLjRszuIf8lg3Y1GjNWBRMV5gnoSbhZKwtlZhqQ0U2cqfmAjv0d20k1Q==
X-Received: by 2002:a65:6181:: with SMTP id c1mr2324202pgv.208.1627422765187;
        Tue, 27 Jul 2021 14:52:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:646:: with SMTP id 67ls128453pgg.9.gmail; Tue, 27 Jul
 2021 14:52:44 -0700 (PDT)
X-Received: by 2002:a63:1d41:: with SMTP id d1mr25620640pgm.199.1627422764674;
        Tue, 27 Jul 2021 14:52:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627422764; cv=none;
        d=google.com; s=arc-20160816;
        b=g5lb4RXHE6usdtGj0COgs1l6wdlStQv4axZezhGFzj9yGjxU3OnASWve5KkaEylxjs
         8rMmn9MB4Ifo6zSU1PhSNCEQ62/xFpJNtvCTpYXPT6bzjeqHFq2UgBdZQ6jMxy2v2yUt
         +xhfAH0XGiM3DWn7xLp5N7gH3LVJkEPr0RhovvEkKWL/7vdu3RvvUgOeQ/KhdrZU1G5E
         o3yuly6DkCrSxW7y1Vp/cpPQzYQibgHEVHPYwYLIBlgA0wqYN4rPH++Ce0HGwATXvUVe
         diMqXXLwTMprzdmcX9Y2+Bg6K92stY60jyjI9vIGT5IpAjGTx3ZE2sTUt9f/bdtVInJF
         66Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=jFip91+IgwPpatO+7uwtvk2dS5/eNDXAPIYQEWhZPsU=;
        b=CkR6LrQ98fAXONOENifFvN/JlVBZB/HMTL6JlB8VUa32cmyD1oQYbHYostj5NtQ381
         CL1t9/X8VL7FZFjFHw556FdQSGHTLIDcn6LWE6r+PbsxPYUJFS5Mhb/FsxODKKvjCUre
         JMgtYbcj+QRZn41jumxgLwRbG8bZGSgiVnqKNGvxraCbNt1D/VdMbWA8lRVuqnCxkPVj
         bySMbcTrPNaiPMxh4+lJo3Zj5jRplelbtJXiqYT60s6dKIwIKHlKKAovoYNuYFGWD1HA
         Ml1ExJchrnnY3OB5tktH6hXtgJXw3GXi+TiB9PZX/OhTOsNllVgSmFkDhKWjXWW0EXsB
         KPwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="D796/Ydp";
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id o20si366149pgv.1.2021.07.27.14.52.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:52:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-461-IpeHEauMOUK9CDIAi0pe1g-1; Tue, 27 Jul 2021 17:52:40 -0400
X-MC-Unique: IpeHEauMOUK9CDIAi0pe1g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2FAFD100E421
	for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 21:52:39 +0000 (UTC)
Received: from [172.31.6.17] (worker-009.nodes.prod.psi.rdu2.redhat.com [10.0.180.82])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7A46C60862;
	Tue, 27 Jul 2021 21:52:35 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 51bbe7eb)
Date: Tue, 27 Jul 2021 21:52:35 -0000
Message-ID: <cki.61F340459B.AOK69HSF4S@redhat.com>
X-Gitlab-Pipeline-ID: 343849013
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/343849013?=
X-DataWarehouse-Checkout-IID: 16750
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============0182124891520689462=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="D796/Ydp";
       spf=pass (google.com: domain of cki-project@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

--===============0182124891520689462==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 51bbe7ebac25 - Merge branch 'for-5.14-fixes' of git://git.kernel.org/pub/scm/linux/kernel/git/tj/cgroup

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/27/343849013

We attempted to compile the kernel for multiple architectures, but the compile
failed on one or more architectures:

             s390x: FAILED (see build-s390x.log.xz attachment)

We hope that these logs can help you find the problem quickly. For the full
detail on our testing procedures, please scroll to the bottom of this message.

Please reply to this email if you have any questions about the tests that we
ran or if you have any suggestions on how to make future tests more effective.

        ,-.   ,-.
       ( C ) ( K )  Continuous
        `-',-.`-'   Kernel
          ( I )     Integration
           `-'
______________________________________________________________________________

Compile testing
---------------

We compiled the kernel for 4 architectures:

    aarch64:
      make options: make LLVM=1 -j24 INSTALL_MOD_STRIP=1 targz-pkg

    ppc64le:
      make options: make CC=clang -j24 INSTALL_MOD_STRIP=1 targz-pkg

    s390x:

    x86_64:
      make options: make LLVM=1 -j24 INSTALL_MOD_STRIP=1 targz-pkg


We built the following selftests:

  x86_64:
      net: OK
      bpf: fail
      install and packaging: OK

You can find the full log (build-selftests.log) in the artifact storage above.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.61F340459B.AOK69HSF4S%40redhat.com.

--===============0182124891520689462==
Content-Type: application/x-xz
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="build-s390x.log.xz"
MIME-Version: 1.0

/Td6WFoAAATm1rRGAgAhARYAAAB0L+Wj4ALpAS1dABBhHJ5VZcrATD5900+1yBZ1hAK8kjdaup6u
qqQD0BeHnpNINE9JghAhltvtVA6oObhw9qMcxarTf0Mrii3CfdkPxtTRHb6s5t4yA6ObEisTt1Sg
QOoAcF4eEMR1X/td4pdhVXTq8eiIzJCGOdQqLQl1OKtZMKuFZf51uyrhhAM+VWsUoY8qU9zgrT/R
ZqxmAzBZFdk6i5s9fKYtfIg+ps7QBWbeSvTWAjBQBWLaGYRMJTXJG5OEYhlnaXQDO0YF/wFD3RM6
hyfIviEXOy0gAolwR7p3aeUQJ7rabSbuvufyC7C5No+fenRAoRHdPkAxjbDBQtv4gwJ7CeCqPdOJ
K74nrgAEXERsHzRNkLvR4OSglnoh10otfppEhJqFEKIYiUwi5HfBeL2vb65PdkAAAAAARooHiidK
GAkAAckC6gUAAHarezCxxGf7AgAAAAAEWVo=
--===============0182124891520689462==--

