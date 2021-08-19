Return-Path: <clang-built-linux+bncBDY57XFCRMIBBRVH7OEAMGQER4YSP4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4683F2293
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 23:57:27 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id w13-20020a17090a8a0d00b00179486bdfe9sf3589957pjn.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 14:57:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629410246; cv=pass;
        d=google.com; s=arc-20160816;
        b=xAisZZWqINa1HmEJDNUiz8WrLMwniRwNRj1cC1vC3G1kC21q9GRh5nLm9W1gQBo6te
         a8Kh7Ptoti4DgXrTVbvsrnevbgotjkf6GLGBi0Uw/7QpEKDk9sqoG0rVifDG6qwwXQSg
         ZDtgEqGsTkZWtvrFdXhWTxWiVfXVlTdeK21KzX7HXSQadyTMbJJDtHC/SXceIo2JxXpx
         s97s/G8SQpl7ZdmymXGvudJXD1xV9mfVHDqyRgiwXAC8Q0WhwU54K4n2IKhcjO5EsIhn
         w6P/sJ0ieI9N+AMT4rp9HNmHPorW+U15Jc0pl7mhG8ZIVWvE3I42VtrMEuV74yMs8ecd
         13DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=mXPAxnqW6lPh5ch17fZ+UrBdcVUyC89fSdOdTuA7o+Q=;
        b=bnP8agmncIpGD2Ptyfw7H3Y3lsxq60H202PeydR5m33cVTA49eeFMWj55QPgO2crPe
         NnjAoP6hGwaNh7RPcID3/Denwn0BJORT4ohi3jIhxeA4VY8EKJP6yDDO9gAFE6np5Wbz
         t7IGkBktpuQqTOBQSU5/O84Evkc6MF73u6TjiHqpoWLd+7aX1+YjJvxku9jutV65rBRX
         ZPlSXCrGJqum+BBqGiK3FrykMSEYDdHYoqGaO6Br4Wl7ssLkQKsrEXJabc+K/+kwDk+1
         UgQ6or2YTloDUraosFeA9KNXmtPvuUC7RLEeuuBgsYs1kYNIUqjcfR1Fr5JuSnqB+Nec
         YdBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=X84bu+hi;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mXPAxnqW6lPh5ch17fZ+UrBdcVUyC89fSdOdTuA7o+Q=;
        b=i2mB6HxS6yKzwBA1w7Lu0p4RFaAywPiL/c50ADcGtMSaTy52EJhMeUB4Iw0Xmxth2t
         k+8+7ZY3bO5CojwyulnnBSSHCQB1kqTY9g+wfWm3ez0PtdoUlIakKhA+Ax9+VISo/9kr
         /vf1JRHBYm+ENT8+/RycrArAp61saHNnewilUWvj8nKFfkOyFJXdqH1jdolRwi/7248O
         TDdR5rkmYGTuOkkcFntS3AbY/a3N65TwxGZY8/oewbwRV5Qyf/qu1Dj8q5mSiIhvXup6
         joN2Io7Wj2fml3FfsHOwnH0s0J/4apT3M295xMU80E4CSjmZ2QiIeapEeUlfw74UC3mY
         aXQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mXPAxnqW6lPh5ch17fZ+UrBdcVUyC89fSdOdTuA7o+Q=;
        b=MG9ljF6KFhFs/spQPfxatqXiUfItG9qPF46cZGHrMzq1uMTFDWgeO8eOtblZ5cnZbz
         0dhVDCWN6UxY2H51RaXie8XBrD8x44mIXPnDOrlYFJMA9cLSoCugV4xAfvp25Z3OT5tk
         KYgcS5t/uNFuK82LrpCDCJGWTHPWvQvkWxr+uNq/GkuklAxs3aBQzJJSHIiELO2p0W9Z
         qg3PIO4MtmNSOkxMNv9xq64Q3wLbxrDLnaqQTy68pm2jkPcFKBkKwWi4IQIDkCmbwvKh
         WAUPbrc9scM+uDuC2zz2IK+G/eeMWk6H+u9D7ZpCAASQ8tp4LXBIIh3kSxrPWaSw0Nm4
         ovjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331MS7LYCCSRrKicsm/CWT7izlD/b0MIWNgpwPObS8GXdlV5qfA
	GuDC3lg8RxJ66RlkOGUlcWo=
X-Google-Smtp-Source: ABdhPJwcYpozssy2QB8rvx7/h1ON1xQEL2oUDv+Ofspak16UnJlqUi1dhGvlbT4EmfNmQQeGK6o/LA==
X-Received: by 2002:a17:902:c94b:b0:130:ad84:990a with SMTP id i11-20020a170902c94b00b00130ad84990amr786237pla.1.1629410246466;
        Thu, 19 Aug 2021 14:57:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ee45:: with SMTP id n5ls3121710pgk.0.gmail; Thu, 19 Aug
 2021 14:57:26 -0700 (PDT)
X-Received: by 2002:a05:6a00:1311:b029:3b2:87fe:a598 with SMTP id j17-20020a056a001311b02903b287fea598mr16591125pfu.74.1629410245929;
        Thu, 19 Aug 2021 14:57:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629410245; cv=none;
        d=google.com; s=arc-20160816;
        b=Ntgz7Ia17gkBhHZGNUIEk3saUEr3TfpmwZAQohj+WO7uJEHtIH+wqI8b9tZa4+wTT9
         H0IxnqIt6rnvm+/ez/Kki+G6XL5BZzXI5fB/0hOSSO8dkJMjHqEve+rSFKoZaieYrBnc
         jqBoquLR0M5ja6Y2QD8FfHvIP+g/w6y491ePLDU/VwgFrF3nyDAG3MA4+1K3ZwXZcoXE
         jf6Qn1xj000/x1qsAwvpbIy48zoFlTzAVXM04lZD4WXCQM/4ImSmh7W4Uy0ZrX1pj8bH
         FbcB9mKjgYAAb6xNbLoZCxpMQp3c4VA/PiqXLZFI7X8ws0LT4BqzYhDFfbwwt5qj1zAO
         vbOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=VlYgInA8j3/gBkEz5+dkqMuBeeStIejEAfXzY3ZmLh0=;
        b=gV+Kj6QzJ/hb1yIhk5eZo4ZCYUX0/q4xrBIHoko+chex5hzU53yTJY6pXgQuSkT6yf
         5fviEHpZQ/hcnErwcd9bbGnGHmZLgeiQyY1Z69yqBOpjlZ28PbVHcsCVDyxcRYn9USDM
         FbJr9fK/D6gLGAWMBbGCXR7+QLRMAqRvSg9cnJ29lkJS90l0I/yeoCGQlJq88A9NedQf
         3d7SWdmwbxzv2Wh/HZJUZgmJPQ21el67aZOkLSYU00aixqUOGZHIokpN/S7Gt369AqOO
         Yx++yS57m3KnZIqErHedozR6j7h8MXjWCcPs3/H9jrc2G8DY4ib3pnxuAUakg3/80CKM
         ntcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=X84bu+hi;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id p18si203014plr.1.2021.08.19.14.57.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 14:57:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-477-wd4lHwGJNtynH_aal1ZZbA-1; Thu, 19 Aug 2021 17:57:22 -0400
X-MC-Unique: wd4lHwGJNtynH_aal1ZZbA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 481131008062
	for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 21:57:21 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8442F5D9D5;
	Thu, 19 Aug 2021 21:57:17 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, f87d6431)
Date: Thu, 19 Aug 2021 21:57:17 -0000
Message-ID: <cki.78CE54C315.USKC057GQE@redhat.com>
X-Gitlab-Pipeline-ID: 356137285
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/356137285?=
X-DataWarehouse-Checkout-IID: 18051
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============4544463418886074537=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=X84bu+hi;
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

--===============4544463418886074537==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: f87d64319e6f - Merge tag 'net-5.14-rc7' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/19/356137285

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.78CE54C315.USKC057GQE%40redhat.com.

--===============4544463418886074537==
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
--===============4544463418886074537==--

