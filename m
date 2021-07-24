Return-Path: <clang-built-linux+bncBDY57XFCRMIBBM4D6KDQMGQE42X3HNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 617893D4A06
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 23:10:12 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id 13-20020a370e0d0000b02903a5eee61155sf4664074qko.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 14:10:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627161011; cv=pass;
        d=google.com; s=arc-20160816;
        b=kENgLq3C3qrsqUSSkSVODNvDYAKj+yVEJDDhwUbrzHha25jBP+GOMI8VzpXPCc22mT
         sllMM7KHSRt+sMTP5k623ggWZhTCuVzZLzMC5gyimTopbBZEoDFpLgZZXhVjZuMqAuMZ
         og4emna6hnfhlGF+0EvYDpPGB/iT8vItAd+vKoZ7tuLluxfJ03FVc/kSZ0YTbL0HYNTy
         jbzKO+oYy09apLVAqmJa72s/g6gh7yB6foiNsYDUiD0HEPdp1/Vgh4nkhOzMon56g2R2
         MNlVrX7JKqeRb/777ThHKHbmEEkomySjOzCTDJyYJOf4lBNLg6zEUkD4B/SOZky5I/qY
         B38g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=FQsPc7N8jCO7Gy1N07rzoW4eAQ1bydc8v9+NcQEr+kQ=;
        b=AgJXuiumH8XZ80H331B7L+QAKyESUPi/+b+aa54FEN428m0W8T+2zN6CreOMld6qFx
         NJfCRWkgEX37LIhGGERCSOIKAPaWHobFr3PVa+aunz9fIHjpU6Qeai9g6HMVAI+8FDwP
         I7eUTGpwPh1qQZMbEp1Tk7+B8qNhmZdCVkcPhuEcoPQyZZT96p5RwOxJYcci/hnWDZwX
         EkvZhTkroHp1Z4kgkdIMbRdXyBL+XDVnTfvqjD410MQH3uBSU2OFjEhCT9yea0+H332l
         8tZPgaYI6Z4lBbQPArS3U65gMIAaI4Po+fOnQuuk7PK6SDHFmmS2QFNhvNi4vCIeGU8w
         M/TQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VlBWk4p5;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FQsPc7N8jCO7Gy1N07rzoW4eAQ1bydc8v9+NcQEr+kQ=;
        b=qeq3upX2U40pUlub15sl7IRwaHolw6mPrydX6939BKCU3yWiZi3VlLGZR8C676Os51
         NekSu/lrCgSX+sU+967AkLgK30qJ9Df92nrWx86urgodZa6ZOQe20/Yx3kY2fF6D4kqx
         bHhtqGT2x52i0ah96jsp1wo7Ep3ntUi3AimMwaCwR6n4UScKYH4N5rlTNUE8jR+1ZYzi
         j0z8bHt2pi2mf/VJQkA7sSNs5CziOfa5fvLZOcMekJ2Hh70I4aDTAnWwLO12JTE8iB/0
         jQ+Jk3MdRH1r4Vr725LKmINJHFvEtXXBOrj00cS3iDWjTEmA3/uT50IOSlEOpPrQCy7g
         bDdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FQsPc7N8jCO7Gy1N07rzoW4eAQ1bydc8v9+NcQEr+kQ=;
        b=rgv+/nLs0ijfGJH7R27DnKVnY912sgd3YnO8Ip0mHnFAYW6cUGmNtKo9wmdivoOtMv
         pTkDYPqG5ChXgvQHTyRij2bmrxdaNKR33RUEOucBrRamahl4pH/4guHaeZPGh3cW5CPH
         zWl04kYTdVR3+e+Ceku8T3jTsgnL5ZU1arufuR2t+86RtFvuxUmUDTCFRptBIWZICcwL
         zJRyeU6Jau4Mje0xYUffXb6QDdfqIxKmioHUvjXj0UzRu04nXmcamTb0BYKPeBQV5whe
         0BWwgfTpuFb7mNsVXegJgXGWrrTJPyriGBASWtbb1jhVdgdMnv8DKkAYbEbqhiYjgWcI
         i9aA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bTSUKE/M3SCYQ/rfiJre/X1hAyQIFWJn1SNfZix9BzKaaCdHq
	WnEHvKLy27uL5DLcQQPji+I=
X-Google-Smtp-Source: ABdhPJxtWfanjJBPEwpmPTkY+VQrYChYRqm0Ia2CuK/zLPEqtECnl1AbmZz3UXmvrDe+T3JhAcURbA==
X-Received: by 2002:ae9:ed03:: with SMTP id c3mr10837120qkg.418.1627161011430;
        Sat, 24 Jul 2021 14:10:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1944:: with SMTP id q4ls4683415qvk.2.gmail; Sat, 24
 Jul 2021 14:10:11 -0700 (PDT)
X-Received: by 2002:a0c:8ecd:: with SMTP id y13mr8045268qvb.62.1627161010985;
        Sat, 24 Jul 2021 14:10:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627161010; cv=none;
        d=google.com; s=arc-20160816;
        b=ixKooh/YxlOWTogtEg8hv2dqSo3xUQPHhynf7AiD1cUKE5HA0Op6xdqhDg05fEOcjN
         kgbMmTRZ9gCNnFSQ5HwT7zl25et4VyaYY668N5XlRjvFNgGr7nSMqN/uNHBNAMvVV3cv
         U5LdWzMpdQMN+leHIY40nyNVlZjn6ymd981ji5STpIr8xqauxt3sNXYlov1PEkpFN3NE
         5rt4gzy6aelaP5YKMuu/JG6XrZohRudDojfFXW6OYIm/ZF6KPvKtFnHqUb9kQT+yhjOO
         /AQQcJMm2p3BD9S9pGQl+Gqevkbh3o/qGCG7d5h3U8rbfADhz5GiiguaX2jxZjUuOWez
         OH8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=P77zDdQcMUjK+7N22IZJx+c2HfY2wzC+4vPNWm2BP8M=;
        b=NYZ76rBZl1jwHz/x6p7iFNRnFGAnjvA8z+sp45Dn+0hHQmtTQg0MKPPb6Clp9Fw783
         QLpng1Dke4iGf/tBQV5z3z43XJacn3oL4DmBGShp+CjpUrTqFvY1Yy3m5kncMQ6P0JrS
         YNQHN1/ryD9YXd7nr0nJ4vmbloOZJt73lBG+GoNfbppgcNLszf25yYJyBlEk10i5cMus
         IqQM1Of7B+uJ2hCEzXtFbwOtzy6lb7GGnkewChsXUpyT1nBTO4QWrE/U0ridAnSFldjJ
         uWN+XvP7guyvwF5o/j0ag+Qea1O8T7CeGet7JpKkRu+CVnZVO0708mvG8d333P1q4Iuh
         /72w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VlBWk4p5;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id o13si672026qkp.0.2021.07.24.14.10.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Jul 2021 14:10:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-jw1DqZgfMsKPQTOYvH0JnA-1; Sat, 24 Jul 2021 17:10:07 -0400
X-MC-Unique: jw1DqZgfMsKPQTOYvH0JnA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 011BA10066E6
	for <clang-built-linux@googlegroups.com>; Sat, 24 Jul 2021 21:10:06 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3D9C610074E1;
	Sat, 24 Jul 2021 21:10:01 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 7ffca2bb)
Date: Sat, 24 Jul 2021 21:10:00 -0000
Message-ID: <cki.BCF5CB825C.GFMXM5HQBA@redhat.com>
X-Gitlab-Pipeline-ID: 342370522
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/342370522?=
X-DataWarehouse-Checkout-IID: None
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============0382962995811150541=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VlBWk4p5;
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

--===============0382962995811150541==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 7ffca2bb9d8b - Merge tag 'scsi-fixes' of git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/24/342370522

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.BCF5CB825C.GFMXM5HQBA%40redhat.com.

--===============0382962995811150541==
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
--===============0382962995811150541==--

