Return-Path: <clang-built-linux+bncBDY57XFCRMIBB5XK4KEAMGQEZ7RCZOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id C47C23EC7B6
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 08:34:31 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id d35-20020a17090a6f26b0290178ab46154dsf9781385pjk.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 23:34:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629009270; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bq/dq7mkc1gA+SMttr52FGx5GXMs4UDhQDeqRzgpB2zqt0wMw/0yCkSVNaWveaIt8a
         dyfpjq9qKVgzYPYxNL97Ub5OL46UhCeMSNhiSNbXo3qcq3qeS8mG7joSwlCiLMYq+u34
         FjDaXPKuDLcJ0nmU2ZMVtuxptFNsVXFA2/0KH3eZfu9G2hFCFjSZZNB3lQZhZXUxGnAL
         8dyjN36yKFhtWPfpV8WfUqPjFiUa+40yt9PI11PizowfwVXeBhCRmLpT0UX2jYNPs/yT
         sZ9LxNHdQEq7K///JaYtfPHRBlLtlf3VnrtnxrWwGVF44AoMMyVE0yPeVizWU9R7d3Si
         WYmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=ciMBb+JURSWnrh9KLux7nE4bFbk7G+zpsj7ovBuR+WU=;
        b=mfictKDJ0ijRW1Kbj6DzMoa24TCDu2hvY9Kvj8k8UJmvzVwcCzV2GMLwF0kDZzB432
         WwF9lI0AlRyreFpTiaypL5psJJRzzRV8kKLqHddmOwNrnaB2SpuMSmYdCPdnuQ3qnt8U
         /tzeyvfOup07TupQGZpel7dKqC3IXwABogPJC7/flLoKjW8Fl4Fc/sGSxVNVTAlXdOM9
         2bKqQdl4J4dcxTrzW6x69WWW3ojrqukrd5BFEO6MXI7z6190HYaw1aFFafz1pgMZMRuw
         ZiQ2VdccUioMcDu24gF4AXIOfFmTD3RCHi/pcBijSBKB8rcROIHHV+nK8/PC07toYQSb
         j7cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=A9eU+Huc;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ciMBb+JURSWnrh9KLux7nE4bFbk7G+zpsj7ovBuR+WU=;
        b=c7E5Qu+rITbVYgnj0oMhnZTCy5YPcSr253+3eRob2RywQQnp8bz92iTt8Bb1tT0ll+
         pGKZaAOeV6kxSWNbGOFNVuPC+v5JMWz8fNeWMnn/q4viXHFVY1uu6MHYK4l0aWtj8h4V
         1ERoGStF2Pgfq2VnuPzk3foPhjQn8eW2kB2asv2w2p61XA5ZXPQVV6UJJxilOsT95Qz0
         EEacQQXJKLFnbLjD8xbPoEFq/2dB/NhZFHGv3Rq654GyPKm0lhVigaXnijpYeGBYSjiS
         QkfvIq5VbEsro1R+ybCBl6ghuH8/cJMFL2yaEVNG1RAivUD1ryzDg6qTtHkhuw5BWPiE
         /M6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ciMBb+JURSWnrh9KLux7nE4bFbk7G+zpsj7ovBuR+WU=;
        b=qOVdI+nicDox4aLq0R+E3s3UdkQtMeN1sfU9TjG7ygeyJW3PTrYLuQBJsZvB6ht1EW
         B0Z2V/ZsW7VKEoJOuM9yyAj0dznjPsaZpalv/oy6Qo6wN1cskI2aZ4w8G9S37l1KCmcs
         cO+WJ5vAmRIBZsGXUdiKX9F7jSiXJx0HGtYjz5mrHlbrUT6KjjEzeeDz/+OayhD1xJ9S
         PoJp/pNpUB9oHKv7IwTTVDj/l4DeDnTuh1U1ejCybt+d+AuuLSURiVuu8PsLtf5+jSCs
         weUtXeMcHx12yQrDSVa7oxmY/a8vdxQUjieOY7wlt0anf4q6fsoaWloVYQ8qvkmPUonP
         uDug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53259+6wTzHHE4D1MfEikXUmHLaIfJ6i79RlXFU8lrkURXImGLzW
	Dly9Kely39fSgJMGREOkyIU=
X-Google-Smtp-Source: ABdhPJychRF6FLG+Nx8KReGFhAHIlhBDxB00CJF7i4WYSjNgJtz08oSSo2giD1yRZtZaSqM/TV2PaQ==
X-Received: by 2002:a17:90a:cb86:: with SMTP id a6mr10709946pju.137.1629009270389;
        Sat, 14 Aug 2021 23:34:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls2605531pls.3.gmail; Sat, 14
 Aug 2021 23:34:29 -0700 (PDT)
X-Received: by 2002:a17:902:a50f:b029:11a:cd45:9009 with SMTP id s15-20020a170902a50fb029011acd459009mr8404909plq.38.1629009269839;
        Sat, 14 Aug 2021 23:34:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629009269; cv=none;
        d=google.com; s=arc-20160816;
        b=LnDxybgG9NSuPRhtAZkUK59cNjaSBZli5VeMFw6N1xnFzZEBIJyfIht1+Ojm/SVgVp
         5OI6Fy2SEPrIpeCBqoDicsu6SMNkxPnvEBOKF+TMEacMC6dMGWB4iUT45ZsZ+w3WZDgF
         xP+VyeItmW64ZeZU6WqHC9yDAZPXqeuXT8xDJPXXs0lRtmckXMpn/5EPXqQAEjNzkTZs
         Uz+BVwsMQGC+YutUytorAiHnTgMjA3ZnCpYG0CHBuMhpdv6YvgiacaZJTXV/HI05tXoz
         dAYBysaVaxdnZDNxJd00FCzGkralXRVcb7dQtnwCB4+lMRWhnxJE1DLVTnRlgOq6x3hS
         TISA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=HpMIzCOU4zDrxnlTlBvomojVPWSBU2OFy4OImId4638=;
        b=dbcQpedDR7uIyVoUKjNaRfirp+EoDQr/3Oi7eSZtgOnV26Els7BeJ4Y8b0e1gauANz
         oamdpz5J4YJ5TQ7tkEXkvgoi5vIvbdKhRIoIjWLxhFpXhQkCNRal7IdEasWt7TFIiuOU
         xeUdTqUB4owOEAh+tKhxKEZlOXmzeWensV5hO1mUggDbGduZwTQA9o+w1m08SfbhlsUl
         KZkbguldLv7zKIK+ngYU5Kz7LMP/XoJX/SdIbTCgHlorEcX51LwBVpNt+re+1ntJbcSU
         NZelvreQ6dIJ+YCjsFoAc4dlO7kzZsxvMvMfFTkgZaStANj1W2CRM0q4vskogog6x5GM
         NtdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=A9eU+Huc;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id e11si39573pgm.0.2021.08.14.23.34.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Aug 2021 23:34:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-1nd5_1FbMtaq7FAQTdNaJg-1; Sun, 15 Aug 2021 02:34:26 -0400
X-MC-Unique: 1nd5_1FbMtaq7FAQTdNaJg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 84CCD871805
	for <clang-built-linux@googlegroups.com>; Sun, 15 Aug 2021 06:34:25 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1DFD11017CE8;
	Sun, 15 Aug 2021 06:34:22 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 0aa78d17)
Date: Sun, 15 Aug 2021 06:34:20 -0000
Message-ID: <cki.24EBDD34E9.D4U3K2C686@redhat.com>
X-Gitlab-Pipeline-ID: 353409197
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/353409197?=
X-DataWarehouse-Checkout-IID: 17769
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============4830717977976054556=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=A9eU+Huc;
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

--===============4830717977976054556==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 0aa78d17099b - Merge tag 'scsi-fixes' of git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/15/353409197

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.24EBDD34E9.D4U3K2C686%40redhat.com.

--===============4830717977976054556==
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
--===============4830717977976054556==--

