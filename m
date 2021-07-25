Return-Path: <clang-built-linux+bncBDY57XFCRMIBBIXT6KDQMGQEMSWKOWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0B93D4AD2
	for <lists+clang-built-linux@lfdr.de>; Sun, 25 Jul 2021 03:08:52 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id fa13-20020a17090af0cdb02901731757d1a2sf6219686pjb.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 18:08:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627175330; cv=pass;
        d=google.com; s=arc-20160816;
        b=dznLrvB4qrv0koYDO9+dnl93bZJ1Ag73h7jCpTvg2oUvWDG74fxJIZl67h1toc8FZE
         jjQwSs9bDm4/wQLubQj6jAYXCx8YBGUHzYa2De+kT/4fGvGwNR+EdESOI5psfKna3oiW
         SH5U5UxNzccDjV0B0+7KmjexIzQHmwxOwQ7TRuMuyWaq71M+UOTMgzTosckkhRSR1xvN
         Uxb+3SOQLFooNKoXychv6/Qf98dSbfKwdpMLuyltIMc7IVdIdpPjsUeERAhsR4tJp+/r
         rogoieGnk8JlqJs00DHmftBajKty1cmnTtReKNq2D/yMbvWTmO3xsHxkCbcIgIS+xHFW
         rTmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=EAN4+oWTB5w4rSIV8F6hl2y7aDg/tERksaqNXHJe88k=;
        b=ADVXLJGznqKMpAT/rWxxh7LxpMJ/sN0B7GbZ9DAn0KbaICi2fOXHfnRjiRQhYNXbcb
         mI3ym1MBst6jBQXWD8sScjIPnhKzGfOVupym/GviGPFSHmiJW8PRQht3CRh0J4SOmOOJ
         23lAbOJan7oPqIipqFUFfJNEzixUx+cFe7C+i871LrSZbpPsc7QWtU+baqNYgQitpOv8
         HwYEmYPPNWafXH39ax6FY3M1hwCWkd25WIPEgWdsblaeYUGxx225+tNb/ra4D2aceglj
         aXLdcWz0F+kPltmI1y/SumfU0QMZuRoJWrEVDEA5QMKfXmZpEBRhnqKnxnKR/nWK51QA
         NAYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WMxO1S2t;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EAN4+oWTB5w4rSIV8F6hl2y7aDg/tERksaqNXHJe88k=;
        b=pGHvbGk998VPpSOexwNjymhvl0tJLo7queWqfJ0TiWzpeR9F/D6lhmoMDUoUEj/JHP
         Q5Yho/rUC8sa9oDqmYfqLuJSqQ9boZGAwxSodPI9JGptf6yzCW3dtKLwL2pZSAtBIgtL
         CyGa1ZGTOYtf0befWt9iwX7X+2VjXbyYaLhOOY0UZPGRrfNtFmwipdAUHzgrUdDtr4pA
         mjnUYFvXrQkESWh7tp0xaFm8KY+sswBsNIVIGsJCCus382smBgWCz16UXyDuj0i3u+cQ
         uL22zDaI1MIJB9zHFmM8H3z42GVPqB1nn+38/D5tnUisjMQimAxnfwDuUdWlQqh0mKgR
         nsXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EAN4+oWTB5w4rSIV8F6hl2y7aDg/tERksaqNXHJe88k=;
        b=g+94ZpWRuQDT1/MtLqRqUdmaGBtWN+vWgdQGEj64K2LZJMqCMfaUCziMpyI5exISEK
         7GD+pl/4sxhX8t4/O2y40V5FCrBo84MG3CXExAtkgBk+Wr3Q0GaB+xSYbbR30g97NerU
         ZVOJJyYpifPjIP2WL3QlSmKY7WxVlQsJZCKws8ocUac2sUlhXYPpkkb4+QFbrknNgxhU
         FKSawKPtvXK8sbOaGjqMra+HJKLQtWUZxQOWSgZNniJ7D+nJZ0mglbDlh3C1P8rYrPvq
         m+Wc5qnauMFE+uIM7RDpHj/tBHJfvH7Tu0YQpgvtUnIG1D4DdJlFmqRdqLiDMDl63dL8
         NxWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533o+Y51qhRw+rfW0yakqfUX0APKo3telg1LKyB42hEX04v6lprs
	Vr29EVSbyKZSArugG27Jpns=
X-Google-Smtp-Source: ABdhPJyzM0lufMq5dgR4MSiTe83pgnlcd4guG3qtGvcI4x0ct1Funwnfvsxk6HO1MeqexjdTXEzUWA==
X-Received: by 2002:a65:690f:: with SMTP id s15mr11624596pgq.21.1627175330259;
        Sat, 24 Jul 2021 18:08:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls6622126plj.2.gmail; Sat, 24
 Jul 2021 18:08:49 -0700 (PDT)
X-Received: by 2002:a17:90a:7441:: with SMTP id o1mr10682250pjk.96.1627175329627;
        Sat, 24 Jul 2021 18:08:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627175329; cv=none;
        d=google.com; s=arc-20160816;
        b=U4SrXCKGRUQfKc1gXYkciBvBYwCLx73RYyWIYs2IhJECeGzT6h/ROV4Vo8mntYAj8P
         2arnChVMiNrIJsY3YRoyWnoyyWbRM7faILr75qsDUEHYIBxfFAd0UXmI/ty3gpcmqHQX
         T7L8zBSsqIuYKwaa6OdL04IO+9KT3+EO2ordhCFd/UWcwqj7cRWZQ04MQg0STGdLzy1t
         Z5aGArWNvbU0+mBYtTE1NN8nzDvgSJ4cUKZv2yikvbZiX4yblH4UBvAm0PVI7PK+ux5w
         iE3R2bwgqKJqil4sCq7lIjZBdK10NedIYaegyh0kcSgPyzekHECXx4bGMWLU4jy8OvHn
         fU9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=9cIUrVFhzgmbDDMYHfCFUyI/hWHAFOnicXJyYFC/Zus=;
        b=jlVuGz4IXMVHFdoFk+KedSizD5pG5fEsrTMv/Lwiq1jP1/wzhI028e0HEEmJqxg+AO
         nnLxmNuYz2H4CP2VggbRBsVIJ6IPre/oVLP7GB8I4Hw1VV/1beWX+RokkWVZ7G/zzyzV
         MkzkCEMF9hYXZ2FmM5+MTUvcA7Trya9ijFv0WNuH70Ay8UkZD1IgUCJAQJLXKCAmcqv6
         Ee0HZ+27//R7iqidktqkDVe9yfXVz6cIRaiLtYEi1glyAi5q2+4Rh01bss8gwpKq70Uu
         dPK7XXPERMNiZCqiWU/QepjDQjVS0ZCiSsKqtDic2b4yR0QmDK89SjNpawHLCDqsQKl+
         6vbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WMxO1S2t;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id y6si1900565pgb.3.2021.07.24.18.08.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Jul 2021 18:08:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-488-zcxPmGcKP2-MN_KB-BRVmg-1; Sat, 24 Jul 2021 21:08:45 -0400
X-MC-Unique: zcxPmGcKP2-MN_KB-BRVmg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A6A14107465F
	for <clang-built-linux@googlegroups.com>; Sun, 25 Jul 2021 01:08:44 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BC2DC60939;
	Sun, 25 Jul 2021 01:08:40 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, d8079fac)
Date: Sun, 25 Jul 2021 01:08:40 -0000
Message-ID: <cki.A3DDF0DE25.8TPSGK7BRO@redhat.com>
X-Gitlab-Pipeline-ID: 342404813
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/342404813?=
X-DataWarehouse-Checkout-IID: None
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============4664873337706798358=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=WMxO1S2t;
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

--===============4664873337706798358==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: d8079fac1681 - Merge tag '5.14-rc2-smb3-fixes' of git://git.samba.org/sfrench/cifs-2.6

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/25/342404813

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.A3DDF0DE25.8TPSGK7BRO%40redhat.com.

--===============4664873337706798358==
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
--===============4664873337706798358==--

