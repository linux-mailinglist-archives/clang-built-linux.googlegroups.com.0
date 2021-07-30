Return-Path: <clang-built-linux+bncBDY57XFCRMIBBCETSGEAMGQE7BMBURY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4DD3DBE82
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 20:48:41 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id g11-20020a25ae4b0000b02905792fb55b0bsf11437920ybe.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 11:48:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627670920; cv=pass;
        d=google.com; s=arc-20160816;
        b=aKOZjVbRN7pIJOIDo/FbBKXYLZDZKsbOSl5/3jNZFl9osU3rBllBQ7XOBgPY1adqDh
         A3BCPL1SEfcwZFeMWC6/L0jipYV16mKKIyYxV/AKFnN7XEdHefPWO1vk3edTIzra+LwK
         xBq94L1mauGpZM4TLhdzb3eW49BUGVKYM6oDsb80qFeFcfOr5xptL1cdvcwfUpizjwr0
         1bCK8d2KB0q91jL4Ok0kfulqED6j+iGRyaAxwndUoag9oYvW7t08hEIdnsciuGXf3aBE
         qqgiUtXXK315V+GKDo7h4qRh+fHga5IEqVOJfYBrcDFexuo7b9aMFzscPGlY29t9ZRhB
         gz7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=NVEU3o+IKa5Qvp91+BnwaHQgtpNWgAEFsYMU3BHLQbA=;
        b=lj/O3RRc7rurfl9XFKjpzRXvmprnEA5856mBksVl/3f8Zk39yNd4fsT+grEGQbhZpq
         Kmn5lQ8HDWsCyPmHfXTFKO0vYcc2byWPm3MQ+jtsT4Ss3mWryAs5DABaPxRKptAvfE+1
         2gzs9fL1tjAtlhfadzUmXrhgqZcCemUbsH1oJovytp5xWgSjfSm+dPjZCrK05FV0ZxCe
         i61MsJWFKc8N0g1T2r7q0idPytEaYmSKT7lbT7HnWYTcDcmAmYZeue6gG5by+vIfQgvN
         xocCCk1eZKrlz1aJY7kH92CEcjqCHkHn0oImjCoMK5QkSVW0aCLZgPaHrY3JBTKdkfoj
         Kn3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QeS+TJYC;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NVEU3o+IKa5Qvp91+BnwaHQgtpNWgAEFsYMU3BHLQbA=;
        b=ZDrD6qp7QLU1rppmsh2Lau/cUBaJXQVri/vFKCTeU3X3Eh2jpmKIR8a+LexYLZJ8Ru
         n2JkZPXwmcSup9u9TNAK9reFBytnMvnbii+3DCnXxy4JtTj8QFT9+g5ZELeTqC/YmFTw
         kEiT6CFn50RTfS9XD+mUbXOKXiaxGivroKIW43bE39pRvmvSnawyz0zM3wVDKKkTjF8r
         UtwIVIVv8uO5L33Pj7bD0SuIGs48tzPoUj17D9L8bQl/XtYJteSC/9w/pSu2RAXx0vqx
         XdoAEQYrpT5Mhtvd/FrKnhnXKO6yyj/Q4rPrrtsqelr9NSmlCiZXjFIN3nUQUME+8bj/
         uHqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NVEU3o+IKa5Qvp91+BnwaHQgtpNWgAEFsYMU3BHLQbA=;
        b=EXIUVV72S1wSjTTOFScW5MMwkpqDmBItbUAqnnEzq/iVmtzY1EHlonbRy7fTQlZK18
         6kqlJKKuCzJ3yiF6bJyjDUvW1USLo9EJ9Y8plXGYIPb19mCNenxl8vMrHPx+972yOVTs
         TDIZ4fVTkGW0j69RhEdKlXptd1SxzdGvC8vomnONvApc45uUreIpCt/mLIDVLL22XftF
         dVfqQuqd8tVeHOXg8Ky0gYglfW4dOzEGmln9cDe4kyFyS8PwlD2HmX8QjYsMQsy6SKnc
         f3tMnh2uaA47uFAXIhFwdCSZRAP1epXqozMEPmBGpIiUgkSiDh5T8Cc7wYJfeK0vfBJ2
         PSyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531eSWta4R6W3MtXt9kowQZnRMMQWO3XdlJaIVsNWanfr+rCrldQ
	CmLn49L+rp48rLURnMONlYc=
X-Google-Smtp-Source: ABdhPJxn1kA+E4zMG7ZMyFzB3BAw4cB0ld+H0kdC5qhZeaNA3i1qLLNz0jj+rpheTCCxPF3PrGBMqA==
X-Received: by 2002:a25:d691:: with SMTP id n139mr5022409ybg.27.1627670920469;
        Fri, 30 Jul 2021 11:48:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8748:: with SMTP id e8ls1235844ybn.3.gmail; Fri, 30 Jul
 2021 11:48:40 -0700 (PDT)
X-Received: by 2002:a25:1546:: with SMTP id 67mr5044089ybv.331.1627670919955;
        Fri, 30 Jul 2021 11:48:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627670919; cv=none;
        d=google.com; s=arc-20160816;
        b=LmYir6qWh6qxMB9mVG1MLopSF0/5IspWH7Hn9CmPndCz0/lAKV9IhD6uUVqNm7waZB
         uOeRrdQGKU65ZQTJxy/NB5+3iUgUlDQZN4e+Ilamm8BMT7HG4W2UK+M/KoDFzSIFJF7F
         KJibOCNbHCctodVSWA72wgbOGhI20holj0TsMROdoIGJG5R9WLN50GpHCPTCQu+YbMrj
         kr5RvPra+2w56msii/77i3pOM1pJt4XpBS6Q1lSgrzJTSMJhoAMkIvunHCjyLGIEXCHG
         cH7JnD7XsrKRj3U/ozWf98i+HM4Z1Qp3v7XpYKvSDY/S2cBFn5hF6Djed5mCabOwEG5F
         KBkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=phUfcewlCzLtuQmFJ9oU/SyOXHT0NYw8MWjU4+Rqxo0=;
        b=RXfRV2vRjhFssl8FbOXYCGmvGvwoUTza5QthkI35X0dgxiQU807s5CEg/1QO/Eirio
         d1qtKqzES2IoAB2XMSEvYE1HBuCfbO9tu2NUGJPNWojF4OZjGLMpq4vp9YDKBfWxLRd8
         /s8CqUSJEWLAP5U6s2guKU7MJTBoVoAHsJlX4Ln4QBWDYuc5SRGVN9nzXF+5YYp9Ep7t
         XZFpNxEmKefWQ1v++5h83uIH6caDEpsDPKCJdB5hYsDjz6gXlWzvFrba7mOkbvFn8qu1
         SgWxMKXP9bsR04SB/Gvxw8oEnRSV0Xe1SgtGtMJHJhIlTIRklbrD1eXLxAO8bCve0O+P
         pOzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QeS+TJYC;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id n10si182529ybj.2.2021.07.30.11.48.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 11:48:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-163-KPccy-CNOUCmFrUZktjvFA-1; Fri, 30 Jul 2021 14:48:36 -0400
X-MC-Unique: KPccy-CNOUCmFrUZktjvFA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 51CDA1B18BC0
	for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 18:48:35 +0000 (UTC)
Received: from [172.64.3.44] (unknown [10.30.32.237])
	by smtp.corp.redhat.com (Postfix) with ESMTP id ABD715D9CA;
	Fri, 30 Jul 2021 18:48:31 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 4669e13c)
Date: Fri, 30 Jul 2021 18:48:30 -0000
Message-ID: <cki.9A2EB8F67D.Q5ETGS9HY4@redhat.com>
X-Gitlab-Pipeline-ID: 345707811
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/345707811?=
X-DataWarehouse-Checkout-IID: 16961
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============5709878684956659578=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=QeS+TJYC;
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

--===============5709878684956659578==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 4669e13cd67f - Merge tag 'block-5.14-2021-07-30' of git://git.kernel.dk/linux-block

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/30/345707811

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.9A2EB8F67D.Q5ETGS9HY4%40redhat.com.

--===============5709878684956659578==
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
--===============5709878684956659578==--

