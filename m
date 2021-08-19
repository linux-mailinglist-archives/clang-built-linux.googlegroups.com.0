Return-Path: <clang-built-linux+bncBDY57XFCRMIBBXGN7OEAMGQEYDUZLPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C6F3F239B
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 01:18:54 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id m3-20020a17090b0683b0290178cb50bc1asf3686648pjz.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 16:18:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629415133; cv=pass;
        d=google.com; s=arc-20160816;
        b=J+Axl2iK/PiCSOXvR5eqAo5TKWmDp9jH3qsV6M+Uq6hIh0nBg1gbeRpDvxIS8eCn2G
         tj3EQzS6C88OUqKpYsEbBYMESUiUsH0GlKCwJj3id/2UvYQlxoug6TIX4YGgwY3goTqE
         Yc4FBwJ3UgbguW/i0zXHknnVQMpeV4sLm3bVDW2inWIrKoA1s8lgto/4gFtBvOMSK6Bo
         LnNp2J+70Or2M3gRYJogzgKLRovNI9udXAewdIGNj/OEovcnoSjjT3HTknwh66vXySqq
         XNTA4IaG8ci26QZjcf52zKwOyFwL4/2Y7/RyfT80RBBUhgfW31z1V1KHS9z7RdW1DNa2
         FBTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=Q26cdmTHtHypw97WVoNGsA+YKcokvH9xZRys5EYNico=;
        b=J3se3hjEmZeSLDjaVm13DD+vyaKU9LGgusQvkBc61nodpabAiBtZBJAT9q7WfBtw4q
         tz/usmeLcKvCPGtOoyfQToITgLCDSIxUtUvE111tLsfdmwhvoJH4LwUIJ2NGuaQS9YDx
         jsklt1PtCvzEfh1HY67Q4+RyqqlMbk8W4hw6P/Q3DZlawr7ZmF3cCd7fTYurEfrLJIPB
         CzvWlr7qe6DVasoP51WAYpYvPHeJyGDSkvDk8CSJpWgkhhI7AgxeqVIZD9AVDMYjdZGt
         evgac7RI9gJ2OXvxcmRMQfpla5+h4fP/427JIRfaQW+MAp0Zn+4ZL6r2fiyLge0S87MG
         HKHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MajiNyCH;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q26cdmTHtHypw97WVoNGsA+YKcokvH9xZRys5EYNico=;
        b=onuFWJBm3mWTEpS7tkileV1QuXHMEIx/PXPx1+OMGWgluXBICksUhX8sHpYbjAbrts
         0dECVKYUMFO5lC64zhHPObMSKsqOl4gmuva8Ge9fYnPaNBgMENfaUxhgja1kYPazOAuF
         Z6Pku9wqL+Nq9fXOUWYR7ZN8FA6gfaqyzxmkIDVyST912kWrEKFEvMx57snbHH5CWEAk
         ZlRTBP0p7wW8EmoPdVn844Jp/boVERTSfSKl9D2aWIWw6mwrM0S+Jk3fHASDtbbem30o
         1ltyMjErTGRE8lXu1VOC5ksbtDEB6BJ+dOwFyYD1jYZ1JCia9CRpihvZPSMVLUDdRr05
         a51g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q26cdmTHtHypw97WVoNGsA+YKcokvH9xZRys5EYNico=;
        b=rgFzfy4kxyyfjfLy60etUeDmEsWAGZzKhdwOt7X/tngXUb/CJoo0Rku4GU/TQ8ds6G
         mzjTTIPjQNel0us4uy5tT1I6qicrtu35CI9tpovz6ARQsOfPvEO9XMDASMUAg3o0ig7l
         K/xaLRlBV2ycvonDa3RGNbfycszdSYAXsJBtOFESkbPJP50XEO5s0mhX7PHBeT0Aa1Xp
         aSDVyKnqebklmk0uLqLo0H9CjFZSPiIrxnVjoh85vunaBKw+xXKXJ+htOe7TwC55XtrY
         pl6XJeS928X9Wx/VuFFVGvGFDxA3yD/nNqYqraRhShWViOy0623xyyt+3fxwkMhpAauT
         amlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lUllqzheTEah6EzHTU8B5BYufgAErQx3BVlThCG45bGBalbx/
	NWmtsEWuHcUxWXaTcSZfWz8=
X-Google-Smtp-Source: ABdhPJyBqjpvuU2ypA/vCvDeKOHxcls7stq4Mrf/nlRH3bGkZxf1J6dl6FI90+Qd1N2X+Lx8Ztt+Hw==
X-Received: by 2002:a17:902:bd81:b029:12c:b6fb:feef with SMTP id q1-20020a170902bd81b029012cb6fbfeefmr13912459pls.84.1629415132803;
        Thu, 19 Aug 2021 16:18:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4b12:: with SMTP id lx18ls3766447pjb.3.gmail; Thu,
 19 Aug 2021 16:18:52 -0700 (PDT)
X-Received: by 2002:a17:902:d3c5:b029:12d:32f2:8495 with SMTP id w5-20020a170902d3c5b029012d32f28495mr14126007plb.72.1629415132224;
        Thu, 19 Aug 2021 16:18:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629415132; cv=none;
        d=google.com; s=arc-20160816;
        b=ShhLQ+UDR5i5B995ngiebT0dFAb5O8d9eCXZwRz8YT/tncM8M2oSBaMk9SKJitlGmH
         7Gmbbu7ubPGehuKjuLW79SO69NXDLcnvEN0xtQhZQxUH4V+sjIHTVMgB7LQ2Ty3goknO
         2ebAwzWPKs39ZuW6MTc+gHnPtR2dd+AZGrGvRjh5JnKLMK8RBhZSKKc30s4ezmB1Melb
         ZHfnUUQjbkFYHAXyq5v36unDXl38O1P0PnozhNk3pxt4rh9g6rAtYAG4MkZMaZehrJZw
         F/e/38j8eNq4xL9BCerwG0Ll7Pvap+PpWM+1PhfLzNsDon0UcK1wpeiVxrtJDSTEW102
         xDKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=KhCbRMb4g8kOCFbSIzm06YH0TXMIGpGxk2AyotajpTs=;
        b=nI6dIZ8INQ+aLOm0GjcyIPdAKmcrGr3BVPhrLhKetWpi7UIzo9XD8zLU08hG/tRmeO
         5v8NOzJqYWyecEAW5iEAxCK238qfbaJbu+NZW2bcwLK899AgoDPOXwxYKxdH5E2hGplv
         c50waMT+ww0vSxXitPc+VFPZ+PdNFcvo2vM1ayn0MbBTJ1BedInOEuQrxcCjNYmj+hQL
         hQEs5W8p2/2kkeX5sJXS49BORPGBkg2TFeCOWA+Oa8sSVz0VjMuPifU/RUQXOgy2CDV0
         CJL24QdkKVVG4yJkPpZHg6/oC1WNScfpgLLAyRBC/rHG2UPIydl7PWyalDst+qVuECtA
         AwXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MajiNyCH;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id e11si425677pgm.0.2021.08.19.16.18.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 16:18:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-352-tsV6p5JlP9mD1JuhSswSDQ-1; Thu, 19 Aug 2021 19:18:48 -0400
X-MC-Unique: tsV6p5JlP9mD1JuhSswSDQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6559B80292A
	for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 23:18:47 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 796DA5D9D5;
	Thu, 19 Aug 2021 23:18:37 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, d992fe53)
Date: Thu, 19 Aug 2021 23:18:36 -0000
Message-ID: <cki.A104889DB2.P40THWU8VP@redhat.com>
X-Gitlab-Pipeline-ID: 356168361
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/356168361?=
X-DataWarehouse-Checkout-IID: 18057
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============2585622842442888995=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MajiNyCH;
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

--===============2585622842442888995==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: d992fe5318d8 - Merge tag 'soc-fixes-5.14-3' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/19/356168361

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.A104889DB2.P40THWU8VP%40redhat.com.

--===============2585622842442888995==
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
--===============2585622842442888995==--

