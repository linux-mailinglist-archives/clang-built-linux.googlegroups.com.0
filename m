Return-Path: <clang-built-linux+bncBDY57XFCRMIBBMUTWGEAMGQEA4SLKUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B38E3E1D59
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 22:27:32 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id az9-20020a17090b0289b0290176a0987ce6sf7586595pjb.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 13:27:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628195250; cv=pass;
        d=google.com; s=arc-20160816;
        b=V390wjQw6Hl9CzuEx6zBZ5q1fMi+ujVC3RYrEHmkYiVWsAz6p48I3lOPCAZRF8afS3
         LAR7zqYwr2lPdO1QFe01V4XWIe1QgVPE+cdpVEmKYvg+BwOJeNWoP+xFtIqpQKolXKgx
         a+Pq20YRt4PIRT69XtuJDkSDJMKBc2cwTiGT9rBN//6JdgghBIzjIfmpj5H9jqITOEto
         zS6T4Sa3WsTHN2aZ2RYFP9Cd7NJugx/D0DwtXQbINYGxssZVXM5psigdyJL8HtBTQ7CW
         6Pk1VmalrqTGv2mOm5bZS9qtJ915kuzLt6JYsx1c6PFeQNs0FmySoLTHBcq5gwlzUvKd
         13Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=trXrS2hoWotFINtv91ZdyQEWvlRsUJ8FAXOsW5ggHSE=;
        b=xS+bwnE+dinQb77gFf8vEJqQxUuDnYXCFlbvG3vi0aLHSzfhDY0L9mZHQBbGeHFePm
         SCcXkzohHa1ge6G7LoEviu9+pRvndGhnL+aSQ1hYFVFInBeUiCVW/Jp77J2kcUvGmAE5
         DvfmY8NZa6nEj+Iavjxm3TWjlxVi6Nx6xxTWQvZyUAzEkAsS76h1MB/UdIMMSNh3/C+O
         YU1T/4Lc0pnMk5HqQBIcEABz7ymy+LPVWmxKyzCUQrp0MAMf67rGP0WFP2HZ55cLHLtj
         RC0m2n+Bt7gQWRURWVtIvj1H0gny4K6OvydiYC0mDOR1Gie5AmyM+LqgUwEnju8vZGdh
         TfUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Wc+bhY80;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=trXrS2hoWotFINtv91ZdyQEWvlRsUJ8FAXOsW5ggHSE=;
        b=aa+IPVbTVfcW2EHD+eQAc2MvG2344sGjdwaWMjfJPy1psbqNjOeP+Yc0vCimZ00DT3
         zozWYhnlkGLU9WVP4TtOdrUrFFxQ1Px3Ql4eb011i/LfCwPlCEw7xhCZv5vACgcIc9HC
         1UShjIUOL6fnB5SsAwG7JIkVbBjFH6+CTOieknKEMTAq8LD03C6zA4TJRtQx9dO6dC6m
         i4UtQaEPdytGkqXCylJJ54h+Dz8uYVXiyFjRemxEIVPJSphc/qHyEo6l/nu4GpMwGKrN
         4XJYgn8buh9OsO/v7g1tKWVGs+vANoMEgLI01r9rjTqA/PyWsU1US6YMvbyBFasLKfxf
         V2/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=trXrS2hoWotFINtv91ZdyQEWvlRsUJ8FAXOsW5ggHSE=;
        b=jfUJdzV3BKfCU8b5bsAfczFspbUkChy3np6qlkkfORpP6Paf1+VXFyc5HMIwcNcKbs
         t8ZG7Tnud0tlRYazyb38ltHDwIHlKZqDh7TvcT9r7SbWvbbS0I56GNvnPVlDws5n5gDr
         /5z8a2jCv/hfP5ucT/IpPtJZ/zdzIFyQ7u6IpCETUoODoBHs3/RMuFlnJ59YgMBvNQbP
         8k9PC+nFn7X8du4x+7OSKWPc1yuLha4apZ8DGOkfPvxmBsF/dRtTDYssZ63vz6/4s7SJ
         020EzOHhxfrMnRgUVeC6NECAxOFmMrZkP806p2JQAM0hR9r173GxTZ6T1GDBgBOA/kjs
         h4Zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533j1mQlYLJw4qfjg3RtXnIZbmHjDadBYJ9HSkY2+k0YC1F112Iz
	DHKQzl/Hbt2BN7N/oRIUxGc=
X-Google-Smtp-Source: ABdhPJwI5YOcHNh4LJ8kVBACLpFr0LJ13ttNUclJ3h68U+DZjG4jUtpKkhUKOIhbr5JVfW4cmyvU9Q==
X-Received: by 2002:a63:1962:: with SMTP id 34mr4533pgz.14.1628195250655;
        Thu, 05 Aug 2021 13:27:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6343:: with SMTP id x64ls3179983pgb.1.gmail; Thu, 05 Aug
 2021 13:27:30 -0700 (PDT)
X-Received: by 2002:a63:f959:: with SMTP id q25mr526501pgk.52.1628195250062;
        Thu, 05 Aug 2021 13:27:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628195250; cv=none;
        d=google.com; s=arc-20160816;
        b=L6HFnDsxgSWv9bd0932UXBgFS0yi9vJxUnxGYZnYw5YjCfhCC5QusIcnFH712C8AkY
         +j2zuBr+NKQ5SHMCsWqKGotO1tgZMg5PIyFB7xqhfvBSUN18r2I/+3wDdWbKuqPudn9a
         HJ3aHZX868f1zonx2hGTh0WaK56ptCXUE/03DkOw6MAregH6AMfmtrAA/dsqVvef8QzU
         XvJzilzyo0nf4wipTfUeH8Jz2BRMr7+5ohygMe22yUY2JOyzaB25QNjf3laQ6VDmX6fs
         c/aXUsvCk89oyzDmKQWxPnwMZcXPy3+HBxkeDpxO2S2JmF3SBqd046SpZIhhLxFZNG0U
         p+iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=24coHQ6AZq3fWMUWSvJkhpwNMYmPVTS6UtxO8dibCNA=;
        b=XCayA5HE/RQprc+pa+eenc4zL/IdR/0j9p22hyjF+etlj0lmjRjG9K+IjFhQjWirqT
         h1fsRBAWJrgptecu+bdZps2xeEz+Xh8bbPjDt5lG2w5pk9AnAKY3Rsrqr/8L6+WL3zHU
         6LGUJhyHCFDjiJUFY9Q1uqOtns3yP0yyVV9xngCUChMMXw+e1B3Pou0oNm8VwQ09994u
         LqYNZjy/ntCM1h/6B9PXm84Isw+43R/0uSqAtHXcNZQPJXDZdS/O2bkfgUk7ryTyjk9b
         Qpl6/OX64bhZGVHAd3ajELJdB22Qr1KHQbEi4tDmu1j8g3nCIA9GaGKOupgrs8FB4C10
         lt7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Wc+bhY80;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id p1si300409plo.3.2021.08.05.13.27.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 13:27:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-91-jumjm7icMdOVVChOCD5nGg-1; Thu, 05 Aug 2021 16:27:27 -0400
X-MC-Unique: jumjm7icMdOVVChOCD5nGg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D597218C8C03
	for <clang-built-linux@googlegroups.com>; Thu,  5 Aug 2021 20:27:17 +0000 (UTC)
Received: from [172.64.4.14] (unknown [10.30.33.176])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A76DB6091B;
	Thu,  5 Aug 2021 20:27:17 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 902e7f37)
Date: Thu, 05 Aug 2021 20:27:16 -0000
Message-ID: <cki.EE652A77FC.1M0T5JT283@redhat.com>
X-Gitlab-Pipeline-ID: 348762155
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/348762155?=
X-DataWarehouse-Checkout-IID: 17378
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============2229393235784202195=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Wc+bhY80;
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

--===============2229393235784202195==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 902e7f373fff - Merge tag 'net-5.14-rc5' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/05/348762155

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.EE652A77FC.1M0T5JT283%40redhat.com.

--===============2229393235784202195==
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
--===============2229393235784202195==--

