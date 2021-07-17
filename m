Return-Path: <clang-built-linux+bncBDY57XFCRMIBBTU3ZGDQMGQETJTB6DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B96B3CC0DB
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 05:26:08 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id s7-20020a92cb070000b02902021736bb95sf6614569ilo.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 20:26:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626492367; cv=pass;
        d=google.com; s=arc-20160816;
        b=qTrlBwb/iDrXs+On+oC2QjaqGqle5VjSyTS1ZLGjWQU7Z4z72kIV7UyJXjlbNgfC4Q
         xSeH7olkwp7QfhSnpmRxmBso1IP3U7jj64eJPq2iOkuFWqidX1RURUl5R+dKT7yLWK7Z
         hgv/PhZF09MwWwnSWsQfDX35uT3085kvbuTGr1/zKuO7pjyqTHoHC0unV7HH6rGwrrNp
         sDquptnBjgALy3fj6su7JO/SQCHAzCgdcFKAfXlBDvG936DipePYhruDQxPJffP6kgxq
         c27QLtgixq2zFVzaD5/vVDR1y+I4eBOIB99g/Pcu67YZoXIjksWgmeiB5YQF1RTA/NXd
         DvbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=r6PRx4GbG7J0jER4St2WXm+1rJDsnJG7/XaozT1qfpo=;
        b=YGjSPozOs37Me/D/n7Cq3VGyOTmZnN6lwxYBmTkHU2TCyESnDhviVV/9nyKMM54eID
         R/QV39uWQhOsUR6V8ZvgRz08addHcRfvT88pMNkutFzbCQhDOQOA3vQ4kCxKzjs0UHJm
         sNsY+EHzRgW2WOHw9GGZX3AdwoTwKL2E7oNRAzcnjdav3OWQyCeMCwnsBUI8y5XBFVF0
         EPCgyyNF7dacXX7LG6jGIAkX4Jc8PSpPJ7gJiM6pNyX3pLnNVhO44aWzqHPCNmAL4kP6
         R/UxHTbzko8omPG85gFe4xdmS3YJayLsBhenyPGnwDOEZ+Nn/eNPzjuvws8FFlX+Gi73
         g7lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UWmYfVMI;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r6PRx4GbG7J0jER4St2WXm+1rJDsnJG7/XaozT1qfpo=;
        b=LPIi3h3pG/pOFgVGPXFxBAhoVcb9PAHjFMoBvSxp99QHoGEAz8NTFHeAn3uZ2USFaT
         AVfKCVV6bDvsA0A529HKz2Hyir0znrWJk4KGT71BoOqxdQ7qzBvDFlwqW/RrR5xaPYX1
         U4Nkzp8oLTPAafchqJnG1XxSnMDt+Oh1NoNcJfH0riReW3QYESUaXfCJniG6XJenAcaS
         AsicDpmO304BRywEqYOA+pcBC46CNJR3qPqWN4JqWKPhz5+bsQclfNCYjFhX84SNF67C
         xX54u7SRWx6Ng/CGyC6P9CFNifhiBcM8JaqQb8UJqUq8qv/bzDnxtwECu0mvf5EpOQpU
         1OBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r6PRx4GbG7J0jER4St2WXm+1rJDsnJG7/XaozT1qfpo=;
        b=SlqBN9PC4xQfqzAQu9aEbWn1EMLSisQIsAXp79LeoG7fsDyYAxSi1PAcVkc6RJWQ2a
         EXnIecpwcvQmEQ1Q9/qD5s2fYKVFpg9l7onh/ueEdyzmR/gdWa4/YjQlrqBylI99Ifs+
         83vXLGvgwhcZ3QHf+DQO7gJdabz3ju3vIGmkmwYbfXGYIWBevngjQ4il6w+qz3K51PFM
         /13vJhPfpUA6SClO3zXRyAOzzQ9wbw88hJsDwdXq4asNkCfecM0C8MmoJCN3F5+TE7qf
         FtJBIT+oH76WN1Rrw5caWB2vfM5bs04HunHDXQGH5ykvZ1oH4Jqk/hWjEEWCNeYr89g+
         6HiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Tcx94/Mb0vb2TL8Mkvn969sgNaqztoHCG7OZJn8PPcjdPEmtM
	qOSGJIS775qjqICBx3gihww=
X-Google-Smtp-Source: ABdhPJzp0sqiPv2MZqnVVpd/T0JVg2sN89y9XTKDQyM08GNCkxrAZqeUoPkrnnKHCjjYbzLWt6nx/g==
X-Received: by 2002:a6b:e602:: with SMTP id g2mr9530056ioh.50.1626492367020;
        Fri, 16 Jul 2021 20:26:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c56b:: with SMTP id b11ls1506686ilj.4.gmail; Fri, 16 Jul
 2021 20:26:06 -0700 (PDT)
X-Received: by 2002:a92:8712:: with SMTP id m18mr8186314ild.132.1626492366637;
        Fri, 16 Jul 2021 20:26:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626492366; cv=none;
        d=google.com; s=arc-20160816;
        b=P983WG3RDsmHgb1EneS1c9QegGzpfpVlOKTJoPDg4wztKKAoXQnq55MEQD5LAXAPPI
         J0hAoaBrZkTge1Znb5u2Z7StFnF07qJ0Gt74u66/poxQX3fjIv/L2qyAyaHAJ6Xs9WgI
         rm1d+0I7eV4+LHQUqCCFUQymidafZNQpDmOkSseAqx3VR+L/b1aOLJAufmo0hWjVtblJ
         eehzjzf7PuzstShagf0l2DZaSs54p/VHMtoP2VlEr3oXh5wU99mjNHzreSRo0iEEcRZ8
         EWwtUmQwYTBw9dJyFtUt8nF+xGOD7K9H5KcmVJgQBnnPgsqRNIrcJ5gKRP5ELBxxN8fZ
         0v/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=1dShhhjYtnRlakUYtzRfMyLL+vj+aRLHruse1EFE8TE=;
        b=jfPJizYO0/s6jvmo/awrMDBuQPDcP6xJyRmco5FAfTWVZlroIcHwI8+ESk0Xb5VMZe
         0vPrtZT8IKcDmaKjGvGihZRCdvz86ovSwB4MN6ji/HbO1zWu+oJ7n5pKIGpIymgGkW+R
         FNNY64lkTYFiowr7EJa1R+lm9VTVWR34+tjV0hV1AV2Qx9Qs0hHr92NwArxrTpwIW8Zj
         rtp8wcWfZ6zkN3FML88Z/qKv9WfkNs/52Qcyg5rACahknc/Ccjnj/lCk2FYPtgE1/OFl
         RtzQoi2qUIy0eSjKzvDytuN9UaN/gi8QHx9tuHE0gLUW1BXZqYtGu99yodq6MHhhW1BC
         E9EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UWmYfVMI;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id w12si772816ilu.1.2021.07.16.20.26.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Jul 2021 20:26:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-53-3wOBURf5NRa0Bn5uPmdijA-1; Fri, 16 Jul 2021 23:26:02 -0400
X-MC-Unique: 3wOBURf5NRa0Bn5uPmdijA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A4F4801B0C
	for <clang-built-linux@googlegroups.com>; Sat, 17 Jul 2021 03:26:01 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F29407D3F6;
	Sat, 17 Jul 2021 03:25:58 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, d980cc06)
Date: Sat, 17 Jul 2021 03:25:58 -0000
Message-ID: <cki.B030F75ED3.715HU02EO6@redhat.com>
X-Gitlab-Pipeline-ID: 338614796
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/338614796?=
X-DataWarehouse-Checkout-IID: 16127
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============8492405795543527859=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=UWmYfVMI;
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

--===============8492405795543527859==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: d980cc0620ae - Merge tag 'devicetree-fixes-for-5.14-1' of git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/17/338614796

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.B030F75ED3.715HU02EO6%40redhat.com.

--===============8492405795543527859==
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
--===============8492405795543527859==--

