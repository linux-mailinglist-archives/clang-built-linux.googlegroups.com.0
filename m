Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBP52Q2AQMGQEC6I3KOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5C4314045
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Feb 2021 21:21:21 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id u7sf12583692iop.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 12:21:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612815679; cv=pass;
        d=google.com; s=arc-20160816;
        b=eY0yZRY/JGhlycpMaCEAfMtFb3Iu3JarsjGqXNBm8lAfb1XpA9CRP2iw42vR0K6PHl
         u9KpDHEUBt+3SSkVTCPZUHo/zlrU2I7vW8vrXDpEv/TJKgctIYdtcBMt/HPGWexMUwBa
         PAiE1JCvjW6blsd4qRcvVUo0r3614QLBg4sh59CkaBj1IAR5kjRMn/svttosCEUiB152
         5v12UYW1G9u8HXHxVORhJySQ2F0sjTp822YR89D9gEkXvCWZ3GXeUoAatLKVBfd5lZ/A
         sNHB8srOAD1+EPWtKiGzgUBSfKPbCwa6D8hKjpstGsEjD8rMNcBqa+wbdBqhl37YnVgZ
         gtsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=DKliBDrfsSuBG2wrZK/kX7AdUMyM7e+IdlskyDWjDL0=;
        b=Vq9tnw5CtQm2pmDALGLdBekHria3b9vELoFQCy/VvNYLmLcEaUvTRW8CsUBUZpb80n
         rIQW0xvJrSNtVBBTT5Iwr3XH99VexdF7Pqmr0glHAPDEM0MTQyiLD9oJGRFTe3QbU4TS
         aExXMQvmSZSPlRAD4zr8SC/gXwR5APaDMp1RBz6a+ic1fHPZBItExuLkeVCVC/KvaAeL
         q7d+9c2kZSjK71TAzDqyJcSVCQZBN49YERn9i9IDvSmhSlowxRABokD7VouNDwKbvvjT
         cTyPhEg48zFDXtXO2gaKlxa+IzFbLMEqaH5VNozXeZA9YctdhKDdzD5Az7UwqvQsKW9g
         pVXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=R1AaEZjt;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKliBDrfsSuBG2wrZK/kX7AdUMyM7e+IdlskyDWjDL0=;
        b=G/UHPDoQuQauw6OR3dyYjyMA/zUPlqlwz2aPn/6oxOI8vs9U69wcZiR9MzjafZjzfC
         F9+tvFIOTTk/wsb/0buen6X9b4u2oSCR0/4Ucx29H6g3pXc5O3uLcgWyEmwUBW4inidD
         y/EF1R2IdtCWVl0PdYUdBZ206RnJCO64VWiFWXthXlGM25lIwTF0/bUZlVYIMA67eSIl
         9+ADv541sS34t23tjPtarNrZ78Um0djtOrFDx/RsT2C8Obll3zq6j3uN6aQU6RFKvwV5
         TXHe8xuiYA5pIJopyVlfR+3xQVGZTf1+53gUfqdZ4S1PavBybmm2G/W+FtkytSkD7Ujl
         OjwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKliBDrfsSuBG2wrZK/kX7AdUMyM7e+IdlskyDWjDL0=;
        b=MSKSk3T2YFTIp3ZKlilC0av8s2xg+gMCu9GxCSRxT3Xw9TJ4+zVgMPsNdXymdUM3f/
         wKx0crDx/3x+YZB8zNxpYVxULg2ougZn9H89T72UznrNxG/sYvcTdLw++rfWrdtT08x4
         K5twoSn+XWv7TeTbWlqPjtymcrwie2Tnhf7HC8Tpl9eg641sZ21MMor8SUUy38edMwan
         CJP1rhixkfQSq1Ebmy7E2prpwuYiOUjdCrivtv6Ay/XppNgjOS2mCFsIT7i5rlEO5/Cm
         bHGVOgaPx22d8MeOv9+cQsR3pxbnsCXdxHINeW4vr0jmw6rbaZg8DhhIWeMAJYGkWHVI
         ygcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300IgOlgwSXhvzpL8XPYzHnCe4btRwjAyO8QDkUJ7jcP+LRgss+
	YOMm9+i412xywGSgiu5IIng=
X-Google-Smtp-Source: ABdhPJxc+iLBIX6xjNoEtMuULs3mdXZE7tUHhy88K+gYLkKn5c1RCW6vvLFsNzDrFWEePD6ZLMAkDg==
X-Received: by 2002:a92:cda1:: with SMTP id g1mr17381390ild.267.1612815679211;
        Mon, 08 Feb 2021 12:21:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8348:: with SMTP id q8ls861816ior.8.gmail; Mon, 08 Feb
 2021 12:21:18 -0800 (PST)
X-Received: by 2002:a6b:1444:: with SMTP id 65mr6090613iou.46.1612815678779;
        Mon, 08 Feb 2021 12:21:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612815678; cv=none;
        d=google.com; s=arc-20160816;
        b=EnqQnFyubySTUMapvanJVJ7WlhMt6gHcQ6sQy5rKpqIZTkaTen9BBGjY7EPVBtQhZc
         WycHNs8GUvXm9hTt/U9Bmb3pOKT6p/HGunmAtBZ+ALaaUBT/LMS8g8E7EA5lLzdF9ycc
         LWDREJAqbWCX9T6ww1xR3BJbo5bJNYzi77cLuqjLTp4arnLzwFb3U3VquwUY5o+360zo
         8YdrYiTtbMJfJigP3HgkfMKb4ug2yd7rs98lYEGKAnstvgSmpCwAhAw+qtUHpvxu2XTA
         KrWW8ULRmsXj5T9+9YmbWBN0d5Y95S//xMZp74EXG3dcAes7Zf3Uly3OyQI3GRdH1pme
         xbtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=YPa/zazdnMrJZ2XG6G3m/ReEaN6irDMwq8aAOacM27M=;
        b=TfsdoTdyzJG1chMmGwzPDAVEUpbeD/USov1ARsjn1J+TwMjrTco+Exaq9TKS+wOubc
         pA1h92uVmGhHvQ0aUbZxVnfFews0r+67yD3FPwFDWWtvr99OQxFefLhvR6VViJMfKIlK
         iSXyAMEtxIJWKIQrFSvjNFuxNHWex/mBv3rjxIx1W0oraz78NptS7rICrK9qUfxWlqgW
         4J4WbZBDDcwQuTVF0FvVlOTnCP1Mr5GCcJKtQGfp4uBZhXjuiq088vdvOgXxtM/XztIu
         3psD4sNwp3toc6aSWG0221AW770M+0RPoH+C2S//ddSjP6zHx03Bcxqc+9rk7/4WT5gP
         uVIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=R1AaEZjt;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o7si799873ilu.0.2021.02.08.12.21.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 12:21:18 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A7C3864D99;
	Mon,  8 Feb 2021 20:21:17 +0000 (UTC)
Date: Mon, 8 Feb 2021 13:21:16 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Veronika Kabatova <vkabatov@redhat.com>
Cc: CKI Project <cki-project@redhat.com>, Milos Malik <mmalik@redhat.com>,
	clang-built-linux@googlegroups.com,
	Memory Management <mm-qe@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>,
	skt-results-master@redhat.com, David Arcari <darcari@redhat.com>,
	Yi Zhang <yizhan@redhat.com>, Jan Stancek <jstancek@redhat.com>,
	Rachel Sibley <rasibley@redhat.com>
Subject: Re: =?utf-8?B?8J+SpSBQQU5JQ0tFRDogVGVz?= =?utf-8?Q?t?= report
 for?kernel 5.11.0-rc6 (mainline.kernel.org-clang)
Message-ID: <20210208202116.GA1098843@ubuntu-m3-large-x86>
References: <cki.DC2474EF23.YM0YCFTL5T@redhat.com>
 <20210206014149.GA1121962@ubuntu-m3-large-x86>
 <20210206021928.GA2219249@ubuntu-m3-large-x86>
 <1903282816.26862171.1612782431967.JavaMail.zimbra@redhat.com>
 <932912533.26916631.1612805468995.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <932912533.26916631.1612805468995.JavaMail.zimbra@redhat.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=R1AaEZjt;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Feb 08, 2021 at 12:31:09PM -0500, Veronika Kabatova wrote:
>=20
>=20
> ----- Original Message -----
> > From: "Veronika Kabatova" <vkabatov@redhat.com>
> > To: "Nathan Chancellor" <nathan@kernel.org>
> > Cc: "CKI Project" <cki-project@redhat.com>, "Milos Malik" <mmalik@redha=
t.com>, clang-built-linux@googlegroups.com,
> > "Memory Management" <mm-qe@redhat.com>, "Ondrej Mosnacek" <omosnace@red=
hat.com>, skt-results-master@redhat.com,
> > "David Arcari" <darcari@redhat.com>, "Yi Zhang" <yizhan@redhat.com>, "J=
an Stancek" <jstancek@redhat.com>, "Rachel
> > Sibley" <rasibley@redhat.com>
> > Sent: Monday, February 8, 2021 12:07:11 PM
> > Subject: Re: =F0=9F=92=A5 PANICKED: Test report for	kernel 5.11.0-rc6 (=
mainline.kernel.org-clang)
> >=20
> >=20
> >=20
> > ----- Original Message -----
> > > From: "Nathan Chancellor" <nathan@kernel.org>
> > > To: "CKI Project" <cki-project@redhat.com>
> > > Cc: "Milos Malik" <mmalik@redhat.com>, clang-built-linux@googlegroups=
.com,
> > > "Memory Management" <mm-qe@redhat.com>,
> > > "Ondrej Mosnacek" <omosnace@redhat.com>, skt-results-master@redhat.co=
m,
> > > "David Arcari" <darcari@redhat.com>, "Yi
> > > Zhang" <yizhan@redhat.com>, "Jan Stancek" <jstancek@redhat.com>
> > > Sent: Saturday, February 6, 2021 3:19:28 AM
> > > Subject: Re: =F0=9F=92=A5 PANICKED: Test report for	kernel 5.11.0-rc6
> > > (mainline.kernel.org-clang)
> > >=20
> > > On Fri, Feb 05, 2021 at 06:41:49PM -0700, Nathan Chancellor wrote:
> > > > On Fri, Feb 05, 2021 at 08:48:39PM -0000, CKI Project wrote:
> > > > >=20
> > > > > Hello,
> > > > >=20
> > > > > We ran automated tests on a recent commit from this kernel tree:
> > > > >=20
> > > > >        Kernel repo:
> > > > >        https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/l=
inux.git
> > > > >             Commit: dd86e7fa07a3 - Merge tag 'pci-v5.11-fixes-2' =
of
> > > > >             git://git.kernel.org/pub/scm/linux/kernel/git/helgaas=
/pci
> > > > >=20
> > > > > The results of these automated tests are provided below.
> > > > >=20
> > > > >     Overall result: FAILED (see details below)
> > > > >              Merge: OK
> > > > >            Compile: OK
> > > > >  Selftests compile: FAILED
> > > > >              Tests: PANICKED
> > > > >=20
> > > > > All kernel binaries, config files, and logs are available for dow=
nload
> > > > > here:
> > > > >=20
> > > > >   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/inde=
x.html?prefix=3Ddatawarehouse-public/2021/02/05/623168
> > > >=20
> > > > I don't know if I am missing something or there was a mix up somewh=
ere
> > > > but all of the configuration files in that link show that GCC was u=
sed
> > > > for all of these builds:
> > > >=20
> > > > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/dataware=
house-public/2021/02/05/623168/build_aarch64_redhat%3A1095500/kernel-mainli=
ne.kernel.org-clang-aarch64-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config
> > > >=20
> > > > CONFIG_CC_VERSION_TEXT=3D"aarch64-linux-gnu-gcc (GCC) 10.2.1 202008=
26 (Red
> > > > Hat Cross 10.2.1-3)"
> > > > CONFIG_CC_IS_GCC=3Dy
> > > > CONFIG_GCC_VERSION=3D100201
> > > > CONFIG_LD_VERSION=3D235010000
> > > > CONFIG_CLANG_VERSION=3D0
> > > > CONFIG_LLD_VERSION=3D0
> > > >=20
> > > > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/dataware=
house-public/2021/02/05/623168/build_ppc64le_redhat%3A1095501/kernel-mainli=
ne.kernel.org-clang-ppc64le-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config
> > > >=20
> > > > CONFIG_CC_VERSION_TEXT=3D"powerpc64le-linux-gnu-gcc (GCC) 10.2.1 20=
200826
> > > > (Red Hat Cross 10.2.1-3)"
> > > > CONFIG_CC_IS_GCC=3Dy
> > > > CONFIG_GCC_VERSION=3D100201
> > > > CONFIG_LD_VERSION=3D235010000
> > > > CONFIG_CLANG_VERSION=3D0
> > > > CONFIG_LLD_VERSION=3D0
> > > >=20
> > > > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/dataware=
house-public/2021/02/05/623168/build_x86_64_redhat%3A1095499/kernel-mainlin=
e.kernel.org-clang-x86_64-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config
> > > >=20
> > > > CONFIG_CC_VERSION_TEXT=3D"gcc (GCC) 11.0.0 20210130 (Red Hat 11.0.0=
-0)"
> > > > CONFIG_CC_IS_GCC=3Dy
> > > > CONFIG_GCC_VERSION=3D110000
> > > > CONFIG_LD_VERSION=3D235010000
> > > > CONFIG_CLANG_VERSION=3D0
> > > > CONFIG_LLD_VERSION=3D0
> > > >=20
> > > > Cheers,
> > > > Nathan
> > > >=20
> > >=20
> > > I can see by booting the binary that the kernel was compiled with cla=
ng
> > > and linked with lld though. However, I still cannot reproduce this
> > > crash.
> > >=20
> >=20
> > Hi,
> >=20
> > I'll take a look if running config file scripts with the same make
> > options as the kernel build overrides the gcc data in there. The base
> > config is grabbed from fedora and already contains the gcc strings as
> > the fedora configs are built with gcc.
> >=20
>=20
> Update:
>=20
> Fixing up the make options to be called with the config scripts works.
> I'm currently checking if this helps with the previous test failures
> where tests tried to build external modules with the wrong compiler, or
> if that would require some more future work (I already added the clang
> dependencies to the test runs).
>=20
> Slightly related, the problem with DEBUG_INFO_BTF having to be disabled
> due to pahole segfaulting is now gone as a fixed pahole version is in
> fedora rawhide now. x86_64 compiles with the enabled option fine,
> however aarch64 fails with
>=20
> FAILED unresolved symbol vfs_truncate
>=20
> Is this a problem you already know about? This is the newest mainline,
> compilation with gcc works. I can publish the logs and configs or
> whatever else if needed.

This is not something that I am aware of. I have pretty much zero
experience with testing BPF/BTF configs. I can reproduce this with one
of your recent configs + CONFIG_DEBUG_INFO_BTF:

$ mkdir -p build/aarch64

$ curl -LSso build/aarch64/.config https://arr-cki-prod-datawarehouse-publi=
c.s3.amazonaws.com/datawarehouse-public/2021/02/07/623298/build_aarch64_red=
hat%3A1097392/kernel-mainline.kernel.org-clang-aarch64-b75dba7f472ca6c2dd0b=
8ee41f5a4b5a45539306.config

$ scripts/config --file build/aarch64/.config -e DEBUG_INFO_BTF

$ make -skj"$(nproc)" ARCH=3Darm64 CROSS_COMPILE=3Daarch64-linux-gnu- LLVM=
=3D1 O=3Dbuild/aarch64 olddefconfig all
...
FAILED unresolved symbol vfs_truncate
...

I will see if I can isolate some configs and report it to the BPF folks
to see if they have any ideas what is going on.

Cheers,
Nathan

> > Adding Rachel and keeping test maintainers in this thread since I
> > can't help with the LTP failure.
> >=20
> > Veronika
> >=20
> > > root@ubuntu-m3-large-x86:~# cat /proc/version
> > > Linux version 5.11.0-rc6 (cki@runner-3uc3rmvr-project-2-concurrent-4l=
c6vt)
> > > (clang version 11.1.0 (Fedora 11.1.0-0.4.rc2.fc34), LLD 11.1.0) #1 SM=
P Fri
> > > Feb 5 00:21:48 UTC 2021
> > > root@ubuntu-m3-large-x86:~# lsmod
> > > Module                  Size  Used by
> > > binfmt_misc            24576  1
> > > intel_rapl_msr         20480  0
> > > intel_rapl_common      32768  1 intel_rapl_msr
> > > amd_energy             16384  0
> > > crct10dif_pclmul       16384  1
> > > crc32_pclmul           16384  0
> > > crc32c_intel           24576  0
> > > ghash_clmulni_intel    16384  0
> > > snd_pcm               139264  0
> > > snd_timer              45056  1 snd_pcm
> > > snd                   106496  2 snd_timer,snd_pcm
> > > joydev                 28672  0
> > > soundcore              16384  1 snd
> > > serio_raw              20480  0
> > > pcspkr                 16384  0
> > > virtio_net             65536  0
> > > net_failover           28672  1 virtio_net
> > > failover               16384  1 net_failover
> > > ata_generic            16384  0
> > > i2c_piix4              28672  0
> > > pata_acpi              16384  0
> > > floppy                 94208  0
> > > qemu_fw_cfg            20480  0
> > > bpf_preload            16384  0
> > > ip_tables              32768  0
> > > x_tables               53248  1 ip_tables
> > > root@ubuntu-m3-large-x86:~# ltp/testcases/kernel/fs/proc/proc01 -m 12=
8
> > > proc01      0  TINFO  :  /proc/sys/fs/binfmt_misc/register: is write-=
only.
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/all/stable_secret: k=
nown
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/default/stable_secre=
t:
> > > known
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/dummy0/stable_secret=
:
> > > known
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ens2/stable_secret: =
known
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/erspan0/stable_secre=
t:
> > > known
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/gre0/stable_secret: =
known
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/gretap0/stable_secre=
t:
> > > known
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ifb0/stable_secret: =
known
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ifb1/stable_secret: =
known
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip6_vti0/stable_secr=
et:
> > > known issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip6gre0/stable_secre=
t:
> > > known
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip6tnl0/stable_secre=
t:
> > > known
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip_vti0/stable_secre=
t:
> > > known
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/lo/stable_secret: kn=
own
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/tunl0/stable_secret:=
 known
> > > issue: errno=3DEIO(5): Input/output error
> > > proc01      0  TINFO  :  /proc/kmsg: known issue:
> > > errno=3DEAGAIN/EWOULDBLOCK(11): Resource temporarily unavailable
> > > proc01      0  TINFO  :  /proc/sysrq-trigger: is write-only.
> > > proc01      0  TINFO  :  /proc/self/task/753/mem: known issue:
> > > errno=3DEIO(5):
> > > Input/output error
> > > proc01      0  TINFO  :  /proc/self/task/753/clear_refs: is write-onl=
y.
> > > proc01      0  TINFO  :  /proc/self/task/753/pagemap: reached maxmbyt=
es
> > > (-m)
> > > proc01      0  TINFO  :  /proc/self/mem: known issue: errno=3DEIO(5):
> > > Input/output error
> > > proc01      0  TINFO  :  /proc/self/clear_refs: is write-only.
> > > proc01      0  TINFO  :  /proc/self/pagemap: reached maxmbytes (-m)
> > > proc01      1  TPASS  :  readproc() completed successfully, total rea=
d:
> > > 280264271 bytes, 3326 objs
> > > root@ubuntu-m3-large-x86:~# ltp/testcases/kernel/fs/read_all/read_all=
 -d
> > > /proc -q -r 3
> > > read_all.c:446: TPASS: Finished reading files/fs/read_all/read_all -d=
 /proc
> > > -q -r 3
> > >=20
> > > Summary:
> > > passed   1
> > > failed   0
> > > broken   0
> > > skipped  0
> > > warnings 0
> > >=20
> > > Cheers,
> > > Nathan
> > >=20
> > >=20
> >=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210208202116.GA1098843%40ubuntu-m3-large-x86.
