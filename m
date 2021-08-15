Return-Path: <clang-built-linux+bncBDY57XFCRMIBBZ5M4WEAMGQEMIZHGFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 020BC3ECA7C
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 20:01:12 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id o3-20020a2541030000b0290557cf3415f8sf14601424yba.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 11:01:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629050471; cv=pass;
        d=google.com; s=arc-20160816;
        b=r7nh+0zQdVSODR+mCgTNe1OmfF98CzENA3rrPp52m30M/mWLtlITF+/6Icn/wAiz7O
         zmKB3ycuduVPJuZLNU3cDuDao1bl5XXUBrOOQHuN+oaU4Fi2yQLVagKAyVuELlC6rSbf
         kel5FFkYcg6dNFDqi18Oqu7rKjlx1mSm8OrDPqCgJPKyUCz82mbnvl0eg9XFNq63X7p1
         rvwydD0gEHwA7gbrajucKqlSGQUXkee0VyWjNcEHUT7nVCJrjZrKEFZU0scj5deX0xPv
         PUicoxwO7wc/+nwgY5CaTAlex7WoJqzNVPxCz70pk3NfYm68vhHZLr60+Xcgj4Rct8r5
         HNkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=ItTqk2m0bIO4JJEZldczkzTb/g86fhJwOOeo6CKuRtE=;
        b=j6C0wFLOpoMcHRyY1X5BKTDXAHvTwpEGrVt6GacnqE5Dq3UH35DqepB8cec3MX5E2O
         gNbh19qQu+EOA/HZp+xGAl7rOYLMb/DWYqecUPeZhd7q9oHGenbl4gYJUxP0dbfffi4K
         m+Q1N53PqkqBfHgLBBvaTnzqyhI3Nd9FKvV3ABjT5SatkY7YzwrYJvrxPr4MZ+HQQE3x
         FhMlATs9zVSHHdPklzdtjxvC8ydvsq5fTz7BuTjVu6GSHe597S6AGaAX8rojA4njVWS9
         MuwVciIe98B1KOdtBev8fRSzOnGkTurOZ7CAgzUFJ6ph0FXXcgXpXdq0DGAUq4hj/2cw
         HlTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=REKBWoLn;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ItTqk2m0bIO4JJEZldczkzTb/g86fhJwOOeo6CKuRtE=;
        b=hOCLfwAbj2B5WohVg0r+30QFEIFqnNQojKEuXypttByIPP/Mpk0DbnYtvFI5gpCHGl
         WKmBBov7UZ/GrLt40zcMymV9qhgjO5Puq3E1mQ3O1bN1o/aUl1d7WKU447Zy9zTxVU+r
         lNdMAyxQelUshw681NEwDGKfeLPSosQZsvMA7wRmv1A3iw7EXk/H1aHk2WkTSMVSGxHa
         ZE3GRb3iintS6rVO2pmrH6bUXLGSJqSC8li0oFYpWrBpNFfKQFMsW9lJX1ivAadqA4bI
         1yDirHfvUeEXCVng0D6mBc1WN/ajXH2+kA80kazaE3zK7O9jgmFi4n83Zqy95NxlfhUr
         itGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ItTqk2m0bIO4JJEZldczkzTb/g86fhJwOOeo6CKuRtE=;
        b=YU3sX7vuzdig1lIZd/Vl8IcZFGhEY06xlZLcjIChf4Pe+/He4R3HGCmYUgP9/RMF/0
         LXwOTtUglJWD2R95o7Xp47PODFGTPYAAd9vpI+5b6aGutLmNh5wbIBkiJAa2MaI+Z4tf
         +5S9x+kIVaOlu4OZmli0UB5M1M3IYHsgpUMCstOOiiLZXcUN+g7YSHLo+NtkTW+hdXCR
         YpB8hQKb4g6NfVzH85Tp4AfItmOVIKVDSJBcCqZcwOXe2BsGQu70g67bz6YCXW86Hd/l
         K0eRXZcslksAFMSJMid23xRg3rTnL7QHYcuYAkQor3VjGi8p/Fj3oT5heKKQrLwG5n7F
         iqyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MN31H7VD9D1CveXjvsQ/5lZeUb2UacGrEd6JoYFjybIEcTgFy
	qXlGxDKPtvJ2M6OFTLWQ9Tg=
X-Google-Smtp-Source: ABdhPJwqh9X4oD2OLkmDS+ngeMxxQ43Mfm4w4wgvSBDuPJt5NnXubHV+GDoWEeVkOXN5njKpEs3KaQ==
X-Received: by 2002:a25:25c6:: with SMTP id l189mr5613322ybl.170.1629050471666;
        Sun, 15 Aug 2021 11:01:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:db03:: with SMTP id g3ls2402187ybf.6.gmail; Sun, 15 Aug
 2021 11:01:11 -0700 (PDT)
X-Received: by 2002:a25:af46:: with SMTP id c6mr17128887ybj.55.1629050471163;
        Sun, 15 Aug 2021 11:01:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629050471; cv=none;
        d=google.com; s=arc-20160816;
        b=QCAYmX1X0ZV87W5KlqdzgyUpeaZi15Z24vYuXtUPPYWs/07hj90ZjEfD2uSvOGqTJn
         8HEr0UEWv0LlvgvwjuTKglZEya1dDZxEKZDYst8z6YcnMQS/IEVL2wrVGFjARNrVyVQK
         gyyxJGMVfqW1HPsDGoYf+MazmPy/KX3hxmn8E/bdQQ7db9Db7l85IFXJA1JHeTh6l0rq
         fdtGOfLexEE3VV7SmfOF/84GuJTyOUklivqmU+P2Z4Hkb2XYIMnmoLMLsEUBM0TcimyY
         L6Wp0mAkKpDFMNjvKxUBILSGYmMKGbQsTOYGCekI8R3a8SOUSyBHZCLWbUhas+Y30Frx
         33RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=aG/G42axGG83ZX4hnJ/YugP/n+gRbYZU7kxC5v/zG3s=;
        b=sOicDUJlrb0b801SVY55WWcsCbyWjvdUlv4sNxfICOpLUwBbIYE4zjpc0ATWL5b4lI
         dD0NylNzm+zAcmHn+Oxc5Ql1ZIqOGkn/PHvpR0MWJE5IG99rf9FbCLBt85b8IGS2ciq0
         sghHhHcGqS8vPLUwFNVL1f6Kjto29bq9wbA8CRtkS43yLnpF+cvcDuElG1ms1cMv9Yfr
         RBF9ii3smK7/4m59aeO89YMt3IaiN2Xv8GVJHe4OKvAesuT3bH8Nk841lHf7pRFOo3OD
         qzmIVkLE74TNaT/Za0CIkWHiYc2QKCnJvoe/PeUTJ5Pi36mgsV9wU3ueY9ao3/A1tCCB
         HFIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=REKBWoLn;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id u17si462237ybc.5.2021.08.15.11.01.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Aug 2021 11:01:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-447-MutFQL3BONiajIi9224Atw-1; Sun, 15 Aug 2021 14:01:07 -0400
X-MC-Unique: MutFQL3BONiajIi9224Atw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ECD9A1082928
	for <clang-built-linux@googlegroups.com>; Sun, 15 Aug 2021 18:01:06 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D9F3E5D9DC;
	Sun, 15 Aug 2021 18:01:02 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, ecf93431)
Date: Sun, 15 Aug 2021 18:01:02 -0000
Message-ID: <cki.FFEF4A7555.DLW5YO7Q52@redhat.com>
X-Gitlab-Pipeline-ID: 353511971
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/353511971?=
X-DataWarehouse-Checkout-IID: 17780
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============2672408044522544259=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=REKBWoLn;
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

--===============2672408044522544259==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: ecf93431963a - Merge tag 'powerpc-5.14-5' of git://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/15/353511971

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.FFEF4A7555.DLW5YO7Q52%40redhat.com.

--===============2672408044522544259==
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
--===============2672408044522544259==--

