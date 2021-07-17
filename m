Return-Path: <clang-built-linux+bncBDY57XFCRMIBBTU2ZWDQMGQESB4MAAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E1A3CC67B
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 23:36:15 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id j6-20020a926e060000b02901f2f7ba704asf7742732ilc.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 14:36:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626557774; cv=pass;
        d=google.com; s=arc-20160816;
        b=dg2U8ji+E/FOrRVzWueMWms0xj5fYvE8xc92S3fpMvvcL58+EEqyhmyL6qXV7hYiMl
         4YUEwGLgDhlaOb4M3uDpCxxVLNo7JVaA63AK7K7Rimd7wzp43ziXZhomJF3dL3DH5OE6
         IZCWTyo52+LgaiJgoOqPoCTKYKRuy3QNU6r6B0n6wywr441b+ahHmsWY3iLM8bu6/WzR
         A9e5Y01GbR8dg+oRfEJavFqCVJ9AkzRq2O7BAzuiGq1b1bJtySaR6BQ8CHgocgi8Ax6I
         40tOQy0ngKqjqllAYDaD6LdV6ed+NuN8m9CKoYfIRPGZtnqbei8mrnUDk9GEnC/hIyxZ
         26lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=AlLc05xYHWjKybM4zoAdCQqNkF4ly7TYfxY6XFk3RT0=;
        b=M6xhS5OSXczaCw0eMM77QWc3IpyzO66DPJqg/z0DzBYwYdYZPkrmvx5sGbuAYnljKM
         Pu+Fq83zQDAmSNvkIVaufNZa5vGzAqF9C4IloBtRZoPI58AjP5TLAN0DpHCxVyLwbvPl
         M8YA/AhMJRq3/q5DfXZztwYYu1dAjmFUB6uI+362eEw+kPx2LI72/ICOW5RJHLLp6NH1
         mH5NNP5tqVyWIZf3otY/aSVPIEV61P6YoGYnZNBlpae+YhyJ/utsW/7VJa8/NJyMoD1c
         0k12quLcH2wb7KSKV2KcQhdUQrEEjwMsDLWgWIKs5rJcHxp/RK6vV4q9xH7RYFRbOOl8
         3ljg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TzsCt9Cm;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AlLc05xYHWjKybM4zoAdCQqNkF4ly7TYfxY6XFk3RT0=;
        b=fHHDtk9pfL9UnJNY1XMWXXFV1z9agufpdv0XEPefyqLgYbp5KKb5JXuCRmIBwHJyIJ
         HGC7+2ZPtLIexnriMw20U9d1//dS9Ld7s+kMkuynvXsKUImyabIglGEfQgE1iDlUJAOq
         9n03OlQUyiwFoM4OUh5FkFeSz9z/6ccjMkbH/tf7kwA+0OFEago2Xm1uhLmayY53ZilQ
         Wgln5pKoWV1XvMBVPzq4KRhbq9eaU8wNqYtWWSlZvTOlVuucQevopD/jK+WBfRuLDDRA
         Gq1AnJoakA1zrpE+COurgOJBF3md5KX/MROw6osyS5oQ8TJEFxGDObC2pYfKhQe40bzh
         Zq0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AlLc05xYHWjKybM4zoAdCQqNkF4ly7TYfxY6XFk3RT0=;
        b=Ahc/9J1rIaZw+nQn105o2mUrJSgSlLuMEi9AyswocEngSXb2mK5/W7I38vrhiUrMLA
         MCYQoZ68fZtqrKC1bbUf6vzwPYRJ4f7d79KHNB0g9UXAGpzgGWGAzjN4yI/CcyW5qwe7
         YJI4WqPTdWoaRfVET5AYjGRcfPMkpmjQKxlK/eVJn8YMv4f1s3BKM/+I8OnoDq//iUmi
         TsXI/7210u7NddVDEdmvCTheKDXcdFxRTr3pQg47g0NMxOuJxj876/dhRdsDDkOmms8t
         DvyCUEaNoU6XTd+92zojly+mxC5Xi9N/jF84QXJ5wRH5N0GGpY9N8qq0RFgwWH3997Py
         wrFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316Rue9Kq55FILSodO9/MRF+wLKW+dRYeIo/qSGqjHYdZbcUQgo
	tQZupL3ReNxdMUYDdoH+Iyw=
X-Google-Smtp-Source: ABdhPJzePqQGh0r5fLVftsfgmx+XMYHblQyDpjuTKgjztHCFE25TqycXo1+wTs3SibLrpJp9szbU4w==
X-Received: by 2002:a92:c7a2:: with SMTP id f2mr10645042ilk.3.1626557774115;
        Sat, 17 Jul 2021 14:36:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:db11:: with SMTP id b17ls2027056iln.5.gmail; Sat, 17 Jul
 2021 14:36:13 -0700 (PDT)
X-Received: by 2002:a92:1802:: with SMTP id 2mr10540710ily.139.1626557773757;
        Sat, 17 Jul 2021 14:36:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626557773; cv=none;
        d=google.com; s=arc-20160816;
        b=DKBQI6JbA8+g3b4qkjJ2i+BvNt15ETIBudjuUGBxprUpij+8pMCSeeNCZ//rbUrid/
         oucNsjx75v0ozcmm826Q0KKjUfuhDcFFDnFr8aZ1LMNjV5hTEnl/fpxb0JhXooxhKD70
         6lYcu5QFesAdY1m+qFbeNpMEo/q1uxdeokWsr5I6ZmQMogATKSVy8nQx8livzKFc2BaH
         8wC+lpbO1pCI2jofXG0Y0LdkQbrCz2vOlsfeWE4DNHlbPTHijkItb7CpTr+jML3hNS+x
         azdJqvzAD7tC/Ps0H4azrZ35ql1nINoDr/nohgGjWQubP62bq+jqf2kRgll1NitYlfFJ
         qJag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=actIFjN6fI0oYhGDZC+hH8qRz2NnSo7WjbwJTzRRb7E=;
        b=af5/Dsmo+4bWJIM2QitFwJ1UWqlWYnGSeIs+A+5kfbpUrvn8wkE4zjGXGVdnMj8pj3
         Nup0UXxq4RGTrwquiKiQ8qFt3MPniyYBB5pTKY/nIkb01KHawV5/7fL3kPW20c4vFT71
         Ac95RVID01WIf67P/636YXDoTqYRamyMkXIZZFUP5WW9reMuZ6N+MyXDv1vEyWted78K
         J/dGfhWod0OS7V7gwif6SDJ6YDeTfldeLJMHsZ0ohx9LhpmiQRSu4fRmrODTiZzZPD/O
         v00j/Ya+H6urOUTt+BRae+GqmnbrGyvf3+RvYmuKr8r4BBuEn4+LeNhUBu+igbThsnPE
         9RYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TzsCt9Cm;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id g23si1480544ioh.0.2021.07.17.14.36.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Jul 2021 14:36:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-528-Cl2W0IgtOeuzKd-6M_YXRA-1; Sat, 17 Jul 2021 17:36:10 -0400
X-MC-Unique: Cl2W0IgtOeuzKd-6M_YXRA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 749D518414A0
	for <clang-built-linux@googlegroups.com>; Sat, 17 Jul 2021 21:36:09 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C75815D9D5;
	Sat, 17 Jul 2021 21:36:05 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, ae14c63a)
Date: Sat, 17 Jul 2021 21:36:05 -0000
Message-ID: <cki.7EF8DFCAFD.U6N9WND2X4@redhat.com>
X-Gitlab-Pipeline-ID: 338776156
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/338776156?=
X-DataWarehouse-Checkout-IID: 16150
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============0893645814773809484=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TzsCt9Cm;
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

--===============0893645814773809484==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: ae14c63a9f20 - Revert "mm/slub: use stackdepot to save stack trace in objects"

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/17/338776156

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.7EF8DFCAFD.U6N9WND2X4%40redhat.com.

--===============0893645814773809484==
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
--===============0893645814773809484==--

