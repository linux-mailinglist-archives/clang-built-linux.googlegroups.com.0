Return-Path: <clang-built-linux+bncBDY57XFCRMIBBW4AXCDQMGQEERCSOSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4723C7883
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 23:06:36 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id 59-20020a9d0dc10000b02902a57e382ca1sf128465ots.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 14:06:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626210395; cv=pass;
        d=google.com; s=arc-20160816;
        b=yDr+Rj0Z9SOdc94Bjdhq3q0/jp81zrD8g5KOD+e39NN7PjCiOivI+Q5nzscbVPkfYp
         XC+7UV0Pn9qLkDQKTCJmhSxAmRL0ogJVI+HIAHuUXSC1aiZFfPS+CO/L6Tojn70jqNYB
         n9ZkS07A6lZjzk3Bj/aROilo4t3YYyS3lZ6Kdom0Xc3y8qUM9gYewYisU+SWIGHw/N4J
         sRmpsKXTxD5m0n4pHdsRq3q7ulVuSMAu3+JoiM6tcYfl+qbaENSbAEqD5eviicjxtYUg
         dNzcl2hNeWsuKILaS2JEiGdv+Y9P/yPmbI2PPxKArXKUCS4N1PfIjiqTSRLX9bPB9DSq
         iFRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=atVL2tm+WsrqM3NbL+d99/R0ZavghrKyc0YurfCfxWo=;
        b=QUAQpuL6ZYPsiYWDp8EGA637hVDUP+r8yyjoeNhMdc7hygiZx8hN6a3oyjrsuNzu9i
         WKD2IVwpV3fv3ZBfFjDwoUgF5pSWszbxvez4jLKylACQVOwWo5g5QHBm23CbA7/roJkT
         UYZ8J2b2eaVmm6j/5QmF6x1rZxCiMTynqnST+4GlhB4zRhpTkUyVyGOfzxz3X5plRgn0
         pd8tf6iJar3UJfxRREdqxK4jSIIM/l1YgLaKefk561j9pmt0xWMaDkQ7zuwZPg9zh4pf
         Z9CXd9XndkIjjFmBVs12Q1lMF49md/JLBeoUsrQQya9iGiGVxB7IXsrdnMgpv0dKU6FQ
         WVEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="FU6nCwk/";
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=atVL2tm+WsrqM3NbL+d99/R0ZavghrKyc0YurfCfxWo=;
        b=PPJzFDbXk5gB5qWXBuqZ+wq+FzP9+q0aPjPJHM8eMYyjPIpLXEcMc6VNd22H3/Nr8l
         shenpdbsk+bH8JLAw4T3QrKHT9ejK65/Q0CPk5NBA6Uv75BCQImGp9ILd92+dNXRlFjI
         QPHLTnVbkUFj1O88QuNaD0HoKjj2S1KJhF+I3qXaYFFu7MqCnK91wD8MQ3SrucjVjXpr
         dbIY438x76fTJ1EljbYzZz3gcGlIgq8siWgJFDi8DYPHIq7KzLt3lAjSU+/5j152sfRw
         6vX6sx/cVdypCa9eHpkKN2HCiVdCD1CulXOQf8WP3c9lG6rkM6L0XwbDwB873Hhj6O+I
         OlIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=atVL2tm+WsrqM3NbL+d99/R0ZavghrKyc0YurfCfxWo=;
        b=npLbKBlP08bDPsEV0zC9md0mTbj7SGdxPvBmbg2BGYwm2/IyB7qDeU29GwmXsPa1K4
         1VevWdwsxVstGUkO8I85cKojfs6i9caJA/d87AjHnPSBUIaKo2gNiqr0yIht85+seUD9
         S7JJ8hwDE3zzycgAxpuRUdOnD6Wm8aYoEFlhKiIAYAYTX7eg+0LshAtjLbJTC04j/o0P
         6Dv1hC3/uakOndTteUR6zBrE7Q73u5sIgzKSDooU722+ck7vcEmDrbSm4W1ocTCyAy9u
         Z/BXOxjalR/enTcD1vJwF5ofZYPhCEeWr920P5B1J859dxbEHRLwtGpfg6IhFLXN/IEi
         eYGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531avBmy0jU9PyHuvvTA4oE44ICD1cXU02zgaQVmmZ4pWRTb3SoG
	DpldjbcazOD/2Hwz5sVpPHw=
X-Google-Smtp-Source: ABdhPJzlq66DXGCmgxLNFlnZV+pP2b0HnJwEEaRyGTJ+PCUi4stmFXXkV8sbPpYRns87M4bQtVE1EA==
X-Received: by 2002:a05:6808:1406:: with SMTP id w6mr4602450oiv.123.1626210395157;
        Tue, 13 Jul 2021 14:06:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4f81:: with SMTP id d123ls6699oib.4.gmail; Tue, 13 Jul
 2021 14:06:34 -0700 (PDT)
X-Received: by 2002:aca:241a:: with SMTP id n26mr4775292oic.35.1626210394795;
        Tue, 13 Jul 2021 14:06:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626210394; cv=none;
        d=google.com; s=arc-20160816;
        b=0DxfiSDwbNlOizSLQs29Yo3z/THBqKPCNFNis+oNdNPpqpAym7/F/ygPrHIh0dmzEP
         qQH4wX5wxuRwsPNlrDOLnZMjigJn+Z/yBvBnrgFij9LFwrJqWnfNHDmoD6Sdk4MBqUkS
         JNFm4ZaT9Ta0b9Ww6xIHNKd8E1RohXs1OgHxsRZzBMUma/AfvXlV1NXlheAf9fSu1oaq
         8NNgrn4r0gOZbNKzofIW3hiOZ/A3Q1gso+/K4G1AS0Moe20NcHxW7VQkvUTa5gQ/ebXo
         0/7skPJlEaJJnEty3A53G24qELu1j2liXO/TN2eP5kMjonTq/DuhRN7WuY+KVBfMpJy2
         FerA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=lJ0JC8SpGfKfX0xk1qLV5deWS3UN5zj2kvlcYq7Lnko=;
        b=HXXgfvbaYpF1PxIkj50jdJIUC/aNH1N11Wvo4ud5wLK4hhIj56umrF64WTUIf2N7FU
         yijeqVhy65q/IkROuZmET3Exg2T9na7IJBNx8mNZ9Y0Ojq2W0TDzfP57P2ab6YYXog6D
         N+oXqDu/UrqpHMWpHLs+EYIKcxsWTiB6nGJfkxj62Bjc0FWG6hxICmxUJN7DuMuP5+0U
         EvbbZ9/HlW6G2fEsOnnAWLIt372eusaNVzJeVf4Hdbp9iHzHMornx5J5mH9xSM0gHZel
         Fqd17NKWiN0KhAftnNXiIaRTa4TuLrU6eWTBYlg0oI6d/ariSU1YaQEhYwyTnSkeLN78
         6OJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="FU6nCwk/";
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id h21si3410oof.2.2021.07.13.14.06.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 14:06:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-171-g413OTfKO-WJp1OFMus8_Q-1; Tue, 13 Jul 2021 17:06:25 -0400
X-MC-Unique: g413OTfKO-WJp1OFMus8_Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 514FE802937
	for <clang-built-linux@googlegroups.com>; Tue, 13 Jul 2021 21:06:24 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4BA646267C;
	Tue, 13 Jul 2021 21:06:20 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 40226a3d)
Date: Tue, 13 Jul 2021 21:06:20 -0000
Message-ID: <cki.FC5D78916C.W1JISMHX58@redhat.com>
X-Gitlab-Pipeline-ID: 336380905
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/336380905?=
X-DataWarehouse-Checkout-IID: 15892
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============1063630769387022060=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="FU6nCwk/";
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

--===============1063630769387022060==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 40226a3d96ef - Merge tag 'vboxsf-v5.14-1' of git://git.kernel.org/pub/scm/linux/kernel/git/hansg/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/13/336380905

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.FC5D78916C.W1JISMHX58%40redhat.com.

--===============1063630769387022060==
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
--===============1063630769387022060==--

