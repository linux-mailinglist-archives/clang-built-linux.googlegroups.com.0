Return-Path: <clang-built-linux+bncBDY57XFCRMIBB3VGR2EAMGQE242EUMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 072173DB2F9
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 07:51:44 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id on10-20020a17090b1d0ab029017773c0b9aesf3422893pjb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 22:51:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627624302; cv=pass;
        d=google.com; s=arc-20160816;
        b=MZlnzc1zLJT1+NJQWx669yh0BeRJONITRhKpf1dGwtGJPZ6q+1CUmaKe8L9LFO4Jiq
         c/0Jh6VkYvDhT1ZvC5sKOO2lxoUXyFgWnl4OH97Dnjwv+i/d4O0TB/r7gLgyfeZFo6e3
         sKQlqYDQ61U30lPnpCktW2HmMvEK+iRmUagJKhQIYhsXY1Rd5eQoQ2h1ges1fnpcldZq
         vUXwOGcP5P6md2GPoBafdokWgGVCMh+z8NY1MWQ/xgGJao7TUBVVW/We1fYL1i6igr97
         j8HSsB5q6fzesjnZhM9dmrrpujdBzCNYlnjfG29CPD3J2OFcbL7v0ys4JKfVKkKk05qa
         BF2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=O3L1wimxKAxYAlbzcp8vQ2YkUJTMVdpZ2t9M7BuMgaE=;
        b=GyF5seodIPdCnasTZgFpPklo4HUo1btugEa791so6xs/gqBkIWvESQSEgUWsoZJrCx
         LVwDpLFQaCx3AF2OD27QD7z6h7HreB+C97hRNnBQ/yaex1D7YSJb0dX7egSCa549I7H3
         PiHQUG0hoM3oj5laOL6etgRYO0jJ7irOwfBiYgKvJty3WQjFXRuAS0GKGtSXrS7wLpE1
         K2gegTgeIlnuQl4sErBYmqwDHWD5/SEAuekmo92JdfKzWYJoZk+K4NcuFncvfrJha5Ed
         N7yun9b0oeoETBR6JgsETtwESA31r5TLtS0gsjD6EaC5y+A0VMqfcwQApRrXNOsoRnPW
         U3gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Wv44joaZ;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O3L1wimxKAxYAlbzcp8vQ2YkUJTMVdpZ2t9M7BuMgaE=;
        b=TGhm41kId0n28kGgAq9eqUMWMK+z7MkkM2gVoqDeImasznb+ClewPQa7zw1tu8zmV5
         SHGdcbbheEUcZe1fho7DhRC4d8UMEe+wbsd6BwDUDTGTrGlqPAh/pMVzV2eUZIYfRtjg
         o+zuXCPj+t3ymyqv7+lsRF08+O1UO68QXEZ4tK4lyB7Ibvce8OmMdJbmf2DqffFCuguW
         LooQzA8CdmEhTqgyk67rhIfb0xZhh/aRoXspQpu31jiBiMWCnJB5MZakStO8zNa3rX8g
         pAcIHR+3fihs7rdN+tUD+O2SEr1Wz/E6+GCn9kZFnlahA8NxV6v7hx7TMj1z5NMWh6l7
         E2ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O3L1wimxKAxYAlbzcp8vQ2YkUJTMVdpZ2t9M7BuMgaE=;
        b=El3MbSoOer7yfqCb4qYSN6h/Nd0yQAs7fzlVPuXnSi1yYMXdhhfb9/yZu3p/lzZ22w
         0+hQpAFrv5aXJnPfNRBUk32aoHnHjCv3tdYXnT8MatDhIbbwxtWUqUw0uadK9c6qOcju
         s3t8onPm82ElyBVO1Mj/iMRdEkL3HpcDbjm6IHz8qVqE4bKPjgVVBxE++sZcVBE22mst
         XgNiZn216Gu4boOJTcBJ5y8tAQ1q/QpKbj9uG72yKCTsZhpQhKOPnFHguRmb4o2N8tRC
         gno9P99XsjNCtL9oAtTip8WvMScHL4/ujswctWSw3pHp4hTHfE4Q+lcuqDIW+iAWUosc
         Hhgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sB+bix15V5WJnO/bFJZ6LFwR7BeKIaqhLPmgGf6mcICSrY4oB
	4I01XGi58bBz7H3keGQlGkc=
X-Google-Smtp-Source: ABdhPJxXxKvMWBEgxz21qeQ9JopmME6NWOloMoyVOwzfLCXmhvFAdcvTGBW1ArNkuprCvpurAn808A==
X-Received: by 2002:a17:902:a587:b029:12c:3265:26a with SMTP id az7-20020a170902a587b029012c3265026amr1158930plb.34.1627624302482;
        Thu, 29 Jul 2021 22:51:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e787:: with SMTP id cp7ls379988plb.10.gmail; Thu, 29
 Jul 2021 22:51:41 -0700 (PDT)
X-Received: by 2002:a17:90b:1612:: with SMTP id la18mr1238032pjb.95.1627624301869;
        Thu, 29 Jul 2021 22:51:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627624301; cv=none;
        d=google.com; s=arc-20160816;
        b=At6T2vFv3u0+wJjuWB1+lANID12HN+a/8CcgGSoOw4S7o2CUc4qfjuq6IKd/JWrk0m
         8ZHXCnQRFZXFpMoAnd0UOOHQZur/HbM/V+ucai/B0/sS5Pp05JRDyZWq1nfmOqNjvLA1
         rIjE588kJigfa7eoWvwazJIiiGUrKUx6jckuvx2cUK7Wa+BJOsYUq6AnYzxMTxMjFVNW
         /EdO7KDDO9uv5PqtkMDmJvF6RLavnyQXH+DKwNDUaaDv/c6G6OUxnCvhNtSJtAjCVg7S
         dBmNBtDP7TMshbTNxr7A4pvH6mUQEsJxGAcQai5xB6vZcUq3z9sXft0WAtC4KXT+QjDZ
         tuxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=8E/d9jJEm2wRc4Zh1ord0gxzp1jCD8ij54lVWLC4/c4=;
        b=Y1/Z8QnjaOtNsTEmQzrAiE7q+1TRpjuK+mOvrvv2zhUY/TuvYJ03vQzrlbzQQyX/Ns
         SElsq96JoIacBQhL9iYxLuAsWRC81+VC4qMiao0VJeoK+EjWaTt7/rz/mE2Q/6FpGoaK
         5JOmSOlBNHFVjCJdjRAFCY0ch1yM5DMI52WhcEqFu6WK4N5drLQLKPLd4hdOunQiHrKX
         P62c/2U1hGIvVoshuWtd+HmWbqqSuNV4Bu+K5AzknZWk2xy0JYQrWPv/0gpmgsfTfG+P
         pkpOxayHFfYwiuiyz6Bl9RUgO5EDwgCkf1n0kogA8R1qZzDgbzRpQJ396w4TnlFvM0Z2
         fNkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Wv44joaZ;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id w23si33663ply.1.2021.07.29.22.51.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Jul 2021 22:51:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-326-YGAOEpODOj2JZy8Bgpbx8A-1; Fri, 30 Jul 2021 01:51:37 -0400
X-MC-Unique: YGAOEpODOj2JZy8Bgpbx8A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE768801AE3
	for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 05:51:36 +0000 (UTC)
Received: from [172.64.3.44] (unknown [10.30.32.237])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D3A4C5C25A;
	Fri, 30 Jul 2021 05:51:32 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 764a5bc8)
Date: Fri, 30 Jul 2021 05:51:31 -0000
Message-ID: <cki.4EF7328570.4MTVO3Q8X3@redhat.com>
X-Gitlab-Pipeline-ID: 345289845
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/345289845?=
X-DataWarehouse-Checkout-IID: 16909
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============7085418913133588705=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Wv44joaZ;
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

--===============7085418913133588705==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 764a5bc89b12 - Merge tag 'drm-fixes-2021-07-30' of git://anongit.freedesktop.org/drm/drm

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/30/345289845

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.4EF7328570.4MTVO3Q8X3%40redhat.com.

--===============7085418913133588705==
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
--===============7085418913133588705==--

