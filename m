Return-Path: <clang-built-linux+bncBDY57XFCRMIBBQPE5CDQMGQE3BNGDQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9DD3D3218
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 05:06:42 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id g21-20020ab05fd50000b02902a6182fc181sf10236uaj.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Jul 2021 20:06:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627009601; cv=pass;
        d=google.com; s=arc-20160816;
        b=zr5bp7p+bKXM7/85qpv3uh4rnEBPhJKLf3qXeYhbf7gtRlr/RL/fJX0eoX++ZnjEVy
         8xLQO3xmTEeMAibKfA4y4Gk7uuVrvNh+Uyy2CpSTH2uawVoHQh+NvD0+NHdBOYMq8UwJ
         PycU0hH6eRZYkrhWtq1qQZP7ggWmiHuPFssQvwwIYjWKTUJ8L2/w4Yy/98pn9XTOeJtm
         86h7I2grHnBB45Delqnr7NAshzCv4fPhXFvIye13cTKOT0eQdKn/wWB8KmTb+31ahlsg
         +tRBA5PNCXCbPPSgeDwbtz87BfG62n1DaZdljsssBlW4Nvi/+31U4XrMiYBtn5VcHQqW
         8HOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=2JU2EAMafc4jNDbmbUCr+gWlVzGeRP1mlRh9rfRNlis=;
        b=LrRbjWSTBQ0eXJF7YaxQyL8o3gwA53jABnPn2Vd55nBzPNfsaDHoO4CFPJHhonOCBa
         MQO8Gb41CDZQHNZL35Krsb4x8TxcleUP/IDqPorMBmntqfskPh7cZoo1M+plJBlargBj
         str7AoIyhTNUOWxXoDkKFpKFoDfpAtgYYuUWGXypuf6jFKfiXyWf5ziQrAUpvrxC1uiy
         HmULc2o411DwXs/9oFlpRyycSP2Eizd0gxEhJp7ABnpx35zdLOlYXXpKyOvEYgQNq3V1
         dF+UH7QDe60dceHC0nGAKffZEg2fokbcNKzzSIbWC3r+o4Zdjy5lgJtS2r3gIibKCbzu
         obnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JCdWua3b;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2JU2EAMafc4jNDbmbUCr+gWlVzGeRP1mlRh9rfRNlis=;
        b=diRjinDgsDXB/k1/TX+EWQMWgPsgk1gZxYIHCauqsg+YNTWYFiPCKSVuoIUljXmYDA
         bmy0gZT/QLOkGJkjYfijBlwjlS9T1Aw+GqBUc47T9Hs4t7UO+Qtwv9bT0RAmbedzTk6S
         HpYAl+f0iFFmbKt0I7HH8Nr3M+b3HDPgdeXTTRjLQL9mgPn0yKwrQtyhxyrvsgx0SEOC
         nqATyZm4LGqvVkcv88gQpBESTOkn9RJ4KxZmOUUoDhcZYA2Td8RXRSJj8yG1HGpHMRIP
         wGfiB8F1so6jlFbPqLZfTezhpmo4RevefBZYzbjRSXBeqCMJzZroSEQuvA5swH4R4O46
         9pXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2JU2EAMafc4jNDbmbUCr+gWlVzGeRP1mlRh9rfRNlis=;
        b=T9fzsi5ArNcFnIphAgB7Q6PwRZzUzNTD61MHC8MJQeJBXswN/PcDkiYOk5UThgsOAN
         w+p8lFIRevua3a/kJwUU+r2APDkTBE4sjSQEOZC6LTFiUIH9UZ1jGehHrzuKHfPLe3Y1
         lpd6taVNKM0PlFbFHK3/xHYYo1QZoZzYzoadIepsh6lhhcAMAiZ/G4/vC2F1E7DmelRU
         Eg/EIync5qDf0Tr7+xRXJ/QEfU03bQDbBoYlcJZLdwM82ug+Me//sn56ogw21Bl2usYp
         /Xk4evfsG8cpsrkxeBwI/EKpuQfvyA5Q2TJrk39Jjkj6/D+4G3kCo5/OhC372Hs1H2di
         P5tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530G9nZGyfW7PmAjUSG5tgYKj1D2sZXsCVdlKGYI6xiPj4ki5oLs
	r56mS0OQIdB+gWazhNn5dvI=
X-Google-Smtp-Source: ABdhPJwqbSN5wb4b8UdyhkPY3m2PFnsIuHzJ7yx2t4gFohMFKJuBcS4QQOL3G9h3Gwev1Vpo9rrALQ==
X-Received: by 2002:a05:6102:ecb:: with SMTP id m11mr2578846vst.34.1627009601525;
        Thu, 22 Jul 2021 20:06:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2429:: with SMTP id l9ls1829783vsi.10.gmail; Thu,
 22 Jul 2021 20:06:41 -0700 (PDT)
X-Received: by 2002:a05:6102:1042:: with SMTP id h2mr2627759vsq.22.1627009600975;
        Thu, 22 Jul 2021 20:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627009600; cv=none;
        d=google.com; s=arc-20160816;
        b=vIHgQmly/eKAZh5E4QfeH0oh3MwislQxpvedcLf/8Ir4ZtwmmpgNRLgAX2BM44aPsD
         Y6NrXeO6TetwmdiVTCHveChkU/+NUXBGBNoXmlqgsHMmbCxvZAAy0+29U7lKXTLx1GMI
         AeuHNAEZQB9CQ8nROTQbl8oPBfVzq+gKITIrdF5JlAqbGuEIH2Xf6ak/0dMKsh4cA9EU
         p/4nTa6JTNu8OCpg2l8DwSHDhmRxlYltmz9n51YwSsdcWiV9Q4a7fW8KH3TuBKaS7OGo
         kuB8caA5h1EnwZo4WCtyhq6auacXdZhLhozpXSA6bBNAgbXwFOyVxP+GwWM5n51sD7kx
         fRUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=ro63GK4AW857JpiQXhI+59I24CAnhumJWHvJotW7MaE=;
        b=tEmwsD265856BWPRpWZbo1w5xpqGMkiGp9TTywoCSduuCL8dGjvmYeCirpiVqbOOnb
         vUZ/4fYpcZHrq1pCc7h2jtUGvWRj3lIY9c/sTNtzOxmG0rIRBALPW4Xl9zFt6XUtAaTA
         Wb5UiwQ8TbhYVm5uznOX3VS5UwnWAmGrZWctKJRUj+f7zXpv+ly37Y4rQEsSt52zTs6/
         yZ0A94BqHajv3gL4E8Rku8GS/XpRcNvIwiSXxfNTiDEQOeMadNKk78r6HCuoF32+vz1q
         RXn4pf5bhM7fi9tap4uTzEF910Va4MSrIaotSB9WRFUk88JOVvnQB7WJvhOseEJ0Sr+1
         0Tlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JCdWua3b;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id i21si3516328vko.5.2021.07.22.20.06.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Jul 2021 20:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-137-tpdh64UWPvaU5QKG-JLXWg-1; Thu, 22 Jul 2021 23:06:37 -0400
X-MC-Unique: tpdh64UWPvaU5QKG-JLXWg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 649E2801A92
	for <clang-built-linux@googlegroups.com>; Fri, 23 Jul 2021 03:06:36 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8C01860583;
	Fri, 23 Jul 2021 03:06:32 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, e08100fe)
Date: Fri, 23 Jul 2021 03:06:32 -0000
Message-ID: <cki.4860814E0B.OFIY5S0IVB@redhat.com>
X-Gitlab-Pipeline-ID: 341614836
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/341614836?=
X-DataWarehouse-Checkout-IID: 16499
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============2337963443055732528=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=JCdWua3b;
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

--===============2337963443055732528==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: e08100fe957e - Merge tag 'fallthrough-fixes-clang-5.14-rc3' of git://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/23/341614836

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.4860814E0B.OFIY5S0IVB%40redhat.com.

--===============2337963443055732528==
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
--===============2337963443055732528==--

