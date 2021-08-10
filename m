Return-Path: <clang-built-linux+bncBDY57XFCRMIBB4FAZOEAMGQEZBICTBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E5D3E837B
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 21:16:01 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id o13-20020a17090a9f8db0290177972c9adesf3591826pjp.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 12:16:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628622960; cv=pass;
        d=google.com; s=arc-20160816;
        b=NtbzSYPikrb6aWVOzd+ht0/st7SkaX8eqBqlaqGIyJqQCQHjhXRz0fB3W1k5N8XOxG
         8ghylQnehycXx0RKgovbJME0TcAoBIEbYLjdJLhpoAQ+6bOoIHxpHBgL+w7jcqbiPhHY
         AkVhILSTxWjte8UKRRQ89yd4hIYMPsv2RBro4DsAQlscUFkfVAy4SVw4XLJFk/NGRs1I
         7y4/c6ldaxMkzxSFGYVm52pAhgN1LGKs76Que2Gu9mGWDEV0yBO2/9zJJNPJIqoJRuIQ
         IgXve59IhuGHjf7IO5VBXyLtuag46hSrfCVSRbiSpQjU0gabyv5gw30Qju/TAt86OHKk
         zxug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=3rtcRKUy6H5AMTYLQ10kp2Pgnkm827G7YhP7fxreaoI=;
        b=NohyqU5K8zb0a4yhzqOzKG8MzeayvQtafX/YEKwGI2nmmNE2bO9IJ321nAjl8VuLdO
         1x6ZZAKOSSWdr96D3ajJTyts+QrcSYXjaMvb5G61PwekOYjI6agpgshUpQ9g8DiZntHd
         PTirn4X0XtdfMgLKdd28RQ40lirXLx/f9HjIqaToLU/E+1D2pMgg8BR5xGp3KfJVqVrM
         faPJ26bPsQ/GfpluqtUufx9G7s11PLXumKiXLGTjBokkcPsL90w0YkisVYrnYl2RM5UN
         CVLoKSUM7FYw1PzA3SJ1kOQVQjq8xAOB9VmVv1wfk2cP0HHTIQA9EHsOqVs9HSx5W1Gs
         oe8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MsYEvVwW;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3rtcRKUy6H5AMTYLQ10kp2Pgnkm827G7YhP7fxreaoI=;
        b=T5uBxSZUUfR4TqWKmv1FuJ5VAF3l6rCcR41AJDnfHio4RaaoEe2+Ah83K0fDCufwid
         ZABLPnplmUREEhgFIKLzfAECGacaHVNXY8cAw+rqO56/brLZcfSG0JJcbc5yd8hQm0K2
         +hDO7ICbw31Ck2riiWhwbG787+Uin7X8odp4Dx5gR6t1mjM1INOvdFGOT6+g7cs5APC7
         FN1UzM2+1xBzfAeSxsiWNc/Bc269pgfOSMBAzS6XUQCNEQi8ZirZQ64ebz3++Zp8yVnw
         0i6XPbVfssCcXsiSPROpefGTZFhnjSX0pLguM0ky9VWjlD2oqX/n0KiLIXKVgwzdxP2C
         mtzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3rtcRKUy6H5AMTYLQ10kp2Pgnkm827G7YhP7fxreaoI=;
        b=YdwpNK++EIrRdDqEwR2+qov731CnqHisuZVsOy17M3C4q5aj/aE9ygOjlblDFAOvWX
         DrE1ZjrpAHnVfnp80JbXbOz7Mvti3bS5Sr80kxBteQCzEX5zCj/QfYuDq8t4d+bJEXME
         Jf6HVl1rPAB6T2k+gIXP8lg72T/pzmcbAzcjJ2zYhNMYiy2Zw/8yY9rzkoG7SnJKRFkC
         sFWzxWOegLPs+irLwDF7fdXfw9Z7kUKHat8xdJsT3dOuG2/VGbIotSk2Kexc96IUa7jn
         pEIfgPrqUMOaTXOGGLikXwL2u22XQNyp+NGT9IMsIOKUgVUcS8FPt9r6OfEjh41meP4h
         W1pQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322YVKyTI996tO6aEfrxu29gfcQtwtTtErb32wUbiLP3gWuMi/C
	jW6KaR3AsvCraHsibI0goW0=
X-Google-Smtp-Source: ABdhPJykWd1t4NbyvKG736tPO8zVKpq8Yb6P3ybxf5YJb2+PTC3450gpzFtJL3fVQTKko+h3pjlDZA==
X-Received: by 2002:a05:6a00:22cc:b029:3dd:8cca:96f1 with SMTP id f12-20020a056a0022ccb02903dd8cca96f1mr651957pfj.19.1628622960388;
        Tue, 10 Aug 2021 12:16:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1cc2:: with SMTP id c185ls809156pfc.2.gmail; Tue, 10 Aug
 2021 12:15:59 -0700 (PDT)
X-Received: by 2002:aa7:90cd:0:b029:333:baa9:87b7 with SMTP id k13-20020aa790cd0000b0290333baa987b7mr24511203pfk.23.1628622959799;
        Tue, 10 Aug 2021 12:15:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628622959; cv=none;
        d=google.com; s=arc-20160816;
        b=etNl4AmOhx/LUPRWeMYt/CaHACoQXlgMdDj6YLYZ6mCcFRR4pJf9AHgMxDGxY51myQ
         t4x5xbrkrh51/gc6PUkmlRdPWqMNhs0CO4tV0OmCqgRUryZsE5ZmH2K8k+q79TDYepPc
         ENs9J8/GAgokfLj95ZgAr/4RJVMM+mN9TfJRXRIeRgBjIhIcNDjpYjsfxfK6piva0Bh+
         rnlImPVamy8zmrO7au3Q27P6DiejyoxxG/t/vXZ8zeTd/rYtQCcVsmgSvZzBFZvYvdbQ
         2/2WoB6IxMNR1gLAcMjo88UFLtnx1hC5j9wa+zenOWLHTVw3y6JKYHZWAqTgPdcvSMcA
         RHHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=2ZTKZQ8zgpn53bQMjn9tllklszeGDA7eia9MDr1HN3c=;
        b=T2K1pO58P77Vla5NSskYND6xtoxLP7A1WFz6lwBFyTRymC5YSIloHhum+WeZAtVKTu
         uv8oyGZtpmcMRfMC9Zg0CZiaaAU06BPjB26NKzPOBJemEwiaSOEwKfou2QcUHVZKZw9m
         M1MoKzD28y/MQCB5WWbXhmMJi0KhGeP/vURzZqonchHxQrgvc9kVW849jeXS3t2MsFka
         Co2jfYiIt0BNe+f2QThJeeF9weSJwpCRyG0GM3B8k8DixaRIzBQdF1Mg2508QbhaJglU
         KEHy/zDPkXnDjhYsXZex894owkHxxEE3HgHVQ3Ubh0x0qJfP4f4UVhHQt4aeOmggsQzu
         jAWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MsYEvVwW;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id j11si503948pjs.3.2021.08.10.12.15.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Aug 2021 12:15:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-183-dVH98S0FOqyvguWzXe7cTw-1; Tue, 10 Aug 2021 15:15:49 -0400
X-MC-Unique: dVH98S0FOqyvguWzXe7cTw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 93E72801AEB
	for <clang-built-linux@googlegroups.com>; Tue, 10 Aug 2021 19:15:48 +0000 (UTC)
Received: from [172.64.11.61] (unknown [10.30.34.114])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B7AB91B472;
	Tue, 10 Aug 2021 19:15:44 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 9e723c53)
Date: Tue, 10 Aug 2021 19:15:44 -0000
Message-ID: <cki.0402B2D918.6WB2RSSF5P@redhat.com>
X-Gitlab-Pipeline-ID: 351063520
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/351063520?=
X-DataWarehouse-Checkout-IID: 17545
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============7478617077853080990=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MsYEvVwW;
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

--===============7478617077853080990==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 9e723c5380c6 - Merge tag 'platform-drivers-x86-v5.14-3' of git://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/10/351063520

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.0402B2D918.6WB2RSSF5P%40redhat.com.

--===============7478617077853080990==
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
--===============7478617077853080990==--

