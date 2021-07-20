Return-Path: <clang-built-linux+bncBDY57XFCRMIBBCUB3ODQMGQEZ7UPZRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFD13CF98A
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 14:24:46 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id z4-20020a4ac2040000b029020e67cc1879sf6960391oop.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 05:24:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626783885; cv=pass;
        d=google.com; s=arc-20160816;
        b=mu5FqO3+tA0RVqfe+nMsCOo5E/nglpNT/PgzjrX/JVExXByQoviqafDLhEs2Y8vK2I
         w1kyzxVU0XQDilQF8LHrqMxphgT/VJ5qE5R5yHXOVGYsf9rWTMg2FYfiSi/SvZgEOuBq
         zaOVUQ/QgO0B2FemLWYO+qaMWlq73cNimst2ZsKMBDQICHvLtjeWhNJphvoGiZxmPEwe
         ujhhwtr58LU0PfysXY1jEhzMaRP+aH1iQ2iZ0NPlfsrW15pPhrnT/qS0kG9Ms0lBfJQb
         QjzTFZ4aD3E5agX5LmRq0FMF/Cb2uJ0XAZ6eqmbUPhrUJ55R9dF8mspxlxcPHa4rdUVQ
         LdMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=vg+54aiCYLgidV/ByWRWOBitmW/42Qs4AzvEzH8Srac=;
        b=SonI6zNZFG417rJeSceQwcyZpFkJAi6cSlHA/v23ceQPyrSBWIYZ8Oe1Gbbmxw/L6d
         OsIMl8U3+EO1MaQR3zVXzgiUso3rNcF1aGzIHsyu8wqhTQKUrMpAFZwwqBLZdpePmqrx
         vxJmG9n7RHPCIJj80/23Lw3DFmH3J7Bgqv1AgYNnMR088fmCN2hMst+FnPYzyAqcvtpm
         B3L1rjSCCypD9DDithi0s3Rd4M0U4Tq12ZnpE+heDWwwknDWYc8UEMeqr4kqREL/JF7j
         hPevZPr36rmRUFFqONsUqtFc8RX0ww8WjgvAf5SxD7WcjDwlMXCZqXqHFFkJHiJeq1Fv
         qCiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=goIh77VQ;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vg+54aiCYLgidV/ByWRWOBitmW/42Qs4AzvEzH8Srac=;
        b=EBmmMgj3Kh0VU1nhHV7A2YHq6G9oTQtPcrEfngJPTHHdJ2ByCGuVbJYZ1pG/wHJO+U
         dg6EKeRXT6Muruh09edt6SF+9HNmGWGGt7WV/2RTg+9KkZptWglcAEtwssp9Au8Aqjn9
         lQ6d30n2P+o9ODeLo+FLDsLrmbiC1+x/DR3FurR+SLGTBwC+io8vQqeHRvaOE2hWTjO2
         KKa4c/apBzWQwwNsPWGMfXzyPNE8rLL/7gdezjWvgPtrNhvEogmA844Tb1v0L1AEnsR2
         HSbjPAXdpR1oPYvufVQmL8uaf/fLfTqpqZT8VvQ1gegIHYta96VR/V3RDOaTxP5RpfvV
         rS5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vg+54aiCYLgidV/ByWRWOBitmW/42Qs4AzvEzH8Srac=;
        b=lgbqfEkHU6hhxOR7gyvGCZmVEp5t/Ie8S2r4q422VaKpOnXF/rANglaUbE40jI8A3w
         NauL1eq9mYEdADkF+CiKorbMI8Ow3FiVZhMDbY2LCiBq0WJJI4U0bsFymj504ddX0SjF
         SnP9un3Zxt7Cxk/FPS5EvnRhzkb/GIXPz0lnYQHVE+Y6Gw0RtjeY6i7slD9jwstU2C3s
         wIoszrAFyTMEPh0wXwSB/CG2tOXW4YtIReFm9BC65SWq/s4cti3otcag7zIWTLNi8AYI
         XSY/rXTpuYpacojeczyHUwhOTKKABPlqou0er342j9PelgIK1MW7d8eRSwf1ahnhH5Fb
         Io/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pUvLW3LBqHcA7HhMQUtgz0ywtL5SNbKo0OrA07qcLi55SYKQF
	Bdd5e0HYBjb5j6X5mWMI/Ug=
X-Google-Smtp-Source: ABdhPJzu2ZWujWBM+lz0NcLgRmjMH6Q8T/qURX9y23SmhpF1Ekd6cmUa2n6BoxX1oFyegcAwbDbUhQ==
X-Received: by 2002:a05:6808:201d:: with SMTP id q29mr24463542oiw.9.1626783882683;
        Tue, 20 Jul 2021 05:24:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bb5:: with SMTP id 50ls8490660oth.6.gmail; Tue, 20 Jul
 2021 05:24:42 -0700 (PDT)
X-Received: by 2002:a9d:750d:: with SMTP id r13mr21784827otk.249.1626783882277;
        Tue, 20 Jul 2021 05:24:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626783882; cv=none;
        d=google.com; s=arc-20160816;
        b=zZjsKYJ+qzmfHjdBJH04ELl7DB5KgB48a7Mpne2xGyLXyiaSZNrliN7pGELiUBoLi6
         Vwp7SexfhoRLY+OO8Ibf2p1YmTvxDMIv3zM4mlpSOw+S6uSq+zaZvMWqZ8+jYT4m/Hqq
         l3QJnyAdSA/kfJiuSOnYgfA8Syx4KP4PjBcci+J4FyoHexJPReM1vQ48pAe4z+TE8ecZ
         4dT/QHIQ/G+aUVNr+YouKqvj57maDuuCzM2mXETtlBL/S1Jy3x0KDv9a1I6iOBJD9cPu
         YWiojGanS9KmGTFN+TuiZhCn0+IBjVGmowASRHSDrHDo4kM3Y/KQCbpIG7FL86Ly4pCl
         wn0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=sGcbn8XmekFk0yYiLFOaN9TA8dWgkxc2a2hVQ7ub0LM=;
        b=mx33EmtggTeUH+te7NApn6flqQPJmENYEf3W6WH/J8By6b+d/dA1fSO3Bf+i2nJq4e
         huECiRv90cK643YQnJL2YJf5iE4dKrtQvWM1pU2TnQbcAJeUklwy45vZtU4ULEun4Sjf
         9fIPyjTZciJV8pVf+W+hDSANwjP8alamkUaEhHuFKh2txT0H14eVRC/u0bUpZXG7HZRZ
         aq995GsJpqrUg9Jq94TMRdcowv60FMPMTV3cUo0WCBzIB9hTxPy83kNwIbkbIgVSDQSB
         QGZEPzL6GrAPcHtkOf0ezh8+bJsTiUj8U1MdeYE6RDHwOqYxjUey/dZpjrtvGsLlXbXp
         vSIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=goIh77VQ;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id a20si1944103oiw.2.2021.07.20.05.24.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 05:24:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-v_3zgUiQO3m7vurb8rv_OQ-1; Tue, 20 Jul 2021 08:24:38 -0400
X-MC-Unique: v_3zgUiQO3m7vurb8rv_OQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7352A101F004
	for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 12:24:37 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C7D465D6A1;
	Tue, 20 Jul 2021 12:24:33 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 8cae8cd8)
Date: Tue, 20 Jul 2021 12:24:33 -0000
Message-ID: <cki.C655F63713.U02UVJGE5W@redhat.com>
X-Gitlab-Pipeline-ID: 339942991
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/339942991?=
X-DataWarehouse-Checkout-IID: 16267
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============8245080143179911075=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=goIh77VQ;
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

--===============8245080143179911075==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 8cae8cd89f05 - seq_file: disallow extremely large seq buffer allocations

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/20/339942991

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
      make options: make LLVM=1 -j30 INSTALL_MOD_STRIP=1 targz-pkg

    ppc64le:
      make options: make CC=clang -j30 INSTALL_MOD_STRIP=1 targz-pkg

    s390x:

    x86_64:
      make options: make LLVM=1 -j30 INSTALL_MOD_STRIP=1 targz-pkg


We built the following selftests:

  x86_64:
      net: OK
      bpf: fail
      install and packaging: OK

You can find the full log (build-selftests.log) in the artifact storage above.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.C655F63713.U02UVJGE5W%40redhat.com.

--===============8245080143179911075==
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
--===============8245080143179911075==--

