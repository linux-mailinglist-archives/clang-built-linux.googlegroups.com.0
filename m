Return-Path: <clang-built-linux+bncBDY57XFCRMIBBNFD2KDQMGQEITDQP5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9E43CCAA2
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 22:40:22 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id x130-20020a627c880000b0290332acd337a6sf9426514pfc.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 13:40:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626640820; cv=pass;
        d=google.com; s=arc-20160816;
        b=FOfB6mTY5mKL9zuJPV3E4D+7/qXZh8tgCMok5wPDyCnH0hGGvEhe2UiXHdA3kwGOyc
         2785D83MhYWJLtAg8aMN8QUzqTOKivPiz9LMLz8oS/9xaUqaeS3SVe0Qlv36b4iaBRNE
         mWdgrCxpKWsVPr5YOqkmHs8JgJ8cbSZ0aPCR5LcAdsiJ1+ODYLG4dHZn2rQRqF2/a71O
         Ucb9GWrDEQVeT4zm9vVDzRjztSeYnTvFjWUkF5Uv22/C+7jP44L+iE84+/4n6/tn8G8n
         5v23z1EMPepWcaMXucsi8FVioB3VuA9tKrtLS5sm0LkPQNlYXtwdcoRGqr0f602bCbSy
         3dWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=R/btD5a3kRbz02SU+ZBMRRMTuqW79aU6M2adQti1Ye0=;
        b=JM0KxVoGwI5UPSb9UnJYcV5ZniB71IZ3MZIsoEKH/BfKLzXbvE6lgaK3XVdeNCkAjS
         uCqhY8zCq574S6tzkLevwPj6zhF/wHtD0h6yEZCEEuVEV+e5LQYhgSXX1sHWy7voosV3
         wGs8N7+16dkCRbsaFPOAkPm1+vSGHr0o9yR20h25yNMD676f/x4hj/O5unFVd1hvjU6v
         S+pn1FNq1qZbi4+ljSuUN6/Ri/gNDyIoalZF+QwrT/2dOzATuRi6Xa+N4luLrvijEpmJ
         aFRXFGyB+LyuTFc+ruDN2KfPb39EWpyWpo2xPhWEfFdfr0yte2s4KAc+wAzP/GquBphJ
         bI6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="dqxm/M8w";
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R/btD5a3kRbz02SU+ZBMRRMTuqW79aU6M2adQti1Ye0=;
        b=H3LZRgFXbEsIKFQE9jBzYXkcMlq8dCHQq/Yp9/51jGbmHwfZYsz5lagw3c62G80egV
         c0lKICdTsuGRPX2n5UuG14xOVYoJOTpvBp05wcspWLfVPd3MYRe439AN+4LewB39Cz/3
         PslUV9meRabwN+JAgGSKlUicIOaac50xYAo2tCa9Wnfn06CE9+dInOUs8jFAYHkPlJGf
         OparaYYDPnvlKAcFSuxT8YUXd/qKYn42GJRQjm2ETtql/keihnjzl6c7otaAWVslf4iw
         RLfx+O+0XwjVkdxY/T+vubEOr0AHpHaJAjorGrELqBfgewig3+4fVcLB4gGFXs4YdKDM
         AI/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R/btD5a3kRbz02SU+ZBMRRMTuqW79aU6M2adQti1Ye0=;
        b=P9mDzLIMIEwtRjziQRKLii5sh9h5S/moHsWqy45/W7OIwnY1dv8ym9dcFAkScOFcKq
         YfslHcyVpmW4H2w1BRgR0z3bEciXkm+YYgl2J4HbpRaFu/sZIL2UT99X8oKrlyZTJCLk
         ey1aBRMymrxcs4648xLy5DM6S2m7G5URooXAwmwse+OfNN+ZMWtcIBTRjJVO1WdvW4kU
         T3F/x0ZVL7DViHHoB6n6y4h0JDPBRVo46sRCihsfoEMC4KD1fTaQpIW/jkquBUHftY8n
         kzsInU14XquAqE2gcbTquutyjb4WFW4/MHIrMNKibkbU6Z+BxhbHAdWiqJbHuHWjprNR
         p8Ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tCH2ocF+EPjsLbBhiFsrCuuAMGEpQ8MCIRVsA9i82U02XhGdr
	kfuvtA+Poq4UEIzDz6ROo8A=
X-Google-Smtp-Source: ABdhPJwO+aKTyvxI8KZ87UvEeSX/dik3D01ezHl4eC5dMzD2WzpvpAaqDV5O/IPZvHzCHOmJgH636A==
X-Received: by 2002:a17:90a:e7c7:: with SMTP id kb7mr20990349pjb.43.1626640820222;
        Sun, 18 Jul 2021 13:40:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1cb:: with SMTP id e11ls194149plh.5.gmail; Sun, 18
 Jul 2021 13:40:19 -0700 (PDT)
X-Received: by 2002:a17:90a:e64f:: with SMTP id ep15mr6653122pjb.219.1626640819653;
        Sun, 18 Jul 2021 13:40:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626640819; cv=none;
        d=google.com; s=arc-20160816;
        b=gu37EdY7o7ztm/yVZ5Bh0c9/cXPmztHFQ4LNagRfp35TVVCGvlquhCZ1kXJOIQyus9
         4WoNzT8a0EtN66oOEZtjDQBH1FXwF7kesErbZHijxFtEe80rWTVzMJYgSMPFA60kSXzS
         8D1I2K3ekxlnuo7eMtGUobIODXThAN8YCdUkqvedT9drXigseAH9fwBAdmzNgK/NOry4
         0pHe0uEy6HVe+QyN3HHmAeaP0lPoa7yje1y6xgfWDYJWSPOTAyqST3MuAmVDK04wCzqK
         aAwi64ligKRr/WXs/juwlXIm3sQOVUcinb06E191ZJKNHoL8qDptaK1IOEkZ8c/8SZlO
         tXgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=ARCK6H35dI1C+dhWPQZVK+w92J4mti9PX8DffbCmLwQ=;
        b=g1N2DshFD9BRSyrK7TGLaWoZsQgB1VwCb6tCp7bJuYnc3/9VvMmvn/cq5GLzyQ3e3p
         dMkJf8lOMFvcWO0up66jVHOstcMWlqIqte45FtLO9RA35+ydfotqFqMATFHLBQrMHBeX
         Lj87WidBOQND1GqOMIUZbCcQO4cyqt8J9EFF5XX4e2uHueUklYybbaTZe6je++92Isdo
         cIYyc3AA/5UuR9wpQluMhH/hpyQhn0XUsNewvkuKQb08em8319xCWimvyt0rqN8UdkUl
         5Wq4eUlPJoLaKPcCI85/6q6fEsgKm4VocbqIYPsuFX4gxJFYzclq5PCDMEvKi8kdIiun
         xq1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="dqxm/M8w";
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id o20si2267720pgv.1.2021.07.18.13.40.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Jul 2021 13:40:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-437-K5pYt_13NjujiSaSViRy4g-1; Sun, 18 Jul 2021 16:40:15 -0400
X-MC-Unique: K5pYt_13NjujiSaSViRy4g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AA82C802E61
	for <clang-built-linux@googlegroups.com>; Sun, 18 Jul 2021 20:40:14 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9A47B100EBB0;
	Sun, 18 Jul 2021 20:40:08 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 8c25c447)
Date: Sun, 18 Jul 2021 20:40:08 -0000
Message-ID: <cki.58137AD102.GBNSMFF97P@redhat.com>
X-Gitlab-Pipeline-ID: 338973919
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/338973919?=
X-DataWarehouse-Checkout-IID: 16168
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============7833794877162613320=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="dqxm/M8w";
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

--===============7833794877162613320==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 8c25c4476496 - Merge tag 'perf-tools-fixes-for-v5.14-2021-07-18' of git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/18/338973919

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.58137AD102.GBNSMFF97P%40redhat.com.

--===============7833794877162613320==
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
--===============7833794877162613320==--

