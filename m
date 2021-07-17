Return-Path: <clang-built-linux+bncBDY57XFCRMIBB3WWZWDQMGQEZYQ6E7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0F93CC6E4
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 01:44:48 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id a4-20020a25f5040000b029054df41d5ccesf18751311ybe.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 16:44:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626565487; cv=pass;
        d=google.com; s=arc-20160816;
        b=rSMe6ylzGhrl5iwRvRZugDri3mEWnWd85oIYPK2ej6TrIjDLlRnBqh7fI8zRybqInc
         P8pQ7BpoqAWPvpiv6jMsss8T0Xz2dDoR9bPVHKBsG4rE86/kJYRBi3POfHvnbZ01ttwY
         Hn78+Zl/nMnZ1QQxbnq1JYD1SYzm1AyD1y1ejYQt5fhZ7XRFMrtEqxa+XFkToVT0aRr8
         gHseJevbP2rsGGof9sT7Pv/MqMowbAl4cemMcCqYhXju713IGeWLPi+MyN6KxkjxCgct
         T7eUsqXsNfLWYOHydOZVlWCPB0Y/mCP4u2Y15dYI4sgBHmSJUYnHe/3T6UFzglzv/cSt
         mHeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=qSNh7ZTkO6gxG40B5PeJo4hJ7jHWQBMkQtWHhbtHdcM=;
        b=uh47SyYaRepS5aMoHH9QWzFqEv48Hk2fmIHOIoduFNqP58Bohb3DPYgILOLnzWsOAb
         WZt+JLb/gkyquKwYwYhBIY8be57P1dGsD/qXmcSazTHHBgO4LO4twr7SjUfDQtwbHizg
         OH8wkFEpcbMxpWfj3hvf80Fv0X4AzaKPwblzScfpf8kJMWo2uUnWkrOqaCmO1hFTu1ax
         xlQUAUJO77rk/AUbsq6EewbzBq1tsU9bZ/dv6QuVhC32Us+hkscOv7KbZr0vPNU7RQkr
         jtNLphsV+aRqYq2/DakoPqSv7B9XmXgG46wzClj4Gdukt8wolAyLtYC4b2TwzdUypQBA
         u8nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GnoT+e2g;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qSNh7ZTkO6gxG40B5PeJo4hJ7jHWQBMkQtWHhbtHdcM=;
        b=VEnrRGbpfiGTUMUOkPI7bKawTN0Mkq/LQVX0uQedjP267bS6mYcTYnOnFzr32Nn906
         a887a4FzP6GBSbCTtnmVh2gvO3n+joXonKigE83unCuN+7qLdfAKdlMBUhxV5vMSnD0V
         CHC5WwfzNd9zc8beaNCA7j8vxw5Du5fofmL1rYCgBDDO3L2SGrKqECEb0iu/Ledk4y9B
         kNbGbRq5jxtWi4nhf209b/jtrULwca3jzmNvvXrA9fCNWyy3T0KCrnrC6ijijMcpPLKm
         21s+vq8wFA5+RX5ujL1d7I2PlvYqTk2W93cusOPlzvNias05PoGjqgEmMjbd0HJDyivs
         h8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qSNh7ZTkO6gxG40B5PeJo4hJ7jHWQBMkQtWHhbtHdcM=;
        b=TRx08jWJGnpwTKNXcoHS9ezMDq9lQSajsYB0cSOXqWNXyOap31uTQbfkvB2GBdcew1
         chg7TfvGL2dsdhJ8vFszIIsdiZNqwxTR6MgnES5gCK9ANd1YLcVy+lEoDcOMWhUyzaln
         H1l23dNfkvZrWFVc+w/G9tLIltAGrZPxwjABYn9vgHAm2HUsThK0WMcD3cm/mGWkR7A7
         3Jtl79Wv5A+46tE7aLUUnrEvLTN6rGto6Maa6DKcInmz4H5vq+5pfUyQkSd253iTeT+6
         v7nxTXXAASFX4flw/02WBD0NNHiHRvNbMhgCK52oMevIboz8cOLvZN2Tt75YvZ6mLhD/
         39Ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LfWD+VZHisXAkXSLDvM9m60f+JZ8ql5fkusGnK3TGj4WnWGlG
	OHO1rHmfZg0dSprI6t4lwWM=
X-Google-Smtp-Source: ABdhPJwpFYpTrTP9H9PsUpAGHxbD72cg8Ad0VUONYRzw4D+2boGZCUkhZdkSFuO3ulY9qT7/SXr0AA==
X-Received: by 2002:a25:720b:: with SMTP id n11mr22016418ybc.305.1626565487103;
        Sat, 17 Jul 2021 16:44:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4053:: with SMTP id n80ls1030242yba.11.gmail; Sat, 17
 Jul 2021 16:44:46 -0700 (PDT)
X-Received: by 2002:a25:ab26:: with SMTP id u35mr22839753ybi.151.1626565486558;
        Sat, 17 Jul 2021 16:44:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626565486; cv=none;
        d=google.com; s=arc-20160816;
        b=DiqMsxlVs3jgIlZAomycQx/syPFsHNYOLvyhzj0NI6iz6GEOA1XDrDEIDra8U6jaBe
         90RbcXANN+4yJwG7Q9fQ6zStex5UO4Lx8y/YqFQEZ19Ji0uwjmPo2JPBIJSnmjs1jy8q
         7wI3GwGy8/pE70ShYpnkMj4Un6yhm2Fk+9Id9KlO1Yml1WAMKu1L9Xsru1BVxJa77XbP
         jc3JOM9LAnIKBQO6jXIYdd4L9y5b7g4RSnEcF0lOa1ZApHA9CMhPptYldA3+mm3krWhQ
         M5hP3C32Xx1qzMh2kHgZC5XJcL0zULWnC5mt7T1fwLlARBbB0zShBPtoJ4dCfWmQJfqO
         XgyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=jDFZPdyxGEE5N6lz8da3UArhdOic+c8vqaHBOSaddvY=;
        b=tn9hn1jepYegEKPslvFQAbKWuDjO/R5Zxv+W+3EBVyPgBdNm8ltc0XixKZU8XlRcDP
         V9wYf95Qg+ZzelEmDoPOWDfXsgazuTr/EsXMFjLjmIxwERkRz5K3Gevjm1ZwmP0NaOCt
         /Hy6uYIMRrWikHMIW2NHjM+WL0M/9xNH2PnussiHTYI/usV2vU+9DwR++LLlIbTIeu2E
         0S8Y6zzsktWCOFeg9H52/BdEFuzS7jQwoM5IdG0BADlvx5rMXrnkqZ5Y8k652h/dNDhZ
         qjlFQ4DMN4xRpGOesuObiPwTp88xYYw9re2QCBDxNVg3/LbYsgY+gGvLikq1Fe1Y/fQo
         /lMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GnoT+e2g;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id o187si1405261ybo.0.2021.07.17.16.44.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Jul 2021 16:44:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-304-LoglvNqzM6uy-65EUEK3HQ-1; Sat, 17 Jul 2021 19:44:42 -0400
X-MC-Unique: LoglvNqzM6uy-65EUEK3HQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DAF89100C609
	for <clang-built-linux@googlegroups.com>; Sat, 17 Jul 2021 23:44:41 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 213D060864;
	Sat, 17 Jul 2021 23:44:38 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 1d67c8d9)
Date: Sat, 17 Jul 2021 23:44:37 -0000
Message-ID: <cki.84A6EE31C6.AIOCZIAKVQ@redhat.com>
X-Gitlab-Pipeline-ID: 338794896
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/338794896?=
X-DataWarehouse-Checkout-IID: 16154
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============7342421974902641666=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=GnoT+e2g;
       spf=pass (google.com: domain of cki-project@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
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

--===============7342421974902641666==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 1d67c8d993ba - Merge tag 'soc-fixes-5.14-1' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/17/338794896

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.84A6EE31C6.AIOCZIAKVQ%40redhat.com.

--===============7342421974902641666==
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
--===============7342421974902641666==--

