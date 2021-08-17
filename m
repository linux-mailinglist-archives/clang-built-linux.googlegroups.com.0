Return-Path: <clang-built-linux+bncBDY57XFCRMIBBU6J6CEAMGQENNXDOCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEB53EF459
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:28 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id s8-20020a17090a0748b0290177ecd83711sf446506pje.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 14:06:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629234387; cv=pass;
        d=google.com; s=arc-20160816;
        b=RmXY47kmMh25q1N8Vm1wJPu1WicL5H8ZumS3JhsS3Id0RGF4ZK2inxNvZfNQiHhsK9
         Qe1kXzFNUGY8jn8uOmt9NZ3IMPuM3eoCAn/2QgWdtVZjrQ4f0fJ1AwZyHBRnhs3Be0jx
         w+WF76DgXJ8pbeS2BJD3pvlG4FgACF5+ITVc9orPLWJIZFi7zjn2/PnTcRkr+Hz0NIeT
         w5KhEG1ehy0gEzHon9GzD/RRdAJdP0WLO8ioVRGhcqIQZud6FN8atJSqLnSwKMnk87nY
         bZQ5SXUwfakDiu34FwHYCwjvs1cGnLNs/PW1tzWEz1rcufwPaGiFxaRyjsftO8aVwzIm
         hTHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=m/SmRewqN6I5EGQMwyIrX9CVPERnIo6F/p7/xbY5SMU=;
        b=r351h4/TLh+CG0Pl5GxQydI4pZXFsTvOPMfetF2WkzCPhOCwYcmiB9JfQTEEQPSxMy
         J0/2HkQfG6KuRk6WaGycd1+gMjw4JOnEDyxx8C3DXtmaAUWaRtI0FHfi9o+d+XMKdcSj
         phM2Q3D6CqJaqQWN/9ILubmYSbDyZGjCagbVA8a+mOxqtlqFEr+PZurnI97+VLCqQPfY
         c2DXeGklMo8gbORftKIoSskR5KYJaVU4NvBS02Aax/E+/VEDeKWXBxITr7M48phV5n96
         Nxs8KfvxchRufyKJ4qWTQRAYkA0WM46XQRyFcGz2nFVP80vOjPJTkT9J8sr/NjlD9zXw
         rxAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=g5aj65oH;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m/SmRewqN6I5EGQMwyIrX9CVPERnIo6F/p7/xbY5SMU=;
        b=YIddUvmud0tJK3dnvdfrme+CJCRmbjzdZIqqPPTBvBfwQNH9zw2iCbJuKfFjOW49AU
         SD4TT1kKNp4rt4DOgWK4iNvVQyPiYdvEBq2m+cGxGfW05mUu/f9eajS+FSsCz8dYODRd
         ITJ9OoVO78a4UmWcB4vlCTM0ZZk8AQJuCDFIjSlpXZv9oN6CJiJR4UnFkXZbS1uyo4pK
         goyIExnNXxFb6VQLKcGkGbteb6fdo20NFNkD2Yga/zUESnsp2nstvvZk5ElXTPdH7Qj9
         bG1gg3cqT6Ye2yYggbvNqjhPNoSAVn5aVK2uqFU5DhxSTVwUZQtcQsHlIn91627zAvS1
         RpqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m/SmRewqN6I5EGQMwyIrX9CVPERnIo6F/p7/xbY5SMU=;
        b=YdWUI7mLLwXIUGIat4ajvtp6cYhcfGSk4N3C95dz3+9f88nvOETFGVp/fDtS6cHrwf
         0f7uA1nl+xcvDZ01npqM6mK+owbxCGBTKDhbOP6zL7/wWrJqf15KUYEp0Yv/2az+Ksqu
         oul9SPDsqUcV6VDNeiX7980xZ3QntSqgvD1JvgIVy/NhPumD4lwJKb6gO2EecbYbazkA
         ICNgrxm8MHdAHou1kf8LudUpKdtM6r69KAbLmkkFjkM027p3VtppHZeiMjmqticuPIsW
         DcEXBGY0MH04g6EuEaI4/YcYllbUSLkHKotykM2RnGb5dg4woywXt9HPYR/CyZcq764H
         66rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312E6CFb4BlJmDDaxJsLT/kAkcEjJCGSAR++eczinLc4iEiTK3G
	bqb7l64W2AwG0W/lmk828Is=
X-Google-Smtp-Source: ABdhPJzEtil9dalkWklCkHVas5rFVz6nvqPNMBszBqKgxpndlgR19BM/shidW55I1PqGW4xs6c/QXQ==
X-Received: by 2002:a17:902:f20a:b0:12d:a6a9:d124 with SMTP id m10-20020a170902f20a00b0012da6a9d124mr4406330plc.16.1629234387285;
        Tue, 17 Aug 2021 14:06:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1cc2:: with SMTP id c185ls1393422pfc.2.gmail; Tue, 17
 Aug 2021 14:06:26 -0700 (PDT)
X-Received: by 2002:a62:d159:0:b029:3e0:9a9f:fff8 with SMTP id t25-20020a62d1590000b02903e09a9ffff8mr5549477pfl.44.1629234386703;
        Tue, 17 Aug 2021 14:06:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629234386; cv=none;
        d=google.com; s=arc-20160816;
        b=LRXDg4ijn7xOUGSkaOF0UtTE5zr+fl5SwZvyHI+Qm3WqreHHp2Iks+emGQG8Z5R6KL
         2FHtGMbi/Xxye9aJhby9paR2kz4NuEfF2cwjyAuJSgcdcGyJONUyKMwu6c0/cPXG6WIO
         Z0/i7WLbAiZ3GvfPLVzzvsUOssvUSgZ8oc0RozaxRzt4OfKOsvZRl+r1P+G27ZTwLJfW
         h52Z4d2U8bxhRBmbbX6IXLELC4c+ZWluX6PPUpOOME9CA2+uJzBlx3FunPoWZnf/PPeP
         WjZUC3rdQjtyFuMEHpS+ha5P1eZfZjpmhL4ScungY/7uvd9gyNvkCuD9fRew8gjRsUJ0
         X3iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=83b3N68/9Vq33ecr8fE0eeb+eOhwaH7VCvAhPf83nug=;
        b=CT7uX1mbdfjOyjMzsFLnYR7kR+yiCOrscDiAaaSs+hjezfk1GTOKzIaeuu793CDSaJ
         t8LfHLVEUzNkZnCDhtQbpuufeJ+5CSIrxtN7iuzoilAA2qNdoOEYcdgf+5Zfak4Fgdwg
         XdnYGsLJrmOtye+la98o3QgFwEpoofCAxZgs5Ls3aKlk59ACYTXeh7bTE8QKFSzdqS0a
         sNXv/4H5s9ec3rhNf4P09BHuXu+xU278Sye3jOWAGPfuPk9Tetw3q/8uvmxzB2RlbXU1
         iDKhC63k9TMrQ053SQpgNRQN8orY37wrrrYA7HzqHW36jWdCjA1oopGXk/KGCtOVEjmr
         jXgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=g5aj65oH;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id q10si149411pgv.5.2021.08.17.14.06.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 14:06:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-285-6Jtkqo72NS6CRqEA2u-J-g-1; Tue, 17 Aug 2021 17:05:41 -0400
X-MC-Unique: 6Jtkqo72NS6CRqEA2u-J-g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F3C241009600
	for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 21:05:40 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C3DA8100164C;
	Tue, 17 Aug 2021 21:05:40 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 614cb275)
Date: Tue, 17 Aug 2021 21:05:40 -0000
Message-ID: <cki.4E0A05FA57.X6FYCODTPG@redhat.com>
X-Gitlab-Pipeline-ID: 354756858
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/354756858?=
X-DataWarehouse-Checkout-IID: 17924
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============6316879265125550312=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=g5aj65oH;
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

--===============6316879265125550312==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 614cb2751d31 - Merge tag 'trace-v5.14-rc6' of git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/17/354756858

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.4E0A05FA57.X6FYCODTPG%40redhat.com.

--===============6316879265125550312==
Content-Type: application/x-xz
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="build-s390x.log.xz"
MIME-Version: 1.0

/Td6WFoAAATm1rRGAgAhARYAAAB0L+Wj4ALpAS1dABBhHJ5VZcrATD5900+1yBZ1hAK8kjdaup6u
qqQD0BeHnpNINE9JghAhltvtVA6oObhw9qMcxarTf0Mrii3CfdkPxtTRHb6s5t4yA6ObEisTt1Sg
QOoAcF4eEMR1X/td4pdhVXTq8eiIzJCGOdQqLQl1OKtZMKuFZf51uyrhhAM+VWsUoY8qU9zgrT/R
ZqxmAzBZFdk6i5s9fKYtfIg+ps7QBWbeSvTWAjBQBWLaGYRMJTXJG5OEYhlnaXQDO0YF/wFD3RM6
hyfIviEXOy0gAolwR7p3aeUQJ7rabSbuvufyC7C5No+fenRAoRHdPkAxjbDBQtv4gwJ7CeCqPdOJ
K74nrgAEXERsHzRNkLvR4OSglnoh10otfppEhJqFEKIYiUwi5HfBASJou0hRRAAAAAAAu3XhCy2F
iGUAAckC6gUAAHarezCxxGf7AgAAAAAEWVo=
--===============6316879265125550312==--

