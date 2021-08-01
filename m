Return-Path: <clang-built-linux+bncBDY57XFCRMIBB773TOEAMGQEZ2YWKWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1153DCD86
	for <lists+clang-built-linux@lfdr.de>; Sun,  1 Aug 2021 22:03:12 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id v15-20020a0ccd8f0000b0290335f005a486sf10383188qvm.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 01 Aug 2021 13:03:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627848191; cv=pass;
        d=google.com; s=arc-20160816;
        b=V2dLSmf1z8mki2ar3EC0JZ69LQ3MNW/OBQLvYe7cOPhFv75IAp3hfZksnFMwCV1ZYI
         S8EKVTdLP9qKtAMzk0wSA+FgwGU8RWCC4TiVT8s1+nUJqtSiTOkLpse7rnMOosmIV+/h
         3OM4SV7zCQFSYGJle+mQkGsE00OJkmjQ5WfpKfDhRj1eRqygsZn2qENd3mtT1kh9NEW0
         /i7OeQeFywP6PgYxJlI6iSPeBrJLCk344hr7T9oIZ2mIM5cN2upLE+/npzbuegYSUEi3
         1navA7wbybuv3uTtvb7zVap75Mv0qXM4kXOka0QjX4jho3lBXgUpOtDSg5VFQkBXJhiN
         ld4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=XzjeYmF21gn1i6lU9m4OuCdaw8ychYlTSKwX5ZQFloU=;
        b=umt3cFae5PPc7TdpxcJE3mtm5IVJEniFuAzQVkYlm92Ooap0M+IzaYscbXK6/7ggnG
         WdJlqdN6c0kxTebGvFu+KWJDn88NYATisQAt+JbtefPp5RDixlSwG2ssRw8Lp3wU7whM
         Pyu73iZW73Wg5+34OrOQZVZJuNO9rSrwktOdoEec4jedScZtNnQWZ9qG2wwIyJwt65eI
         p5J8S3/HXOuaLF1/+wusmD4MbkI+zAKRU5Y5rmKrjIlIb1BrmzPoB5rzWywTvwRpw//b
         8B0kPVjEQTyiQv+x8Rd0Qhew18t0JoyMNuV5+lvBLwyRkZtC9TPdwrIVKs6lZuKt11go
         3uAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DjXvxlw1;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XzjeYmF21gn1i6lU9m4OuCdaw8ychYlTSKwX5ZQFloU=;
        b=hXxIPM6xLnTPOrxFTBW/QrN96WyLlYq38xhicOQR58hizpF5Psgox/h1lFMXyp2Pzj
         PNbWcNMf9gjSgaYX30CMNTDQCsJbxioNVlL+T9txqLGt4C4mfpB4DQg5QHdRE7UJ6SEZ
         jzEhRUi4tlGAG06Byl8zmOVNeOWa7IuGAf9aPDK9jxplpWXGHtBoXfWyuERLQU/kvh/i
         1n2c+KSu8jC8x27fvAdJmxJVg01XFtW6qMIqQgvZHYRrDTNAVk3eleJ+xLl0cr3VOc5U
         OXCwHs2cxHZC9jJZGQeJzBpMZ+oTuvcUgW3zFsixgt8a5lbLr9/175t0GET9hOZCX/k3
         URBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XzjeYmF21gn1i6lU9m4OuCdaw8ychYlTSKwX5ZQFloU=;
        b=YKrT4oakcT6yJR8IPhYeMk0msjWBdvK9sBBGtctBtfK5oacfkpro+lRWMFjz6txtl+
         9XIQJqkYMa61Frkrk83olUuLceCDALVK+8DN5OLegPgL1IbPn8Mkwwmmut5yEmhwz5Y3
         TMuFeLV1cn7hMJ0ZgjaDDVv7LQWcDCn48eJ9BoFRpdPtvxb6J768kR9DL3Ac3BjKZGxf
         GdKOl3EPETNV2cGfvR9q5eq0QD2N8NgMU989aFFIZgeN16shewzA8B6Aay8Ae/Ihtjmc
         xDXFnrzbveU1RZl0nTQSJ+5L63joSGr4nTic3NkfxFLAv2oDhv5ZbnUCTPUxAqzppXL5
         ygKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531i6rv2s2eF/MnQIPjBCo+4prtkzgyTVZBF/6m6Sp9fEqght0B9
	DxODOaaaO3wGLOMyf9aL0mg=
X-Google-Smtp-Source: ABdhPJwe8NQyN6F8NrpLiBvZ1WwSB7FEDBv6Hqi3tM6m4nFSixUHAHYBgr47K+Tvne2KGeWT08hfDQ==
X-Received: by 2002:ad4:4b25:: with SMTP id s5mr13141334qvw.52.1627848191463;
        Sun, 01 Aug 2021 13:03:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4d93:: with SMTP id a19ls4344773qtw.9.gmail; Sun, 01 Aug
 2021 13:03:11 -0700 (PDT)
X-Received: by 2002:ac8:4cce:: with SMTP id l14mr11218140qtv.219.1627848190968;
        Sun, 01 Aug 2021 13:03:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627848190; cv=none;
        d=google.com; s=arc-20160816;
        b=mO777Byy9kqk03meZxqQbH8MTpKKmmiBcpjEHzH6A4wq4KmioiJGP8DvD9oZe7hmVT
         rtfEk5ViPHrFZV0jhG6EZ6gLkNgVvxL0JV93ksmi2KkYaY6PUZZTEze0sECG4prgMIED
         xxHh0KHlX4m5p+lQf3QQVV+S8zlxZ+FfCg0IWhtXxPYa8SgR2dTMnUukxd/6XQbnx62F
         u7vjvQvo9Cxr6NIDYl6ZuOq92NIbN2Ui21SoMrhOfdag3pHfljEROmmt7AWlBmKHkQBO
         ZfqvOU+v7FypNiL3K2POedIQqzhBCN5RePmGJ0FJq+BDKIpqztAfLgjtkj6alZFik6Vp
         0tKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=nSHe2se4BHXauDGYT/tKX5b8xLCbeM8KxIBTIYMPo3I=;
        b=x3f3bpwAIsp7QaqOK1Q4yf9RVhoer2B1D7LpeULwZCL0lqb37ZWKZqxOYGVusbA8En
         ZcGUeaghRS6co1Ee8nyVPN88eXblgTaH2QEmiLYHBugN77lRojgJqwyBwh27FLmWlyGq
         EDtODNmYiT2gV5nOPlsMDb/WMbONseWbCk7V269oGRfzzBBN/f0bVhNvoYSqMSTMZC94
         rRzWFq6nAKMw2peWN6UCg12JMsCxEED6kwFtevFDo0GOFyd1PhONP+y372l32/chkFtw
         YDRz7kjLhzQBDXhzSw+MocTecZbn9rrkUEkuy9nQh05SCBTQ9N6OYeXdccBWYq1KHKOP
         cCbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DjXvxlw1;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id x10si430442qkm.4.2021.08.01.13.03.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Aug 2021 13:03:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-473-amXUvGq-O_6ELcgJMJ4epw-1; Sun, 01 Aug 2021 16:03:07 -0400
X-MC-Unique: amXUvGq-O_6ELcgJMJ4epw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1755910066E5
	for <clang-built-linux@googlegroups.com>; Sun,  1 Aug 2021 20:03:06 +0000 (UTC)
Received: from [172.64.3.44] (unknown [10.30.32.237])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 765301899A;
	Sun,  1 Aug 2021 20:03:02 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, d4affd6b)
Date: Sun, 01 Aug 2021 20:03:02 -0000
Message-ID: <cki.B97BE36C4A.7IVVYG9CNJ@redhat.com>
X-Gitlab-Pipeline-ID: 346198349
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/346198349?=
X-DataWarehouse-Checkout-IID: 17036
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============8841966287903177136=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=DjXvxlw1;
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

--===============8841966287903177136==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: d4affd6b6e81 - Merge tag 'perf-tools-fixes-for-v5.14-2021-08-01' of git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/01/346198349

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.B97BE36C4A.7IVVYG9CNJ%40redhat.com.

--===============8841966287903177136==
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
--===============8841966287903177136==--

