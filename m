Return-Path: <clang-built-linux+bncBDY57XFCRMIBBBOHQ2EAMGQEM2IXQGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FEC3D9558
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 20:35:50 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id q10-20020a05622a04cab0290267bc0213a9sf1512947qtx.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 11:35:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627497350; cv=pass;
        d=google.com; s=arc-20160816;
        b=pyYcG/rNTQlxvk6I0Q5Yhlrn54wPlkpYaXcU00Y/tdXZ9nusVPOJGcddfkJkPDrTVY
         ql1JLnUCPNqvfOhw8llpAUly7N8l5eYk8FT4K1gQxSDsRpXkAEZrkkJvZ9kwp9iyCtjk
         Vn3eijoACKPut30Z+wqvUaldokzNrdJlxdhedX1uZQhxGtK9fEx6818wy3cXuCGBD1PI
         uWX2Gt1oBdpw2SUNYxPjeRGx2RQoLGGuM5ORMwuuDb+SCwxqjPmo7FiYZBpvwMkC/mfl
         /1ItSqgOj0G1PkR1aeVoxFJv571e9+Knx88L7osr5jIZI9zzcXSiso57nJbGhjxFOGAK
         KEJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=7tbdenqssI0pu3AKMmvtvI6TW6hvasoOSrSJI1mEIAY=;
        b=AIa2r5g6tNuhzPNslu77g3g+aqmVKIU6I/LCynF/SaH6emouIMSGLYRYIp1Yfrx4Vh
         9yXi5XRR5jpyI4o67ySNssPiluqTItjCo+q/31UMKmEXuTe0Pkqcm0yuvWKTBcsBCi1g
         X4l2G/1OZQn2D5h+gHb8KqFU/QxDAtrbVuQb0miyZJb2/KoLtgFjzqDUlO8Xlp4Xie8x
         ZKNzndrcp1cj3PLlTCLRk/55+ZRD3kn0FptEiEZj8VYjobcYDS2nWLKDw4qyKdilp+Uy
         1a14eJvFAZ079vxVFwXldsKlTMmoX718twhkjUaEbyJdn2M5Cuu9W5PMRg1ZYrmYDqm1
         gl9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=V9cXR87P;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7tbdenqssI0pu3AKMmvtvI6TW6hvasoOSrSJI1mEIAY=;
        b=SNzzfWYFkD87UFoHf2wbEvOst5Y48KpluW6/MGJJCUqFBF84KNkA/2gBj3jtGdKQPw
         kD+S8vHdKS2OO5p8Y+IbyW8INWq/2j1pS3flsBMi1TquZR1PdNdKcatjT3P7isuOyfs6
         CA5EzRYtAZYBB3JIalsYE0ZWOOB5sph2S/AQCjbKDSqejasbzZf3EuerDh6bnXeU8rgN
         engU6i1MY5wJIa9z9zxcn5JBTJLnyvGSpNcL8UVkDt6QqpB0AX76/red2jej6Ix3diNF
         jMbS0OVHrKLyFNHPG1HQKKunVeZhAJ1Hjoxbe0B3HcYk/AVMrCo3Jej5S57W0GMWUOzQ
         OsFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7tbdenqssI0pu3AKMmvtvI6TW6hvasoOSrSJI1mEIAY=;
        b=FsaKl7XQOAfxrI+eYlBEitVDrp2YLhGtNvMSraLPvO2OW+Vg+K4gBMDc/KAZsG2LoT
         2HHIQejVzB+r3r9WLOrUne8GBFADv8Czls9BcCK19uI5F4MG52d6yWj0qNerBSU8h36W
         xBvJtpGL6NYMUFYTb/Fzwz4xBRYRMgjA5+UH+hrvlmyQHCZC+EVDP7sUMZWsoNhDVgVs
         UFEB1XSo9Z/DzkBuYlVAa/3ykfh0yRKVHcAy6wD5hSNyEsjschVZOJg44pUJQIzdSJBc
         ZprkHgooK3yqOElpDIMFxkKWX7jozRp4ashmqLPTLdgF3ghbkfWGD1aeVPLOH/WqoXJv
         c53Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lSzSIDaWoxkgUZBr2jfWF0MwB+xM45AH5xXkrQ7oNxodeXc1o
	6x9kCNJcXlYWFnhzrJ0NvIM=
X-Google-Smtp-Source: ABdhPJxiM1r4W4yVGGEIfzR4mLuBZjG4ZDtW/vrlzZuvsgTCiQXzdgPMJMQ2ZueUIPzWVWR0SgChmA==
X-Received: by 2002:ad4:4e73:: with SMTP id ec19mr1055209qvb.16.1627497349839;
        Wed, 28 Jul 2021 11:35:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:b08:: with SMTP id e8ls1373396qti.3.gmail; Wed, 28 Jul
 2021 11:35:49 -0700 (PDT)
X-Received: by 2002:ac8:745a:: with SMTP id h26mr835125qtr.181.1627497349387;
        Wed, 28 Jul 2021 11:35:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627497349; cv=none;
        d=google.com; s=arc-20160816;
        b=GVYVTeNlLArq6lO59UpVjzbN9rLCVjibT47u7zQEF1mv7Gai9+/JyGotuOLmlvUhJo
         jjhREeGzbkTzADXg9T6/CrLHXz0wyfMucJ2xuhb6kZ/Z6fu4wIVp6TRGLGpRuzIQ+lvf
         BXlvhbrRjiHqJRvk8eFV7z5femqVauUOSSuVEC4xkw4GYDBTOv2h6/usU+AUACr9l2cn
         qELXxnEW3EemvxMTOIIs+AeL1cyvTAvxU3aanRdaXGCybc/tj2xvYlt88+EOOg8Me0y0
         2BCD0LFz6h43DDOTynrBTX4pXfdG/t3GgFXC08JPUFNxs7Mk2XNgQKFRTC2kq+W+okMK
         RHVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=peU/HFK3I3rEeSp1TGomm5D7+MyWvSvaSFtiElB2YFY=;
        b=VsVp1QbpS7Djl2t2OXdj7m3lvEMcyEH+Qoa/4nk1SleAC8+hH77irtWCGHhTLuVVay
         sEWQNQOwaZeUXqeOcxQa+0Yd7TdINUeHu8wN3Bh9km1ZUzVwLK6s95HkET55xcAnJwIq
         Jd5twdY28mqeWDf4ZxWT9rJmLcdPDMTftLi4eP//7eonS6dXjd3H+xw15T82q27NtfD/
         Xv9mNy0xsozDt5vKS4gyXtntfS5dW0Ij2eteYSxAuyqgxMucAbRDAB8VJPdD8YG820Sg
         fDE4XF1JDdGMCD5UDTSs95MpKY4wlk3EI1ZgV2u8ZVZJ4TpcBpDHyNfWrjkxEGjV7K7V
         rqGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=V9cXR87P;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id m4si50728qkn.1.2021.07.28.11.35.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jul 2021 11:35:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-69-h6khHmyxMAOgYdlkippDlg-1; Wed, 28 Jul 2021 14:35:44 -0400
X-MC-Unique: h6khHmyxMAOgYdlkippDlg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F314F1006C82
	for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 18:35:43 +0000 (UTC)
Received: from [172.28.7.143] (worker-002.nodes.prod.psi.rdu2.redhat.com [10.0.180.74])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EE87860877;
	Wed, 28 Jul 2021 18:35:39 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 4010a528)
Date: Wed, 28 Jul 2021 18:35:39 -0000
Message-ID: <cki.673445FE54.3WO5WXG890@redhat.com>
X-Gitlab-Pipeline-ID: 344424402
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/344424402?=
X-DataWarehouse-Checkout-IID: None
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============0497132006787061895=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=V9cXR87P;
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

--===============0497132006787061895==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 4010a528219e - Merge tag 'fixes_for_v5.14-rc4' of git://git.kernel.org/pub/scm/linux/kernel/git/jack/linux-fs

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/28/344424402

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.673445FE54.3WO5WXG890%40redhat.com.

--===============0497132006787061895==
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
--===============0497132006787061895==--

