Return-Path: <clang-built-linux+bncBDY57XFCRMIBB7NB4KDQMGQEVXEWDKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9DD3D1905
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 23:26:23 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id v4-20020a17090a4ec4b02901731757d1a2sf2532157pjl.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 14:26:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626902782; cv=pass;
        d=google.com; s=arc-20160816;
        b=W4Q8RwtREogmQu9TQRNympQEv0tTEVptUeuCWuRuH4ZEfz/fwyCf0mM8WzEdpRks+q
         eUAPU2BzfXnYfH/Q9rTOME68Ke+Ja6VGbksDZKRLM3Z2i3RjISx9c8B5HMDVLRfTA6B3
         /Gyh7RNrXhUrKwEeyK7oYv2EJANSdRlsI7L9/aOqZyEdPBtU5+vjU+IwUHf/8O/Uu4pi
         BdGQqtmdu/VnqJGqSL1enWgWlG/b7Tv6q1jP6dA5+unteOvZ7Mev1wCGKcZtMnxqwy8W
         ne2niT6njTNaoJbmzRFYSpzUU/ulDs58WwOSan3I222RNhUY8IgMxv62wWjguI8o/NOm
         lARA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=4ei0nj9nYdJhYFJoaZWFzuugSpjjKh/9GtD0Orj7WCM=;
        b=KbZYHm8vYU+dbsdq4FYv7oqUjY16FT3I1dKl8+uiVmWl/yvDy37mqImDG6FEWGBXGR
         byJV8PJQduRcermdO039mhTgdDQjtsEC6aCmWjgCY/Hy2Hv0MvZVepCAzgBxXr+2rMWm
         gA0y4p/U8HR9PTazjn5HiA2rS69l37j3HQT3OW2IokXLknPecElJseJGEDXg14FxHY3u
         686W83i+LYaa46d5X1BxyvnbPTfSy4WY2OW3IEfNyONIxeKl0OObME6Pa0TrhGrgO8ho
         cnQV+z4BnJQLMcDAdHImGuNWYmn4bQQj7TTDpWjJ+Y9aaPsKo4lo8iUZdwxiGVFdKH1E
         AJhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Uy2Q35vG;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4ei0nj9nYdJhYFJoaZWFzuugSpjjKh/9GtD0Orj7WCM=;
        b=Z1Ghy5D8mPWwfM8q5h5D0V6nVbYYxPtZd9YgZuMArgf3ytjbIhtyVSGSzVQyImetgv
         PO+qTJVU6tSYuE0V/Ew8vL4FBZXGHPfqF0RPoh4D1w1sqPGSXtRLRfwCkKCZOfKtY59q
         cMf//BuODkqniYsRGVSps6rgT8t/lGgmd3vW9EU7nlgOgkIS2we41fjRClQhxOq4Nutl
         kc3KNLJ3Go4MjLHn2RbO55zmK+uglFCCN48HlSWQZpV39IMzQ9AQIbmbh2kx/rWDYMqw
         qR8E+rc/vSvTXUQVGjFz4++hVSeJP6AzFYjm1T0+Nqq2imHnZDqpdI0ailCEq6CPmwOS
         zw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4ei0nj9nYdJhYFJoaZWFzuugSpjjKh/9GtD0Orj7WCM=;
        b=QSDt0UwKXRorXAwL/hL81YuZ7h5FtrhI4XYueW8+fanfVDK6WMsLJPmCEOyv/N9eLm
         bvA5Ie2IthnME2ONfPsdNALeeOfSP0CwDkqwn9C1lqdWINWoFq0BB0AKOgUC3XKqVpK/
         LBdB/GxybJuWR9C15SJAH6S+VOoe/u8tyokkX2oSLLUjWhB++GXPcs8N8hblfZuoBL6v
         agn6/RK7lkdH4tvL4DHl7tUPQ9MXggt7B8KHxiuWEg1ZtQNMU/buX/gI5QuOAFM6n8gm
         dZ/Nk9hQnuAys5xfwcwp0dt047FgPS+G6/1CGifU37ZaBEc4C4H0ZBEk2NqkjkYe4CJO
         1OSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330/6tkuddw9iGdWawHhJHpCJcUpP4au18T7koLFXS/0DK0kMCV
	qaklLeUM2p2KaGSx1TNspTU=
X-Google-Smtp-Source: ABdhPJxe4SBvNxy6n0KCDxGPRk3f7Yv72Ig4l6jQfoQJOlNxe/rwF+UANuJK7CHuPFiXQ/17H3r9xw==
X-Received: by 2002:a17:90a:fb96:: with SMTP id cp22mr5763850pjb.154.1626902781730;
        Wed, 21 Jul 2021 14:26:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5348:: with SMTP id w8ls1893771pgr.10.gmail; Wed, 21 Jul
 2021 14:26:21 -0700 (PDT)
X-Received: by 2002:a63:e0c:: with SMTP id d12mr36405165pgl.386.1626902781120;
        Wed, 21 Jul 2021 14:26:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626902781; cv=none;
        d=google.com; s=arc-20160816;
        b=OK9bjXMTXYKU2I61lZNAb1aKAbW/0UVRwXM95MOeWcQL/t8WMq6FXToI4lvR0JiUIU
         TaW2JVbPmS0wa7P3rqZ7n02F0NmNPd4AYYhHx598hGLPOOxfDGnvlN5VNomTZ7T/Q1J3
         7y0SxhN/1sjs3zSJeBqo9AQwj3aeyHhGgZ/5ILX3FQXbn6XXux46nNx9NU8S3LIY0eyr
         cxY7bpsAKIuYvTWkeAVClVZ4Sn5n2sfO030IFzvNUjpF+WH/7OanN2LdCsSaBMu6cQqS
         eogUyR2IML9i/h59ZIhXEZDHMqGKEeQgHSXQftiEdjKxJqCIyqwMYcVzI0J1+pN60Pjg
         x7tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=ET7TqaeIJmq3/pT/ypcPTC41e8K1j1wUp2rMUhl4mSo=;
        b=UaxrlmD65TmdFvjAK4aAE1TtS44KhWhEXFVCYRT7eFK3jSePzNzdu5U3S4k1ls2ScR
         LFBy8v+52VEt2o+mVxoqhuzSv8ELMKYTf4ZV3Q1fk/JSpWC9HuUgBJIr0ErjA7krSifH
         TvPqQdmNbnPurEECxKh0fSL7vBTbZ1RSL5eKjpC52s/Fsg5M/121s562LBtDD4pjmiV5
         hTCityw72Y0f4Pe85p7U12PD9e+iS69ciHEpI3/jdFKmQb+th+Rv9hEYdIyQfhPYwbJJ
         qYIRyOh1mBgcF23odacWeWj+VpYF7GMiiqReTYhGeFcmRZVv6va/S1UWuraNU/2uj4uK
         MjiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Uy2Q35vG;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id a6si1907790pls.4.2021.07.21.14.26.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Jul 2021 14:26:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-271-DieSs7AANrO-PQs8NHIQJA-1; Wed, 21 Jul 2021 17:26:17 -0400
X-MC-Unique: DieSs7AANrO-PQs8NHIQJA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 83499185302C
	for <clang-built-linux@googlegroups.com>; Wed, 21 Jul 2021 21:26:16 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0BDC660C5F;
	Wed, 21 Jul 2021 21:26:12 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 3d5895cd)
Date: Wed, 21 Jul 2021 21:26:12 -0000
Message-ID: <cki.770559A66C.EAFBKMWDTD@redhat.com>
X-Gitlab-Pipeline-ID: 340873570
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/340873570?=
X-DataWarehouse-Checkout-IID: 16400
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============4919627362611109668=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Uy2Q35vG;
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

--===============4919627362611109668==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 3d5895cd3517 - Merge tag 's390-5.14-3' of git://git.kernel.org/pub/scm/linux/kernel/git/s390/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/21/340873570

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.770559A66C.EAFBKMWDTD%40redhat.com.

--===============4919627362611109668==
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
--===============4919627362611109668==--

