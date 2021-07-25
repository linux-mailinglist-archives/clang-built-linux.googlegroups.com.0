Return-Path: <clang-built-linux+bncBDY57XFCRMIBBZ7F62DQMGQELRVMNWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id A894F3D4F94
	for <lists+clang-built-linux@lfdr.de>; Sun, 25 Jul 2021 20:52:24 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id z13-20020a056808064db029025cce343487sf4725774oih.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 25 Jul 2021 11:52:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627239143; cv=pass;
        d=google.com; s=arc-20160816;
        b=kLGXmvPWZyr/s6K/XI8xfhH/VIguDY9fB/6ckpvYDA3HtPxH8LNwJzlS9qTVfJ3mq5
         CCMQBW7dMPjPh9yJGTcaxgPfRCTNICZuyR6wv9QvTZmB8fEuQvwC8mTNz/zEzKNTicmQ
         KVP5IeofBdIFsIHbld8H/zjxEf9ZK8rbRET5+ZyogR1zzcwaEfVBFOyQOEO/Omfxtudz
         aM5UMNZxyK6693zfDbdsPwje7j104Fc81E5mfCPjgSsm1JPlUsZ1z/J9s+rdPIzmzwZd
         ZbkJ9W9OS6try99e4RKi7F/W9VJgZh3P8hvUb6BiMY2Xq5o0fCL8AkYnejydK9qECGKe
         KnHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=R8FZp418hgFfgQxZy0hmUi5N+Q4nTwqCi/R8AeA1xfU=;
        b=CppKtiuzTf5tCekXYiEPVuDm4gx1pYwoeDWNlAwHTVlJdV8dbI+yXKlg3lT6Vsk9Wd
         n9FE2BOJft+j5Dm4g0dEqdmqvX5LIurw/WayMoDKRcifjyxO2RCpiXLXaxZTZYhkyPlp
         0N4AxILbfDylzj7TdtBEwpNHQXhvAYGwipNskZ+bnbTITT86hlZY7BLtg2M6jFchj201
         r7q1ymIeYllUo0V+du3XGSynVgMKcXYio00kpcF9fytDqCAoLPzj9Wjmx6vAwzaBt9R2
         IKdtmHx8lDHaIMqjSsRkfc0Wm8KF82iNfhD6xlXoMkquj8Dn7bvvxT8+02Gglnw8OwJk
         YuOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MZ8ZFgHY;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R8FZp418hgFfgQxZy0hmUi5N+Q4nTwqCi/R8AeA1xfU=;
        b=WvV3005HibKoU9JeDYqsMc1gsH8CEJ1mlJCpxzbN5N+k2IxhSR6DTTqgaQkDQYc/cI
         9E5blCIiGRr/NafdcuQfUqI5FGooMDKftbMYwCfkRBuvGP1y+YuYLv5S5hu+QIG2n0j4
         Smodm5OUuvfdFLzg+WoNNb1o5fs85sMwNJyiD7ky78LuVxqvWRy/B/HpwWZrw8cAdjV6
         khp/nGPQ6OePuoPD6JhY9ANI4x7IUiUp9TtZN9PNqeBrQfMXMqFWNZUEn/LgbceV6xV6
         1Ivlexg+Cvosb/b09IpyjVN4kp/Urc96cZj0cBOdXdCI3BPA+syY1lkbxOY1GmODYfaw
         tKog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R8FZp418hgFfgQxZy0hmUi5N+Q4nTwqCi/R8AeA1xfU=;
        b=s+25dELo6XUeUNF37siyS2r2JXVl23th45bm6TFOmta9GM50Te2Q2TBfNREGRq3DBX
         ruMhHB0gyaMTkX7rwQrdLVIS02COnN/62GdcnWbRZHg3m1Aotz2T27VzlGeNrawaLJW4
         oxWsugWkNgWBfmVDrRmo516WdG+5EkZwN1gv8BNkLB1Nw+Ash2zz/dJKpy760eWVIOSD
         dk2N/AK2JkSqzNfd9/rqBiVrvc+c+GbU2CDZwMOlC5XfwGhzNut79C2WallebXGwfzLN
         PUGxBPFiCaTr3vvGx2ju3XTUe9q5ZDBHos6GbO2/QoPlXp9qUf87pDLzMSB6yspKX0a/
         Yt9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530E/EK9RBpGPZ6NV5s3lAu3UZD8Y0WSNQ871jj1LcSJYoNuhyOb
	yxWxViBYf2BJCr3HQFQWD/w=
X-Google-Smtp-Source: ABdhPJxu9utSzzjVGD5YtCcxxY6nfvzhCLDk5gtj0RfEIUrnvYjC4o9+zNBG7+pgudCMf0e69Z42rA==
X-Received: by 2002:aca:c40a:: with SMTP id u10mr14034796oif.111.1627239143379;
        Sun, 25 Jul 2021 11:52:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bb5:: with SMTP id 50ls4797781oth.6.gmail; Sun, 25 Jul
 2021 11:52:23 -0700 (PDT)
X-Received: by 2002:a05:6830:140d:: with SMTP id v13mr9684434otp.296.1627239143040;
        Sun, 25 Jul 2021 11:52:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627239143; cv=none;
        d=google.com; s=arc-20160816;
        b=fRTOJlC4yMf0swBnDAd1eOMcfATBdDjCHj4T4lN8xKhoNMxp/EwGtDVJSdJCujg+Ck
         G6YZjq0nyCx1CKEuEbViBJfyOTtMjR98EEkexDRVwY4b9VMl17tQBXcLzYYdoWejcM1S
         xiJApTW64cw2qEuyduSLIA/SMgp4m9p25/3YkhRv3VX7ohn5xZdESLpkUhKp3dyjhVWX
         g9m/ReH1MR399aHlRCuRZWzWI2QB6d9xrKgKRTwnUw6M1msTmfTKPTEjOf7eTPaCIZw5
         /E/1MHfDZVOd6DH/B0+Z/1MQRIDaCw1Mva1HFEjO0xQ55zP0qbzIykJiUOsHFFHH+CpY
         lZhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=Zb5E8fKenJOdioY6t2QCag+PgEGlFx0cPoQ3XdsVu/w=;
        b=ak0MoBnb3hFeSfSB65h0hhsStUm7hpAL1JAkj0tP33Phx6/MV6boSDGqAWgGqdgdo+
         JIFAI1WjjxREG+i43jKfmidzsK5bsMs7RpC83oBAEgzXnsZjqnoHmjJiCZO7+n3WFBXG
         zCGO8rd/liIDyGgkqR3rrNalAezliO0TPS/QrTBLm9x2OUuDp2f9GpDRQvujl4cewfeF
         cod/ICavQdWIibkdPXDHF5MKxxDlPyt7a+grlVTv0Yh9Ux4oFdHJSCP8fm9wNvvrmZ/N
         pyboTibz52fgMpmEDsBSLlWnv3ezLmpNzcn6MIc8L9buxYC7UE39Hz+CeZqYP9KhWPGi
         pDsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MZ8ZFgHY;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id t2si682274oib.2.2021.07.25.11.52.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Jul 2021 11:52:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-149-MIohTOFROF6oZ-xDbAVMIg-1; Sun, 25 Jul 2021 14:52:19 -0400
X-MC-Unique: MIohTOFROF6oZ-xDbAVMIg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 909E6801AE7
	for <clang-built-linux@googlegroups.com>; Sun, 25 Jul 2021 18:52:18 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 702565DAA5;
	Sun, 25 Jul 2021 18:52:10 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, a1833a54)
Date: Sun, 25 Jul 2021 18:52:10 -0000
Message-ID: <cki.96FA575852.00D123T6UD@redhat.com>
X-Gitlab-Pipeline-ID: 342577411
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/342577411?=
X-DataWarehouse-Checkout-IID: 16591
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============0063754179322376885=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MZ8ZFgHY;
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

--===============0063754179322376885==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: a1833a54033e - smpboot: fix duplicate and misplaced inlining directive

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/25/342577411

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.96FA575852.00D123T6UD%40redhat.com.

--===============0063754179322376885==
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
--===============0063754179322376885==--

