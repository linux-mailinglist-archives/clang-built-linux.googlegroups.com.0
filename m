Return-Path: <clang-built-linux+bncBDY57XFCRMIBBKONY6DQMGQEDY6GE7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8213CBD7B
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 22:06:03 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id b8-20020a92c8480000b0290208fe58bd16sf6110412ilq.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 13:06:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626465961; cv=pass;
        d=google.com; s=arc-20160816;
        b=LPy3uygRE/xI8YrEKGXMfSSJcZfsEKDDNHaFBRu/SYyKv0cAsjX1YZ0e758ppm9xGc
         /hURnmb5Z2mfvL5D5Xp1p2XmBsEO2vr0KP2KddpICLOHQZ6fD8fuFvnp2+dXGnYcr9qF
         ZrBkk9A/klPGhs5Wgmr6od9HIoBGaS08+APiaI0tr/wacS9umxbzDwP4NbMvZiwyP+XD
         tYAXKnuYL08W8/IOuHMNyhbfzr3zZO7YFTgwppvwbnMSmerC5owESxj/1TAKc4ToKCmv
         Vrrt8k/0PkhZFRLjcqdl+wIFnkv/eHV5Vfuhwu2zgsW3yeEf1vOTlNjD8faD+BIYOr/Y
         KSoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=4vu3DXWQvwOaW526a+sjz8I83NMylx8Pw+ZI1CYmPrc=;
        b=jpR9fsTuvavU5NMEu02yfFo0kUlNanRl2a9oaVJp9hzBNUCkT69WaOo2ORDIxKKpDn
         mqWrWmG/Mmf4zBXQAj/Ge/0sVESISXLko28jOZ6e15wj/8sZYC91m8N9qXZn6iPzqUmu
         r//LsFWCV8RsQF3hpfZzvtbcV9Y4X+G6JoWFDi2b1YFcYiLkqR9B6z6iDqoIU8ESD5Yl
         uKwf4NNavgKbli+HD7YdREi95sD3ZivwQCgwoDJeGRFKENKajL8x/UXDNO/STWhef/Vc
         d/lg1gLgtxcsMgko+zDz549X7OUwipk82BRCzA/c6Bl5sVlC/7symYC06tA2CTUs0S1Y
         DBpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hwXAlfU6;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4vu3DXWQvwOaW526a+sjz8I83NMylx8Pw+ZI1CYmPrc=;
        b=YR1G3wusGAcEdcRUdZ48P/5ZOucO41i7mKIWLZFcTGhl6Cf45HrIxcwHh6V8qiqKci
         kWY6HO3P3p9kB6o7wH9XyVdPtl8tschugG4gxzcgkQ897ZScXGf0oSRY9MFkEKEX1PT7
         KIQUQ+MF5lAcbcZ264iE9Y2MvlRf2pP2THvPKP+uRFnwxT1F7/MgevO+gjCh5oXPj2Kk
         5nqy6WDnEh8/ajM6nyRqFC9HZECVPGdeJEQnjrjM4B7ZKtxFQyhWe8QX9RAL1if+3/eI
         gkIiLr57GUAGQM6KTwnJny/3lCr5KSke28KWE82+PrBtN2SvA7N9q+WynCIXtmFwtWog
         jngA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4vu3DXWQvwOaW526a+sjz8I83NMylx8Pw+ZI1CYmPrc=;
        b=PWS8TtZdlymX0a1woP1kUjryv3FX5N+a1g1lQNtcP1UoA3JuP1pvyArNia9VuSEqDH
         BCF0wBYTdxr3+UBG37wnJFSvJhLi4tJpCAoM1bDY9+0BORqrHizyNru9lFAUCrO4NS1M
         uuN2xgqNSJGwfij6iCh3KSymekv+gsFWH2yKIP+yFLyJOfOuBBlbQ92KJhSAoggy5HTp
         qOCiMSzHOL/tQk8eKK+4NmTGF0dU0EloHwrI4voShS2NvkLdokB5L4ryq9Kf1uFOCJxP
         +h3T8LW3wL7tGKokjr5/AkmHHmmcMv/Yq1lq3FTZRDmdanlxHpvKELFqr36bsYTSs2ro
         BdFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aKlICgOgNOP5yytzF+CGL+HB/+3OEsXdK3f51M+mRyMXAybnE
	6c1VrjClmGcpjGY5moSI5DQ=
X-Google-Smtp-Source: ABdhPJzPOhQTHkoq1B1AFQ6u1XjC9oQOngdmJdsVzD9yEOTfb28lQix7H7DaZ5pHiqG84TWT7UWFfg==
X-Received: by 2002:a92:6e07:: with SMTP id j7mr7395645ilc.71.1626465961611;
        Fri, 16 Jul 2021 13:06:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2c12:: with SMTP id w18ls2113618iov.9.gmail; Fri,
 16 Jul 2021 13:06:01 -0700 (PDT)
X-Received: by 2002:a6b:4f16:: with SMTP id d22mr8681296iob.15.1626465961263;
        Fri, 16 Jul 2021 13:06:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626465961; cv=none;
        d=google.com; s=arc-20160816;
        b=jdqHvOfKL0Qka7Mdx+JO6YAuN6adBb1LdcL2DyF11ARWVbwaMJD/4ug8nLQupQ7ZvI
         UkhIFwamj4l+NDv4YdTCMI9pe+HEnnsZvguBGwQBKOP9ydePTolSKfUj61TXFLp3Pc3h
         1YXL5boqNl0iGMhXcUJZHHHssRzkrARP/bJ9xPgPVNsVLzYaVFNCUIlGMCw5hIzZOqnX
         uSYe2PKHrglDZbo+t3/ZDO7i5Yq8Po8hLlU379HJYVzQBdSEAk3NzLdXR1Gyal/qHk3V
         6I6wcdc8uFzeFI5nbrtjyu4CIwCWkdkVT7iKp8lrzLZ0t6VMjtAFZcWWdz1Bl0KPbN1i
         LiBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=fPHYUR+rJuV1hA0pJiK/BbASHnNCbeL9eqvcVm349VI=;
        b=a3IH3XpFdstdylW6Efj/RHwR+S5HyETZ3zCQLyj+nPnmCrHt+JBo9U0Kyszd2qVytz
         ailgzbGwxG1OBadN71FL9NGQCmgFSNaAkeTUdZvrB6Awus/GrHRY7ZcsMCEt4GpdcYo9
         hx7FdGDo/uRDAN1+waBoDFB+UQob1oN6YN5bgY20t/6TqT/6KLWWqb8nJ8+r9w37E3pP
         TsRGy1ySFRR9wRGLEFF0GyGUgWA8/a5N2boZNkY4a/BEoiOpyg3UUiW/JTOpwnfvf4T/
         Kz9Lrm5p3sBQX6RJxmeCUiBhzovO1sBHg1qfhvcE1D+9nlqZxcMdrLH0kgj4JpLfEkIr
         NMLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hwXAlfU6;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id e16si758210ilm.3.2021.07.16.13.06.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Jul 2021 13:06:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-Qzg8lb8BMxKdIYtho9_tGg-1; Fri, 16 Jul 2021 16:05:57 -0400
X-MC-Unique: Qzg8lb8BMxKdIYtho9_tGg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE85F80430C
	for <clang-built-linux@googlegroups.com>; Fri, 16 Jul 2021 20:05:56 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4234360C4A;
	Fri, 16 Jul 2021 20:05:50 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 45312bd7)
Date: Fri, 16 Jul 2021 20:05:50 -0000
Message-ID: <cki.79702AF1F0.39AT2LIC8Y@redhat.com>
X-Gitlab-Pipeline-ID: 338525845
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/338525845?=
X-DataWarehouse-Checkout-IID: 16108
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============5818251269780557346=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=hwXAlfU6;
       spf=pass (google.com: domain of cki-project@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
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

--===============5818251269780557346==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 45312bd762d3 - Merge tag 'zonefs-5.14-rc2' of git://git.kernel.org/pub/scm/linux/kernel/git/dlemoal/zonefs

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/16/338525845

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.79702AF1F0.39AT2LIC8Y%40redhat.com.

--===============5818251269780557346==
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
--===============5818251269780557346==--

