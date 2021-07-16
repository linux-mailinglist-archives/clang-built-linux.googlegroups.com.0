Return-Path: <clang-built-linux+bncBDY57XFCRMIBBFWYYODQMGQEHXTYL4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4413CB0BA
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 04:16:56 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id 124-20020a6217820000b02902feebfd791esf5714587pfx.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 19:16:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626401814; cv=pass;
        d=google.com; s=arc-20160816;
        b=QFDdouxHxyMT+q2K8etPmpIFM1lhb5+WD2RI7VkmG1KBPS0tUSL5aTKy47j2QTtLYR
         m4NVSE099YY1LTc8zpqMIuWCOJrM+M8pqYTctD7lUWznq3FUAuWMJXZrx+upXsGDlGov
         HnNBdlk5GLlVx8/s+gkEM329EzuotTvptLYfDkcG8/lUIoBnqRHteWSZps1fsormRsY7
         TfdZ5xpgh0+n0mg6CrP5lo7UPForMOo0Fdu/sWO4Z7dL1q0sbPxENvAPPwA5dTrNf6Qh
         j8VepR6ggazqL/vBK+Fv+yRwC6YyS7X0VphX/wu5e5MAVy1MKP8FzqQ/Km75tFdsGvYf
         0BJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=wTzNyTbxnpJ2DYRYQNAJMcIddL43kAtCjrdHtundEww=;
        b=erzPebUhZLS+SvMet9JF1+1KQZNR5gpYEis6RtVGqXTVWEXZ5RZd6nVBSZ3ieyMCFA
         cU7HXWioJc4PLC3jGcuf/bzoBS57C/p6LA2H8rLY9ZSxjDYtO4vozvHkaBRdqYWMVYda
         OVf0RyDtzdCkq9bVhhx/rx6CMfJ3bPanC1tx9TlLT+/1DR3swnXODDqriCX3tEpdqImU
         KLUgJpR22yzTGf/CtiTAWWiOmWwsJ+xopsigUZuXF4ocMOMjveWD2eRai9u99Fy1l7ut
         BMTaQ0OkGO0PodIV7nce4b15u5f5kL2iq6uPOZIqd3lpmrW8hh+h2vR1Olp9Y0kV2aqT
         6bSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LgbRo9NH;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wTzNyTbxnpJ2DYRYQNAJMcIddL43kAtCjrdHtundEww=;
        b=chI+PEzn8L4EKwQyRwjECBtZMt53xGda3zlG60PJbRQ+KPjlb+tpSPxu4PDY9KOiO+
         sm3a1V8LT6y+Hlj3iyATpk0qGk9eIDJLdf4W4s6o/yPk6b/7E0S7XH9fblQFuxkLvee/
         CRpwUmkLvNEcr8xYYWkiz9wBt6BLPGrAfJ38bfyNOulYO83rG6qXQyAii8PXzk683ndt
         lDReYvYFEB5qDLGglRvcEUPRSB8ByrN4heyYdMm0NAod4OwJaMpCswaL91uKs1Retn2l
         ezaDmbPlWRLopzWaGbnLbkbkV5Zx4/dWa8z4sKgnFSt2uTogMRxNOik5Tlx3kNuIMNOM
         GCjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wTzNyTbxnpJ2DYRYQNAJMcIddL43kAtCjrdHtundEww=;
        b=i724RrnwzM690nINiHGE/YPlrLsz8thDLnl0qZZFYWu0t+Px9xSdYfbKoISUTWWDdJ
         IcHyv1Jq0xJz4QEdY3CYV1r0RN4ly559cugd05Nq9gqvsyFRooJhQmqqY/bZUome9+Nl
         oPz2iM2jbc0vB+YrQRkVHhnhtPmcUVDBB5SJ8HUaH1PLAgwPy8d73PWXKazHT/MIFbij
         tNl8kyuO1bmSqdssQpm1SA+c4EIe11pVWms56mnnVlZJgB7FQbVWN3XzBoBLNtn84hcD
         FzQ3HYv4HITDwV7QOgAAI/koI4Yi/aYtcCIuTG4qSktPIx9IdvPs1JLQDtjSbZkSH0bm
         Kv3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Gn5Y0acpW3pIj2ryn+nLn88fi0CHPILDxpXK6VolXXZ0strVS
	ys3gc2C2pcw2b7CVGfAfAX8=
X-Google-Smtp-Source: ABdhPJy8NaaaNmPvQhkHc1onyTDI/uFERwQ6F/ms1DdzQc1cvi+fJEUE2eSRzcpklrNgvMvqRHAupA==
X-Received: by 2002:a17:90a:454b:: with SMTP id r11mr7113546pjm.60.1626401814688;
        Thu, 15 Jul 2021 19:16:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c241:: with SMTP id d1ls4852882pjx.1.canary-gmail;
 Thu, 15 Jul 2021 19:16:54 -0700 (PDT)
X-Received: by 2002:a17:90a:fd93:: with SMTP id cx19mr13085292pjb.65.1626401813634;
        Thu, 15 Jul 2021 19:16:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626401813; cv=none;
        d=google.com; s=arc-20160816;
        b=Ik5RtjMecin2R0Z+SEzU40MasB3jWAjgBu78935F622gu3MVG9yuaVfyN7Wunr2QMM
         WTFfNg2/7hr0wA6km4ZpEYGw/vHx2wHh3osGTzKdSsHPoQGBjK1iREk3laH/4URqFG5J
         Jqd4goiAChLado0OVFBzyuurJJU17UGH5BVa7JmMjw19nBu/pNW/4pUe2N3ZHvKdRDJg
         3XE/P6x1nmwtvejqhpsXtC5/Nuz/WFS9cy0DdgVfWGY7sjA+LlYGUZM0XyIC7lwKQGyd
         jNd9Mgz1fslXf4CvVGFjYF+3MQEQTZ95y/x2tvu9KlAPEoI1cD2SVS/IVqRUWn9iDUJI
         zH3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=cSoq+ym8JKApPkhQ+l36FDpSTvQS9mACdBGqfW/Sm84=;
        b=u/YbMfNPAHi+hEdE5FZ9R+drAIpwBdxR/aGvbVFmSq1K2+1F8luEC2RF+3Q5Bq3gwQ
         I1/knGpKv5gEcjSGl2ue+49Otpfnl/ZhxFPThVmcHMSKaIcbprECeV5ng8/E9zh4om64
         ddMogZ9tjREbu7tSvcGCBr2DN9a8Qf1z42poExrgFUSb6Ye7xoWSl138VVPWyOaMMHMJ
         zIxI4kmZddAhGoTtkoFvT+JKUDS/EbWLVH1E6oIz1XO42qteqskedmeUuWlQMzzXNXa8
         Zf8lgFKvKa4sBPAQ9/czvsPw5tyLFEEbQvIm40CJljZvmZROym01zojDX+ZbEZzmhkD1
         18fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LgbRo9NH;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id b15si838542pfl.6.2021.07.15.19.16.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Jul 2021 19:16:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-4-E0hHQRZnP3CSAsd9ztpNyQ-1; Thu, 15 Jul 2021 22:16:49 -0400
X-MC-Unique: E0hHQRZnP3CSAsd9ztpNyQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D85D01005E53
	for <clang-built-linux@googlegroups.com>; Fri, 16 Jul 2021 02:16:48 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0F2C960C13;
	Fri, 16 Jul 2021 02:16:44 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, d936eb23)
Date: Fri, 16 Jul 2021 02:16:44 -0000
Message-ID: <cki.96A1D7E8B0.3HOI3T1UFE@redhat.com>
X-Gitlab-Pipeline-ID: 338025220
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/338025220?=
X-DataWarehouse-Checkout-IID: 16059
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============5680126731767878539=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=LgbRo9NH;
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

--===============5680126731767878539==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: d936eb238744 - Revert "Makefile: Enable -Wimplicit-fallthrough for Clang"

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/16/338025220

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.96A1D7E8B0.3HOI3T1UFE%40redhat.com.

--===============5680126731767878539==
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
--===============5680126731767878539==--

