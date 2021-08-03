Return-Path: <clang-built-linux+bncBDY57XFCRMIBBHPYUWEAMGQEUM4J2FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EC23DF3E7
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 19:25:50 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id c7-20020a928e070000b0290222cccb8651sf88295ild.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 10:25:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628011549; cv=pass;
        d=google.com; s=arc-20160816;
        b=hlgmUVhGs3Vl16lBoGIATRaeWFNm1Ocl01oXLmkQpQKMI5mDAB6UWUMlEo7QKWbKpH
         TmNUCsWDcLM18qX2dWFjHUgFrVUjDptapaoPx7MpKmP7Vvt29ayHsTxMFhmKX8NkLdc+
         zcLEAz2i+sLOFxT/jkfI8e7jSoWA8Gwu3+W3PBrCEglpHhKhHluZS+oMAycGO00sV+PM
         g4C5KShqucPxdwPVVE7Lks2d5t4UrKLYnvPi5XnyTHtVnNXHQnXU/T5Or6EGhduKNvFS
         B8e64UbTWo2Fg7JM91iC+qa1ltqJYS7CoGEyXVeNql1SwPqr0B7+r4bKzDvwfmsKXy2g
         P3VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=E/hjvKAbE8cgs9uJ21ZSIVmTKMNG3B5mVg6v78TxEl4=;
        b=bGdl+gAP5EQOc0ffPKLmO5pQRYTAcwwq4spIejFlCdiLHdj/5MWbLNaqmOd5pRbJFN
         ZUy9AnevnSbHQAL2OHoplqJlzOu9RvKA5p+8ND3ioHZy2IP2+qH6o/6/pVOMyaQS0Roi
         mlgZaLA3uQrB8GLFdElmCrQ2rlQ42/DXoYJ6lzjRTLbjoIMIzUs2FXHNMyr5x2mwQH2e
         xR2QWPLa9Ya9B12Pm3M0WDM154ZRDhFGxwKGIQno/5KTzIEHQumDGl71OXYKg3FWqDZ4
         wA8hIYv/MWjmvsWiVQ3GsmlFvXkP+yVRxqUQm+QVJyBmmeDJ/TuEi1rFTHmoVwyWXFLE
         rt0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bRitqpn3;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E/hjvKAbE8cgs9uJ21ZSIVmTKMNG3B5mVg6v78TxEl4=;
        b=B5GvNLQ/K3DlKeOyWP7L4dzxOvuffiNQ/PLvtwAhJ6AR+S+fUSFWhwUMd7eIbgHBKs
         pPw+nMSDaC4N0emzmfziKkgB/AVHOVA4CGQkoOqvckd4JG0DoQN/wK3kZWJb+ZlgAsm3
         vSH8X0ocukdGDMci9J71Ii+llbT84LgoJUjpSXpVxemprMsg2GPDgdhvfNYJPc9rCCm/
         zTCde7SyoSeZZIt0Tf3s4BbTu6CyKcYqS1kXCNAtBwA1I3Xz/T1JJXQoM8ycj1Wu9UZD
         A/WsXtc4nSw67kzS++8k0QL5fqcNGSLc0kxN/eobszpDuvTwxlJfdg+nxlkvgrO+G+Zn
         ksoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E/hjvKAbE8cgs9uJ21ZSIVmTKMNG3B5mVg6v78TxEl4=;
        b=nUsiZHDd7caVDOZ2iE53qCPizCbYX1ZbfZQRI0PdIbhWxaO7z6W/foh95M4KV1tmm2
         d76QvoIuBKnAMvTkvyIiPKW/ISd5gFvYV58swPd+67BzDYXlkrywDOOtJFTK3NfG92Au
         GsNYI7kv6/eTTcUdiQ0lNOYU1DQV3TDVV8rhNdQXHwtauj/PD1+PqgvnnGxHgNsudPFS
         C5pQddFVSVY1fUjuPMUZEbu/bR3pwXBK58TdX9ym85Vl3C5PB0sfKv7Gv8l8CAivkhW6
         +4ZALiuqlUaKun2nweHgD56y0DMZJ6ixzTPXov25GIEP83PHRLwFjxhEJAHPtJog/mnd
         QZhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/OMEv0uibwrMZc+OM0/+sHRt+chXM211E2hrk2WzB8HNLrHbG
	WOiMUIY3S0zUPoFyUNIb8uM=
X-Google-Smtp-Source: ABdhPJzfKZcJapfCwitvDhXAgTY8zz8APqx13fk5Atxb8oOokCnyEFpI1e+9B4JAKxyXvjq/gES3Wg==
X-Received: by 2002:a05:6602:59d:: with SMTP id v29mr1263876iox.132.1628011549663;
        Tue, 03 Aug 2021 10:25:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1c83:: with SMTP id w3ls2882230ill.9.gmail; Tue, 03
 Aug 2021 10:25:49 -0700 (PDT)
X-Received: by 2002:a05:6e02:1905:: with SMTP id w5mr43264ilu.270.1628011549154;
        Tue, 03 Aug 2021 10:25:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628011549; cv=none;
        d=google.com; s=arc-20160816;
        b=jntt569QadL5brXi8hEcEKYiEU2l/86kraLZWb4Z5eEHxOCd5s4H3opLGmH6DtWTGA
         5gTFvNWyCUPMym+pk+Ob2r6NGfPVOum6dkLqe/TpM1jBUXFWjAl6/ymS00CaKkHJDl+l
         aOVSEZ57zxr8ra6SD1SdduMI0fFKvfR3jGxnGfOwCYu1LQ8X1yGKl8p6T1QK3r9J3CcJ
         2MZY2RNvX38wm65Q28Z59K2p/MJrtplJS8AjpPTtarTZasJIiyzhJAxGvjkdiY7kcFxZ
         6hY10z0H0jYVPNcC9WLuEa4IqLrstbo+BFfmioX7cMs0oIxTmZTGdrrQp8wV8hopvd1p
         r58w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=zdLyKU3T9lmtbyxpQOTOOT1147HamSTxIRtk7D7LZPo=;
        b=S4nO0c0qxT8dJa/oGP8idZ/J1uCyyto5hJFb3J87no5oJb6iUgvpmYdX7LisjY6Nax
         FgT8yk6IUj4/bsM1GuLddtQ2pXyScIGJcSZytWKk/8P6KVWH2WwpN5W428cWRFVfnu/u
         AzI76F01SV9+mJqHaQdMW3wedX4zrYkuUuk8/YTqPMZxJePzybMIXWafBv+2n7YxVRij
         pWFNjoTTgm4vYiqjRpRwsOvLUXKXn0KO3lBElmchhJb8uUoBSIclUze+ZShmuYwEOCj8
         6EeHGF7KqNKZvGxqxbPbSVWjH492njQ8BruGc0xLllNMFiz9EbSYY/V1IBkrVIBP24TU
         G45g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bRitqpn3;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id e12si711738ile.4.2021.08.03.10.25.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 10:25:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-381-a18S7ZF5NdKYe6oZoyUUWA-1; Tue, 03 Aug 2021 13:25:45 -0400
X-MC-Unique: a18S7ZF5NdKYe6oZoyUUWA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9BA880196C
	for <clang-built-linux@googlegroups.com>; Tue,  3 Aug 2021 17:25:44 +0000 (UTC)
Received: from [172.64.4.14] (unknown [10.30.33.176])
	by smtp.corp.redhat.com (Postfix) with ESMTP id ECF8B1036D33;
	Tue,  3 Aug 2021 17:25:40 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, d5ad8ec3)
Date: Tue, 03 Aug 2021 17:25:39 -0000
Message-ID: <cki.5ACDAD5EB6.3NMVBLAQR7@redhat.com>
X-Gitlab-Pipeline-ID: 347331599
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/347331599?=
X-DataWarehouse-Checkout-IID: 17161
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============0090753713388833135=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bRitqpn3;
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

--===============0090753713388833135==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: d5ad8ec3cfb5 - Merge tag 'media/v5.14-2' of git://git.kernel.org/pub/scm/linux/kernel/git/mchehab/linux-media

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/03/347331599

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.5ACDAD5EB6.3NMVBLAQR7%40redhat.com.

--===============0090753713388833135==
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
--===============0090753713388833135==--

