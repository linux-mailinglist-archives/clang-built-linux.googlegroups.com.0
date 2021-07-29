Return-Path: <clang-built-linux+bncBDY57XFCRMIBBX6XROEAMGQE3U2CAXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5933DAA87
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 19:56:48 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id f3-20020a5ec7030000b029054f7bfa6d64sf4266526iop.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 10:56:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627581407; cv=pass;
        d=google.com; s=arc-20160816;
        b=gfFm4AT/AOUnaOTIu89Xz+/tIf31EIzgaHTLTn6x3qXKvXP+DmHZgZngMvuBgvdVEq
         GsitewlPYY5fYaIsssTAjiydWNrXd067DcsNealUa3lneLofXTIoVg3fmBB/6jc/DACQ
         nFFtipqkFQmW0HsdX96BoXC8RQMeYkKjm5ayRkHp/hX7JaIUQEx/RJy5szUTCr6hkb4B
         tUkcFnKTRuDPMTskbev6yCDQa6XQML68796eeVRw2c44tv5S7/iUvFvLo3i1sgtWpimA
         G/MWeIzijhOH26rO56Pgoo44ZOPbubjDMmSTPGUCyqzBoY7iA+pwNxi3eLDHSmWLsuCW
         26kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=q4sXy+/Q557MORGb2zSEmcw4nkbI16JsH2n65AnNQb8=;
        b=DISRgJ++KsTWhksqmv/KBWridU6hWwTn0duHwuEUhHwT2Tz+OC9fN5ug7XXKMA4ja1
         cMpDwWmlFQJK3rz4+FrhTRq5PK3/EnH3hJTojg35fEzYKXFaP7ISjxiVQAl7kUEATZZW
         cPYWgwmhMhZFzc0ELUJkCadBEW7PFnR6e1rlC/IM/SOuoW2PlL0Zw2RaWWWWGK2U8nT3
         UKfZ5bpbRU+UgZ1LPUe7Rv6JA2D1RmkeOh+eIHqvO8YWPPd8kWgDhsbJ/eb0h3iWnA9s
         7UMcxjnWebbozwue+d8nqpriz3+2wQpKTuO9UOzN8B2xaW1w1SWTUF99fnMRwZokVuuM
         evCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=K+wmqTkA;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q4sXy+/Q557MORGb2zSEmcw4nkbI16JsH2n65AnNQb8=;
        b=Cnx8TC2Z4VpxIVgZU1HmV/ptWa7LSQjkfG2TC8kG6Wido14TF+V5DKt7GwZaiL9WHe
         PFb8dYyD8jY+wTD1XmPSXaJFNW3Uk/qpDaGSd4pdOtjkQkX8ExTDWHuqzcRwJQ6NSB7T
         zuTECTdb8oxbBPF0v0iIFxOMr8QcRpx+g4EWdbtJY7p09/fmQb67LM06m/QEd+vhv23n
         Y7LBn79v755aV2x+BkhnbslwPnN01NZQJdpoKPlhPtVVpAPl4583PoNQXXUMsu0Xzfqp
         xdzi7pRNaCVK+H/7psSUjXOLmCTxl1RkspIUKur5HkcAZsptrhFWjdSBQwOFophbKHeZ
         jRRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q4sXy+/Q557MORGb2zSEmcw4nkbI16JsH2n65AnNQb8=;
        b=jImvg8Lb9ekuE9cD8Wa6LYVZs+IM7CbNh6smUzj0IiWR1dyrDOF8OJ7GtP5m7eBf99
         icWx0XiFfqfGXY87mnoRL8sObGlDrYVfA9mzhEXQwNEID68wqeJqNObO3JdHdUTvaUhi
         Bt4IrOXwKu2b7JNe6OMlibzTg2mZs5a/hgyyWaUMLZWFsro4fGc1evjYHNOlVPQNQ9qy
         VZ4ftTOJDWgdgn42I2nqr4aqu5ia+Zxii/xxG7fuGbIbdWWH80rC26etLlkiPf8LFSi+
         ouroVjhNMT9XtUdLUyHkH7Wz1WDn9w5BmPx7QVptEAjiRfZnBWgKnBLA/C8aGlCk9WFp
         Yn/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533B3SpQbhfrO8gCO8vnSwIifoNwGLF5FFP3y++J18/NR9hprVqY
	LhjU8dwxeGHQRRvXiXgY9sI=
X-Google-Smtp-Source: ABdhPJy6TTXtc840fWKDgSskboKjlH2VgQnKeyfvPIrunhq3tXuBn7yIzJP3fGjqWGXjuBWDz72aWg==
X-Received: by 2002:a5d:8154:: with SMTP id f20mr5076118ioo.89.1627581407568;
        Thu, 29 Jul 2021 10:56:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7e4d:: with SMTP id k13ls1157298ioq.5.gmail; Thu, 29 Jul
 2021 10:56:47 -0700 (PDT)
X-Received: by 2002:a6b:b883:: with SMTP id i125mr5167242iof.104.1627581407168;
        Thu, 29 Jul 2021 10:56:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627581407; cv=none;
        d=google.com; s=arc-20160816;
        b=gUTmYxpbyJqwFQSQn+9c1T41FKXu/VHmdaCKb1iNmCT4fz6cYUxhFHMNLTWvLDgYKZ
         MIpK0VTWkuygQjezSTwM85XeQbva3xEWVEubw1X5S2ypY20Zcqcjb+KQKsRHaoYdBew1
         39Nvdlb9yeW+PliMbMBEnm/wpJK2Y5v/p7vJI49kXClUON2qLTDC4h0Fvgy+i2aWEmQq
         MaLpBTAAgyV64hujB/o+HPChmYFT3pXO7lGdYSXfBGWgR9ky0XzlBjaKEy2Glg9BdL6z
         U3HFg9KxUkRnLeVCzTjoCULuUDTtjsmiKXVE99BT9g4tkQz/FoULxwf5NyYWUjeB6T6p
         vSqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=J04SHodYpZka6DkvJQehJ+LdtrUeKwEmjQ5txlpBQdk=;
        b=h88q2ejSJJKes9b05TWORcEvzmuK0hWkk0euKSjqxIxKldbEiRHnaRGfmMJUgP6xMy
         491sZ3z+/iaGP/LF+sYcFW0XOaAap6DEqSNTz3DsAxhoWOjO3mJh4BCHtH7sPgXG9U9H
         FpGSA+5AyTtgxAO2EmJNWHz2KK320Fp/n5ezm4tm1pnjOhT3/QqzIcCpw/hzENrzIt1a
         on1nQAFP+8N2+tAx+z4Neak5voVOf2AWZU8ZX26YCk+pTtdRJsbkl2ZBNJYmPOOvQpsX
         fex6/xFwQszEFwD5ng9mEUP1Yo+30eo0fBd2GfoAS8zo3LY7qI4agu41BPz2t7DUHchh
         kkHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=K+wmqTkA;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id k10si179519iow.3.2021.07.29.10.56.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Jul 2021 10:56:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-309-hYHLyfjoMZCxkG4AxIKq7A-1; Thu, 29 Jul 2021 13:56:41 -0400
X-MC-Unique: hYHLyfjoMZCxkG4AxIKq7A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DF66418C8C00
	for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 17:56:40 +0000 (UTC)
Received: from [172.64.3.44] (unknown [10.30.32.237])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 729706A8FC;
	Thu, 29 Jul 2021 17:56:36 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 7e96bf47)
Date: Thu, 29 Jul 2021 17:56:35 -0000
Message-ID: <cki.004F484E16.TGPUR7MJ5L@redhat.com>
X-Gitlab-Pipeline-ID: 345042600
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/345042600?=
X-DataWarehouse-Checkout-IID: 16883
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============8040538439727177209=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=K+wmqTkA;
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

--===============8040538439727177209==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 7e96bf476270 - Merge tag 'for-linus' of git://git.kernel.org/pub/scm/virt/kvm/kvm

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/29/345042600

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.004F484E16.TGPUR7MJ5L%40redhat.com.

--===============8040538439727177209==
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
--===============8040538439727177209==--

