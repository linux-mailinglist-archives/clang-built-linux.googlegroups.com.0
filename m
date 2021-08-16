Return-Path: <clang-built-linux+bncBDY57XFCRMIBB3V55KEAMGQELNEDEBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D163EDC55
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 19:22:55 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id u5-20020a4aae850000b02902869d22d7a1sf7186861oon.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 10:22:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629134574; cv=pass;
        d=google.com; s=arc-20160816;
        b=k2KxBmg352SxzlbQkC/Cy6dzbAkCi84+Sll+FLH+vQPy1EEwi6HPvGZJM1zFIpsc6c
         SZfJJjg7izaVfWY0gNZiJJMju5kSYWFUvd4GnqqjXGxUNdS0tVP2lylyCeJJeDE2vGv/
         m9aHvQNdPB+nVfdmNtWnJp4hNV57kP4T0ijLOzNwmxiR14vv4e4/e2e5szwDnR1W+u73
         UIDXxJt9u+GG2IsHjYpN1zpISOhPav/sHsA6vYms13K4Q3XllY03wtKqD18gLemwSWT7
         gvJi7MMvMthQVLpcnqC7i4mjDMxQ78oaaSm0nupJwixgvmet1hk73DTTkpLVRGKk0bVe
         bUJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=32LhQvHWVpaUJSHxPO5HWyouFiNQvoukUzCE8TUN++Y=;
        b=FpsLHKgYAam6hzIbdClIn4qnivSbvRnLpkmCmqOQ5RC6NMJaBmVZOGlHZqdHnbSt0E
         SKYWzmsWBheJQv7wTUM5xtwEEDOndMSW+eRiD+yABWVSA+n1tlf5VyNrFCCsWV8buP8y
         0I5U9Xu5F86Gvt/6HJxlCZFkjNN7DF5L8hA8gxBags9MpvLL4W8f7guNOu87xINQJgsc
         bZwJgEvqw4ZgdumTMoGqswctKVvU79KUemmVw8UnqkPkQGNqkqkoDYsSDUDqbhKTLEgc
         mn+8uxXw7wFonh9k6kKwJsBcmeHiwFPbqEHf1ndZXLQ0zkTQzJ3T20IcTiVMo2FKkNwP
         SrdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XMCllbIc;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=32LhQvHWVpaUJSHxPO5HWyouFiNQvoukUzCE8TUN++Y=;
        b=tSjNrzEIXnJYxGZnn9J0qyHIOH8Z7fBOwMnrx7ivtO+sqBIF12p6MQ63JRshCqTnU3
         YrBkE7Ewh1AZiluiOUn7SLrjrLyTwV/fJOStAQkRt2ezJQmLsDrj3vQa8e7VXlN9RYGH
         rrYX3GNLunbjGFBbx9XTPw3+mFST1E9siLcBl/P+3tOi5SXx44T+HiV2N15q6U2rVx6R
         zV+qgkgviSYQ2a76B07lMamSCEONWe3BTpCCY9xk0+5dkL+6JnWXbVKhXQppuMpBiX22
         JNREr+RVRtznmOyFzb0SEPer+K6SXaUdlgz+0YEjznTF8LHGIZWpSn9d5qdSBRnzP0wx
         ulYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=32LhQvHWVpaUJSHxPO5HWyouFiNQvoukUzCE8TUN++Y=;
        b=gFKckTHbqf9wYSFN9iwp+k19qqzWX/wTMCO8TvDDZIRmwNAld2QKf6i2FEo8nkqkf6
         q9c34bsvomDEjxlq0tin7dqA05UxCFe9dmpgldY66iU6vsnwKsTG6Ty/9PvXLrgTTXCs
         LRs1Cg8JjRtOdEj237WuQzK+Wgv9dijlAo+dNcg9xMzkTNA7dVMoX1lMfjzEwfIeIEKJ
         +fvw3grhn4iWcudnXNyfg5OsZtaPl5u2c8YEKyJwcBjBkex0gznxBckUKZyjMeqNL+HT
         j+gE3VZxCmkYaXbJeTNpXJDcNVKY4ldw8A/Tz4GUdi33kg1gPzZMBF950NV/gGjfywje
         mxBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533a5CeBrlaYzZrMRCMXaUrY4AElTLoSiccxhli9fQ1QYi+rFoH+
	fK6skBB+C6YWRSrU+5yxPdA=
X-Google-Smtp-Source: ABdhPJzsyijeS1KAs+wOk/vpMC+K2D11zsnFhZaU2zwkVKAZF5YP8my3htVAxTzktqnnwCOSEB8qPQ==
X-Received: by 2002:a4a:5742:: with SMTP id u63mr12313342ooa.87.1629134574261;
        Mon, 16 Aug 2021 10:22:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2a05:: with SMTP id y5ls1318otu.2.gmail; Mon, 16
 Aug 2021 10:22:53 -0700 (PDT)
X-Received: by 2002:a9d:6b8b:: with SMTP id b11mr8842812otq.351.1629134573841;
        Mon, 16 Aug 2021 10:22:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629134573; cv=none;
        d=google.com; s=arc-20160816;
        b=BZFghItq2LQevEovjbR5IkFa4Pge3pm/FBzaH7rqFASg8gsw/HOYUVlr+mjMVkW8fr
         OsVw0fbU7ljh++qyo19zH4UHzFqW9xY2gBq9vzNn6xK9xRWMxk15sD56X6fLjRFhFgRz
         m/DN48v9NobSdvG5FjjkdQdoZ0d6X76X40Mwh/i64avAiLfRL8eF7WzI0wDxmnS+ZQne
         DTq5RDNJWRrtGEEkaTujWVwfGpA1bzL5TTW1u3rl1wJIRlLrEV2kyMdFAHYxNRduSHI1
         OgeOFr/OwUdUaHP4vkTk5aMiBEb2PyGODp6SCbLSLR32TJVPtrCjC27DdeAeg20QY/SQ
         0bUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=ApVtI9cH6p+01Q2z+SbCKnAPSia3cffKTUieQqYsJfU=;
        b=W8rio0tBoMFuaMvh8UDmUjX1kkr5byQ09IWJYa+KH3KNn75RVSYiOc7FjLZe5hZ4FA
         E7nbn++zn8qMDDzwWLc2pLnpZ8ruT1DXHm6IB/h2oESOZTfv8tV7oyKl+PBi9Hdgpkn3
         szkrf5iHJ6BV8Hgze9UxmoXoYeS0bCW/eo1wFsQLs/+B2adMOQt6A/CMKKru16BjJ7nL
         cqrWdSeOUoBrAq2vmjevIBePH/8A4evMrbiQcGgHnhD0vxdLc79Ex7j6l4quKspfUKyR
         U9E2CPjCYXNcuysvHihDALO3B4bNhBzNYqUJedXztwVEAz0V+RrZCwx8YLCOJyeMR+VV
         tflA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XMCllbIc;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id be33si443510oib.3.2021.08.16.10.22.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 10:22:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-A7lHAyg1OVuq846vwwutJA-1; Mon, 16 Aug 2021 13:22:50 -0400
X-MC-Unique: A7lHAyg1OVuq846vwwutJA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A0671009607
	for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 17:22:49 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BECF55D9F0;
	Mon, 16 Aug 2021 17:22:45 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, a2824f19)
Date: Mon, 16 Aug 2021 17:22:44 -0000
Message-ID: <cki.F4B58DAE3B.3V9HURAIHS@redhat.com>
X-Gitlab-Pipeline-ID: 354021954
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/354021954?=
X-DataWarehouse-Checkout-IID: 17843
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============7355559062457261964=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=XMCllbIc;
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

--===============7355559062457261964==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: a2824f19e606 - Merge tag 'mtd/fixes-for-5.14-rc7' of git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/16/354021954

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.F4B58DAE3B.3V9HURAIHS%40redhat.com.

--===============7355559062457261964==
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
--===============7355559062457261964==--

