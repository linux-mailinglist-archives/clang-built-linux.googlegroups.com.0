Return-Path: <clang-built-linux+bncBDY57XFCRMIBBNFBSKEAMGQEM4ROWWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B343DC1B6
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 01:52:21 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id q3-20020a25bfc30000b02905592911c932sf11644379ybm.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 16:52:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627689141; cv=pass;
        d=google.com; s=arc-20160816;
        b=YMXdde3PdVb9tTnY3zNcOzHZS2DrwQVPJLWCUkgPYPLdV9VOB23bZf2SdJksTLcdab
         NtBr1/DBpK7gGQyt0RuGZqNkVgzFo5UuIVLuyHeoqUS2W1+LBlGYlBv6/2qU9g+UOdW1
         sJcDlL4oQrkNGWgZC9axY0iOWZjxbJzNh7MABSgiYpfGR47rQaRfZYpqN+0ToiNciIFN
         Fjae2uz/rVKwKH26YAZuIDsYeTm2BMIgecF+h68ZEsIWXw3Zg7FVw9DrZxIq0M3swJAc
         tFz95hVBSZX7WsxagnT8A3//4p48svMpbZqAorYFWm5PmIx1dkdgR/ZbiZ0lQphcnFqK
         r7fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=E0Ql1VUfAOslwt0QxaNmYLhVcZ7T1zk5P854tP+953U=;
        b=d+H92fN3Aq0d3IoVSVhrQ63xM8pKdsvs+kxrthJSLj+MQrX+ubYEyAkPK3R/6JvhVv
         bKGD5+Df6bbLrLfqKOzB5AbIvcePmT0OXZf2vNQlerboUZ4fLeLEek4HFxUSPhV97FaE
         pJ47Cu5xPE4c4LnK+5gNymDeueLcwy9svmkyWmWcjP7Seeqfdg5nOZy4OGWkeAnktsgt
         8Yl4BhcIbiR+YLD5r+D8GvG+P2ybXLHITpnHvA7HXxPpNWVTmcIYXxNx4Q06ZZJkCzfo
         Lr8XTkh9xeQT7XNksXTrL/OCCU2RsLwJ9byTwI2zokC2sviM6nN7jK9Ew1B7yi7m0PZ8
         a4NQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jSUeZu2x;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E0Ql1VUfAOslwt0QxaNmYLhVcZ7T1zk5P854tP+953U=;
        b=H6fg9oR4f+Ks7DDzFsnr5r9eKAR/LUZAe0Pn9T9c2HLLJPWhx5biwwFtdda+W8jasM
         8GXCTurqPR2aaBwugBJEvF6N6DrnZISLSmU4D9DAqsXHHiOwfT4YQAz9N7WiL2bZo8JQ
         wXHufixtJEmzZ17YzkJwxopFxcshOB+WyWigxVBHcDqERPSVGVKTozm6jJzf9VtQNV35
         NlKZfKivsTZQhj2RiUnfS0ntBRvOBbtmhT5tsob5ocv7jc4soCzBDC7CQxR4qqePRrtY
         cbF+sGTQGFI5+gfWo5WIwALHVkjWo/cRFCrsFFs8EAJ1c8S0z/HJeZZd4Kj2ADvC0zlL
         3giw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E0Ql1VUfAOslwt0QxaNmYLhVcZ7T1zk5P854tP+953U=;
        b=hqC9l3jWmvD3nwzkelhvd06qtSK0e10pqXdhHWi6Br/vPJYaVMmFJyvoJimnLuu3zp
         wF591EEUA6YfWhNIQIcaI/vqb3CWZN5KXg1zOYCQa1+HPyVuD1+uxaFON4lx6Yl+ZTN+
         hyyRPTd7Xi2su8wBXhOHl6whscFB9sw7S1dXcWmFoY5tDCZ979hHxK84LiZf/bexmZ4C
         4Mo40eYXn5EcMJUfjEXBgegNUCqjle93AlS06KXNPmOK65cLH8347zT2VVnvPdtuG7PT
         cfdGI52JKeE+mWalxgFdg59gH6eclXPS2uv/T3x7eDdS/qs0UkkmYFtfJnmKU87p88K6
         RWFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dQOiB3ppd0It2PqcatpKr4cDPYArD3f7Hr4pSiwvRuP15fBuG
	fPEo6PtXJeHXcJDRaWzAAt0=
X-Google-Smtp-Source: ABdhPJzUqQnHiDhFeKgZlKvN2K/4y7RB478Hg4dIJomXIMlk1WmACUKO7GCImjjkFUqvNAkHCtrv5w==
X-Received: by 2002:a25:6843:: with SMTP id d64mr6545606ybc.262.1627689140896;
        Fri, 30 Jul 2021 16:52:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d705:: with SMTP id o5ls1558631ybg.1.gmail; Fri, 30 Jul
 2021 16:52:20 -0700 (PDT)
X-Received: by 2002:a25:b512:: with SMTP id p18mr7002567ybj.103.1627689140436;
        Fri, 30 Jul 2021 16:52:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627689140; cv=none;
        d=google.com; s=arc-20160816;
        b=MXcIqdHAtDi+/whoKi3Zyl+SQRYDEkUu8Kj5dQEMdxCeInqgXDvOp5fURyoKIRCQDo
         CGuATvrgcbUta4HsQFhvWOYZrXfQ4uvvnYMjv03oCX55lH3z/WIyyH7nOVhh7kDGzUFF
         pmQxtNBhh74d8Bb0ougt5WBWv+fpG4LiKbDIj8YFZz9sn5wsjxydCVOB0kKPYsGR5olH
         I39qR0aNN38LynTNYYBnzUyX97EfXADac2oMgJZP4ya0XMDcLAXWlPJ1K2yi+B7eGPpb
         RRjtkOH6zvSNVrCV8llz8PQYuQvSUGVndA7GzZvBQi6x8JRZPC46nDzq+k432Wm9O+f7
         B8Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=IHtOzG2RiYJQArb/YUJKWxJRVFa3SKlTUdmsLDmzC0o=;
        b=ghVoiJ/4kXK0RUKadNdoCYW5Mr1FiFo7qT361GuZ6zKwDDHgBmleieOTPjfjkrD0mj
         KK+3OTjRzyxIsnlX4ft+coMXqZgPHIqfBNl9NXRm9UQqwQhQMZVvtzVXzx6AAlN8pcxv
         nz5cTiWdJ5X+3EpZPZDo0x6zpekZArYb+h8neKbMA89DwkdtQVecxXGUN8mRhY93sdn6
         Zx2S2xEfvRLD5k1bgFSVQGnwbUMDk1BacEvceZZonkKQQTqrt7WW85RlAtsRmwIr8Y7d
         nd1+B1tFDTivsKNhRf8EvWWxthF8p3X/h1nd9SKHbD81LgXa//PQHmMlPOWjsLVLdEM8
         7hQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jSUeZu2x;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id o8si226169ybu.5.2021.07.30.16.52.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 16:52:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-304-o0KkXZEFODyGkuh_ihr0Xw-1; Fri, 30 Jul 2021 19:52:17 -0400
X-MC-Unique: o0KkXZEFODyGkuh_ihr0Xw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C1A991006C83
	for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 23:52:16 +0000 (UTC)
Received: from [172.64.3.44] (unknown [10.30.32.237])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3A71D5D9D5;
	Fri, 30 Jul 2021 23:52:13 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, c7d10223)
Date: Fri, 30 Jul 2021 23:52:11 -0000
Message-ID: <cki.2CFE77790B.HB77EN2GMI@redhat.com>
X-Gitlab-Pipeline-ID: 345792774
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/345792774?=
X-DataWarehouse-Checkout-IID: 16978
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============3725456112179142195=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=jSUeZu2x;
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

--===============3725456112179142195==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: c7d102232649 - Merge tag 'net-5.14-rc4' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/30/345792774

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.2CFE77790B.HB77EN2GMI%40redhat.com.

--===============3725456112179142195==
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
--===============3725456112179142195==--

