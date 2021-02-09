Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBU7PROAQMGQEBFDJHEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id DA54D315822
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 22:00:04 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id d8sf4444806plo.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 13:00:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612904403; cv=pass;
        d=google.com; s=arc-20160816;
        b=LloFzpBiyAae7x0lyU/GjTAVDHkYmTWSY4JZJbmvnwzOgYsFwXdQ5GXM52eGGQQnV2
         xkIzR8z/f0S3sjEhX0azdjbK9dLdl8xDeddCYImOfieuI3fsRBLQKwO4zS5xQ1KpJ603
         VW/DPaxRUbxW5sV3FNEKz47J/XluwUOE99qSCCXPVzU37CSVc0WRlezgwHO2dOfodzQj
         YTCRji4bcbfkYg4BjcmtvHlpiBSphFW+3EkW1rBEw9m17HOJ0cjwja4/ZEK/YYJoVlsr
         jSq15f3eD+UDq1TBCy270FNlbu5fHPBnVbKzDehGsqjaZ7CfJLSfYHPbgmwiTSnFLWFB
         dp1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=r+BHNdBS7hDS1/e8Cji5ZrjAraBo3o+TEtq7FzYOtTo=;
        b=bkV0WYRy+kqGaO2hTarHAP+rPPxzM29OliYvL0Kk1PivkQb+S78Tfvk6J7H16zqrM5
         o2EQUttAB/H6D80qaOz4Vg2jRpzAQinWHfl3KYxQ++YQbrAKlwqaiZtWVgBJ8rlaYpBD
         sfROwH9Kzw4Ig0xw7Mbz11IoUfX4/l/cuxvTR9SrSt/SU7sVgnHroff0KJtyEeUEw16t
         /Ql7A7ZQyRf47sgAJaTL+LSV1+DlO9wksrGcKI0w/OX7nlP9QqcSFVXOALKewI3WDSLu
         R9RKoejliz0dDAVzForwKyHVJsM0ckmWbJ3xuVzJF6cqc2uK8Z80YlVt5/Ffi9nHIkyV
         /ObQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HJkOE3Ys;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r+BHNdBS7hDS1/e8Cji5ZrjAraBo3o+TEtq7FzYOtTo=;
        b=JGwaepUMEgSl8Ez9i4eg6PlaynhrXrPhZZ6QK4S9y2vQvXFB4TPYLBGc5hidgTGilj
         MrKlqAjoGUsLitOiWHezFXg42ahz4WmBFSlFGtF2PaJ/hxttYZ7cPIOi6RkIa5xz8qAe
         0tz60xFrqi4M1BqD17HMECd0eXM8tEdn+t+yKj3qIfUk0KrTamPtP1iLGsVOuRPwcxrq
         Ige7s8TH7GrCyOogifRoYaYTQD14vupNwQWy7z12EzqYevb3cEuEExnK5o+Vss6Mjs0g
         a8bSNOX9OAtgwwm1DnZg2bJh3ITa9O5+tCjvTI+Bnt7a1cveoRAD1m6nKSRjGj0MGI3M
         m18g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r+BHNdBS7hDS1/e8Cji5ZrjAraBo3o+TEtq7FzYOtTo=;
        b=HOA4tF15TAmg33THV8sj3N3QuoqrQ17L+kJRLNVBtLJDGQyddOq1XVOpw0/9xLltuK
         zIHKoF5ZcAVkA/7vN5WNMVhPxT4AuQpB+dWNtnl+OSViqDE8G5wdSebSvbcKwoP0gu+N
         vyAAiBBdI4D4NzUYJYaz7EFqmJCTQBBvT4N/X/UAIrL/xa7WH96ST9VH8NdbNBdRdNtm
         3wAZ/1H2z175gUGOWj8Lpi9tRjbNG6mGJGwn1bEY/AwSvp6BgUnUfWCBGIpvOgfelVXG
         NiK4IpizrMkukf5peNhY1p6bcbCBaxvNtxpQnHNXndDXLBkMQY0xcrdtKnW3psT9K08+
         Se5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r+BHNdBS7hDS1/e8Cji5ZrjAraBo3o+TEtq7FzYOtTo=;
        b=X+LniLy9pdWT7Fe5PBkizRRv0nTWQyuFR998zWLUboYv2XGlPLrqmluIlX5q/KZRYK
         FmE8XMfTwddjibvUzxdA7TTMShJ/Tqj9/AuPWlZi0hx3SJOAxumoJXLJPKtDe0KRNYSw
         xHRWXZr1psIjue9NP8Uypz5V/dxYq8L/fN1Ytb37muJtPn5dbp4pIc85Zk36GkbfyR/l
         h9UGkYCwv8WVmBOZHGjJyiT9HelItTjhtHTBgovtqA/AUuxL+PAEEtGpE6kofkEMBTWR
         NzgUanP2I0RIeizvbtxoQNUMEEGePbCMNX8fJak3XypDCd8V1HxGqETj6/FoO4hwM68T
         GtoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303Isdhip1gvBWWgBAbNHBcPCy7idP5jIjn9vHnJTa/SmX0jpHT
	CI7qXMJpj6Y+RCz54b5ITBk=
X-Google-Smtp-Source: ABdhPJxEqmEqTLn6DvpRGl5Md9lIMiw2JBVB+yBWZw7EfhtsTSqURBnVTDCEF9oKmvM4i3tvWiWUZQ==
X-Received: by 2002:a63:e210:: with SMTP id q16mr23287289pgh.249.1612904403540;
        Tue, 09 Feb 2021 13:00:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4c89:: with SMTP id m9ls5382677pgt.8.gmail; Tue, 09 Feb
 2021 13:00:02 -0800 (PST)
X-Received: by 2002:a62:191:0:b029:1dd:3b65:c91d with SMTP id 139-20020a6201910000b02901dd3b65c91dmr28416pfb.14.1612904402829;
        Tue, 09 Feb 2021 13:00:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612904402; cv=none;
        d=google.com; s=arc-20160816;
        b=o/m8FGzcKO6qaSHA5jzeZsb1zgpkokkamSqi1DwKa0hfE7nhg/G+pMIvAMLOxnLHjS
         CjPfV4yStuPA3fGDG0F+IWxv+7P4RZp234HTJFWSdZYwd20MgmA3ZAy/k8j+ZYoBU4DY
         O291WR0ska+BYFa7uUGeJ0uUCq9TlfbfDUMdblb1CTXpwC1BeE6/1oTVFUJcPGbODOWk
         ZD933mtDb0jwUg9t5uy+gMItXpI+zqBf6CJft+OKrCOuo0lO/N6bxUfaaG22aa0opzcU
         R7V4hl9jUnuVpJMf3zO7ASqKz6zOAXleNQrZgHvz+H4QMP11TKlKxD9IIwZ1tNVtXzr2
         mqGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5/nK6Bh3Eef8RPr+9XuUSMYt3dJ038OuBkzE/gPK78U=;
        b=RkJje/QXafupZGOUnbk74FTyiefLMxbYN92605FfdgrvqCiWELubDpp4JUH3riGmOZ
         LQCUt1n7WfYFH283al8vv/w4/Y3WylFj+aR+vv2Vf7qoRHpye4J8LjIcamx3Azyssnyy
         fvxi71c1gv6AqESwbXjnb/0BWzWdbBsmAB5p28rQYLI1ypALf20FZ8s9lGdEzu3qhpGI
         ZnEqvquGVJPqbgI+mGbW2QUi0k4SJNesv/FmQtZfsYW0GMqzlDso5tENhE0I0/B/mQvO
         rolk18gxrLvdAZy5ZA9qaXbK+BcAb3EYI0Y4oGb+j1ETXdcAiUqzWTig1ftQelF2YY7b
         K8bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HJkOE3Ys;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id w9si139519pjl.0.2021.02.09.13.00.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 13:00:02 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id r2so19540847ybk.11
        for <clang-built-linux@googlegroups.com>; Tue, 09 Feb 2021 13:00:02 -0800 (PST)
X-Received: by 2002:a25:c905:: with SMTP id z5mr35833755ybf.260.1612904402472;
 Tue, 09 Feb 2021 13:00:02 -0800 (PST)
MIME-Version: 1.0
References: <20210209034416.GA1669105@ubuntu-m3-large-x86> <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86> <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86> <YCKB1TF5wz93EIBK@krava> <YCKlrLkTQXc4Cyx7@krava>
In-Reply-To: <YCKlrLkTQXc4Cyx7@krava>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 9 Feb 2021 12:59:51 -0800
Message-ID: <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
To: Jiri Olsa <jolsa@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Veronika Kabatova <vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HJkOE3Ys;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Feb 9, 2021 at 7:09 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Tue, Feb 09, 2021 at 01:36:41PM +0100, Jiri Olsa wrote:
> > On Tue, Feb 09, 2021 at 12:49:04AM -0700, Nathan Chancellor wrote:
> > > On Mon, Feb 08, 2021 at 10:56:36PM -0800, Andrii Nakryiko wrote:
> > > > On Mon, Feb 8, 2021 at 10:13 PM Andrii Nakryiko
> > > > <andrii.nakryiko@gmail.com> wrote:
> > > > >
> > > > > On Mon, Feb 8, 2021 at 10:09 PM Andrii Nakryiko
> > > > > <andrii.nakryiko@gmail.com> wrote:
> > > > > >
> > > > > > On Mon, Feb 8, 2021 at 9:23 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > > > >
> > > > > > > On Mon, Feb 08, 2021 at 08:45:43PM -0800, Andrii Nakryiko wrote:
> > > > > > > > On Mon, Feb 8, 2021 at 7:44 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > > > > > >
> > > > > > > > > Hi all,
> > > > > > > > >
> > > > > > > > > Recently, an issue with CONFIG_DEBUG_INFO_BTF was reported for arm64:
> > > > > > > > > https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/E7cu5BwbBAAJ
> > > > > > > > >
> > > > > > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > > > > > >                       LLVM=1 O=build/aarch64 defconfig
> > > > > > > > >
> > > > > > > > > $ scripts/config \
> > > > > > > > >     --file build/aarch64/.config \
> > > > > > > > >     -e BPF_SYSCALL \
> > > > > > > > >     -e DEBUG_INFO_BTF \
> > > > > > > > >     -e FTRACE \
> > > > > > > > >     -e FUNCTION_TRACER
> > > > > > > > >
> > > > > > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > > > > > >                       LLVM=1 O=build/aarch64 olddefconfig all
> > > > > > > > > ...
> > > > > > > > > FAILED unresolved symbol vfs_truncate
> > > > > > > > > ...
> > > > > > > > >
> > > > > > > > > My bisect landed on commit 6e22ab9da793 ("bpf: Add d_path helper")
> > > > > > > > > although that seems obvious given that is what introduced
> > > > > > > > > BTF_ID(func, vfs_truncate).
> > > > > > > > >
> > > > > > > > > I am using the latest pahole v1.20 and LLVM is at
> > > > > > > > > https://github.com/llvm/llvm-project/commit/14da287e18846ea86e45b421dc47f78ecc5aa7cb
> > > > > > > > > although I can reproduce back to LLVM 10.0.1, which is the earliest
> > > > > > > > > version that the kernel supports. I am very unfamiliar with BPF so I
> > > > > > > > > have no idea what is going wrong here. Is this a known issue?
> > > > > > > > >
> > > > > > > >
> > > > > > > > I'll skip the reproduction games this time and will just request the
> > > > > > > > vmlinux image. Please upload somewhere so that we can look at DWARF
> > > > > > > > and see what's going on. Thanks.
> > > > > > > >
> > > > > > >
> > > > > > > Sure thing, let me know if this works. I uploaded in two places to make
> > > > > > > it easier to grab:
> > > > > > >
> > > > > > > zstd compressed:
> > > > > > > https://github.com/nathanchance/bug-files/blob/3b2873751e29311e084ae2c71604a1963f5e1a48/btf-aarch64/vmlinux.zst
> > > > > > >
> > > > > >
> > > > > > Thanks. I clearly see at least one instance of seemingly well-formed
> > > > > > vfs_truncate DWARF declaration. Also there is a proper ELF symbol for
> > > > > > it. Which means it should have been generated in BTF, but it doesn't
> > > > > > appear to be, so it does seem like a pahole bug. I (or someone else
> > > > > > before me) will continue tomorrow.
> > > > > >
> > > > > > $ llvm-dwarfdump vmlinux
> > > > > > ...
> > > > > >
> > > > > > 0x00052e6f:   DW_TAG_subprogram
> > > > > >                 DW_AT_name      ("vfs_truncate")
> > > > > >                 DW_AT_decl_file
> > > > > > ("/home/nathan/cbl/src/linux/include/linux/fs.h")
> > > > > >                 DW_AT_decl_line (2520)
> > > > > >                 DW_AT_prototyped        (true)
> > > > > >                 DW_AT_type      (0x000452cb "long int")
> > > > > >                 DW_AT_declaration       (true)
> > > > > >                 DW_AT_external  (true)
> > > > > >
> > > > > > 0x00052e7b:     DW_TAG_formal_parameter
> > > > > >                   DW_AT_type    (0x00045fc6 "const path*")
> > > > > >
> > > > > > 0x00052e80:     DW_TAG_formal_parameter
> > > > > >                   DW_AT_type    (0x00045213 "long long int")
> > > > > >
> > > > > > ...
> > > > > >
> > > > >
> > > > > ... and here's the *only* other one (not marked as declaration, but I
> > > > > thought we already handle that, Jiri?):
> > > > >
> > > > > 0x01d0da35:   DW_TAG_subprogram
> > > > >                 DW_AT_low_pc    (0xffff80001031f430)
> > > > >                 DW_AT_high_pc   (0xffff80001031f598)
> > > > >                 DW_AT_frame_base        (DW_OP_reg29)
> > > > >                 DW_AT_GNU_all_call_sites        (true)
> > > > >                 DW_AT_name      ("vfs_truncate")
> > > > >                 DW_AT_decl_file ("/home/nathan/cbl/src/linux/fs/open.c")
> > > > >                 DW_AT_decl_line (69)
> > > > >                 DW_AT_prototyped        (true)
> > > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > > >                 DW_AT_external  (true)
> > > > >
> > > >
> > > > Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> > > > vfs_truncate's address is not recorded as ftrace-attachable, and thus
> > > > pahole ignores it. I don't know why this happens and it's quite
> > > > strange, given vfs_truncate is just a normal global function.
> >
> > right, I can't see it in mcount adresses.. but it begins with instructions
> > that appears to be nops, which would suggest it's traceable
> >
> >       ffff80001031f430 <vfs_truncate>:
> >       ffff80001031f430: 5f 24 03 d5   hint    #34
> >       ffff80001031f434: 1f 20 03 d5   nop
> >       ffff80001031f438: 1f 20 03 d5   nop
> >       ffff80001031f43c: 3f 23 03 d5   hint    #25
> >
> > > >
> > > > I'd like to understand this issue before we try to fix it, but there
> > > > is at least one improvement we can make: pahole should check ftrace
> > > > addresses only for static functions, not the global ones (global ones
> > > > should be always attachable, unless they are special, e.g., notrace
> > > > and stuff). We can easily check that by looking at the corresponding
> > > > symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
>
> I'm still trying to build the kernel.. however ;-)
>
> patch below adds the ftrace check only for static functions
> and lets the externa go through.. but as you said, in this
> case we'll need to figure out the 'notrace' and other checks
> ftrace is doing
>
> jirka
>
>
> ---
> diff --git a/btf_encoder.c b/btf_encoder.c
> index b124ec20a689..4d147406cfa5 100644
> --- a/btf_encoder.c
> +++ b/btf_encoder.c
> @@ -734,7 +734,7 @@ int cu__encode_btf(struct cu *cu, int verbose, bool force,
>                         continue;
>                 if (!has_arg_names(cu, &fn->proto))
>                         continue;
> -               if (functions_cnt) {
> +               if (!fn->external && functions_cnt) {

I wouldn't trust DWARF, honestly. Wouldn't checking GLOBAL vs LOCAL
FUNC ELF symbol be more reliable?

>                         struct elf_function *func;
>                         const char *name;
>
> @@ -746,9 +746,6 @@ int cu__encode_btf(struct cu *cu, int verbose, bool force,
>                         if (!func || func->generated)
>                                 continue;
>                         func->generated = true;
> -               } else {
> -                       if (!fn->external)
> -                               continue;
>                 }
>
>                 btf_fnproto_id = btf_elf__add_func_proto(btfe, cu, &fn->proto, type_id_off);
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzaL%3DqsSyDc8OxeN4pr7%2BLvv%2Bde4f%2BhM5a56LY8EABAk3w%40mail.gmail.com.
