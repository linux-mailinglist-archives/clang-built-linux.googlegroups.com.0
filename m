Return-Path: <clang-built-linux+bncBDY57XFCRMIBBJG44KEAMGQEOSZEKVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C8B3EC7A0
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 08:03:18 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id ay14-20020a056214048eb0290357469934easf10711378qvb.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 23:03:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629007397; cv=pass;
        d=google.com; s=arc-20160816;
        b=vsiYZmmmr38i3aUGHgP8vbK+i9Ltuw1xusg0mdZLmZ6hQcgtX4eBu8fIBOPXEczMMc
         ZUtQi7cikDVaaFMUNeC4j0LLbLKx5dEMylNQxqhbSV5Swa/MbXu5c2beHivO843SBMuk
         6J5y3/LTZvO2YL+l8X+2KxWdIUyG+Ewf5PLJQZOd7tECyq+4Yx6XpdWJJqqTxze1Oh2r
         JCQqGew7OpyNZP7lPuau3btRV5PzJVkzxPkJbsgviB6dB+RNkFEZFj3Uk2C3ff50v0Jd
         4qzfJtFLSSsabFvOerjWw+0CbvBEBUrxMIZraUm5zKKoZelFLR5hzCL3QuySDGu4PARz
         Wadw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=8mGplm1OJ36ja7G98+AUSnrdjSLvRK3WJzgnJk0gm9c=;
        b=EAaFzoMmohIxwO4nBDFoGJBuM07wdybIJXHJ8ArDq+LORj5SZRWOU6AR94kXETFlMM
         pTM2chDojX0Z8rW9l2VXMotjwGfpTfrvtP3VU0J1YiCzgqafsrJOmcWGMbowPJOknPDS
         l8kz1wcgZUMIOlhGyb+ISRrfS4YXk8NNMG81NZo1JnW+SQ+X5i9+493yccgxeOTiTxpi
         /9Ru6ESKz0eF5Ellumf2Mx1YDLE+YX8S6qRGHyPYNVVit/JfpH+8V57JtdoYhxdimZl9
         q93Li7HKKw/BPy27d8Es/YqlK7Q/PkU0z3KgmlAOI0yxys3TJ9W2FJ5lefBo9njUJuGg
         zHig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Fw16fFZa;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8mGplm1OJ36ja7G98+AUSnrdjSLvRK3WJzgnJk0gm9c=;
        b=JDB9cjHA9XyzD3HGrjN/jPJdZIf7tmo/U/mIDNo3Qo1v2J+HvFbkjAy7iCf8yIZZw1
         42Rm2j2n6v8Eq52tDa+3OqChh+n5npXTQaackhrmtYZd4Pzn8b6OTEKeiRRJvnZshm+x
         uaLqECg+i1fRKm3Wah0XByjzcjoeUnpqfdT7DBKQOOZobqVwhCJxc2T7n7ayA6hQtsKB
         OEc7JuorTjx2utdR+jvhNz3leeQsfbIGRm2hnw0oK0fO/d2BNesZjbFGj0QWlW6n5/Lc
         Kw5utFvijTdpJyvyhv/hiBv8eCY6eA8T9Dbfkyl6+p6GzxTVT9CF7oJPpPj9xIiTWcDq
         y81w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8mGplm1OJ36ja7G98+AUSnrdjSLvRK3WJzgnJk0gm9c=;
        b=BFz1cy/twi3aIZrXZFpt50tHrNzHMxJUfA/o8y0fm5fG1OcRTcSSGbGby5GkhUiR3/
         06tKYHwRucD7zvGQuCzThPlAL9fWR45j0sbQPK6UpUvTfBR46KvbxMYBf8QEyEPJrAH6
         qj8Rr3JhRj2pXv2RVFp45/3VCU/Fy3hYhhBid/xM3NYSEEZ48jzmPlevM9dw7XGK6DCZ
         Nieuc0Ibqt4TYUQbUoQ+767Ndequ6UvimD0xF4P9CNx2e1YcOV6FADH1ovYwzU/UFFAS
         FfESuHo7SN0lNqoTKn+q9n/XkViOhW3CF0LUs65dulIEtwNlH+MGtmdo4UZ/tuLH7GuD
         mlgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zVqIgjA/TVAtux9UofG/SQHl3/NfqNddbbFMj7fP+mu+85MyY
	a41glYBDA4XUxGeqA4SGOCY=
X-Google-Smtp-Source: ABdhPJwiDtKofTcGmfQbYImElLY/JnMgxB/0TyCI+AgqFfxpoTjzB/b3gpbAmQr6aiFODXQIEeDxhQ==
X-Received: by 2002:a05:6214:dad:: with SMTP id h13mr10425397qvh.9.1629007396886;
        Sat, 14 Aug 2021 23:03:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:182:: with SMTP id x2ls2442777qtf.7.gmail; Sat, 14 Aug
 2021 23:03:16 -0700 (PDT)
X-Received: by 2002:ac8:570b:: with SMTP id 11mr8741365qtw.263.1629007396436;
        Sat, 14 Aug 2021 23:03:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629007396; cv=none;
        d=google.com; s=arc-20160816;
        b=fJNoIQCkTmkVYyiZAVQ+tJvCboDXJTXtS4SA4yXlePrImidDvYZnBIp+u2nS2m/L1S
         wDI2pHUdpBnwDqKlQbAMezoXfahv71vTgynjz+ORoOIoyOmZTQ72oA7u5jwTS6ZbN0r7
         cdjBiwddptpMZBJw0vc/2M0vdRqtHZQqOexThW8EEnjNFvGDhlWOwvaQ9ElTs6a0kTyj
         3cwF2vIU/lZf7FDnW5+lIZVVT8F9M/5SdJqghC8D/9VCk8bwkPt+fw6NYfhM7WF6ylXY
         Tp0yoftMso/2jD2J48FdW15Vo4m0rEvGwtLefDCI8dRNPo3j27nxy0Sako9hbdcUTM4A
         zNnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=mhj92aBM2b9kKnBZ7OQKfppCxWlpIs0SBpNo9OfIkfo=;
        b=O/WfCpJNnj3Ve7rLG+WypVuqR79PpaSh2BX52UKDgSz+yRyAWTyc75cdEwuioS0RSj
         fDxRbFKwp4f2cfBOvn20J25rdczzhlNMFbyhuox77Z8zcfL0xFeLdUrw4BJgL+xewfy/
         yjEi07KfmWCdTJ66Ly4dWtQu8LaWXfcJdpg22eFdE6q20xo8nrRCtUhtSkGph7Dixl/W
         FpzxwPp4Zpsu4TbH+qfuH79n0w7kfVfv4aamwTQ8HupdgdNAf9u0FNb6pw1urJ+Tn7Xf
         POStJe+LcyZtYMF7CeqQ7V2iF+ZKpW0Hk1rJfWBgtiWFBI5q5kuSamaZTtHd2NH9v/ir
         Qf6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Fw16fFZa;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id a13si173577qta.0.2021.08.14.23.03.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Aug 2021 23:03:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-393-wv-dlh-WP8SrfPngKaSLNA-1; Sun, 15 Aug 2021 02:03:12 -0400
X-MC-Unique: wv-dlh-WP8SrfPngKaSLNA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0497F8042E0
	for <clang-built-linux@googlegroups.com>; Sun, 15 Aug 2021 06:03:11 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4034B5D6A1;
	Sun, 15 Aug 2021 06:03:07 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 12f41321)
Date: Sun, 15 Aug 2021 06:03:05 -0000
Message-ID: <cki.2F15AF1CDF.BBZPUSO5TM@redhat.com>
X-Gitlab-Pipeline-ID: 353403613
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/353403613?=
X-DataWarehouse-Checkout-IID: 17768
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============0150456358494922393=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Fw16fFZa;
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

--===============0150456358494922393==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 12f41321ce76 - Merge tag 'usb-5.14-rc6' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/15/353403613

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.2F15AF1CDF.BBZPUSO5TM%40redhat.com.

--===============0150456358494922393==
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
--===============0150456358494922393==--

