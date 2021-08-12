Return-Path: <clang-built-linux+bncBDY57XFCRMIBBZOZ2WEAMGQEVQKI6VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4F33EAA73
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 20:48:06 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id w11-20020ac857cb0000b029024e7e455d67sf3686634qta.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 11:48:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628794085; cv=pass;
        d=google.com; s=arc-20160816;
        b=F6nSXxJqWX9oG/c79LnjX8PFdHCYgwCRlaEBgPAyoWrSsPEuGTyQzZBH5Lv9YpiZ0U
         5e3yOmKKWyDoF1LhfzMrOofzfsBksxi73SgnS9CYWmbCj6mmFADf3FCp7wlekmlBElUN
         +O4zi5e8GPFg0nKS/PkaxlSqtLYPj/IJQ/PxNZkz6jt7CojAGMmJOlblIYWxGBZAVSrq
         8GOZF5EhwViFbneRNYRyZRWaESWfT5qVtDKbIc5Jj+AKjzPcT4gNeSv9ln4T5KDSLvMF
         VwFb3rlwPSqA6cNmJKFqaiGKnsvpNG1wLNh3xoHX0LVXau6abhQ7EO+d7/nOaw5jVr66
         HFhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=WG0oKJADfToOHNV5IkxRb9p83ZCB8kscrM7BA3QVgUg=;
        b=rAVLChCPNehqwUqWBB1WFXXAOgvGZJV2dnCzCd6cjs7LUPiP4WyrCqESjLw6phyDM3
         frX3SmPhy9ya83163P0iNnxdxS28XExJ6J5AgIEMI7aZEu0ZTDYWsYY+YKE44SGdvaPe
         Z2JiHKfWtrnpIeoPKlNszoDTJ7JQRF6hjLPFU4QoI3NL4O8fbuCrQibftqbVFNc7B0RS
         SgymBWscDNOpnbf8sgwifl9wLXZ81yvrRbdRFKDpgwR+iowaHFkh74Ktvj95zKqP+8yP
         VIXXEvkm4E2N+zoWptTsvCjKuYv27/CfET/QPkrhuvHOaDd4WykwmMoP+pIWs6rjsM65
         0Rhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ezGj8Px2;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WG0oKJADfToOHNV5IkxRb9p83ZCB8kscrM7BA3QVgUg=;
        b=cF6YhnNcLpvtjuQ5J5xLJm6dZ0OPN9MyfxtNucXcvCfapEnWufZMcXKHNygyQiYlH8
         Nd7hVostM9Gg6I9meCyw9feHV/hUGmutAPC+CmbFg2zSp4MlH5l5Cq/BYGAVmrYKZ4kf
         Kfp5CBk72IovPIRqlR2pSEwmSWuHqyeXAC2IigBf/KPeEKee/KfutQ0/apO4HaXGE7R0
         1jB+zher4PYrSJ5E6S43VDZ+oSghjR5ugiXca3hw8O7c68ygtyqfb8M0K7NSfohxEo4i
         99/bV2fgr2g4mkOMpy8zEp5YiOVR+J+eWC1yNCaE/RrhaTjkE9wIVOVqnQdzNsSovYNc
         udSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WG0oKJADfToOHNV5IkxRb9p83ZCB8kscrM7BA3QVgUg=;
        b=d5QflaCrjTZn5bWrxlUyT08DxJ206vcUL61//+2LXyiMPA5zhA67c2DCJKLIJhSe88
         IA05bY8HL73/gUJxfMj161/N1szSZECblTLRQVyheBGbm+QIX/JGnA2XdKSVKp3HVSRg
         e5SqKs/B08jbqH+37neyoFd5pleg91GDJtwdlEZ32HNJauzEfsXi8Yy2lDSuntI1ZdHl
         fY/P69TtK3l1UAZkEvhJMlw6f2WLX1i+Wc5cZllCV7VnLidZr8xaL3p+mJ6U64zeKM9c
         noVmyESROLb4t3rSgHxgyBsMoK+KJvA1hKmxMhGKOlGvNrr4inf0VRF0YMZ52+j5F4a7
         IOMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530V/U+FKKeoaaUbDYipe9NbWSrs5ldetovWPVKl1m/zCoC1EDuR
	kvl/50sKu3FFI/9rCDzLYPM=
X-Google-Smtp-Source: ABdhPJxQ3R5v8ImIKyvBRA1bRPpu+Q2Z5/cIUlXkaqub0wBUh652rztgyLvV/VTD0CVZXrvbmWDSEA==
X-Received: by 2002:ad4:498a:: with SMTP id t10mr5451943qvx.8.1628794085313;
        Thu, 12 Aug 2021 11:48:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5c42:: with SMTP id a2ls1743545qva.4.gmail; Thu, 12 Aug
 2021 11:48:04 -0700 (PDT)
X-Received: by 2002:ad4:5f09:: with SMTP id fo9mr5288914qvb.35.1628794084875;
        Thu, 12 Aug 2021 11:48:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628794084; cv=none;
        d=google.com; s=arc-20160816;
        b=ZbE7WOGnphnznixrJ2ZZsCNGHBx5z9H9KXnxN+18/njk92/yZAcxaLkqK0h2xnM65c
         uqc5oxNtO5yIXtPbreaL1xqxE50FqQsDn9OvvOYX+rbQYTFutTC+pMi5j5t8+dcMUDpK
         tC02yDNCgf97Hr8DewlPv7UI6gyG88fS5Xf54EDi0WSCWrkGkGqF2hB9Nn9egXhtfsqa
         cackODi4BMBlxhEXXIrHlS695ckB2GKayU5JDHtDicSuYUhIXVyrYayqAS9CRUcb3925
         xMkjg+nzq3WXnCHi6fwqrt+tuKQDqE7MkyvTGfrCS2NYiQIpBrIwcO25H1BO0iS6cT4c
         /9fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=R6RCVmZnx6HV8140XseumwHaQV9xQzUaeFreCA6RG6U=;
        b=b2SRfZz9VYy/HVaGNr/WK+zrCL3H1keJtyMKlT9q3dFwKzgCBUZrM5e1X/2jhxjVa/
         xpqUCXKtaLyPopPF+rmNPyyzaS4LH8VJ2tSToGI8rGg8F4j8sv0mK8zZieCXJONrabRH
         JCALP+rsyW50hAHsZ0Kopw5o63T1RC48mMSr29BxkJwH9B77OodGG3DybxXgLikb88IZ
         uI+tTaG4jD2K3ZodJeXjuQqJdcw+c+2+lAfxoVfXAC9ioiPaYQLpkks/QYry9eShxnFp
         MOC0UW/7sPAJ0ecG9+yIYS9l6zyyhGgA5C1MLQXqSTN1AjJbAX78/OCMrStreUoqEbbt
         k+iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ezGj8Px2;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id n2si130898qkp.4.2021.08.12.11.48.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 11:48:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-532-O8fkHBqxNUS6dBNPzVSFzQ-1; Thu, 12 Aug 2021 14:48:00 -0400
X-MC-Unique: O8fkHBqxNUS6dBNPzVSFzQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B9694801AEB
	for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 18:47:59 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D36041AC7E;
	Thu, 12 Aug 2021 18:47:55 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, f8fbb47c)
Date: Thu, 12 Aug 2021 18:47:54 -0000
Message-ID: <cki.D0002EF7C1.9SCAT0I7DI@redhat.com>
X-Gitlab-Pipeline-ID: 352426509
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/352426509?=
X-DataWarehouse-Checkout-IID: 17676
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============9068481008580943593=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ezGj8Px2;
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

--===============9068481008580943593==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: f8fbb47c6e86 - Merge branch 'for-v5.14' of git://git.kernel.org/pub/scm/linux/kernel/git/ebiederm/user-namespace

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/12/352426509

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.D0002EF7C1.9SCAT0I7DI%40redhat.com.

--===============9068481008580943593==
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
--===============9068481008580943593==--

