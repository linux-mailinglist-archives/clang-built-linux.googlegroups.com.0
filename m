Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5OQXKBQMGQEVAUJNBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BCD357CCB
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 08:53:42 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id c14sf478425uar.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 23:53:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617864821; cv=pass;
        d=google.com; s=arc-20160816;
        b=dO2sWP4Z/ad+zRRyELrDhr/aW+T7842D2ilza6cCvB2hZNr0hR92Z4PdcfBtKNHADI
         a0emkO+aD2fstVriWn/+d3eykBWwVLEOPguYEWAIV9RfFgxxTHOi4D+SK+gksCwqt+DS
         qMnJiN5+jrQfDEh691sex/MuvrO6yBGK5QaSC+d0IFP/e5FEO8T2mzgZry2RCdO6/rEa
         pdrGFv2QG/8uNR9NiquzeZ7DCT4wGU6zNu8pNsmIjJPk3sVDCjg1Fi2hJkH0TaZm1lMW
         1efeEzPlRjv5mvRoOG8Ti/D+//NdSg/CNrwxwE82U2gcLDLZkw6rxB3lkKhA9qxs+c5D
         2OvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=gFXyLBeLhG+I09208JVlK9vWDAuEWAKrHGmuryN0nUQ=;
        b=cx+m8lIr9dP/iTKR1uOkkPvtxlK34u4lhyADLftwzRqqnRKLQh5yI7rby5fwVpZIrz
         k53Y9sO9dY/RT+L1AXrweAE/f1rJePPZ8RGREfM2wdmMu6nXFsIf5sWEP1xNxb603VQw
         AWW2/iFsOlpM0QwC6QkySYpmftVnLCRDYbgJSvWmL3urVfzRElCzcz63CAP8fPE2zmfM
         kL9ke9HPnpnRyX1OOzpZ2gOya2n4U//8o4YNBE7db1Om0AABAgT9UfdvuqgjjVVt5NNn
         RQ0Q3dYvIOcBXfKvh4O4V10kqCHMdl1VqeBEcaITTJRz3CGeZeqzcuAWYGNR54p+xQqF
         VsYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hDmYDQrL;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gFXyLBeLhG+I09208JVlK9vWDAuEWAKrHGmuryN0nUQ=;
        b=WzqDTYDex2jo+TlnY9Lu7nfEVsUoHnVuL5GNBLA49jAJLNzs5k7Gyl/eC7Drcz9jLj
         rE2JX2TusGEk7n/xkmsiLpvpAOWq2bEPdeL4ucfIPEPoWPLWB8sHtn2lS+/3HZyn6NE1
         Kaeal6P4+iuKm5W22xOzzYyXGohb5SOCJh7I0qDETnzkKYbS4kbfV+3gy3RvbRFJHKbU
         UT3GhWmV9mZPBvjBrAm6L4xbvL0FPbUNqvnn95S+wFfFPuYH6lfV/sFzF/G3hDszzRo7
         mvClNmK5/y7Nc12TlsIgM5kCLhYylqQfnyoog4Qf6UZQz+J673rLdR6Odz1AAutvTBRZ
         6v1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gFXyLBeLhG+I09208JVlK9vWDAuEWAKrHGmuryN0nUQ=;
        b=YuikPrg5wczOtJgYXJBPjsz5tg4fs4IH+r3u0v6Md27TZXFzfP58LaFRZLJYiJb/KI
         iPWekVHS7+65hwuVsW7QmUCjpIbPYtSQulok9Hpdm+u7ljnocyBJGGp5Gv+LPxXK+ny1
         2+6//zk8HcMv41YD/qm8p0TW0QIHf3briQscTbq9RZTxh7P/cTP4IvDxgoQgQzG9OojG
         5kOhxtAq4MT4jdWGWNS16L1oUePk3vn5fTBkNpJvdL/0p4PIOZq/FTIKtgWHYUAYzfwI
         /lNBRPFZC2BGO2qAb3dWboqC36+TONl8D3+iRNa6uq3RJ22UTPi6/3LULfVN1Afvha93
         nBQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gFXyLBeLhG+I09208JVlK9vWDAuEWAKrHGmuryN0nUQ=;
        b=gl0jbGwyBcteV97bTEp9ME6QeSHpM2/Bw0mBLsOrHLn1O82ZLKpuP4c1LKujefp4Ea
         avLUwE5DEwQ123x73AFh+IGhlS/NC7Nflm3lLDu9MHgSMNFJPPH5SPiUWbr3bg0IUzkR
         pcumMe4ouJYVW8uQEfnHznpq6hOG6yT8OVUdTfsOasgI3ctiOvldIOnRzryOr+gKzSfU
         AaCGOYzPWjQ8S7FnToLp2uTSFKkffq3Smz4Cic30HeuZR57el5EfsWh4oV+OSRvuiL4g
         1x1hKtN41a5bY/T1uG63YI5aNpW41chojCMc/kL6YA4TZrH29da9BBxPYjYMmDiwEVLU
         rfWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533P6If2DhPsefdkJsRhfovqqfOODPfNhH/mhKjU4+W/ofdfyghW
	/OdD5Q1rPO81AZJdKRMFYF4=
X-Google-Smtp-Source: ABdhPJyVCrlI2D4J/U2u2pTcYgCy0Lw3tRSKa7780zdhBTfc6Ix2VN68EPf6maD63JpoN4Qbe7jXfg==
X-Received: by 2002:a67:d989:: with SMTP id u9mr2266791vsj.8.1617864821748;
        Wed, 07 Apr 2021 23:53:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6f05:: with SMTP id r5ls384578uah.9.gmail; Wed, 07 Apr
 2021 23:53:41 -0700 (PDT)
X-Received: by 2002:ab0:71c3:: with SMTP id n3mr4698477uao.40.1617864821002;
        Wed, 07 Apr 2021 23:53:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617864820; cv=none;
        d=google.com; s=arc-20160816;
        b=xUtEOXU2wguBawdeKVhSxYslS57/7N0ZJCuSZKgvS4uvQutT1STZ3Uru+S9RaYQsTE
         jI8KbZYgU5iOX8OOSQFSYvPFwtebC+mOGeF3WGUIseA8sQwW8AHxmTljmxqY7FlszrP0
         JXau0BU5Qv0baa0xFOTn0OaE1e1OtCgJmFOW5YZnsSQpCyA03uLYG7Mz459Rsh01TXfx
         HafGGdFcQdcGWVMTaPRSZu/ufqiVZI2QwVWFUer5URmWvpDNvKVljDEbLJOYJPdaTwzZ
         mtZX6hCuxMksMD5cj2aHhChS4Ti6AuNgmKI+xmlgocunAamNG7NaFrbQilpFraSlC5Il
         1jkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nBaaXznMWoIMiXWpCSPVkOxnbGPSamKvAObfrZh7XLY=;
        b=XrlYhgWPQ81TX69l3/GLiMANbaQaIdRKx5X0XYJmPEPZ8ub3F259J/+hUdaifM3pTs
         QCc8UaB7Mw1M29QKiThcrgyhco7trM/o8otmYFApiDipWEI8MytCqJeBzEkgnEwacEKF
         CTKZpkIIGewlqeNEZCBw//CjVG+zq/e/PJCjNOf15I5qQiw782ksmTZskQvcG3tJPVUn
         7QXOWC03S3gVSgHeQ6NgYQR3D5+2y+xIIgO6IOviFQ+S7yLZ+T/46lVVCtd5dBHNLv6S
         Jt1T9K62J6yUk4dSUR10n0Xplp+6XjIQCygNfNeS7epGXEGqQHrf8aygjqRyTjanbsqG
         Nt4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hDmYDQrL;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id u21si1242905vkn.2.2021.04.07.23.53.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 23:53:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Received: by mail-io1-xd36.google.com with SMTP id n198so1172769iod.0
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 23:53:40 -0700 (PDT)
X-Received: by 2002:a02:b890:: with SMTP id p16mr7244808jam.138.1617864820298;
 Wed, 07 Apr 2021 23:53:40 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000adaf6505bf68fbf2@google.com>
In-Reply-To: <000000000000adaf6505bf68fbf2@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 8 Apr 2021 08:53:15 +0200
Message-ID: <CA+icZUUvwqGWBJEm=eHCkM71E1NdGVVWPGZ1uB1BAm0g2pP20g@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - April 7, 2021
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: android-llvm@google.com, clang-linux-fellowship@google.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: multipart/mixed; boundary="000000000000e935cc05bf7081ec"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hDmYDQrL;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000e935cc05bf7081ec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 7, 2021 at 11:55 PM ndesaulniers via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>
> April 7, 2021
>
> KCOV broken for CFI (Nick)
>
> Missing debug info, but __sanitizer_cov_trace_pc should probably also be =
__noinline.
> https://github.com/ClangBuiltLinux/linux/issues/1338
> Working on 2 fixes for LLVM.
>
> GCOV broken in clang-11+ (Nick)
>
> https://lore.kernel.org/lkml/20210407185456.41943-1-ndesaulniers@google.c=
om/
>
> Arm32 IAS patch (Jian)
>
> https://reviews.llvm.org/D98916
>
> Pahole patches
>
> https://lore.kernel.org/dwarves/YG3SYoNWqb8DlP61@kernel.org/
>

There is an update of pahole Git and release v1.21 is very close.

$ git log --oneline v1.20..origin/HEAD
ae0b7dde1fd5 (origin/tmp.master, origin/master, origin/HEAD,
pahole-v1.20-15-gae0b7dde1fd5, master) dwarf_loader: Handle DWARF5
DW_OP_addrx properly
9adb014930f3 dwarf_loader: Handle subprogram ret type with
abstract_origin properly
5752d1951d08 dwarf_loader: Check .notes section for LTO build info
209e45424ff4 dwarf_loader: Check .debug_abbrev for cross-CU references
39227909db3c dwarf_loader: Permit merging all DWARF CU's for clang LTO
built binary
763475ca1101 dwarf_loader: Factor out common code to initialize a cu
d0d3fbd47449 dwarf_loader: Permit a flexible HASHTAGS__BITS
ffe0ef4d7390 btf: Add --btf_gen_all flag
de708b33114d btf: Add support for the floating-point types
4b7f8c04d009 fprintf: Honour conf_fprintf.hex when printing enumerations
f2889ff16372 Avoid warning when building with NDEBUG
8e1f8c904e30 btf_encoder: Match ftrace addresses within ELF functions
9fecc77ed82d dwarf_loader: Use a better hashing function, from libbpf
0125de3a4c05 btf_encoder: Funnel ELF error reporting through a macro
7d8e829f636f btf_encoder: Sanitize non-regular int base type

Depending which kernel-patch you apply you need an appropriate pahole
patch for it.

I have tested this combo with Clang-LTO & DWARF-v5 & BTF successfully.
Both on top of latest pahole Git and Linus Git.

[PATCH kbuild v4] kbuild: add an elfnote for whether vmlinux is built with =
lto

[PATCH] dwarf_loader: Fix LINUX_ELFNOTE_LTO_INFO define

NOTE: There is no final decision on the kernel side.

Both patches are attached for testing purposes.
Feel free to test and report.

- Sedat -

> RISC-V
>
> https://github.com/riscv/riscv-elf-psabi-doc/issues/183 R_RISCV_ALIGN
>
> Alignment issue in blk
>
> https://github.com/ClangBuiltLinux/linux/issues/1328
>
> Plumbers
>
> Submitted MC proposal for =E2=80=9CToolchains and Kernel MC=E2=80=9D with=
 Jose Marchesi from Oracle=E2=80=99s GCC team.
>
> Drop clang-10 support?
>
> Clang-12 maybe released next week?
> Can next debian still include clang-10 for kernel builds?
> Can tuxsuite fetch clang-10 from apt.llvm.org for now?
>
> CFI needs help testing
>
> V5: https://lore.kernel.org/lkml/20210401233216.2540591-1-samitolvanen@go=
ogle.com/
>
> Gcc implemented support for asm goto w/ outputs! W00t
>
> https://gcc.gnu.org/git/gitweb.cgi?p=3Dgcc.git;h=3De3b3b59683c1
>
> Compare_exchange
>
> https://godbolt.org/
> https://lore.kernel.org/lkml/YG2fQ1tGDIMhyIHe@hirez.programming.kicks-ass=
.net/
>
> Building perf with clang has some issues
>
>
> ________________________________
>
> Sent by http://go/sendnotes
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/000000000000adaf6505bf68fbf2%40google.com.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUUvwqGWBJEm%3DeHCkM71E1NdGVVWPGZ1uB1BAm0g2pP20g%4=
0mail.gmail.com.

--000000000000e935cc05bf7081ec
Content-Type: application/octet-stream; 
	name="v4_20210401_yhs_kbuild_add_an_elfnote_for_whether_vmlinux_is_built_with_lto.mbx"
Content-Disposition: attachment; 
	filename="v4_20210401_yhs_kbuild_add_an_elfnote_for_whether_vmlinux_is_built_with_lto.mbx"
Content-Transfer-Encoding: base64
Content-ID: <f_kn8iukoh0>
X-Attachment-Id: f_kn8iukoh0

RnJvbSBNQUlMRVItREFFTU9OIEZyaSBBcHIgIDIgMTg6MTQ6MjggMjAyMQpGcm9tOiBZb25naG9u
ZyBTb25nIDx5aHNAZmIuY29tPgpUbzogPGxpbnV4LWtidWlsZEB2Z2VyLmtlcm5lbC5vcmc+CkND
OiBBbGV4ZWkgU3Rhcm92b2l0b3YgPGFzdEBrZXJuZWwub3JnPiwgQXJuYWxkbyBDYXJ2YWxobyBk
ZSBNZWxvIDxhcm5hbGRvLm1lbG9AZ21haWwuY29tPiwgPGJwZkB2Z2VyLmtlcm5lbC5vcmc+LCA8
a2VybmVsLXRlYW1AZmIuY29tPiwgTWFzYWhpcm8gWWFtYWRhIDxtYXNhaGlyb3lAa2VybmVsLm9y
Zz4sIE1pY2hhbCBNYXJlayA8bWljaGFsLmxrbWxAbWFya292aS5uZXQ+LCBOaWNrIERlc2F1bG5p
ZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KU3ViamVjdDogW1BBVENIIGtidWlsZCB2NF0g
a2J1aWxkOiBhZGQgYW4gZWxmbm90ZSBmb3Igd2hldGhlciB2bWxpbnV4IGlzIGJ1aWx0IHdpdGgg
bHRvCkRhdGU6IFRodSwgMDEgQXByIDIwMjEgMTY6Mjc6MjMgLTA3MDAKTWVzc2FnZS1JRDogPDIw
MjEwNDAxMjMyNzIzLjM1NzEyODctMS15aHNAZmIuY29tPgpMaXN0LUlEOiA8bGludXgta2J1aWxk
LnZnZXIua2VybmVsLm9yZz4KWC1NYWlsaW5nLUxpc3Q6IGxpbnV4LWtidWlsZEB2Z2VyLmtlcm5l
bC5vcmcKTUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0
PSJ1dGYtOCIKQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogN2JpdAoKQ3VycmVudGx5LCBjbGFu
ZyBMVE8gYnVpbHQgdm1saW51eCB3b24ndCB3b3JrIHdpdGggcGFob2xlLgpMVE8gaW50cm9kdWNl
ZCBjcm9zcy1jdSBkd2FyZiB0YWcgcmVmZXJlbmNlcyBhbmQgYnJva2UKY3VycmVudCBwYWhvbGUg
bW9kZWwgd2hpY2ggaGFuZGxlcyBvbmUgY3UgYXMgYSB0aW1lLgpUaGUgc29sdXRpb24gaXMgdG8g
bWVyZ2UgYWxsIGN1J3MgYXMgb25lIHBhaG9sZSBjdSBhcyBpbiBbMV0uCldlIHdvdWxkIGxpa2Ug
dG8gZG8gdGhpcyBtZXJnaW5nIG9ubHkgaWYgY3Jvc3MtY3UgZHdhcmYKcmVmZXJlbmNlcyBoYXBw
ZW5zLiBUaGUgTFRPIGJ1aWxkIG1vZGUgaXMgYSBwcmV0dHkgZ29vZAppbmRpY2F0aW9uIGZvciB0
aGF0LgoKSW4gZWFybGllciB2ZXJzaW9uIG9mIHRoaXMgcGF0Y2ggKFsyXSksIGNsYW5nIGZsYWcK
LWdyZWNvcmQtZ2NjLXN3aXRjaGVzIGlzIHByb3Bvc2VkIHRvIGFkZCB0byBjb21waWxhdGlvbiBm
bGFncwpzbyBwYWhvbGUgY291bGQgZGV0ZWN0ICItZmx0byIgYW5kIHRoZW4gbWVyZ2luZyBjdSdz
LgpUaGlzIHdpbGwgaW5jcmVhdGUgdGhlIGJpbmFyeSBzaXplIG9mIDElIHdpdGhvdXQgTFRPIHRo
b3VnaC4KCkFybmFsZG8gc3VnZ2VzdGVkIHRvIHVzZSBhIG5vdGUgdG8gaW5kaWNhdGUgdGhlIHZt
bGludXgKaXMgYnVpbHQgd2l0aCBMVE8uIFN1Y2ggYSBjaGVhcCB3YXkgdG8gZ2V0IHdoZXRoZXIg
dGhlIHZtbGludXgKaXMgYnVpbHQgd2l0aCBMVE8gb3Igbm90IGhlbHBzIHBhaG9sZSBidXQgaXMg
YWxzbyB1c2VmdWwKZm9yIHRyYWNpbmcgYXMgTFRPIG1heSBpbmxpbmUvZGVsZXRlL2RlbW90ZSBn
bG9iYWwgZnVuY3Rpb25zLApwcm9tb3RlIHN0YXRpYyBmdW5jdGlvbnMsIGV0Yy4KClNvIHRoaXMg
cGF0Y2ggYWRkZWQgYW4gZWxmbm90ZSB3aXRoIGEgbmV3IHR5cGUgTElOVVhfRUxGTk9URV9MVE9f
SU5GTy4KVGhlIG93bmVyIG9mIHRoZSBub3RlIGlzICJMaW51eCIuCgpXaXRoIGdjYyA4LjQuMSBh
bmQgY2xhbmcgdHJ1bmssIHdpdGhvdXQgTFRPLCBJIGdvdAogICQgcmVhZGVsZiAtbiB2bWxpbnV4
CiAgRGlzcGxheWluZyBub3RlcyBmb3VuZCBpbjogLm5vdGVzCiAgICBPd25lciAgICAgICAgICAg
ICAgICBEYXRhIHNpemUgICAgICAgIERlc2NyaXB0aW9uCiAgLi4uCiAgICBMaW51eCAgICAgICAg
ICAgICAgICAweDAwMDAwMDA0ICAgICAgIGZ1bmMKICAgICBkZXNjcmlwdGlvbiBkYXRhOiAwMCAw
MCAwMCAwMAogIC4uLgpXaXRoICJyZWFkZWxmIC14ICIubm90ZXMiIHZtbGludXgiLCBJIGNhbiB2
ZXJpZnkgdGhlIGFib3ZlICJmdW5jIgp3aXRoIHR5cGUgY29kZSAweDEwMS4KCldpdGggY2xhbmcg
dGhpbi1MVE8sIEkgZ290IHRoZSBzYW1lIGFzIGFib3ZlIGV4Y2VwdCB0aGUgZm9sbG93aW5nOgog
ICAgIGRlc2NyaXB0aW9uIGRhdGE6IDAxIDAwIDAwIDAwCndoaWNoIGluZGljYXRlcyB0aGUgdm1s
aW51eCBpcyBidWlsdCB3aXRoIExUTy4KCiAgWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Jw
Zi8yMDIxMDMyNTA2NTMxNi4zMTIxMjg3LTEteWhzQGZiLmNvbS8KICBbMl0gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYnBmLzIwMjEwMzMxMDAxNjIzLjI3Nzg5MzQtMS15aHNAZmIuY29tLwoKU3Vn
Z2VzdGVkLWJ5OiBBcm5hbGRvIENhcnZhbGhvIGRlIE1lbG8gPGFybmFsZG8ubWVsb0BnbWFpbC5j
b20+ClNpZ25lZC1vZmYtYnk6IFlvbmdob25nIFNvbmcgPHloc0BmYi5jb20+ClJldmlld2VkLWJ5
OiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KLS0tCiBpbmNsdWRl
L2xpbnV4L2VsZm5vdGUtbHRvLmggfCAxNCArKysrKysrKysrKysrKwogaW5pdC92ZXJzaW9uLmMg
ICAgICAgICAgICAgIHwgIDIgKysKIHNjcmlwdHMvbW9kL21vZHBvc3QuYyAgICAgICB8ICAyICsr
CiAzIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBp
bmNsdWRlL2xpbnV4L2VsZm5vdGUtbHRvLmgKCkNoYW5nZWxvZ3M6CiAgdjMgLT4gdjQ6CiAgICAu
IHB1dCBuZXcgbHRvIG5vdGUgaW4gaXRzIG93biBoZWFkZXIgZmlsZSBzaW1pbGFyIHRvCiAgICAg
IGJ1aWxkLXNhbHQuaC4gKE5pY2spCiAgdjIgLT4gdjM6CiAgICAuIGFiYW5kb25lZCB0aGUgYXBw
cm9hY2ggb2YgYWRkaW5nIC1ncmVjb3JkLWdjYy1zd2l0Y2hlcywKICAgICAgaW5zdGVhZCBjcmVh
dGUgYSBub3RlIHRvIGluZGljYXRlIHdoZXRoZXIgaXQgaXMgYSBsdG8gYnVpbGQKICAgICAgb3Ig
bm90LiBUaGUgbm90ZSBkZWZpbml0aW9uIGlzIGluIGNvbXBpbGVyLmguIChBcm5hbGRvKQogIHYx
IC0+IHYyOgogICAgLiBsaW1pdGVkIHRvIGFkZCAtZ3JlY29yZC1nY2Mtc3dpdGNoZXMgZm9yIExU
T19DTEFORwogICAgICBpbnN0ZWFkIG9mIGFsbCBjbGFuZyBidWlsZAoKZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvZWxmbm90ZS1sdG8uaCBiL2luY2x1ZGUvbGludXgvZWxmbm90ZS1sdG8uaApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmQ0NjM1YTNlY2M0ZgotLS0g
L2Rldi9udWxsCisrKyBiL2luY2x1ZGUvbGludXgvZWxmbm90ZS1sdG8uaApAQCAtMCwwICsxLDE0
IEBACisjaWZuZGVmIF9fRUxGTk9URV9MVE9fSAorI2RlZmluZSBfX0VMRk5PVEVfTFRPX0gKKwor
I2luY2x1ZGUgPGxpbnV4L2VsZm5vdGUuaD4KKworI2RlZmluZSBMSU5VWF9FTEZOT1RFX0xUT19J
TkZPCTB4MTAxCisKKyNpZmRlZiBDT05GSUdfTFRPCisjZGVmaW5lIEJVSUxEX0xUT19JTkZPCUVM
Rk5PVEUzMigiTGludXgiLCBMSU5VWF9FTEZOT1RFX0xUT19JTkZPLCAxKQorI2Vsc2UKKyNkZWZp
bmUgQlVJTERfTFRPX0lORk8JRUxGTk9URTMyKCJMaW51eCIsIExJTlVYX0VMRk5PVEVfTFRPX0lO
Rk8sIDApCisjZW5kaWYKKworI2VuZGlmIC8qIF9fRUxGTk9URV9MVE9fSCAqLwpkaWZmIC0tZ2l0
IGEvaW5pdC92ZXJzaW9uLmMgYi9pbml0L3ZlcnNpb24uYwppbmRleCA5MmFmYzc4MmIwNDMuLjFh
MzU2ZjU0OTNlOCAxMDA2NDQKLS0tIGEvaW5pdC92ZXJzaW9uLmMKKysrIGIvaW5pdC92ZXJzaW9u
LmMKQEAgLTksNiArOSw3IEBACiAKICNpbmNsdWRlIDxnZW5lcmF0ZWQvY29tcGlsZS5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2J1aWxkLXNhbHQuaD4KKyNpbmNsdWRlIDxsaW51eC9lbGZub3RlLWx0by5o
PgogI2luY2x1ZGUgPGxpbnV4L2V4cG9ydC5oPgogI2luY2x1ZGUgPGxpbnV4L3V0cy5oPgogI2lu
Y2x1ZGUgPGxpbnV4L3V0c25hbWUuaD4KQEAgLTQ1LDMgKzQ2LDQgQEAgY29uc3QgY2hhciBsaW51
eF9wcm9jX2Jhbm5lcltdID0KIAkiICgiIExJTlVYX0NPTVBJTEVSICIpICVzXG4iOwogCiBCVUlM
RF9TQUxUOworQlVJTERfTFRPX0lORk87CmRpZmYgLS1naXQgYS9zY3JpcHRzL21vZC9tb2Rwb3N0
LmMgYi9zY3JpcHRzL21vZC9tb2Rwb3N0LmMKaW5kZXggMjQ3MjVlNTBjN2I0Li45OGZiMmJiMDI0
ZGIgMTAwNjQ0Ci0tLSBhL3NjcmlwdHMvbW9kL21vZHBvc3QuYworKysgYi9zY3JpcHRzL21vZC9t
b2Rwb3N0LmMKQEAgLTIxOTEsMTAgKzIxOTEsMTIgQEAgc3RhdGljIHZvaWQgYWRkX2hlYWRlcihz
dHJ1Y3QgYnVmZmVyICpiLCBzdHJ1Y3QgbW9kdWxlICptb2QpCiAJICovCiAJYnVmX3ByaW50Zihi
LCAiI2RlZmluZSBJTkNMVURFX1ZFUk1BR0lDXG4iKTsKIAlidWZfcHJpbnRmKGIsICIjaW5jbHVk
ZSA8bGludXgvYnVpbGQtc2FsdC5oPlxuIik7CisJYnVmX3ByaW50ZihiLCAiI2luY2x1ZGUgPGxp
bnV4L2VsZm5vdGUtbHRvLmg+XG4iKTsKIAlidWZfcHJpbnRmKGIsICIjaW5jbHVkZSA8bGludXgv
dmVybWFnaWMuaD5cbiIpOwogCWJ1Zl9wcmludGYoYiwgIiNpbmNsdWRlIDxsaW51eC9jb21waWxl
ci5oPlxuIik7CiAJYnVmX3ByaW50ZihiLCAiXG4iKTsKIAlidWZfcHJpbnRmKGIsICJCVUlMRF9T
QUxUO1xuIik7CisJYnVmX3ByaW50ZihiLCAiQlVJTERfTFRPX0lORk87XG4iKTsKIAlidWZfcHJp
bnRmKGIsICJcbiIpOwogCWJ1Zl9wcmludGYoYiwgIk1PRFVMRV9JTkZPKHZlcm1hZ2ljLCBWRVJN
QUdJQ19TVFJJTkcpO1xuIik7CiAJYnVmX3ByaW50ZihiLCAiTU9EVUxFX0lORk8obmFtZSwgS0JV
SUxEX01PRE5BTUUpO1xuIik7Ci0tIAoyLjMwLjIKCg==
--000000000000e935cc05bf7081ec
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-dwarf_loader-Fix-LINUX_ELFNOTE_LTO_INFO-define.patch"
Content-Disposition: attachment; 
	filename="0001-dwarf_loader-Fix-LINUX_ELFNOTE_LTO_INFO-define.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kn8iuoqo1>
X-Attachment-Id: f_kn8iuoqo1

RnJvbSAyYjQ5MDYxZTljYTM5OGExOTYzODJhZmE4MjI1ZjJkNWEwOTg1NzUyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTZWRhdCBEaWxlayA8c2VkYXQuZGlsZWtAZ21haWwuY29tPgpE
YXRlOiBGcmksIDIgQXByIDIwMjEgMjI6MTE6MDkgKzAyMDAKU3ViamVjdDogW1BBVENIXSBkd2Fy
Zl9sb2FkZXI6IEZpeCBMSU5VWF9FTEZOT1RFX0xUT19JTkZPIGRlZmluZQoKU2lnbmVkLW9mZi1i
eTogU2VkYXQgRGlsZWsgPHNlZGF0LmRpbGVrQGdtYWlsLmNvbT4KLS0tCiBkd2FyZl9sb2FkZXIu
YyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2R3YXJmX2xvYWRlci5jIGIvZHdhcmZfbG9hZGVyLmMKaW5kZXgg
MDI2ZDEzNzg5ZmY5Li4yNDQ4MTYwNDJjODggMTAwNjQ0Ci0tLSBhL2R3YXJmX2xvYWRlci5jCisr
KyBiL2R3YXJmX2xvYWRlci5jCkBAIC0yNTAxLDggKzI1MDEsOCBAQCBzdGF0aWMgaW50IGN1c19f
bG9hZF9kZWJ1Z190eXBlcyhzdHJ1Y3QgY3VzICpjdXMsIHN0cnVjdCBjb25mX2xvYWQgKmNvbmYs
CiAJcmV0dXJuIDA7CiB9CiAKLS8qIE1hdGNoIHRoZSBkZWZpbmUgaW4gbGludXg6aW5jbHVkZS9s
aW51eC9lbGZub3RlLmggKi8KLSNkZWZpbmUgTElOVVhfRUxGTk9URV9CVUlMRF9MVE8JCTB4MTAx
CisvKiBNYXRjaCB0aGUgZGVmaW5lIGluIGxpbnV4OmluY2x1ZGUvbGludXgvZWxmbm90ZS1sdG8u
aCAqLworI2RlZmluZSBMSU5VWF9FTEZOT1RFX0xUT19JTkZPCQkweDEwMQogCiBzdGF0aWMgYm9v
bCBjdXNfX21lcmdpbmdfY3UoRHdhcmYgKmR3LCBFbGYgKmVsZikKIHsKQEAgLTI1MjAsNyArMjUy
MCw3IEBAIHN0YXRpYyBib29sIGN1c19fbWVyZ2luZ19jdShEd2FyZiAqZHcsIEVsZiAqZWxmKQog
CQkJc2l6ZV90IG5hbWVfb2ZmLCBkZXNjX29mZiwgb2Zmc2V0ID0gMDsKIAkJCUdFbGZfTmhkciBo
ZHI7CiAJCQl3aGlsZSAoKG9mZnNldCA9IGdlbGZfZ2V0bm90ZShkYXRhLCBvZmZzZXQsICZoZHIs
ICZuYW1lX29mZiwgJmRlc2Nfb2ZmKSkgIT0gMCkgewotCQkJCWlmIChoZHIubl90eXBlICE9IExJ
TlVYX0VMRk5PVEVfQlVJTERfTFRPKQorCQkJCWlmIChoZHIubl90eXBlICE9IExJTlVYX0VMRk5P
VEVfTFRPX0lORk8pCiAJCQkJCWNvbnRpbnVlOwogCiAJCQkJLyogb3duZXIgaXMgTGludXggKi8K
LS0gCjIuMzEuMAoK
--000000000000e935cc05bf7081ec--
