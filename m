Return-Path: <clang-built-linux+bncBDY57XFCRMIBBB7HZCDQMGQERDP2STQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C2C3CC086
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 03:34:00 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id r10-20020ab0330a0000b02902a1547abcd1sf4609405uao.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 18:34:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626485639; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sicwke9UfEwNEUykPpCynKc2lsdLpcqmxZbKlySiiOI0iFKz402bbgENqAmVxm6YZi
         glENbot9WqUIprBgQ+eXMZXIdbMH356Sz6EeN0WtZQhjoe8Z4cgEM4rFvHZKLmK7j4ok
         XrvK+Bp6KAQROzCyte1OneUAzLm/cdDSqC5PyONGH4g7YrGKNhuHA7rv/HDShXaFgUvu
         LEFNXj9P1FX5BkG9l23ZAzXBY9QwwfB/V3VUQg4LZAwUd5AGDqv+VmzRNSWclcGv6kZp
         8tecj0TmYTdGao1Y/ZFnDmaVToU3+XdVQRHlPlDLJIcnrjzTXFAZOIFxrssblXYwFi1i
         5vng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=b53ZXX6GAebaZ+5GlrVdS9vovfOqgDIF6tpHiZ8wFLw=;
        b=F8ucB8vlaUkEMMyWZVk4pH0DPIsE1RpVOOU5MOCElP2QigiYqsOUcnuoCjdHat7gYd
         /1FQbA7dHgq8xmN6mt4gABnKzK7mSw6narOCsydErU8JnEb+knMJnsh7m20RvIR0twmM
         3t+TrEg9ALJo4Ua0Ws3fhKQE5P9FdxUsg1QDYPpmoxbYe3iT1LDLPu1QUYXb66gxMlku
         8GsnNxYX5pB4eOMOOVO/0jf5r3iJLPjD4fSd2OOL779nbEQX65VQfWEN3b65lwXKR9kr
         UUQQIYlG2l4y11USaJMcczAbc6QiHiQC8ZqGSP7UcsTP7tX/EXZEP/ioPxunstQo0tzD
         s4Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NsAT0W0y;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b53ZXX6GAebaZ+5GlrVdS9vovfOqgDIF6tpHiZ8wFLw=;
        b=WQm1YSKMyO3GCSS+c01VgjrHbiYhAHIoasAKIouyoIjoLHlvIoBDLA2JEzKG0zZhkn
         xTBEy9SkeC+tGuae3DKG8Ig9/vtucS8lcO+Tl7x2gyq3WbYXsam8a8XmW4KpkWzPfLrM
         BRJ9rvQkvDXHIDjHv62ORzk5ZPRWkI+qRHsFIvYEwEhZi5RMhJzRR6UMYk2B/zPIjyPH
         8YbTL08B3QL+4fJqeMTS08GANOPuyBDWTwXo+FovaBhzcVbfW6G9vXvT9b9SaplgmMmp
         PARsV9iU2f1GBGc2yRc4Q+FXRuts6B7evfdLvNVfgp5OoXXz2K88RgO7Lj9UUm8xyy/r
         uUhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b53ZXX6GAebaZ+5GlrVdS9vovfOqgDIF6tpHiZ8wFLw=;
        b=qLtc6icLIbsB93rI07AwRq4AzAXc05y1PJQ6G9XKGBaL/t+MnvQoYvmpbXi+nuI0EG
         w0a72+ii88H+O/tAIV9GcQbrzMsTcGsVWUzMo1fr9GzE2Rw3xjHVqI2ci0Cdp9EopSiF
         s3YWhhiRtG4cfIvhyYQMql2hdKIqLzaM23t17a/k9cMzA7xYC5zMcQRi75//ECJt2rMp
         oDE/UxAnAb4W5FUR5xf1Lzz3iwKW/dLIpPwduShzLau2x730zGvipGC1PPWS9yAPkZZY
         E/sh+O3Fvc5bz48ywTTIUc6aZlxTMXIivXFmjYX5wrAv/jcPRm5zTKejeyHUnvRSiRRo
         4eHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RL25RxqICXrBMjCKPkETXPrd0nC2xbRQne5QB+VhGy7R99jl2
	dAEiRO7bscV4iEoLhzQjkUQ=
X-Google-Smtp-Source: ABdhPJwup7PO2uQtlbg++x9cecmDZEvJtHNXtZrsWUIa4ebXIf65A6XnBlfkAn6MGwXhGaWyignfSA==
X-Received: by 2002:a67:7f0e:: with SMTP id a14mr16382136vsd.0.1626485639347;
        Fri, 16 Jul 2021 18:33:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2d8c:: with SMTP id t134ls3573704vst.4.gmail; Fri, 16
 Jul 2021 18:33:58 -0700 (PDT)
X-Received: by 2002:a05:6102:362:: with SMTP id f2mr16605012vsa.26.1626485638438;
        Fri, 16 Jul 2021 18:33:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626485638; cv=none;
        d=google.com; s=arc-20160816;
        b=JWkZS7x4RL2t2IMt5T3BlZfGUcVaPXmAB6shrGrJKXrJzUn6vtdqRb6jthbNq2gpPT
         PnxiLVJPUg0ECH4Tfqolctmx9wCX0fIm83zJCdLz2RDx8XYIJXUzOzkEcWIoM5/UtNUO
         JJ59UvppJMRXiDmfvXS0/Vi0o/6/ud3Xa9kjgRhmhIkwGYx+xRpn9PfXxIjTBt/fJByZ
         QNk9CKsRtyxzP+vb78RC/A1xA8XpI8yUc/nAHMk785uBXQR7uq8/8d/pUsVvrQ94sxsU
         P3FRn1ontJgcvmzIDQqG/eXe/MOOq7pHBoljGQXBgwzQyrMnIateGKqiWPA6aR4C4/9Q
         WrRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=n1fD3RRGZMykjzOPZXJcWAS2paGU9T/bjhoFIvsp7G4=;
        b=I2zSmdET8yGSnDj3PkAjLz5Q4GGS1gtg54GmTcjiuIij4XnRg/bK6faPhVD35OB0W0
         SyMIys8fQlrO8obk8ca1Lgidnp+vrbVq/7YpyTIFHwZP4LmuhD23U3R1tEiGqGMhEnEx
         PKKFjgFIgyI9xMchIWGn4+Yx+Q7kprP4vIR6M8soS/Oqk6e+tR8cTGnqaNhV3aQbhcAj
         N9dq4mx2yAA0uJBjKE8vZ5jl9cFqQmWquyVRKvLbROTlLX3aQdwagtKBXrxGayCsE1np
         cPHXF+MNUkZe3IQAkSo8XBuk2kLgxvU+/ll6dM2ZpFjhKaTJdLsp9uS5QK2nnRM5KEpL
         33tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NsAT0W0y;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id a1si689518uaq.0.2021.07.16.18.33.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Jul 2021 18:33:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-492-cghiFvj6MsqDhtsNmbTwOA-1; Fri, 16 Jul 2021 21:33:54 -0400
X-MC-Unique: cghiFvj6MsqDhtsNmbTwOA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB8FE1835AC2
	for <clang-built-linux@googlegroups.com>; Sat, 17 Jul 2021 01:33:53 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4814826FBF;
	Sat, 17 Jul 2021 01:33:50 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 872f8ede)
Date: Sat, 17 Jul 2021 01:33:50 -0000
Message-ID: <cki.5B9818243B.HKZB35CDN4@redhat.com>
X-Gitlab-Pipeline-ID: 338601586
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/338601586?=
X-DataWarehouse-Checkout-IID: 16123
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============6051275543421592727=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=NsAT0W0y;
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

--===============6051275543421592727==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 872f8edeb6bd - Merge tag 'docs-5.14-2' of git://git.lwn.net/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/17/338601586

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.5B9818243B.HKZB35CDN4%40redhat.com.

--===============6051275543421592727==
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
--===============6051275543421592727==--

