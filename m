Return-Path: <clang-built-linux+bncBCPOLJHXQ4FRB545R2EQMGQEWJKX27Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D10D3F4A48
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 14:05:12 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id r5-20020ac85e85000000b0029bd6ee5179sf7935908qtx.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 05:05:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629720311; cv=pass;
        d=google.com; s=arc-20160816;
        b=WUfIK4mbHfrOAaPqH7ovW3rMpuXMKiPytp1SFPXi3YPIe5pzoB7Rni8kvMg+3WazSn
         bgBBgvxNwhz4Euikz0PBXpr0X+kQ+tXR7sn1yx44lvGFFlT+QftcDzWzlAj2r5+hSt3m
         EgAvFzl0yKx2S2txRTRtkAQ1TkYhTRJ7dTCVzCDuoddtTW5LjaJTLeZU4H2mGoa4Psjd
         FL9DHjvoOz93Cd+Pm3ZO1H2tOUpSA9V+sRdlXB7xRoqaQsN3vmoSaFQMVN7O5SZMI5CS
         S+LO4s3nxMcH6dPAY5yJPjXGX28+l2SDF0FyihrvE27QEKwEWNDk6tqIKWt7qdkoRik8
         BSug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=A3M+nefLCdZi6ll1WZxK3kq6jymlCbjtceSsoivDrOs=;
        b=v6RdmnkaPqkQDwaq6CQWu5/DvMneZSaQRq7gmlJXHsqXgYlHFOvFV7xklqc29u8shq
         j0xuNwNXsaYEqm2ezL/zK1J1hvkZKzIz2sXz0RqG3lDkD00kyFe9cqbidtKLgMTOtrP5
         py1K9WxBR/38hGKUrNy/CsZnZHYyk+BsflK+l1Atj4pMmdvacvFR09MIdsJaPWWz7k9g
         21h8tsSC0PhcryCrB4YX/z/F/PcDCzivrzIsyRK/khWQOuAeMKXNG6LqwRRJPkQHmyM6
         lTaB6Y5hKM7/8qKx6FsVOb3jnmgXEvP+aAnYfGpkSSdyTFxTGVkgfCCrs9QaLEXjMgvz
         csWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gUB5gglS;
       spf=pass (google.com: domain of bgoncalv@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=bgoncalv@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A3M+nefLCdZi6ll1WZxK3kq6jymlCbjtceSsoivDrOs=;
        b=VbISlOSF5plhcu7OPuOECcA+hQLxz3zCS0rtlCUAOKL0DmE92yb5asdN7gvMa/SflJ
         RpX+pLmPEDEq7qHo4RUk/kQOJANncQxcYv+hyC9npXj0h5atFmWYE/DvUGIzgTcS4bQh
         og+5kIHMsCKsU0tQqNwgH6kk/lbkr3Iyx+bmosla8wHQuD+rtauktE0bkyOcy8Vf2G/f
         Bo8gAjrvUBtmLMQxcdmbyc84NyYoz8JZwKMg4lxZQK+houk8SC7dsU/NUaPCJWxYMXdy
         I3etu+1gNcx1/KBcjca3qTG1FcHl43Ftaq27G8kIGLh26QoVgWdP4Qjo0zYDlM5JU9me
         P7lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A3M+nefLCdZi6ll1WZxK3kq6jymlCbjtceSsoivDrOs=;
        b=LQa5lLfTzwSoLlEUFtAmbKE2EELzQFZznjf55IgUhzHPft1d4KXhBGzD63Fmsv3Mo3
         XBJgsYt9CrTAkVfo8XNYIfZur4ShbxEkOqXduyDgVmFoxOjrMyMSWoZxCWkkl4iBMx7f
         9jj1bKn1w+fPkk67pkJQCDwlVIx5x08qAEi/hq2vLNQ5AchDR011cqZpanuCxI1n0S7g
         mWTRZbM9dQz8tBqhCx9Q8W6aZMMQ1oM9JZBO36dizIPrQVuOoM+V2J1MjlXTHshokk+k
         CsvpDmqulHMbmlH4bWS3/rCUL+l5JRJErGvibmx9PhD9ZrAKXbbMDzLdAnj/HHKuipPN
         1fUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NtFi7hwDIy8hVDYlKYkYa1wMYZ8SdkJ6jFnf2sQ4SSlehablh
	F6E3Mgv1Yj5FvrZQn8ff+r8=
X-Google-Smtp-Source: ABdhPJyrU1PNeZmVxa1V99gTVSEdgf2U3E+TBgApqxQDmNGsQTi8Lu0FXVk+6eBo/7pTARFEpdBt3g==
X-Received: by 2002:ad4:4345:: with SMTP id q5mr9286875qvs.1.1629720311287;
        Mon, 23 Aug 2021 05:05:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4006:: with SMTP id h6ls1790151qko.11.gmail; Mon,
 23 Aug 2021 05:05:10 -0700 (PDT)
X-Received: by 2002:a05:620a:448a:: with SMTP id x10mr20724461qkp.375.1629720310800;
        Mon, 23 Aug 2021 05:05:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629720310; cv=none;
        d=google.com; s=arc-20160816;
        b=JGlF59wGmEG++XvrdbMKuobcw+TT9rSM6rF/LwiJT2/bu1LtB7JUOqjLqNXaeJwgwI
         l52m1Vkjf8VmtGXfoeB1LwyZ9Qp8yXq8EqlyYfjhKZeU9BEYtC1ymMUVDoRkADUM2eXW
         opBjy/0LJiEPsvv8ZR7LxE/yjiaABX5xvX+Vh4MDIADvAJjojqUWwov5UHbie1ofOquv
         jZaeVDBAvzu4U6JLglzmC9oyGD5Qr9z+CHi89cYikHQzJK8G1VK7O72KqUS+VETRl57T
         kUmPgM5sApj2Z+1SpuCc1ZzsHzLr081pbBLs130wRrzQH84ujEdXy+0j30oimX3k/wQr
         O+Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=et5RJT3x4cZ20XN0qAE3/alBzSm8zdf3aND1qoCmNOI=;
        b=BbWLBOjOAObRTUunBpCvIslRq9CQcWjz8qpAlwWzhG1YW8KaKaVZLdj6XibcN6fjFL
         sM7CTMzZlImgELjNxEOdbqHQc573iQZphvGMa35UIpxYC0codfVb1UeAdekDzKREb9q8
         TdnNJSc0orARiJe+brD+k91DwFL/3JI52Y0LIDL6KbPrHeNRJoUJlzspRyr1L61kCW/S
         GSl7L3XC+hWwbwHoi0gYVZ8nrSFXzn6gP7RwuMSGPSxkA1uF7ArTwwko5a/4VF+CSH+7
         U7sjjEGSls6wFoRHloiGxg+VbVtpXegtPZj20H6PXlYm6BRtvGY+0tj/eZmn0eLjSbEh
         unLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gUB5gglS;
       spf=pass (google.com: domain of bgoncalv@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=bgoncalv@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id i4si1150746qkg.7.2021.08.23.05.05.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 05:05:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of bgoncalv@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104-bdHd3x1-Ng2Zj-0ZQzMbXA-1; Mon, 23 Aug 2021 08:05:08 -0400
X-MC-Unique: bdHd3x1-Ng2Zj-0ZQzMbXA-1
Received: by mail-oo1-f71.google.com with SMTP id v48-20020a4a8c73000000b0028f9fb6a5e9so2976078ooj.4
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 05:05:07 -0700 (PDT)
X-Received: by 2002:a05:6830:4090:: with SMTP id x16mr26433189ott.71.1629720306898;
        Mon, 23 Aug 2021 05:05:06 -0700 (PDT)
X-Received: by 2002:a05:6830:4090:: with SMTP id x16mr26433161ott.71.1629720306541;
 Mon, 23 Aug 2021 05:05:06 -0700 (PDT)
MIME-Version: 1.0
References: <cki.26D429AE9E.GS784458C3@redhat.com> <CALWRkkgmjJvnmCya37Q9CVPV0QRoMB5tQv90eSxYPYhj-H2hGA@mail.gmail.com>
In-Reply-To: <CALWRkkgmjJvnmCya37Q9CVPV0QRoMB5tQv90eSxYPYhj-H2hGA@mail.gmail.com>
From: Bruno Goncalves <bgoncalv@redhat.com>
Date: Mon, 23 Aug 2021 14:04:53 +0200
Message-ID: <CA+QYu4p_tVK_xEuFtieqVPbvhpaGDdJyF2eFgnnRv-ku3sd55Q@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xNC4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nLCA5ZmY1MGJmMik=?=
To: Murphy Zhou <xzhou@redhat.com>
Cc: CKI Project <cki-project@redhat.com>, skt-results-master@redhat.com, 
	clang-built-linux@googlegroups.com, Yi Zhang <yizhan@redhat.com>, 
	Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>, Fei Liu <feliu@redhat.com>, 
	Memory Management <mm-qe@redhat.com>, Li Wang <liwang@redhat.com>, Jiri Dluhos <jdluhos@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: bgoncalv@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gUB5gglS;
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

On Mon, Aug 23, 2021 at 2:56 AM Murphy Zhou <xzhou@redhat.com> wrote:
>
> [  779.940573] WARNING: CPU: 54 PID: 1298 at kernel/sched/sched.h:1453 su=
b_running_bw+0x178/0x188

thanks, it has been reported as
https://lore.kernel.org/linux-arm-kernel/1ea2fa5c-ae81-2389-7f02-2227636582=
e4@arm.com/T/

Bruno
>
>
> On Sun, Aug 22, 2021 at 3:22 PM CKI Project <cki-project@redhat.com> wrot=
e:
>>
>>
>> Hello,
>>
>> We ran automated tests on a recent commit from this kernel tree:
>>
>>        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torv=
alds/linux.git
>>             Commit: 9ff50bf2f2ff - Merge tag 'clk-fixes-for-linus' of gi=
t://git.kernel.org/pub/scm/linux/kernel/git/clk/linux
>>
>> The results of these automated tests are provided below.
>>
>>     Overall result: FAILED (see details below)
>>              Merge: OK
>>            Compile: OK
>>  Selftests compile: FAILED
>>              Tests: PANICKED
>>
>> All kernel binaries, config files, and logs are available for download h=
ere:
>>
>>   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?=
prefix=3Ddatawarehouse-public/2021/08/21/357188200
>>
>> One or more kernel tests failed:
>>
>>     ppc64le:
>>      =F0=9F=92=A5 Boot test
>>
>>     aarch64:
>>      =E2=9D=8C xfstests - ext4
>>      =E2=9D=8C xfstests - xfs
>>      =E2=9D=8C Storage blktests
>>      =E2=9D=8C Networking bridge: sanity
>>
>> We hope that these logs can help you find the problem quickly. For the f=
ull
>> detail on our testing procedures, please scroll to the bottom of this me=
ssage.
>>
>> Please reply to this email if you have any questions about the tests tha=
t we
>> ran or if you have any suggestions on how to make future tests more effe=
ctive.
>>
>>         ,-.   ,-.
>>        ( C ) ( K )  Continuous
>>         `-',-.`-'   Kernel
>>           ( I )     Integration
>>            `-'
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
>> You can find the full log (build-selftests.log) in the artifact storage =
above.
>>
>>
>> Hardware testing
>> ----------------
>> We booted each kernel and ran the following tests:
>>
>>   aarch64:
>>     Host 1:
>>        =E2=9C=85 Boot test
>>        =E2=9C=85 Reboot test
>>        =E2=9D=8C xfstests - ext4
>>        =E2=9D=8C xfstests - xfs
>>        =E2=9D=8C Storage blktests
>>        =E2=9C=85 storage: software RAID testing
>>        =E2=9C=85 Storage: swraid mdadm raid_module test
>>        =F0=9F=9A=A7 =E2=9C=85 Podman system integration test - as root
>>        =F0=9F=9A=A7 =E2=9C=85 Podman system integration test - as user
>>        =F0=9F=9A=A7 =E2=9D=8C xfstests - btrfs
>>        =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
>>        =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
>>        =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
>>        =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
>>        =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
>>        =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
>>        =F0=9F=9A=A7 =E2=9C=85 stress: stress-ng
>>
>>     Host 2:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9C=85 Boot test
>>        =E2=9C=85 Reboot test
>>        =E2=9C=85 ACPI table test
>>        =E2=9C=85 ACPI enabled test
>>        =E2=9C=85 LTP
>>        =E2=9C=85 CIFS Connectathon
>>        =E2=9C=85 POSIX pjd-fstest suites
>>        =E2=9C=85 Loopdev Sanity
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>>        =E2=9C=85 Memory: fork_mem
>>        =E2=9C=85 Memory function: memfd_create
>>        =E2=9C=85 AMTU (Abstract Machine Test Utility)
>>        =E2=9D=8C Networking bridge: sanity
>>        =E2=9C=85 Ethernet drivers sanity
>>        =E2=9C=85 Networking socket: fuzz
>>        =E2=9C=85 Networking: igmp conformance test
>>        =E2=9C=85 Networking route: pmtu
>>        =E2=9C=85 Networking route_func - local
>>        =E2=9C=85 Networking route_func - forward
>>        =E2=9C=85 Networking TCP: keepalive test
>>        =E2=9C=85 Networking UDP: socket
>>        =E2=9C=85 Networking cki netfilter test
>>        =E2=9C=85 Networking tunnel: geneve basic test
>>        =E2=9C=85 Networking tunnel: gre basic
>>        =E2=9C=85 L2TP basic test
>>        =E2=9C=85 Networking tunnel: vxlan basic
>>        =E2=9C=85 Networking ipsec: basic netns - transport
>>        =E2=9C=85 Networking ipsec: basic netns - tunnel
>>        =E2=9C=85 Libkcapi AF_ALG test
>>        =E2=9C=85 pciutils: update pci ids test
>>        =E2=9C=85 ALSA PCM loopback test
>>        =E2=9C=85 ALSA Control (mixer) Userspace Element test
>>        =E2=9C=85 storage: SCSI VPD
>>        =E2=9C=85 trace: ftrace/tracer
>>        =E2=9C=85 kdump - kexec_boot
>>        =F0=9F=9A=A7 =E2=9D=8C xarray-idr-radixtree-test
>>        =F0=9F=9A=A7 =E2=9C=85 i2c: i2cdetect sanity
>>        =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
>>        =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
>>        =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
>>        =F0=9F=9A=A7 =E2=9C=85 lvm cache test
>>        =F0=9F=9A=A7 =E2=9C=85 lvm snapper test
>>
>>   ppc64le:
>>     Host 1:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: lvm device-mapp=
er test - upstream
>>
>>     Host 2:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9C=85 Boot test
>>        =E2=9C=85 Reboot test
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
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm cache test
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm snapper test
>>
>>     Host 3:
>>        =F0=9F=92=A5 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: lvm device-mapp=
er test - upstream
>>
>>   s390x:
>>     Host 1:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>>
>>     Host 2:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_module tes=
t
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integratio=
n test - as root
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integratio=
n test - as user
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-te=
stsuite
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>>
>>     Host 3:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
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
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm cache test
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm snapper test
>>
>>     Host 4:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>>
>>     Host 5:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_module tes=
t
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integratio=
n test - as root
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integratio=
n test - as user
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-te=
stsuite
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>>
>>   x86_64:
>>     Host 1:
>>        =E2=9C=85 Boot test
>>        =E2=9C=85 Reboot test
>>        =E2=9C=85 kdump - file-load
>>        =F0=9F=9A=A7 =E2=9C=85 kdump - sysrq-c
>>
>>     Host 2:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9C=85 Boot test
>>        =E2=9C=85 Reboot test
>>        =E2=9C=85 xfstests - ext4
>>        =E2=9C=85 xfstests - xfs
>>        =E2=9C=85 xfstests - nfsv4.2
>>        =E2=9C=85 power-management: cpupower/sanity test
>>        =E2=9C=85 Storage blktests
>>        =E2=9C=85 storage: software RAID testing
>>        =E2=9C=85 Storage: swraid mdadm raid_module test
>>        =F0=9F=9A=A7 =E2=9C=85 Podman system integration test - as root
>>        =F0=9F=9A=A7 =E2=9C=85 Podman system integration test - as user
>>        =F0=9F=9A=A7 =E2=9C=85 CPU: Idle Test
>>        =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
>>        =F0=9F=9A=A7 =E2=9C=85 xfstests - cifsv3.11
>>        =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
>>        =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
>>        =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
>>        =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
>>        =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
>>        =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl tes=
t suite
>>        =F0=9F=9A=A7 =E2=9C=85 Storage: lvm device-mapper test - upstream
>>        =F0=9F=9A=A7 =E2=9C=85 stress: stress-ng
>>
>>     Host 3:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ACPI table test
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
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite t=
est
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm cache test
>>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm snapper test
>>
>>     Host 4:
>>
>>        =E2=9A=A1 Internal infrastructure issues prevented one or more te=
sts (marked
>>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectu=
re.
>>        This is not the fault of the kernel that was tested.
>>
>>        =E2=9C=85 Boot test
>>        =E2=9C=85 Reboot test
>>        =E2=9C=85 ACPI table test
>>        =E2=9C=85 LTP
>>        =E2=9C=85 CIFS Connectathon
>>        =E2=9C=85 POSIX pjd-fstest suites
>>        =E2=9C=85 Loopdev Sanity
>>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>>        =E2=9C=85 Memory: fork_mem
>>        =E2=9C=85 Memory function: memfd_create
>>        =E2=9C=85 AMTU (Abstract Machine Test Utility)
>>        =E2=9C=85 Networking bridge: sanity
>>        =E2=9C=85 Ethernet drivers sanity
>>        =E2=9C=85 Networking socket: fuzz
>>        =E2=9C=85 Networking: igmp conformance test
>>        =E2=9C=85 Networking route: pmtu
>>        =E2=9C=85 Networking route_func - local
>>        =E2=9C=85 Networking route_func - forward
>>        =E2=9C=85 Networking TCP: keepalive test
>>        =E2=9C=85 Networking UDP: socket
>>        =E2=9C=85 Networking cki netfilter test
>>        =E2=9C=85 Networking tunnel: geneve basic test
>>        =E2=9C=85 Networking tunnel: gre basic
>>        =E2=9C=85 L2TP basic test
>>        =E2=9C=85 Networking tunnel: vxlan basic
>>        =E2=9C=85 Networking ipsec: basic netns - transport
>>        =E2=9C=85 Networking ipsec: basic netns - tunnel
>>        =E2=9C=85 Libkcapi AF_ALG test
>>        =E2=9C=85 pciutils: sanity smoke test
>>        =E2=9C=85 pciutils: update pci ids test
>>        =E2=9C=85 ALSA PCM loopback test
>>        =E2=9C=85 ALSA Control (mixer) Userspace Element test
>>        =E2=9C=85 storage: SCSI VPD
>>        =E2=9C=85 trace: ftrace/tracer
>>        =E2=9C=85 kdump - kexec_boot
>>        =F0=9F=9A=A7 =E2=9D=8C xarray-idr-radixtree-test
>>        =F0=9F=9A=A7 =E2=9C=85 i2c: i2cdetect sanity
>>        =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
>>        =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
>>        =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
>>        =F0=9F=9A=A7 =E2=9C=85 lvm cache test
>>        =F0=9F=9A=A7 =E2=9C=85 lvm snapper test
>>
>>   Test sources: https://gitlab.com/cki-project/kernel-tests
>>     =F0=9F=92=9A Pull requests are welcome for new tests or improvements=
 to existing tests!
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
. Such tests are
>> executed but their results are not taken into account. Tests are waived =
when
>> their results are not reliable enough, e.g. when they're just introduced=
 or are
>> being fixed.
>>
>> Testing timeout
>> ---------------
>> We aim to provide a report within reasonable timeframe. Tests that haven=
't
>> finished running yet are marked with =E2=8F=B1.
>>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BQYu4p_tVK_xEuFtieqVPbvhpaGDdJyF2eFgnnRv-ku3sd55Q%40m=
ail.gmail.com.
