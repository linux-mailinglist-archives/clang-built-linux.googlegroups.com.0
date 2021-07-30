Return-Path: <clang-built-linux+bncBDY57XFCRMIBBTUUSKEAMGQEJ6OKVBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 4121F3DC188
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 01:25:03 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id n2-20020a0566023402b0290561891c53e0sf3835134ioz.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 16:25:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627687502; cv=pass;
        d=google.com; s=arc-20160816;
        b=qaL74zEx7GZJJBOJaHppUClR3EZr964mRqM8k68zNTWUIdHskcFbN0WdFF9Kz9SG1h
         J3XHWglN1v0WKP2DvQzwQ0lvUd1jJOmDOEhx0bKXC9kT9SdpNfxLbKKhkBqdT0Zq8Ynt
         hVUNgQ2fXb/g0YGVHXr5SgmS+Lu54AD5tQot6LGJ2aZRp61XHgVa2/Y51GMCzmS4u4RM
         XJWSPmWIoKplGANntvDQHRRqWKLeNWz1tOojSMaPpQMzEgYQ8nKrRh4pd3wqC2ffRRr4
         aJ0N/0dychPc5gpvU2G/ZJGam+X/EQFee7ntk8OBHUtJxJPK8Ibxs/Jow8Ju/2m78BPX
         DC9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=HC9opNwrfawiraGno49ogYCzPUfwGr05heLs5NeElB0=;
        b=HvkWJM3ij28i5UeZYVCoecHP7R6FQp1Qfu3ANFoQJjDGvPJ3L1FzmlnkvZRzTaUdGJ
         9J0s3UD05Y3eIJaUAMQWh2iqmRnlhoJ2YwVMZcffUQXZfE7Y5W3SyKB3DgMzH+h2/91K
         6PEqIUBCZ31RmZQeGNlyvR2Tmwkd4ybBek/m1wuG8SF5bXwrsnB2VhryOXszdCI62E9d
         0MFPhjafge/99pBGZBDIgK24ed+w1W4Wlp1LxBhiPBRd+q7apPRnnTIxq9qWkiI3EKGR
         hEUMJIyqMOfVOBhJwpT8LKjCHaPRHf6GybmnB0l4tt0FtULl1mZP99Xm14yIsarZM9rz
         sLPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hiF+Z4FZ;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HC9opNwrfawiraGno49ogYCzPUfwGr05heLs5NeElB0=;
        b=We2tWrzXOlzOj4AY8H2erQ+2faJI1PaR3q4UPJvSY3MDgenPMkc8ZCHOHm3EOFhz7j
         8EdUmwHmVNtW5MQIwl+6EK4NXuVOOkdXP+LU1p5c/LTL+3wLB7gw+22BbCOU/r5lA6lm
         M/HKS/OJUOeIzPESYzu+FctWTBoIiyaKnbU6wfmA8v7uTCN+PmLbb2daKn8bW4mvR5qG
         aF0t69SmF72jr+sFFKwPSYHK6ws92c7uz7UAS8Ef0UTNL6YbFg3WkUiIaw85jaGFB6A/
         ZV8oJ1bmr9FDBSgonToTZk8y7Q08YSNTrSIB7Nj9hE9odo69RtyDaSyg9WcMWr0mY0EX
         MRJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HC9opNwrfawiraGno49ogYCzPUfwGr05heLs5NeElB0=;
        b=mPOEIzsQY3SMjzMR+I6KAHmTT0Nh9fHTjMQQDDLsyK+fW1Mgyqt6yFMYtM1qoJnT/Y
         IbLC+H9QpmgNCi0Bku3bdXxQ5rDZn6dZ0K5DpG8cYX0iaQha6f/SA8YArmF39HMR4AeZ
         GREKwW6e/gTcGhJgMhBgMjnpmt87B9es2iTMX4Cnd9bfug7bIf54lzvRCqXoSxfo/VSf
         VyE74vp8VwCsxrhiHQ1a4UdX2Cv4/uyTVa3fIOWBM79yLhpS04Op8n1wSL1YvcbdJkM4
         ScWlthObzdmmItPU/geZzKn2Ow/UIFQffyTBe/w1ZEzp/40RFiaZUGCdZ4pRCuZcjZrT
         mYLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wWVAEGh7aiO2EiT86admKZR108Qt1RSTA7M0HsdbFRLa0KGxH
	WzundwL62X9MbWs4zXz1GTA=
X-Google-Smtp-Source: ABdhPJzd5T8bPH4GGC5uyojExnsm5yapiEX/+KwkzlX0JiTd4iBCTMsj4pA2PWhqDye0vK1k1IFA8g==
X-Received: by 2002:a05:6e02:2165:: with SMTP id s5mr1935358ilv.5.1627687502112;
        Fri, 30 Jul 2021 16:25:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:17cb:: with SMTP id z11ls514196iox.0.gmail; Fri, 30
 Jul 2021 16:25:01 -0700 (PDT)
X-Received: by 2002:a05:6602:24c4:: with SMTP id h4mr3095442ioe.5.1627687501717;
        Fri, 30 Jul 2021 16:25:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627687501; cv=none;
        d=google.com; s=arc-20160816;
        b=OuUeFVydwLoh0rOdxwussztXE7iDHg467tDgMhuIhJ7hoOObQ3aR3VCjYQAbMSfbtM
         wLZn+bjsJpkLC+jBWLZcXjI2ze2bIf4e+BcYllB4YVCqcoTgIoJUNn7U3PvlKVtRMUdV
         Okw1QZoHqo+9g8T81fFgyp0ifsWXjBQQLFwFbrkDgPitDO9TNpmZ5bKV+zCvA9JsFxd2
         MKpmer0Hf1++rgkWZUZGbhTBya/mWc0WgRGA67yLqfq2PW1VyeLtdefpqqwSukA3Y0QV
         eqXswzPJ1g4t5dtn7IL8RZ19FHV5VgOIoPBUFXnrY+kEyvTt1cLB+5aCX/v2fL+8nGLc
         4gug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=yfhJBGWpfOXDFHRPQ2gQEq5fSKS9yBBARwEMEgk8Nbs=;
        b=mquxZv946CttR7EBZaVc6/1Y5ZnCgzVOrVh9rq3gp36wpvNNORPANJP1B6tiUT+26m
         IQDtAv8dnctVYIsZaIplEvq84qA6e7/rMvVEsnTe7cPfGuRwdO7t9oHx0S0GNXl7EmQI
         J/qHE+CX28MWYCP6At3GITAldhtBtiNlU6lCqqvoVcgsJIjlCjvMp1WraTUyZyDM/3lB
         hLTIsHy9G/F4tJrGUUx6TAWYhJJNaA/I5mAiR990v3rlcOWWWbg+X0r+smptJBVhto4G
         KWG+uYRrc92TfAW5STicv6Kxh7FB9Bg6WSNMDuaxw8B+T4QVvTVbPB1qPBAShLR+yMI9
         1cdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hiF+Z4FZ;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id q5si77537iof.0.2021.07.30.16.25.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 16:25:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-387-XnPjxmTUNuqd2-bzfWIopQ-1; Fri, 30 Jul 2021 19:24:58 -0400
X-MC-Unique: XnPjxmTUNuqd2-bzfWIopQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 034DC10060D6
	for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 23:24:57 +0000 (UTC)
Received: from [172.64.3.44] (unknown [10.30.32.237])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8BDD35D9DD;
	Fri, 30 Jul 2021 23:24:53 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 3a34b13a)
Date: Fri, 30 Jul 2021 23:24:53 -0000
Message-ID: <cki.0A2BCD279B.UTB49KDLOR@redhat.com>
X-Gitlab-Pipeline-ID: 345788175
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/345788175?=
X-DataWarehouse-Checkout-IID: 16976
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============0556437679863755606=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=hiF+Z4FZ;
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

--===============0556437679863755606==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 3a34b13a88ca - pipe: make pipe writes always wake up readers

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/30/345788175

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.0A2BCD279B.UTB49KDLOR%40redhat.com.

--===============0556437679863755606==
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
--===============0556437679863755606==--

