Return-Path: <clang-built-linux+bncBDY57XFCRMIBBGGQ5SEAMGQEBAVSL3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 014F13EE4C5
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 05:08:09 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id b9-20020a170902d50900b0012db04e2bf0sf4473633plg.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 20:08:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629169688; cv=pass;
        d=google.com; s=arc-20160816;
        b=b7Iz23UG3KTPLiJCNfqTrmTpXCnEontzU7gnJkyXMm0zC16aVb2ltlVCWOl0HMSTLB
         7nE9wXfVBVWDvyaP1EtFGAqXCJqbmcRRmYnAyL82sMBJC/AOUFjFmIyG/mz7EBOYS/4w
         ceCSOozwqtaZ+I5+wfKoeY8epQlEKi6W8PxhuQXLXOzrWgByFHv6g6OB8hkXXsIbInrQ
         IGjWF5BWH8iHhpsTyzBn7IppXrENOreOB3YWM8WGQ9D+AgGZOyAKa//mq93jX9+STa/z
         xIEwtVRXMn59fnzNbs8sd80hVCaQcUESIZbWFXxs05TLFAxzJ1+PbNUK4nGpPVmlLDqg
         6jdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=Z7uQK9at3kcyeoiobwdN5IoeKNPPNuGKlx5iJtA2IV0=;
        b=SAlllZ7y0ax/8fRvKmQyBMD3AqAeDIPX5DFJBf85C+gnA/nUbSUbi/z1779JYcMVPJ
         EfHHMJZcI5rDdjk3u+a42lDIaEongomNM7ihUxxWLdrliMysa3VcHJdDfCdmvF3FS2XB
         1YUcVNbYwsWNUrBN67A4LvPSuE2DX7fgU54K0JPuzQt0v2TUjKqiwmGbeWWa90otlg67
         MuoHrc2blgOTQD3h8QRSwJFezMMwrjOR7sHONFsAHDjcORhSd0IFRMwINS+EsVzx7f1G
         kOrATCRr37Hi4Kuu3rFklAVXHvvIsRtY8RewU1HWUzSROf6RLAwFF92wObQKBb1ABAm2
         4vrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AvhdTMLC;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z7uQK9at3kcyeoiobwdN5IoeKNPPNuGKlx5iJtA2IV0=;
        b=TGB1c7MJr1oxMOLWdqf49hTNYOqZWzJCMqHPDRP9fqpLt7l+//w/6eHtCTh59kDPIZ
         CB6P96Gt1MPHTe4061Ybszc5nr5bu7Bj3p3iKChs47+IDTZf5zEvDptO0g8SmbieqRBb
         kAYuyU3sw79G4U4Y1phMo+7SgNWGtkNb+2NnOF9MSDtGCrIEk5urvMRPny6DpSV91GyT
         YzeRO7/4aOZQSxxQiSvk2HFAf9Dv5kZ2nFsBDlUh+RkHnJQ+r/pjERN0r58o1xddCPWZ
         MY/MUZHoq6EyqQ2hFWwjEESUcMOqvFombMDRbk1Ot6PKBXayKlt9+Xm+xwyaIJHOLoCS
         nwAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z7uQK9at3kcyeoiobwdN5IoeKNPPNuGKlx5iJtA2IV0=;
        b=YOIvEVMQCbntKC2rVF8QxoJ5IDPBldq9d8kXbfe9lpUCOUfyhHjDYJrh5Ow/cbwwtp
         Wvwv4nvubr8Icdgx7eo/V/v8lPiucQiqaY0D+S61kLQeQxfsLEvyGBRJj3WIhehCH2Df
         lAoOsGukb+5PG33JVqx+wqOrDQ0yV2jwbV8ucUfDHbDMElac/Jg0QPIZxAZ2H/B+GtrK
         ZHfdabSgYen3OKlXfQIK7SOmnunwqcXmHfLO7/krhYa1U6puJG6xxgT+q7lU//b3PwAr
         YpiIqZFsjP/MH7F2Q/+uNR2P01GC6EOuvszH8RbNOwZ7Rb2VM1H22ArJsU/yeOW2lADE
         M7Ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fZhmCUxQtY9uthpS/CaksKbgOl6mQApzqfw2fY3pSlfweXAIk
	hYph1ZV60A+PY1unjsKPORw=
X-Google-Smtp-Source: ABdhPJysRRGMq3HQAzsKSMcy43KFWqmI+PWnBolQ3faLOrYuVtHfU9qYQldMyWUikxuf/RtmrY0FYA==
X-Received: by 2002:a62:b615:0:b029:34a:3920:a7ea with SMTP id j21-20020a62b6150000b029034a3920a7eamr1279829pff.21.1629169688501;
        Mon, 16 Aug 2021 20:08:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:30c3:: with SMTP id w186ls371762pfw.6.gmail; Mon, 16 Aug
 2021 20:08:08 -0700 (PDT)
X-Received: by 2002:a63:f242:: with SMTP id d2mr1341846pgk.384.1629169687896;
        Mon, 16 Aug 2021 20:08:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629169687; cv=none;
        d=google.com; s=arc-20160816;
        b=IVdDPzTBLu6bZ3jQCsLWDISRCnHUwCl6YW3vBeRLdsnTpExvqQQ1/g0rUUycfu/1HF
         wEkhFZ64xz1uFHFYkSTJegCRFoC5ThmD9hCUQtxP4nDze1hs0j4U06p9fwihlCzVVuwk
         jZ1GxoHyuN/4E3pkpd9t+tvQnfVTaYq99vZWeRT5XlDzzecnM1gSfSmrUKss7nxDJTZw
         BYQmxz4VQeI+H0qnz++dQAIGf1+Kn8rmpGj99+1hVODnSPTty7181Ucw4r2OU43sgpO7
         Svx9grXClJ8/xPRmPUQMTS+GuMRCJRZxGLaSqMwIAd0FRxbtLN4hgp9jCLN4b5g3izij
         uOyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=vFiPyTCA4Nk8MSn2etDG0nxZ5wmzxtw9LFBf8FHT65I=;
        b=nin7Ui7cV1jkp8vYhHqG1P3tZhxGxJ8weWsioEnRM1dWINhBoXs7VBUafsJxwnzO/y
         Y1QzH550OO3F0VGsONHMvLyX3PMlPSNANr9yvaW033ifx7TpxVQE6n4TkDFuwx7WhR3E
         DfCbvHfTsOx+7QI0rf1B7WIxxgX7h7PJTYcI6lSk2zOZgcXv/vIOLbDlgFCLk3f6HuIP
         MiSxES4KSHkxZQ8uEFg95LWmLlpE2otUWvOoHDi2Q3uYr/8xEQOD/75bK+MaJTVaKTFd
         CC6jvG0hjLIvLjUfK6TAqQYRMYPIo6uUQdc90fpIlvJt/rZtdA15/uc0AxkXkOrVfwJM
         e+uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AvhdTMLC;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id j11si37368pjs.3.2021.08.16.20.08.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 20:08:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-147-wSoAcnI6PvmLOuerg3jzew-1; Mon, 16 Aug 2021 23:08:03 -0400
X-MC-Unique: wSoAcnI6PvmLOuerg3jzew-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72E781F2D9
	for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 03:08:02 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8161D179B3;
	Tue, 17 Aug 2021 03:07:58 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 794c7931)
Date: Tue, 17 Aug 2021 03:07:55 -0000
Message-ID: <cki.C61D63A341.EAE54DGWY3@redhat.com>
X-Gitlab-Pipeline-ID: 354211914
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/354211914?=
X-DataWarehouse-Checkout-IID: 17869
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============1210902349135797535=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AvhdTMLC;
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

--===============1210902349135797535==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 794c7931a242 - Merge branch 'linus' of git://git.kernel.org/pub/scm/linux/kernel/git/herbert/crypto-2.6

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/17/354211914

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.C61D63A341.EAE54DGWY3%40redhat.com.

--===============1210902349135797535==
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
--===============1210902349135797535==--

