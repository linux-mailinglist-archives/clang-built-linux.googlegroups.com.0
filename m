Return-Path: <clang-built-linux+bncBDY57XFCRMIBBYUFZWDQMGQEHVDP6CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E4E3CC661
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 22:51:48 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id g3-20020a256b030000b0290551bbd99700sf18431030ybc.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 13:51:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626555107; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jg3CHV2bD6cIBOZ1dLwvc0h7sluS0kIHYVyyarx2uUjet5TFOv75oW1d83R2xMVPIh
         qy+RCd0DPSslsK0uZovQ13yh1X9+kMPYI9hguy3jj32NjOaBdoGn6KKHiBu8nI8pgLjE
         wX30JfLkhdhA2kY1hT8wpQljGlmyTm8VA5rNyb/X8n9pD7Wym3u+TZW66KioufRTWkPx
         sSiPUYLLESfdKTfnoUjEtGzJUrXIX+sTTwxDS1mKQokStwztch3dLPYPW4n2duzZ2FmM
         GwhJbs7frOXQ0xI93pGc9bQVkIC3uH0W/BSZC9Yr5qg6URMhE17rEAI0VipP1MZJF1ak
         aKlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=BBK0ZOfwlsWmvCl27KYp4vZqPnm6KGR0+Y9I3h46DFQ=;
        b=XPy4VTYiZCcQG7XVKB79tO16kSvobkMgpHj2ZCEv1n6AnV1KXyBW7DxTwaQHjEe95Y
         V9zGxj8aHPxg4O9c7OFzDrvHPOL6y0k0ZCj9IITl2QGSU/GEU3EkKn+8ZP/1h8GCag/n
         DqoI4u4OGGxejtAUwnAPzUxh7pms90iSB/EgLDHCDre26VZ6/3JNfgNAxzR5JEHVMv13
         sxzvQJu+uX/g5XWOwDODi0uDwEkegLkT1Nr1u/4KBcllBlEams6Y7EfbrVi7p252mAHS
         +O1LGpbXu8BpCLmZY5XNyJDpNPOKPcOaGje38EX7UFKunPcJU7XEn2pmLDsKbHph5Oyg
         GaNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GyKiTPSs;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BBK0ZOfwlsWmvCl27KYp4vZqPnm6KGR0+Y9I3h46DFQ=;
        b=c9sOoxDTfjzv3qnQC3Qngkq60wqr5MbWpa3UGM2h24RnEIZ+gPXHFVkQ90uoV+iv//
         tSZEPovClMkVOD9zl0oFxQ4U3uMBl+/dKwFhsqklaoVLDyW0AtNMEXxbxuTpMs/G9BhU
         /hA9DyKmAjxRIepfxZ/Y2YbSGBItoBCflUbOs4eyd+Vkd94MfMKQo7ADrh8RBXmjlvLp
         TQc0HBke9/Tcgxs+wHAzr64gxDMdcCfd+wm0Pc3f2QZPNJAiGH5VEY6W13x+nnNHKmPd
         6jCvLJGvgYrL6JfR72/zaPINO8OTPcBdCXLSeMfhki2I1yYMSWM20DfSI5uhysNX7ZLN
         cVEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BBK0ZOfwlsWmvCl27KYp4vZqPnm6KGR0+Y9I3h46DFQ=;
        b=Mn/sq6j81l0Xd+nFupe7qAJArAYabJ72zBxytOGIGBFMezkszcVbD7myXKOYkeQ/vW
         y/eRelReQxUtvpezvJ/WW3Oq4/LRqn/ddTUn7PYpQY7vyzg0SfMIlfGRzKSuYSPyYkiB
         /ZaiB+ICiJOMkGxna4mSapnpZPbPbUgwCmt2t7fDbdw4wDRyWZlthBkMfniS46UgmpNj
         Ue8jTTYT4LB7UkwOFZSGSxAQ6M30dKuiJBlQMG8z+Z2uEqa7SoH+JA83BhsYJR9EEyIN
         kQ725N0jE4ACJYy82tdAW48JgbhaL5ca85p+2rQnGtLvdiqVXsx0iDW8zxr7UpUkqsKt
         PVFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iG0sMnx9ktVWWRyQFmXWPj7S6B1jY1A7rBd1b9ymiJGCwTiGc
	qJHf+3v9JZqVGhx2MMNmERw=
X-Google-Smtp-Source: ABdhPJxEb0YoLJgf24OEzPygIHHKhegrJe5PGqAr+wjkIb5Z9MnFbpCUKD2D7PMnHQ1NyCvog0q2bw==
X-Received: by 2002:a25:abf3:: with SMTP id v106mr21872282ybi.299.1626555106944;
        Sat, 17 Jul 2021 13:51:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a4c7:: with SMTP id g65ls906218ybi.8.gmail; Sat, 17 Jul
 2021 13:51:46 -0700 (PDT)
X-Received: by 2002:a25:32c1:: with SMTP id y184mr22628752yby.187.1626555106402;
        Sat, 17 Jul 2021 13:51:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626555106; cv=none;
        d=google.com; s=arc-20160816;
        b=ou2SQGGWFchWhC69hiCpGQw+kO49GVmQm72SO90JMuF7lpoZHr9olNpFqeRB8COQ/5
         grpxZfKg4Zbvt6FmLsfKzParcWNaymrMkBpUNBB8gnAYbQf7v6CqX3ZO2FHFwjz253KW
         ZtHRgAlO9j/0dafYMGlJWtRlEbvaFC6DK1sWD4zwW9LzG7fYOy3m5K+Cdedm3LbooBPi
         HRpkmGcuUwJG/MwQgTtMr8EQ8h83TZ2keKQ+INbJ3RdVn1LubG7CxIUhBOkMcP7ERGFO
         PdLncctfTn2IIOYisgwD4HGALot5RbLEO9+1985z37TpJwMxNEDDf6eN2su3eEn6OTr2
         5AIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=7fX7tD+5o7Eel4id053QyDfn+F0/k1EiboCg7oIp9Pg=;
        b=BGV9rIvwsZF3pjn8biKoQ7ZWizX20hhREOHez9ikEmfYmQEnAkqw3C9Qan4AzSTelM
         X5YwIayWOsdN65lKaqbYxNtpWmMdL2jGVj/rot07rR0AK6fXML6zZb6gZNcvGAEkh++d
         hBNHdN2jx38Q5N4cK4mO7qBgi+qIHu4vKPvTfLJkIY7+Hbz0H5RsmQRWdY6ixvREPDcE
         HN/fjBRRnJ3uIuprkdfuxjR3sg/KTtEtzA2jgUclMf4kTUjDr3boU7pbGXhJP2XAga7u
         3BaWYbMxAUkGTPFV9uFznxusutFA1Dnsh8IlcYgQkVJNFFoFufDrKEiURu+w8EOJeNv2
         O1MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GyKiTPSs;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r3si1804930ybc.1.2021.07.17.13.51.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Jul 2021 13:51:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-599-uDp5rB4EPDKqQtkZwHRSwQ-1; Sat, 17 Jul 2021 16:51:43 -0400
X-MC-Unique: uDp5rB4EPDKqQtkZwHRSwQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D0D41835AC2
	for <clang-built-linux@googlegroups.com>; Sat, 17 Jul 2021 20:51:42 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9405360864;
	Sat, 17 Jul 2021 20:51:38 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 5d766d55)
Date: Sat, 17 Jul 2021 20:51:38 -0000
Message-ID: <cki.54AF820ED3.S8ROZFTUEC@redhat.com>
X-Gitlab-Pipeline-ID: 338774214
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/338774214?=
X-DataWarehouse-Checkout-IID: None
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============3973079132528070442=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=GyKiTPSs;
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

--===============3973079132528070442==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 5d766d55d163 - Merge tag 'scsi-fixes' of git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/17/338774214

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.54AF820ED3.S8ROZFTUEC%40redhat.com.

--===============3973079132528070442==
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
--===============3973079132528070442==--

