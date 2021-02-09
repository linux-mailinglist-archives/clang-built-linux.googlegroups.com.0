Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB474RCAQMGQE5CJZEJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F213149AC
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 08:49:08 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id v7sf19827375ybl.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 23:49:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612856947; cv=pass;
        d=google.com; s=arc-20160816;
        b=TIg6/kL26dLYoCkyN8XPjsbwNpth9Br3Fe//5qCdaR2tyNdzDmuc4J6GDA0NsNTi0T
         o5EDK59JiM7/7yFk9L+xun5iyTg5xL7er2N4zsQnSdnotzxSnI+kQbgcSziqvgjNt+N6
         bG/ozxg2UBQ5lTdYo+TcHslyOwH4z8/fOZkNFt8RVPAEcxL33OhuUk+U79glqYy6iyMr
         EYzPFiBPoknWp8+irxQXuyx8N1K6fge2bWevFbX8IOKcuAi9c76udF9DYG7s7W74B+KY
         +qtodzXWDV3U/O8ZSaUn5VDdi/ytCB6cmhBDYZXa8zxznwmXnHFscelVtqefSVEewWMg
         uUyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Fj0Eoj5jMjPyoMNHZ/bngCiX4D6yV4WzMWwGimpY0Jc=;
        b=NIvSNjd6DgmhCjINRUfL/b1f0A7G8I3bucGeBpLmNgdA1VqLa5cKGnhzYktdDY7Afe
         //X9TtuLT3mO+oBuKV8ybuaUHYvJ3yP78jk9xyhcB1Dd1V2JxdoYOzgqPWuuMTjuMdcz
         hBx5kJej2wN6FrkAyM014GlwiqnOTO6MlLb5qfZ5+VgBmANUJZxN1ohf1In8x4Q7ixsd
         vWoXTwM7J1ew/O731muQvGsKUfy4GCS0T++XsSx8QLQHCTxD7aDgbKuuXGVpSG0nu6P+
         SuKBTGSU9PkFmLIcwHoe6kWeVrlzYDdil3cSUPo3bEymwvfpNEXhhLOm2moLyhwiRPjM
         ZjHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AnU+F4OM;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fj0Eoj5jMjPyoMNHZ/bngCiX4D6yV4WzMWwGimpY0Jc=;
        b=FU1mCK/WccgXLw7XZhdnjb6qQ/gk9ycrHOUv/4pcj32lvnNlXX6hmk6Gb4eaL7S0cl
         vQ7xYIe9460+pkhl/mYjrsG95GZtGxWC/zmGtQqmNHHHAkoTUwFuD30YA+KpQXK49UAK
         lxh0YErdhym8Y+1GYwiDOwzvFxGnZ8sDxxddOlCiAseDbPcgJyRv+hLU21Kw4KWhdjgg
         z2Z+k6W0TXsd2eVNpYl6LxomQ2cO0aS08DcoR5IufRb5vH6VmyXGrulD2CnkZLDLUGrX
         fd1oIfnpaOkgL2itnRy4ff3AayeAZ0E0EmgPpNFVLWDNOLvJJM8yjncMzVTu3ojf1AkC
         FRFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Fj0Eoj5jMjPyoMNHZ/bngCiX4D6yV4WzMWwGimpY0Jc=;
        b=SFnbnpMSM53C0ZenxP3XAvhseS8RwKX/YzclIZ+eADbaE7lSQ8kbd1kBoKHvkmC/CA
         9IOVTEv1eVMVAGKEp0lybKr/l+v2KTArmOXeQJOwATB6E7g00LHJv+FBHe3KJxivziUA
         g2UP7smIxIgQ79Dw82XhSlJ2zIoGwwSk6NATVCzIer6HT8CC11na6EfTT/sR8VOuEqSp
         JPhkoHIax8edMkRPaTWYDQbZQofVvVJyuZk6ifyOqA+Nb5xL0CmOK3KUQx+JiHpLgqTx
         /WPGRVLzSnTE4pCuB+dcWK0I0MGbxF4tr2A8BRmFCpCfvbvY7TKznf3BhfcIJfZ2tgar
         1SaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BlRvOOsjg7CdiDDwVn/zSyQMJMOj++gAOu6kargFnFIP7/zd3
	ATuboLZxf/jSX9wS3QXW6IU=
X-Google-Smtp-Source: ABdhPJyLQi5BXXK1PXzxqWBJlUr109jDeGFSsct+LNHmpO+glNSb1SLDiiNhBScZl1SF2EuVA+IsaQ==
X-Received: by 2002:a25:73c5:: with SMTP id o188mr1553421ybc.261.1612856947645;
        Mon, 08 Feb 2021 23:49:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:25c7:: with SMTP id l190ls9816437ybl.10.gmail; Mon, 08
 Feb 2021 23:49:07 -0800 (PST)
X-Received: by 2002:a5b:702:: with SMTP id g2mr17855777ybq.285.1612856947195;
        Mon, 08 Feb 2021 23:49:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612856947; cv=none;
        d=google.com; s=arc-20160816;
        b=fj+ArcHA2wUXpt2GmMfR2F9PcmRbYjfm98Rr9ZAxPkc9o+Aacl6Z4ynBq0/zm+hnZz
         1Yqnx3MekmvP6OT1mqmfC1/cbFpW1m534iLK6X7dXm3Grv5hWRvmNHrFPi3+CuOGTe/n
         r0LKcsseskoo9ETwCC3blgHov3EiVpk2UGxIVnG01yfqoofaiawsR6ztbpgwjLyrylVQ
         eW/hrjtxvjSegJIz7IRvh5yFzdet6s2cfrufh4AC4Apm+mU3yQjxcRw/DyJtaxiCVY6u
         9N/vDkoHqVohCSKXRV8drGQkps7PUpPyS7aCB3mUE8dEKPYiywaD9+2+kQ0q3HU8AMRj
         6fLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=s3EYgf6DUtgiTDVOUaqP0bEZlGbIvWLc49+XF+FVk1U=;
        b=W8NKeBx5yhW4ydQknR6QaWh4O/tt+Gj/YxZ+J8ddyJauPFTUuF+B18+QpLfc3I08Es
         EAW/OJjiKATtpMm1I+l7SPQf9XaZIca14t5SSS2gfpxjc86o/fjS9glUOp8gLQfaoWVf
         KNXd/YuIbTFoz3sI4rlHYpCL4IWB1dh5ZWPdqihKDjV96n9pAmH9V7IMV7j1W3p3xL2r
         Oci5WtMQUSLYfpzX/OwW+d2HpZKdcZEtGt62M9/Ezy01gosmtDNel4b+FtZ9lhwTHSPK
         MiRYNfbtLxUAAGDUyEth6kOcNLdemV0U5KXV5gvUMFlLdDhlM09V3D/zWcnzPLMKhTIe
         Z0ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AnU+F4OM;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c10si1366751ybf.1.2021.02.08.23.49.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 23:49:07 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id ADCB564DAD;
	Tue,  9 Feb 2021 07:49:05 +0000 (UTC)
Date: Tue, 9 Feb 2021 00:49:04 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Veronika Kabatova <vkabatov@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Message-ID: <20210209074904.GA286822@ubuntu-m3-large-x86>
References: <20210209034416.GA1669105@ubuntu-m3-large-x86>
 <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86>
 <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AnU+F4OM;       spf=pass
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

On Mon, Feb 08, 2021 at 10:56:36PM -0800, Andrii Nakryiko wrote:
> On Mon, Feb 8, 2021 at 10:13 PM Andrii Nakryiko
> <andrii.nakryiko@gmail.com> wrote:
> >
> > On Mon, Feb 8, 2021 at 10:09 PM Andrii Nakryiko
> > <andrii.nakryiko@gmail.com> wrote:
> > >
> > > On Mon, Feb 8, 2021 at 9:23 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > >
> > > > On Mon, Feb 08, 2021 at 08:45:43PM -0800, Andrii Nakryiko wrote:
> > > > > On Mon, Feb 8, 2021 at 7:44 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > > >
> > > > > > Hi all,
> > > > > >
> > > > > > Recently, an issue with CONFIG_DEBUG_INFO_BTF was reported for arm64:
> > > > > > https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/E7cu5BwbBAAJ
> > > > > >
> > > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > > >                       LLVM=1 O=build/aarch64 defconfig
> > > > > >
> > > > > > $ scripts/config \
> > > > > >     --file build/aarch64/.config \
> > > > > >     -e BPF_SYSCALL \
> > > > > >     -e DEBUG_INFO_BTF \
> > > > > >     -e FTRACE \
> > > > > >     -e FUNCTION_TRACER
> > > > > >
> > > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > > >                       LLVM=1 O=build/aarch64 olddefconfig all
> > > > > > ...
> > > > > > FAILED unresolved symbol vfs_truncate
> > > > > > ...
> > > > > >
> > > > > > My bisect landed on commit 6e22ab9da793 ("bpf: Add d_path helper")
> > > > > > although that seems obvious given that is what introduced
> > > > > > BTF_ID(func, vfs_truncate).
> > > > > >
> > > > > > I am using the latest pahole v1.20 and LLVM is at
> > > > > > https://github.com/llvm/llvm-project/commit/14da287e18846ea86e45b421dc47f78ecc5aa7cb
> > > > > > although I can reproduce back to LLVM 10.0.1, which is the earliest
> > > > > > version that the kernel supports. I am very unfamiliar with BPF so I
> > > > > > have no idea what is going wrong here. Is this a known issue?
> > > > > >
> > > > >
> > > > > I'll skip the reproduction games this time and will just request the
> > > > > vmlinux image. Please upload somewhere so that we can look at DWARF
> > > > > and see what's going on. Thanks.
> > > > >
> > > >
> > > > Sure thing, let me know if this works. I uploaded in two places to make
> > > > it easier to grab:
> > > >
> > > > zstd compressed:
> > > > https://github.com/nathanchance/bug-files/blob/3b2873751e29311e084ae2c71604a1963f5e1a48/btf-aarch64/vmlinux.zst
> > > >
> > >
> > > Thanks. I clearly see at least one instance of seemingly well-formed
> > > vfs_truncate DWARF declaration. Also there is a proper ELF symbol for
> > > it. Which means it should have been generated in BTF, but it doesn't
> > > appear to be, so it does seem like a pahole bug. I (or someone else
> > > before me) will continue tomorrow.
> > >
> > > $ llvm-dwarfdump vmlinux
> > > ...
> > >
> > > 0x00052e6f:   DW_TAG_subprogram
> > >                 DW_AT_name      ("vfs_truncate")
> > >                 DW_AT_decl_file
> > > ("/home/nathan/cbl/src/linux/include/linux/fs.h")
> > >                 DW_AT_decl_line (2520)
> > >                 DW_AT_prototyped        (true)
> > >                 DW_AT_type      (0x000452cb "long int")
> > >                 DW_AT_declaration       (true)
> > >                 DW_AT_external  (true)
> > >
> > > 0x00052e7b:     DW_TAG_formal_parameter
> > >                   DW_AT_type    (0x00045fc6 "const path*")
> > >
> > > 0x00052e80:     DW_TAG_formal_parameter
> > >                   DW_AT_type    (0x00045213 "long long int")
> > >
> > > ...
> > >
> >
> > ... and here's the *only* other one (not marked as declaration, but I
> > thought we already handle that, Jiri?):
> >
> > 0x01d0da35:   DW_TAG_subprogram
> >                 DW_AT_low_pc    (0xffff80001031f430)
> >                 DW_AT_high_pc   (0xffff80001031f598)
> >                 DW_AT_frame_base        (DW_OP_reg29)
> >                 DW_AT_GNU_all_call_sites        (true)
> >                 DW_AT_name      ("vfs_truncate")
> >                 DW_AT_decl_file ("/home/nathan/cbl/src/linux/fs/open.c")
> >                 DW_AT_decl_line (69)
> >                 DW_AT_prototyped        (true)
> >                 DW_AT_type      (0x01cfdfe4 "long int")
> >                 DW_AT_external  (true)
> >
> 
> Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> vfs_truncate's address is not recorded as ftrace-attachable, and thus
> pahole ignores it. I don't know why this happens and it's quite
> strange, given vfs_truncate is just a normal global function.
> 
> I'd like to understand this issue before we try to fix it, but there
> is at least one improvement we can make: pahole should check ftrace
> addresses only for static functions, not the global ones (global ones
> should be always attachable, unless they are special, e.g., notrace
> and stuff). We can easily check that by looking at the corresponding
> symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
> for that particular kernel. For that we'll need Nathan's cooperation,
> unless someone else can build an arm64 kernel with the same problem
> and check.

Sure, just let me know what I need to do and I can do it!

Cheers,
Nathan

> >
> > > $ llvm-readelf -s vmlinux | rg vfs_truncate
> > >  15013: ffff800011c22418     4 OBJECT  LOCAL  DEFAULT    24
> > > __BTF_ID__func__vfs_truncate__609
> > >  22531: ffff80001189fe0d     0 NOTYPE  LOCAL  DEFAULT    17
> > > __kstrtab_vfs_truncate
> > >  22532: ffff8000118a985b     0 NOTYPE  LOCAL  DEFAULT    17
> > > __kstrtabns_vfs_truncate
> > >  22534: ffff800011873b7c     0 NOTYPE  LOCAL  DEFAULT     8
> > > __ksymtab_vfs_truncate
> > > 176099: ffff80001031f430   360 FUNC    GLOBAL DEFAULT     2 vfs_truncate
> > >
> > > $ bpftool btf dump file vmlinux | rg vfs_truncate
> > > <nothing>
> > >
> > > > uncompressed:
> > > > https://1drv.ms/u/s!AsQNYeB-IEbqjQiUOspbEdXx49o7?e=ipA9Hv
> > > >
> > > > Cheers,
> > > > Nathan
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bzax90hn_5axpnCpW%2BE6gVc1mtUgCXWqmxV0tJ4Ud7bsaA%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210209074904.GA286822%40ubuntu-m3-large-x86.
