Return-Path: <clang-built-linux+bncBDY57XFCRMIBBH6C6KDQMGQEFYL2ZKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7083D4AA3
	for <lists+clang-built-linux@lfdr.de>; Sun, 25 Jul 2021 01:24:17 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id e9-20020a4ab1490000b029026e25c335b8sf1203536ooo.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 16:24:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627169056; cv=pass;
        d=google.com; s=arc-20160816;
        b=F1jVjEG6da7jT91FI3SEDlj09bmuUv6r+tnR8/gBSobhePYf77d1jTE21EFeH69vQY
         I5CZQpAeFhNUHSar1NPWCZ5ORvHEMuCgPxHYTOTQOth1CwtNabsBVFqf3RCXSS/xLANH
         D/GGhneV15ZWq0cMINrq9T5KOB9sqLThGdbnBT11FI+DGMBJFljDgQAENfVIlNZ8jisi
         OiCsGDSy4ZHOyBUu/4cuOqHyb5BNEz0dpjXpczZfoqCamDYHoesoIVYhpmt2TemZgt+9
         Ks5xOXV3WnR9TmgPC6EWdXfM2M1xVXR34GfqCU9gPQr3rqHZDV4SFYoN4Wt3M9kYC1Od
         xVgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=YJIdjIYtnOUsa4jEjVlG237Oi+KPz231tCRpeG+kI2g=;
        b=LlOoJzQX55bh4W2098sCgqmK8Zygt/toYTXyn31Rpnxfy73+X2ibdGnVQOMx7nCm7q
         H0/YNRR5i75BUJFusVdWZ7XHCWMyqXLMXdfYgeWKAauUgf1kRWwuDHUGX6sWX05mhYzC
         CSIMyaO+o7ziGgZj4J9kkLo7Kxq5CiSrvPs1xIzwI75CoJWjFnqUj1Q4vjNd9hUIhV3J
         kF0GJKRw+6irg0frGDvCpcHYsY5mEn62lfLhiLOw6ehrE+1yz8UTXApU51KF+5cxuxsN
         F+P9qciID6A3WCE0g/jBSpzQ0tBUa66JoNraQhmvmFwujKTAxZPCWEz9T6O4wSQ/DEfi
         fR3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VyoUyfrb;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YJIdjIYtnOUsa4jEjVlG237Oi+KPz231tCRpeG+kI2g=;
        b=FbehTDbvffMMqNyJ2WvBIsINfJZZRwfQWKu77jTvLrxWhcyk17Sx5x4U8UZaKH7oSe
         /R8jMhL487rnUmOhBq3hM0k9ogWUxX51NETMioX/U62ER0qTeRxMDo+LZIIUU3aA7iBl
         551Pn9JBuHr99XLWdKeXPoXY0wmgeB6jji1j5jqmF9GEhrNZX3RDM+lWOLsFgF4PhUu8
         Uu3YNct2OjrN+TT1ljoSa8LauPAAIQ/FeTUuBmuW6QWy1UO84Yjs6me60skdKTaMuVYA
         mkf7d0c/IbGiBZ4ZfJP8wRTmUhi5/lwt4OXBojne9Y9Z3thd1YYDM4gumzkaiEefnzJF
         yv5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YJIdjIYtnOUsa4jEjVlG237Oi+KPz231tCRpeG+kI2g=;
        b=ebI80aGxxumCLV0g/1QQKA6R8pA3v7NJp0rs03UkuLXW6iDp/tynJqIqU89hh+KuMF
         KPWhRYIImehtXm6SpNgn9frzyky2y2bW6vSmDiyoCDL2KNv7zmyDP1PDXNRQibkDzHzg
         pSm5EmrhAoAeu/MF6/aqfDAk3kFjdmLOFBr/Azqv9QrwBcavOLifUZQKMCUWGFWf1mha
         NVA7y/+HCtPKx837e0yjOMiAGFI8KkdDsy5Z7SFzkpbrIrlZ54u7JsgQtG6x75atmnjM
         IeCD0AUttLi44ca0rIDHhCOhaJMlyKaw30jrP0Q6qFtJSoOQcQbj0uuxepHkX3S08Ldd
         ljcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533b7qDkfEBIPwTO4XQ0EL31X0zlf8mlr+f9RGFa1kygxhPscaVd
	ZdGb/VmwBAw8t5z3aNQy6i4=
X-Google-Smtp-Source: ABdhPJwAxqfkyUaYQO955S6XzZCbn6a2Loum8OdokowNLcwdsMjxJghYOVmTqccFegUz+CKH6qiryQ==
X-Received: by 2002:a05:6820:1057:: with SMTP id x23mr6600304oot.56.1627169055961;
        Sat, 24 Jul 2021 16:24:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3115:: with SMTP id b21ls4070964ots.4.gmail; Sat,
 24 Jul 2021 16:24:15 -0700 (PDT)
X-Received: by 2002:a9d:4b02:: with SMTP id q2mr7326577otf.52.1627169055599;
        Sat, 24 Jul 2021 16:24:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627169055; cv=none;
        d=google.com; s=arc-20160816;
        b=IP0CL8h7R7Z1QF4LHCrlUnev4EzlxeUpOGWz8l5UWWPSfAI4E/9xTdqCjvLLZ+q98X
         Ag2IRO0BelS8AHiBuoIAL2Zsei+O8VtqVDzwGyXcQvapsuIZkuQwdPGT2LgwV+cCo3Ad
         s0ddiVINzqDYTvmLPfZcUpPx/9D3NwQuk4aXiVjQzaNRLtWLnSDvWnDHyU5HL3x96GFg
         ai8oSMp7TR1fjpCsvi8/RhIHW0moCZ6tacTq3IPHXsSBoAkUffg0x9iu+C136nTAtEXB
         +WHo67Znmuo4SV7ae04ehAA4yg/qpWOvazIa/wxp6EUOi7l/MzYFnVNMI9YCvLff6tnL
         BgoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=VFGLBtkoAteGKuY9PuL++gKGmZphlCvJ+t5RVbFVHj0=;
        b=zeSl/SVGQlxRvpqlf4cDfZLZPRKf9GySxg6eSHi+SjC83z1S+Y/uHREJLmNstmf3Nl
         GsmvFfjpDfkwl8tvEQujSybTetE37y1UDNhP8fbwPcGE43o159o5aTFr3rqaWDKzgVMw
         gNO3pWcfH68fY6hPzwn5KZyMdA/9sG68hW0lFeDkSBS4ao6iIrfw8RD43xHbZGTQ9B77
         5OxaXNE+1HRm9NZakCuzfFWPlSsxF89jAPMFJAwTWRlN7mp4/pyhN75XI8FcbMBgX27o
         7ya9aqb1YpkAgaNKRzKGq9MK0XBL5DcTFTSOIH+ZmbXGEIPbNiW6wUkoE4KpzE2wxd0Z
         xXFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VyoUyfrb;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id m17si3305823otk.1.2021.07.24.16.24.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Jul 2021 16:24:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-458-3UDUoByoO0qH1nlhMugD-A-1; Sat, 24 Jul 2021 19:24:11 -0400
X-MC-Unique: 3UDUoByoO0qH1nlhMugD-A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D8D201800D41
	for <clang-built-linux@googlegroups.com>; Sat, 24 Jul 2021 23:24:10 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 10D6560C0F;
	Sat, 24 Jul 2021 23:24:06 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 6498f615)
Date: Sat, 24 Jul 2021 23:24:06 -0000
Message-ID: <cki.F64AB26C63.6TVIJ43P5V@redhat.com>
X-Gitlab-Pipeline-ID: 342389638
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/342389638?=
X-DataWarehouse-Checkout-IID: None
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============4690010934717671838=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VyoUyfrb;
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

--===============4690010934717671838==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 6498f6151825 - Merge tag 'riscv-for-linus-5.14-rc3' of git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/24/342389638

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.F64AB26C63.6TVIJ43P5V%40redhat.com.

--===============4690010934717671838==
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
--===============4690010934717671838==--

