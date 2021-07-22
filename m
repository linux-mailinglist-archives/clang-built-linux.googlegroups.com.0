Return-Path: <clang-built-linux+bncBDY57XFCRMIBBDHH46DQMGQEMYIIUGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5FB3D2FE6
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 00:39:09 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id i123-20020a6722810000b029025b7f69ef9asf1910666vsi.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Jul 2021 15:39:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626993548; cv=pass;
        d=google.com; s=arc-20160816;
        b=dX+DjPVKpNns2hE3zvr2UZ+PbyUmdTRdvmHvSAmUa6b0qe3OwlxouW7+h004BPLL8n
         SRswTJfeNfgsI5TYH09t/NxpNWeDh+KsVsXrAFah1iMvJ/fLdYEbFK5b6W15B+DxMP1e
         SyiJFnhBwxoLaAQAtmORFAKwOqOr8e8qee2/icffunrIgPa/oH9e5MhdmMcnmYU+LlCl
         9Yrk7jE9Ps5cpW7EEvY2O445THNPeloqHUOA3oVVGpkBDbuQZ2CuX/EEvy3fYDpVj+QB
         mTbMzILdWgbHipkH/9q5lEEEyXnv678w02XDzOtRwMVjKjmA0A4iAr348lIgamBXfpKR
         56hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=eh5YVd8b3A/vyzuOihMJGU+3pFjhabYh8kjyfKfoTrw=;
        b=EEg4tclMWfh1QXJOLzPHyJvqaQzCrDSqFuzhF5xnw8qRO2gGoto0/WYdCQ/sY/EpE4
         Fzb6F3q2LJm8I+ziMtytBmY//j5yVSLRA0EuNpZ8ZUIwKb8/mBrzoHpXm4DbseU0/Zjm
         3RFgaJuFPBpwd3zRsQSdQgHeiBybOHvLlKCG8iBGuXY3NkzAAoORdRgeLDOndISRMZP6
         5SvqBsN5JuUYf6ph9H5JYonZ8N3A09cjadfvXXUypD/OPkUoBtWIpXqRBGeJI+wJArPm
         SvXHFXyzGzRjupnm9TIfFxSjSSDxHT+OmHOkvnmgWnopP3uXMU0tGI31zhcle40jbRn2
         ydzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Kw2O3QF0;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eh5YVd8b3A/vyzuOihMJGU+3pFjhabYh8kjyfKfoTrw=;
        b=WxOly/dXyi5YhxPPtNMuSIQHvd+qLRoZebFPoA9d+ZPdwp0enaP5l1k+pACsoq57fx
         /0YCtczztD+apNrssMGY6eJCiI4Db6u8dRm1PTdUfcE4VqwFYB0yp3g9fWb5WroEJYqO
         8IgtE9P+KQIkZgAGXcHC2t9DHsoQmywn4bifE/JcD5GfDKt/j58APRW6lbZKiUw5HB9R
         maBQgl0GPQmjTyWj03xQzxYvc26aq/ScCZ/DbnTuees6AQGv3dFU4vXy19R7MlDjBI/q
         cfQDWtqc9NhfkcTDXsUqWe0X4niFiU13fBa0A2THmLolGFj62vwRXiVAOp8MOdjzi6Lf
         rnog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eh5YVd8b3A/vyzuOihMJGU+3pFjhabYh8kjyfKfoTrw=;
        b=tRO5pDHYSlMM+x1dhHmbrSDzLKwQwH13kKKzSvzJQ94WDf8ibR/qnEbEch27dtlG6Y
         HHqXjeelx6RD6SYKmP5Cq3gWiqui4o76dJIaH+TJn4m+Dui4tiRB2Ap2cXJzJgE5ZZM0
         kRsV8mFY/0KGo+PLSn6qtekynFGH3Mj6u26XJ/qdNw87OlbZjMK3IPpZrmrlaeEtXsej
         Fm25PapchahaphUh7NwyOKvpmcDJym6pkqcBq7BsKuTBuafHbdXxT5XpnuxRus6+Jg6R
         mUFbOWv98pR9NfBnMrzzNhlGL3TNuzXD60IM/rMDe6HE1kz1mLEaLBKoYopJ7jz8ML/p
         LFpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TtdSGtN+mA61aAFjHG7Gz1TWT3LNyAPvN4cl3mf2+5uhJKKtT
	h1KgV5ZFDRf/FCt7ijQI8Bo=
X-Google-Smtp-Source: ABdhPJxF8uG73driy0zAGnVo8m56eEqah0gglPfbF9G83JZCce2J0stSbDB5AZ7dfakSpb1zhEsFVw==
X-Received: by 2002:ab0:7809:: with SMTP id x9mr2519633uaq.53.1626993548345;
        Thu, 22 Jul 2021 15:39:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:ec5:: with SMTP id m5ls1720884vst.11.gmail; Thu, 22
 Jul 2021 15:39:07 -0700 (PDT)
X-Received: by 2002:a67:e8cf:: with SMTP id y15mr2742768vsn.47.1626993547783;
        Thu, 22 Jul 2021 15:39:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626993547; cv=none;
        d=google.com; s=arc-20160816;
        b=lIu1binR6TcRX2KeoJy5Y98lFYOFcI3Zaxjx3efodEoZ0y5Ov1vXCZ9xfizcEW7vxM
         RXvBkm+efBVuK1lxnp+PllvdLHuUl79Hh/+wRmA50dfFl19r9Er/UHDqBAOnkN/xnaFp
         fpAHwLWbxs+LHLxKO/KmYx9rY5yXHkkVZrzjvQ+mZ/MiBpBLAqdNAQ+Uq5nCwvo2kvxe
         CNwkuCkTvXfYbR2UFLCuoc8hZjlEvHsw3OIwOYh5r3ulWIwdzWBIx0M7l30pplxutJQU
         DkZiyGflGuDnWhL7PoIY6bZxP4rEaWQ8y8O6ui+kcE4+IFPF7+jJhkvbMDpNp97V3ydb
         UURQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=wPRIH3/hiBCmqVsDigAi4v7+RDAhA5x+0GFKdRSgIzU=;
        b=EQuV0QjTzezFIF17r6yQ0rX/HjWHcqpm7QOKMaj9CZor+X1dBqEX/NhRehKui4EAx9
         fnZ/YTIP1f/cJYFPIFX0aJlTXFsSxXow/Z3led2xrNx7tn8rQPs1kac9+yG7pvCv9Okg
         +Ro8GifTGvJlJnNN/0dVj0OROvjh3gJ8B93Yy7EEmgZqhLPC2FwednbfsriUay6Q2itO
         U0D6VzH93ToIarg0O+1QCk41EzRm7Im4WaMulTvnLTnQrR5phKhwPECSOgBpl98XXpOy
         4gyG+Tt/mOaebo3vNV7xahemBXwNIOkO41Ji93M+3EmFfAZmd2NRjRTY6iVvNZ1v9lhN
         tp0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Kw2O3QF0;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id p66si2380624vkg.1.2021.07.22.15.39.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Jul 2021 15:39:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-65-JdB3jOuHPbKjSa0zgMhBXQ-1; Thu, 22 Jul 2021 18:39:04 -0400
X-MC-Unique: JdB3jOuHPbKjSa0zgMhBXQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8133F107ACF5
	for <clang-built-linux@googlegroups.com>; Thu, 22 Jul 2021 22:39:03 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4FEF060C13;
	Thu, 22 Jul 2021 22:39:01 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 9bead1b5)
Date: Thu, 22 Jul 2021 22:39:00 -0000
Message-ID: <cki.119C15AF45.IFCQU28XBP@redhat.com>
X-Gitlab-Pipeline-ID: 341548343
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/341548343?=
X-DataWarehouse-Checkout-IID: 16483
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============6211817625332023423=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Kw2O3QF0;
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

--===============6211817625332023423==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 9bead1b58c4c - Merge tag 'array-bounds-fixes-5.14-rc3' of git://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/22/341548343

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.119C15AF45.IFCQU28XBP%40redhat.com.

--===============6211817625332023423==
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
--===============6211817625332023423==--

