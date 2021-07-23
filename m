Return-Path: <clang-built-linux+bncBDY57XFCRMIBBPF35SDQMGQECXKEVYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 151323D4120
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 21:51:26 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id mu13-20020a17090b388db02901769cf3d01asf1951433pjb.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 12:51:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627069884; cv=pass;
        d=google.com; s=arc-20160816;
        b=0B39lJZak8cVMTdvX1G1yQ4FyF9Au1Z4v534MTVZRosp0fj2W7EOqFo6OEazwp3zYZ
         akKR2oZUWqKiuIt+/rCZpI1oO000BMreAPq0CeYZVJA08PNz2yfrKXZ6l4kJs37gb1//
         R4w2tJ0Rg7IxTs7Ex6+a1uWT0XSlK1bWpEHYkbLfJGT+05ZKHatyGFj5R7eH1jT84w9n
         6F3MZo2OQ6KyZLLn7ZUXkkvTN8G2q0yZGQCYh44ZJaFf8DThYNd2nsZl31vf/6ySOoYt
         XftfSbUyiL9o7hAkplExxSFMzlJLGB4zWBCSjeReSAoNxJgFPqiZ7YZCXwQ9AtjcpXs/
         Uuzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=ZBedWCZqU+eBFblMPgFfwUnQsVAN8WdoQ9FC5TTj5j4=;
        b=CP2YbrISNDzXSyvURkeknWD17qKLhwQlBII66jDKf76MEfZepwtbTvQHSDWgWwy60C
         c3O2WZtRgH14xYACaBb8imKiLqJ/HxB8kQh98f6uCyr1NBWvVqwWCvfGLfbTHc5c1Ous
         TqHQDer/p1Q7GTdUlJWXDO6tDwd2vu6sEWLn0SdXCsD23h6jDKSyIwEudXPBoMj6ZhLy
         B8rIAs1/uh4NwOKVd3LVvWqpfV/FbkLQK5h+MCRWQxa6e8FhmUXJjnNSNBqyeUX1DwZc
         mCyvWw/DQGw/ZWfoVBgwLWZ8UtfnAO7QQlkYnxUFE9tvpY211e0f/k2+AfBd/+QiUBWw
         V2zA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ijXthQQi;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZBedWCZqU+eBFblMPgFfwUnQsVAN8WdoQ9FC5TTj5j4=;
        b=sJ9MvHmLSMzvBBOrKGRxbkDwkQfrl+ewBLCSuEYXqe1+ZY+a7SS8433FB4JDzI6uDt
         bvSz5JRXHthx8p6yZzU3YDFjLCOl2i8bKhqkDRPuhNedufM3YzJFecm52vp5By1BhrXx
         F1mklwk1joRI527w8DpaEK4kMXDd/IqgXvpvXgL2EEAjnmDt9ufOKN3ds+rRq0Po+e+w
         TTKqv5V47bH6NkPtiiLWzlJC5RnryTA82Ny1LJ5L4U9hdfzvL360bZyVCXJ43TcoU6QP
         RF7enZsxx+e0LhUY4/MgL8RIKghu9TzIqDjEkdlxCZQt7jJGBefVF35jZgSKJu+bxTi8
         8J7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZBedWCZqU+eBFblMPgFfwUnQsVAN8WdoQ9FC5TTj5j4=;
        b=e+EfbWpcsgWBBEp5gwUhO807JRy4dGri6VbFdG0mEpH16LjA/F4FZHn3h7Ys/FL2Z+
         r9xNceEDJmBhlPkCqMSpDOhYmpZFw5Wvgyt6+4z/ncMKuSZvY78T1+1j0MRe7ETMhMfh
         f9lHnuMQGUiB7Z7cFJUJeYW8MyZNcYuJsHGt1YbizMtw7Yw4XgiRfT2y45MwydHNl5EY
         gmwchgMIeuNA9GESmclr/6IvYTpEk6jW4Ru4Wm1OmFqLhNbRPkoISqcOuA1UhWOUrqt9
         wiXrAThQj9OJr0Kmhxu6BPyQLy6FO59FUMkwB6jFNN3oQ5/E5I5idOBJOX+JpNBCdG9z
         kcqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PvDFZiHyln4ceRz3+lz+rINfK9LrFscpvaBXykXuV/Z9TAaDD
	opoNJSyQycTNcz9m1WzHhgk=
X-Google-Smtp-Source: ABdhPJxtfIJC/Rh4jrJvjT2VNxYXKj1LM5tvhhpAJDKpkqtIQKv3ePeu9NxnFmvEkkgF3WXlgYanCA==
X-Received: by 2002:a05:6a00:b46:b029:334:54db:af17 with SMTP id p6-20020a056a000b46b029033454dbaf17mr6133663pfo.26.1627069884495;
        Fri, 23 Jul 2021 12:51:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:76c5:: with SMTP id j5ls5132909plt.7.gmail; Fri, 23
 Jul 2021 12:51:24 -0700 (PDT)
X-Received: by 2002:a17:902:74c9:b029:12b:60fa:bde0 with SMTP id f9-20020a17090274c9b029012b60fabde0mr5030221plt.8.1627069883931;
        Fri, 23 Jul 2021 12:51:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627069883; cv=none;
        d=google.com; s=arc-20160816;
        b=T7sR6PZaRNi0zcEQgGJH7UwSrLXfVKQFesgOM9Jnc7mQXwsOq6Ak3LhM1/Ier2IAyI
         di9YH6oTSekjwEW5IeT/TP7xTC1UjwSRFYIXK8JYGuDgVok0f4+5nLSoFag/YRCHJXFB
         NAx5+M/4lBr5tsw3jTvlqtZEzE2EZy9MI/U5zoleCoXdSubisKfu+H1yT8bqD/Onffou
         rGXK4owhh/Sew6m82hii9r59tgIgMjNuju4ZH7ie/2YC50S/ifRsf3dN6nvncHePqxAv
         K7/pelyMClgmUP1ZYJVnDtxuivNMtu0TpkTiiK+dJ32rXByAIirA25ABIhl07Bx3ePZG
         hUbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=logTgBNgJMmK/1qW/KDVN1xU+Yr4V/QODa12pvEoqK4=;
        b=rGRKJOmidDWpGVfOupvIrNHV3wvHn9cE+osUdrWYrmE3YiUD2WJxCNgvt3YG7tyYcC
         zx1oMJykt61TdPE5PXhj1vdaLmmyCtXknsnhRnFPyIstPByTKLvV0KHTkV8njnDUMeXD
         HwcqY1K0jD2dXYzsNc/zobc1t+8KJb2WRUgT9IahaVczSWSPxZNkFKiUKWnDl4xQnWHc
         I/j2Fi0M/dPozTPKrpvHiCcLRKXDiX8HltFzn8dE6MitnkjwJBpF7XWbo2C7BGqjpPsv
         Lk8cg4hr+c60/WvYPK5d9oEYAJusz4blkcHIOtV9DbiUgL8ph+nzqrU8tRPdBDqknZu5
         GAcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ijXthQQi;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id p9si2852801pfo.3.2021.07.23.12.51.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Jul 2021 12:51:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-92-abzUUASjPg6UyIgByW1tRA-1; Fri, 23 Jul 2021 15:51:20 -0400
X-MC-Unique: abzUUASjPg6UyIgByW1tRA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 462D387D541
	for <clang-built-linux@googlegroups.com>; Fri, 23 Jul 2021 19:51:19 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9DBF91970E;
	Fri, 23 Jul 2021 19:51:15 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 704f4cba)
Date: Fri, 23 Jul 2021 19:51:15 -0000
Message-ID: <cki.CC5730BB59.DKFISWF6A9@redhat.com>
X-Gitlab-Pipeline-ID: 342071419
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/342071419?=
X-DataWarehouse-Checkout-IID: 16547
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============3040771076437391465=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ijXthQQi;
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

--===============3040771076437391465==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 704f4cba43d4 - Merge tag 'ceph-for-5.14-rc3' of git://github.com/ceph/ceph-client

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/23/342071419

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.CC5730BB59.DKFISWF6A9%40redhat.com.

--===============3040771076437391465==
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
--===============3040771076437391465==--

