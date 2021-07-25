Return-Path: <clang-built-linux+bncBDY57XFCRMIBBUHB66DQMGQEIA7GH6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A083D5099
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 01:16:34 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id g11-20020a25ae4b0000b02905792fb55b0bsf274102ybe.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 25 Jul 2021 16:16:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627254993; cv=pass;
        d=google.com; s=arc-20160816;
        b=ARToVakH1DdzJ1az7KBcbPQNGRxHo+1e78OB9upMVQglYiGVtPt7lu8bKBnItMVA7z
         Pt4Fv4Xs4Gd0Wx92Mtaq3R1XtneTqox2pt34DU6dUVfTvkexaDxI9gJi5OB4b9exqDCm
         F27diQtfkx95vdsdPz5bG/2MLQZLLOLzR+XGU2y+5C9qSh27K7FEo5i6B6gigAmSmCA1
         YX+JLP/WLTd+ijonYfvhyYDxnp8Bcortd/1QuEJl2gOnPsk+waA9aCWNMffO8bgeeyGu
         eQK+EMhpa49X/L+hTaP/z135rOMS9Grkt9pNZakT1wnBj3mS5SkbWRPaY3elxbEyOo2o
         QTdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=EhTODtjYXZjYhdxkExpyVwc/FTufI3LYuDQyv5+1v7M=;
        b=bIJXNY8Hk4dmGYK7dL0jyvLhV9ZFgKrpu2Ron7CFVBi8/HO7JiG4VjieBi8ZYFgEW+
         JXqtNZfZzAK5cMuioCiqSv597A69fhOCsIq5hFhLHw8PJGHd/3inH7G/YtrcAqBLJ9gu
         QsGv0BiHgdcXAPu/aIUdzuCLd0v+iwFzztDwgvlutpEy+XCQBHu9N7pwCkSa+Y9TsNVy
         M+33u1Muicm8I6mbktsV7D9WZEFx1Wd+mjiiPd8bQXpu4KwBpU5/2+9+vwm0ByPbqFgD
         YmGzY433750w9JwmiLOfnt8raczsNGly2BQyeZDwC5P8RtS27gSwGx7/dSSPcDI3fd+A
         YyFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QO4Tdt+9;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EhTODtjYXZjYhdxkExpyVwc/FTufI3LYuDQyv5+1v7M=;
        b=VWJ7VKUJQk5mgf1g5AN5ndr8SwjnyYglTRpP12aqdJU+CNXpIyvJso5yJBbh6cHFC+
         YsG3wFVwljIoWcWAcu20DMu+0IEhGFEP2/49L0Njxd4VqoR5/kmsou1DYBiv0AHQzVCB
         in0zWqiNkj8CUIBzX+i8z5PsiAhJ6LAxnmYNLUHDjOmjgDc8miNwsWk/esM+dn0koE7c
         r6b0aPCrNAXHmqT9kj4xgoEkBJrphwe5eSMiB0S6F7OmGkkm65H6n4S+w2m7KqgVJsCb
         1LmKsFzXVeS7c3I42ytU4trs7IlvG//js8n30YhzUIowmq9bJoKeo5VDVFIiJm1egewP
         cdRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EhTODtjYXZjYhdxkExpyVwc/FTufI3LYuDQyv5+1v7M=;
        b=svZDsWmoxMtFRbNB+Q/HyaniwaiYdi3GQGj++rCUq9vn2RmWqfRCHPSvjal79LPQCh
         lS+a8tMqPlvNx0WBqsgfMLGmUlJCOzKAs2c/yE8fDrAiiqMWJba88yAJqRZYITsi/w20
         X//sTxVsFNR/XsBOaNB5lsH6W3rVTuTcCFrfg0cLEfuweWq3FmTLctqODqYvTBMCFTbC
         HLArkboYLK4K+/ijABv5wbvgkju5M0if7Tpq9PM4BST2QgefvPNS98i8xIeC9GnSR2MQ
         48BNVPbWM1VWaeEtREetflCMcC2EQHr+ukoYMqnKJk4wOqkcZLKMzR9hw4EDfAP5umE2
         URcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yb1Yo1zJ5a+1ZTI+6FrHDp3YhauNsRYrTZitmuuC3GT+I2TiG
	A313gGZGdrdNLJlSKlH2Kn8=
X-Google-Smtp-Source: ABdhPJwkS73u462OgFvlPRzn1hL1un/1QvnynIMBb2lD+c4m9csJ65d7VLk/yxjP2aRFMwSMF6GrPg==
X-Received: by 2002:a25:cf91:: with SMTP id f139mr9278496ybg.292.1627254992843;
        Sun, 25 Jul 2021 16:16:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls2353801ybc.2.gmail; Sun, 25
 Jul 2021 16:16:32 -0700 (PDT)
X-Received: by 2002:a25:dc10:: with SMTP id y16mr3920094ybe.115.1627254992301;
        Sun, 25 Jul 2021 16:16:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627254992; cv=none;
        d=google.com; s=arc-20160816;
        b=rc/00brvWHoQ4TdOxhgQsavFVdRYhZDSU4k9WnLxaZSAyrn2afadKDmSl/D521RzHQ
         L4AGD9u0FKNZVpoEQIh5ma17CE+R0sIKuavELUzTPFb4guWhvG/T957x+H7V+mDRrkko
         ZnuHmWrM0/QV17mHQR9O/LBNjIkd8cezBETPCgsLF/up6FyXmEzjXrlG7QOcUgS7y5YK
         GDcgt9y7yY70Ctkvv+t74o+4yJwF1qkcWgANTxm1HPpqtZZotzxEnMNAd5Og205+cBdM
         Z4edrSDlgKn1O+Dti1gv6QHFYW4HcW7Y+Wx4jsrLidND2aqV1/Oaui3gHmUsNpjKyrbk
         JjgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=xELptorkpYMP3LudjjwxKVuI02J1Etjbb58C4t9BZEY=;
        b=V36T4n8AMNeudBdYTV/ZQCLjjyj8kUUXUGUxyp5F005o28Du1jS4sBQnwt6a8GuSEK
         GeZ2IpYLDyjb8YutqvWE+y4+vzkTtUO+kRWH0QfUo4C2hrjIhosbolSU+J+drEmYA2nf
         doUU/+VUX+vrcp642+Z9OQhhsST558hzxeegLD9iE3p+SVjd5UmHvSudHFKdIftqk6Ia
         jBEU/96vo1vWGJrf1LGlrgmlvdIrR/dnmOjaSNa3QhSkCXIkzaRVoOxmcpQScfF8wdVR
         Wy3bQtGqy8hqrsmVXExndHTmXGJUi8x0euN8ZK+gsNreSAbznyfgVhLQlbsFgYqzxLWO
         I9fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QO4Tdt+9;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r3si4867655ybc.1.2021.07.25.16.16.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Jul 2021 16:16:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-451-B8Wrdu0YOHy2lBCF9tet3Q-1; Sun, 25 Jul 2021 19:16:28 -0400
X-MC-Unique: B8Wrdu0YOHy2lBCF9tet3Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 816C61853029
	for <clang-built-linux@googlegroups.com>; Sun, 25 Jul 2021 23:16:27 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A58331ABD1;
	Sun, 25 Jul 2021 23:16:23 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, ff117646)
Date: Sun, 25 Jul 2021 23:16:23 -0000
Message-ID: <cki.1C1B9D4F1E.NE9VJ9R2D7@redhat.com>
X-Gitlab-Pipeline-ID: 342617539
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/342617539?=
X-DataWarehouse-Checkout-IID: 16598
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============8725329229798141370=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=QO4Tdt+9;
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

--===============8725329229798141370==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: ff1176468d36 - Linux 5.14-rc3

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/25/342617539

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.1C1B9D4F1E.NE9VJ9R2D7%40redhat.com.

--===============8725329229798141370==
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
--===============8725329229798141370==--

