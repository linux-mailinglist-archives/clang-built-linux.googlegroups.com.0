Return-Path: <clang-built-linux+bncBDY57XFCRMIBBPEDTWEAMGQETIBKFKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 802453DCE6B
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 02:52:14 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id o13-20020a17090a9f8db0290176ab79fd33sf17257797pjp.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 01 Aug 2021 17:52:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627865533; cv=pass;
        d=google.com; s=arc-20160816;
        b=znCCUbFhYaa/xQb2HGh0vYPip4Qx34Yhnh+vVpqThBc/g2prpRu4HRU7mo7jnweg/6
         O7P/ltIX7pHNIiEN3h6lCmXDKdBJp0lLk1YXUGQp9WBTky5bG1Nh26aQfXH9+PG3vB4t
         uaLEVrK+M6pV/BbJZjipjBhuRwuX9gVizX2OcIRYC0a61sqxVoesfbULF+T/3yzXkzJb
         buPcgVEZjw40xSm9x206QEbKTJT+9nQfrCZAc1hiPOFAgpYgreZfNufJRITCUaQdsO2o
         dc9IjPdT7TKGJOu0vZnOePXYg9jhBfMVdAqwrdopWZH8zCGRw01Y/OpZrXmhRuBF3Jhq
         6Y2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=kHxqgYFF8fwFjc5fuRKMStHQkRoikgSNZdMRy/oNyE4=;
        b=dF0QnI1JPp+/18qZkFmPuDSgEjM3bgIbtt0MLIOUZDVzrVSaVnA6sGoTEglQAM3KyA
         VTZM6FNbg4bQiEe7DqOgmk0e1cPJ+I8bbU14r3Pe3GFMHXORspCqXN/w140a3v5pR4Zg
         lJXdkrCAw27wCSY+awxobQpXFu+B9pWhEjfTU3OAD16uhxDOV1vvFhHExSPHddvX4a1f
         x83oCgvqexTiZlWv7QESXdR+e29YLkRyOV5Gqwi+UwFSCCx21U2SYQE1z7uigiSiuCOD
         tmvY/7iy6vFIBpbaJ6rUEA0PCOiz6Ryn9jP7ZG0ja3Q33uefDy6A61jqx/ScXMLptQtM
         BnmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ayd1tKn+;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kHxqgYFF8fwFjc5fuRKMStHQkRoikgSNZdMRy/oNyE4=;
        b=PlKVzu/dr58591uaA8BGxKmqF2aMZ+/XYTN3YvO1kJN+kEYSTZPEaPGRr6IPK4UqAn
         Cn+znXSibttYEfSoiiNpNXqgTW8J0uyNawDVJHoo0p1ViOEYbnrXTSZ+4tKTE17+K3/e
         WNiFk8LT9ysaFgE7QsOM69lmSXwopsGdGnquWmh9mgxKBTqBstKraSFW0VILjCGKJToJ
         R+3rspTC7DmovioLXvav6DBY8X4KvsScQrfgl6L2mJNjL1ADy9v8wtW/CkPdbxw2sgWL
         izRaCXs/5ADHHk+dUMIft8Ddw73rE39YT+SiWKyPS/djoN4q7Ai7CrKq+4RMK5xysSBn
         F8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kHxqgYFF8fwFjc5fuRKMStHQkRoikgSNZdMRy/oNyE4=;
        b=qCj89x0HB6ZR5oWnx+BVIAYQLonw5lW9zEg2b0/Ho7velwJfldjv21QJ3F3DdGBTks
         QmDgKc3eG9iqxIzkhvzGLO5oxtmxf3+gosC6z9/vR3LV7gHBls+8lCJT4NocVHarGh6U
         p0PB9CAtjR3uKUeczVhTP541NomVGWeeBz4S5YA1HQsIgKlvL7770urSGiExuQXrhoTs
         S8WHvhcMxhEDz/i4u4l40vVeWfi7AkkBgQ8Gg3lHem4ZkpUBvs/WNRNG2hO8XCZ/LNSt
         3zagevr2pThaRUrOJI9K5X0FgYJzkLtl5pjCiSRGNIO1edS1ufEsymt7+teJfFYmG9uQ
         zCZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EV75Dbr+mFPJn5HmvuML87//duPGezJtsXVxTpS1UQGc0WcL8
	c9b1Pe0aBWNOFuQGPu2Kk/k=
X-Google-Smtp-Source: ABdhPJwpsPwx2jXHW4EREal6hhSUIejXuL1ZHKnNGGvo/3rffbWATktjOfBMzZmrEGUqI1LK5nx87w==
X-Received: by 2002:a17:902:8493:b029:12c:552f:1fb1 with SMTP id c19-20020a1709028493b029012c552f1fb1mr12265722plo.26.1627865532863;
        Sun, 01 Aug 2021 17:52:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:848e:: with SMTP id c14ls1676486plo.1.gmail; Sun, 01
 Aug 2021 17:52:12 -0700 (PDT)
X-Received: by 2002:a17:90a:990f:: with SMTP id b15mr14504252pjp.188.1627865532272;
        Sun, 01 Aug 2021 17:52:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627865532; cv=none;
        d=google.com; s=arc-20160816;
        b=TrvawHJto3hgYXMUdtHRpCEoCSYhO4LIqmUGEa+5SuK7K09n57QrxBAECjm8MvdDUh
         Jfl0pYRh8l6s6cCOiq8vA9FXkkVUx/Fj4okGjvotB9CmEwi1JjMkp7XjCPvWB2Ew3XCe
         FZHavzzi/s72O5PCkMj6Hx6oVOmVZIAVDeGJGiLC8vupk6PwFrHMA9ogzXPZ6Vdg8WHL
         R+afWcGSSVxt+rL5DrNyEfMo0szRN59NbwRNe1rPGQT/HkfXBJUbTbvsLS8RSrl0vVya
         IS0V44FSAj17tea8l8Rpfwh0A2GYE2qGzjdR6G59NRnhI5IKncbe6rw0UiETMmiv+P47
         e/lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=+9ecQhwCLvRxH07S5Sn/MiYxlKEXAbaJIeXv9OAsrhY=;
        b=ws/xGzzkjYwoHGhO4eRjDKTTngQTzVh1o6P68lLzaIKgQHT2pmlmv96u2osx1E1i5D
         56sR7CnWtHoe64ydTuKlyu9xBruSVgH5xfNUKIBD99UzORCDzyDEzMDFzr4xQmvQPoNj
         lQdC215x7h4sMwk/FX6V+pbjsKMowbHBZLLVAFy3S+v/iaa0+347pzYWICkByRN7Iyu1
         dzpYUFOXKUChhqvBfnGaMW8Q7v3Cl9Wj8YisP+sbq94/AV/mcVOgAPcQMIOGZ1Yul+aP
         u195SRANLqpslnwv9421K/MoTrVqY6CsRBTmImj4yCQzl0oERP5onnY/+WGABAMPqrLx
         ZhKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ayd1tKn+;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id e1si493309pgk.0.2021.08.01.17.52.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Aug 2021 17:52:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-77-NfZEXzQKMcugMes2bfLd_w-1; Sun, 01 Aug 2021 20:52:08 -0400
X-MC-Unique: NfZEXzQKMcugMes2bfLd_w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B5339801A92
	for <clang-built-linux@googlegroups.com>; Mon,  2 Aug 2021 00:52:07 +0000 (UTC)
Received: from [172.64.3.44] (unknown [10.30.32.237])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CBB282854D;
	Mon,  2 Aug 2021 00:52:03 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, c500bee1)
Date: Mon, 02 Aug 2021 00:52:02 -0000
Message-ID: <cki.8CFFCC8EF5.SKIL92NPUB@redhat.com>
X-Gitlab-Pipeline-ID: 346243094
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/346243094?=
X-DataWarehouse-Checkout-IID: 17040
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============8601349458301528789=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ayd1tKn+;
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

--===============8601349458301528789==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: c500bee1c5b2 - Linux 5.14-rc4

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/02/346243094

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.8CFFCC8EF5.SKIL92NPUB%40redhat.com.

--===============8601349458301528789==
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
--===============8601349458301528789==--

