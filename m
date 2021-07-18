Return-Path: <clang-built-linux+bncBDY57XFCRMIBBS4O2KDQMGQEBO46HYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CE53CCA86
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 21:55:56 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id t7-20020a0562140c67b02902f36ca6afdcsf11786813qvj.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 12:55:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626638156; cv=pass;
        d=google.com; s=arc-20160816;
        b=hzht0DaExi3nZwIpAQsZhlHo14i1IWxi3eVXDuGpet/5tZJ2GHB2IblEbsV1AX4q79
         0oSu5LsccDw/OUpIsYlK0jl+VJeO0Ip5tS+1gjbYjeFNd3mpf+qyYfgDsj6vDspRdd3t
         Gx8C00CEeyHhQ9TXIjTmAjtJby2CdVkdXDVZ7Zg2Cnb5dH67y7n6HPIhzRyCLTcEYhwv
         9wTQOwAq5ECGvjvh7EPFKmKtu4zL6Enj14weW63a3kWxN8VF+2W8F+EPQu2AbsSE46Pc
         824N+QBUm8lz7BVwqI4V9wyvVYPDKqVNnWLUHUsgn25lQPVXs24kOXWVM1FHQYmJWVU+
         U+JQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=Gss0/C2CFve7yV1B2CuW4uFNjt/JudQd/VOZJfpMKfQ=;
        b=jvsG1dhbtHC2XItd3XEfTsmUS1HqI17ZTPsphISYBHuecfRhKNd5yvxUTbs3sqrxKU
         zkRbxXvZPTL7MMxRHdLyvDJEKqZ747qKFzcUrXuzUQIhka1vozZPQUb2+t4Q2an016MQ
         oNjNepDh69vUHALdR8ftae0jdfMyx9le9qvLPoL6Pl5I2solGDtR6mWEk6igMoUHiXoP
         NmUg/n7WCFjJwZ9XVDuIvsVEd6jzqqGfgP7az7c4ysS5MuVvYyIYqykkSDpkeKHn9QGv
         nwrtjfaYBwmhWN5uI/XZqZzNuopmjpkEoyEUYJUl2dVISb+qInWDPobG8oK7ws4pICbi
         B6dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TAYm8Xe7;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gss0/C2CFve7yV1B2CuW4uFNjt/JudQd/VOZJfpMKfQ=;
        b=WbjNAZ8Z8T7g9QwiS44PACya0FHU0SAHC+BBBJvLozSEyGiP0quwe703iheh5yKca8
         HhH3iqnF3XFMprAwWfblGprc6p28VEzl5mWS8YlRwjUhRbhKGsz7FhkBn8nDAm5HW4kh
         d2qTQEMjYcerc0c/dyLY33G6brQVDivSMYfKN8+9SFSFw8AQWx7W+gmWQps0CrF3P/3/
         H2gWw4bl8HeG0eDyrnX8dK+1IyngZLZlPMoWi6jH0264TUWckmxDuLO3w2MNgg3KST2a
         OJHn0qNDekSiyBsUMUcMFaKA4HUeWzhrpp8irlSGZmPjwQJICyR3ZYUt5rkiAmLrKh3k
         0sag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gss0/C2CFve7yV1B2CuW4uFNjt/JudQd/VOZJfpMKfQ=;
        b=mOUhHeERvZMrOBrrYoeEXOKPLyqm6ZEny2XkUIDOypQ05cDTH+lrbywrMujqHgDI8M
         YG2asjE7nVrYjrpgNUunprPJfnUFot0ZEB6qcW4GyHo2UCHVzdALD23E8f+551sDVuCx
         UnVrFHrlBpfVB/kNpc0+8Sj8noCY9z3FNmvQfOYRKf7vHXOoendIufpBaz5c5y3vapjs
         3HjkA3BNpMNSWT7iPR7ooXCmOjSR5Oe0wfgXOx+3ukXbXiF4BoP0uBbtRlreERBPkc9c
         m5EYQYHCQj1skmshk6IM5J0ReHUCjn9bOuUnV1BAeRZObh3ryVs+YcOKkTD70w40q/wa
         IZnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531x3mSdn1Jf7jUDT/Kiex5Or1rHPcr6U4Ei8I2BtNfk3Z0Nnw7t
	4Wua8snWV49UYKINm83zIaA=
X-Google-Smtp-Source: ABdhPJzu5nc4THAdeQdv+j9WTcH1zk3+/QENuXfhHowTyFWXqUjGlrZ4UimXP3wA6Zs3A+ckzsi17A==
X-Received: by 2002:a05:620a:1996:: with SMTP id bm22mr3522203qkb.224.1626638155850;
        Sun, 18 Jul 2021 12:55:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:60c4:: with SMTP id i4ls860463qtm.10.gmail; Sun, 18 Jul
 2021 12:55:55 -0700 (PDT)
X-Received: by 2002:ac8:5755:: with SMTP id 21mr19406649qtx.267.1626638155403;
        Sun, 18 Jul 2021 12:55:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626638155; cv=none;
        d=google.com; s=arc-20160816;
        b=l21LAc5MvoBkpLZBx3q+TJmNTlNAnq9OIQmwUSFPSpwHu4x1ednmr0Dg0xBuH6I3ct
         E8f/DZhJZ1jiydEn6aAthXAx9HQkXZkKunBQEJFZt2a7U5E1JORRFX3DW4CKXQ1na4xG
         h3FvBcoG0OvkhQrQALNvl0P1J7nOO6OycInmsSNluU7FgSYD5UPY234YxcEyiUon4JWE
         Ua4+DEbLthxLh5+kvWog4JsgDN38Bl3uajgibGjFU2o8A06fh6sx741745HYVTBR12qd
         t72ScAc7g5IRNxzSStA8UAcU14J2+qdSd7zI5xi3HLisE7/mmzu6UAoA4kZM4Vh8aLcO
         oKXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=HX+Wpczppb+cewwUCnVluF1E2wPcRdsJXN+QC1Hdiw0=;
        b=VAzsAQvjALG3RRoMcIRL6Hjt7Tyn3+gxTechHGYcclejpJgqptSRx66mGoRaYw2is6
         GKvU9hZOUk9YDUXBKutgtvKkgczoXAX3FD5DoyuetdSf62Vco1P1Ara6XVfHsACaKfRj
         JySFA0oeWSAIdeEhGxnoZ6o9riOniKtzkQ5I+2aRD5mrIGr8Xu30STeXLpoxtXpjD0Q2
         uUGTrLslSOMIYlPvpRDxwoRt6OL6kLdCJT6T7ojZAHfMvS3uWctaxFoxnXWmDeTG5dPG
         r7L9/rsIDPDNXJMFAu84Q8dvk+zcZssHzDVHJ2TsDIsboAOlRTLIvYwpYVyIxOQ9SDdT
         3Atw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TAYm8Xe7;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y12si616571qtx.3.2021.07.18.12.55.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Jul 2021 12:55:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-441-_fV2vHL1PwSfYJsmbfUlqA-1; Sun, 18 Jul 2021 15:55:45 -0400
X-MC-Unique: _fV2vHL1PwSfYJsmbfUlqA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B491802C80
	for <clang-built-linux@googlegroups.com>; Sun, 18 Jul 2021 19:55:45 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 49E9927199;
	Sun, 18 Jul 2021 19:55:41 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, f0eb870a)
Date: Sun, 18 Jul 2021 19:55:41 -0000
Message-ID: <cki.8A48F5FB7C.4MJUTQ7DAM@redhat.com>
X-Gitlab-Pipeline-ID: 338967033
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/338967033?=
X-DataWarehouse-Checkout-IID: 16166
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============0358954110936937914=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TAYm8Xe7;
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

--===============0358954110936937914==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: f0eb870a8422 - Merge tag 'xfs-5.14-fixes-1' of git://git.kernel.org/pub/scm/fs/xfs/xfs-linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/18/338967033

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.8A48F5FB7C.4MJUTQ7DAM%40redhat.com.

--===============0358954110936937914==
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
--===============0358954110936937914==--

