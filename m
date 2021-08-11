Return-Path: <clang-built-linux+bncBDY57XFCRMIBBIEBZWEAMGQEMYLOCYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BB63E88BC
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 05:14:41 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id t17-20020a056e020111b02902241429ba5esf571013ilm.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 20:14:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628651680; cv=pass;
        d=google.com; s=arc-20160816;
        b=D5N7fxOEnYliHxlZ7dQiNq60XjKTPvBAfkAv4sq25ZZFQjl29EXWylZc0woNR+vcJk
         DvjvYrN1DjX7yrXm0ZKqEa6Gq52SdkWEPO+ihHD2FSxypBRc0AWngOrBmiHbg8l+EonT
         lDXvzXQwEUps9C/3hlU/Vl9RJxtD1BxlyJRBUhpFFHfIa456GV8vm5OVteTT8bm5nls3
         A387w31S9/E1tTcZ+foSXIwJLD9+hDj6hWExvJkWUhPJRjSeG3BtkHlKKJbWDWmhSWfB
         NwqDIUuOFKPjiHCTG36Hd+Ka67kXxmG+nQwlz8t822ArW5Sg5SYAIYThCdOF5FRH4JB9
         99cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=xZja4hT9SM0Cl9R2pO+IOTJU9Ax/3iUjWnr4bbeutMY=;
        b=HHcp5EOd/m5bPsbYGamW9qJToFhBFOYGK15ozFSRSBCML5LLPMcCpPTH+c34XmkpL5
         ayiJtyQmz7XT+OV9p/R5IBA+5UM2Xfdf1FD1AIy4qhgGOO9R+Naj/2aoOYdY1WPiU/sY
         qhMeihO2/voF9I4Sr/aD49AO+RmVm0yiDzFFP0vcEN+0XzrSjIypJdKyKjW0RCEfRPBo
         ptu/egi9TwIK3afJKKXOSP/qsZ4cfBomWHnoU9HTKcLcZzet8tUdALmU0nr8vmqSfEKY
         kh/OABZ36zJkvxhVmyMPahuXEmIPzNqXSy0a9No/e5pUb96z24zGV+84D2qjBasR1VgO
         0P9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=M076Z9YR;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xZja4hT9SM0Cl9R2pO+IOTJU9Ax/3iUjWnr4bbeutMY=;
        b=Rz/DOKtdEdZABp/h2InklUh0FEhEyiXWzNC35WZZh7iez8gc0hA9sQsbBe/Y5+Wpbs
         4D809Vqsdg/pNCbhURLBxUTp0O9hGYGSIIo9ltksgswKq49iqj5QTXIToa2qgpOKtXuc
         coMp5mNox8X16ziC0x6/rUpgWWnunNRCnwBFdLt4JVcMceqoB/Yfpp7k6/OIzwyHhrHU
         KtBSbH8lP06a9gT62MHHcIk4NRykvqi2Av92Nxx0wfM4Spui7oANhR+iU9xHCGM6a+Xj
         XWXdBgbXWHWBZtYUA7YgaPBBxxWgCEbuMJm0zaI4zTLUmFJAGFFYOaI5qT9cSt4lwaBJ
         3Hsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xZja4hT9SM0Cl9R2pO+IOTJU9Ax/3iUjWnr4bbeutMY=;
        b=kaEd+UX0t5mD4L1g6PL/IajUqQUJsSkLCRQ+Cs2gdjJAldne3k4bzivNnEIND9A9a/
         oyxe04PkBLZ+tBO/SfcH34H8opxa17qExUu4+G+FojbURqilazP8WxVr/Mrfz5tv2aqT
         KRrZFSQr24og+X0xoEF0N2tzzK5r3EAYKGMbX3dCftMs5UxVRBEk/5a/Nxed07LdzduR
         iZANkmz0Gdc2QZoEbO4MayjqENUy7V+mhta6/W1gyWkGYM+G4DpyPPyNuwOVNO7UgeJ4
         h946FF663qvqsztRobFiPLkwSzX4bPDLzOgGfBEeXj7XWGSP8fzN+Dyz6Zf8Kzc6P0dL
         MhFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JYopixG+p35BSuZ9glozCAw0T4jby5D+kPqObC2sboXC73Q4m
	FaizQDd0AlkLIPDZba+impQ=
X-Google-Smtp-Source: ABdhPJwQun/g85b1Mfs7wPZCTbCMv0vEDYiY9lebwQ0dvOistMul8yMzQ9GbGNMWePpwrFB+TQs2zQ==
X-Received: by 2002:a05:6e02:1c08:: with SMTP id l8mr54621ilh.134.1628651680157;
        Tue, 10 Aug 2021 20:14:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:144b:: with SMTP id p11ls162841ilo.8.gmail; Tue, 10
 Aug 2021 20:14:39 -0700 (PDT)
X-Received: by 2002:a92:360e:: with SMTP id d14mr351067ila.171.1628651679810;
        Tue, 10 Aug 2021 20:14:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628651679; cv=none;
        d=google.com; s=arc-20160816;
        b=VY8Px6b+rJpysGlb2ApCXCHw6lSaE/90V+UJ5JtYebiXi0ENXv38js8KOt1L815ycP
         Ak9ux70jsOU8CE4ftEiAOQeaj0ibUlEQUQ8/7pL7pqnTr8/83QBOL2de+DRWvmq6clF+
         HsV/G36JbtAyYwz3NhDoftQRcM5Sx/uXKpt/jncB4ZSgZg1rh5M9B/wxLaTFKCSJBiAP
         CdeZ0SCLlpbCuy67DI0Sp4kmIoNp8YjwpMfPqxsfYz1U3j4bmr6a5gEAuZ2EazYA62d3
         7GaCu0epigSTKJtQbgqwt4Q8udpSOit/o9K+TCbxZ7dwhn+mSNEkI9bFRffBBqa9bYu5
         9Hag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=J1z6fKN8zO+gXNxZC6DGCEyf0QErzehg8AN6xbSNNAs=;
        b=RQx/YGGWL+drtNQCU6HB80wKBSC3wZHOy3KB3hhPCUYOCAIRfMUnOS2mFU1Pa0MrPw
         SSODxd4VRjhUBMNfd0SvzJ13mJaOOy5KmxsjLAZSvtj8n9+e3wgLkWbkdoduAWTJUT7A
         55lps+eGD6wlDEO0EXRpLcezjFf1LBSS8o+QTJNFK9+b5LsFf3YTy81POIJtblUTcRmR
         YUlStt6uUdzPBjFjhcTS7lu7dRtjuKKIJuYiEUtm/kBjSChbg4Ww5Yq25OPhROxRBV1a
         RzyFsbopZC7er3++R264ZsyUFULNLelW9nF+kN4CNxyYkYXMkkdI/VHjqnI0B5mu5l2d
         cu0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=M076Z9YR;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y1si369314iol.2.2021.08.10.20.14.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Aug 2021 20:14:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-171-ff-X-3GeNpqRcqSeSuYeEg-1; Tue, 10 Aug 2021 23:14:36 -0400
X-MC-Unique: ff-X-3GeNpqRcqSeSuYeEg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5013D824F83
	for <clang-built-linux@googlegroups.com>; Wed, 11 Aug 2021 03:14:35 +0000 (UTC)
Received: from [172.64.11.61] (unknown [10.30.34.114])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D2E49226E0;
	Wed, 11 Aug 2021 03:14:32 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 761c6d7e)
Date: Wed, 11 Aug 2021 03:14:31 -0000
Message-ID: <cki.D1ACB352D5.CYQBCFIOGZ@redhat.com>
X-Gitlab-Pipeline-ID: 351253319
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/351253319?=
X-DataWarehouse-Checkout-IID: 17577
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============5618939794062207597=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=M076Z9YR;
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

--===============5618939794062207597==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 761c6d7ec820 - Merge tag 'arc-5.14-rc6' of git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/11/351253319

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.D1ACB352D5.CYQBCFIOGZ%40redhat.com.

--===============5618939794062207597==
Content-Type: application/x-xz
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="build-s390x.log.xz"
MIME-Version: 1.0

/Td6WFoAAATm1rRGAgAhARYAAAB0L+Wj4ALpAS1dABBhHJ5VZcrATD5900+1yBZ1hAK8kjdaup6u
qqQD0BeHnpNINE9JghAhltvtVA6oObhw9qMcxarTf0Mrii3CfdkPxtTRHb6s5t4yA6ObEisTt1Sg
QOoAcF4eEMR1X/td4pdhVXTq8eiIzJCGOdQqLQl1OKtZMKuFZf51uyrhhAM+VWsUoY8qU9zgrT/R
ZqxmAzBZFdk6i5s9fKYtfIg+ps7QBWbeSvTWAjBQBWLaGYRMJTXJG5OEYhlnaXQDO0YF/wFD3RM6
hyfIviEXOy0gAolwR7p3aeUQJ7rabSbuvufyC7C5No+fenRAoRHdPkAxjbDBQtv4gwJ7CeCqPdOJ
K74nrgAEXERsHzRNkLvR4OSglnoh10otfppEhJqFEKIYiUwi5HfBASJou0hRRAAAAAAAu3XhCy2F
iGUAAckC6gUAAHarezCxxGf7AgAAAAAEWVo=
--===============5618939794062207597==--

