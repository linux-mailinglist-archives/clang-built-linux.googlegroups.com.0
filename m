Return-Path: <clang-built-linux+bncBDY57XFCRMIBBI77VOEAMGQENIT7YWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B9E3E09B4
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 22:59:16 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id y125-20020a2532830000b029058328f1b02esf4187451yby.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 13:59:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628110755; cv=pass;
        d=google.com; s=arc-20160816;
        b=LONXVzR/fT3C9ENMGl71Eo7BhFuPsruTQcZFNUkGL4wFq4V1Tjgk/WyFRwiurjdTD/
         z42KsREKoDgVXGbgSsD46LXxttZjFP5n8Ji8mjgYzAgC384XGzZskkT1xklNfUQ9t0Ut
         RbEjxgT4CmTlka7uZPq1jOrVmL+N8T55+zxt7EVKgIDaIts7Q2tB6OFZRITyMzKaTF1J
         Bkgw64nZeH5oijSX0eOwQM5oR45Q3t4FTnWWNZZjAa5X/FNOl+BoWiTnhYp2KnTGIZQz
         rK+pTJESIj5ysJ7UEIOvpEXJOBCjml64BIo7ymlmLiMWzFh5TXc7SijH/UtJluWDCm5r
         BBKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=bwB/1kznGuKagojRGnXxmq6qljQhg6KLPvrgJuNjTWI=;
        b=KaAhN+jtkk+1gyZI2LaTOco9AtKgG/2TAZi0Hi90S33qZDCFEw+ebXTvD4z6rkKRgU
         j69my4BOEOEaam/XWMYMHAbsxQmmJFYtYfFV4cWjB6Y/Cd4AoA/jU6Dn5K4G5483opKu
         bsgmY4/rrXLfHIAwLj0Gq5UUbuSY4qJwhj1av5Pfu3G/B5cHPhzsBbwltkfhGmLjaxcD
         N7cTxVyPkcvPIa/U1bSPwoNzIpyHTu0Mwdq9ewt7qytUrwJnwhlW1a4n7fyj9+Jgq7ro
         v6tdBSYkKft3Ofrfn9aRFm7fJ+fBVcidnvS4tRyr7g0TBSR5Q0J4rbw9w8KdKRn6e0Wg
         hNYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=R9hjocGN;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bwB/1kznGuKagojRGnXxmq6qljQhg6KLPvrgJuNjTWI=;
        b=aW3JO2BjcU6jfzJchZDNsB2tja/fTo3iKefpWd25FCxQ8fI8kmQZ6zcihQo0mNC+Ca
         f0Y82ILBbnVs4So80D9VtikLeXw7IPGg7D3x65YbuebBM4mat5A5ZkaNWaRn6b5FSHFt
         eUBNG9qt97MofTCrYl9rkmTO/TZ6SBx7n2G1QpRehUVM+2+UznmMYW31F2sVv/VBk96J
         XNKLD3J2A8lGC+v7Sv5RdAh15hi3cCsJ8RFvCoGR1RlKaWk9l7dzEBbK0QxBgvxsid6C
         O4qGO+ejhgia3gEnv99EZZAmmfhT5K533Q8/uxBo+Efq2etHSWw0B4OcRu+ClTG8vPvx
         8fsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bwB/1kznGuKagojRGnXxmq6qljQhg6KLPvrgJuNjTWI=;
        b=T21Hliw6Uww3C/paBxnKvpp5F/mEfnrAoNnW5+4aNvZTRaL6WH/WYM/RspkQSycNGC
         TDHYzQJhctR+OrvBls3VeD+sJvYTfw6WpPQiQB/D07R+HjSMwbXZV1yGSfEM9BH8spLA
         bIymeq+/niuTICBGVhb/douSvbveIA+AZaed3SDE9gNkdPdnAhGm+O7JlIPPwQt20fgx
         YW8FsMHYu1l44f9wijFNy3ufWTx+zOn1CqiU1lcTdaIEc208FVbBhSJ9l7BUdnBB3D9J
         5l/mhBRRC4vE3WtnBfMcleUzwDv3jp+1eMDsueNcPnBwTxisUdg4iHQdKM7VMm0vchHF
         9Qaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533P3GkoZtkIkIX7kIk6530h5zk0SrxP5HrV+9G65dVlPwYRx0My
	xhog1MYuIPQobhHKOj09ugA=
X-Google-Smtp-Source: ABdhPJxb64R2Ee+C0BzNmM8/v+SyzEteYeL17eh/RfB9Lez+bBQBdMLw8Tttswe4U2TBIR5plkuYjw==
X-Received: by 2002:a25:2ac4:: with SMTP id q187mr1713311ybq.74.1628110755291;
        Wed, 04 Aug 2021 13:59:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:d4a:: with SMTP id f10ls1657258ybr.6.gmail; Wed, 04 Aug
 2021 13:59:14 -0700 (PDT)
X-Received: by 2002:a25:f80a:: with SMTP id u10mr1567132ybd.391.1628110754870;
        Wed, 04 Aug 2021 13:59:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628110754; cv=none;
        d=google.com; s=arc-20160816;
        b=zcgHV1g6kLotBxFxzt2PsVhm9Qinfu4gw7tENhlHM8B2SPFpoaLCcz40Ck1EYxBQpD
         sYewNsBcRQv2kxWljo4boAzVD7NzzeQwo3LnQYjaf3JF4WpApRBoX+xtCCTxejvnkS7V
         F6njP8c4ZhG5OC8rg2MY+K3GZSofGgrCwwB+Oww9xX8Y147AXWWU6+AFAmNT8jPVu7T7
         QuNQkvymyFWMYY4erwIDJrtuGSCpHh/ROCFrdvJRWOy0Ym+HeNkodDBjsnDMPafIE75A
         Im0aGfbZF7sQeYynPJk1yUCkTOlEUFAOFtKj32pe5IRefbXG6FC4uNYOIHKv44eBKErm
         Oojg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=mvTQfbkz4UXF8G2DyKBK1t7ARKlYVtFMwkkLPMBImyE=;
        b=aJILdgLfGU63hA0iwoP5iedb5jGTt68SmQDPM3gNWUyt2uM7/MSaKWEWtjm4ArzeZO
         tyCzFlOr4q1VcDqKOZ49jTTtuclESuW9soGxsgVKItg9NLIyXh9o7ZktNvUFj705geBl
         L0ms60D58mGe74/1ahfHMh9ImEBYJWCO5W8W3pXkyZb30XOPqOr/yEJ8DFqloiwcC+M3
         /0L1fIFDNmZJxTxCNtuQyMir7ZjiU12RWoaZNXMA2Q4Y7HC7OfWAbS0lk4AxtVNhber7
         vFrvQ6wDYmGlt4cFK2oT6lbTTa2IzJcXK5Pn4ZwirJhPJ44bKcREk2OcJp25rCQv3pcL
         aeDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=R9hjocGN;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id w74si249606ybe.3.2021.08.04.13.59.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Aug 2021 13:59:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-327-W8SWnsmmOQKbw9LChLjknA-1; Wed, 04 Aug 2021 16:59:12 -0400
X-MC-Unique: W8SWnsmmOQKbw9LChLjknA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1184DCC622
	for <clang-built-linux@googlegroups.com>; Wed,  4 Aug 2021 20:59:11 +0000 (UTC)
Received: from [172.64.4.14] (unknown [10.30.33.176])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 78E5E5D9CA;
	Wed,  4 Aug 2021 20:59:03 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 251a1524)
Date: Wed, 04 Aug 2021 20:59:03 -0000
Message-ID: <cki.79B27B1F81.OWDRSN49DE@redhat.com>
X-Gitlab-Pipeline-ID: 348085529
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/348085529?=
X-DataWarehouse-Checkout-IID: 17280
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============0269746233351977264=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=R9hjocGN;
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

--===============0269746233351977264==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 251a1524293d - Merge tag 'scsi-fixes' of git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/04/348085529

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.79B27B1F81.OWDRSN49DE%40redhat.com.

--===============0269746233351977264==
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
--===============0269746233351977264==--

