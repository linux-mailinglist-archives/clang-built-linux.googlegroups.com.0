Return-Path: <clang-built-linux+bncBCPOLJHXQ4FRB2WMZODAMGQE24JPBYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAFC3B150C
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 09:44:43 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id b1-20020a4ac2810000b029024bec618157sf1267126ooq.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 00:44:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624434282; cv=pass;
        d=google.com; s=arc-20160816;
        b=xvrZFIcygaR0FPZaUfJEBoSu7DfSBOFl3rzFp7n1YBf6GWMfx+uKd9wmsDJbs2ACRi
         VyMfTTPay84KA8BjMZNUwURfQLiXOjxQO+hYE0PrOHhGk/JdcRUZruIJqHo8DSRxGf/S
         M5JbLo9LU+flo4QvucnjAOfk+u4KUo3zmH4HYc2E4qZGFxBSmYvy1qt63/eTEteY7dZz
         oWI0j6sWT0jHykXMRLGndPNEjX/2XrpdkOJ8acyk0zPYzVdf2ai+VDmhLfMPayjh2l9P
         0aqgGxE9Dxz6CMltrjIaeSYlM+J/HPcwbntInTSgDE7IpBOTcusxvmhsintM18wwjQde
         j44g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=smV6wpT3Qly4+61yk4E40GHsOEQvBt6s0aOObEX/tVI=;
        b=IM6WdafUvLsIKIY9u9B+YKJerBGe7lSiXmHykq1LW05fVSkMH55kzSXEcUaiZ4oWHL
         jyeawrOXbpTkBhSHftOgB6bxIfMJdJcS44A7cgRswnOZP5x7DBig8RQioJEXeRB6YCy6
         IzDR8tfQyqtaHvctJEuFkf/NrS7gz47vd7h2S8CkD0QBoyUEUsK6bdWaK1MPR8PYu0bQ
         zHtsKuJnVQQpwOYfZwxUp5JUEFAwqmQmt2AgH+w4cyrZqk2yPVpnAt1PqjiQpiJgOqqf
         oqRui8x4mg5N3tnf1zJRDv2ve3eb2vlKYn6pb76yyoj335qxjsHSvPbtzYuaiUlABNhi
         Z7Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LTTDnSaz;
       spf=pass (google.com: domain of bgoncalv@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=bgoncalv@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=smV6wpT3Qly4+61yk4E40GHsOEQvBt6s0aOObEX/tVI=;
        b=EJyVi5mfotvr8MEuaThMSX5CE9+Gb43PSdTig93Cf6XzTVdKiYLVQmfbIrR5aYp33V
         xI8cFkoz8YXNwDXEp7v63My0aIcu04njkwFlp0cqryi0SPxI4C8vcdF3sGxcenif35wF
         6pRN6PHYy6HXoVQglvQOgQw2ICPSo3tUxw0TP+fdjc0PJayXNJTyzM4YaeEuoSHTdGyZ
         +FgMAZupHKBPNNbuDK5Fb5XFP87/t9UATefw9VXzM/DVCN32iEfZvUF+v+y9HH2UujfJ
         BN2rSErbeJGGd+WaxLfXPU/CQWx16ThRdx0HHp030Z+FROeINbnBeu/xqvUEi0j/ohp7
         vyaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=smV6wpT3Qly4+61yk4E40GHsOEQvBt6s0aOObEX/tVI=;
        b=tixsYGasaYZiD3/qjJnlCRjow4wB0rOqPIL7YdteV0ZgRQE7X3HMQvJsiEEFyDmeoH
         S5HkvVO18S/gHXPUW/TPidAwydR/PQhKFhbLuPZouKcew47RYGtq/3OZQHYvnytKEJDc
         nh/1+kFIiGfOIDNhBjdkkAXILbnpO0LweOP/0Qs6SZZMh4OIFnUXsCk7/PQY0f1RGV6w
         G/1zXPDUHEwUCLravcG1U2NTD1wgyiKNzrxy9hrbIy4m+CrKTffW4geaS8j4h9kDsBfS
         Hsr0IMEAdsa+dvgNQFLQwNE9zgRjLL7kGmUuBIILZiZ0miRo5s6gcDK4a7BSMD7t2G4a
         bhfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xSoLm1JPge4yK4BjC1Jskc/j8Kr36FYzorNBcRTx2cpTV/NaC
	ApqnWJLGvLf7oqyXdk/2MZc=
X-Google-Smtp-Source: ABdhPJwbSbJHfVD5zwzWHdioNdnSnT185aFtYzUeH7cHQdZFGLUh7F90hJAavZ4qAvBmdEhru/V8Zw==
X-Received: by 2002:a9d:7396:: with SMTP id j22mr5994674otk.287.1624434282490;
        Wed, 23 Jun 2021 00:44:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f24:: with SMTP id e4ls474990oth.4.gmail; Wed, 23
 Jun 2021 00:44:42 -0700 (PDT)
X-Received: by 2002:a9d:550a:: with SMTP id l10mr6863253oth.125.1624434282084;
        Wed, 23 Jun 2021 00:44:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624434282; cv=none;
        d=google.com; s=arc-20160816;
        b=JKEpKv0Qq+j/RJpb2QrnZovgdSAkHROP3Z3TZdPCEOwHNBPVhlHUf0qVVdF3FTT7xl
         OEA0Pxqtx1d5CW2a7nsmYrgem4bbB979zEKvxWLqSJIz3mwg6sgKAMJVinKtWdSqsHun
         OAHrlOvRv6VzhR+Mnp/wGto8Q9aT054bj3JOhUO/b8Thgb/sG/kpnquM8r8Rnxzo3m7i
         gkZouj7tXVpKWrEpaOitsZEnlp2u0pnWaUpwp6+38yhZ6ptt7c5lrZ/Yj/KT29plakRD
         Cppr4qcMDasfCicHUHFt9BwtdcgVzXWIEUOHiIdywy85b2pRczBKUqEmLyAASvI6LvLJ
         dBHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e4B7/rHFHF3J/yfeuFTxcW56pDoSJngeiGsgcM+da4E=;
        b=ImQft76SrpiJPKQSLjruoejoFe+vxOCem3m7KMrDOH50hHXva2GpPQldqRL96fWmvb
         16PwPW598KYwD3zkd4+aUVlykXUUGReyP+oNN5YvAh7ghguaFDmn3nH2AkOldd1HuLaW
         HBYthMSdtF86MJYct+uVdsJHu2FwMb5YXt2jkz+AUlDKDkqBE5AVSMbVm8JhHVZkSENm
         9EjoViVMhtYCERmEXtO1qAozB++QCT9wRsMWhw83zmyhbP3jTWQ7YGaqpgaIld0rQIU4
         6yRM3v07YbFtv0VVfZl0UpexcrlaXUHb6fDl32Wp6G+yDvGzxp24SpX5JPhB9DJKfNIN
         3lsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LTTDnSaz;
       spf=pass (google.com: domain of bgoncalv@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=bgoncalv@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id m4si181774otn.3.2021.06.23.00.44.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Jun 2021 00:44:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of bgoncalv@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com
 [209.85.161.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-560-naIVv7fEPpeD_1La42uP4A-1; Wed, 23 Jun 2021 03:44:39 -0400
X-MC-Unique: naIVv7fEPpeD_1La42uP4A-1
Received: by mail-oo1-f69.google.com with SMTP id t19-20020a4ae4130000b029023950cb8d35so1253017oov.6
        for <clang-built-linux@googlegroups.com>; Wed, 23 Jun 2021 00:44:39 -0700 (PDT)
X-Received: by 2002:a9d:6a83:: with SMTP id l3mr6604969otq.189.1624434278421;
        Wed, 23 Jun 2021 00:44:38 -0700 (PDT)
X-Received: by 2002:a9d:6a83:: with SMTP id l3mr6604950otq.189.1624434278221;
 Wed, 23 Jun 2021 00:44:38 -0700 (PDT)
MIME-Version: 1.0
References: <cki.286CD9AEEE.728UX3K689@redhat.com> <CAG20hyZLBSSUmt+ACnnGv26ZLuVtVs=bEW0Gm6YGyhS9pOt=Og@mail.gmail.com>
In-Reply-To: <CAG20hyZLBSSUmt+ACnnGv26ZLuVtVs=bEW0Gm6YGyhS9pOt=Og@mail.gmail.com>
From: Bruno Goncalves <bgoncalv@redhat.com>
Date: Wed, 23 Jun 2021 09:44:27 +0200
Message-ID: <CA+QYu4oEV90p+=_FAb-jX7bKOkQHY6DbbP+Dcy3eKWpXhP+OuQ@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=E2=9D=8C_FAIL=3A_Test_report_for_kernel_5=2E13=2E0=2Drc6_=28mai?=
	=?UTF-8?Q?nline=2Ekernel=2Eorg=2Dclang=2C_e14c779a=29?=
To: Fei Liu <feliu@redhat.com>
Cc: CKI Project <cki-project@redhat.com>, clang-built-linux@googlegroups.com, 
	Ondrej Mosnacek <omosnace@redhat.com>, Jianhong Yin <jiyin@redhat.com>, skt-results-master@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000001d5ce805c56a14c7"
X-Original-Sender: bgoncalv@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=LTTDnSaz;
       spf=pass (google.com: domain of bgoncalv@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=bgoncalv@redhat.com;
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

--0000000000001d5ce805c56a14c7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 23, 2021 at 3:49 AM Fei Liu <feliu@redhat.com> wrote:

>
>
> On Sun, Jun 20, 2021 at 4:27 PM CKI Project <cki-project@redhat.com>
> wrote:
>
>>
>> Hello,
>>
>> We ran automated tests on a recent commit from this kernel tree:
>>
>>        Kernel repo:
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>             Commit: e14c779adebe - Merge tag 's390-5.13-4' of git://
>> git.kernel.org/pub/scm/linux/kernel/git/s390/linux
>>
>> The results of these automated tests are provided below.
>>
>>     Overall result: FAILED (see details below)
>>              Merge: OK
>>            Compile: OK
>>  Selftests compile: FAILED
>>              Tests: FAILED
>>
>> All kernel binaries, config files, and logs are available for download
>> here:
>>
>>
>> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pr=
efix=3Ddatawarehouse-public/2021/06/19/323869316
>>
>> One or more kernel tests failed:
>>
>>     aarch64:
>>      =E2=9D=8C CIFS Connectathon
>>      =E2=9D=8C Networking bridge: sanity
>>
> avc error
>
> type=3DAVC msg=3Daudit(1624176544.113:1062): avc:  denied  { read } for  =
pid=3D770801 comm=3D"systemd-gpt-aut" name=3D"b252:1" dev=3D"tmpfs" ino=3D9=
16 scontext=3Dsystem_u:system_r:systemd_gpt_generator_t:s0 tcontext=3Dsyste=
m_u:object_r:udev_var_run_t:s0 tclass=3Dfile permissive=3D1
>
>
Thank you, I've reported the selinux-policy issue as
https://bugzilla.redhat.com/show_bug.cgi?id=3D1975125

We'll mask this problem on CKI jobs to avoid failing tests because of it.

Bruno


>
>> We hope that these logs can help you find the problem quickly. For the
>> full
>> detail on our testing procedures, please scroll to the bottom of this
>> message.
>>
>> Please reply to this email if you have any questions about the tests tha=
t
>> we
>> ran or if you have any suggestions on how to make future tests more
>> effective.
>>
>>         ,-.   ,-.
>>        ( C ) ( K )  Continuous
>>         `-',-.`-'   Kernel
>>           ( I )     Integration
>>            `-'
>>
>> ________________________________________________________________________=
______
>>
>> Compile testing
>> ---------------
>>
>> We compiled the kernel for 4 architectures:
>>
>>     aarch64:
>>       make options: make LLVM=3D1 -j24 INSTALL_MOD_STRIP=3D1 targz-pkg
>>
>>     ppc64le:
>>       make options: make CC=3Dclang -j24 INSTALL_MOD_STRIP=3D1 targz-pkg
>>
>>     s390x:
>>       make options: make CC=3Dclang -j24 INSTALL_MOD_STRIP=3D1 targz-pkg
>>
>>     x86_64:
>>       make options: make LLVM=3D1 -j24 INSTALL_MOD_STRIP=3D1 targz-pkg
>>
>>
>> We built the following selftests:
>>
>>   x86_64:
>>       net: OK
>>       bpf: fail
>>       install and packaging: OK
>>
>> You can find the full log (build-selftests.log) in the artifact storage
>> above.
>>
>>
>> Hardware testing
>> ----------------
>> We booted each kernel and ran the following tests:
>>
>>   aarch64:
>>     Host 1:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts
>> (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9C=85 Boot test
>>        =E2=9C=85 ACPI table test
>>        =E2=9C=85 ACPI enabled test
>>        =E2=9C=85 LTP
>>        =E2=9D=8C CIFS Connectathon
>>        =E2=9C=85 POSIX pjd-fstest suites
>>        =E2=9C=85 Loopdev Sanity
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>>        =E2=9C=85 Memory: fork_mem
>>        =E2=9C=85 Memory function: memfd_create
>>        =E2=9C=85 AMTU (Abstract Machine Test Utility)
>>        =E2=9D=8C Networking bridge: sanity
>>        =E2=9C=85 Ethernet drivers sanity
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking cki netfilter test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - trans=
port
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunne=
l
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Elemen=
t test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xarray-idr-radixtree-tes=
t
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 i2c: i2cdetect sanity
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Firmware test suite
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite t=
est
>>
>>   ppc64le:
>>     Host 1:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts
>> (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9C=85 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking cki netfilter test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunne=
l
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Elemen=
t test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xarray-idr-radixtree-tes=
t
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite t=
est
>>
>>   s390x:
>>     Host 1:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts
>> (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>>
>>     Host 2:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts
>> (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_module tes=
t
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integratio=
n test - as root
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integratio=
n test - as user
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-te=
stsuite
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>>
>>     Host 3:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts
>> (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking cki netfilter test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - trans=
port
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunne=
l
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xarray-idr-radixtree-tes=
t
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite t=
est
>>
>>     Host 4:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts
>> (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>>
>>     Host 5:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts
>> (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_module tes=
t
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integratio=
n test - as root
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integratio=
n test - as user
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-te=
stsuite
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>>
>>   x86_64:
>>     Host 1:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts
>> (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9C=85 Boot test
>>        =E2=9C=85 ACPI table test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking cki netfilter test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - trans=
port
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunne=
l
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: sanity smoke test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Elemen=
t test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xarray-idr-radixtree-tes=
t
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 i2c: i2cdetect sanity
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Firmware test suite
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>>        =F0=9F=9A=A7 =F0=9F=92=A5 audit: audit testsuite test
>>
>>     Host 2:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts
>> (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9C=85 Boot test
>>        =E2=9C=85 xfstests - ext4
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - nfsv4.2
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 power-management: cpupower/sanity tes=
t
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_module tes=
t
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integratio=
n test - as root
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integratio=
n test - as user
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CPU: Idle Test
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - cifsv3.11
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress tes=
t
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-te=
stsuite
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesyst=
em fio test
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sc=
heduler test
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl tes=
t suite
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: lvm device-mapp=
er test
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>>
>>   Test sources: https://gitlab.com/cki-project/kernel-tests
>>     =F0=9F=92=9A Pull requests are welcome for new tests or improvements=
 to
>> existing tests!
>>
>> Aborted tests
>> -------------
>> Tests that didn't complete running successfully are marked with =E2=9A=
=A1=E2=9A=A1=E2=9A=A1.
>> If this was caused by an infrastructure issue, we try to mark that
>> explicitly in the report.
>>
>> Waived tests
>> ------------
>> If the test run included waived tests, they are marked with =F0=9F=9A=A7=
. Such
>> tests are
>> executed but their results are not taken into account. Tests are waived
>> when
>> their results are not reliable enough, e.g. when they're just introduced
>> or are
>> being fixed.
>>
>> Testing timeout
>> ---------------
>> We aim to provide a report within reasonable timeframe. Tests that haven=
't
>> finished running yet are marked with =E2=8F=B1.
>>
>>
>
> --
> Best Regards
> Fei Liu (=E5=88=98=E9=A3=9E)
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BQYu4oEV90p%2B%3D_FAb-jX7bKOkQHY6DbbP%2BDcy3eKWpXhP%2=
BOuQ%40mail.gmail.com.

--0000000000001d5ce805c56a14c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+PGJyPjwvZGl2Pjxicj48ZGl2IGNsYXNzPSJn
bWFpbF9xdW90ZSI+PGRpdiBkaXI9Imx0ciIgY2xhc3M9ImdtYWlsX2F0dHIiPk9uIFdlZCwgSnVu
IDIzLCAyMDIxIGF0IDM6NDkgQU0gRmVpIExpdSAmbHQ7PGEgaHJlZj0ibWFpbHRvOmZlbGl1QHJl
ZGhhdC5jb20iPmZlbGl1QHJlZGhhdC5jb208L2E+Jmd0OyB3cm90ZTo8YnI+PC9kaXY+PGJsb2Nr
cXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4
O2JvcmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgi
PjxkaXYgZGlyPSJsdHIiPjxkaXYgZGlyPSJsdHIiPjxicj48L2Rpdj48YnI+PGRpdiBjbGFzcz0i
Z21haWxfcXVvdGUiPjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9hdHRyIj5PbiBTdW4sIEp1
biAyMCwgMjAyMSBhdCA0OjI3IFBNIENLSSBQcm9qZWN0ICZsdDs8YSBocmVmPSJtYWlsdG86Y2tp
LXByb2plY3RAcmVkaGF0LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmNraS1wcm9qZWN0QHJlZGhhdC5j
b208L2E+Jmd0OyB3cm90ZTo8YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3Rl
IiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFweCBzb2xpZCBy
Z2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPjxicj4NCkhlbGxvLDxicj4NCjxicj4N
CldlIHJhbiBhdXRvbWF0ZWQgdGVzdHMgb24gYSByZWNlbnQgY29tbWl0IGZyb20gdGhpcyBrZXJu
ZWwgdHJlZTo8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoEtlcm5lbCByZXBvOiA8YSBocmVmPSJodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51
eC5naXQiIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdDwvYT48YnI+
DQrCoCDCoCDCoCDCoCDCoCDCoCBDb21taXQ6IGUxNGM3NzlhZGViZSAtIE1lcmdlIHRhZyAmIzM5
O3MzOTAtNS4xMy00JiMzOTsgb2YgZ2l0Oi8vPGEgaHJlZj0iaHR0cDovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zMzkwL2xpbnV4IiByZWw9Im5vcmVmZXJyZXIiIHRh
cmdldD0iX2JsYW5rIj5naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvczM5
MC9saW51eDwvYT48YnI+DQo8YnI+DQpUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQgdGVz
dHMgYXJlIHByb3ZpZGVkIGJlbG93Ljxicj4NCjxicj4NCsKgIMKgIE92ZXJhbGwgcmVzdWx0OiBG
QUlMRUQgKHNlZSBkZXRhaWxzIGJlbG93KTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgTWVyZ2U6
IE9LPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqBDb21waWxlOiBPSzxicj4NCsKgU2VsZnRlc3RzIGNv
bXBpbGU6IEZBSUxFRDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgVGVzdHM6IEZBSUxFRDxicj4N
Cjxicj4NCkFsbCBrZXJuZWwgYmluYXJpZXMsIGNvbmZpZyBmaWxlcywgYW5kIGxvZ3MgYXJlIGF2
YWlsYWJsZSBmb3IgZG93bmxvYWQgaGVyZTo8YnI+DQo8YnI+DQrCoCA8YSBocmVmPSJodHRwczov
L2Fyci1ja2ktcHJvZC1kYXRhd2FyZWhvdXNlLXB1YmxpYy5zMy5hbWF6b25hd3MuY29tL2luZGV4
Lmh0bWw/cHJlZml4PWRhdGF3YXJlaG91c2UtcHVibGljLzIwMjEvMDYvMTkvMzIzODY5MzE2IiBy
ZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2Fyci1ja2ktcHJvZC1kYXRh
d2FyZWhvdXNlLXB1YmxpYy5zMy5hbWF6b25hd3MuY29tL2luZGV4Lmh0bWw/cHJlZml4PWRhdGF3
YXJlaG91c2UtcHVibGljLzIwMjEvMDYvMTkvMzIzODY5MzE2PC9hPjxicj4NCjxicj4NCk9uZSBv
ciBtb3JlIGtlcm5lbCB0ZXN0cyBmYWlsZWQ6PGJyPg0KPGJyPg0KwqAgwqAgYWFyY2g2NDo8YnI+
DQrCoCDCoCDCoOKdjCBDSUZTIENvbm5lY3RhdGhvbjxicj4NCsKgIMKgIMKg4p2MIE5ldHdvcmtp
bmcgYnJpZGdlOiBzYW5pdHk8YnI+PC9ibG9ja3F1b3RlPjxkaXY+YXZjIGVycm9yPC9kaXY+PGRp
dj48cHJlPnR5cGU9QVZDIG1zZz1hdWRpdCgxNjI0MTc2NTQ0LjExMzoxMDYyKTogYXZjOiAgZGVu
aWVkICB7IHJlYWQgfSBmb3IgIHBpZD03NzA4MDEgY29tbT0mcXVvdDtzeXN0ZW1kLWdwdC1hdXQm
cXVvdDsgbmFtZT0mcXVvdDtiMjUyOjEmcXVvdDsgZGV2PSZxdW90O3RtcGZzJnF1b3Q7IGlubz05
MTYgc2NvbnRleHQ9c3lzdGVtX3U6c3lzdGVtX3I6c3lzdGVtZF9ncHRfZ2VuZXJhdG9yX3Q6czAg
dGNvbnRleHQ9c3lzdGVtX3U6b2JqZWN0X3I6dWRldl92YXJfcnVuX3Q6czAgdGNsYXNzPWZpbGUg
cGVybWlzc2l2ZT0xPC9wcmU+PC9kaXY+PC9kaXY+PC9kaXY+PC9ibG9ja3F1b3RlPjxkaXY+PGJy
PjwvZGl2PjxkaXY+VGhhbmsgeW91LCBJJiMzOTt2ZSByZXBvcnRlZCB0aGUgc2VsaW51eC1wb2xp
Y3kgaXNzdWUgYXMgPGEgaHJlZj0iaHR0cHM6Ly9idWd6aWxsYS5yZWRoYXQuY29tL3Nob3dfYnVn
LmNnaT9pZD0xOTc1MTI1Ij5odHRwczovL2J1Z3ppbGxhLnJlZGhhdC5jb20vc2hvd19idWcuY2dp
P2lkPTE5NzUxMjU8L2E+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5XZSYjMzk7bGwgbWFzayB0
aGlzIHByb2JsZW0gb24gQ0tJIGpvYnMgdG8gYXZvaWQgZmFpbGluZyB0ZXN0cyBiZWNhdXNlIG9m
IGl0LjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+QnJ1bm88YnI+PC9kaXY+PGRpdj7CoDwvZGl2
PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBw
eCAwLjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5nLWxl
ZnQ6MWV4Ij48ZGl2IGRpcj0ibHRyIj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+PGRpdj4gPC9k
aXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHgg
MHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmct
bGVmdDoxZXgiPg0KPGJyPg0KV2UgaG9wZSB0aGF0IHRoZXNlIGxvZ3MgY2FuIGhlbHAgeW91IGZp
bmQgdGhlIHByb2JsZW0gcXVpY2tseS4gRm9yIHRoZSBmdWxsPGJyPg0KZGV0YWlsIG9uIG91ciB0
ZXN0aW5nIHByb2NlZHVyZXMsIHBsZWFzZSBzY3JvbGwgdG8gdGhlIGJvdHRvbSBvZiB0aGlzIG1l
c3NhZ2UuPGJyPg0KPGJyPg0KUGxlYXNlIHJlcGx5IHRvIHRoaXMgZW1haWwgaWYgeW91IGhhdmUg
YW55IHF1ZXN0aW9ucyBhYm91dCB0aGUgdGVzdHMgdGhhdCB3ZTxicj4NCnJhbiBvciBpZiB5b3Ug
aGF2ZSBhbnkgc3VnZ2VzdGlvbnMgb24gaG93IHRvIG1ha2UgZnV0dXJlIHRlc3RzIG1vcmUgZWZm
ZWN0aXZlLjxicj4NCjxicj4NCsKgIMKgIMKgIMKgICwtLsKgIMKgLC0uPGJyPg0KwqAgwqAgwqAg
wqAoIEMgKSAoIEsgKcKgIENvbnRpbnVvdXM8YnI+DQrCoCDCoCDCoCDCoCBgLSYjMzk7LC0uYC0m
IzM5O8KgIMKgS2VybmVsPGJyPg0KwqAgwqAgwqAgwqAgwqAgKCBJICnCoCDCoCDCoEludGVncmF0
aW9uPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqBgLSYjMzk7PGJyPg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fPGJyPg0KPGJyPg0KQ29tcGlsZSB0ZXN0aW5nPGJyPg0KLS0tLS0tLS0tLS0tLS0tPGJyPg0K
PGJyPg0KV2UgY29tcGlsZWQgdGhlIGtlcm5lbCBmb3IgNCBhcmNoaXRlY3R1cmVzOjxicj4NCjxi
cj4NCsKgIMKgIGFhcmNoNjQ6PGJyPg0KwqAgwqAgwqAgbWFrZSBvcHRpb25zOiBtYWtlIExMVk09
MSAtajI0IElOU1RBTExfTU9EX1NUUklQPTEgdGFyZ3otcGtnPGJyPg0KPGJyPg0KwqAgwqAgcHBj
NjRsZTo8YnI+DQrCoCDCoCDCoCBtYWtlIG9wdGlvbnM6IG1ha2UgQ0M9Y2xhbmcgLWoyNCBJTlNU
QUxMX01PRF9TVFJJUD0xIHRhcmd6LXBrZzxicj4NCjxicj4NCsKgIMKgIHMzOTB4Ojxicj4NCsKg
IMKgIMKgIG1ha2Ugb3B0aW9uczogbWFrZSBDQz1jbGFuZyAtajI0IElOU1RBTExfTU9EX1NUUklQ
PTEgdGFyZ3otcGtnPGJyPg0KPGJyPg0KwqAgwqAgeDg2XzY0Ojxicj4NCsKgIMKgIMKgIG1ha2Ug
b3B0aW9uczogbWFrZSBMTFZNPTEgLWoyNCBJTlNUQUxMX01PRF9TVFJJUD0xIHRhcmd6LXBrZzxi
cj4NCjxicj4NCjxicj4NCldlIGJ1aWx0IHRoZSBmb2xsb3dpbmcgc2VsZnRlc3RzOjxicj4NCjxi
cj4NCsKgIHg4Nl82NDo8YnI+DQrCoCDCoCDCoCBuZXQ6IE9LPGJyPg0KwqAgwqAgwqAgYnBmOiBm
YWlsPGJyPg0KwqAgwqAgwqAgaW5zdGFsbCBhbmQgcGFja2FnaW5nOiBPSzxicj4NCjxicj4NCllv
dSBjYW4gZmluZCB0aGUgZnVsbCBsb2cgKGJ1aWxkLXNlbGZ0ZXN0cy5sb2cpIGluIHRoZSBhcnRp
ZmFjdCBzdG9yYWdlIGFib3ZlLjxicj4NCjxicj4NCjxicj4NCkhhcmR3YXJlIHRlc3Rpbmc8YnI+
DQotLS0tLS0tLS0tLS0tLS0tPGJyPg0KV2UgYm9vdGVkIGVhY2gga2VybmVsIGFuZCByYW4gdGhl
IGZvbGxvd2luZyB0ZXN0czo8YnI+DQo8YnI+DQrCoCBhYXJjaDY0Ojxicj4NCsKgIMKgIEhvc3Qg
MTo8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoOKaoSBJbnRlcm5hbCBpbmZyYXN0cnVjdHVyZSBpc3N1
ZXMgcHJldmVudGVkIG9uZSBvciBtb3JlIHRlc3RzIChtYXJrZWQ8YnI+DQrCoCDCoCDCoCDCoHdp
dGgg4pqh4pqh4pqhKSBmcm9tIHJ1bm5pbmcgb24gdGhpcyBhcmNoaXRlY3R1cmUuPGJyPg0KwqAg
wqAgwqAgwqBUaGlzIGlzIG5vdCB0aGUgZmF1bHQgb2YgdGhlIGtlcm5lbCB0aGF0IHdhcyB0ZXN0
ZWQuPGJyPg0KPGJyPg0KwqAgwqAgwqAgwqDinIUgQm9vdCB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDi
nIUgQUNQSSB0YWJsZSB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDinIUgQUNQSSBlbmFibGVkIHRlc3Q8
YnI+DQrCoCDCoCDCoCDCoOKchSBMVFA8YnI+DQrCoCDCoCDCoCDCoOKdjCBDSUZTIENvbm5lY3Rh
dGhvbjxicj4NCsKgIMKgIMKgIMKg4pyFIFBPU0lYIHBqZC1mc3Rlc3Qgc3VpdGVzPGJyPg0KwqAg
wqAgwqAgwqDinIUgTG9vcGRldiBTYW5pdHk8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBqdm0g
LSBqY3N0cmVzcyB0ZXN0czxicj4NCsKgIMKgIMKgIMKg4pyFIE1lbW9yeTogZm9ya19tZW08YnI+
DQrCoCDCoCDCoCDCoOKchSBNZW1vcnkgZnVuY3Rpb246IG1lbWZkX2NyZWF0ZTxicj4NCsKgIMKg
IMKgIMKg4pyFIEFNVFUgKEFic3RyYWN0IE1hY2hpbmUgVGVzdCBVdGlsaXR5KTxicj4NCsKgIMKg
IMKgIMKg4p2MIE5ldHdvcmtpbmcgYnJpZGdlOiBzYW5pdHk8YnI+DQrCoCDCoCDCoCDCoOKchSBF
dGhlcm5ldCBkcml2ZXJzIHNhbml0eTxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtp
bmcgc29ja2V0OiBmdXp6PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZzogaWdt
cCBjb25mb3JtYW5jZSB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZyBy
b3V0ZTogcG10dTxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgcm91dGVfZnVu
YyAtIGxvY2FsPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZyByb3V0ZV9mdW5j
IC0gZm9yd2FyZDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgVENQOiBrZWVw
YWxpdmUgdGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgVURQOiBzb2Nr
ZXQ8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3b3JraW5nIGNraSBuZXRmaWx0ZXIgdGVz
dDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgdHVubmVsOiBnZW5ldmUgYmFz
aWMgdGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgdHVubmVsOiBncmUg
YmFzaWM8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBMMlRQIGJhc2ljIHRlc3Q8YnI+DQrCoCDC
oCDCoCDCoOKaoeKaoeKaoSBOZXR3b3JraW5nIHR1bm5lbDogdnhsYW4gYmFzaWM8YnI+DQrCoCDC
oCDCoCDCoOKaoeKaoeKaoSBOZXR3b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyAtIHRyYW5zcG9y
dDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5z
IC0gdHVubmVsPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTGlia2NhcGkgQUZfQUxHIHRlc3Q8
YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBwY2l1dGlsczogdXBkYXRlIHBjaSBpZHMgdGVzdDxi
cj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIEFMU0EgUENNIGxvb3BiYWNrIHRlc3Q8YnI+DQrCoCDC
oCDCoCDCoOKaoeKaoeKaoSBBTFNBIENvbnRyb2wgKG1peGVyKSBVc2Vyc3BhY2UgRWxlbWVudCB0
ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgc3RvcmFnZTogU0NTSSBWUEQ8YnI+DQrCoCDC
oCDCoCDCoOKaoeKaoeKaoSB0cmFjZTogZnRyYWNlL3RyYWNlcjxicj4NCsKgIMKgIMKgIMKg4pqh
4pqh4pqhIGtkdW1wIC0ga2V4ZWNfYm9vdDxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEg
eGFycmF5LWlkci1yYWRpeHRyZWUtdGVzdDxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEg
aTJjOiBpMmNkZXRlY3Qgc2FuaXR5PGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBGaXJt
d2FyZSB0ZXN0IHN1aXRlPGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBNZW1vcnkgZnVu
Y3Rpb246IGthc2xyPGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBhdWRpdDogYXVkaXQg
dGVzdHN1aXRlIHRlc3Q8YnI+DQo8YnI+DQrCoCBwcGM2NGxlOjxicj4NCsKgIMKgIEhvc3QgMTo8
YnI+DQo8YnI+DQrCoCDCoCDCoCDCoOKaoSBJbnRlcm5hbCBpbmZyYXN0cnVjdHVyZSBpc3N1ZXMg
cHJldmVudGVkIG9uZSBvciBtb3JlIHRlc3RzIChtYXJrZWQ8YnI+DQrCoCDCoCDCoCDCoHdpdGgg
4pqh4pqh4pqhKSBmcm9tIHJ1bm5pbmcgb24gdGhpcyBhcmNoaXRlY3R1cmUuPGJyPg0KwqAgwqAg
wqAgwqBUaGlzIGlzIG5vdCB0aGUgZmF1bHQgb2YgdGhlIGtlcm5lbCB0aGF0IHdhcyB0ZXN0ZWQu
PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqDinIUgQm9vdCB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHi
mqHimqEgTFRQPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgQ0lGUyBDb25uZWN0YXRob248YnI+
DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBQT1NJWCBwamQtZnN0ZXN0IHN1aXRlczxicj4NCsKgIMKg
IMKgIMKg4pqh4pqh4pqhIExvb3BkZXYgU2FuaXR5PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEg
anZtIC0gamNzdHJlc3MgdGVzdHM8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBNZW1vcnk6IGZv
cmtfbWVtPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTWVtb3J5IGZ1bmN0aW9uOiBtZW1mZF9j
cmVhdGU8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBBTVRVIChBYnN0cmFjdCBNYWNoaW5lIFRl
c3QgVXRpbGl0eSk8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3b3JraW5nIGJyaWRnZTog
c2FuaXR5PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgRXRoZXJuZXQgZHJpdmVycyBzYW5pdHk8
YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3b3JraW5nIHNvY2tldDogZnV6ejxicj4NCsKg
IMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgcm91dGU6IHBtdHU8YnI+DQrCoCDCoCDCoCDC
oOKaoeKaoeKaoSBOZXR3b3JraW5nIHJvdXRlX2Z1bmMgLSBsb2NhbDxicj4NCsKgIMKgIMKgIMKg
4pqh4pqh4pqhIE5ldHdvcmtpbmcgcm91dGVfZnVuYyAtIGZvcndhcmQ8YnI+DQrCoCDCoCDCoCDC
oOKaoeKaoeKaoSBOZXR3b3JraW5nIFRDUDoga2VlcGFsaXZlIHRlc3Q8YnI+DQrCoCDCoCDCoCDC
oOKaoeKaoeKaoSBOZXR3b3JraW5nIFVEUDogc29ja2V0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHi
mqEgTmV0d29ya2luZyBja2kgbmV0ZmlsdGVyIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKa
oSBOZXR3b3JraW5nIHR1bm5lbDogZ2VuZXZlIGJhc2ljIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKa
oeKaoeKaoSBOZXR3b3JraW5nIHR1bm5lbDogZ3JlIGJhc2ljPGJyPg0KwqAgwqAgwqAgwqDimqHi
mqHimqEgTDJUUCBiYXNpYyB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2lu
ZyB0dW5uZWw6IHZ4bGFuIGJhc2ljPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2lu
ZyBpcHNlYzogYmFzaWMgbmV0bnMgLSB0dW5uZWw8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBM
aWJrY2FwaSBBRl9BTEcgdGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIHBjaXV0aWxzOiB1
cGRhdGUgcGNpIGlkcyB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgQUxTQSBQQ00gbG9v
cGJhY2sgdGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIEFMU0EgQ29udHJvbCAobWl4ZXIp
IFVzZXJzcGFjZSBFbGVtZW50IHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSB0cmFjZTog
ZnRyYWNlL3RyYWNlcjxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgeGFycmF5LWlkci1y
YWRpeHRyZWUtdGVzdDxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgTWVtb3J5IGZ1bmN0
aW9uOiBrYXNscjxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgYXVkaXQ6IGF1ZGl0IHRl
c3RzdWl0ZSB0ZXN0PGJyPg0KPGJyPg0KwqAgczM5MHg6PGJyPg0KwqAgwqAgSG9zdCAxOjxicj4N
Cjxicj4NCsKgIMKgIMKgIMKg4pqhIEludGVybmFsIGluZnJhc3RydWN0dXJlIGlzc3VlcyBwcmV2
ZW50ZWQgb25lIG9yIG1vcmUgdGVzdHMgKG1hcmtlZDxicj4NCsKgIMKgIMKgIMKgd2l0aCDimqHi
mqHimqEpIGZyb20gcnVubmluZyBvbiB0aGlzIGFyY2hpdGVjdHVyZS48YnI+DQrCoCDCoCDCoCDC
oFRoaXMgaXMgbm90IHRoZSBmYXVsdCBvZiB0aGUga2VybmVsIHRoYXQgd2FzIHRlc3RlZC48YnI+
DQo8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBCb290IHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKa
oeKaoeKaoSBrZHVtcCAtIHN5c3JxLWM8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBrZHVtcCAt
IGZpbGUtbG9hZDxicj4NCjxicj4NCsKgIMKgIEhvc3QgMjo8YnI+DQo8YnI+DQrCoCDCoCDCoCDC
oOKaoSBJbnRlcm5hbCBpbmZyYXN0cnVjdHVyZSBpc3N1ZXMgcHJldmVudGVkIG9uZSBvciBtb3Jl
IHRlc3RzIChtYXJrZWQ8YnI+DQrCoCDCoCDCoCDCoHdpdGgg4pqh4pqh4pqhKSBmcm9tIHJ1bm5p
bmcgb24gdGhpcyBhcmNoaXRlY3R1cmUuPGJyPg0KwqAgwqAgwqAgwqBUaGlzIGlzIG5vdCB0aGUg
ZmF1bHQgb2YgdGhlIGtlcm5lbCB0aGF0IHdhcyB0ZXN0ZWQuPGJyPg0KPGJyPg0KwqAgwqAgwqAg
wqDimqHimqHimqEgQm9vdCB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgeGZzdGVzdHMg
LSBleHQ0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgeGZzdGVzdHMgLSB4ZnM8YnI+DQrCoCDC
oCDCoCDCoOKaoeKaoeKaoSBTdG9yYWdlOiBzd3JhaWQgbWRhZG0gcmFpZF9tb2R1bGUgdGVzdDxi
cj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgUG9kbWFuIHN5c3RlbSBpbnRlZ3JhdGlvbiB0
ZXN0IC0gYXMgcm9vdDxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgUG9kbWFuIHN5c3Rl
bSBpbnRlZ3JhdGlvbiB0ZXN0IC0gYXMgdXNlcjxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHi
mqEgeGZzdGVzdHMgLSBidHJmczxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgc2VsaW51
eC1wb2xpY3k6IHNlcmdlLXRlc3RzdWl0ZTxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEg
U3RvcmFnZSBibGt0ZXN0czxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgU3RvcmFnZSBu
dm1lIC0gdGNwPGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBzdHJlc3M6IHN0cmVzcy1u
Zzxicj4NCjxicj4NCsKgIMKgIEhvc3QgMzo8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoOKaoSBJbnRl
cm5hbCBpbmZyYXN0cnVjdHVyZSBpc3N1ZXMgcHJldmVudGVkIG9uZSBvciBtb3JlIHRlc3RzICht
YXJrZWQ8YnI+DQrCoCDCoCDCoCDCoHdpdGgg4pqh4pqh4pqhKSBmcm9tIHJ1bm5pbmcgb24gdGhp
cyBhcmNoaXRlY3R1cmUuPGJyPg0KwqAgwqAgwqAgwqBUaGlzIGlzIG5vdCB0aGUgZmF1bHQgb2Yg
dGhlIGtlcm5lbCB0aGF0IHdhcyB0ZXN0ZWQuPGJyPg0KPGJyPg0KwqAgwqAgwqAgwqDimqHimqHi
mqEgQm9vdCB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTFRQPGJyPg0KwqAgwqAgwqAg
wqDimqHimqHimqEgQ0lGUyBDb25uZWN0YXRob248YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBQ
T1NJWCBwamQtZnN0ZXN0IHN1aXRlczxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIExvb3BkZXYg
U2FuaXR5PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEganZtIC0gamNzdHJlc3MgdGVzdHM8YnI+
DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBNZW1vcnk6IGZvcmtfbWVtPGJyPg0KwqAgwqAgwqAgwqDi
mqHimqHimqEgTWVtb3J5IGZ1bmN0aW9uOiBtZW1mZF9jcmVhdGU8YnI+DQrCoCDCoCDCoCDCoOKa
oeKaoeKaoSBBTVRVIChBYnN0cmFjdCBNYWNoaW5lIFRlc3QgVXRpbGl0eSk8YnI+DQrCoCDCoCDC
oCDCoOKaoeKaoeKaoSBOZXR3b3JraW5nIGJyaWRnZTogc2FuaXR5PGJyPg0KwqAgwqAgwqAgwqDi
mqHimqHimqEgRXRoZXJuZXQgZHJpdmVycyBzYW5pdHk8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKa
oSBOZXR3b3JraW5nIHJvdXRlOiBwbXR1PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29y
a2luZyByb3V0ZV9mdW5jIC0gbG9jYWw8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3b3Jr
aW5nIHJvdXRlX2Z1bmMgLSBmb3J3YXJkPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29y
a2luZyBUQ1A6IGtlZXBhbGl2ZSB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29y
a2luZyBVRFA6IHNvY2tldDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgY2tp
IG5ldGZpbHRlciB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZyB0dW5u
ZWw6IGdlbmV2ZSBiYXNpYyB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2lu
ZyB0dW5uZWw6IGdyZSBiYXNpYzxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIEwyVFAgYmFzaWMg
dGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgdHVubmVsOiB2eGxhbiBi
YXNpYzxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5l
dG5zIC0gdHJhbnNwb3J0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTmV0d29ya2luZyBpcHNl
YzogYmFzaWMgbmV0bnMgLSB0dW5uZWw8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBMaWJrY2Fw
aSBBRl9BTEcgdGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIHRyYWNlOiBmdHJhY2UvdHJh
Y2VyPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEga2R1bXAgLSBrZXhlY19ib290PGJyPg0KwqAg
wqAgwqAgwqDwn5qnIOKaoeKaoeKaoSB4YXJyYXktaWRyLXJhZGl4dHJlZS10ZXN0PGJyPg0KwqAg
wqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBNZW1vcnkgZnVuY3Rpb246IGthc2xyPGJyPg0KwqAgwqAg
wqAgwqDwn5qnIOKaoeKaoeKaoSBhdWRpdDogYXVkaXQgdGVzdHN1aXRlIHRlc3Q8YnI+DQo8YnI+
DQrCoCDCoCBIb3N0IDQ6PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqDimqEgSW50ZXJuYWwgaW5mcmFz
dHJ1Y3R1cmUgaXNzdWVzIHByZXZlbnRlZCBvbmUgb3IgbW9yZSB0ZXN0cyAobWFya2VkPGJyPg0K
wqAgwqAgwqAgwqB3aXRoIOKaoeKaoeKaoSkgZnJvbSBydW5uaW5nIG9uIHRoaXMgYXJjaGl0ZWN0
dXJlLjxicj4NCsKgIMKgIMKgIMKgVGhpcyBpcyBub3QgdGhlIGZhdWx0IG9mIHRoZSBrZXJuZWwg
dGhhdCB3YXMgdGVzdGVkLjxicj4NCjxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIEJvb3QgdGVz
dDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIGtkdW1wIC0gc3lzcnEtYzxicj4NCsKgIMKgIMKg
IMKg4pqh4pqh4pqhIGtkdW1wIC0gZmlsZS1sb2FkPGJyPg0KPGJyPg0KwqAgwqAgSG9zdCA1Ojxi
cj4NCjxicj4NCsKgIMKgIMKgIMKg4pqhIEludGVybmFsIGluZnJhc3RydWN0dXJlIGlzc3VlcyBw
cmV2ZW50ZWQgb25lIG9yIG1vcmUgdGVzdHMgKG1hcmtlZDxicj4NCsKgIMKgIMKgIMKgd2l0aCDi
mqHimqHimqEpIGZyb20gcnVubmluZyBvbiB0aGlzIGFyY2hpdGVjdHVyZS48YnI+DQrCoCDCoCDC
oCDCoFRoaXMgaXMgbm90IHRoZSBmYXVsdCBvZiB0aGUga2VybmVsIHRoYXQgd2FzIHRlc3RlZC48
YnI+DQo8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBCb290IHRlc3Q8YnI+DQrCoCDCoCDCoCDC
oOKaoeKaoeKaoSB4ZnN0ZXN0cyAtIGV4dDQ8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSB4ZnN0
ZXN0cyAtIHhmczxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIFN0b3JhZ2U6IHN3cmFpZCBtZGFk
bSByYWlkX21vZHVsZSB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBQb2RtYW4g
c3lzdGVtIGludGVncmF0aW9uIHRlc3QgLSBhcyByb290PGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKa
oeKaoeKaoSBQb2RtYW4gc3lzdGVtIGludGVncmF0aW9uIHRlc3QgLSBhcyB1c2VyPGJyPg0KwqAg
wqAgwqAgwqDwn5qnIOKaoeKaoeKaoSB4ZnN0ZXN0cyAtIGJ0cmZzPGJyPg0KwqAgwqAgwqAgwqDw
n5qnIOKaoeKaoeKaoSBzZWxpbnV4LXBvbGljeTogc2VyZ2UtdGVzdHN1aXRlPGJyPg0KwqAgwqAg
wqAgwqDwn5qnIOKaoeKaoeKaoSBTdG9yYWdlIGJsa3Rlc3RzPGJyPg0KwqAgwqAgwqAgwqDwn5qn
IOKaoeKaoeKaoSBTdG9yYWdlIG52bWUgLSB0Y3A8YnI+DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh
4pqhIHN0cmVzczogc3RyZXNzLW5nPGJyPg0KPGJyPg0KwqAgeDg2XzY0Ojxicj4NCsKgIMKgIEhv
c3QgMTo8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoOKaoSBJbnRlcm5hbCBpbmZyYXN0cnVjdHVyZSBp
c3N1ZXMgcHJldmVudGVkIG9uZSBvciBtb3JlIHRlc3RzIChtYXJrZWQ8YnI+DQrCoCDCoCDCoCDC
oHdpdGgg4pqh4pqh4pqhKSBmcm9tIHJ1bm5pbmcgb24gdGhpcyBhcmNoaXRlY3R1cmUuPGJyPg0K
wqAgwqAgwqAgwqBUaGlzIGlzIG5vdCB0aGUgZmF1bHQgb2YgdGhlIGtlcm5lbCB0aGF0IHdhcyB0
ZXN0ZWQuPGJyPg0KPGJyPg0KwqAgwqAgwqAgwqDinIUgQm9vdCB0ZXN0PGJyPg0KwqAgwqAgwqAg
wqDinIUgQUNQSSB0YWJsZSB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgTFRQPGJyPg0K
wqAgwqAgwqAgwqDimqHimqHimqEgQ0lGUyBDb25uZWN0YXRob248YnI+DQrCoCDCoCDCoCDCoOKa
oeKaoeKaoSBQT1NJWCBwamQtZnN0ZXN0IHN1aXRlczxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqh
IExvb3BkZXYgU2FuaXR5PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEganZtIC0gamNzdHJlc3Mg
dGVzdHM8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBNZW1vcnk6IGZvcmtfbWVtPGJyPg0KwqAg
wqAgwqAgwqDimqHimqHimqEgTWVtb3J5IGZ1bmN0aW9uOiBtZW1mZF9jcmVhdGU8YnI+DQrCoCDC
oCDCoCDCoOKaoeKaoeKaoSBBTVRVIChBYnN0cmFjdCBNYWNoaW5lIFRlc3QgVXRpbGl0eSk8YnI+
DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBOZXR3b3JraW5nIGJyaWRnZTogc2FuaXR5PGJyPg0KwqAg
wqAgwqAgwqDimqHimqHimqEgRXRoZXJuZXQgZHJpdmVycyBzYW5pdHk8YnI+DQrCoCDCoCDCoCDC
oOKaoeKaoeKaoSBOZXR3b3JraW5nIHNvY2tldDogZnV6ejxicj4NCsKgIMKgIMKgIMKg4pqh4pqh
4pqhIE5ldHdvcmtpbmc6IGlnbXAgY29uZm9ybWFuY2UgdGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh
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
YmtjYXBpIEFGX0FMRyB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgcGNpdXRpbHM6IHNh
bml0eSBzbW9rZSB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgcGNpdXRpbHM6IHVwZGF0
ZSBwY2kgaWRzIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBBTFNBIFBDTSBsb29wYmFj
ayB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgQUxTQSBDb250cm9sIChtaXhlcikgVXNl
cnNwYWNlIEVsZW1lbnQgdGVzdDxicj4NCsKgIMKgIMKgIMKg4pqh4pqh4pqhIHN0b3JhZ2U6IFND
U0kgVlBEPGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgdHJhY2U6IGZ0cmFjZS90cmFjZXI8YnI+
DQrCoCDCoCDCoCDCoOKaoeKaoeKaoSBrZHVtcCAtIGtleGVjX2Jvb3Q8YnI+DQrCoCDCoCDCoCDC
oPCfmqcg4pqh4pqh4pqhIHhhcnJheS1pZHItcmFkaXh0cmVlLXRlc3Q8YnI+DQrCoCDCoCDCoCDC
oPCfmqcg4pqh4pqh4pqhIGkyYzogaTJjZGV0ZWN0IHNhbml0eTxicj4NCsKgIMKgIMKgIMKg8J+a
pyDimqHimqHimqEgRmlybXdhcmUgdGVzdCBzdWl0ZTxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHi
mqHimqEgTWVtb3J5IGZ1bmN0aW9uOiBrYXNscjxicj4NCsKgIMKgIMKgIMKg8J+apyDwn5KlIGF1
ZGl0OiBhdWRpdCB0ZXN0c3VpdGUgdGVzdDxicj4NCjxicj4NCsKgIMKgIEhvc3QgMjo8YnI+DQo8
YnI+DQrCoCDCoCDCoCDCoOKaoSBJbnRlcm5hbCBpbmZyYXN0cnVjdHVyZSBpc3N1ZXMgcHJldmVu
dGVkIG9uZSBvciBtb3JlIHRlc3RzIChtYXJrZWQ8YnI+DQrCoCDCoCDCoCDCoHdpdGgg4pqh4pqh
4pqhKSBmcm9tIHJ1bm5pbmcgb24gdGhpcyBhcmNoaXRlY3R1cmUuPGJyPg0KwqAgwqAgwqAgwqBU
aGlzIGlzIG5vdCB0aGUgZmF1bHQgb2YgdGhlIGtlcm5lbCB0aGF0IHdhcyB0ZXN0ZWQuPGJyPg0K
PGJyPg0KwqAgwqAgwqAgwqDinIUgQm9vdCB0ZXN0PGJyPg0KwqAgwqAgwqAgwqDinIUgeGZzdGVz
dHMgLSBleHQ0PGJyPg0KwqAgwqAgwqAgwqDimqHimqHimqEgeGZzdGVzdHMgLSB4ZnM8YnI+DQrC
oCDCoCDCoCDCoOKaoeKaoeKaoSB4ZnN0ZXN0cyAtIG5mc3Y0LjI8YnI+DQrCoCDCoCDCoCDCoOKa
oeKaoeKaoSBwb3dlci1tYW5hZ2VtZW50OiBjcHVwb3dlci9zYW5pdHkgdGVzdDxicj4NCsKgIMKg
IMKgIMKg4pqh4pqh4pqhIHN0b3JhZ2U6IHNvZnR3YXJlIFJBSUQgdGVzdGluZzxicj4NCsKgIMKg
IMKgIMKg4pqh4pqh4pqhIFN0b3JhZ2U6IHN3cmFpZCBtZGFkbSByYWlkX21vZHVsZSB0ZXN0PGJy
Pg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBQb2RtYW4gc3lzdGVtIGludGVncmF0aW9uIHRl
c3QgLSBhcyByb290PGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBQb2RtYW4gc3lzdGVt
IGludGVncmF0aW9uIHRlc3QgLSBhcyB1c2VyPGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKa
oSBDUFU6IElkbGUgVGVzdDxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgeGZzdGVzdHMg
LSBidHJmczxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgeGZzdGVzdHMgLSBjaWZzdjMu
MTE8YnI+DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIElQTUkgZHJpdmVyIHRlc3Q8YnI+DQrC
oCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIElQTUl0b29sIGxvb3Agc3RyZXNzIHRlc3Q8YnI+DQrC
oCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIHNlbGludXgtcG9saWN5OiBzZXJnZS10ZXN0c3VpdGU8
YnI+DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIFN0b3JhZ2UgYmxrdGVzdHM8YnI+DQrCoCDC
oCDCoCDCoPCfmqcg4pqh4pqh4pqhIFN0b3JhZ2UgYmxvY2sgLSBmaWxlc3lzdGVtIGZpbyB0ZXN0
PGJyPg0KwqAgwqAgwqAgwqDwn5qnIOKaoeKaoeKaoSBTdG9yYWdlIGJsb2NrIC0gcXVldWUgc2No
ZWR1bGVyIHRlc3Q8YnI+DQrCoCDCoCDCoCDCoPCfmqcg4pqh4pqh4pqhIFN0b3JhZ2UgbnZtZSAt
IHRjcDxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgU3RvcmFnZSBudmRpbW0gbmRjdGwg
dGVzdCBzdWl0ZTxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgU3RvcmFnZTogbHZtIGRl
dmljZS1tYXBwZXIgdGVzdDxicj4NCsKgIMKgIMKgIMKg8J+apyDimqHimqHimqEgc3RyZXNzOiBz
dHJlc3Mtbmc8YnI+DQo8YnI+DQrCoCBUZXN0IHNvdXJjZXM6IDxhIGhyZWY9Imh0dHBzOi8vZ2l0
bGFiLmNvbS9ja2ktcHJvamVjdC9rZXJuZWwtdGVzdHMiIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0
PSJfYmxhbmsiPmh0dHBzOi8vZ2l0bGFiLmNvbS9ja2ktcHJvamVjdC9rZXJuZWwtdGVzdHM8L2E+
PGJyPg0KwqAgwqAg8J+SmiBQdWxsIHJlcXVlc3RzIGFyZSB3ZWxjb21lIGZvciBuZXcgdGVzdHMg
b3IgaW1wcm92ZW1lbnRzIHRvIGV4aXN0aW5nIHRlc3RzITxicj4NCjxicj4NCkFib3J0ZWQgdGVz
dHM8YnI+DQotLS0tLS0tLS0tLS0tPGJyPg0KVGVzdHMgdGhhdCBkaWRuJiMzOTt0IGNvbXBsZXRl
IHJ1bm5pbmcgc3VjY2Vzc2Z1bGx5IGFyZSBtYXJrZWQgd2l0aCDimqHimqHimqEuPGJyPg0KSWYg
dGhpcyB3YXMgY2F1c2VkIGJ5IGFuIGluZnJhc3RydWN0dXJlIGlzc3VlLCB3ZSB0cnkgdG8gbWFy
ayB0aGF0PGJyPg0KZXhwbGljaXRseSBpbiB0aGUgcmVwb3J0Ljxicj4NCjxicj4NCldhaXZlZCB0
ZXN0czxicj4NCi0tLS0tLS0tLS0tLTxicj4NCklmIHRoZSB0ZXN0IHJ1biBpbmNsdWRlZCB3YWl2
ZWQgdGVzdHMsIHRoZXkgYXJlIG1hcmtlZCB3aXRoIPCfmqcuIFN1Y2ggdGVzdHMgYXJlPGJyPg0K
ZXhlY3V0ZWQgYnV0IHRoZWlyIHJlc3VsdHMgYXJlIG5vdCB0YWtlbiBpbnRvIGFjY291bnQuIFRl
c3RzIGFyZSB3YWl2ZWQgd2hlbjxicj4NCnRoZWlyIHJlc3VsdHMgYXJlIG5vdCByZWxpYWJsZSBl
bm91Z2gsIGUuZy4gd2hlbiB0aGV5JiMzOTtyZSBqdXN0IGludHJvZHVjZWQgb3IgYXJlPGJyPg0K
YmVpbmcgZml4ZWQuPGJyPg0KPGJyPg0KVGVzdGluZyB0aW1lb3V0PGJyPg0KLS0tLS0tLS0tLS0t
LS0tPGJyPg0KV2UgYWltIHRvIHByb3ZpZGUgYSByZXBvcnQgd2l0aGluIHJlYXNvbmFibGUgdGlt
ZWZyYW1lLiBUZXN0cyB0aGF0IGhhdmVuJiMzOTt0PGJyPg0KZmluaXNoZWQgcnVubmluZyB5ZXQg
YXJlIG1hcmtlZCB3aXRoIOKPsS48YnI+DQo8YnI+DQo8L2Jsb2NrcXVvdGU+PC9kaXY+PGJyIGNs
ZWFyPSJhbGwiPjxicj4tLSA8YnI+PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+QmVzdCBS
ZWdhcmRzPGJyPg0KRmVpIExpdSAo5YiY6aOeKTwvZGl2PjwvZGl2PjwvZGl2Pg0KPC9ibG9ja3F1
b3RlPjwvZGl2PjwvZGl2Pg0KDQo8cD48L3A+CgotLSA8YnIgLz4KWW91IHJlY2VpdmVkIHRoaXMg
bWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAm
cXVvdDtDbGFuZyBCdWlsdCBMaW51eCZxdW90OyBncm91cC48YnIgLz4KVG8gdW5zdWJzY3JpYmUg
ZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBh
biBlbWFpbCB0byA8YSBocmVmPSJtYWlsdG86Y2xhbmctYnVpbHQtbGludXgrdW5zdWJzY3JpYmVA
Z29vZ2xlZ3JvdXBzLmNvbSI+Y2xhbmctYnVpbHQtbGludXgrdW5zdWJzY3JpYmVAZ29vZ2xlZ3Jv
dXBzLmNvbTwvYT4uPGJyIC8+ClRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIgdmlz
aXQgPGEgaHJlZj0iaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2NsYW5nLWJ1aWx0
LWxpbnV4L0NBJTJCUVl1NG9FVjkwcCUyQiUzRF9GQWItalg3YktPa1FIWTZEYmJQJTJCRGN5M2VL
V3BYaFAlMkJPdVElNDBtYWlsLmdtYWlsLmNvbT91dG1fbWVkaXVtPWVtYWlsJnV0bV9zb3VyY2U9
Zm9vdGVyIj5odHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvY2xhbmctYnVpbHQtbGlu
dXgvQ0ElMkJRWXU0b0VWOTBwJTJCJTNEX0ZBYi1qWDdiS09rUUhZNkRiYlAlMkJEY3kzZUtXcFho
UCUyQk91USU0MG1haWwuZ21haWwuY29tPC9hPi48YnIgLz4K
--0000000000001d5ce805c56a14c7--

