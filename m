Return-Path: <clang-built-linux+bncBDY57XFCRMIBBQUJS2EAMGQEJMCTLDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFA33DC71E
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 19:13:40 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id t62-20020a4a3e410000b0290263d7da47fbsf5065603oot.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 10:13:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627751619; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qb4iZXrrZogCaQ4mwvjewwOwqQqzv0NPJ91+KyhV4CqNga/V2zqg4iSmCtHCMJm6v7
         MiPqa/gMkR/nAmJUWWMq/e1EI+b3pdMT+G8IKXYe7nKYzGLchR7gaencPFw1DSHUvEAS
         ZRuLwIbvDtSmmUhrsZ+dMeLmIrdbaekLzu/9rzhCI0XCEwnQYWH5jk7tDwdhgE/43quR
         fB5t2OUI4XY2ox5RSuPc9QJ+iNwdlTGOPsNwQlb/yILAeNqlP7xS4PgwvYZ+eAR94oct
         E85GSrJafy/SrTJBV4OWSlwsBDt6xV1IvU3WmGIupxtjL6O/oeY8ncsfvq2d/4rn/mTa
         /uxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=P7VztkZ1Ye6WNe90AzXU1CeTBkrCVBeDgA3ERG+PN90=;
        b=uKY1xBARCMxDoWDMIGfN7t35gQGDGDhZx2/BdzGnqaBPWj4jet8ko+T9ufw8yNNrqM
         kebL6FTM4rFIAuWcpz46shgNOj1/sgRa4/HeHIsoalhrSgz7De6tI2R7QGO814hoKXhC
         yXMxG7YGlh3G7J7xOS9efyh1jRziU9OuP2ff5NwJyYx13TBDtQ0EuqvfhSzFFBYB1Zm5
         anERcyKzh38yFgOTbviSfdQnGFLtTx6+HiWbxQIbymSRz9doAf2ftz46cDIMWTTUu0CV
         tIcMAhG0OlSb2/D7eXVkWC7zy0nm/A0xhsmmKB8/AIJdbct4ztNUH3VRrdmm1schQ5Gt
         cDsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T8J1NQwr;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P7VztkZ1Ye6WNe90AzXU1CeTBkrCVBeDgA3ERG+PN90=;
        b=eTIxd5PeEeM8GAgSPxKFT6sSafXtI988f79azZCOWpwTF5uALZZMY9lyzNiPB294/o
         qYpwKbyClFHsnWvawZUttinsD5PA6OgLL18UW9xRduV4TlaK40FrpNoB4IIlr1sMViI9
         jbl/n+PsbAQH5dDE9OcEcWYvwC/Falkvmw/tflTvi6xw6x8xdRdnNuTjzYd5MAdqYLmY
         Es69ogeYoiNB3Zh3u7YtilqEhgH9Vy8XQC/TKXswasxG5KVcd7gvBBlRySOUmkVEIWJz
         YxbXHLfChY5DW3GtayXYqUUIF1Ab9Xn2wix3qbY0hTKGtSsdFyZE6mAIWrOtzb1lgSEj
         XLkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P7VztkZ1Ye6WNe90AzXU1CeTBkrCVBeDgA3ERG+PN90=;
        b=kwnfe7zlbyKEwV8yCbM7xHbGE2sf2gKFJYOWBlLDw7mxGFlPtd8x9W1mljQc2srjoy
         7pcbBzwHtdQbbxDRUwo3RTrUD/RYkPYHwwvPjPQXnmbFkq9SYnEPjWlH4NaF9X21L+1a
         d8GDpmBhbvnDttiYZoweYNzdkDfbsaAYI26ALSCK3JxKOXO1B6wAfFiKs+U4Cj+LBOaA
         H++0GVBgL3hYouQ3VRgNUgE5oicumlrWiOAWsRxV2NZOIqjY7+4X7vNSiIwxjI3lUHiu
         abRKqsFtJoCbFnHBS1cx5yireQr4P8wgFDgpsQYgWCb2yj/c8QLwuleZ6Go1iA1kyjJB
         9xQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ScJWEHLyCDim6OS0rmuifkPSyY2qcnV79VDWBwG+OxJS3rInY
	aC+hl9usZUo18WGj8T26SJU=
X-Google-Smtp-Source: ABdhPJyUcR5c60eUQDq6Ea7MiTeVAn200cHymRqWT2UAs3RcpjaYu5gDw6huOb1ri5jGiAodMxeqLw==
X-Received: by 2002:aca:a98f:: with SMTP id s137mr5709545oie.122.1627751618881;
        Sat, 31 Jul 2021 10:13:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c4c9:: with SMTP id u192ls1147481oif.7.gmail; Sat, 31
 Jul 2021 10:13:38 -0700 (PDT)
X-Received: by 2002:aca:bf84:: with SMTP id p126mr5578701oif.154.1627751618540;
        Sat, 31 Jul 2021 10:13:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627751618; cv=none;
        d=google.com; s=arc-20160816;
        b=piucaktvZbO35t99GhF6RbufK7fc3oYgZBmxDkBR4zthm8i76ZQ+oEYAl+HxRw6SAg
         4UE5i3O3rCnBtkN6fxJJUm1xsdSODJb7TYkrlfl8OxkKF2dTHzW1+EOv4cw/0QkxU+kL
         QqlG6HwVQ/Xn6Ci7hBXjRU3K8hjBAfwP2Sd1oCtjjc9HzbODJfKhzasUNA3OMbicXOao
         h59fgKKP1b52ENWInSJyKSCU2qxR7NHK3qn/IKFaQCoKmq1IoOwMQGORte31Nv9weIkL
         cCyFv62hZ2QWc+2cqj66H4fAkWub19+JxhsEzwrMRP1S1xyLF4GlzK2JkPnMtMlW+xQ4
         Wulw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=hD4P4DbaqIIYVQuS4Jut9BUltnVXv3xkC3QT/0bELqM=;
        b=EDWOObu8ZbBheewP8JqIUO4425YBkA9AU1MG1x/KLhU/s+FrH6MG73cxcr7UReYxnS
         K/ieWJzzoz/Tab/4A/hgrFj/w3fnFr5hizNSEhovSTzkjDdw7DLYnyNzNgOa/EG5Pam5
         SGh8OaOAbmrqVPl3i1RushbiFCD4CDr9Adxm69ou31l/yFBfe9pmCN2IQfOozCpepcE+
         koqqoTS7QQMjVuD2hAhtdEmI0oB7jJhrZ4wjod6UzlOO6hx8RQYv2vXZ2XnR6O5SJvtg
         3Egsjb3KR2XsW7VbX6qgk457oJVCHCQkGz1cH4Yiae8P4XdoGfw4zNq97MJbQ504fClI
         j8bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T8J1NQwr;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id b9si401412ooq.1.2021.07.31.10.13.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Jul 2021 10:13:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-268-yrW7qTj8PP-pF4KLtmhQig-1; Sat, 31 Jul 2021 13:13:33 -0400
X-MC-Unique: yrW7qTj8PP-pF4KLtmhQig-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A8923801AE3
	for <clang-built-linux@googlegroups.com>; Sat, 31 Jul 2021 17:13:32 +0000 (UTC)
Received: from [172.64.3.44] (unknown [10.30.32.237])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 26D391893C;
	Sat, 31 Jul 2021 17:13:29 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, f3438b4c)
Date: Sat, 31 Jul 2021 17:13:27 -0000
Message-ID: <cki.BA21688523.G8G1495JC7@redhat.com>
X-Gitlab-Pipeline-ID: 345958854
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/345958854?=
X-DataWarehouse-Checkout-IID: 17009
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============6552279285684251108=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=T8J1NQwr;
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

--===============6552279285684251108==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: f3438b4c4e69 - Merge tag '5.14-rc3-smb3-fixes' of git://git.samba.org/sfrench/cifs-2.6

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/31/345958854

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.BA21688523.G8G1495JC7%40redhat.com.

--===============6552279285684251108==
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
--===============6552279285684251108==--

