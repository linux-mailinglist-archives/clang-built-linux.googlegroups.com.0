Return-Path: <clang-built-linux+bncBDY57XFCRMIBBOGV5WDQMGQEFX7CWEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B51F3D442F
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 03:19:54 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id l19-20020a170902e2d3b029012b7acb0e05sf3309717plc.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 18:19:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627089593; cv=pass;
        d=google.com; s=arc-20160816;
        b=cfRfr4NgBz+WKqXzGgK01gwdVKTEJfeZW9Nal0Po8kD3dfcNd/dpnV6oj6Vohq2V/0
         wzsMNu63QzeyD1Yoq7CeCtCLGXVFjbb3tCzuNgtd24vdIE2rBtNDbq5qcBOwcBILtNP2
         G1PuWM+J1OSb0dnMyvPtO+bzKLQXo/G8p0Psc39hfu2xqYl3LHLOr9TB4db9pi2F22p7
         ycNW5YadMnTZ96Q1Y8s4l/DbSy6vK+UQjK1EzjnaTZwXPzjXzdbFKKWilB4qyq4nt25a
         Lfqi2o2vz/8vfOxo0IFKWOWcDeLC84dlah+7zPJl3IkGPjphyEv7SC61Gp8DqK6c3hhQ
         x4CQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=tQy8S9cudxXjFWOi+ucOFHYihAHv07Y553Xk+d7IsHY=;
        b=FJRhM9AU/F21bCbW5lYnOf4jvyufV6usevwTkRFSx7pHqhaxC79PIpjVhwPWX11AQb
         HxxwAf6oIY81oPC0JQfS4iIueoe5J93HeCuWVXLoRcgDa+18qMmXHbScS9u0HwvSak3L
         DNO74SSKKLdFmQGDZav6ftX5oiQ+nKmh1dmRSpGuYe+hmxUSCvByb1Pfw17mVo4k17PY
         Jmzj/ZR1z+tqvP4E4j2RdLkXZnzic4MYUgq1t+PxoA2IXv9EGkFDju0MyllenxCQSk2d
         JQHhftLnG6pLtYVwm9A51DLn+AOJl1dMjvQiKgIXcBo+bdkWBPFQ/wuaBC9ey0m6FszU
         9T2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=d9kPLJKF;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tQy8S9cudxXjFWOi+ucOFHYihAHv07Y553Xk+d7IsHY=;
        b=PoD7s0h43p5e8QoqlvOgUyjpv4OK8Rez8Q22UBhRPQV65cyDjLYxDYRDlrnZT++Ei3
         XxHJirteAvZN+aF9OhsGP98sZcUUJEeoi4D1OxVSy1tjmUoAP64zctIz6S/V2c+Lzo9+
         dA2fi7NVQ/8wm/xOEaAU3RsBQqlhIlpISqJZimj6De0QJ6j3Y5gPZKQXXizgShD5ttK5
         cb1Alf/A6J8JpqfNbNBWPM+fRgNCvWsNFvw6AyagdyL1NvX/jCAYIuA1t6V+IuC5sh7M
         G7zBVxgYrVzRCx5MzMjsTKIZ0dr9ogSHB0fbUwVNrt8qbbPR1nunUo+NyPavVr+yxd6M
         3CdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tQy8S9cudxXjFWOi+ucOFHYihAHv07Y553Xk+d7IsHY=;
        b=CWoAkZPkMsHLSTGt0J8QZJUSCwMnRMNVSzXFWehnin990CF7bqQrXdz1NePSSh1/Mv
         Oxz4lVOoJbXKAHrkcOribjaCGQdRuCWitoXVCb42ZqM6D+H/HRnBv9pKTEiLvjwDwiK3
         L0JxdmlPpDja1U/JuCN2vqZbXsUQMSH4TAkgxypJn69oqEHEqG8gEa8Vj7MIgfiYudYM
         6uhMZFgom5huQAimlczIDLGsbf28WHhVNsmAqBaWLcM+Eswiv1Y+iynVY8T8C+c7v2n+
         yVUiQcYKdqk1GbhuW6OVMsXEH91U1dlwYTwR2qdX9B9LQxoADe7NGqAPyb26aNXdbpnN
         KCJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lqE4HT384aR2n+yeYfRp2zdkLrGaoy45jNly/Y1j5fx1vRoks
	EAmdwUbgsijpUSXbU5mu9/0=
X-Google-Smtp-Source: ABdhPJzf3L8uvJI/o5QIDYqxiwqvm5B8mq/HZ22hfu9Oki0Bq0o/N1Wss4Wsifv/ZEFQ9tG6zmyQwQ==
X-Received: by 2002:aa7:85cc:0:b029:359:7d78:bc4c with SMTP id z12-20020aa785cc0000b02903597d78bc4cmr7137674pfn.6.1627089592815;
        Fri, 23 Jul 2021 18:19:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e23:: with SMTP id d35ls5574201pgl.5.gmail; Fri, 23 Jul
 2021 18:19:52 -0700 (PDT)
X-Received: by 2002:a63:2586:: with SMTP id l128mr7525654pgl.68.1627089592249;
        Fri, 23 Jul 2021 18:19:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627089592; cv=none;
        d=google.com; s=arc-20160816;
        b=pTlPgLhhXo+SUZJCyX6htG9k5aeP1Cgjvs23HG5DA/Fz6KJdjuv7P+pR+EfJ+zw6GC
         jch2etscuKNGz3dZZcBj2ryqj7HC/IkyTOtfzkJtAQw+Qxagdpy45vYFWgL2OC233oNd
         CNi9XMrRTp4EQ2zgN7lxUisfo5NW4Q0GSo3ZZBVSrtmB6V5QBnFbNTP2B295z/Tg2/sv
         qziDwLzFJL/Yb9BCulRWWD5Ce9xBm7YxSy314D/soK6HXOtKXW9Q5Ip+2yf+d49goUZZ
         XfE8INWoUxW0k+PdCcKhsMW0BwIo592T8NzTV9onfHruxBIfSDl38gHYqByvqvFknPyH
         n8iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=uBmgbX5qKlACuv9txcDAUs6p9YGxKCjNuRycok/dJ0I=;
        b=TntlzgV6hJHHxTNNWYAp11nJnDYoCzUCOXflscToQwDSVS4z8ZzLOPSlN5aVkdwCJ/
         rwlFdHDuJiNhiGTTeuNAjslkHdDxe0i5fKQum04KPBvnpUTowSvWG2FscwCCjIn7zolP
         hVDaRHH7z7vjpEH0BQa+foELBPba+QUC8iRpEe6dOR/yFUBdfqWpXGE4SGayGLr0p9jY
         NKTGYZzEKHjZpkZQadWTZ+qcB+OaSwTh4mVVpkOu0WwhnNqMCCFA3/uvippdV8HGjC8q
         gCgv7rI3k9cDWdjjteOmnvCGernhz4YaAjkauvlcwCBYIosyyZb5DCUc8Fewp4WX1WwZ
         zmYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=d9kPLJKF;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id gd22si783928pjb.0.2021.07.23.18.19.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Jul 2021 18:19:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-12-Ro69gvLCPTyhdJy1IS2NnA-1; Fri, 23 Jul 2021 21:19:48 -0400
X-MC-Unique: Ro69gvLCPTyhdJy1IS2NnA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 81EBD760C0
	for <clang-built-linux@googlegroups.com>; Sat, 24 Jul 2021 01:19:47 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D81765D9C6;
	Sat, 24 Jul 2021 01:19:43 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, f0fddcec)
Date: Sat, 24 Jul 2021 01:19:43 -0000
Message-ID: <cki.3DE5EAB218.DS0IFAUY8J@redhat.com>
X-Gitlab-Pipeline-ID: 342183292
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/342183292?=
X-DataWarehouse-Checkout-IID: None
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============0523872458038538399=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=d9kPLJKF;
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

--===============0523872458038538399==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: f0fddcec6b62 - Merge tag 'for-5.14-rc2-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/24/342183292

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.3DE5EAB218.DS0IFAUY8J%40redhat.com.

--===============0523872458038538399==
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
--===============0523872458038538399==--

