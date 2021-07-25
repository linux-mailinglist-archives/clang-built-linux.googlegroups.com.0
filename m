Return-Path: <clang-built-linux+bncBDY57XFCRMIBB3GY62DQMGQEHGJ7SXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C983D4F7B
	for <lists+clang-built-linux@lfdr.de>; Sun, 25 Jul 2021 20:24:45 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id p7-20020a170902b087b029012c2879a885sf458834plr.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 25 Jul 2021 11:24:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627237484; cv=pass;
        d=google.com; s=arc-20160816;
        b=bBYe7r549WIuU8w6m53vxsnukk54Kr6Og6go7gYPUd0/m40veXvemaTA438+mqFNOD
         LmBrENx+NOtex8PLbmGHD+KmpwSrNf/9OuC0pqH4TkwzCPIRtRxbzp6B6TACInWE3edg
         yV07wm55vWuYqZ5Z3KmjmM8TygGnPspVPxO98hzkEozmU9A1IT2cjPWtZ22mgs/nIJqb
         sTR12Ly9k2Qcbae2E1eXzlvfmNXa20JOzdmHJr10sZ0HVyHQPvQQYMaJoAa5Lu9csVN2
         NFFnfFj7hZO/yemgGnVNBcuY5nkxCQ7ZIKU3tQQ3Wckc+cgkcANni9lCU9fNgzPH0Sdk
         X/kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=W6kKS2OAZ5kOeVhwLBDE7omZYItyIxKzpYLRbntRzf8=;
        b=OiyP/jXxZCnnCa6AUXW4hwEmEkEi6tpVlcakJmKasV1ByWDstwTfNyGaHmJV2EfmxT
         YamO9fOJTutTTPOhCKHbzWzLX72kGHhBi8+h7NbJY/jZHuHJ/5DCCImWHtNK4abORe0O
         xJakJVAAk3OgMDwetywM3/RNyWl8QiO7eF3KCviBPQdNPLHc2Gen6+ZR5JNLrrhnlLxe
         1njMGGYGiYTWKbn/Y7HUipV42cOE1snxFVJ4Uy3XwYMnMk7M7EpQBx9TaeMaa8ps6yVA
         +djN9uWBSeYN4x8Qc0uW+YskaXjR0NRXXDU3r5K1FZ3/l+oxicy9+RLkQ8tdRw3hYw44
         /RRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=F8sSr9R6;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W6kKS2OAZ5kOeVhwLBDE7omZYItyIxKzpYLRbntRzf8=;
        b=nbV+D9Z0cr7b2zyzoiS3jrTUVc29R5bLbaY7Dr7zgpplCMzCBC11ZL4Ogky35OiHDG
         invyT2zHuDsvewyvBXNFWZ2A95cZB3MbAU5ohLCajHvODqMiIEgQM60/ucbfYMCwIg16
         Ih4SmW9mwBc9v7A6TKbr+nxgD53AK39/yGSnUkDNmyFuQN/RkPscsZGk3i5Abr9jOddT
         4ddHhBRuCTbmflfiJsZnmu4tUa2n8OSbvx/Ss6q0ea2OFGWN6aTCT+lRhtSAaYWqi04f
         7AB0BL3rbYV9Dq1KS2WygtKaaEKMllmzw9unjjauwv6qQcDaRjKWEfpz7zbF14qVGjsE
         zXDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W6kKS2OAZ5kOeVhwLBDE7omZYItyIxKzpYLRbntRzf8=;
        b=piM/Dr+Wt3EMKxMS97aa7AIGEEQPXuAShpsUUlq9Os84CxGX5ztyeeGLz1PHIorcMK
         Sf9omD3fbLf8gRhOXXJ2DTKHXdYSRMNL8Nm6BzrpdKOdxCRp0hF84rLeQzR9rXZDWWfm
         OtjVyMxzypCZBuf2YfS4+zdAKL658thwyu9kuTEyqYBhc/MQXSq0yUl8+oN8scmRDmWa
         ZglT8Wr5mOa050wZVYm5fiD6IMB0eJViMXBMmXYjv/b49me6NGiBXB33nkT5eobDFj9w
         T6wZMoMENSRyF6qSAtOb2j5CyKdmGrdON2c/U6dEzedNsRwB3gc2X67ZavwMqyO1j0+K
         s28Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XS7D+LQPXBvYQjgIGnBm2g7NzlvO5e0ZtT89U5oUlXJHNBoX4
	SBMgEtimlBwhtyKSN/4ofkw=
X-Google-Smtp-Source: ABdhPJzr+Eu1XYDCWPYQouXrMmfrIdAMNco/6qe9IFpGth5nOXickYbOnHulBgmuUn3m1jyoLAJICA==
X-Received: by 2002:a17:902:7246:b029:129:dcf5:b583 with SMTP id c6-20020a1709027246b0290129dcf5b583mr11378803pll.73.1627237484414;
        Sun, 25 Jul 2021 11:24:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:16ca:: with SMTP id l10ls6524983pfc.0.gmail; Sun,
 25 Jul 2021 11:24:43 -0700 (PDT)
X-Received: by 2002:a63:411:: with SMTP id 17mr14479110pge.125.1627237483792;
        Sun, 25 Jul 2021 11:24:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627237483; cv=none;
        d=google.com; s=arc-20160816;
        b=y8IRQx1m5pDL+Fwm0wFwZSZ/u71hwxwpKoIKzpkr3RrvLsYNTgwV60Mf8B4ugYjj7g
         3CzWbEMnkjFmxyTU31/X/YHcBEGc6cub9dhVKdna/BM80VrPtS1rgX8mWOhWG4nfcpmT
         KNdiaPTeRRxgStYN8Onlfs2fwsrLJHO2YvL7aON5iDQuDecRPJWhYApNnzIxVuggYKnG
         VJJJBZ5Rn8gMFwmOSHIin3sC+N8Bk4/MDvPGZBZigAtNsRY0j/xWLXVGryTZIvL18pL0
         yv6NXChOztrXlF356dZyGeUhROqZ46+bjmbO68+u9rxf/hBTTl5M0uMlQLVGqteSi98M
         oKvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=fjLWpwbg6CGZRTjONPE9+OYAr9SoD2aAWYyw6j6GVZI=;
        b=OW6KoapVJdKOgtMxfnvCT6EOJSEkoRGveHY6jXPClVKLyNI6v3kZ5pcqz4ZQXzAqAy
         NQcYEE5s4YO2yFvh2K92kdzktiuVDDZDGf0uNqehRElWKnF3LMUE/GXLborR1Zb0s4Ka
         QkKz0z56mDvQUlg/cuR3fYxWtUg5wBN6Zj1/BioZervB78Kwyk8Xf8IfP5ILQdIAp+qZ
         fPwi58OF0I68O4waE/v4kA1xdI6dE2SiENbNcKtXxXhQnpOOZU5VytKIjGEsYPRCF/uS
         pIH5qJKuFCFN2h9JveEsKcuS6lEfcn/arg/R37BJ59GPik8ZlELghfQD3h1xNpVVO6CB
         rQgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=F8sSr9R6;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b15si3401052pfl.6.2021.07.25.11.24.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Jul 2021 11:24:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-569-yXcWQ3qbPYamx00OSDj9iQ-1; Sun, 25 Jul 2021 14:24:39 -0400
X-MC-Unique: yXcWQ3qbPYamx00OSDj9iQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 34C7418C89CC
	for <clang-built-linux@googlegroups.com>; Sun, 25 Jul 2021 18:24:38 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 527645DAA5;
	Sun, 25 Jul 2021 18:24:34 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 3c0ce149)
Date: Sun, 25 Jul 2021 18:24:33 -0000
Message-ID: <cki.7212B1EF6E.HZQDNYVBNR@redhat.com>
X-Gitlab-Pipeline-ID: 342571558
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/342571558?=
X-DataWarehouse-Checkout-IID: None
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============2116598818594046858=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=F8sSr9R6;
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

--===============2116598818594046858==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 3c0ce1497a44 - Merge tag 'powerpc-5.14-3' of git://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/25/342571558

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.7212B1EF6E.HZQDNYVBNR%40redhat.com.

--===============2116598818594046858==
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
--===============2116598818594046858==--

