Return-Path: <clang-built-linux+bncBDY57XFCRMIBBJ7T36EAMGQEO2B5JFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id B89C93EC408
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 19:13:12 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id k3-20020a170902c403b029012d1b645e45sf8155664plk.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 10:13:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628961191; cv=pass;
        d=google.com; s=arc-20160816;
        b=rauEBEJXXTlWD1UNUBnfweFzqOiHCbqnE472gkLLiXrzACz3XkG1w2VwfDlqaR8UNr
         kRK81Cpl/nFQdPOH2jOs1lmQOkjNaZZbo02xG9D1R5OPmMw7fUV+evchkXvWwd0KjAcO
         LT+xR6OQjI+xsI28lhK0L3n+iXdgGdLUuynEHGz+uSpBsefWBNmn5HcNSq19DINaON+W
         rREwKxShLhJhWf3Ilj7mj5dfxyp/GKC8UzmnP8uEYXx3SenyKQOFHUZha1vGBMF6sI78
         vedyrt6Eeru4zoC09HbVcBjbo6+09UfmVoNZ+xbaw/feCaY5+Z7Z8z6xpjCQ72dhgXFd
         t7iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=wnEPWY7SsjoPJL0D4ZumZBZvMfiOeWARATf1rAJiAUk=;
        b=X47ws3FFNMeO1ccK2nSypH5LPvplAhwSistWAqK4F4xDZUde9YVONGk1xtYqNC2X5l
         Urrd+7/QS9nul/0yJyDKZXnevsGcrjxSUblfv5R5mPR8IOWg6juCd3jZx2FgTm53wg47
         UVegPiuqqOcSIzkkWdoHq0lR2YevVhJj5vrvmI3p3S5iMH9JiRUg3tOvAt5SzLTqi/3G
         jz8H6KP9fsqsNO+sCC+D2ZlL3QBeBPCab3VLIh4AparUwzkf8pkwUmYW4RrQAqlrUeKG
         IiaHZuYheiJXvsB3Dv/KPtrtCxcJswva36lODt8Vm0KT2b4oVAiAHkxQOJQ5rhOpfbTY
         dNeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UTv6XOeU;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wnEPWY7SsjoPJL0D4ZumZBZvMfiOeWARATf1rAJiAUk=;
        b=EiZn9lAl1tk650UwKxr9U+ZAPLYMEiJoZtK9pLkhDm7Yd8PuYicoT8UeG4AJkOBwPF
         W4u5LhV0V9DG2O2jdFJQNfCpR2jYtAP5Havacd+C5S6SRqs0KG/8nklBdu9sEHYCi4rG
         UfnL53Vg0uByiAqoDK3hpKcvn1Vd9A1riRXpkvKH/9gotRoJpHBGinaM8JHWjJZw8Urh
         X6uFXUideQWcJHPXgJ41Mbi6xtIwyhZN36jg9l/WLlvkqm6l3Tf3pMyg2Ycmk2+PTila
         HORKaH+14Q0UcOSm3JrV0JUjmLOYRaqQRmRGrgqIyRpCWSnDVjMr0ywRpe0qUHHXqF0u
         34sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wnEPWY7SsjoPJL0D4ZumZBZvMfiOeWARATf1rAJiAUk=;
        b=tuE6qnk4CL+Gux2iSJDN5CO0L4zaqglh8wDaYUh0+p6KcvqY3N+doYQedOTGTUwhj0
         w2TKiUsdOelfvb0mAfhuwsmyNRQmXAQnqviBoJISSe9Q3j+ehkXhXp9LrIiR5/fMQu/m
         n+3hCEIrt6LYlpfJ5jgfys35BW8GrogmXJgw8ai3EzHNUkWsT17OehgocpLvy345lceS
         HWklwsDUYXJGdmKxjGgWGSn5az600Wwse/Kg/M507Zd4oiLWXncrGCMYKOuEt3kxzvU1
         +Wofoh6QepkkSXVNfJ0Ae+iEOd4PoEYUnFQW4KC7tTFM8HGY7SiemyfmMx7nK7jiDNHp
         lXyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531A/dFC7FkftAuECV7R9kU0Yk1KiR8WCM+z16isw85tXBHtkY3q
	yZkDSxaiwrieRGx57S/X91c=
X-Google-Smtp-Source: ABdhPJwuZiWZ1Ilv+qA7gge9gzVmXEcwQrkQDwZ1aK1gyWDMjSk/1MC1q5m6r4oyuFUowwHkhZ5whw==
X-Received: by 2002:a17:902:b947:b029:12c:b414:a018 with SMTP id h7-20020a170902b947b029012cb414a018mr6558336pls.30.1628961191380;
        Sat, 14 Aug 2021 10:13:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6343:: with SMTP id x64ls1790716pgb.1.gmail; Sat, 14 Aug
 2021 10:13:10 -0700 (PDT)
X-Received: by 2002:a62:78d0:0:b029:3dd:8fc1:2797 with SMTP id t199-20020a6278d00000b02903dd8fc12797mr7847489pfc.65.1628961190789;
        Sat, 14 Aug 2021 10:13:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628961190; cv=none;
        d=google.com; s=arc-20160816;
        b=EYbF7dTVCp9bpVGnpszk/DyBg38R5hEeKjuOTv2dvfCD1y4Yi1dfJycIUVFTkIWvHH
         IBigxELkWPjLEGU90/NxFY8rVa0D98oJ2AMOuZrQG2nrMxeyxa9Lq5fNHWaaqM/jLIAD
         fVtjLXr2UXaVz2sXHX5hgzGbZLZ+ERgKuqLMuNosU7UbKKk9aYQeDodpHLKD2SWfD5mO
         kkOvFizPs+P3cL8fjHVAJbu4BR7kcdYyxo+uOp2mpCYKkA7Oai34lNJI+kAVf1qu+DAZ
         D7BaGtXolyLJakxu8ZXeKYg8G0+FRW9gg8/KkG8gQT/plskblyMB9JYen7q+s+2fi4CE
         p2IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=gfXoB/I0DlI3h3dRcwry8USA4EuSkXcfoSSpGJXW7N8=;
        b=JthGt3AFh3pPGuOGp7JlhS1Id5vATSNwWig5or89dgTtZEejyQHeZdW1348vQPo5PB
         4pYtRo0a2pTjGTbATys49eGnk7+nNQhhLxfB5Yfc30hBfdQHaotKDpcP62srDZTijVJk
         p++HfzemCr7INKvM56bIvEem8BS8jjXfAA0ahGaY2GePM3LvyDMweiVLd7SxQ2gJeEPg
         kHVaoA/NBFIc291R1ZQ+gS2ql6kaCdabFWH+OXvO2NtNykA1pqNaU89wK7rEf0tvByzo
         s9KeZeSwTQF6yIVz9RBymbHMPFQ9gPwpY+W0GfC03C/PrG0vMe6fALYqdEUnATzTBxGR
         jjEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UTv6XOeU;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id r14si340710pgv.3.2021.08.14.10.13.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Aug 2021 10:13:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-Gn5WjXHmNd-X0rMko_kG7A-1; Sat, 14 Aug 2021 13:13:06 -0400
X-MC-Unique: Gn5WjXHmNd-X0rMko_kG7A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 06D67801AEB
	for <clang-built-linux@googlegroups.com>; Sat, 14 Aug 2021 17:13:06 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3C4F360C13;
	Sat, 14 Aug 2021 17:13:00 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, ba31f97d)
Date: Sat, 14 Aug 2021 17:12:58 -0000
Message-ID: <cki.B677E825E3.VE19UZ8LMK@redhat.com>
X-Gitlab-Pipeline-ID: 353283753
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/353283753?=
X-DataWarehouse-Checkout-IID: 17761
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============3914627432967989576=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=UTv6XOeU;
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

--===============3914627432967989576==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: ba31f97d43be - Merge tag 'for-linus-5.14-rc6-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/xen/tip

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/14/353283753

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.B677E825E3.VE19UZ8LMK%40redhat.com.

--===============3914627432967989576==
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
--===============3914627432967989576==--

