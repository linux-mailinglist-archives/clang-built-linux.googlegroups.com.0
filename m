Return-Path: <clang-built-linux+bncBDY57XFCRMIBB3UC5GDQMGQEC3ZIFFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 3822E3D337D
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 06:11:28 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id d13-20020a170903208db029012b8dd981a0sf1213206plc.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Jul 2021 21:11:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627013486; cv=pass;
        d=google.com; s=arc-20160816;
        b=r2R92rxVpYv+RJ3r561gc00BJgUUTdOMe6U77tiAmKcZWcagAO8M9OsDYY0YiGZnDi
         0xrhLUtUn0nS1i8e9474fkQ3s6tcqfduKCVMQxqR8OX/ub1HA+WLOOmYsVjUPUfDcLdc
         DCoXjaYn5PxBFe4b2CXkb3pgc7rljqTMt3Z6kM7pDrcKjQOaOFYPth4qQ1v/tfCyq7Xe
         BZM21CV4/xquVYloXIo0uQ4sPWTi6atxjgHTTiExw1Bp3qZ1DVVFmI88vDiSJKyI+CfJ
         uC5BCDCZt+l+r3inv0r4BB/M12QpBN+xYOvpxDkOwbR17Z7dEtQSNC7Ia3J/eOg9TLUD
         0O5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=mOKdnS0yZSl00quzS4jFVFteuYoAQ2F5FDgrXgzpy3g=;
        b=XZG5AZ+4gW8E3MLYCLEDIQblK/PaexpyIfVP/3/dQC7ceXzgao3jyzzbfWIFc/R9es
         1oXkS7ySsry9ydpnIVOabqeXMQFJ3LS3EvWGvXrpsDU44ERdy+RVSqOmvos3X8JFclM3
         IpMJLRRhnVjGrcosnx6fM1S1A2uqvqwGiJ8xElBbyoMzgn+eHGttY+PV3L6l9UU+A7Bx
         ytcmaDcsM4ybAGln5m5pGcNjRZp1hk/Xs44AV3Fym5XcwRYk4o/OinGGMSyYe7OdVRck
         PmVoS65e8XPOuPgylPyr2EqPAandaSDNM4FDC9piuItvaaLMKIlOiGg0skrWPGESlSH8
         ZXbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gQUP0Rqi;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mOKdnS0yZSl00quzS4jFVFteuYoAQ2F5FDgrXgzpy3g=;
        b=QT4FyyVIrCRyViZ2oiU6dOMdxv+iKocCBjxEIFJE28HpsKfPelsjD1RKTbFuRVbnrP
         LSzGCxafHZo1K59+O4IpHhWAe9zLdv32k5dc3mFhgPpoPyeg/sb1t+wSPF+9Y2VrhFp1
         gH6QKGKfoHekWnp2ybw7ko7Lo/ZLVGen4nLaVlMKwTlpHo3PefnBbaCwCwsxhidVBLgZ
         XLWu5S/r/RlqX3XDUQTfeUItqWRjPme9C9mZBWdT7au2NugXL7P+Rz6n096TVx2nifAz
         jS96Qg8DUyOvddhN8PbqL17RA738MRfyfLRw0PVCfqr9d3Lx2BEgNDz3zJcEadErDkxV
         wnag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mOKdnS0yZSl00quzS4jFVFteuYoAQ2F5FDgrXgzpy3g=;
        b=OyCFhYD1DNjAWMhwTUw3HG4ImhAfwlvCXW7OSLj1wio/T/C9ws9EMlH+ldSlc3TYob
         5i5Ho24Va2Y145YpPSzWU+BNFCyfplXrqYFufdtyYYMExR80cRi0au2/hrGFblBd3vyz
         J2qG/Zd1OTdNZbvjqj+oguGa4iUFQXapDHJoxo8m+frO0A33axCCdz9Qj5Hnevk7ZCJn
         uxc0YgP3bqzDlwfP610uqhktBLgrEZsUTmRGize4vc2dArsE8DdBOTmq0ayozinX7ONF
         pZuY+pri4SChNOAY7IXTSn+Zus7B9PQbHK2jDgAJdwyF7+j627xxDioAMyBjhBsEtqfz
         h3iA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yc2u5V7QCJZKnL+8h5uOcdoHVZgFW3Lm5xE6jplV/IBrILi/l
	JOkGCcAW/0mfYWsQOAEvYvg=
X-Google-Smtp-Source: ABdhPJy9Hxs9HWos21WYHnCPwynTeYhRAsPGMm6fAopiQabFhXD3YKpsEK9WxKeEL2WRhjsZh2f2AA==
X-Received: by 2002:a17:90a:6f63:: with SMTP id d90mr12017531pjk.120.1627013486648;
        Thu, 22 Jul 2021 21:11:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:20cc:: with SMTP id i12ls4043416plb.8.gmail; Thu, 22
 Jul 2021 21:11:26 -0700 (PDT)
X-Received: by 2002:a17:90a:d598:: with SMTP id v24mr2706035pju.185.1627013486043;
        Thu, 22 Jul 2021 21:11:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627013486; cv=none;
        d=google.com; s=arc-20160816;
        b=VHSsnscYIf7H4uTpwQxyBNehmo1z6YCRAxbtNCWoHrdJgIuBfg29BNTrfNTYKRf2zV
         QNmji3q9G7mr+OW3EboWRk46f0DcTfst/fa8eJUpYK1wPOqF2o9S4mfpkCsIKuYBCQ/q
         jpCXzIwB0cAawtXRZsmwcXQKMGBz3NPVKHBlCsJp4YZR8FsSL0jK82MquFyf38bL+d+x
         sxDU+dYxOF8dyo0PP5T4t4qO2gYj7lo+XxCBqm5pC0iIpzNo7rVjw4XmzIQKEsn0TK/d
         GQOALe6ylH0UI0SD5LJKto4MKyLtLn2Oc2S2q4T1oX+y7RFbVxABNc4oX9qCQ+hZU84P
         qQXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=1n0IZi1V8HQofw55UdZoTFXzb+2lKyiEuYOX3+sdCCM=;
        b=zXZWI4YQiQsZXjGJ4uzEARFcbaLPX030mrahaNWEV7H0F4sXM3vuzb/KFZZMlOf2Xm
         IERLBK7XgsDfBlevIFzU+2FzRlqjCgvPGivnMC+yRV58uIFI8Ory8KyKwow+wpZVMLeb
         I1GiE7uwkUJKw3uiOz9UgBEorieG3Xnqu1wE7nDvW9frKM/iqxPrHV346ZzNJjFyjXgI
         HC83sd3f5ZOCjYAkkQERgy7wWwYcOnXo87R2e6Yu3bq2Rhpzdi2XhuYD7+z3JcX1ZIwT
         E3rlNp799gcioNW9z+oDpZcx2E2o6PODdshXtB6YitpfIuev//u3QQFOn/2b2DuDa61g
         9MIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gQUP0Rqi;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id j24si441337pji.2.2021.07.22.21.11.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Jul 2021 21:11:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-5-ISKamv3HPe6wnQ-rGEjUQw-1; Fri, 23 Jul 2021 00:11:20 -0400
X-MC-Unique: ISKamv3HPe6wnQ-rGEjUQw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72A561005D63
	for <clang-built-linux@googlegroups.com>; Fri, 23 Jul 2021 04:11:19 +0000 (UTC)
Received: from [172.29.4.235] (worker-001.nodes.prod.psi.rdu2.redhat.com [10.0.180.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BC47C682AC;
	Fri, 23 Jul 2021 04:11:11 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 8baef638)
Date: Fri, 23 Jul 2021 04:11:11 -0000
Message-ID: <cki.6369FC2691.O5UZPWJ9XA@redhat.com>
X-Gitlab-Pipeline-ID: 341628341
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/341628341?=
X-DataWarehouse-Checkout-IID: 16503
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============5778653377057873936=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gQUP0Rqi;
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

--===============5778653377057873936==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 8baef6386baa - Merge tag 'drm-fixes-2021-07-23' of git://anongit.freedesktop.org/drm/drm

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/23/341628341

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.6369FC2691.O5UZPWJ9XA%40redhat.com.

--===============5778653377057873936==
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
--===============5778653377057873936==--

