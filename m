Return-Path: <clang-built-linux+bncBDY57XFCRMIBBVOVY6DQMGQEYVXPRVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 382C63CBDBB
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 22:23:51 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id b9-20020a0568303109b02904b8eff931f1sf7916334ots.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 13:23:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626467030; cv=pass;
        d=google.com; s=arc-20160816;
        b=g5N9OTD4xXl6cjP+Qi7vxbGaT4ZVfEDw5QatEGBKzZSe/iu4UfwZcQyT7iUI4zUdIN
         wPMTMD7hA6WMap4ilRnRD885ahxpcICYLITkJFEkQLFJJOOk9rG25Rf6QOjH4bYNwBZO
         Zy2AqBcSceFeD4UxZoQXOOPGqXh2EXEs/aTnuPbfboRUGm3hcHw6wnndjy43cCwgYTof
         tIbMad0S75IcggWXjSxV8WNP3uiFasqgMaoip2H9lY5gQ4dU/S8VZ1ucc/qmoKtP1eiR
         49M8d4L6M0d9MQSpXw/SEPUDBsSuX1I1iFIwfB5dsXjeru8AR3dDkg2+uUDlNvieGDEJ
         k+Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=n4EXKqPdAp23aaUzru1scks6HULFKf+9tUiH33m71Xo=;
        b=DExdVd0rCYLPqvKnq2M/PGcYAK2YlK9ZYsHt5SfdzQZRrG+hUjXRdxPsdor88a04ft
         B36JNDsHR/v3rHOQQSRHkisd4gNjF5u5wOmJ1sp9zGM/4gpH7MrZI+iH95IjDaOqUi98
         8ZT5js1Tp6ZVbhS1TPDwVgsCIWK5V2uv20QM85e51vYbmonxo6832wfWPJ/zs6BLJinA
         odpAZCeuxYn6OTmZND6Bxm6xlb8DpqFnGf/CcmvjoktCn0t/nvuB3q4eCFRnZOgmEpg3
         YOIQOL30VsOOvTFtZkbxj6LSVkGx/Z8mNTb54wct6sHuYCwRHZJGzLctN7q8Ee1+ahcr
         EyDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VNReBHp1;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n4EXKqPdAp23aaUzru1scks6HULFKf+9tUiH33m71Xo=;
        b=lhI0md3YnKLrHU7giR3Y+IQ4eLkFAEmEXdPDt2a8pLWCNFNCa07ezHUHeEsdYkxSgM
         eaPD6t/3lcETXvSxhQinncIbrYWitUxSUHdzE2P3WCG8FGb0IWqw5A0h9tGbDDaUPAbj
         ye2PLJHtLws+hyPK7kHNlUNPrnlSB8QWl9x7y77emQxIq2E4+cep7lF2MgV7GAJUcVUx
         dLLJjhZ3o5+Yfg2p1ewJBmr/YhGHEHOzgEQ3ISIPy/7BjfVj4/LMWk3ZHaBujz055mhS
         cPJSiw/oTeOfok0H9ZvvKYs8FDRIV0690M8NoR9MYBkZ3pA89vCLbBXT80T9ODD0u0Bt
         nngQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n4EXKqPdAp23aaUzru1scks6HULFKf+9tUiH33m71Xo=;
        b=tEbYSdCK2PGEriyYDOxp9XeoxI38ZaYJ+APU5QIl+w/wupbmn220tPA0/eU8ApsfSH
         73s26mz/ssl/g6k8zCFX0Qad6HuJSg49aJhGDA6RsRXj7wSz00dODGXYhbf3q0WAukVH
         x7ffBmjP2sfH4KHOFeY6uLLGGd/pHZpKaYaOFC2EQgBCFb7wEa5eQQJcESXjxFAEI6ZP
         TSOeqFNTDv5J50T4PTsdcIOEfJwh50QKjkPr8aG8kFmeYat1ZcG3iJF5Zm78UKr6k4lo
         /6CaVCgvRYqMiY/A7FMxyMvrJ+22Gi6R6R4KAmpK0BTGdXfdG9wylEGF3oGXQB5+dRlq
         HnaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AX1nlCIkYJbh9lp/cXi8XKNXnhvJymLF1NXRyUg8iYGjlTic0
	b4rRE18Re7V2n+26wghyOa8=
X-Google-Smtp-Source: ABdhPJxSmRlFOOMRx/fp3vdCnZjh/k/9WYMOxctSy0SzA2sNK3gZPaxbAl84bCA3GuF1J3knkNlD8Q==
X-Received: by 2002:a9d:ea2:: with SMTP id 31mr9844630otj.200.1626467029822;
        Fri, 16 Jul 2021 13:23:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f24:: with SMTP id e4ls4329426oth.4.gmail; Fri, 16
 Jul 2021 13:23:49 -0700 (PDT)
X-Received: by 2002:a9d:6558:: with SMTP id q24mr9831446otl.312.1626467029485;
        Fri, 16 Jul 2021 13:23:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626467029; cv=none;
        d=google.com; s=arc-20160816;
        b=abaS05/cMnf6HrAcINI6m6UBJDqiZmL8ncFPCzppE4uG0EeIKTUvasM3himzZjycNw
         uuanLHwPy11Q43s3I7EnFM2C+2zD6RVkiT/WeUF2xapAYCnsk67Bn4UNFF/AXGui/ghN
         cLzvwzufbzV28pUm5ST24qQ0seexiDG2ExZ7rW9h0gwTVOFFODohwRsdJLakMF3HkOe5
         7orTnmYTORVlakabnop+e+pKm9IwJA2Pk+CpK0xQJMlfCZFPjQ9WVucRtFNxZNrHugJ+
         DgTLYMjMWm/VgihCx43mvdoYGZ7JEdd4s/q8aZCeXCwKHnQs84UBS3j2uK6Jzgi7/K+s
         dKdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:mime-version:dkim-signature;
        bh=iiL533CndD08xNM1alIcqgg14c5IoSQYaBdnhXuNbKM=;
        b=S5eGf9vdSDQN+p1YnqnwpRFnolxVl1s0dMDA6sZnNVoaN6WxPeA+kkssrZzR9xNLR6
         4+BbWFXLfhsZ8nrbre60bcD5BwuZyWN3EpBBJCrYGlSZyPxjymx9zC1ewRtSuQzVMGV4
         QyobA/zurzNzN095flye5e++2lS8UrrxACz97ydRUsTIZkybcA4ZmN1GHgPzXyoGIBnY
         hO8jfIhk3bO8WNkmAowVipPYG/+Zk2FCLvM8GfDMzu7/0c1fi4i3pO2N7a3st4WH7QJz
         KOOfCKrSj2Inb/g5rTgvp5BBPDYQcPLuTOJjrGWqniJr3GsYB8tNBrMd5xpkClZfWi/7
         sCVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VNReBHp1;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b9si1532951ooq.1.2021.07.16.13.23.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Jul 2021 13:23:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-86b_DOy_PB-NWLTQ8Vr0LQ-1; Fri, 16 Jul 2021 16:23:46 -0400
X-MC-Unique: 86b_DOy_PB-NWLTQ8Vr0LQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7132B19057A0
	for <clang-built-linux@googlegroups.com>; Fri, 16 Jul 2021 20:23:45 +0000 (UTC)
Received: from [172.30.4.176] (worker-005.nodes.prod.psi.rdu2.redhat.com [10.0.180.236])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 94B5D5D9C6;
	Fri, 16 Jul 2021 20:23:41 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 
 (mainline.kernel.org-clang, 0d18c12b)
Date: Fri, 16 Jul 2021 20:23:41 -0000
Message-ID: <cki.FECF69B2C7.X2JAZADY1R@redhat.com>
X-Gitlab-Pipeline-ID: 338528677
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/338528677?=
X-DataWarehouse-Checkout-IID: 16112
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============4977991131475915743=="
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VNReBHp1;
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

--===============4977991131475915743==
Content-Type: text/plain; charset="UTF-8"


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
            Commit: 0d18c12b288a - Merge tag 'block-5.14-2021-07-16' of git://git.kernel.dk/linux-block

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: FAILED
 Selftests compile: FAILED

All kernel binaries, config files, and logs are available for download here:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/07/16/338528677

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cki.FECF69B2C7.X2JAZADY1R%40redhat.com.

--===============4977991131475915743==
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
--===============4977991131475915743==--

