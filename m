Return-Path: <clang-built-linux+bncBDY57XFCRMIBBWOH2KDQMGQESYIVUQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 332C93CCB34
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 23:57:46 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id a4-20020a25f5040000b029054df41d5ccesf22367929ybe.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 14:57:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626645465; cv=pass;
        d=google.com; s=arc-20160816;
        b=S2JLKfFh+bF0xVtBkF08lq9bmVBc3b4M3DlidByh9VYbU30vSBP1gvJug6sNAMqyww
         ss9MpRZh2UWVfbWo17f8bdV1ynN3uev666I62zblhg/WxoWNmTJ36/lnCxhpHUC+NuJP
         c+Qh3ex4xhfrYhzNbRruzyq/pApzmRfZZIb9KgnyBB7/5qrjg694s6NXJdEtYg1zLKl7
         L2TPxRKVenOjdlGfvwoPr2zuDh04r8yHSOOyTm9NhaTlzQOhyDN0mvAsVTwxH1BJAtP0
         VCaAeze2+ULtxeZSd+jCp4vXj9lf/afU9nJ+PPPSCePjwzKBeyForVTmifN/hoLLk91z
         f7kQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=kANGu0PDKfw8IMzDcaBbcqLVnl/Ow2SxdMHW5yOvv1w=;
        b=vRfTHH085cDmsyo4mgNrc53DxhqlqvGPG0hpJj1JAttcIQCCnZNyFLDJRwPFIicwAS
         gWmtmpwmHd9zOp6bMrIBlPs6XMtDE9+Y3GcxGPSc75kIxwye47IrFLV2RpI9he3Ev78j
         DRRhUkVv62HilbGOg8x0KjSjghdtVeC1FrCNt0lqu94XhlEYLoPVFSa+9oTOEsnJFI4h
         A5dcFUOwXVfd8tzM6W/Bsb36ks2WVq04JiofD+fROzCEQnDPSLzx0iT4V6ahnXcHwFU6
         kQu2WA1HWUEhpOzRIH7tLZTRkYyS9hdjWLTiXgy1wsbuCkbCNL896S+z/mLTSJiRQceF
         FYJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XqMBUxkU;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kANGu0PDKfw8IMzDcaBbcqLVnl/Ow2SxdMHW5yOvv1w=;
        b=AJYady07Uxb1oLnqU6yrRwSYG3PA/YvcpjWwHyimX9KpZS/z7tHxhBMo6PoRpIKUZp
         erGCgT1nbzduQ7zErEtSYPROnj4rGW3jpWx7u52AagqVoo856Cy0MEcGkfphBettQOer
         oFjZ4oEwwGJHZT2rLV9Ft9mFkk971INJXpgV1K4GFyf4X5EOgnaAJxqwhbSZ5wEXKdjp
         LijG9uIvSCmIw80rvlRXbaYH9nY033elI1mY/loBH/vpeL13q2r/77LBOON7cWvrS/PE
         zzJQ4QKPaQlLlQCml5fWYoyP22TswhFST4GVCvD0btNLnwjIKMIqou50HvxqpcCVzNs/
         ygaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kANGu0PDKfw8IMzDcaBbcqLVnl/Ow2SxdMHW5yOvv1w=;
        b=CM16h2rTx5d3Y7+A5JKWJNKC0/ngas6QJw7YmzhulWziGhbJy+GN4Jg2Qn5e51ef/Y
         bw9bQ+Scvf3hX5D+8Vdv7K2umzY9Gb8LO1HDrCLivl+IWURfKZ0wN3/3fnAW6HIOASFG
         FDUzlO98s1PSFP4ucJdn2CNlhwW6LnOz+lpBBEy4/lOpzL0K3/fo+en71YbFSnoPtDmY
         rs8nTAzXlr/cOaRQg3/WxYeAM4RN009tsLMjodXnYmi25zNK2XYZJIvzEee/eGyAZNpR
         0LCoRlJEd6GOMEoYcZJxXGgmSxq1+cFIAePTf8kDn7fFIf8W54HQ83xPlKlBqKiTYoM/
         a0sQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gTWPT1rZRo2QcGB9kK1j1ZhHPGDXJ1+kb+thSWGH6kQ8zMYPw
	5EaMug6W6pDnKmA3HTf81yM=
X-Google-Smtp-Source: ABdhPJxFovuhDvwKVgwHMi+biSx75JVO4qb8lZ4haEGm9Po4nHp5te3KoQHi949//e9e00VNalHF3w==
X-Received: by 2002:a25:ac90:: with SMTP id x16mr26666496ybi.316.1626645465283;
        Sun, 18 Jul 2021 14:57:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d650:: with SMTP id n77ls2449371ybg.5.gmail; Sun, 18 Jul
 2021 14:57:44 -0700 (PDT)
X-Received: by 2002:a5b:9c9:: with SMTP id y9mr24250965ybq.460.1626645464777;
        Sun, 18 Jul 2021 14:57:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626645464; cv=none;
        d=google.com; s=arc-20160816;
        b=Pm/TsZeem2OjbP8LSAavW0LIkqd3fKAN2W0JE18jD2dv6Uj72A6FyVAKwgmwN7GlMm
         02lYZHLNgK7fax8htUtxy90H8xqTv3J53UKAm03lBVJVLM3u4D9C1WXgdxzovL2iXSln
         ZXZ+KO2ChnKDjJ/uwpuPcvDPfBn1OUXEfNRewF22Fs0B8B9uPOMPB6N8jqF3iiPasVTD
         ygjwKkYaM4w/ULOxCJjFzVCMxR+JQ9wBxVLjZyiDfhzmx5dmq5Vc2PmjrpRte//P41MR
         wMWKxUT8GjpM7duxV4h8c47eCQBt//ntZHFtcfRJd7GLyRwaxWOOStzCKaYESZWBDgjk
         DWbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=pRRNcOL5ARYllHVVVqR03NtWLSmqj9LWRwwESzwSwm8=;
        b=bgT4aXaon934jRE+gCmi2kikOb+0YlOJ17SD981xejOIsDAlqmYXOQHq5EoGaY8l3T
         w7/XOgmqbtjXsxuFOnf0h6kXShrHPbu8457kUn3h29MTWfHHHiDPqfGWyj0NM/RplT9U
         Rs/dm98b+1nX8l/y+1iXdVt3o/L91wdnk8CjELu72Fk6Yv70yMmjJPPUJv/6hA3KuCch
         G3fGBNWf3gINirGJ5bjRW3mQByVjU70t+woYyLgNa0ouS67G46RNp1DC/7c5gzwB+6rG
         OxqjG6DJh0LWuh5HroZ3WYMtVDL4MXBpRDDpqjBYiKRe0WAULW56l5tFauGLE1bdpigw
         YMwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XqMBUxkU;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id r3si2173195ybc.1.2021.07.18.14.57.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Jul 2021 14:57:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-272-t_1Skx3gPymwbIfPKdB6Sg-1; Sun, 18 Jul 2021 17:57:41 -0400
X-MC-Unique: t_1Skx3gPymwbIfPKdB6Sg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 69D8C800050
	for <clang-built-linux@googlegroups.com>; Sun, 18 Jul 2021 21:57:40 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BDB5F60C82;
	Sun, 18 Jul 2021 21:57:36 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 2734d6c1)
Date: Sun, 18 Jul 2021 21:57:36 -0000
Message-ID: <cki.41D3814871.S4ILAK9BH2@redhat.com>
X-Gitlab-Pipeline-ID: 338989261
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/338989261?=
X-DataWarehouse-Checkout-IID: 16171
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============2059271167812343377=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=XqMBUxkU;
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

--===============2059271167812343377==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 2734d6c1b1a0 - Linux 5.14-rc2

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/18/338989261

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.41D3814871.S4ILAK9BH2%40redhat.com.

--===============2059271167812343377==
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
--===============2059271167812343377==--

