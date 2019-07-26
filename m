Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB7G45XUQKGQE3WZRS5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 466FF7734D
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 23:19:57 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id o184sf5586873lfa.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 14:19:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564175996; cv=pass;
        d=google.com; s=arc-20160816;
        b=vdW5iKBm2H1kfLWrbAYwJVDdA1aR5c/DF7r9PoCXayW0cU71OYoSnd/h8RdzhlDVv3
         dkdC2mE/EhrNlmk13BhcN5iEtsMHSAqfsMYXV1Vd4wAT0bueU43LQHsbT3QMvArksHaE
         cBpo/nDEn2o3phXaZhvolUIwkYSeXI9YQyKcmHCGXHPzSNHR0jHVOx6ift33K5bj6U2E
         VMR7bg40gjJOMFCopbHiqZ3nmxlD03mZoLvOYV3KjyjuDGnENLGb3Pkz+y9Dq0nII0OK
         cM13z7QF7VRJ2pe4EvXYo3l5YHNOWBTvdb2PNqbj4ZlRYGtfpPBhmiMGh7MEsw18lHZs
         Vlmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=j357Q3iHLhVKS8YXbSfFuFVWhllatIM0NBmc2iN5s+I=;
        b=MY//vIchT6j6OMoW8BR5LEeYZLMvyIMaLzxDJVA4XOqLINh+6k+YD0KlWu6Z+HavSM
         vshf3EKLQ2oqgUf5CFcng6kKdpuvSMfG+US/8tQpEHUFWVi8c/Z8SqMncJ6gy/Jl45a9
         YLTeYQp+yi94n4KRKsmtBUKAvgUXS8MLzV2m7zvMIDWunWPjU5S/zgjL1aH/hMieQCiB
         av7tQTshghqkCrpEdWYWX57hi7BIShcAeXye+9A1iBapQshVormuQ7rY7+c9kReZt2Ly
         tAkcf6GEP4FOnrHgCHvjWzT85L2DW48eGM23AfmCA4OXVnzUJ1A+182k5IUS5jHhye8d
         u7FQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CfjUjEIX;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j357Q3iHLhVKS8YXbSfFuFVWhllatIM0NBmc2iN5s+I=;
        b=sw9jzegKlf7fht0PCjh7xu3ptvFQMyWpfL4yzgC0GR35GEXuwQ9XE3WJqvHGIWG3wd
         vpqzKfpFfKTAGaRl/jEfg+4eW61crc1DERC9q0i6a5Cg0bmKC+GB7NVtO6orfh86PNKf
         eKtq6qzS2uQ625FTTRpqE1y8CUzSyAezfOB1o537QqVcmSDGhgrWU+kAQ9zLT2sv7T8/
         1qRr1gUjUd6TjgwHBMCjLibySuiYaRbhwiLkJ/sv4Lb8145dJoIjTdlcU4IbDWG4ZV9A
         N580nsMgogaJxPMPvcTllV/vCWsXqRPiPOtHv+B5yn0jj2wB2OCN3n1PR8hNtEWo+WTN
         iedQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j357Q3iHLhVKS8YXbSfFuFVWhllatIM0NBmc2iN5s+I=;
        b=hHdeL7czYk+kewjvK20chWrovIOUyTAMsMZZ4kGQFwIU0NzWMq5ZziFSV2cOep61JQ
         IC5gYbmM89yrB73pHK2kfiioUvYVO2P5IpWeiWzXFqgMmbbkE5i/siSessOWVlZjX85+
         jBxTxGK6aohoYnmilCVNdlJ7C00D0soSTkRNFQ6Fu5ShPnCJrcJ6bBKDINVEuYddmWkJ
         yPEJe1OyuJxyl4IuRUb1mtHI9d2AWcOviOuNxysHB/LYp7U32/jXO7ISDBs/PCJ+4xMU
         i+G2Y28GgmyblHalLh+aYJZ40sP48DidtiHVVcyqcGkJO7CuDtPkoIHTfxGaeL4fzXwz
         xnoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j357Q3iHLhVKS8YXbSfFuFVWhllatIM0NBmc2iN5s+I=;
        b=M3Lxt68rfJR9FptBvUvtiMnzwoAYrREoJuaF7j5I9kWmOqFdfUe0UYdP78rvZ4E3Dj
         clZQK900VNIC+WHuZixIC5ZAHMZkeogJEaysWRHNrTAqkW76HfGXr1JS4H6tUTXemt8n
         5aItG/iLDuBFtOzAYyaaExywlaxoXzWMgt1IInE58mwOiW08SRhM+y8llNZlZ/ncwblr
         fsNMdZ0UXrBL3RGvj8+oeWWGO325Zo/ZRXwVbc2VMoSH4XLapLLiDQ1/BxXUF7Pr0Vrr
         y5WRWY/DUKnU+NWN53+38oBISb+GxUq5c3r2NrIozRvO+8qbykatQIgOoodM0Xeix//H
         1lHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV8Ms6KtHQLqOjswxugryM+3bXqNNEAOKhK/DSTsWzq8LsLnfCI
	IrzrCDf27Cgz6cA3acTbI8o=
X-Google-Smtp-Source: APXvYqyVPnDj0DgQAdOL60Rsx36giy3D/hx0nd1paLjT7hfc6CEiCSvqDuQE8odB79HK9QW3Wwh25Q==
X-Received: by 2002:a2e:124b:: with SMTP id t72mr51366917lje.143.1564175996777;
        Fri, 26 Jul 2019 14:19:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5b91:: with SMTP id m17ls6281114lje.10.gmail; Fri, 26
 Jul 2019 14:19:55 -0700 (PDT)
X-Received: by 2002:a2e:85da:: with SMTP id h26mr7960979ljj.48.1564175995831;
        Fri, 26 Jul 2019 14:19:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564175995; cv=none;
        d=google.com; s=arc-20160816;
        b=uulTGbN0l3XRJRP3rhEc9QThI/aZ89movu+3QPAdKJizs6hBuoOtzoap5QaLOEgRR7
         qiof4Ef5UlMjsxpXo3pVaoktsOKunHokrmEZK0klvP8URqdN+xUJSiFY4bqXe6KtTF+/
         jw5a7TertCV442s7zy9dL+qu/oB5PZ1257epwsniEQpqWs57qceK8Se0KJMTERojSTcd
         lPPTStSz7VI9cvEPO0dAS71mlAgBKywy68LHsGJEqtY0rqOfuqfGbPZTT9v4Fu1pLmb7
         yzkyymEf4JZS1VGdDXrMy+TQB7b8Z+cAesvSY8zUJ3Qsfg/NnkFZ4CSb5xpiHONC8vPl
         YhRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EJ4jcCbbCaX8bSsgyjyBTjyhupWPsOIBLRvIrJhGCzc=;
        b=dsHTl/n/l0VLxdu0ld1OZC1iklEvJfMaNgRzLnlLNyR8eOHLMdf3vHKVG8HddPduLS
         nkLAcgPyV4ioIhU+zL6DPapzccjkem/XXD+IXt+06e0fvWkjzdmmSSikbyX5128gJUFB
         XmolgVmYLA3Wl3r6vI2JpQdtphOav5lYLPPKmoZxae+EpL9Yp2Org2v7OxNYHz5Umk+e
         2z0NmXzWft3b6XqfbudnUs2ijCzZVIxVqpq3tLgSI3f8FjmRdcUC6/mxHn/Cv8Wpyo+r
         C47GAwSWMaKoig5BxEehzkrJiAPJEAW552pm5sPCAWkFCy0a9QO3RMOPKSnMydcbV5Dn
         t9Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CfjUjEIX;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id q11si2651282ljg.2.2019.07.26.14.19.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 14:19:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id p17so55715352wrf.11
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jul 2019 14:19:55 -0700 (PDT)
X-Received: by 2002:a5d:4212:: with SMTP id n18mr100661786wrq.261.1564175995131;
 Fri, 26 Jul 2019 14:19:55 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
 <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com> <CA+icZUXYp=Jx+8aGrZmkCbSFp-cSPcoRzRdRJsPj4yYNs_mJQw@mail.gmail.com>
 <CA+icZUXsPRWmH3i-9=TK-=2HviubRqpAeDJGriWHgK1fkFhgUg@mail.gmail.com> <295d2acd-0844-9a40-3f94-5bcbb13871d2@fb.com>
In-Reply-To: <295d2acd-0844-9a40-3f94-5bcbb13871d2@fb.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 26 Jul 2019 23:19:44 +0200
Message-ID: <CA+icZUUe0QE9QGMom1iQwuG8nM7Oi4Mq0GKqrLvebyxfUmj6RQ@mail.gmail.com>
Subject: Re: next-20190723: bpf/seccomp - systemd/journald issue?
To: Yonghong Song <yhs@fb.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
	"bpf@vger.kernel.org" <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CfjUjEIX;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442
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

On Fri, Jul 26, 2019 at 11:10 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 7/26/19 2:02 PM, Sedat Dilek wrote:
> > On Fri, Jul 26, 2019 at 10:38 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >>
> >> Hi Yonghong Song,
> >>
> >> On Fri, Jul 26, 2019 at 5:45 PM Yonghong Song <yhs@fb.com> wrote:
> >>>
> >>>
> >>>
> >>> On 7/26/19 1:26 AM, Sedat Dilek wrote:
> >>>> Hi,
> >>>>
> >>>> I have opened a new issue in the ClangBuiltLinux issue tracker.
> >>>
> >>> Glad to know clang 9 has asm goto support and now It can compile
> >>> kernel again.
> >>>
> >>
> >> Yupp.
> >>
> >>>>
> >>>> I am seeing a problem in the area bpf/seccomp causing
> >>>> systemd/journald/udevd services to fail.
> >>>>
> >>>> [Fri Jul 26 08:08:43 2019] systemd[453]: systemd-udevd.service: Failed
> >>>> to connect stdout to the journal socket, ignoring: Connection refused
> >>>>
> >>>> This happens when I use the (LLVM) LLD ld.lld-9 linker but not with
> >>>> BFD linker ld.bfd on Debian/buster AMD64.
> >>>> In both cases I use clang-9 (prerelease).
> >>>
> >>> Looks like it is a lld bug.
> >>>
> >>> I see the stack trace has __bpf_prog_run32() which is used by
> >>> kernel bpf interpreter. Could you try to enable bpf jit
> >>>     sysctl net.core.bpf_jit_enable = 1
> >>> If this passed, it will prove it is interpreter related.
> >>>
> >>
> >> After...
> >>
> >> sysctl -w net.core.bpf_jit_enable=1
> >>
> >> I can start all failed systemd services.
> >>
> >> systemd-journald.service
> >> systemd-udevd.service
> >> haveged.service
> >>
> >> This is in maintenance mode.
> >>
> >> What is next: Do set a permanent sysctl setting for net.core.bpf_jit_enable?
> >>
> >
> > This is what I did:
>
> I probably won't have cycles to debug this potential lld issue.
> Maybe you already did, I suggest you put enough reproducible
> details in the bug you filed against lld so they can take a look.
>

I understand and will put the journalctl-log into the CBL issue
tracker and update informations.

Thanks for your help understanding the BPF correlations.

Is setting 'net.core.bpf_jit_enable = 2' helpful here?

Values :
0 - disable the JIT (default value)
1 - enable the JIT
2 - enable the JIT and ask the compiler to emit traces on kernel log.

Which files should LLD folks look at?

cd linux
 find ./ -name '*bpf*.o' | grep jit
./arch/x86/net/bpf_jit_comp.o

Compare the objdumps?

I have archived the full build-dirs of clang9+ld.bfd and clang9+ld.lld-9.

Thanks for your help!

- sed@ -

[1] https://sysctl-explorer.net/net/core/bpf_jit_enable/

> >
> > Jul 26 22:43:06 iniza kernel: BUG: unable to handle page fault for
> > address: ffffffffa8203370
> > Jul 26 22:43:06 iniza kernel: #PF: supervisor read access in kernel mode
> > Jul 26 22:43:06 iniza kernel: #PF: error_code(0x0000) - not-present page
> > Jul 26 22:43:06 iniza kernel: PGD 2cfa0e067 P4D 2cfa0e067 PUD
> > 2cfa0f063 PMD 450829063 PTE 800ffffd30bfc062
> > Jul 26 22:43:06 iniza kernel: Oops: 0000 [#3] SMP PTI
> > Jul 26 22:43:06 iniza kernel: CPU: 3 PID: 436 Comm: systemd-udevd
> > Tainted: G      D           5.3.0-rc1-7-amd64-cbl-asmgoto
> > #7~buster+dileks1
> > Jul 26 22:43:06 iniza kernel: Hardware name: LENOVO
> > 20HDCTO1WW/20HDCTO1WW, BIOS N1QET83W (1.58 ) 04/18/2019
> > Jul 26 22:43:06 iniza kernel: RIP: 0010:___bpf_prog_run+0x40/0x14f0
> > Jul 26 22:43:06 iniza kernel: Code: f3 eb 24 48 83 f8 38 0f 84 a9 0c
> > 00 00 48 83 f8 39 0f 85 8a 14 00 00 0f 1f 00 48 0f bf 43 02 48 8d 1c
> > c3 48 83 c3 08 0f b6
> >   33 <48> 8b 04 f5 10 2e 20 a8 48 83 f8 3b 7f 62 48 83 f8 1e 0f 8f c8 00
> > Jul 26 22:43:06 iniza kernel: RSP: 0018:ffffb3cec0327a88 EFLAGS: 00010246
> > Jul 26 22:43:06 iniza kernel: RAX: ffffb3cec0327b30 RBX:
> > ffffb3cec00d1038 RCX: 0000000000000000
> > Jul 26 22:43:06 iniza kernel: RDX: ffffb3cec0327b10 RSI:
> > 00000000000000ac RDI: ffffb3cec0327ab0
> > Jul 26 22:43:06 iniza kernel: RBP: ffffb3cec0327aa0 R08:
> > ffff9b33c94c0a00 R09: 0000000000000000
> > Jul 26 22:43:06 iniza kernel: R10: ffff9b33cfe14e00 R11:
> > ffffffffa77b8210 R12: 0000000000000000
> > Jul 26 22:43:06 iniza kernel: R13: ffffb3cec00d1000 R14:
> > 0000000000000000 R15: ffffb3cec0327ab0
> > Jul 26 22:43:06 iniza kernel: FS:  00007f7ac2d28d40(0000)
> > GS:ffff9b33d2580000(0000) knlGS:0000000000000000
> > Jul 26 22:43:06 iniza kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > Jul 26 22:43:06 iniza kernel: CR2: ffffffffa8203370 CR3:
> > 000000044f3ea006 CR4: 00000000003606e0
> > Jul 26 22:43:06 iniza kernel: Call Trace:
> > Jul 26 22:43:06 iniza kernel:  __bpf_prog_run32+0x44/0x70
> > Jul 26 22:43:06 iniza kernel:  ? security_sock_rcv_skb+0x3f/0x60
> > Jul 26 22:43:06 iniza kernel:  sk_filter_trim_cap+0xe4/0x220
> > Jul 26 22:43:06 iniza kernel:  ? __skb_clone+0x2e/0x100
> > Jul 26 22:43:06 iniza kernel:  netlink_broadcast_filtered+0x2df/0x4f0
> > Jul 26 22:43:06 iniza kernel:  netlink_sendmsg+0x34f/0x3c0
> > Jul 26 22:43:06 iniza kernel:  ___sys_sendmsg+0x315/0x330
> > Jul 26 22:43:06 iniza kernel:  ? seccomp_run_filters+0x54/0x110
> > Jul 26 22:43:06 iniza kernel:  ? filename_parentat+0x210/0x490
> > Jul 26 22:43:06 iniza kernel:  ? __seccomp_filter+0xf7/0x6e0
> > Jul 26 22:43:06 iniza kernel:  ? __d_alloc+0x159/0x1c0
> > Jul 26 22:43:06 iniza kernel:  ? kmem_cache_free+0x1e/0x5c0
> > Jul 26 22:43:06 iniza kernel:  ? fast_dput+0x73/0xb0
> > Jul 26 22:43:06 iniza kernel:  __x64_sys_sendmsg+0x97/0xe0
> > Jul 26 22:43:06 iniza kernel:  do_syscall_64+0x59/0x90
> > Jul 26 22:43:06 iniza kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> > Jul 26 22:43:06 iniza kernel: RIP: 0033:0x7f7ac3519914
> > Jul 26 22:43:06 iniza kernel: Code: 00 f7 d8 64 89 02 48 c7 c0 ff ff
> > ff ff eb b5 0f 1f 80 00 00 00 00 48 8d 05 e9 5d 0c 00 8b 00 85 c0 75
> > 13 b8 2e 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 54 c3 0f 1f 00 41 54 41
> > 89 d4 55 48 89 f5 53
> > Jul 26 22:43:06 iniza kernel: RSP: 002b:00007ffcfb66a478 EFLAGS:
> > 00000246 ORIG_RAX: 000000000000002e
> > Jul 26 22:43:06 iniza kernel: RAX: ffffffffffffffda RBX:
> > 0000561e28ac9390 RCX: 00007f7ac3519914
> > Jul 26 22:43:06 iniza kernel: RDX: 0000000000000000 RSI:
> > 00007ffcfb66a4a0 RDI: 000000000000000d
> > Jul 26 22:43:06 iniza kernel: RBP: 0000561e28acd210 R08:
> > 0000561e28990140 R09: 0000000000000002
> > Jul 26 22:43:06 iniza kernel: R10: 0000000000000000 R11:
> > 0000000000000246 R12: 0000000000000000
> > Jul 26 22:43:06 iniza kernel: R13: 0000000000000000 R14:
> > 000000000000005e R15: 00007ffcfb66a490
> > Jul 26 22:43:06 iniza kernel: Modules linked in: nfsd auth_rpcgss
> > nfs_acl lockd grace i2c_dev parport_pc ppdev lp parport sunrpc
> > efivarfs ip_tables x_tables autofs4 ext4 crc32c_generic mbcache crc16
> > jbd2 btrfs zstd_decompress zstd_compress algif_skcipher af_alg sd_mod
> > uas usb_storage scsi_mod hid_generic usbhid hid dm_crypt dm_mod raid10
> > raid456 async_raid6_recov async_memcpy async_pq async_xor async_tx xor
> > raid6_pq libcrc32c raid1 raid0 multipath linear md_mod
> > crct10dif_pclmul crc32_pclmul crc32c_intel ghash_clmulni_intel
> > aesni_intel i915 intel_lpss_pci nvme aes_x86_64 glue_helper
> > i2c_algo_bit crypto_simd cryptd xhci_pci psmouse e1000e drm_kms_helper
> > xhci_hcd i2c_i801 nvme_core intel_lpss drm usbcore thermal wmi video
> > button
> > Jul 26 22:43:06 iniza kernel: CR2: ffffffffa8203370
> > Jul 26 22:43:06 iniza kernel: ---[ end trace 312670b063bd0391 ]---
> > Jul 26 22:43:06 iniza kernel: RIP: 0010:___bpf_prog_run+0x40/0x14f0
> > Jul 26 22:43:06 iniza kernel: Code: f3 eb 24 48 83 f8 38 0f 84 a9 0c
> > 00 00 48 83 f8 39 0f 85 8a 14 00 00 0f 1f 00 48 0f bf 43 02 48 8d 1c
> > c3 48 83 c3 08 0f b6 33 <48> 8b 04 f5 10 2e 20 a8 48 83 f8 3b 7f 62 48
> > 83 f8 1e 0f 8f c8 00
> > Jul 26 22:43:06 iniza kernel: RSP: 0018:ffffb3cec0253cb8 EFLAGS: 00010246
> > Jul 26 22:43:06 iniza kernel: RAX: ffffb3cec0253d60 RBX:
> > ffffb3cec00e9038 RCX: 0000000000000002
> > Jul 26 22:43:06 iniza kernel: RDX: ffffb3cec0253d40 RSI:
> > 00000000000000ac RDI: ffffb3cec0253ce0
> > Jul 26 22:43:06 iniza kernel: RBP: ffffb3cec0253cd0 R08:
> > 0000000000000000 R09: ffffb3cec0253f58
> > Jul 26 22:43:06 iniza kernel: R10: 0000000000000000 R11:
> > ffffffffa77b8210 R12: 000000007fff0000
> > Jul 26 22:43:06 iniza kernel: R13: ffffb3cec0253eb8 R14:
> > 0000000000000000 R15: ffffb3cec0253ce0
> > Jul 26 22:43:06 iniza kernel: FS:  00007f7ac2d28d40(0000)
> > GS:ffff9b33d2580000(0000) knlGS:0000000000000000
> > Jul 26 22:43:06 iniza kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > Jul 26 22:43:06 iniza kernel: CR2: ffffffffa8203370 CR3:
> > 000000044f3ea006 CR4: 00000000003606e0
> > Jul 26 22:43:06 iniza kernel: BUG: unable to handle page fault for
> > address: ffffffffa8203370
> > Jul 26 22:43:06 iniza kernel: #PF: supervisor read access in kernel mode
> > Jul 26 22:43:06 iniza kernel: #PF: error_code(0x0000) - not-present page
> > Jul 26 22:43:06 iniza kernel: PGD 2cfa0e067 P4D 2cfa0e067 PUD
> > 2cfa0f063 PMD 450829063 PTE 800ffffd30bfc062
> > Jul 26 22:43:06 iniza kernel: Oops: 0000 [#4] SMP PTI
> > Jul 26 22:43:06 iniza kernel: CPU: 0 PID: 437 Comm: systemd-udevd
> > Tainted: G      D           5.3.0-rc1-7-amd64-cbl-asmgoto
> > #7~buster+dileks1
> > Jul 26 22:43:06 iniza kernel: Hardware name: LENOVO
> > 20HDCTO1WW/20HDCTO1WW, BIOS N1QET83W (1.58 ) 04/18/2019
> > Jul 26 22:43:06 iniza kernel: RIP: 0010:___bpf_prog_run+0x40/0x14f0
> > Jul 26 22:43:06 iniza kernel: Code: f3 eb 24 48 83 f8 38 0f 84 a9 0c
> > 00 00 48 83 f8 39 0f 85 8a 14 00 00 0f 1f 00 48 0f bf 43 02 48 8d 1c
> > c3 48 83 c3 08 0f b6 33 <48> 8b 04 f5 10 2e 20 a8 48 83 f8 3b 7f 62 48
> > 83 f8 1e 0f 8f c8 00
> > Jul 26 22:43:06 iniza kernel: RSP: 0018:ffffb3cec032fa88 EFLAGS: 00010246
> > Jul 26 22:43:06 iniza kernel: RAX: ffffb3cec032fb30 RBX:
> > ffffb3cec00d1038 RCX: 0000000000000000
> > Jul 26 22:43:06 iniza kernel: RDX: ffffb3cec032fb10 RSI:
> > 00000000000000ac RDI: ffffb3cec032fab0
> > Jul 26 22:43:06 iniza kernel: RBP: ffffb3cec032faa0 R08:
> > ffff9b33cf34b000 R09: 0000000000000000
> > Jul 26 22:43:06 iniza kernel: R10: ffff9b33cf3a3400 R11:
> > ffffffffa77b8210 R12: 0000000000000000
> > Jul 26 22:43:06 iniza kernel: R13: ffffb3cec00d1000 R14:
> > 0000000000000000 R15: ffffb3cec032fab0
> > Jul 26 22:43:06 iniza kernel: FS:  00007f7ac2d28d40(0000)
> > GS:ffff9b33d2400000(0000) knlGS:0000000000000000
> > Jul 26 22:43:06 iniza kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > Jul 26 22:43:06 iniza kernel: CR2: ffffffffa8203370 CR3:
> > 000000044724a001 CR4: 00000000003606f0
> > Jul 26 22:43:06 iniza kernel: Call Trace:
> > Jul 26 22:43:06 iniza kernel:  __bpf_prog_run32+0x44/0x70
> > Jul 26 22:43:06 iniza kernel:  ? prep_new_page+0x47/0x1a0
> > Jul 26 22:43:06 iniza kernel:  ? security_sock_rcv_skb+0x3f/0x60
> > Jul 26 22:43:06 iniza kernel:  sk_filter_trim_cap+0xe4/0x220
> > Jul 26 22:43:06 iniza kernel:  ? __skb_clone+0x2e/0x100
> > Jul 26 22:43:06 iniza kernel:  netlink_broadcast_filtered+0x2df/0x4f0
> > Jul 26 22:43:06 iniza kernel:  netlink_sendmsg+0x34f/0x3c0
> > Jul 26 22:43:06 iniza kernel:  ___sys_sendmsg+0x315/0x330
> > Jul 26 22:43:06 iniza kernel:  ? seccomp_run_filters+0x54/0x110
> > Jul 26 22:43:06 iniza kernel:  ? filename_parentat+0x210/0x490
> > Jul 26 22:43:06 iniza kernel:  ? __seccomp_filter+0xf7/0x6e0
> > Jul 26 22:43:06 iniza kernel:  ? __d_alloc+0x159/0x1c0
> > Jul 26 22:43:06 iniza kernel:  ? kmem_cache_free+0x1e/0x5c0
> > Jul 26 22:43:06 iniza kernel:  ? fast_dput+0x73/0xb0
> > Jul 26 22:43:06 iniza kernel:  __x64_sys_sendmsg+0x97/0xe0
> > Jul 26 22:43:06 iniza kernel:  do_syscall_64+0x59/0x90
> > Jul 26 22:43:06 iniza kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> > Jul 26 22:43:06 iniza kernel: RIP: 0033:0x7f7ac3519914
> > Jul 26 22:43:06 iniza kernel: Code: 00 f7 d8 64 89 02 48 c7 c0 ff ff
> > ff ff eb b5 0f 1f 80 00 00 00 00 48 8d 05 e9 5d 0c 00 8b 00 85 c0 75
> > 13 b8 2e 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 54 c3 0f 1f 00 41 54 41
> > 89 d4 55 48 89 f5 53
> > Jul 26 22:43:06 iniza kernel: RSP: 002b:00007ffcfb66a478 EFLAGS:
> > 00000246 ORIG_RAX: 000000000000002e
> > Jul 26 22:43:06 iniza kernel: RAX: ffffffffffffffda RBX:
> > 0000561e28aaa600 RCX: 00007f7ac3519914
> > Jul 26 22:43:06 iniza kernel: RDX: 0000000000000000 RSI:
> > 00007ffcfb66a4a0 RDI: 000000000000000e
> > Jul 26 22:43:06 iniza kernel: RBP: 0000561e28aaaac0 R08:
> > 0000561e28990140 R09: 0000000000000002
> > Jul 26 22:43:06 iniza kernel: R10: 0000000000000000 R11:
> > 0000000000000246 R12: 0000000000000000
> > Jul 26 22:43:06 iniza kernel: R13: 0000000000000000 R14:
> > 000000000000005d R15: 00007ffcfb66a490
> > Jul 26 22:43:06 iniza kernel: Modules linked in: nfsd auth_rpcgss
> > nfs_acl lockd grace i2c_dev parport_pc ppdev lp parport sunrpc
> > efivarfs ip_tables x_tables autofs4 ext4 crc32c_generic mbcache crc16
> > jbd2 btrfs zstd_decompress zstd_compress algif_skcipher af_alg sd_mod
> > uas usb_storage scsi_mod hid_generic usbhid hid dm_crypt dm_mod raid10
> > raid456 async_raid6_recov async_memcpy async_pq async_xor async_tx xor
> > raid6_pq libcrc32c raid1 raid0 multipath linear md_mod
> > crct10dif_pclmul crc32_pclmul crc32c_intel ghash_clmulni_intel
> > aesni_intel i915 intel_lpss_pci nvme aes_x86_64 glue_helper
> > i2c_algo_bit crypto_simd cryptd xhci_pci psmouse e1000e drm_kms_helper
> > xhci_hcd i2c_i801 nvme_core intel_lpss drm usbcore thermal wmi video
> > button
> > Jul 26 22:43:06 iniza kernel: CR2: ffffffffa8203370
> > Jul 26 22:43:06 iniza kernel: ---[ end trace 312670b063bd0392 ]---
> >
> > Full `journalctl -xb` attached.
> >
> > - Sedat -
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUe0QE9QGMom1iQwuG8nM7Oi4Mq0GKqrLvebyxfUmj6RQ%40mail.gmail.com.
