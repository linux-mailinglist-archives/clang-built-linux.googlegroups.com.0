Return-Path: <clang-built-linux+bncBDY57XFCRMIBB6NJQCEQMGQE7MB7E2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 494C13F357E
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 22:47:54 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id j23-20020ac86657000000b0029cb70967ebsf125629qtp.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 13:47:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629492473; cv=pass;
        d=google.com; s=arc-20160816;
        b=mPwYaqw6gax0/hX2gpdtD+E4JfbHHGWIRcD/lwcfcIpxRkdDSyUnncgd3ZILbIZ2Pk
         Au4xZqxH0inlnlJkzaYyt23gfo3GTFNv9YlpxPWNHS/xW6L5P1ELZ83As9TwBXqXSEhC
         0ESvkA5M2BVe9qONF4p13IdS6NZ0cZpq0qLPh0G3yntHFWgZDqx9AjyFIMwQrL3M6kyu
         mqw2l77EsxDJMUZZEwLczH/mUQFQycp/yBxRt2O3p79J9INyERZWvOh5NzuN531YcRQQ
         2dhVKqy/1N5cc7Yh6U0zJejC2TZcgZWyd/u/iqiFfhXNAGwlO++YOWan4qfvVIRIUfGd
         5vLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=nQ/9v30QeKBr2IIG/b9hBQdfgsMWQnKak6ZEZTMKt/0=;
        b=IxaCUbydFYT5P+kLPUx8s7PVnJsH7EI0n34wiwTFGkfth620jvVesjbxYZSaM9GLog
         MuSadO4aBSdNYKI57BHSj96aqduSAGtvrRYYBEVlpHe9JIgs5/zZw4OHU8WvJxaN8q05
         XheZuXULAIzfqvLFz/pdFGH4K7yBf17Ek713z2eKK8p0ekB6NzweJnsNrShl5iveAljK
         0+XUUL3BP5W8LkNK56t1LMaaahupFyJELCwbLGsx5UHVIqO4ATIqZhiiu+itgWQTOTFo
         jumR27VIfcCG8scb/93uPRKrRlHYTdo5yyKI1iJ13T0By5HyhMWmN6C8zsmwiN3eAbNK
         UObQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=X9UKBnfB;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQ/9v30QeKBr2IIG/b9hBQdfgsMWQnKak6ZEZTMKt/0=;
        b=FvhAYgt3Fs1UYLCsF/l3A9OsPvvxFtNDx0Mi6MINHjZGwaGoYbuiyGVMROI87R1zFS
         62DMR++uSLPPDeEbJnqy/VfteiMLpfq5WPSgig1+ZmqwC1wUOT/ZQmxDp4CoaXzcyM+e
         xsSoD+Rf6QXeEqvUQdPBlY92nBrx20AwP3Yg8YD/lxcPvW2cG8uQg5ToBYMv+qRh2sV+
         HwnaFkN5ghUdKM0OFIrqKZP29HBjom/xSbala9nV2CQtY+6ZCAbwB4sGq3wi7c58E+n2
         VyGpWj83QcnPYL8557mzaHRIaNwOlBc2Jiyc7hIAMLMMQHLXiS/ll1wgoDAQvt+xyx1i
         lU5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nQ/9v30QeKBr2IIG/b9hBQdfgsMWQnKak6ZEZTMKt/0=;
        b=NHSaSvrH2ftgazJg9b/WKX1ohkvD3H9oJnzUJzqrzVQRIsV2SlpE1pYbWYwSNSR+2x
         VAlGWO/bN/oCis3GUHlqaoU6yKtHqfwWjpC06MM0mOEDuO/Ofs4inD3gMHWkgrhYy1hX
         JAE+tqc8lm3vvhT5RbEJSfA1n/joOxaQDFalWRZhUpsrtsPHXLnIB1fE01czhK9U8nLd
         H1NbOHF3qE33e5EbOan5W+uByPGEc6XLZeZqyx2RFWwsEnWWDkAjgIIqACwV3uJrhBHD
         MHL5SbUiExsj5vOjzIJq/0J/nO7EvPb0HkIX8DoaHkwork7JnULBMjlHznmuLgKHngH8
         nKeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KFFykblyZQcXqgbrUpoILTJEX4WFmmy+Q20hG5BTIWXEPUhE5
	37RKvyHIUB3amoUvC5Zifb8=
X-Google-Smtp-Source: ABdhPJzsitHmwKrWaVtlIjzyIgwo6gecK8q5x56uKJRFQRhaBSZ8IQHbhEz9ONeak/yi7ZyFhlz/1g==
X-Received: by 2002:ad4:5f0d:: with SMTP id fo13mr22630422qvb.31.1629492473382;
        Fri, 20 Aug 2021 13:47:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:88d:: with SMTP id b13ls4254186qka.6.gmail; Fri, 20
 Aug 2021 13:47:53 -0700 (PDT)
X-Received: by 2002:a37:a147:: with SMTP id k68mr10657438qke.416.1629492472938;
        Fri, 20 Aug 2021 13:47:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629492472; cv=none;
        d=google.com; s=arc-20160816;
        b=iCnuRQT6BFe28SyMZRJjBSZd+Ds+UFv4ZfPpmyRI1/b4OY5h84FVRuTnDk/wOI29qR
         lk8BLde0Yu10zRzmW7G+w+kXIn77e7+L90FDf4gbrX9WEXaDbV2NaHKiFY+/K4S0T/eB
         P2T1aHJIYaR3CMI0z+CuaKfFwBh7kkzxXWYWAF4+qjyI+uIPbFmvpjOX8PulVbAqLkG3
         CpjxJUrHt8DWspxMG5IfcBSwqPFbq1kRiwgrgOLFKXknQUZJmvYfnLEpr4VEtxmQN/nk
         sHsaGnxVcIToWWo3IyDUTiSnf2XBYo+XKyz3iaU/iiHkc6cy2JYcrAqwZJAAw/VM9hBl
         0yyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=TrmXpBXN/QqMRnN63gVkXd8032gdN16SaC9lqgD+jt8=;
        b=XWtgI9o+DABvUzZluvsLICe8QMxr9BVbZlm7V37ERvXa7M2sijHuqdTx7FNfqcNDLz
         CexsedjLTggZ20RV3FDVzRKZKjUeSQcO+CuERs/dfY4xvoz/JQvSvvo/oWmsr20ROmn4
         4mVR376GrjiItvPbvRx4E3/n/KOT235eEog0ooMnDi2lckIg8EevwgkKqmQ0l6IvnBqX
         indLh4EJ1yy8wmDTkALs40PjVfsYakK1tH84KybSKHF1bGVB7MmB2Du52FGcxHdxpTVH
         x2OjZpBQqGD9mu/cYH+wt6/K1eWkfW0MempGe/8XmZJW8+8TbzY3snCbvACiw+XD+urW
         BoSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=X9UKBnfB;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id s128si522193qkh.6.2021.08.20.13.47.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Aug 2021 13:47:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-99-ecHMu6fJMiuX8DkY6j_3lA-1; Fri, 20 Aug 2021 16:47:49 -0400
X-MC-Unique: ecHMu6fJMiuX8DkY6j_3lA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DDDD518C8C00
	for <clang-built-linux@googlegroups.com>; Fri, 20 Aug 2021 20:47:48 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 05A63E71E;
	Fri, 20 Aug 2021 20:47:44 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 8ba9fbe1)
Date: Fri, 20 Aug 2021 20:47:44 -0000
Message-ID: <cki.7EBDD2C2C3.8GE4VKC6QA@redhat.com>
X-Gitlab-Pipeline-ID: 356775078
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/356775078?=
X-DataWarehouse-Checkout-IID: 18129
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============6052470461986324041=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=X9UKBnfB;
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

--===============6052470461986324041==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 8ba9fbe1e4b8 - Merge tag 'drm-fixes-2021-08-20-3' of git://anongit.freedesktop.org/drm/drm

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/20/356775078

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.7EBDD2C2C3.8GE4VKC6QA%40redhat.com.

--===============6052470461986324041==
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
--===============6052470461986324041==--

