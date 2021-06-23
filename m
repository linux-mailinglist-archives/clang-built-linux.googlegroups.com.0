Return-Path: <clang-built-linux+bncBD6LFJHR7MDRBKNGZKDAMGQEOC4XSXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9B13B116D
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 03:49:30 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id l123-20020acad4810000b02901f1fb44dca7sf767605oig.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 18:49:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624412969; cv=pass;
        d=google.com; s=arc-20160816;
        b=GZFXjanvu8C5M6HoHTnD4SDV5oVQLZh4GWD6DR0ZnzKCAt2hRs6QdeQ7Fpp4SgQPb1
         LUtRNlKvoUXkDDQoFvUYSV4ZkvGXOjOpTeoBC0LZGL5TZC9zSxm2F0fQHU8J7JqHotPL
         LjCjv4SvK1Xq6t77MAiPzyukg9R60loA/Z/k6wiELpSqIV8n8E9F7B9bMnWwDw3xO65k
         PpLuSWkDYkoznoeLUDnJkKanPUshXwOLEhCYKRWkeP2eneNKKDHJddcZV85HZ26IwDED
         eNMNT5wP/D4pqz3MmBVqLRXvFaeCbEbQz3/4Km+pdwwUuBHUV0cyyZ2xLNznhXGgP6ny
         crIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=vD6w9iTF0+3Kih0RVWOfkV8pqFI8slzESYCO+z8Wra4=;
        b=0bh7xJBPMKVuPY2REywMO+MWHzOcgGmOPivPKGM+J2TC58oSHPwZU2mCL6ounpVOdY
         +Mnk+IN92SDpUaQl615DVq09U6rNEDZ8N6dcphvlXkiVEL42KtGI4E8LELdY9GkgAvmM
         l8HTkQqHw9PQ2RK24p6prLTEV6ko1KBvsvnxMBPdjVC/ScJ3CUbKs/qM0dr8mvp7fBuq
         QnYa/gltEAyGG+G5t+lRRZt8qGedYYPdpZlXD5ei2/zchh+XB/VNZh4cvW7WlGsy56T1
         mYX7qxHlJCK/mm1S8zqn8w38DuH4nkN5+qCWCqoLu4xfEUrVqL0fAQKWsokDtMSglS+c
         8vVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VxkNcNFz;
       spf=pass (google.com: domain of feliu@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=feliu@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vD6w9iTF0+3Kih0RVWOfkV8pqFI8slzESYCO+z8Wra4=;
        b=WME5hEObLqK78iNDyNGtTo3hAaU/wRjqEtkWeaOV5D8bBrIC8LVgjkOJ3vv0kt0F1B
         HP88+EKVy3rvZvqSIZoIICM35xLBfKEfLM//JtZ7U/8v8dol/Nl/EYCfxa/bB8Qu/POC
         FdUCaa3vGiTel71xz7xA0GCWTbbVIArot/P+mpVcVUJV8JdVdO9+ZtHFbuPGKaS4ytBA
         vnnSDlz8Ug0g5Is3MuYMW85DGCW5652fSqcOw+si2OdM/at8gKB3HrTU63kbrejdEIjV
         ZvJW8FYvI6uRGy3sB1adWz8IXM+3Km8DgwyVRvxxpj7w/YxP91pxQzcuwz1l3rltpzC8
         WnTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vD6w9iTF0+3Kih0RVWOfkV8pqFI8slzESYCO+z8Wra4=;
        b=t4ksGhjcc0iYNI5gw2MB8BEbHKZ59uXenN8ZigcZkdrBQ0RSHtJxFsJKbYa2g/W3o1
         Uv+wjEyVj7eAGPD7Zw8AS4bWQAsk3qb4oZN5OyPzDAGbOYjteFaULXW3p9tjjvwmHtt0
         FGh9WAFrLs061Jf2fo+18jTNdaJ0DpqFGNbyszcsg0XZ6a9WVbrTkNEwgPrDQpq4gaml
         jQcI2mq/luPao3VtgTns3/7dVQSunwdLdb4D/0Nko9mCJpjCXU88NbyrHnljict4WFTr
         i/N0ZpnuYzTEQdp4iMipqsWNkONJPToF5EGe/iz/u73iShPk4APAF5/EKMzO/NyZFITn
         dYOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pObhRxyk4alKPZvLtN4HwubuPkyz2B/7V3NU4eN8deMxTAzaE
	8aZ/hGwKCM5ZhEc1fDaw5F8=
X-Google-Smtp-Source: ABdhPJzRG/mnb90B9ade2W2zkyAbd+vsgd74cOwfM88encR4X8ReFmlECIywc9ZegJFMQ0lai/dzwA==
X-Received: by 2002:aca:5e83:: with SMTP id s125mr1307234oib.36.1624412969782;
        Tue, 22 Jun 2021 18:49:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4d16:: with SMTP id n22ls171604otf.11.gmail; Tue, 22 Jun
 2021 18:49:29 -0700 (PDT)
X-Received: by 2002:a05:6830:19c2:: with SMTP id p2mr5532930otp.11.1624412969413;
        Tue, 22 Jun 2021 18:49:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624412969; cv=none;
        d=google.com; s=arc-20160816;
        b=x3xKONzVG2BsBGx/GM4k0+IF6arA8M1KqbWGj3Z9u9ZIdEUJuqwF0xOfB8zsBGZL5y
         959Ib13i8VxF6+Du7qiYNdNaNpI1jBbPurpFhmycGFI3ZyBc+xBw988Q3DzWPWjq6EGJ
         iX5O12zxunjwGe3UV14kY5KwEjR3zI/Tm1YIVVvMwumdxqc7vycfelgZpxRbekndHone
         5VPqi9VWQD5p9pvr3/3iJZ2unOjzxE4eenGP7LZB22BthJWeivNiU65mnOifatNSnh5g
         vqbNdp0OT5eF1Ko3hywPlqplknWiymaQqZZwCogU9DdxlwBXf8dNISeEDBDVSszWcrBe
         fMlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Gs5B72VCLGEoJ0cs+1h5nSRJwZa8PnUcYgiaG+sikQA=;
        b=vKBg7EofyL+dSDxewa2W+wbD6AdXwz6Axe/9H5ftOBHDby40dCe/PCKjyMiWk+5J5k
         ojV2ufYuQ7Kst7lpMeExx23DyBHWHdNkv1n+tQTyQnwuYDvmaHfwKAkB71Y+ZSZYIlEK
         n9/c52CjkDwQQ7IRXCEPxEz7v9mvpOK5QcN4VDt2OQf8k5+ngKFPfHH2LlVgtNd1Nyrc
         hMDI5bpcCTBZigyrTLSwyiDtyICRdaVaxWZZL1SC0f5sNtyh1yBvCyEoZPU6I+4iPeFh
         CmlmhMaxWu7wk5sfmzML/i1IUybPZXyqH6aAY9mgWrqlue+GcEb6EwjVH6Tf8VyjzfRI
         ApYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VxkNcNFz;
       spf=pass (google.com: domain of feliu@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=feliu@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id m16si461885oih.4.2021.06.22.18.49.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 18:49:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of feliu@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-333-FXQgVMrvNuePR2f5lkwz6w-1; Tue, 22 Jun 2021 21:49:26 -0400
X-MC-Unique: FXQgVMrvNuePR2f5lkwz6w-1
Received: by mail-ed1-f72.google.com with SMTP id y18-20020a0564022712b029038ffac1995eso519494edd.12
        for <clang-built-linux@googlegroups.com>; Tue, 22 Jun 2021 18:49:26 -0700 (PDT)
X-Received: by 2002:aa7:c7c7:: with SMTP id o7mr9169920eds.231.1624412965139;
        Tue, 22 Jun 2021 18:49:25 -0700 (PDT)
X-Received: by 2002:aa7:c7c7:: with SMTP id o7mr9169907eds.231.1624412964984;
 Tue, 22 Jun 2021 18:49:24 -0700 (PDT)
MIME-Version: 1.0
References: <cki.286CD9AEEE.728UX3K689@redhat.com>
In-Reply-To: <cki.286CD9AEEE.728UX3K689@redhat.com>
From: Fei Liu <feliu@redhat.com>
Date: Wed, 23 Jun 2021 09:49:13 +0800
Message-ID: <CAG20hyZLBSSUmt+ACnnGv26ZLuVtVs=bEW0Gm6YGyhS9pOt=Og@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=E2=9D=8C_FAIL=3A_Test_report_for_kernel_5=2E13=2E0=2Drc6_=28mai?=
	=?UTF-8?Q?nline=2Ekernel=2Eorg=2Dclang=2C_e14c779a=29?=
To: CKI Project <cki-project@redhat.com>
Cc: skt-results-master@redhat.com, clang-built-linux@googlegroups.com, 
	Jianhong Yin <jiyin@redhat.com>, Ondrej Moris <omoris@redhat.com>, 
	Ondrej Mosnacek <omosnace@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000bf303405c5651d0c"
X-Original-Sender: feliu@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VxkNcNFz;
       spf=pass (google.com: domain of feliu@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=feliu@redhat.com;
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

--000000000000bf303405c5651d0c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 20, 2021 at 4:27 PM CKI Project <cki-project@redhat.com> wrote:

>
> Hello,
>
> We ran automated tests on a recent commit from this kernel tree:
>
>        Kernel repo:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>             Commit: e14c779adebe - Merge tag 's390-5.13-4' of git://
> git.kernel.org/pub/scm/linux/kernel/git/s390/linux
>
> The results of these automated tests are provided below.
>
>     Overall result: FAILED (see details below)
>              Merge: OK
>            Compile: OK
>  Selftests compile: FAILED
>              Tests: FAILED
>
> All kernel binaries, config files, and logs are available for download
> here:
>
>
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/06/19/323869316
>
> One or more kernel tests failed:
>
>     aarch64:
>      =E2=9D=8C CIFS Connectathon
>      =E2=9D=8C Networking bridge: sanity
>
avc error

type=3DAVC msg=3Daudit(1624176544.113:1062): avc:  denied  { read } for
pid=3D770801 comm=3D"systemd-gpt-aut" name=3D"b252:1" dev=3D"tmpfs" ino=3D9=
16
scontext=3Dsystem_u:system_r:systemd_gpt_generator_t:s0
tcontext=3Dsystem_u:object_r:udev_var_run_t:s0 tclass=3Dfile permissive=3D1


> We hope that these logs can help you find the problem quickly. For the fu=
ll
> detail on our testing procedures, please scroll to the bottom of this
> message.
>
> Please reply to this email if you have any questions about the tests that
> we
> ran or if you have any suggestions on how to make future tests more
> effective.
>
>         ,-.   ,-.
>        ( C ) ( K )  Continuous
>         `-',-.`-'   Kernel
>           ( I )     Integration
>            `-'
>
> _________________________________________________________________________=
_____
>
> Compile testing
> ---------------
>
> We compiled the kernel for 4 architectures:
>
>     aarch64:
>       make options: make LLVM=3D1 -j24 INSTALL_MOD_STRIP=3D1 targz-pkg
>
>     ppc64le:
>       make options: make CC=3Dclang -j24 INSTALL_MOD_STRIP=3D1 targz-pkg
>
>     s390x:
>       make options: make CC=3Dclang -j24 INSTALL_MOD_STRIP=3D1 targz-pkg
>
>     x86_64:
>       make options: make LLVM=3D1 -j24 INSTALL_MOD_STRIP=3D1 targz-pkg
>
>
> We built the following selftests:
>
>   x86_64:
>       net: OK
>       bpf: fail
>       install and packaging: OK
>
> You can find the full log (build-selftests.log) in the artifact storage
> above.
>
>
> Hardware testing
> ----------------
> We booted each kernel and ran the following tests:
>
>   aarch64:
>     Host 1:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9C=85 Boot test
>        =E2=9C=85 ACPI table test
>        =E2=9C=85 ACPI enabled test
>        =E2=9C=85 LTP
>        =E2=9D=8C CIFS Connectathon
>        =E2=9C=85 POSIX pjd-fstest suites
>        =E2=9C=85 Loopdev Sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>        =E2=9C=85 Memory: fork_mem
>        =E2=9C=85 Memory function: memfd_create
>        =E2=9C=85 AMTU (Abstract Machine Test Utility)
>        =E2=9D=8C Networking bridge: sanity
>        =E2=9C=85 Ethernet drivers sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking cki netfilter test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - transp=
ort
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element=
 test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xarray-idr-radixtree-test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 i2c: i2cdetect sanity
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Firmware test suite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite te=
st
>
>   ppc64le:
>     Host 1:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9C=85 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking cki netfilter test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element=
 test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xarray-idr-radixtree-test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite te=
st
>
>   s390x:
>     Host 1:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>
>     Host 2:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_module test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integration=
 test - as root
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integration=
 test - as user
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tes=
tsuite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>
>     Host 3:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking cki netfilter test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - transp=
ort
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xarray-idr-radixtree-test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite te=
st
>
>     Host 4:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>
>     Host 5:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_module test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integration=
 test - as root
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integration=
 test - as user
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tes=
tsuite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>
>   x86_64:
>     Host 1:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9C=85 Boot test
>        =E2=9C=85 ACPI table test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking cki netfilter test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - transp=
ort
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: sanity smoke test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element=
 test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xarray-idr-radixtree-test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 i2c: i2cdetect sanity
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Firmware test suite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>        =F0=9F=9A=A7 =F0=9F=92=A5 audit: audit testsuite test
>
>     Host 2:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9C=85 Boot test
>        =E2=9C=85 xfstests - ext4
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - nfsv4.2
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 power-management: cpupower/sanity test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_module test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integration=
 test - as root
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integration=
 test - as user
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CPU: Idle Test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - cifsv3.11
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tes=
tsuite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesyste=
m fio test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sch=
eduler test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test=
 suite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: lvm device-mappe=
r test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>
>   Test sources: https://gitlab.com/cki-project/kernel-tests
>     =F0=9F=92=9A Pull requests are welcome for new tests or improvements =
to existing
> tests!
>
> Aborted tests
> -------------
> Tests that didn't complete running successfully are marked with =E2=9A=A1=
=E2=9A=A1=E2=9A=A1.
> If this was caused by an infrastructure issue, we try to mark that
> explicitly in the report.
>
> Waived tests
> ------------
> If the test run included waived tests, they are marked with =F0=9F=9A=A7.=
 Such tests
> are
> executed but their results are not taken into account. Tests are waived
> when
> their results are not reliable enough, e.g. when they're just introduced
> or are
> being fixed.
>
> Testing timeout
> ---------------
> We aim to provide a report within reasonable timeframe. Tests that haven'=
t
> finished running yet are marked with =E2=8F=B1.
>
>

--=20
Best Regards
Fei Liu (=E5=88=98=E9=A3=9E)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAG20hyZLBSSUmt%2BACnnGv26ZLuVtVs%3DbEW0Gm6YGyhS9pOt%3DOg=
%40mail.gmail.com.

--000000000000bf303405c5651d0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+PGJyPjwvZGl2Pjxicj48ZGl2IGNsYXNzPSJn
bWFpbF9xdW90ZSI+PGRpdiBkaXI9Imx0ciIgY2xhc3M9ImdtYWlsX2F0dHIiPk9uIFN1biwgSnVu
IDIwLCAyMDIxIGF0IDQ6MjcgUE0gQ0tJIFByb2plY3QgJmx0OzxhIGhyZWY9Im1haWx0bzpja2kt
cHJvamVjdEByZWRoYXQuY29tIj5ja2ktcHJvamVjdEByZWRoYXQuY29tPC9hPiZndDsgd3JvdGU6
PGJyPjwvZGl2PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjow
cHggMHB4IDBweCAwLjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtw
YWRkaW5nLWxlZnQ6MWV4Ij48YnI+DQpIZWxsbyw8YnI+DQo8YnI+DQpXZSByYW4gYXV0b21hdGVk
IHRlc3RzIG9uIGEgcmVjZW50IGNvbW1pdCBmcm9tIHRoaXMga2VybmVsIHRyZWU6PGJyPg0KPGJy
Pg0KwqAgwqAgwqAgwqBLZXJuZWwgcmVwbzogPGEgaHJlZj0iaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0IiByZWw9Im5vcmVm
ZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQ8L2E+PGJyPg0KwqAgwqAgwqAgwqAgwqAg
wqAgQ29tbWl0OiBlMTRjNzc5YWRlYmUgLSBNZXJnZSB0YWcgJiMzOTtzMzkwLTUuMTMtNCYjMzk7
IG9mIGdpdDovLzxhIGhyZWY9Imh0dHA6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvczM5MC9saW51eCIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+Z2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3MzOTAvbGludXg8L2E+PGJyPg0K
PGJyPg0KVGhlIHJlc3VsdHMgb2YgdGhlc2UgYXV0b21hdGVkIHRlc3RzIGFyZSBwcm92aWRlZCBi
ZWxvdy48YnI+DQo8YnI+DQrCoCDCoCBPdmVyYWxsIHJlc3VsdDogRkFJTEVEIChzZWUgZGV0YWls
cyBiZWxvdyk8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoE1lcmdlOiBPSzxicj4NCsKgIMKgIMKg
IMKgIMKgIMKgQ29tcGlsZTogT0s8YnI+DQrCoFNlbGZ0ZXN0cyBjb21waWxlOiBGQUlMRUQ8YnI+
DQrCoCDCoCDCoCDCoCDCoCDCoCDCoFRlc3RzOiBGQUlMRUQ8YnI+DQo8YnI+DQpBbGwga2VybmVs
IGJpbmFyaWVzLCBjb25maWcgZmlsZXMsIGFuZCBsb2dzIGFyZSBhdmFpbGFibGUgZm9yIGRvd25s
b2FkIGhlcmU6PGJyPg0KPGJyPg0KwqAgPGEgaHJlZj0iaHR0cHM6Ly9hcnItY2tpLXByb2QtZGF0
YXdhcmVob3VzZS1wdWJsaWMuczMuYW1hem9uYXdzLmNvbS9pbmRleC5odG1sP3ByZWZpeD1kYXRh
d2FyZWhvdXNlLXB1YmxpYy8yMDIxLzA2LzE5LzMyMzg2OTMxNiIgcmVsPSJub3JlZmVycmVyIiB0
YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly9hcnItY2tpLXByb2QtZGF0YXdhcmVob3VzZS1wdWJsaWMu
czMuYW1hem9uYXdzLmNvbS9pbmRleC5odG1sP3ByZWZpeD1kYXRhd2FyZWhvdXNlLXB1YmxpYy8y
MDIxLzA2LzE5LzMyMzg2OTMxNjwvYT48YnI+DQo8YnI+DQpPbmUgb3IgbW9yZSBrZXJuZWwgdGVz
dHMgZmFpbGVkOjxicj4NCjxicj4NCsKgIMKgIGFhcmNoNjQ6PGJyPg0KwqAgwqAgwqDinYwgQ0lG
UyBDb25uZWN0YXRob248YnI+DQrCoCDCoCDCoOKdjCBOZXR3b3JraW5nIGJyaWRnZTogc2FuaXR5
PGJyPjwvYmxvY2txdW90ZT48ZGl2PmF2YyBlcnJvcjwvZGl2PjxkaXY+PHByZT50eXBlPUFWQyBt
c2c9YXVkaXQoMTYyNDE3NjU0NC4xMTM6MTA2Mik6IGF2YzogIGRlbmllZCAgeyByZWFkIH0gZm9y
ICBwaWQ9NzcwODAxIGNvbW09JnF1b3Q7c3lzdGVtZC1ncHQtYXV0JnF1b3Q7IG5hbWU9JnF1b3Q7
YjI1MjoxJnF1b3Q7IGRldj0mcXVvdDt0bXBmcyZxdW90OyBpbm89OTE2IHNjb250ZXh0PXN5c3Rl
bV91OnN5c3RlbV9yOnN5c3RlbWRfZ3B0X2dlbmVyYXRvcl90OnMwIHRjb250ZXh0PXN5c3RlbV91
Om9iamVjdF9yOnVkZXZfdmFyX3J1bl90OnMwIHRjbGFzcz1maWxlIHBlcm1pc3NpdmU9MTwvcHJl
PiA8L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4
IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFk
ZGluZy1sZWZ0OjFleCI+DQo8YnI+DQpXZSBob3BlIHRoYXQgdGhlc2UgbG9ncyBjYW4gaGVscCB5
b3UgZmluZCB0aGUgcHJvYmxlbSBxdWlja2x5LiBGb3IgdGhlIGZ1bGw8YnI+DQpkZXRhaWwgb24g
b3VyIHRlc3RpbmcgcHJvY2VkdXJlcywgcGxlYXNlIHNjcm9sbCB0byB0aGUgYm90dG9tIG9mIHRo
aXMgbWVzc2FnZS48YnI+DQo8YnI+DQpQbGVhc2UgcmVwbHkgdG8gdGhpcyBlbWFpbCBpZiB5b3Ug
aGF2ZSBhbnkgcXVlc3Rpb25zIGFib3V0IHRoZSB0ZXN0cyB0aGF0IHdlPGJyPg0KcmFuIG9yIGlm
IHlvdSBoYXZlIGFueSBzdWdnZXN0aW9ucyBvbiBob3cgdG8gbWFrZSBmdXR1cmUgdGVzdHMgbW9y
ZSBlZmZlY3RpdmUuPGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgLC0uwqAgwqAsLS48YnI+DQrCoCDC
oCDCoCDCoCggQyApICggSyApwqAgQ29udGludW91czxicj4NCsKgIMKgIMKgIMKgIGAtJiMzOTss
LS5gLSYjMzk7wqAgwqBLZXJuZWw8YnI+DQrCoCDCoCDCoCDCoCDCoCAoIEkgKcKgIMKgIMKgSW50
ZWdyYXRpb248YnI+DQrCoCDCoCDCoCDCoCDCoCDCoGAtJiMzOTs8YnI+DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX188YnI+DQo8YnI+DQpDb21waWxlIHRlc3Rpbmc8YnI+DQotLS0tLS0tLS0tLS0tLS08
YnI+DQo8YnI+DQpXZSBjb21waWxlZCB0aGUga2VybmVsIGZvciA0IGFyY2hpdGVjdHVyZXM6PGJy
Pg0KPGJyPg0KwqAgwqAgYWFyY2g2NDo8YnI+DQrCoCDCoCDCoCBtYWtlIG9wdGlvbnM6IG1ha2Ug
TExWTT0xIC1qMjQgSU5TVEFMTF9NT0RfU1RSSVA9MSB0YXJnei1wa2c8YnI+DQo8YnI+DQrCoCDC
oCBwcGM2NGxlOjxicj4NCsKgIMKgIMKgIG1ha2Ugb3B0aW9uczogbWFrZSBDQz1jbGFuZyAtajI0
IElOU1RBTExfTU9EX1NUUklQPTEgdGFyZ3otcGtnPGJyPg0KPGJyPg0KwqAgwqAgczM5MHg6PGJy
Pg0KwqAgwqAgwqAgbWFrZSBvcHRpb25zOiBtYWtlIENDPWNsYW5nIC1qMjQgSU5TVEFMTF9NT0Rf
U1RSSVA9MSB0YXJnei1wa2c8YnI+DQo8YnI+DQrCoCDCoCB4ODZfNjQ6PGJyPg0KwqAgwqAgwqAg
bWFrZSBvcHRpb25zOiBtYWtlIExMVk09MSAtajI0IElOU1RBTExfTU9EX1NUUklQPTEgdGFyZ3ot
cGtnPGJyPg0KPGJyPg0KPGJyPg0KV2UgYnVpbHQgdGhlIGZvbGxvd2luZyBzZWxmdGVzdHM6PGJy
Pg0KPGJyPg0KwqAgeDg2XzY0Ojxicj4NCsKgIMKgIMKgIG5ldDogT0s8YnI+DQrCoCDCoCDCoCBi
cGY6IGZhaWw8YnI+DQrCoCDCoCDCoCBpbnN0YWxsIGFuZCBwYWNrYWdpbmc6IE9LPGJyPg0KPGJy
Pg0KWW91IGNhbiBmaW5kIHRoZSBmdWxsIGxvZyAoYnVpbGQtc2VsZnRlc3RzLmxvZykgaW4gdGhl
IGFydGlmYWN0IHN0b3JhZ2UgYWJvdmUuPGJyPg0KPGJyPg0KPGJyPg0KSGFyZHdhcmUgdGVzdGlu
Zzxicj4NCi0tLS0tLS0tLS0tLS0tLS08YnI+DQpXZSBib290ZWQgZWFjaCBrZXJuZWwgYW5kIHJh
biB0aGUgZm9sbG93aW5nIHRlc3RzOjxicj4NCjxicj4NCsKgIGFhcmNoNjQ6PGJyPg0KwqAgwqAg
SG9zdCAxOjxicj4NCjxicj4NCsKgIMKgIMKgIMKg4pqhIEludGVybmFsIGluZnJhc3RydWN0dXJl
IGlzc3VlcyBwcmV2ZW50ZWQgb25lIG9yIG1vcmUgdGVzdHMgKG1hcmtlZDxicj4NCsKgIMKgIMKg
IMKgd2l0aCDimqHimqHimqEpIGZyb20gcnVubmluZyBvbiB0aGlzIGFyY2hpdGVjdHVyZS48YnI+
DQrCoCDCoCDCoCDCoFRoaXMgaXMgbm90IHRoZSBmYXVsdCBvZiB0aGUga2VybmVsIHRoYXQgd2Fz
IHRlc3RlZC48YnI+DQo8YnI+DQrCoCDCoCDCoCDCoOKchSBCb290IHRlc3Q8YnI+DQrCoCDCoCDC
oCDCoOKchSBBQ1BJIHRhYmxlIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKchSBBQ1BJIGVuYWJsZWQg
dGVzdDxicj4NCsKgIMKgIMKgIMKg4pyFIExUUDxicj4NCsKgIMKgIMKgIMKg4p2MIENJRlMgQ29u
bmVjdGF0aG9uPGJyPg0KwqAgwqAgwqAgwqDinIUgUE9TSVggcGpkLWZzdGVzdCBzdWl0ZXM8YnI+
DQrCoCDCoCDCoCDCoOKchSBMb29wZGV2IFNhbml0eTxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqh
IGp2bSAtIGpjc3RyZXNzIHRlc3RzPGJyPg0KwqAgwqAgwqAgwqDinIUgTWVtb3J5OiBmb3JrX21l
bTxicj4NCsKgIMKgIMKgIMKg4pyFIE1lbW9yeSBmdW5jdGlvbjogbWVtZmRfY3JlYXRlPGJyPg0K
wqAgwqAgwqAgwqDinIUgQU1UVSAoQWJzdHJhY3QgTWFjaGluZSBUZXN0IFV0aWxpdHkpPGJyPg0K
wqAgwqAgwqAgwqDinYwgTmV0d29ya2luZyBicmlkZ2U6IHNhbml0eTxicj4NCsKgIMKgIMKgIMKg
4pyFIEV0aGVybmV0IGRyaXZlcnMgc2FuaXR5PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0
d29ya2luZyBzb2NrZXQ6IGZ1eno8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3b3JraW5n
OiBpZ21wIGNvbmZvcm1hbmNlIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3b3Jr
aW5nIHJvdXRlOiBwbXR1PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZyByb3V0
ZV9mdW5jIC0gbG9jYWw8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3b3JraW5nIHJvdXRl
X2Z1bmMgLSBmb3J3YXJkPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZyBUQ1A6
IGtlZXBhbGl2ZSB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZyBVRFA6
IHNvY2tldDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgY2tpIG5ldGZpbHRl
ciB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZyB0dW5uZWw6IGdlbmV2
ZSBiYXNpYyB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZyB0dW5uZWw6
IGdyZSBiYXNpYzxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIEwyVFAgYmFzaWMgdGVzdDxicj4N
CsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgdHVubmVsOiB2eGxhbiBiYXNpYzxicj4N
CsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIC0gdHJh
bnNwb3J0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZyBpcHNlYzogYmFzaWMg
bmV0bnMgLSB0dW5uZWw8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBMaWJrY2FwaSBBRl9BTEcg
dGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIHBjaXV0aWxzOiB1cGRhdGUgcGNpIGlkcyB0
ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgQUxTQSBQQ00gbG9vcGJhY2sgdGVzdDxicj4N
CsKgIMKgIMKgIMKg4pqh4pqh4pqhIEFMU0EgQ29udHJvbCAobWl4ZXIpIFVzZXJzcGFjZSBFbGVt
ZW50IHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBzdG9yYWdlOiBTQ1NJIFZQRDxicj4N
CsKgIMKgIMKgIMKg4pqh4pqh4pqhIHRyYWNlOiBmdHJhY2UvdHJhY2VyPGJyPg0KwqAgwqAgwqAg
wqDimqHimqHimqEga2R1bXAgLSBrZXhlY19ib290PGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKa
oeKaoSB4YXJyYXktaWRyLXJhZGl4dHJlZS10ZXN0PGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKa
oeKaoSBpMmM6IGkyY2RldGVjdCBzYW5pdHk8YnI+DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqh
IEZpcm13YXJlIHRlc3Qgc3VpdGU8YnI+DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIE1lbW9y
eSBmdW5jdGlvbjoga2FzbHI8YnI+DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIGF1ZGl0OiBh
dWRpdCB0ZXN0c3VpdGUgdGVzdDxicj4NCjxicj4NCsKgIHBwYzY0bGU6PGJyPg0KwqAgwqAgSG9z
dCAxOjxicj4NCjxicj4NCsKgIMKgIMKgIMKg4pqhIEludGVybmFsIGluZnJhc3RydWN0dXJlIGlz
c3VlcyBwcmV2ZW50ZWQgb25lIG9yIG1vcmUgdGVzdHMgKG1hcmtlZDxicj4NCsKgIMKgIMKgIMKg
d2l0aCDimqHimqHimqEpIGZyb20gcnVubmluZyBvbiB0aGlzIGFyY2hpdGVjdHVyZS48YnI+DQrC
oCDCoCDCoCDCoFRoaXMgaXMgbm90IHRoZSBmYXVsdCBvZiB0aGUga2VybmVsIHRoYXQgd2FzIHRl
c3RlZC48YnI+DQo8YnI+DQrCoCDCoCDCoCDCoOKchSBCb290IHRlc3Q8YnI+DQrCoCDCoCDCoCDC
oOKaoeKaoeKaoSBMVFA8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBDSUZTIENvbm5lY3RhdGhv
bjxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIFBPU0lYIHBqZC1mc3Rlc3Qgc3VpdGVzPGJyPg0K
wqAgwqAgwqAgwqDimqHimqHimqEgTG9vcGRldiBTYW5pdHk8YnI+DQrCoCDCoCDCoCDCoOKaoeKa
oeKaoSBqdm0gLSBqY3N0cmVzcyB0ZXN0czxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE1lbW9y
eTogZm9ya19tZW08YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBNZW1vcnkgZnVuY3Rpb246IG1l
bWZkX2NyZWF0ZTxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIEFNVFUgKEFic3RyYWN0IE1hY2hp
bmUgVGVzdCBVdGlsaXR5KTxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgYnJp
ZGdlOiBzYW5pdHk8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBFdGhlcm5ldCBkcml2ZXJzIHNh
bml0eTxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgc29ja2V0OiBmdXp6PGJy
Pg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZyByb3V0ZTogcG10dTxicj4NCsKgIMKg
IMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgcm91dGVfZnVuYyAtIGxvY2FsPGJyPg0KwqAgwqAg
wqAgwqDimqHimqHimqEgTmV0d29ya2luZyByb3V0ZV9mdW5jIC0gZm9yd2FyZDxicj4NCsKgIMKg
IMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgVENQOiBrZWVwYWxpdmUgdGVzdDxicj4NCsKgIMKg
IMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgVURQOiBzb2NrZXQ8YnI+DQrCoCDCoCDCoCDCoOKa
oeKaoeKaoSBOZXR3b3JraW5nIGNraSBuZXRmaWx0ZXIgdGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh
4pqh4pqhIE5ldHdvcmtpbmcgdHVubmVsOiBnZW5ldmUgYmFzaWMgdGVzdDxicj4NCsKgIMKgIMKg
IMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgdHVubmVsOiBncmUgYmFzaWM8YnI+DQrCoCDCoCDCoCDC
oOKaoeKaoeKaoSBMMlRQIGJhc2ljIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3
b3JraW5nIHR1bm5lbDogdnhsYW4gYmFzaWM8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3
b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyAtIHR1bm5lbDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh
4pqhIExpYmtjYXBpIEFGX0FMRyB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgcGNpdXRp
bHM6IHVwZGF0ZSBwY2kgaWRzIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBBTFNBIFBD
TSBsb29wYmFjayB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgQUxTQSBDb250cm9sICht
aXhlcikgVXNlcnNwYWNlIEVsZW1lbnQgdGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIHRy
YWNlOiBmdHJhY2UvdHJhY2VyPGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSB4YXJyYXkt
aWRyLXJhZGl4dHJlZS10ZXN0PGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBNZW1vcnkg
ZnVuY3Rpb246IGthc2xyPGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBhdWRpdDogYXVk
aXQgdGVzdHN1aXRlIHRlc3Q8YnI+DQo8YnI+DQrCoCBzMzkweDo8YnI+DQrCoCDCoCBIb3N0IDE6
PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqDimqEgSW50ZXJuYWwgaW5mcmFzdHJ1Y3R1cmUgaXNzdWVz
IHByZXZlbnRlZCBvbmUgb3IgbW9yZSB0ZXN0cyAobWFya2VkPGJyPg0KwqAgwqAgwqAgwqB3aXRo
IOKaoeKaoeKaoSkgZnJvbSBydW5uaW5nIG9uIHRoaXMgYXJjaGl0ZWN0dXJlLjxicj4NCsKgIMKg
IMKgIMKgVGhpcyBpcyBub3QgdGhlIGZhdWx0IG9mIHRoZSBrZXJuZWwgdGhhdCB3YXMgdGVzdGVk
Ljxicj4NCjxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIEJvb3QgdGVzdDxicj4NCsKgIMKgIMKg
IMKg4pqh4pqh4pqhIGtkdW1wIC0gc3lzcnEtYzxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIGtk
dW1wIC0gZmlsZS1sb2FkPGJyPg0KPGJyPg0KwqAgwqAgSG9zdCAyOjxicj4NCjxicj4NCsKgIMKg
IMKgIMKg4pqhIEludGVybmFsIGluZnJhc3RydWN0dXJlIGlzc3VlcyBwcmV2ZW50ZWQgb25lIG9y
IG1vcmUgdGVzdHMgKG1hcmtlZDxicj4NCsKgIMKgIMKgIMKgd2l0aCDimqHimqHimqEpIGZyb20g
cnVubmluZyBvbiB0aGlzIGFyY2hpdGVjdHVyZS48YnI+DQrCoCDCoCDCoCDCoFRoaXMgaXMgbm90
IHRoZSBmYXVsdCBvZiB0aGUga2VybmVsIHRoYXQgd2FzIHRlc3RlZC48YnI+DQo8YnI+DQrCoCDC
oCDCoCDCoOKaoeKaoeKaoSBCb290IHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSB4ZnN0
ZXN0cyAtIGV4dDQ8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSB4ZnN0ZXN0cyAtIHhmczxicj4N
CsKgIMKgIMKgIMKg4pqh4pqh4pqhIFN0b3JhZ2U6IHN3cmFpZCBtZGFkbSByYWlkX21vZHVsZSB0
ZXN0PGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBQb2RtYW4gc3lzdGVtIGludGVncmF0
aW9uIHRlc3QgLSBhcyByb290PGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBQb2RtYW4g
c3lzdGVtIGludGVncmF0aW9uIHRlc3QgLSBhcyB1c2VyPGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKa
oeKaoeKaoSB4ZnN0ZXN0cyAtIGJ0cmZzPGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBz
ZWxpbnV4LXBvbGljeTogc2VyZ2UtdGVzdHN1aXRlPGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKa
oeKaoSBTdG9yYWdlIGJsa3Rlc3RzPGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBTdG9y
YWdlIG52bWUgLSB0Y3A8YnI+DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIHN0cmVzczogc3Ry
ZXNzLW5nPGJyPg0KPGJyPg0KwqAgwqAgSG9zdCAzOjxicj4NCjxicj4NCsKgIMKgIMKgIMKg4pqh
IEludGVybmFsIGluZnJhc3RydWN0dXJlIGlzc3VlcyBwcmV2ZW50ZWQgb25lIG9yIG1vcmUgdGVz
dHMgKG1hcmtlZDxicj4NCsKgIMKgIMKgIMKgd2l0aCDimqHimqHimqEpIGZyb20gcnVubmluZyBv
biB0aGlzIGFyY2hpdGVjdHVyZS48YnI+DQrCoCDCoCDCoCDCoFRoaXMgaXMgbm90IHRoZSBmYXVs
dCBvZiB0aGUga2VybmVsIHRoYXQgd2FzIHRlc3RlZC48YnI+DQo8YnI+DQrCoCDCoCDCoCDCoOKa
oeKaoeKaoSBCb290IHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBMVFA8YnI+DQrCoCDC
oCDCoCDCoOKaoeKaoeKaoSBDSUZTIENvbm5lY3RhdGhvbjxicj4NCsKgIMKgIMKgIMKg4pqh4pqh
4pqhIFBPU0lYIHBqZC1mc3Rlc3Qgc3VpdGVzPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTG9v
cGRldiBTYW5pdHk8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBqdm0gLSBqY3N0cmVzcyB0ZXN0
czxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE1lbW9yeTogZm9ya19tZW08YnI+DQrCoCDCoCDC
oCDCoOKaoeKaoeKaoSBNZW1vcnkgZnVuY3Rpb246IG1lbWZkX2NyZWF0ZTxicj4NCsKgIMKgIMKg
IMKg4pqh4pqh4pqhIEFNVFUgKEFic3RyYWN0IE1hY2hpbmUgVGVzdCBVdGlsaXR5KTxicj4NCsKg
IMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgYnJpZGdlOiBzYW5pdHk8YnI+DQrCoCDCoCDC
oCDCoOKaoeKaoeKaoSBFdGhlcm5ldCBkcml2ZXJzIHNhbml0eTxicj4NCsKgIMKgIMKgIMKg4pqh
4pqh4pqhIE5ldHdvcmtpbmcgcm91dGU6IHBtdHU8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBO
ZXR3b3JraW5nIHJvdXRlX2Z1bmMgLSBsb2NhbDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5l
dHdvcmtpbmcgcm91dGVfZnVuYyAtIGZvcndhcmQ8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBO
ZXR3b3JraW5nIFRDUDoga2VlcGFsaXZlIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBO
ZXR3b3JraW5nIFVEUDogc29ja2V0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2lu
ZyBja2kgbmV0ZmlsdGVyIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3b3JraW5n
IHR1bm5lbDogZ2VuZXZlIGJhc2ljIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3
b3JraW5nIHR1bm5lbDogZ3JlIGJhc2ljPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTDJUUCBi
YXNpYyB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZyB0dW5uZWw6IHZ4
bGFuIGJhc2ljPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZyBpcHNlYzogYmFz
aWMgbmV0bnMgLSB0cmFuc3BvcnQ8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3b3JraW5n
IGlwc2VjOiBiYXNpYyBuZXRucyAtIHR1bm5lbDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIExp
YmtjYXBpIEFGX0FMRyB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgdHJhY2U6IGZ0cmFj
ZS90cmFjZXI8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBrZHVtcCAtIGtleGVjX2Jvb3Q8YnI+
DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIHhhcnJheS1pZHItcmFkaXh0cmVlLXRlc3Q8YnI+
DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIE1lbW9yeSBmdW5jdGlvbjoga2FzbHI8YnI+DQrC
oCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIGF1ZGl0OiBhdWRpdCB0ZXN0c3VpdGUgdGVzdDxicj4N
Cjxicj4NCsKgIMKgIEhvc3QgNDo8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoOKaoSBJbnRlcm5hbCBp
bmZyYXN0cnVjdHVyZSBpc3N1ZXMgcHJldmVudGVkIG9uZSBvciBtb3JlIHRlc3RzIChtYXJrZWQ8
YnI+DQrCoCDCoCDCoCDCoHdpdGgg4pqh4pqh4pqhKSBmcm9tIHJ1bm5pbmcgb24gdGhpcyBhcmNo
aXRlY3R1cmUuPGJyPg0KwqAgwqAgwqAgwqBUaGlzIGlzIG5vdCB0aGUgZmF1bHQgb2YgdGhlIGtl
cm5lbCB0aGF0IHdhcyB0ZXN0ZWQuPGJyPg0KPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgQm9v
dCB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEga2R1bXAgLSBzeXNycS1jPGJyPg0KwqAg
wqAgwqAgwqDimqHimqHimqEga2R1bXAgLSBmaWxlLWxvYWQ8YnI+DQo8YnI+DQrCoCDCoCBIb3N0
IDU6PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqDimqEgSW50ZXJuYWwgaW5mcmFzdHJ1Y3R1cmUgaXNz
dWVzIHByZXZlbnRlZCBvbmUgb3IgbW9yZSB0ZXN0cyAobWFya2VkPGJyPg0KwqAgwqAgwqAgwqB3
aXRoIOKaoeKaoeKaoSkgZnJvbSBydW5uaW5nIG9uIHRoaXMgYXJjaGl0ZWN0dXJlLjxicj4NCsKg
IMKgIMKgIMKgVGhpcyBpcyBub3QgdGhlIGZhdWx0IG9mIHRoZSBrZXJuZWwgdGhhdCB3YXMgdGVz
dGVkLjxicj4NCjxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIEJvb3QgdGVzdDxicj4NCsKgIMKg
IMKgIMKg4pqh4pqh4pqhIHhmc3Rlc3RzIC0gZXh0NDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqh
IHhmc3Rlc3RzIC0geGZzPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgU3RvcmFnZTogc3dyYWlk
IG1kYWRtIHJhaWRfbW9kdWxlIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIFBv
ZG1hbiBzeXN0ZW0gaW50ZWdyYXRpb24gdGVzdCAtIGFzIHJvb3Q8YnI+DQrCoCDCoCDCoCDCoPCf
mqcg4pqh4pqh4pqhIFBvZG1hbiBzeXN0ZW0gaW50ZWdyYXRpb24gdGVzdCAtIGFzIHVzZXI8YnI+
DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIHhmc3Rlc3RzIC0gYnRyZnM8YnI+DQrCoCDCoCDC
oCDCoPCfmqcg4pqh4pqh4pqhIHNlbGludXgtcG9saWN5OiBzZXJnZS10ZXN0c3VpdGU8YnI+DQrC
oCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIFN0b3JhZ2UgYmxrdGVzdHM8YnI+DQrCoCDCoCDCoCDC
oPCfmqcg4pqh4pqh4pqhIFN0b3JhZ2UgbnZtZSAtIHRjcDxicj4NCsKgIMKgIMKgIMKg8J+apyDi
mqHimqHimqEgc3RyZXNzOiBzdHJlc3Mtbmc8YnI+DQo8YnI+DQrCoCB4ODZfNjQ6PGJyPg0KwqAg
wqAgSG9zdCAxOjxicj4NCjxicj4NCsKgIMKgIMKgIMKg4pqhIEludGVybmFsIGluZnJhc3RydWN0
dXJlIGlzc3VlcyBwcmV2ZW50ZWQgb25lIG9yIG1vcmUgdGVzdHMgKG1hcmtlZDxicj4NCsKgIMKg
IMKgIMKgd2l0aCDimqHimqHimqEpIGZyb20gcnVubmluZyBvbiB0aGlzIGFyY2hpdGVjdHVyZS48
YnI+DQrCoCDCoCDCoCDCoFRoaXMgaXMgbm90IHRoZSBmYXVsdCBvZiB0aGUga2VybmVsIHRoYXQg
d2FzIHRlc3RlZC48YnI+DQo8YnI+DQrCoCDCoCDCoCDCoOKchSBCb290IHRlc3Q8YnI+DQrCoCDC
oCDCoCDCoOKchSBBQ1BJIHRhYmxlIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBMVFA8
YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBDSUZTIENvbm5lY3RhdGhvbjxicj4NCsKgIMKgIMKg
IMKg4pqh4pqh4pqhIFBPU0lYIHBqZC1mc3Rlc3Qgc3VpdGVzPGJyPg0KwqAgwqAgwqAgwqDimqHi
mqHimqEgTG9vcGRldiBTYW5pdHk8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBqdm0gLSBqY3N0
cmVzcyB0ZXN0czxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE1lbW9yeTogZm9ya19tZW08YnI+
DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBNZW1vcnkgZnVuY3Rpb246IG1lbWZkX2NyZWF0ZTxicj4N
CsKgIMKgIMKgIMKg4pqh4pqh4pqhIEFNVFUgKEFic3RyYWN0IE1hY2hpbmUgVGVzdCBVdGlsaXR5
KTxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgYnJpZGdlOiBzYW5pdHk8YnI+
DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBFdGhlcm5ldCBkcml2ZXJzIHNhbml0eTxicj4NCsKgIMKg
IMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgc29ja2V0OiBmdXp6PGJyPg0KwqAgwqAgwqAgwqDi
mqHimqHimqEgTmV0d29ya2luZzogaWdtcCBjb25mb3JtYW5jZSB0ZXN0PGJyPg0KwqAgwqAgwqAg
wqDimqHimqHimqEgTmV0d29ya2luZyByb3V0ZTogcG10dTxicj4NCsKgIMKgIMKgIMKg4pqh4pqh
4pqhIE5ldHdvcmtpbmcgcm91dGVfZnVuYyAtIGxvY2FsPGJyPg0KwqAgwqAgwqAgwqDimqHimqHi
mqEgTmV0d29ya2luZyByb3V0ZV9mdW5jIC0gZm9yd2FyZDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh
4pqhIE5ldHdvcmtpbmcgVENQOiBrZWVwYWxpdmUgdGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh
4pqhIE5ldHdvcmtpbmcgVURQOiBzb2NrZXQ8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3
b3JraW5nIGNraSBuZXRmaWx0ZXIgdGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdv
cmtpbmcgdHVubmVsOiBnZW5ldmUgYmFzaWMgdGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqh
IE5ldHdvcmtpbmcgdHVubmVsOiBncmUgYmFzaWM8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBM
MlRQIGJhc2ljIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3b3JraW5nIHR1bm5l
bDogdnhsYW4gYmFzaWM8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3b3JraW5nIGlwc2Vj
OiBiYXNpYyBuZXRucyAtIHRyYW5zcG9ydDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdv
cmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIC0gdHVubmVsPGJyPg0KwqAgwqAgwqAgwqDimqHimqHi
mqEgTGlia2NhcGkgQUZfQUxHIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBwY2l1dGls
czogc2FuaXR5IHNtb2tlIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBwY2l1dGlsczog
dXBkYXRlIHBjaSBpZHMgdGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIEFMU0EgUENNIGxv
b3BiYWNrIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBBTFNBIENvbnRyb2wgKG1peGVy
KSBVc2Vyc3BhY2UgRWxlbWVudCB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgc3RvcmFn
ZTogU0NTSSBWUEQ8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSB0cmFjZTogZnRyYWNlL3RyYWNl
cjxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIGtkdW1wIC0ga2V4ZWNfYm9vdDxicj4NCsKgIMKg
IMKgIMKg8J+apyDimqHimqHimqEgeGFycmF5LWlkci1yYWRpeHRyZWUtdGVzdDxicj4NCsKgIMKg
IMKgIMKg8J+apyDimqHimqHimqEgaTJjOiBpMmNkZXRlY3Qgc2FuaXR5PGJyPg0KwqAgwqAgwqAg
wqDwn5qnIOKaoeKaoeKaoSBGaXJtd2FyZSB0ZXN0IHN1aXRlPGJyPg0KwqAgwqAgwqAgwqDwn5qn
IOKaoeKaoeKaoSBNZW1vcnkgZnVuY3Rpb246IGthc2xyPGJyPg0KwqAgwqAgwqAgwqDwn5qnIPCf
kqUgYXVkaXQ6IGF1ZGl0IHRlc3RzdWl0ZSB0ZXN0PGJyPg0KPGJyPg0KwqAgwqAgSG9zdCAyOjxi
cj4NCjxicj4NCsKgIMKgIMKgIMKg4pqhIEludGVybmFsIGluZnJhc3RydWN0dXJlIGlzc3VlcyBw
cmV2ZW50ZWQgb25lIG9yIG1vcmUgdGVzdHMgKG1hcmtlZDxicj4NCsKgIMKgIMKgIMKgd2l0aCDi
mqHimqHimqEpIGZyb20gcnVubmluZyBvbiB0aGlzIGFyY2hpdGVjdHVyZS48YnI+DQrCoCDCoCDC
oCDCoFRoaXMgaXMgbm90IHRoZSBmYXVsdCBvZiB0aGUga2VybmVsIHRoYXQgd2FzIHRlc3RlZC48
YnI+DQo8YnI+DQrCoCDCoCDCoCDCoOKchSBCb290IHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKchSB4
ZnN0ZXN0cyAtIGV4dDQ8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSB4ZnN0ZXN0cyAtIHhmczxi
cj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIHhmc3Rlc3RzIC0gbmZzdjQuMjxicj4NCsKgIMKgIMKg
IMKg4pqh4pqh4pqhIHBvd2VyLW1hbmFnZW1lbnQ6IGNwdXBvd2VyL3Nhbml0eSB0ZXN0PGJyPg0K
wqAgwqAgwqAgwqDimqHimqHimqEgc3RvcmFnZTogc29mdHdhcmUgUkFJRCB0ZXN0aW5nPGJyPg0K
wqAgwqAgwqAgwqDimqHimqHimqEgU3RvcmFnZTogc3dyYWlkIG1kYWRtIHJhaWRfbW9kdWxlIHRl
c3Q8YnI+DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIFBvZG1hbiBzeXN0ZW0gaW50ZWdyYXRp
b24gdGVzdCAtIGFzIHJvb3Q8YnI+DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIFBvZG1hbiBz
eXN0ZW0gaW50ZWdyYXRpb24gdGVzdCAtIGFzIHVzZXI8YnI+DQrCoCDCoCDCoCDCoPCfmqcg4pqh
4pqh4pqhIENQVTogSWRsZSBUZXN0PGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSB4ZnN0
ZXN0cyAtIGJ0cmZzPGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSB4ZnN0ZXN0cyAtIGNp
ZnN2My4xMTxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgSVBNSSBkcml2ZXIgdGVzdDxi
cj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgSVBNSXRvb2wgbG9vcCBzdHJlc3MgdGVzdDxi
cj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgc2VsaW51eC1wb2xpY3k6IHNlcmdlLXRlc3Rz
dWl0ZTxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgU3RvcmFnZSBibGt0ZXN0czxicj4N
CsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgU3RvcmFnZSBibG9jayAtIGZpbGVzeXN0ZW0gZmlv
IHRlc3Q8YnI+DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIFN0b3JhZ2UgYmxvY2sgLSBxdWV1
ZSBzY2hlZHVsZXIgdGVzdDxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgU3RvcmFnZSBu
dm1lIC0gdGNwPGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBTdG9yYWdlIG52ZGltbSBu
ZGN0bCB0ZXN0IHN1aXRlPGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBTdG9yYWdlOiBs
dm0gZGV2aWNlLW1hcHBlciB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBzdHJl
c3M6IHN0cmVzcy1uZzxicj4NCjxicj4NCsKgIFRlc3Qgc291cmNlczogPGEgaHJlZj0iaHR0cHM6
Ly9naXRsYWIuY29tL2NraS1wcm9qZWN0L2tlcm5lbC10ZXN0cyIgcmVsPSJub3JlZmVycmVyIiB0
YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly9naXRsYWIuY29tL2NraS1wcm9qZWN0L2tlcm5lbC10ZXN0
czwvYT48YnI+DQrCoCDCoCDwn5KaIFB1bGwgcmVxdWVzdHMgYXJlIHdlbGNvbWUgZm9yIG5ldyB0
ZXN0cyBvciBpbXByb3ZlbWVudHMgdG8gZXhpc3RpbmcgdGVzdHMhPGJyPg0KPGJyPg0KQWJvcnRl
ZCB0ZXN0czxicj4NCi0tLS0tLS0tLS0tLS08YnI+DQpUZXN0cyB0aGF0IGRpZG4mIzM5O3QgY29t
cGxldGUgcnVubmluZyBzdWNjZXNzZnVsbHkgYXJlIG1hcmtlZCB3aXRoIOKaoeKaoeKaoS48YnI+
DQpJZiB0aGlzIHdhcyBjYXVzZWQgYnkgYW4gaW5mcmFzdHJ1Y3R1cmUgaXNzdWUsIHdlIHRyeSB0
byBtYXJrIHRoYXQ8YnI+DQpleHBsaWNpdGx5IGluIHRoZSByZXBvcnQuPGJyPg0KPGJyPg0KV2Fp
dmVkIHRlc3RzPGJyPg0KLS0tLS0tLS0tLS0tPGJyPg0KSWYgdGhlIHRlc3QgcnVuIGluY2x1ZGVk
IHdhaXZlZCB0ZXN0cywgdGhleSBhcmUgbWFya2VkIHdpdGgg8J+apy4gU3VjaCB0ZXN0cyBhcmU8
YnI+DQpleGVjdXRlZCBidXQgdGhlaXIgcmVzdWx0cyBhcmUgbm90IHRha2VuIGludG8gYWNjb3Vu
dC4gVGVzdHMgYXJlIHdhaXZlZCB3aGVuPGJyPg0KdGhlaXIgcmVzdWx0cyBhcmUgbm90IHJlbGlh
YmxlIGVub3VnaCwgZS5nLiB3aGVuIHRoZXkmIzM5O3JlIGp1c3QgaW50cm9kdWNlZCBvciBhcmU8
YnI+DQpiZWluZyBmaXhlZC48YnI+DQo8YnI+DQpUZXN0aW5nIHRpbWVvdXQ8YnI+DQotLS0tLS0t
LS0tLS0tLS08YnI+DQpXZSBhaW0gdG8gcHJvdmlkZSBhIHJlcG9ydCB3aXRoaW4gcmVhc29uYWJs
ZSB0aW1lZnJhbWUuIFRlc3RzIHRoYXQgaGF2ZW4mIzM5O3Q8YnI+DQpmaW5pc2hlZCBydW5uaW5n
IHlldCBhcmUgbWFya2VkIHdpdGgg4o+xLjxicj4NCjxicj4NCjwvYmxvY2txdW90ZT48L2Rpdj48
YnIgY2xlYXI9ImFsbCI+PGJyPi0tIDxicj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfc2ln
bmF0dXJlIj48ZGl2IGRpcj0ibHRyIj5CZXN0IFJlZ2FyZHM8YnI+DQpGZWkgTGl1ICjliJjpo54p
PC9kaXY+PC9kaXY+PC9kaXY+DQoNCjxwPjwvcD4KCi0tIDxiciAvPgpZb3UgcmVjZWl2ZWQgdGhp
cyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29nbGUgR3JvdXBz
ICZxdW90O0NsYW5nIEJ1aWx0IExpbnV4JnF1b3Q7IGdyb3VwLjxiciAvPgpUbyB1bnN1YnNjcmli
ZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5k
IGFuIGVtYWlsIHRvIDxhIGhyZWY9Im1haWx0bzpjbGFuZy1idWlsdC1saW51eCt1bnN1YnNjcmli
ZUBnb29nbGVncm91cHMuY29tIj5jbGFuZy1idWlsdC1saW51eCt1bnN1YnNjcmliZUBnb29nbGVn
cm91cHMuY29tPC9hPi48YnIgLz4KVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdlYiB2
aXNpdCA8YSBocmVmPSJodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvY2xhbmctYnVp
bHQtbGludXgvQ0FHMjBoeVpMQlNTVW10JTJCQUNubkd2MjZaTHVWdFZzJTNEYkVXMEdtNllHeWhT
OXBPdCUzRE9nJTQwbWFpbC5nbWFpbC5jb20/dXRtX21lZGl1bT1lbWFpbCZ1dG1fc291cmNlPWZv
b3RlciI+aHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2NsYW5nLWJ1aWx0LWxpbnV4
L0NBRzIwaHlaTEJTU1VtdCUyQkFDbm5HdjI2Wkx1VnRWcyUzRGJFVzBHbTZZR3loUzlwT3QlM0RP
ZyU0MG1haWwuZ21haWwuY29tPC9hPi48YnIgLz4K
--000000000000bf303405c5651d0c--

