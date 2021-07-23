Return-Path: <clang-built-linux+bncBDY57XFCRMIBBZUF5SDQMGQEQGGVN6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 397E53D4007
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 19:56:56 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id z6-20020a17090ab106b029016a0aced749sf2500055pjq.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 10:56:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627063015; cv=pass;
        d=google.com; s=arc-20160816;
        b=HqX+u8FLr/fkMnla/FgQgd7gwj7ZV0eTtZkm6aRiImOr20spFlhyyGeWmkWYgL8Euh
         92d7GpIIKdCCh0hJvIHB57Tb2TJNRQUaX228Fr66xHaITKKWyHUtsU+5hKr4q1wZWa0t
         rb1AvkUHawTGkjg+ji+Dm0qJR9O7tx3dABoQ1GrluOsb+gc+a6opktkcJxf8o6RVTE2T
         bboPf66CXYYxtA/iD8ERPCECroWNMTkMTqwwBkr6C6VYx2lZOFCZp9yFWzKgANsH2daN
         50/6gtO6sfNQQ0KcFcGqVQKCrP6YqITR754Klkj/R0C110aY0dZzm6l/o7oSm5X6PPFS
         TiFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=y6pKqYQnfM8tMkH45UgLDiwV4joQx1VTViCm5nZ/7/k=;
        b=zCEIOYP4psbW+bV1RtCzl/O3Kabqgz8hQvjMogSqJ2rVY63Tl4g3WJroo9FxCOTxCd
         na0Nr2Qzv40ySFk2Tgrcmoh+dz4hz9x+7gUp6yXyhRM5bAeZlNlDw1nXOvwAJKTcr1un
         3raF/P7YiYTJSbISKKLD+grG6STnOR548SenrgajXgeL/YLDt8D16xTWnCiycUDzp0QM
         OIcb3AqsH+tBCx04Gn1Q6ffqWfo5RId6JB9Fiel5G/33A7fGA9ThwJXTUs8VKTotmrip
         r4Eke42FVMBwYE5HhUVomjGZp2Wz5sH8hLRtFp6GnziFrWUYaHKB7n9PY1VNVjkW7bCw
         +zeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=A3zQHSTK;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y6pKqYQnfM8tMkH45UgLDiwV4joQx1VTViCm5nZ/7/k=;
        b=X99Zm42K0eSTY9rCfa2PxRAbaq2KuShD6dSwhlKieixLaMdERg2sNS9IZt2a8flUrf
         89GEnBW8putH0V9eCeh5weguCCle1q4j1QFeXt/FfC++HYu7XeXYcZBV0XzuH73hdTqc
         uX13iQiZVxZ4x/cDm+Uu+arQ54CNu4Runnkx5qMbKp80/GBMX+lQ7OhtjpLnLyOtpa+A
         cQ70G3YSB4GWHJ3pfhpKJqQVUeUZSWakegZCHYaAQc8DGkTt9P6JoOYLMeV3qIzObdtC
         IYw8hfMmbIAatY+yEbfj6aXzCWK4E9C1wH6/t0/FY9WoqLqU1wkTtVA+LS1NJdiVbxO2
         pc1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y6pKqYQnfM8tMkH45UgLDiwV4joQx1VTViCm5nZ/7/k=;
        b=RNAy2Xks1xH5fvWAmV7qqbQoTKvircI+OBlNZsiC8no42WAM7fHNHdfeYIupFOBHyr
         RVQxM6d00X5JbdSeRZWztvam6SNAlJ8v6DXV3u/55Zu2SeOu9dv5Zl+SK3SUlbMp/bYn
         uPli6/nK9tlpDrF6upP+n9UL18lsuW9HaMiUkFBizKMcJ0yOec4MH+fmemwTFMnJeQXc
         ckjHVwoBvQ1ySWKRYHxEszWZHTspyW+jG649iwipUzFTcsabVVQ9gbmXezZlXF/VCAB6
         6eMOmIpeDOd+iwMEvcSvxOzDopN4BfeVbpYHHsCmaDjSJsfb7ST3vtTdgeysPivaS6J6
         mqmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533y60CifH4axVFXOEFitaGon0g/FLj2KaNy+K3dsKRcc+P9ErYk
	VRcDD1YKLbhJMPiizrhZPQ8=
X-Google-Smtp-Source: ABdhPJwJWzOO8v/VoIknjqQh+Kvk0SOaN11jJ3xb2VMlnVrA4LB9YPkmryC3XS2xQnFGl3CUhwrCyw==
X-Received: by 2002:a17:90b:3a92:: with SMTP id om18mr5639482pjb.33.1627063014890;
        Fri, 23 Jul 2021 10:56:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:680e:: with SMTP id h14ls5028690plk.1.gmail; Fri, 23
 Jul 2021 10:56:54 -0700 (PDT)
X-Received: by 2002:a17:90b:3d4:: with SMTP id go20mr14653628pjb.170.1627063014301;
        Fri, 23 Jul 2021 10:56:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627063014; cv=none;
        d=google.com; s=arc-20160816;
        b=xz8Lxr6isj0hoV4w12Fl0p64DDv1GmotiBLIIz+B+oWqBA3n2rXS0d/LrKNXqShIqf
         dirQv25KMomnMR3/h31PeUUUYknIQydUJAOGqAOMdUk86RAO1GVghN6nQu3dnxFUNmau
         hptRtVrH3C4cNY/cDUH30SCsHgViBx8gCPRhmOC9F9NtshyMmh0nr3SpqlLKRofCPwbL
         giOxsAd/P7GkjdD96jh7Al8sISte4KFZjH9QHJYIiIPBbR67fL9iJLk4fwiYwJLHssxz
         RDWNRM9CcnrXxxUhKvvPrhE1SI7ynfCJP6Ue/TSLh27GHctbVZWIle6VJ4M2TM42se/0
         2NXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=XLdLJ1G1QUADFSDISY333oSIuqcGPTSPw35Y6q75r84=;
        b=Rxq/jlGlRioYP/MSgg3hZMeGvdM4GfoYolQQNEB9nF4Xt//5pIXMrTjqYAYiUuzb4k
         7QbbfhURa8GEnKlugN72XKJJ7P1apP/uKUxHsdv/dGbq8fpUsH9Il13XlIsPbpDsIlfE
         ooO8NrM4KFsXOK7FSsMR+ZtcOzlChke0uPJ3vvkxbjdTINH5FkQ3GSF3vhLA/wRI4Gkt
         d1KMdKqRLHhJUPyDFH6PoibPzyZnh7Jilzl+Lmz8MQpistWePcLM8qgAJBPeZ+ODoKH4
         TDFQmezfWTvrx8wN+NSyob22jadmA+8hYiI60/K0P/1YgdJq7fPRSRFiiG1onc6ozRY8
         2YDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=A3zQHSTK;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id x20si2604000pfh.1.2021.07.23.10.56.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Jul 2021 10:56:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-336-qQ_rzJbrNOmo8NEoyFGo4A-1; Fri, 23 Jul 2021 13:56:50 -0400
X-MC-Unique: qQ_rzJbrNOmo8NEoyFGo4A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 38BFC801A92
	for <clang-built-linux@googlegroups.com>; Fri, 23 Jul 2021 17:56:49 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8371560C13;
	Fri, 23 Jul 2021 17:56:44 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 1d597682)
Date: Fri, 23 Jul 2021 17:56:44 -0000
Message-ID: <cki.4D34E3C7EA.6KVPJKXSZ5@redhat.com>
X-Gitlab-Pipeline-ID: 342033276
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/342033276?=
X-DataWarehouse-Checkout-IID: 16540
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============8778078538630100047=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=A3zQHSTK;
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

--===============8778078538630100047==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 1d597682d3e6 - Merge tag 'driver-core-5.14-rc3' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/23/342033276

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.4D34E3C7EA.6KVPJKXSZ5%40redhat.com.

--===============8778078538630100047==
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
--===============8778078538630100047==--

