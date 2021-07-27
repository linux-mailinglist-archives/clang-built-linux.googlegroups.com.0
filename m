Return-Path: <clang-built-linux+bncBDY57XFCRMIBBZUJQKEAMGQEP2XUTGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D787E3D8256
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 00:12:55 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id u5-20020a4a97050000b029026a71f65966sf299452ooi.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 15:12:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627423974; cv=pass;
        d=google.com; s=arc-20160816;
        b=dzzkMKF4wANZ7L2dAJmjOzGrgNV3zeD8Vl9D9oaucRqybZySIb/Ux34BrqJHYCC9u+
         o00g388SGyx7HXYrzW/Nd/z2kp9Ufqth5WmPQe8hm+HLSg+RwQsvcxe1O/+kl4QYN0OW
         MIXJIbaZpV+h+7Cu/DCqsEmqcdGpThFNqpKCUN9OoE6ef+0h7DYBd9j+QjSYv5tEmaGg
         06bsXnVE0CgLMZQag8OmaaQriYb5hfefzy7oX0r3eUobiyCSHT+uv5w9Jtk6ezt3mwWx
         jHoe8WVFV7GH1hZwoVWO7dTKTsH8rMTRIm1R1VCab+7/J3QIT5pdBLMnX+9EeJSjaZjM
         JeRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=57y5o3ox7WaynqkHkjOdvLGWPgvzQ0lWVFA3D16UG1U=;
        b=lkmHeCCJssXqgBxEHQ2kNJym4j9AYfxmq6LMaBkHXB/6ypJ+4WQPScwIKNCn1kU2pz
         +IIB1MOaTn0nKic+4AlTBtAjSsAk7jRJdzqWf4Fza9luHRp0fca9NEN0gaVa6EjlUBgg
         r4/WydlELlk241lWQUfsY49WsPIEg9H9qN+oNjEE5Bqp77foR088LPbp5mUHUCEI1SlU
         jkG+jjPgm2EFs0uN1ZUK9eZKoGbLO2XCuYtQo8A+EzRVQ32j/bEnkOzLJ+wlAAuLx51U
         w9sbzGD6Wr/PjyaH7kumXiwNh58lAclBPGCuReyjCoIhc3n7GTzlf65ohvnLhNEuwEKi
         ORgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BPIAlNno;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=57y5o3ox7WaynqkHkjOdvLGWPgvzQ0lWVFA3D16UG1U=;
        b=bdth0XCrTNYj7zIgJDPTFqFkuyRWd30nk1if9lOdUawjKukbxQNpdTuJlywSZPTuI4
         NH5NWz2UB/IhMvho1k6adlH06vp0QXW50zJtJGnCqwyz8dkXPq3c1eraBltAinWuYs7N
         yzSLQEAcFEiA/0uXd0DsbrPkJxTLYJG4YeWRLwLmvRpJq6/c0OkKC03EwDMibs4LPqBi
         OIJkpTKGSCCbVP5SihUSjR7fqrhrxLC0l7hP6pHrdH5ql2wwFR7Ce3LKECd+3puUxi3a
         /RpBSXIoik6yD0Dvcj+7Um9lT//QPWQYFFRRiLyluY3xPi1zXMDbuTvmKHNtW/B9q8Lx
         JivQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=57y5o3ox7WaynqkHkjOdvLGWPgvzQ0lWVFA3D16UG1U=;
        b=gik32teBbi2sXnUm/0f0uhMlQz3CV9g/G/AD1Aa/IjzWLRdJjpySu2G/wdupSldYcY
         MCtPXKTbHGZCHMcxeDhGZ/qeCOyYG3mEqpXatG5jMy9SFOfHO96Z7JSYPfCwtR4uFN6y
         DIKGxp4sT3UaItFsq2erO7IrlgTasEYnghgafrjjukgRwuETp8cJT5qmhrJoCzSF1VGN
         4rczJESyOPl+sPkKvjWI2qm6r7jgMtP7lfEwa+SEaa1i6XY7j8LUIm4evpojX8h71v7B
         pM2F3y4VvujR5841zIvz+sBVTuAV+g/f+3hmr15LskreDcbH4edNLKGQojhy5LZERnyJ
         yCNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zF0LLKv0QHB7Qzygo6NtEdKC0bfgVTDTv6V2Nrkps7HGQkUCS
	lyF72rdAQzhL0kuHoPri5Jg=
X-Google-Smtp-Source: ABdhPJz4D0ETqpKTs8OqAg2JpcLxsIgBWJIQTRuiFpumoIg6TqCEFY+tdFBNM2MuT/t1hf2GiOdLMA==
X-Received: by 2002:aca:aacd:: with SMTP id t196mr15920673oie.12.1627423974688;
        Tue, 27 Jul 2021 15:12:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1642:: with SMTP id h2ls60885otr.5.gmail; Tue, 27
 Jul 2021 15:12:54 -0700 (PDT)
X-Received: by 2002:a05:6830:12ca:: with SMTP id a10mr16328998otq.361.1627423974237;
        Tue, 27 Jul 2021 15:12:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627423974; cv=none;
        d=google.com; s=arc-20160816;
        b=uV8krGYcL4zrPtNwj1phb0vDFEjCV8I91oSqszZon84N2Vxw/d2p4YO2gbeEj7Vb7j
         llgksnfofAVdmuSL+2FHodd+jZALg7YmFn9LRsV1uzUZOssQXmXlMiKKPD46iHCmPg6I
         5TCOeuLQUb6jCAJJ1AUNkd5uU9msjaB8KgHZy3WspKvNxuqh6SGSMCyqaV++zMTXdJVK
         /nWYBz9tucOd3r77XPmd0rKg6TLBJQS793yQ40HMpzAPTTivulCltuKyQ1JuBvgCTQsX
         Osh7wBfaYo6Hc2j3tZnxmvDxOQeQe7ODZLWVgeZNZD4qSx180xym48FDB7/rCCvAgFbN
         tjRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=JVJAdh45i3X8vMGBgj4VpmrUIERCowoLrgFoHCGKxVQ=;
        b=MzZUPOWvcVSiMHdHdGNsrgMzD5Wy6J6TMEq8TkBCJZB0A+M2w6wpRagelBmBO2/v4l
         eewE+7PZSfS5rmXnYkw0uOsghbDKs74cespXLTMm/lsc/eCKq6cDTt5WGgRVIbnyl++J
         H35F20Uh/3l0yBQ6+BWbhK1yfZZdOE0ajTQGhuE3Moj4Rv74RlKNvltMak5HWsmrFBPu
         fFA65nyxmkwPooydlS/87TG/gzIPPv2LaLLyzVZ1XKqa9jPpK5HaAwHejnFqOP8qNooU
         L5hdp6I3SoT/JxIqOJHsVwjh68mYgJjjvlo6/dBu4x2PCVm1Rzn/AWAWi6R1Hw+w7CYw
         S18w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BPIAlNno;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id b9si439705ooq.1.2021.07.27.15.12.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 15:12:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-542-icN8tZeqNAOQmOsfq6LpWA-1; Tue, 27 Jul 2021 18:12:50 -0400
X-MC-Unique: icN8tZeqNAOQmOsfq6LpWA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3A216801A92
	for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 22:12:49 +0000 (UTC)
Received: from [172.31.6.17] (worker-009.nodes.prod.psi.rdu2.redhat.com [10.0.180.82])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5150F6A8F8;
	Tue, 27 Jul 2021 22:12:45 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 7d549995)
Date: Tue, 27 Jul 2021 22:12:45 -0000
Message-ID: <cki.DB178E32B1.R96O06278D@redhat.com>
X-Gitlab-Pipeline-ID: 343850551
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/343850551?=
X-DataWarehouse-Checkout-IID: 16752
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============4936840828519987093=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=BPIAlNno;
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

--===============4936840828519987093==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 7d549995d4e0 - Merge tag 'for-linus' of git://git.kernel.org/pub/scm/linux/kernel/git/rdma/rdma

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/27/343850551

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.DB178E32B1.R96O06278D%40redhat.com.

--===============4936840828519987093==
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
--===============4936840828519987093==--

