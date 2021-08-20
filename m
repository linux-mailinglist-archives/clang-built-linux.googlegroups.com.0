Return-Path: <clang-built-linux+bncBDY57XFCRMIBBUODQCEQMGQEOOF4HOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3973F361D
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 23:42:42 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id q14-20020a67d78e000000b002c32f7f88eesf1953572vsj.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 14:42:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629495761; cv=pass;
        d=google.com; s=arc-20160816;
        b=i9QrJEkE7NfPuZUiLJOChBRIvcY3QiOHTgv4askZNJ8Z1N7DiT3nwjkAgSRFyXssTU
         /ez0/INFFKVU7vy64PsbVcWWQ/3LqZ9Bbna/EjTH/QIjTXtc+hP9R8b+V8JaTDFGAGFD
         mmDoWoNVU2jaAXzqsFgxwPB7ZQdpddo5MsEbkbPLI9pB74S80dloumgIx4W7JTRPCdoS
         j3Tx911+EaPQ6iV0AIO/A6l0I0Tjg3j2doI/tyY5hB4C0D8HBm/c0rB26j7L7ZuNp/vw
         I/ssUqovVwmZlRakrnItIZUC8VdRv21x/ccXxR8Z1XrL0Sx992WpiNVSKcCQQebwLKBj
         HLzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=wlxLIGp1nCJn7y712J+udDe5Bg6F1LYdxvyGMHcz7ts=;
        b=jf/sMBnsp+bsF1NsLK9Ge3DXqB2oC/EvvEzrOYb1Foy2sVBro07wI1aVi9DB9ZL/N0
         ITIjicYnDFqQoj/eU0zuV1Xywba2fHPmhV8CVRkBle0/0VsVqId1NZPlQw0BYV7TTXOO
         WWW/HDGqHmQBdiFEb7gM1DTYcW4yMFiISqMjZbA31X1nrtJVyXq8Jf97kQMCLobU1U7w
         UVXFliuEy/id0U1S4oefRi0FFGApq4buWtZaw1xpxWzLZ3wdJhoLssjmN6qC98ij3Rry
         YytbplJWIEFbeCeYbF9JLZLttB6O7TfB8cBa4MLYt376Zzm3dZSByQrZi3gp0EG/jkDH
         paXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gZycseOl;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wlxLIGp1nCJn7y712J+udDe5Bg6F1LYdxvyGMHcz7ts=;
        b=NuNdWkN0Oisw8Aju08pZYNw97Ct54I8WB9ZUbSVkdBrFdEWGUD+L63zBGg/EXBp+1K
         Fs9zDg9+0TR1YEE8S/27PM1HfZZlPwjwwKTmaNJN7acFBhpzSxxMMzHB1amNfVt79/OY
         ExxeSqXS4Cg26purGXsbgxAShEubjKsgljeyNGTnslNiXQqtz7ebNQ9+ig6dyaURemzt
         CAPuD+k4Fu3cFrdwSjdgynOodK7Qt8NreeLI4J6oFLDaasivd/cSFR/ZIUBuUuwey/He
         us5jkM3IEjAugO8oVEJsHLuRRRkjnCHKfo/jO5RGPKf3WAzDnIT9+Rmxeo7PifhUoKid
         pbVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wlxLIGp1nCJn7y712J+udDe5Bg6F1LYdxvyGMHcz7ts=;
        b=W+GBTHgTDKwmZCwY/3Jv0O7XLLwfju5L2xOj+trF+qlP6qmlbhgFjQb5QC6eJ/hv2A
         DqHzHAlZ8J406vLPRBwuEBA7z2CQIwYMwoJmTrDMVuji4QIEedxFgkPwj7kQmvIq2c+X
         SHu/CgUJcoEwQKZt9mHBEgS3EOtkWSotZrAZo8fVGgAf0nrsDWk8i2u5Aj6vl1uKCu/W
         O3mtex5S1qd9fbxqVjPhbJGQM+Zse0IvZ1AjZJsjhpYEWtit23kIcrfygUewmLa2YkuS
         BlZZdv2bAp00NdnZXjIEbBw7Ci1kHWB28ZS+Y7NVOAtvMQ4Tryt4+Qpr5GUD0fpR2cdB
         o5GQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tJeE93/5sPihTKhuwYi2/vECXu3/NEeV7SMvneeK5z1jMQWzZ
	CyKDyvlv3Nfp35xaxzGegVo=
X-Google-Smtp-Source: ABdhPJwTK57QWmIcuXQGGyYv5sy87MDseKDrxH+P07+pB2ttaN8jWHUC9lCsnzn+l12cKxIdnNsWUg==
X-Received: by 2002:ab0:688c:: with SMTP id t12mr17333023uar.14.1629495761488;
        Fri, 20 Aug 2021 14:42:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7682:: with SMTP id v2ls1086652uaq.10.gmail; Fri, 20 Aug
 2021 14:42:41 -0700 (PDT)
X-Received: by 2002:ab0:726:: with SMTP id h35mr17187210uah.77.1629495760942;
        Fri, 20 Aug 2021 14:42:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629495760; cv=none;
        d=google.com; s=arc-20160816;
        b=Se1L/MfuuIQcToc2FHIzX2pvXgnJy0GkGmfZ5PsgQtXo3gRiRyVDbJIn7E/A3ro3Vj
         K02Guhxe3Xw1gjcif/2vtsAiNIMFD45mM+WuN9xHxnNrHkNwzES+KyDokbbc6nf/d6g+
         o6+Q+k8W7nc57OdheIHgUOqkBX7FPhk8FCkoge+QXoe8EccEZRel/S3Xnw/K+wDmphOg
         z1+q9jrYTWdV25ZM1XGSEqC/3IrMVWq8nyHmU/saRqsqIObpqc5ihF80r+wm8PXW8zDx
         XLe54VirQqj0XzsGN0bU00XdEi5I4gnvLGjCieXLA9dpdClBkBU5m9V+iw1IrFkWG+ku
         6/5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=kimvd/lW/3DA8FzjgNE/S4vI37lIxFfl5cWZZpI8qi4=;
        b=zoy8G1JiZ6Hg9Yar6ILv1oJ+IojHSZabr1tI0f0Fqu9Aj0qPNhWAaGTcz5kLMECGfX
         BIMKxs5yGq7c2w2yE/GFK5Oz4S72utkV3O5PbOKFPRDQCg3FXAvoWcokhhmGjvAhlI8x
         a6Yp7zXNPJo9arM8Z63gEosacxh5VxkuwT7JWRcYOkXsA0ywTiPY1rK+UWAG7VAJik2p
         WKcILv+2Eup4eBTK6LJMD3cqU0nXKSRpSsqq+Hzv+UCAnYt/v6jrq+wJS/7DTG1CWepF
         Dblz00CpW8CbHJZ3ar6nEvXoSIKRWSKcg4qk2W2U44L2ZiV4anchs19Fz3o0v7X6/t1P
         PZvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gZycseOl;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r11si387178vsl.2.2021.08.20.14.42.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Aug 2021 14:42:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-49-WpM7TCl9P4Wvg2neqg_ocw-1; Fri, 20 Aug 2021 17:42:38 -0400
X-MC-Unique: WpM7TCl9P4Wvg2neqg_ocw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 155E51015185
	for <clang-built-linux@googlegroups.com>; Fri, 20 Aug 2021 21:42:37 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8828810016F4;
	Fri, 20 Aug 2021 21:42:33 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, fa54d366)
Date: Fri, 20 Aug 2021 21:42:33 -0000
Message-ID: <cki.79497F5226.3KFQZ5NC6A@redhat.com>
X-Gitlab-Pipeline-ID: 356808063
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/356808063?=
X-DataWarehouse-Checkout-IID: 18133
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============8980801972106118319=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gZycseOl;
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

--===============8980801972106118319==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: fa54d366a6e4 - Merge tag 'acpi-5.14-rc7' of git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/20/356808063

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.79497F5226.3KFQZ5NC6A%40redhat.com.

--===============8980801972106118319==
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
--===============8980801972106118319==--

