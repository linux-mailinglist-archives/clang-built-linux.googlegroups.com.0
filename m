Return-Path: <clang-built-linux+bncBDY57XFCRMIBBWMU4KDQMGQEADLPT7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDFE3D1876
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 22:58:03 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id v6-20020a927a060000b0290205af2e2342sf2260164ilc.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 13:58:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626901082; cv=pass;
        d=google.com; s=arc-20160816;
        b=agU9NWs9HfvnTXiU2Dg2xprjdArLy7fJmNARwoDLBanfaO3D6n3y88ZD8Z8MgFLWTc
         avLzPuilOr0042+snCvWn9wpSJJPAgBGXdsBYvgT5pAf4+3ix9rYCfaq9mTSsoeb6f46
         X6PovCBIrO3X/A1AEb5WGX0/tFNzgI3JFj3kZH0EQAAsPAf1Yo2EQmasV9hyMmHy5YRa
         pUhy16t9MfCtyeSAesW/3LU7lIfWq5XHybf5NkeO1ArVFyQ21sZ8oXx7vcsKvFnX9FfN
         /DZ6OrjMKHYaSn4E6MMcoeR0g4rjuJAZ/VziPyB/aI7yUJ067KDjNTwGEhYgleKL9syR
         rM0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=D84qcNkwGVweggeIdqjWXD6Ju+qz5vhLTF0auULMXH4=;
        b=OzaYKN5qSEV1E5J2tMwGPo/0my+MJYTWXGweqRycSMDvVreVw7nYjI0/KmnN2NWc4K
         /gxSTWYh+GEexaw3QqYYfff0S1Rw3i/J3uE304mGL/Qg9P5lFgEbq+FeOie6QEGwYmW9
         HbErv8L6pSmC7c7wnUnq3b28km4cEkBdKb2QT+ZtUp6A6vuo2Onp3SjbOeLeNIYfD1Ja
         o9wHZMBkMcNaWKW/v7MFeA/yNqYo+9TDqWPJd0yO3XY91LhdKtbbkuZQorrzpYpzXJ+8
         oGTRvW1ZPgmzZepIwff0+v3bH9amJnbs73wEKwGANEXf0dTHge7zgyhFuHGdXvWiuNM6
         XqCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TnMEy4DU;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D84qcNkwGVweggeIdqjWXD6Ju+qz5vhLTF0auULMXH4=;
        b=AD2D81FB9bG2Xvr60tbwHvIFJV8/LgUT4JLxnJdIvW6NFajbCVgyPcnLeAiu+yQJww
         qYc/3WZnMMhJD8FGk6NOzM2u6PgUACD7N7nbZCmp0d2aQPyiafPWXsXghe4r6E7qzhE3
         fRzX+B/ig+bJsXkmlDl7s9oX2DapoeB8KR8nyoC/JlWCOVKzGKTf99mTdTSP2aJy/JEG
         5dMCRPbVI1821jIEZKhSN8dFJ9zlr+37mAWT66erkEjVn7Pe5aIhwg1DlgE7VEAkXat9
         eLM4KcZ45Lr11B1XZgY4e5yscfCFzrWPvYuDKdSKceX1poZv9CiTs2UfJiFrq7cMOREz
         QhQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D84qcNkwGVweggeIdqjWXD6Ju+qz5vhLTF0auULMXH4=;
        b=tQtjlQNWu3hpXuMW7SYd2QRubondYWv7UfKSFz8w8GzC/yTIjcJ1DOk3tFt35VN1BC
         2UQ7nYxixCeFKDxNBkHwdeAYI+7ilrRb8ayY5r3NeomMwQkoq/rbEgIR0ZbHrwbFokO6
         1lvTGRfT2kRKoDsKS1UNYSXhvaQ3iaZ/zJ/biiCJk2xDU4ZUU6mvDDAy2RUmfW+uL6iC
         ObRnqp6GGTo/RIgIByPMlm+lsnXfW+YJwXaky8cp++T91oG+Sd0hr3wudigg/bBtF403
         3EFdReGFnmw5rNh2I1TgSGEsk5c6P0ew06czYSPzakDoWqznkm1FO6J3oxPuvS6Yb94I
         zKGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531riV4sbt8VCBhiVoLnsqYnwPMdlBlsA1x72cQMPBfH6Z+UJeHn
	GLVR/Bm0G3VSiFq7tdaqps8=
X-Google-Smtp-Source: ABdhPJwRTjiy2jbI3hsyVIFrsKfnc7l59WPVDjta3Hz3ko895r9wkZ3cq6Jiul5d1XCtq9JTpBAnxA==
X-Received: by 2002:a02:942e:: with SMTP id a43mr33083708jai.74.1626901081949;
        Wed, 21 Jul 2021 13:58:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:db11:: with SMTP id b17ls888196iln.5.gmail; Wed, 21 Jul
 2021 13:58:01 -0700 (PDT)
X-Received: by 2002:a05:6e02:1d95:: with SMTP id h21mr12417266ila.23.1626901081517;
        Wed, 21 Jul 2021 13:58:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626901081; cv=none;
        d=google.com; s=arc-20160816;
        b=XsXtYHY9D1IiPXg5RcWZUe4R/f9E7RYgRCAKbT+c5VEcbZg7xMNq8YXbQvY4PkKW1s
         LGX8HMYtcQWIZazgHJZ4JlrQT0ZkAIBI+LXY/eL4k/52VMB8wq8w+IkJ6QNxv17KDcFx
         3yhlStU/EpjylkSnUryCfMZMkck1yBGQ0qy/HArrmDw5L7H16FIWeju7XuZ0cKGMSOmE
         nDFzMQwAPxT+M1nwf4Qq49sfEeNErMLkAnYbaWlwGwiKRVsvlJFw3mP40667ljq8xcyC
         HGglYwDyH4sGyQEHjbAhTAw4zIghk8ACR6ftYKtelZ03WUnw9Dg9bBboN9FOXBo+2mu2
         sAPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=7Er3KcEBw9641r9UI1yKn+FSeldZHUMK4BZ3QQQ0/po=;
        b=VklM4E0YLHg0De48x62ntI5mHQF+rd8eeRZHt0jiIPARokHkRXvAIwwLq7h/vr23tC
         WayOeTOoNrYb4xGevtaKuNhxvj4toGI2Sy7ixfW2vjsuL/MxoQXPOTEvdJoyBib2ritE
         5pzLI2uNCJ2QSx9LSM2oDHEqzrVbpDnDI4t0jum15c5kyyU8PM1fjk3g3JV4+8Em8K6p
         njVUQDy3W0t8L1IH2iw2egmJvBiGAe9dQTbZIxhdLxfUOrjF5Egp+Luwln8mFM8iBZcU
         EAW8fyr3Uwr5upEDdPuKduszg5Qqo/p58TQ+bIXJlEqvrwT5Cii0djVS6hO+aewPsm8h
         HDrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TnMEy4DU;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id q14si268404ior.1.2021.07.21.13.58.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Jul 2021 13:58:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-495-ZOvPgDP3OUKa5ADMzelvdA-1; Wed, 21 Jul 2021 16:57:58 -0400
X-MC-Unique: ZOvPgDP3OUKa5ADMzelvdA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1AC56190A7A2
	for <clang-built-linux@googlegroups.com>; Wed, 21 Jul 2021 20:57:57 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 974DF5D6D3;
	Wed, 21 Jul 2021 20:57:53 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 7b6ae471)
Date: Wed, 21 Jul 2021 20:57:53 -0000
Message-ID: <cki.2CD8D68BB8.H6FDBZY4S0@redhat.com>
X-Gitlab-Pipeline-ID: 340842690
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/340842690?=
X-DataWarehouse-Checkout-IID: 16394
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============4292647153788390264=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TnMEy4DU;
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

--===============4292647153788390264==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 7b6ae471e541 - Merge tag 'spi-fix-v5.14-rc2' of git://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/21/340842690

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.2CD8D68BB8.H6FDBZY4S0%40redhat.com.

--===============4292647153788390264==
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
--===============4292647153788390264==--

