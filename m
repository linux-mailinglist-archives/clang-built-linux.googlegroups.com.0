Return-Path: <clang-built-linux+bncBDY57XFCRMIBBMEJWGEAMGQEEBHU7FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFD43E1D26
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 22:06:09 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id z18-20020a9232120000b0290216ae9088ffsf3318566ile.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 13:06:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628193968; cv=pass;
        d=google.com; s=arc-20160816;
        b=BgLyMWlCuAJ9/qh3E4TK++LT+yBkGkPYVPkBhJORtC8zlTR4bIgGjDGLi7Zr4svF6W
         56cKXjx8ZuR9UvKKcR+A7n8ii5vJBmcd9Hyv+QCkvyAcZBUe8oNBFgtXzIsq2lShSRiz
         MSA5lYpLcs/6kAQGmEvU+Q+tdp3ci7gHxyvvr9QJjGuCTJU8NGt77NXOAbbTSnE+Zzko
         kOwTWhI7o+GLpkIoEF3u2Vgz9RxMdCOqVkg5mBs0VsiqH6il66kq+538cjr3iCMzDS/k
         bnKFehj44i2f/1bSc1HHCw3JeCDqONeYya6ildWLL9cFt40fSqKh/0RKTkuG9txr7+Lc
         v/mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=l7HhyN5vIef64rOOa8xAxjGiLg3tl4JQTLub4TI7da0=;
        b=MyjYha9mA7F+DivWYH8C/GKyq8QBxJ0j+ozVoEXDrdRH7qBjWdRsfuC/Qzm9Mk0HdF
         vUmDSTXV0M4FDYra2Ao6Y2fcHuYtAVDJXoHAuwiaXpNJwh+NO1owrOYZmK2PR1sNXsuo
         6vrCZQVvWF1Ya/WCf2//slDulDCGcKKupqd+sxEVzwbnlElhNPvx1WiyoFeRsaRZ3zga
         59Z70yP/sbLIxyy/HvNEcGMQSWcsheK1kr9+skrIngA6RiFKdTQ4Z1iqWG+PYdDCMnzK
         Dmi7h7JQPvMuY3ALrdTQey7d+3jOKLDsbgIEAQZmqO+m2O8Cemsy4D8g6yNbRW4VZtM/
         CWKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IEotxve0;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l7HhyN5vIef64rOOa8xAxjGiLg3tl4JQTLub4TI7da0=;
        b=Z/3RaF9uPaJ5DiRPbIgHQ3RDFVzQUTM9AjwAi0PSjzsXXWptrz8kLdtn91mxrjrTsE
         GwzkVMHN70r5rw5PbgVExxQdJDDjvfNrcbkmTGEFLvglD4FYWlRgHKnPGoj/y30iMawy
         LXxpvKU85T5YnJNjq7CAdpy/F0biBNXMgAbdiCmBJEKUX0n4FHpHK0Xe+iqaqXyzM1l3
         2f6KgbgOg9AR5EKtg91LRRbWJi+c9UbYjfCRVDIBFQI38KvbTKTwA59FmY0IxL4Wg9l7
         +UNisPs8cMakK6R1fhr09D92veIx1hC4xwXzy3Xu2JJL6koL4KP4eyYI0K3Yt+cwt3sW
         7gQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l7HhyN5vIef64rOOa8xAxjGiLg3tl4JQTLub4TI7da0=;
        b=VEoXhV1DTccSjro12NafQg3Pz/8XbcPvtQv1OG/nkz6iRqz4Jzd67ZNlYybY5wTbFA
         J1lMYCHqST39MyvJ69cIjOCUa5nL/0X+UDG8+1A/5zDRdCKiySkT50EadJpxi+ghaa4h
         3RUhKy3E/SsioYLadBA+YbQKUJihpNwV+i+Ng7xBK5HkxzFdZG/00haRDBwP2O8u91AS
         mFWPKBzduEMOhm0qmX82v5iC0zSNkjpyTPLF4GoknNnJYPbufOwW1FZTH6IsSq52omXS
         QFdS2SqYGfNLKysqwUarOa4eCmL+ala4yxPN63T/KY3lXYbW72iB7GlvJe77tYOkuc27
         PBEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JGNf5PYqT5i3OhWiOd9L3CmDc6sMQM920RfZjOkcX2sGCZCYc
	4ynYEazKVO4rNV5A55KPyIw=
X-Google-Smtp-Source: ABdhPJw/zxjlE0Pq/Bt2lg6lmGOQ8uMw+2M/luOnOKozBomvnSA+ym5BLOOLkSoxKIj6c12YKk+o9Q==
X-Received: by 2002:a05:6638:538:: with SMTP id j24mr6153760jar.59.1628193968411;
        Thu, 05 Aug 2021 13:06:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1c83:: with SMTP id w3ls1452242ill.9.gmail; Thu, 05
 Aug 2021 13:06:08 -0700 (PDT)
X-Received: by 2002:a92:8e41:: with SMTP id k1mr180274ilh.276.1628193968028;
        Thu, 05 Aug 2021 13:06:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628193968; cv=none;
        d=google.com; s=arc-20160816;
        b=inocifbilDHRlmMyf6LfEQtgLF1WYEM/CNuNacJk+apt0343nq2rW5Hi7O85S6/6bc
         yRMZnfjOqRzICyf1neqy6pv8mem98VsC2kSN31qEU1xuLx86rvZnRoMhZoeTCdDCfvMK
         rf2w4dCSWLAKzvf6Xhmopj/pJCh0aJzZSOEZodmqZcG9q7PSKI2fk2MBeortbEBaf/Ls
         mBRpY/0GAFApXYqHh22aG8uKvPb6N/rNkBXWelsNNWDoWVxnFCyuiyd2a5D+VCjqRGEE
         0VL6II/D3+WJvBDvAPAESEJdJr3hKCys1QICl/4ufJNaQkTDW7mtx0D/R5050qPcxYEj
         aChw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=Yvb92dY/SmxXjgFJ3ZoRh8mLugsjNK/3ocFXs9951vQ=;
        b=K5zbiN9SPXT5m5iV8a/xqthohZu4+g9b/cHLCE/5oMbFyDuTaf2Lsh3ZRH31FF3nKd
         xxTtMTtYAVQ6v6wytiP8+zfICiD7VDFCD0cSPC6fA99koi4IChkTfr44RPNZ5P6BW/+E
         OC6UT8hAx5M5Up603F/rf5+n7jtwZ/FGJ4Pl0OaNnHwOom88rvvCKZC0UYcopoXbdg3V
         Kq4ug5M8DviSoP5ikP9NtNR90LliXOQF8Oc/a7PFdy35Txpvzn5S0KYJO/4q8JKPnm2G
         x4AxebG7I48UbYj2vbZZBXdyAvrCJ3SWWRQ1JODuB2F7/nAnHCJBxgeqMWnlsc+yO9bI
         sGtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IEotxve0;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id o6si297797ilu.0.2021.08.05.13.06.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 13:06:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-559-sc0xs2k4MvCFH5VHKMtrug-1; Thu, 05 Aug 2021 16:06:04 -0400
X-MC-Unique: sc0xs2k4MvCFH5VHKMtrug-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6015B1006C80
	for <clang-built-linux@googlegroups.com>; Thu,  5 Aug 2021 20:06:03 +0000 (UTC)
Received: from [172.64.4.14] (unknown [10.30.33.176])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4B3608462D;
	Thu,  5 Aug 2021 20:05:52 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, e0448092)
Date: Thu, 05 Aug 2021 20:05:51 -0000
Message-ID: <cki.4F761DF639.PEY35IQ1XV@redhat.com>
X-Gitlab-Pipeline-ID: 348758554
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/348758554?=
X-DataWarehouse-Checkout-IID: 17376
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============8242721079738496168=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=IEotxve0;
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

--===============8242721079738496168==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: e04480920d1e - Bluetooth: defer cleanup of resources in hci_unregister_dev()

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/05/348758554

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.4F761DF639.PEY35IQ1XV%40redhat.com.

--===============8242721079738496168==
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
--===============8242721079738496168==--

