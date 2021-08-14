Return-Path: <clang-built-linux+bncBDY57XFCRMIBBS6C3SEAMGQEMXMTUWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id EC00E3EBF70
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 03:50:04 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id m4-20020a170902db04b029012d5b1d78d5sf7189583plx.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 18:50:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628905803; cv=pass;
        d=google.com; s=arc-20160816;
        b=hoUtLwKs6xpTIokoqDpwOpkx5xh+eA7jwfvGEco8rxk02hWL+ME9f/5N3XegIrjHof
         ZRx1auKDAbXZ6qkhdW/R02/1h4QpYcWGjiy2dvNSpAa9Qy6Hbkn/zA0M5G38oUu3Klle
         SowBCJHIxLhNU2vCKV3yhs+iKh1MTOQjsRqF5bf8LppyBvmbfemq6zZAUzhOR68nt8zr
         m2lq+QTLPjwMfSbfzzeJ6EneuKhmwHkJDOlj83017TLRkxkUwhtG/QriC53PuC9oLq8U
         LZ2+wGA7b0apztoKNcG4dZ5H7zkXbfRVscZ9B1EEwontQVOu8AojpN5uU3uTR2PvOpxU
         yzww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=CqvjlyW9FZFQTxT8/A8qWyx9n9ClDGN5iUrB+GscIqs=;
        b=JASQ/Tumw9URkSwMPY6LeglSbZutOWSwlhAnwoJZPrR/sZPFQw2eS0zrA/jhQ5L8z8
         ZYCmO/AzNiYBtdHVEjdTkG/aOXp4SXajTmbTyUCt8Z6Ej+7RcSXxUxMIsOppRwXFufTx
         02Fzwo3qzkNgjpW3S0rvJBvG/xavpfK2ZW4x1nxemjUfFIfu1h0nKS06ntNHdaKZq4Lk
         k8ykuIAVFZEZJIIS7wZfMOGlxR89y12TWKllhdD39jCO+oVPvKj0BGUaBLyaYrudksxQ
         mMSRqD97bHYlG+hHRfT0R3i81mVvvQZ1osLJtIWHhMy8tBpBNKwoehxuwI8re4AUMMyr
         2bxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Uv7V2ZCl;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CqvjlyW9FZFQTxT8/A8qWyx9n9ClDGN5iUrB+GscIqs=;
        b=o3mTcX0BZJW3EQUfhCtRbI0bjGVlaqNj3GIDPfM/OwwlmKzSk/KKDNSI3lsGrFECnr
         jTYjl0vD6P1ZKPje70sJQAuKRkmqAGB30h/zxwlGEqbfM6JXamfEJEHeo2CKKGf6qNXm
         3K46EZLAA+g/kticzNx9072tY4WycdK7LZEu+206jNhpMjIlskwn16ve6no51Ya56OAe
         md6UyvkRkrVvYCDa0SehIEs5o50aY9UTZYDKvUOA2CEdUNi/23FxpfZjGhfS8c5Ojxuc
         htYPYvfo3cstkxzgqqIbY0pBZODXZOd0TIqyxyUnXE+kuPYlBc+/ZnS/Mov0G5RKC0pF
         bKTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CqvjlyW9FZFQTxT8/A8qWyx9n9ClDGN5iUrB+GscIqs=;
        b=XTnF7kOSttSfBTPUnEdObSxKwL3SwYsfNEc1VILJgfjp4Y64uW8wAp26TtolGxZzDA
         J1HH3FhCIHpF9Ttj11scuEsocawzv/cTr8pcfBbXL1mPG4auHVG342bgELT5nuDaZx6N
         y65E1hX4VpJovFnPDEbFN1JUiqGokOeVcYx/gjs1J4EweP+Tsh9aQpmUmIxq6PthnjBO
         vc1nNkuoBm2arhFHmHAnxfV5rjK3IeJOk8eDDdEo9nFNWLFqfN+Or3BPVBR8/hbRcSBQ
         V3pqRrSA+6IoZuRV8vzRseY3LJsA1KQRY5clNtfR97SCPHpFzmU0NGxza/asuxrt3226
         ZIfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302VO033e4xUq2ZhjYLvULPs8C3freP1wRvsG5TcBosM9wZ9ZKS
	YFJbHuTxRpMdRiy82BTDQ/A=
X-Google-Smtp-Source: ABdhPJxZGRfUhRr7NChZuM0oR+u44ksoyajrplIguGhadXySVBv5Ul2AwMDBDmog5yCJAZ5RWnpj4w==
X-Received: by 2002:a17:90a:7107:: with SMTP id h7mr1166886pjk.177.1628905803613;
        Fri, 13 Aug 2021 18:50:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:360b:: with SMTP id ml11ls1401245pjb.1.canary-gmail;
 Fri, 13 Aug 2021 18:50:03 -0700 (PDT)
X-Received: by 2002:a17:90a:5982:: with SMTP id l2mr5414115pji.18.1628905803046;
        Fri, 13 Aug 2021 18:50:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628905803; cv=none;
        d=google.com; s=arc-20160816;
        b=pP1ShKFDvsMOD7UQmx57OwMum5gnForKVm8jpNHGs9Rg8ge1gRRdF/1KcALk2wiUWe
         PuhuKAYfBzKc33RBGBaMz4gh9xg3QvCR9MlXB30ot/aBxubnjkXdU2ImxUdL6O75g4qk
         kPCPSxkiSmK6P3eJ1/Uq5MJwl6gcf8QfnPjCDt8ye9m+iDGH2PjfbH9zEBQNWuvUAKqJ
         wIs3ibBn21Y3M2EuU6EX1KBv1e2zuc6hHcfQX4gqCSEWb9aRB3TPZDeN6wXp9sZ7OPVu
         epGlHKr8txr+NIiiMR/QcBati2XLuQ4ya1VqQ6ODRKP9+vteiT0QsPi09fxXCVCvdXv6
         lKng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=nwNZgAhiztbd24IJvmTJbeb+PRvFF8PsStHt8IFBe18=;
        b=bquI3jfzQ1pKWik6HbLJrOGFOFIV6GGxSf2SxfAwOGdEWPg2cwR01uhhl2e8FPDiCD
         apYbBUmFuLz7Oxc9yYngN2B7snr4TrqyE6vKegh1PsIHEriCd/NWtfM2ejgtfF7QAVyf
         kroYMhhdbAXCSmwXUbDAEofv6iI+n1+Yt5bfhMGq5H4eHaqLSwMsrrdEOh8aSNLdgOGc
         HWt4G9HSsvI9T/a7wWSLBuK5q1/uF+6WxmXX4XJF704XtOdNHbWy9QYdFLg9AmXwo5fh
         qGubOeRVI1CwbZP2duThdFyHMZpZp/c4thy9yFIlRUVbvlY08huwZWgx+Ot2PKKEgmkD
         fYdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Uv7V2ZCl;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id g12si112711pfc.4.2021.08.13.18.50.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 18:50:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-449-6BexkBAxNGqaHat1GpRROA-1; Fri, 13 Aug 2021 21:49:58 -0400
X-MC-Unique: 6BexkBAxNGqaHat1GpRROA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72E62800493
	for <clang-built-linux@googlegroups.com>; Sat, 14 Aug 2021 01:49:57 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 81DDC5FC23;
	Sat, 14 Aug 2021 01:49:53 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, dfa377c3)
Date: Sat, 14 Aug 2021 01:49:52 -0000
Message-ID: <cki.F2B5A1EAE8.RH782U9YXD@redhat.com>
X-Gitlab-Pipeline-ID: 353140729
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/353140729?=
X-DataWarehouse-Checkout-IID: 17749
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============3318611299502342247=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Uv7V2ZCl;
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

--===============3318611299502342247==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: dfa377c35d70 - Merge branch 'akpm' (patches from Andrew)

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/14/353140729

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.F2B5A1EAE8.RH782U9YXD%40redhat.com.

--===============3318611299502342247==
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
--===============3318611299502342247==--

