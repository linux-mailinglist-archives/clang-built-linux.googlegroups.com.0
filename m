Return-Path: <clang-built-linux+bncBDY57XFCRMIBBOOFXSDQMGQEROGNDSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B223C8A05
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 19:45:30 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id d11-20020ac851cb0000b02902536d2bea0fsf2365192qtn.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 10:45:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626284729; cv=pass;
        d=google.com; s=arc-20160816;
        b=dS1nFil+ujNPRkEolVBAH1DoGT8HSrB6ji1o+FjVMAUOlM3v3HrV0ZoGbz83B1O0Bo
         pz6dnW9LsvkPbyw0YFXeRAFREx/kXUb9kidM1mYExZ0skeAQwU9nfOr9YlkijlCx2m3q
         CF4CNAgWD54QW5513NpJdojCodHqhdln2vF6cCxO3MHPkWH5ma4q131sfsrfy3uEyZbH
         ynAJuQCqRK1ctGH/+u9r6VZ1+1OoWgEHBJeNWjL0tknJBVGJCzKto4ETb08InS0pH6Du
         27s5fHdG4ylAnigKHVfaCAlGct2iNIM1CpIYBz4vBgFdkPc2HnfCqhS7PHMiih08xIQZ
         iXcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=rHVNhjuI08LFzXEUqsJvGmnkShesyvWwQpQ8Q4bWMNU=;
        b=tShF8CM1k1kG0axSqwvFHXBtkzkFF6GTJRM6LyS9v2F8qbRvgFvG5BPKmkgVW+SnyZ
         yzIKmPsNhP5CqIBMczMdW9oeCu6+F3D1PDTCCOhMCqp6JjDcmVZ+3GCPpJS6CZ25UbNG
         MQdRQmp3xhSyX24Mb9qp5TlwmNH2+2FtJ22kVw1FzRggy6ror8gN73O6K7EIZGoF7Cvc
         hNeK+9ogbtq1A/Gil/2ti537OLl9qWlZa/vRuE41hy/GvKhxDyqsJ1ZgQSENTXP+19+X
         VRjdNwk0DL/5xzBPiGH4oVIRR0sASbTdXvFhEQ5Jhip5v0Tb8y9o2wnT5JD70XdTkFQw
         yfug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FHyvZGpk;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rHVNhjuI08LFzXEUqsJvGmnkShesyvWwQpQ8Q4bWMNU=;
        b=b6QvD8KAtAm/4M+AQL9NICmFTGpl9coaD45mRrYrDkUyl02jNawp5c1wCjvSwYBeg0
         uPRjXqMyqXJj8wUwncN1DJ+X1eBY6/mI8QdePHuxOb0XN0dN07dinRbQ0+Fa/H213LPH
         qKs0PFzsDdzV0XOaRzXTQ9zkg//QN/kMt+8BfzGUrCOCAT1wopSH0cSMuP1mYWyAMAm9
         AKI9m9thFeW1OJfUezUpJZFEk/iH01sqAXbSH8riERxuvZQ0K7qwVAPap8UUiewKAgnu
         HVzPz7sO7E08FedGsCegGmnq6/eQRKrJuxRTjFraRRwzpo/geDnRX93jXr2OvNMuJIzi
         +jXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rHVNhjuI08LFzXEUqsJvGmnkShesyvWwQpQ8Q4bWMNU=;
        b=hNVtwQhmLoOOArMopc+7nfEAqwhrAjzFmU49Y+a4EoeEviDW1NzY6IK4IYdBlfnoXv
         p2ncwZl5Ugp3T8dKi8k7M8tHXLj0F2lRup56h5s2/4xhIOGAV8dl8tElHSwpjxLmkSAr
         UOhqh0w1aIavWUl4lom38U0VeVFuB/AbUXxngOKu7bVgvv3nXqYmtjuyajqSgnK1oQSH
         npDk8Y1Yz2n2DVDoNjdrhMUyQVnzG2wiR6GKnoD+9bOVJ9JQhJrL/5/fQkwWfTHCjmWA
         1f1hjChxHYalaptM68rvQq4/f6IAe9dcmdtc2/H3ozbwGSGhW9Vz1DzUI94PydWe4n/C
         p6dQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325oJq2nQslQ6birsiaWxfLVD1grm9LlhWmbYLMYWpoVg5hU4xT
	2VthjcfaxYMiFEFdwwGjZBY=
X-Google-Smtp-Source: ABdhPJxtOKO0Y+lfNlGJEzf77oGbHPCOOLnt3bQy7J2RliUTh7Xh4x6A1TU13eDWyMM4Cokd9iciiw==
X-Received: by 2002:a37:41c3:: with SMTP id o186mr9351384qka.197.1626284729586;
        Wed, 14 Jul 2021 10:45:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2a04:: with SMTP id o4ls2691999qkp.8.gmail; Wed, 14
 Jul 2021 10:45:29 -0700 (PDT)
X-Received: by 2002:a37:313:: with SMTP id 19mr10970620qkd.295.1626284729144;
        Wed, 14 Jul 2021 10:45:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626284729; cv=none;
        d=google.com; s=arc-20160816;
        b=lNXjUKsL3IbQzXTk8ylB6B2zlHqd/Eo0S8KuOKtBuWJXN7LD4Sk+9szFkjrbY3tZt3
         TSDesP4MYv1xVvxvK4Gl45nxAPGiHMRYDxWmsW0pS9rbWviIvp86BmzA5i2MQeZ/W09U
         X5FsZDcYEKyqSEinS72ZA8ZFpgMrl2cPg95BZJg8cUMsoW75E894WFwPRg6Af1r4JpSz
         bHRuz4a/gNc0LghEcTh4VBVWR6L8298Ekm9vZX7V/CHckoDVA1VVwM0qKJfup2DGS83C
         dwGfweyrovdbc/MngaoBMKNWX5SoVgV2xGNx+I9EVBgCGXx/485VnoeBvkjEKXQvLEVg
         lAaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=Lux7tV7YlCQy4XQ7LLoLPrmkPwBIZIKwPE84xH54z8c=;
        b=g97XPd2P9Yu1UtFKoEF1RipAzkAgKsskRSIcXCKeyY9+CGEw8Tg1YNLilt5ulEe5IT
         gUCsqWnukSoTvF1N09g9sv6nKCU6VA2Eru2FDjc9KRmbvvDcfE4W7TD6m2YQAy4xS0VL
         rk6vBMv526wEzujgGIUxUmf/J4OtptvwzQYTAK3qRn54tFIYUEPI6XMaiKvax9KihwxV
         sHNuW04yHlRPzbce+BRRtwIl5hmDWuho8l5i8/jlQIyPU3sw7oW3c4JLjgD9/m/5zlzA
         lRqssjjX0CRGeSnDwfnHBI0MeS7QYUpL/WeodzYSm4aJR0Ia0k9lOQzKh8R0EzKASIMe
         uATw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FHyvZGpk;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id w19si292261qkp.0.2021.07.14.10.45.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Jul 2021 10:45:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-92--MIEl0UqOK6U2CWUk7uZBA-1; Wed, 14 Jul 2021 13:45:25 -0400
X-MC-Unique: -MIEl0UqOK6U2CWUk7uZBA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD562804143
	for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 17:45:24 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D70F960583;
	Wed, 14 Jul 2021 17:45:20 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 8096acd7)
Date: Wed, 14 Jul 2021 17:45:20 -0000
Message-ID: <cki.722627D7BD.R0VF3SLE4C@redhat.com>
X-Gitlab-Pipeline-ID: 337054672
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/337054672?=
X-DataWarehouse-Checkout-IID: 15944
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============3692844886116862429=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FHyvZGpk;
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

--===============3692844886116862429==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 8096acd7442e - Merge tag 'net-5.14-rc2' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/14/337054672

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.722627D7BD.R0VF3SLE4C%40redhat.com.

--===============3692844886116862429==
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
--===============3692844886116862429==--

