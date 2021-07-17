Return-Path: <clang-built-linux+bncBDY57XFCRMIBB673ZSDQMGQEFO6BJ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B32C83CC642
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 22:30:52 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id e10-20020a4ab14a0000b029020e1573bdb7sf9387902ooo.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 13:30:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626553851; cv=pass;
        d=google.com; s=arc-20160816;
        b=iqceuE6BfWwrQJleOrvmsWkyk8CRSRNT/eKj4eo6s8JL/CrWx8ULyNwmMWW0kKZNz7
         DEm8liYPle7e8LwJ+jFDV0cmmSssqnVMWXi1+MaRRmFA5dIPqWApkH2eJB51Am+DjPnr
         J44Z4THDSYDVjtZHZKfkdBquMgujXG/O+Tj21xSFvAw0hho34hBHtzcIRsu+RFFqJHw2
         GGPgG6SYWs9hocwRPd2MnhIxfVGJGUi0yNNee4X0Z4YOJwVMlCtv9DqfaFohx0TwzDmT
         XT4dG5+3mgTv9m01oxNjcZ8UX3DkU/DWvs5/cz8BZLOBfpxQlnDQlpAn5YUlZhlz86e7
         k9qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=m08ItgcuFLFETYB1f6UijkRSheDy3XdWWdeBQYJm1y0=;
        b=Qt74Iljclme0qqkdf5yQ5LhpjZ+ydpD/svg+2mAwm3lGD9pNPQOS9CSl28t4h7csBp
         1bKKBo2aJDjQjCMyjjEAPaji5ao9J4wE6JxhoAvXufowxPaJ6Zw5JKOUQ3XCJnY+udlw
         bPmodTcgja4fLZmHDKX3k4/ankvOeDFyBAr+l1pJtVfNq7QeWbZKHnsyDI4eOmICRj4f
         XVKZ1jqVT9l/BN+P4jRgpsb8sqmiVScgjmuXGru4NywmQivwubi1c8cn1+zV3IKKfLe5
         62QHxho3smlEuH5I6igriP8Rtj8DfSqYlZCRrwcVfUDzH4HHoOz2xvH/h7jgdsFu7Z4V
         Qjxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gvQ1vB30;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m08ItgcuFLFETYB1f6UijkRSheDy3XdWWdeBQYJm1y0=;
        b=P5oYrvmVVjElS5hsvgaYEIyDcs+iN8pmgxT8k+SxHREoJplDqezaFgVyko+TSQn+Cg
         44TzbCWaFgmF8RiBVQcjgYQ6T2e8xlgE3iWgHZxwkyZzVPRUJAWrhlcLvSX/YEu99ZyT
         F7gXxKFmZ/6Uy6D8rMX5T/wUZngcaa0J8ZCCPCBIArfNICs8nB2oqwoIyKjE8drc6lsp
         /CpekKYwgrteLDFcHMo8ssINUIdpExxhUaQWCCDbL8GZ19gTNtgdi/whPGCc8t2Xckwq
         VFVlyRgHzaXZaXSjUmaD/qGNmPDPviKQ2rdUiDg9aGBoI9k2ujjVyPvilwkNfauc+cnn
         pbUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m08ItgcuFLFETYB1f6UijkRSheDy3XdWWdeBQYJm1y0=;
        b=rLI386wykp6Xhvy7x2oFKcLaChI7Y2DZl8Q2V6+AgSaxPxeKdWmecm5Voqq7WNM9U5
         6D8lYtAobTh+I347ELwQ/ZibUxUe0jqQeqCpH4zSAj67gyojz8UKZ3aKHbujATWEj1Wt
         2HSJl/uNsSmRyAesepDwB7ng9dtouE2IfYLJVOr7c7IHY+mZHs8Dc2JDXFXRPssQcZob
         yB1I5T9ADMJjpXQf4BBE8TagVa+OCZlZSkwUrhFoGxR+qTEwsDwHOdplnPlcoNDsC7G4
         FFX/OGZm93wq6XrenZH7UK1j1Kil4oLptHFAI0LfgxdtAgtcwTOQaepL6wJHmB6MXBbX
         iJUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53377ZRXoREQWFAGlcq/PXjFOuQa0CQ7Yz14Qr649LvpchC5suDA
	P/j17633xB4ylJHGjJo5wLw=
X-Google-Smtp-Source: ABdhPJwQRLaAbBArSx/2ZQ2OoDkIoo9jGXo3+Ur2dRuOSPmGl/gSdV/82OVZ2zUeX5K7GWjFTcIQ4Q==
X-Received: by 2002:a4a:b60b:: with SMTP id z11mr12438921oon.57.1626553851379;
        Sat, 17 Jul 2021 13:30:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1403:: with SMTP id v3ls5496793otp.7.gmail; Sat, 17
 Jul 2021 13:30:51 -0700 (PDT)
X-Received: by 2002:a9d:600b:: with SMTP id h11mr13268633otj.313.1626553851062;
        Sat, 17 Jul 2021 13:30:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626553851; cv=none;
        d=google.com; s=arc-20160816;
        b=vBgdr326XIiMN2fPv7LA9s/zvq41NNMjvLVIh9suIQOAqEvi8UEElH4PRpTRDHo4o5
         vjOsPlCTAMMdva4r2IE2snul3ZHPuPRJfdBiTFPMISZlRVywgo+XjgX8qhhzL2hHSRMW
         MWP8jFl+Sm33+PVrhFD1ng78UToTxD1YTZ3TBRpe+EdSi0EhQxIMPHvOcre9T9cfVarv
         1wp292ffwsmqm92z/FGsOqAo5MqT0qVaMD+wHmNlQ0KWAi1VyQzIM4UOPtdzxDd3VssY
         fC7wpGq5wb8nKsT8ksV4LQpnG8D7sslqJY2xvJWuZ00fsplj27TgyBvW7BV4XFL9K7J8
         aWWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=enqSYPb6LgQFRpEdtF3W5aKhU6UTHtjIYzC+ouAkZqg=;
        b=Te4EZu6Y82BfEiW7t2AmfKMiF3LPSpT58ltneTX5Flhdzoh6UEFL9TZs0AurZfUtJd
         TvJ8JjVd78UMChNJtWYcq0o++Ec7Kfm9b+lvZN2/Y8ZrxzfUSCz0x1f8tPLeAKRvCk5y
         8e8jLvEhPVhgwmiUlLcw5HoEJ7Me789og1nYbDY+k45iBaFc7Y09TOt413cY5vBEv2X5
         YIwckESzIo40tcNO2nX9QlDoiUz+Jf/Yy27iRy7y1o7r1DKAWiCsnLIohkpiVwPePzfd
         hKCSgHypDc1C/PM6njPyG69uAWlt/HOo4YuC4WqAKUsI1wLtFybZFaqoTAB3dcbDEnvr
         BkNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gvQ1vB30;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id o10si843792oic.3.2021.07.17.13.30.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Jul 2021 13:30:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-100-nLn1VvASOtKpPcWEGPZyGQ-1; Sat, 17 Jul 2021 16:30:47 -0400
X-MC-Unique: nLn1VvASOtKpPcWEGPZyGQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 084FE362F8
	for <clang-built-linux@googlegroups.com>; Sat, 17 Jul 2021 20:30:46 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EEDA510016F7;
	Sat, 17 Jul 2021 20:30:41 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, ccbb22b9)
Date: Sat, 17 Jul 2021 20:30:41 -0000
Message-ID: <cki.F032743901.FY9FT3Y8G5@redhat.com>
X-Gitlab-Pipeline-ID: 338769933
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/338769933?=
X-DataWarehouse-Checkout-IID: 16145
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============3433827368849693284=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gvQ1vB30;
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

--===============3433827368849693284==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: ccbb22b9ab86 - Merge tag 'linux-kselftest-kunit-fixes-5.14-rc2' of git://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/17/338769933

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.F032743901.FY9FT3Y8G5%40redhat.com.

--===============3433827368849693284==
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
--===============3433827368849693284==--

