Return-Path: <clang-built-linux+bncBDY57XFCRMIBBIFXYKDQMGQEPHVHRLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0F13CADFC
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 22:33:38 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id g4-20020ac80ac40000b029024ead0ebb62sf4947798qti.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 13:33:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626381217; cv=pass;
        d=google.com; s=arc-20160816;
        b=B+/vwLvm3mKZ1Akb9xHGMcGyREu0Ai9brIXv7WNECATLUgkDWKE/yjQwGpK4VV1y+T
         USiRAUY0Kz8x2WQ0SgQU58Hqkc19JoUK8HJEq30+keKRdUlSXFRVRa7qIC0lfwCSRvKn
         skmiOi3mZGhhPmJUrvW3tsCOX65rTiXe0em28OJcIWmCVoDtLIJfbK+L4kJkR0ZCAN4R
         ALPgFp4WCqDUpA7ypvrCrK//ATwNlCAmCs2CQZsEmKz7VTMrBiyIMi3jsNadmJ4+s08Y
         q6WdiGD+1ygZxtkIe6BG+XAYsjo4S2zXG2M/G7BXLsQUtuT3yDUfEDYOmYbGd+xmLiW1
         66bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=HgEYmyiDFXv6dXUoYMo9NSAOmIkOPzAR2V4YDPRAulc=;
        b=pS6fqbSsk+I1AwJJeJ5th4OGG3eolv3Lo2vjBfHEyQCeXEzCMARThi0TWceOXg5bRB
         06quxhloe7EKA+29rhHFDbwwzs/r0gc371EepIUEYmwSI8o3pqkuVjJfcU9KxoBWj9Ko
         gt7QO3PMYfRvUy/xR7IJwyxdqyLI8u6WZodBQlpQGm1Z07YiAZsHlKZNee+KRnbJPom/
         yhMi5GvoqHUWVxm5Gqo+/ajdSu9ViR/9tfngFcBgo4BWYR7ZjacADPqt83x1dsRPuJ8d
         XVgOnDqtYHNlqCewywfYIjn0oZG56h5IpxDMQ09C+ccCnybZQ+xCEz0pHaa08m8nlorn
         +BZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JrAhyEMK;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HgEYmyiDFXv6dXUoYMo9NSAOmIkOPzAR2V4YDPRAulc=;
        b=EDgyg81KrkM2xkfYDpcZTERN6v9+O98vVQP/q5ZB27nzvB5dZWxyHa30QDzWoogbVI
         UrE2DNR+bS3pV7U4hDOOEM2JjEQH17v/QGBHXvGv20GkrvVPW3RCrPfvf3OkcxvB+bhU
         AKNUt1MSn9l8LjtbKsa306Kc1/EuwaNIH5rzl0fIquq2Vvpj6Zkn1MCCRZJg9zkgjoyt
         0RaRTd6nlNeUIrIEV+wiNI0rPrbndwUW+GnarcUBO32f0+8jmDakTcpT2BWEc5aETBVs
         TfCbFVRt/79PrSXwBI0gmgAoF11CGzbo+RacP5UwQBRahF+HLcwZw/T6AsgpScDT6PJL
         N0HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HgEYmyiDFXv6dXUoYMo9NSAOmIkOPzAR2V4YDPRAulc=;
        b=g4TABioGuB86s0eQPHzJOCZvD4CXyaxrda3ocDNwmr01ItK+fhbLGQXiZyG99dqGPy
         pDWRE2K/TJEsOs9KGJOO9iPe9mJXtpC5lX97P8L0izDA4/Ybn2vRgMban6tp6+XHYTAY
         21aB7ShByoxOmX/O8QhQxXIDWc3sgjAZnX2I4eCcpK9SuGYqZwPi1Gjt5C4rwo80V2ak
         pvJXlcGcGqbP5aMFCD65L6KdrsZWXL12+hAMVvJ5SbwsvIfNGhQWIsTNdWbBrAf0YArL
         cPK7xDokVchcuqP3S+mZKrHuVnlUIYAd7vjnKA6DDADbhTmvTGBdUP4CLq6uUFislP2E
         OhKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dq1npBLzLF/d5wxoiOxLPW/uI6RvytZjJWDFRKMCs9BkLQhr5
	o6JYiF8tIiBV8espoAT5xPU=
X-Google-Smtp-Source: ABdhPJz1xpcnGdTVapU68YBWXqRZ+DiAEWQfq0hnAbmltwW7V2Z3lbIvxRucC3jAEhlhz5RxjHRV0w==
X-Received: by 2002:ac8:7645:: with SMTP id i5mr5696004qtr.133.1626381216922;
        Thu, 15 Jul 2021 13:33:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:148c:: with SMTP id w12ls5602317qkj.11.gmail; Thu,
 15 Jul 2021 13:33:36 -0700 (PDT)
X-Received: by 2002:a05:620a:4d5:: with SMTP id 21mr5869683qks.397.1626381216481;
        Thu, 15 Jul 2021 13:33:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626381216; cv=none;
        d=google.com; s=arc-20160816;
        b=rEBzONyFPM2V9nRPQOHIxcOL5BpygN6a+3kkbjfQQW0UrnOG8brJGUYWebab4O4t1F
         F+REkXvKLzo/Si6N2tULWKfT/V2LBqdmCW+i0CJ+x7vx1PXp7Dp59ngzgtojaN+Fo3F8
         63jzec0s5fmSPXo9RzXlsJ/6ObjVRoDU8SYdSMiJ4ALhMEcM4I0usNtN13xT9xAcT49Q
         YKI1NDW53nyi/HChJDMAKy0bzb33lxfXPJMZiSBv9t9IXMO7eLDrBtv/7S0TEPQTn0eQ
         fLrlNL7KJ5/QHCRAUHgUDx9qoI8Me7jvwv41/woz2YpyQlUkrERDi3azoL0CUoghzGcR
         ctAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=K6kxNL15U4RDD9Y5hzOoZas11IdA7UM0fHXHMlcI7+0=;
        b=tjeg5zM+7UgUZMLo2Kqx6YaW7k9G101undXjUomYhsn+yrKHC9Dsafr1EkwHST7cmL
         KWXIBO0CO8XyzX0zqP5atqCgXmbXZwNxJa7YwP9GofOG2k+lX+iXyflxi6cjvI/lBggG
         pJmrXK0Il1E5x7n9lnxjVJslswEwOqrVKmYO7CsefnYTFbSDvlQ5uL+ZUYtsRRDFUlYU
         dfZQ0hmV2+eODEe1tTkKKF1Rt4v00X+0R8orH2Vm0j0nd6In63dcqCgu9qacMN7AbRRu
         qLh1IxVop4kUi4JmxpuZuwruYfV7d05UDqdSHpnUL/O55FeDoSvm9cohLsedROMRdjnf
         4ATQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JrAhyEMK;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r17si691190qkp.1.2021.07.15.13.33.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Jul 2021 13:33:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-589-ZJLFFOeTMEKP3gMhhP4OIg-1; Thu, 15 Jul 2021 16:33:33 -0400
X-MC-Unique: ZJLFFOeTMEKP3gMhhP4OIg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3550C804142
	for <clang-built-linux@googlegroups.com>; Thu, 15 Jul 2021 20:33:32 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9F54B179E6;
	Thu, 15 Jul 2021 20:33:28 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, dd9c7df9)
Date: Thu, 15 Jul 2021 20:33:28 -0000
Message-ID: <cki.EA22C7CBA7.OT2FVUJ1F9@redhat.com>
X-Gitlab-Pipeline-ID: 337913094
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/337913094?=
X-DataWarehouse-Checkout-IID: 16045
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============6640075192979893376=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=JrAhyEMK;
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

--===============6640075192979893376==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: dd9c7df94c1b - Merge branch 'akpm' (patches from Andrew)

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/15/337913094

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.EA22C7CBA7.OT2FVUJ1F9%40redhat.com.

--===============6640075192979893376==
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
--===============6640075192979893376==--

