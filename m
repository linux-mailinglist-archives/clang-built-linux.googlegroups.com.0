Return-Path: <clang-built-linux+bncBDY57XFCRMIBB24N2OEAMGQESHSX6JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4BC3E9F1B
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 08:59:56 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id w23-20020a170902d71700b0012d8286e44bsf182789ply.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 23:59:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628751595; cv=pass;
        d=google.com; s=arc-20160816;
        b=dVPCLNvaIw/61qzhzcog3YThMSki5iYbp7ept234/OdqlYgwSoTCg5HUskFH0xyOA5
         fH07Xw+u1ArPT7SbZNsCwOkzbGgmm6AGI3y55H6tU4EYBR3dbD/kYCQ+xd10D21wGXMS
         4+32mgA/NULr0qMmCpASdoAl8/wkNBXXcl5rAh/jtYy4LHDNIj0l9kW8nEQSZDeOowbr
         YSRIO6rv1zx5QLqTuzjKLooJ1SrbBkHHx0HLjwUiJ0p8xTHXkSeO5C1m4YVqQ7vdS6dv
         8yfKRzpw56ut6OH3ODY32yhp2JpQVtOXuS4X8BaYQEtvk/NacNqxxghB4V0oXy6iKS29
         iHSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=+BdmR8X2OGeba/lG3X0M2ps/sPdySSKdVLyxZFjMj1o=;
        b=PPyxxGnDta0nBkuiRrojasDWu1YVas4+ThZCQ3hoWcOxZPMZSQ9EgmRdsCQHNvHn9V
         FWfCAhS2tKzsGfZ0kgI3hTBBgGOCFqrBnPWPatKoydJ5wY25EUlOlnD0ZpMnxPnvGz0r
         H2hKDChjrT20aSVMO5AdlTofhIWiSQWaDkIbeB4G/Afcge7kFcVA97nDCx5Vog6+NGdK
         fWyby4ETtEjiRw8wlFG079ARw/pDdyOoMVIUoflGXmJDuGlb0ZF1M7Moe9qgkZyXd6Ne
         DTTxu79xHsxeZq0Hs8hqOZVAEuUbVLslj7rB1XIqBN9NgeKlJLrrTOEx8zu4BycLahy0
         sfPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NH48j3mv;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+BdmR8X2OGeba/lG3X0M2ps/sPdySSKdVLyxZFjMj1o=;
        b=KLJVzRIcI4GUkQNq+ekWOfrDHtiDOqBik7qcz+Oo7kGbYZDCXpaAfm0EZsDLe4Ycrl
         DEEl4XifmQ5krVqKlTsQlMpb8Z92APAACka0yE7FjlWFgJsGzT7W57wz2D0Y0WtHDyl6
         hIEk/qYTU3QqhPje2UwLyev6uvqWRYBIgHltrj16ChMn1UZkBqJAseT6xqCTAs9JxJ5T
         77WQNTL7memCswnJ3g4VspYA2URxKlpFf7pKNHeK39OGWHYu7u0FmiaoE8TSN+0PSKW1
         IKMgIphAymafqGx4/KtHzk+cS+aSNAZxL+uBQB4CqGw56NNx24PqVtTgSjSRnkmR0h8+
         /Z4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+BdmR8X2OGeba/lG3X0M2ps/sPdySSKdVLyxZFjMj1o=;
        b=BsuEWwEeKeZbaohCKnev8/5DsTY4cFQ+hZlypati2FBoUPr2Y2O5EMRt/9ABOCFSOo
         /QEFLpF/CIXVesB/GhJf6QYYrAsNtRljluFz0LM0i177XXyBTrhR3kNkJKF2T3VrESiE
         du3g6ss/bB355LbM4+xW/2mSRJIYhD2ay4SeUL/vuYynxuGBC8Zpqp3XZTb7RHfP3afH
         M4Ik/c4KARZlApUlQ9EuBHtmlDAGoDGk5YgEd3aLIgGsB/1iPF4kVhHNeKTluW7NA9rd
         YLOKepfI+LBP95byUR5oiYWfZPs6+3i8h2/fWhrgkinPmRVBK4PvHGW2IV9D9dflOS23
         Kl7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pSxBPrPIkpJn9ob1iS0GrHscQ8GW//dWwmrFFOJRbnauGbBFM
	zYOnFmdUj90dui6zcspcnAc=
X-Google-Smtp-Source: ABdhPJxtXLBm7uS1WNj1kqDutzAv1jATBYZR3xuYI0NIo/9NIsnflgspYXFSobEdB8Fv9EN/f4o3Ag==
X-Received: by 2002:a05:6a00:15d0:b029:3ca:5e92:1d42 with SMTP id o16-20020a056a0015d0b02903ca5e921d42mr2715778pfu.55.1628751595220;
        Wed, 11 Aug 2021 23:59:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa8d:: with SMTP id d13ls2143773plr.4.gmail; Wed, 11
 Aug 2021 23:59:54 -0700 (PDT)
X-Received: by 2002:a17:90a:c7d5:: with SMTP id gf21mr8899804pjb.111.1628751594668;
        Wed, 11 Aug 2021 23:59:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628751594; cv=none;
        d=google.com; s=arc-20160816;
        b=tLt0dxkDsgZXv227tvnEpLEw6y4kzGNFfne0NzOS6c6vXJnKVyVBOH4tkCLDfc5lga
         hVH9y/92aIZHYtVKOIJdX0qZ1aPoAl2JSOXPH0ZoiFAWmtm8gWEOAeHaeO5PvqgfF3TG
         ZgEQyHOGo5lhkmtj46+OfBl3AwDT92+MMWUnYzAS8GnWJrg0yzfs4q7N42paWadVU59D
         OmgiAnK1p5Ymh6qgj1Sz9EafbmusGCRYDFXyWUAT4jnW7FUM52gsoQ7yY+I3j0Cj/hhj
         99vGQvZxzcS6ftdpqmCBz3L8I0LfODsWP6o9HVY62gYqzU2imDH4iMwInXz9+Lc3mLrn
         d75w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=0/rfopSh46LqT+emtTJ3tWWSUzM1ws1XnCxpPcZHfTI=;
        b=QP3DwRp8jkCvz31xBtumonuxtyqrZfMlYtxjAvuwdMBs3DqN1UHWpbRfNeRjIwy6bC
         5BcsAj9LUpdckZO1YDV0su0STBRXReJWTbL4tBmU0FcIJ7iGLjcUqEBwXzKNVC7OAYTz
         guRN1HK/rqXznTy46bzsLPsyHlFPDrqktdJwmUBoF4QTjcrMduLL8r46hKn9IVJqri6b
         gjnUbnJMFlVlSVbPtlJzzexbr7dFKs3brX9fqJ2FG1mVtLN0wLyI3ucbJKF4gjdL/5xu
         m8gwzOtIUo8AlKRAJchkNyF7JFVdnRs52zZ24McB9NOPbtEaooAdIx4dHby+SgLGVSD9
         NITg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NH48j3mv;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id q10si98830pgv.5.2021.08.11.23.59.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Aug 2021 23:59:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-559-Ge5TznK4Pkadygpxvj2zdA-1; Thu, 12 Aug 2021 02:59:50 -0400
X-MC-Unique: Ge5TznK4Pkadygpxvj2zdA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B50EA801A92
	for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 06:59:49 +0000 (UTC)
Received: from [172.64.11.61] (unknown [10.30.34.114])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 126A5781E8;
	Thu, 12 Aug 2021 06:59:45 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 1746f4db)
Date: Thu, 12 Aug 2021 06:59:45 -0000
Message-ID: <cki.199FBBAAF0.0JI117FRY9@redhat.com>
X-Gitlab-Pipeline-ID: 352001643
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/352001643?=
X-DataWarehouse-Checkout-IID: 17638
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============6998149704851664011=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=NH48j3mv;
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

--===============6998149704851664011==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 1746f4db5135 - Merge tag 'orphans-v5.14-rc6' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/12/352001643

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.199FBBAAF0.0JI117FRY9%40redhat.com.

--===============6998149704851664011==
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
--===============6998149704851664011==--

