Return-Path: <clang-built-linux+bncBDY57XFCRMIBBLE546DQMGQEUOROSWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B6B3D2D12
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Jul 2021 22:01:49 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id j195-20020a1f23cc0000b02902575e138255sf1125470vkj.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Jul 2021 13:01:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626984108; cv=pass;
        d=google.com; s=arc-20160816;
        b=XTWyIl3GveztF/1jubQEm4HgZJPcyB2+PMYrU26+13olRlXEaNANAs+nW3eOCHQKAr
         hVf41uRiAN2bWksMyRwqj9i3ea88ur6+3NI7x2ip/Ebdxcg+5Q+/GPRBWKm42ZQap0Fj
         C+r9SUVyskUbJpv6TxBqlN2R9U/AZ+PfuboabbguhIVlhleDCmXk8Ht4fuPOe4kt9v/Y
         aaykB1wmNRvROjpbvdK1g1caNfHlMoEHfQydzdsJVDXJlBBHvS1Ey4cdfmtMlgCFAb/C
         w5I4ac/FhT8vTXUGbSABBeKHBxIS81APi7Pfr045lmDeY7OF8hrMw9Wh3efDRJC+zkfL
         NuNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=InyQ3ajrhNy26AwvYMZphXkhddbXnSgS/51e0Sxnzfk=;
        b=vU2bdc390zhuOmyxllHllJ1KNLWYfTV0xEwsBe0yecz7ZcD8HFxGDIZHnGQX1BvFwf
         nE9whd24j/FAX0H2dTE3TJx/WALMUC61VVNpA/W1cBZ75iON8NGWjKK+AioYaaY7z23b
         lsQBkjmEzPpfKTMMDIwzl1YQujC7WHsaBD6tiPwZAi3OZa/Sy/J1YJ2ylV4ybjyjZ6Eh
         QNWcbuxqUwxThOLgByhmTNX8CqWnXaRNL9MPSGk6F8kkWz0a6H8iH/tiS62R6AQX4tg8
         MTYBOI+Ys2k50pMTWIXzLuRl9U3P9wYgXr25+yi59GiSfflRAOQ8EwFaRlVDjnh8FeFc
         SqtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OVegO9qj;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=InyQ3ajrhNy26AwvYMZphXkhddbXnSgS/51e0Sxnzfk=;
        b=Ea3EY1Vx1N07Fr+6VorwQxQkOZyQOjU+YGD1WVOlAOdpov+tpQbtVAn9HVtjfP3KhP
         4CZNWVSwctE5dv0UuJ/OVSNWk+owsXY2iWa8m7AFAfNRtYsSK0xHWMWLnCQ+eqBKH0Qq
         Unvizcog6ipmVp/0iBcAxHV4u5XZppVA/czz7gFXzmaYvy/VpD9IJHjJFyon1RlIDzPH
         R5Bk0h6plfhLHaLNYOCwPe0X9nsBNvH+XFlAUAiDxKtgX0Lq8F8LKyF2KWW2DO/b9Hds
         eWGNypsc+CHtTIyQ/3hhfIKMxoeE0FYDXX/FAWv8gwWy6oXNwj9vlEipHbfU8JI3VV0S
         z6kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=InyQ3ajrhNy26AwvYMZphXkhddbXnSgS/51e0Sxnzfk=;
        b=U3sU+ZJwzTXwJJ78faHXJgnLyhENTj33DZybN3qW1XGtI/liNEts4DmxHQetOR9V4m
         KVawhVzjiuIdjNEv89+Z0FP7KJVyZKoqHYz/UMRUbTB4EvOh31EavKZGwMEX3b0S6n8K
         linvCIdfMU6dinK56HBYHY1egYmncjCtB9Tc/a6UO07/VabCBE9kqPQwdP8OgYrg4cIm
         sZw3nO56xZG+/bo2YtF0rP8m2E1oIAYUG8cVRvawcIiSqR5GmzzohpJGDAAlRVB2qMzs
         PrAYXnTUpHgHwjgmIdc7C5Mimf8Jgk6SO9vxNY2tTDhgObvP6wl1fWbg1bzs/IGxc7be
         J/aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533li6BZ1jrL/mlwjUEyz2rwnBXXnhc6T8BeW0q5HPH3XhbdakQc
	vRzda3PKWCke0iFuLu/VyKY=
X-Google-Smtp-Source: ABdhPJzTYukV1pg0KE30LV1QemhcG9yzkgh213h2+91en5+02Ce+M5yf0RfQ1dJTLmgzqejbiC2URQ==
X-Received: by 2002:a05:6102:212e:: with SMTP id f14mr2383446vsg.17.1626984108364;
        Thu, 22 Jul 2021 13:01:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cdd1:: with SMTP id u17ls653539vkn.10.gmail; Thu, 22 Jul
 2021 13:01:47 -0700 (PDT)
X-Received: by 2002:a05:6122:a12:: with SMTP id 18mr1936487vkn.1.1626984107839;
        Thu, 22 Jul 2021 13:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626984107; cv=none;
        d=google.com; s=arc-20160816;
        b=ltcrqTrrqScJuhv8f0MLN7T+YI5ljvRSO9eWUq3+MbmmcR8Sk9cj6PrRgM/SFOOTDK
         taTwuH19eQXDEjfIe/QwxhqiSvCHlcRnT+zQ3bWVe+Drz0Anr/HFfsSZELzLJ7dny+Z3
         +B8epCYzbeCeD9NAKNhTyjBpjRBRz41blsCA8m672+U06m9t4eZNixXLNiO2rb7/jk7C
         StrqE/aCkLfA3FLcOz87EBNPsSK1vkAr1atifBpaPvQaqjLLZY7ZVAlqSq9K5N6taxO9
         ygJLuu/pIVV+3aCFORh1q/DogsHurtM+Pqc9KghtSom1DZS1QEvvj8jsy1rsF7GTO1e1
         RznA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=vk7wximv9KXIvj0dHX1W0RDGp54ETju5C5I/e9HgJQM=;
        b=zHSJpITIPyKGryBqF5D8sNoGNfAlzsR3pq+Tg40b7HOJFCYJYPeIRsCkHIYRNSNNPD
         y9k/jYaek9C21TChOZhSLgcSD6/yLgRoTJPm0ajXDzZPrNsoUa9rGqS5HtvSQBvWdDBY
         ajVzqEnDqxn1HZqCKitc9X4FnXiGYzTyR0CVqpzO1V2ngb3RiWecNrQYOVxeqNul+cMW
         SnOcTAmEbSMU3DB9HAYGYQR4N/Rwb20MRKnCDKvsMKaOQHiHLiBfKMApbKwfHasjgcdy
         g65BJnsnU9G67UbixwMqtzzN2Puq+KBHx+VsBYoEJHDZFxnJpBdxkIG6fED/dZrn9ey0
         JHjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OVegO9qj;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id o17si1740451uat.1.2021.07.22.13.01.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Jul 2021 13:01:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-VQcxzbRSPxOeW7ZSVM0fIg-1; Thu, 22 Jul 2021 16:01:44 -0400
X-MC-Unique: VQcxzbRSPxOeW7ZSVM0fIg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 82EA218C89C4
	for <clang-built-linux@googlegroups.com>; Thu, 22 Jul 2021 20:01:43 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4894B27063;
	Thu, 22 Jul 2021 20:01:43 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 9f42f674)
Date: Thu, 22 Jul 2021 20:01:43 -0000
Message-ID: <cki.FA17D24638.TKA3JKGDUM@redhat.com>
X-Gitlab-Pipeline-ID: 341463849
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/341463849?=
X-DataWarehouse-Checkout-IID: 16477
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============1267241927596153439=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=OVegO9qj;
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

--===============1267241927596153439==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 9f42f674a892 - Merge tag 'arm64-fixes' of git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/22/341463849

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.FA17D24638.TKA3JKGDUM%40redhat.com.

--===============1267241927596153439==
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
--===============1267241927596153439==--

