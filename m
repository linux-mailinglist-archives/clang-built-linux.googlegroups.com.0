Return-Path: <clang-built-linux+bncBDY57XFCRMIBBYW46WEAMGQEDPPOOEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFD33F0CCE
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 22:32:36 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id k17-20020a17090aaa11b02901788cbc8832sf4105292pjq.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 13:32:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629318755; cv=pass;
        d=google.com; s=arc-20160816;
        b=0DPMuQBhNVn7xClQAlCUQeLemHLa5pmKLokxrh/z34u1+xMsxBzvJY9YMy6LysGvk6
         X0HpAU03oqMP54FEVWaS7hm2hqtiqGznsrNcz0Ne2Q0kLiRlg9xhNKyobYWw+RYyr/bz
         r5aInGUYTfL+v6WH/SaD+kb0BPOSryOElXSeW2RuRwEP470AeiYXMOqfYwaxfk1LafZt
         oHT2xkSrF/JC37ovcdQbjBxcr1/PzttU9Ypkx7TQnMhNX6Ef4xWfxpgsbXHvasz8RcnF
         yEeftN7icOVIklu8PxaIa6d78zSzuDA51V0DdhafKuOY8VYLzIiJqsKfwqACvFRqxlaL
         Q+xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=F3rGXYMhyt58UwyAQ1ztiJ2bFFAoJwQuygXts+KYXcY=;
        b=zt8DnLQI4Nt//iWhc1rRzi1xPIRU69P1Tmv1jzPEBTqf8ZpnU7M3Z3zf+Eg5jMDZVu
         nxb0bfO3mvUB4Zdm7Ap5axcrYlVWBEsQtKk0ngWdN0q/IoKEoZvltcY2G4bGOlETnmJY
         DwJIAaze9AvpOuNRyr7YUuXRDPuQ675hQ/2VtilmePJA4IgmWDJUqU5TB1FLWJF6oI3V
         9q/MM+zUOLJgVPqlE/NW0H68TuLzRHIUzEuTZ081jLdAFypyr20xb6g4yTxal0i/+7TK
         CxOO52gAPuCQv+Xuifbi1eq4E8/drJXKluw6ILgtOogKfG0R3xFuxrhZFsSdjNPymiym
         vs6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="XTYD31/a";
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3rGXYMhyt58UwyAQ1ztiJ2bFFAoJwQuygXts+KYXcY=;
        b=bOLpZ6ban/Gbvze+ED2K11L7XEW9pVvAVXGshbMNnhGld+Ls8Z0lN0xLW5Gtkdr7D7
         Lnq9dfTtUFToxUsreXsMG3DHI7DA2frXHZ7XfPS8ejIAdccKSX1j8sPrmSoXKX2jArM+
         mZFzc5L8lsKDqjgmLB57kRiIQjopZg0bsLdDOaEzpROtjv/hsCDAqs39Zyi2NHTdzGkU
         Q0MTR/ymXGa+335Y8R2z32tnHh6dZHqkiAbV93pwteAYSwRW7IQwb86QUyDs4jUSmt13
         UQunLsRMEqXK37c0pHcM7tiLZ55umUb6XoUhdoNItfIHl53gPHxUM610BZUZoJApNVI1
         ehww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F3rGXYMhyt58UwyAQ1ztiJ2bFFAoJwQuygXts+KYXcY=;
        b=TZaDXWRdefc4wLT9r5CSWHEWxJl0tAq86vWXscADxz4l6QvrjsyX21btyG5OJJx8xs
         vEvRHpaotouy4/c9dIoJQlrPJ//XOHseGjfTXIn76FTiy0u9G4S2PhX048jj7bRKELJU
         RKUJVfe2Q3YdOU5B6BQ8nNGUhS07xSH8zhZw2R2T72Cg/eNhNr+R9XEADoRC7gf6tj9+
         MC+Nk5brqIdMFEeNF8g/WRcyy6xHl6G8DHULlfO9HFrvRAj3S5eqUVTIFqHAaOtvVeZC
         /jSA3yGdTgXg4py0TdM8KEG7lzaI5Jz/5cCXsl9GzsOHuZns1laHisoJLP2UWuGltK70
         KvXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HeLN5vLyPmbNNOrm7LeUgTyitgLaHG08GZhFtWWhVqQ/t2Cbn
	0XsblJCEJ3YfeSQqSzsgjYo=
X-Google-Smtp-Source: ABdhPJykQN5vK2J/nQthp8UvPVGiZZmTf0Yk5cXKyz5gc7t8GbQL5inC+QCVMh/or3SIYDScCk6qzQ==
X-Received: by 2002:a63:5606:: with SMTP id k6mr10513730pgb.21.1629318755007;
        Wed, 18 Aug 2021 13:32:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls1668606plj.2.gmail; Wed, 18
 Aug 2021 13:32:34 -0700 (PDT)
X-Received: by 2002:a17:902:da8f:b0:12d:a688:83b7 with SMTP id j15-20020a170902da8f00b0012da68883b7mr8696924plx.56.1629318754416;
        Wed, 18 Aug 2021 13:32:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629318754; cv=none;
        d=google.com; s=arc-20160816;
        b=TwRGtyJ9r7n3dPkqdpgGIsz2RgdyHw8IQ9ycmhA3Gk7Pw6XsxRFUP4kxHwGjaQrZUh
         Q8s6TcNV0PzEpsXEmJaOj4zFYGSYp7XkQcuLTSo+nBub5b3Xo6yc2FgxAOgyHcIv1SOu
         KhOrCUoQwGwDcuND0OJ6CP9Bp/NSTHLwXFhlch0hAOVL2yH/2FN41UQ8F7kKmYRS2f3R
         6GjoRRa2C1Umgjh2P7I8xopsivzOgjE3NH0AoN1+XQ8bJZbqgyR63UELoLL1o4LQucbd
         DHEIN6ohn0ek9iInxZ0W6q+pA8lJH8tDRlaWfeLtB3DFiDsIz4zbDMUPBKaZd2qSf1NU
         sY6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=XsX+H1xduKVvIH9X3guAIX0RVo26QQeucHC4I20nGsg=;
        b=LvoUU3xG7Df4Q8DYv8X/ACHg1XcpT1BSNHr3vtV/1TMsVdl9CO7kgVBS3NgDXfvbqE
         YlOm2S5drm7QVFTwORkBf8XtxBW9aNztGcXLbEVqdNfHy8BcK+hs3sc8g0dHVxl1KSQU
         ayBqcxFPLgfCBR7zUEDydMcexTSNpu9pi7oye9vn+ppr/bckZp4JuJfkBu/xq2nNv9n6
         MqXpDebqeV+SBkL0Bflf1cTWN246/r1DhGl/UMo9oodo251eyTbnTtOn2llfSKg1+Sze
         jNppsaBvIbCBdCclJgkGJeSQ9w9HJXInjP6QcDMfIWSuIYfbV45/raCldK83VR7zxmoS
         fDKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="XTYD31/a";
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id k15si42887pll.3.2021.08.18.13.32.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 13:32:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-vJ-SmRsNM-mQ-OfTTDFWBQ-1; Wed, 18 Aug 2021 16:32:29 -0400
X-MC-Unique: vJ-SmRsNM-mQ-OfTTDFWBQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D44D1008060
	for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 20:32:29 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 531C56A057;
	Wed, 18 Aug 2021 20:32:25 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.14.0-rc6
 (mainline.kernel.org-clang, d6d09a69)
Date: Wed, 18 Aug 2021 20:32:23 -0000
Message-ID: <cki.47C8FC9F97.U2STSUFWJH@redhat.com>
X-Gitlab-Pipeline-ID: 355418989
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/355418989?=
X-DataWarehouse-Checkout-IID: 17970
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============3415693554313724951=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="XTYD31/a";
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

--===============3415693554313724951==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: d6d09a694205 - Merge tag 'for-5.14-rc6-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/08/18/355418989

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.47C8FC9F97.U2STSUFWJH%40redhat.com.

--===============3415693554313724951==
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
--===============3415693554313724951==--

