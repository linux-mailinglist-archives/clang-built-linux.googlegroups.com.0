Return-Path: <clang-built-linux+bncBCMIZB7QWENRBM6PVX5QKGQEO5UZCVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF5D275B7D
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 17:20:20 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id w32sf245622qvw.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 08:20:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600874419; cv=pass;
        d=google.com; s=arc-20160816;
        b=MVK5aAO2ZvEAFHwKmdbCmy/fYJW7h/0wjKcko8N6LIRzrta8lwEUhnkFtFDZtNNUv4
         0zK8UYP2RZH66TXkVjxWki5x2mnHp3jyjiNMtYxN+Ck9FzFK0sVBZ1viySHrT8LAhg8a
         Ecq7PUb94txL58HeBVXGvouIkW5yY5KVI7aHOlayuXC/EsVsOQylkBCgH1su2Aj5KX7b
         BN47T7+nL5GweUxyWuRWOj9PI52vMh3c4q2NjTgNrm30Fby2G1mh2NYcrrrq1awCzn2t
         sCkmi2KJA2XKlsluS0VoNLEe8Uc06s7JU9Z8UkXD0FWDo5rC6l9urhgcFJKmOaP9Yq7s
         PvVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FpStp4nDrb5rFOmrpUTACpCNOtuMRTtSowVgH1i6U9c=;
        b=nBoD+6EJ8IiGxOIaVm1MO6tHgKnCE8azDEkieNqwJvW4DDVySny9Y+31tF8dat8CcW
         F5zxATv0tv15Bc6U3hJxxztMJp6o3nuHDsQ16Ij2flqwE20orLwB4K3aKu1fM9JG3JDP
         QzEdKmJ3q2V4933AEbC058+AEc3HCK22Sw21dgceqEHvlFG7UIK6slocHqHfxCDViULt
         cV1NfAB38AJG96tQW9yUj/KnNFzgXUfq0BfAmP3FnFqyyU1ouhJQu9vNHq9lmPMACvWT
         J7VBlHjBHRXbpWN/ljME/zIA2SyKrpZBnniYf29gZ7lpguc8Me4NrAG4OUN+fgQzoTlF
         Ii5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G7Jy7Xyx;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FpStp4nDrb5rFOmrpUTACpCNOtuMRTtSowVgH1i6U9c=;
        b=agaI8cLpFALAV32HiWebUubheG94XBVGKVSKfmBSLvm9uqTNJR+8ZFYCwF2jOyU35B
         yuR/dhZnBQCBEyi65X8qPPlDWawf6vo6Xw5CX8LjykFFmYPL1Ja216r1KgP/bwVlitFd
         rRb12UMvXnYKCXCarxmp39TPvDFHGjPbW06awh+Nk2uHcY1BbWQ4PalM2vtg4VgyD4ZU
         1xEpcxQ6uHwPb0U67R/OkTMwscrrwIRnY8cuBGVuMCeqTFGbt31cktWWTC3jN4t9242h
         E15rhgtrtFtf6oLwRet3JIObT6IKhnuxp7hxg5oxH66fvgfnfBpZZua0qVbq0BPP9GD8
         SeNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FpStp4nDrb5rFOmrpUTACpCNOtuMRTtSowVgH1i6U9c=;
        b=JG0199n3V7Rof0XWA+sdalUKQn7metZjdRpqA2GYfLNWgHTBlQdzWhfxwFOoJ5RZR7
         0y+fjMNjJltUV+CeR3Z2Q0aNMPnQWLtwwI4jY7VYUM+LBUafsMK3BWD9iSGCl8QhHoPh
         hcH7zalwZaG1D9NuD9dfAZsyv2VEwLuu4e1KdFRdHRPOeKYVi/z2eYy4yx7E+g1yV3Qx
         Liqxqru/7aQciW0jpTyuaW0BjLR2x7C0BgbhP44LupRYNDAYTSf7127O0QLP6/rNGpCD
         bN+R8mqWdIilEs9vSLTq2cwY7i0U+IMnsTsWtj1f3PHhQoyBdVh0NFi7Ba8JYC9i6f1r
         Znkg==
X-Gm-Message-State: AOAM531Iu4aJXBsGWous/a+fnEF3UHbxnyIi47tFZqdIg0LEOHZoz6nd
	vI/dk4W3MS269YpBJvw1984=
X-Google-Smtp-Source: ABdhPJxgJ8YmY2raWQEiDIKgg99ZO899yzYWCNpmoPGcYnXyjWUDXWjNHruvTx8zZ43QYUO/RslR8g==
X-Received: by 2002:aed:3442:: with SMTP id w60mr575740qtd.100.1600874419182;
        Wed, 23 Sep 2020 08:20:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7c93:: with SMTP id y19ls131030qtv.3.gmail; Wed, 23 Sep
 2020 08:20:18 -0700 (PDT)
X-Received: by 2002:aed:3bdc:: with SMTP id s28mr582696qte.124.1600874418638;
        Wed, 23 Sep 2020 08:20:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600874418; cv=none;
        d=google.com; s=arc-20160816;
        b=xD7ye4dHiZC6r5UvEPiqmMNGLpEMMq5UbwTFm4lD0qGXKgdy1CF/Zyg95HFps3tsCY
         2dPZ496SEW5l6xmXSG1cEwycMb4HhYMmRIzqQ2BFxrycToOg/oSwT1NyIe9a0RHIR+eF
         EctKA8uJwHKnoMgD+aRXN5TnVt/GO/bDKYHASDUflIqw6omM/tlm5k9IepqboTnP4vqC
         6fg/8KMNqpgpmg3oqnX1eAZO7YbT1vBmMlERpuNngKyVVJhMeHTT90iH1KSpVi9IB4hi
         xBbylDClLVxbOKqNAXQ39Ybtr9QXLXaB6e1CQ1ZDdRBtm6+4sgaLNP/7Rpfif7D2sVq3
         CsBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lTeQf/iiIfTaaX6G70ASCG2VDP9jJjAH1D6D+4QSlxU=;
        b=ZiBA2df9z1odAMKl9PoE19KWOvrIYtgbDLjk0dJEfTwFTdMc46pnSYScWA4RZT177V
         0aV3y0gf4v/NliPciIiusWkvLz2F/NopxMAjsZcRipoSbMooDU6xNKqJ6D60A8dYVofs
         ogoIlpfx2a7nETM4WSUV3LelxywjOMEQCLpY2YN3an9Ub6DgIhMVs9mNCFZCQNSct9AR
         tilvA8UtFndG3ZiEGgJwhjt9sYjuU6XwsXoSxnhwiuxsna2TDx41jXf4NPrDaeQKEs4a
         Yvpp5I6zqhdWocUyWO+hbMz0lsbbxQleVBqY3OIIwXhyLB+4ZDkd4D3Rvk01bNuVyv8a
         H3gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G7Jy7Xyx;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id c40si13134qte.3.2020.09.23.08.20.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 08:20:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id h1so146584qvo.9
        for <clang-built-linux@googlegroups.com>; Wed, 23 Sep 2020 08:20:18 -0700 (PDT)
X-Received: by 2002:ad4:47cc:: with SMTP id p12mr403443qvw.26.1600874417945;
 Wed, 23 Sep 2020 08:20:17 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
 <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
 <20200921221336.GN5901@zn.tnic> <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
 <20200923090336.GD28545@zn.tnic> <CACT4Y+Y4-vqdv01ebyzhUoggUCUyvbhjut7Wvj=r4dBfyxLeng@mail.gmail.com>
 <20200923103431.GF28545@zn.tnic>
In-Reply-To: <20200923103431.GF28545@zn.tnic>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 23 Sep 2020 17:20:06 +0200
Message-ID: <CACT4Y+ayTBwBwsnV9Kp-vMQ=hgu9-r9g4qzAfd+HdQXX95PX9g@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G7Jy7Xyx;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f42
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Wed, Sep 23, 2020 at 12:34 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Wed, Sep 23, 2020 at 11:24:48AM +0200, Dmitry Vyukov wrote:
> > 3. Run syzkaller locally with custom patches.
>
> Let's say I wanna build the kernel with clang-10 using your .config and
> run it in a vm locally. What are the steps in order to reproduce the
> same workload syzkaller runs in the guest on the GCE so that I can at
> least try get as close as possible to reproducing locally?

It's a random fuzzing workload. You can get this workload by running
syzkaller locally:
https://github.com/google/syzkaller/blob/master/docs/linux/setup_ubuntu-host_qemu-vm_x86-64-kernel.md

The exact clang compiler syzbot used is available here:
https://github.com/google/syzkaller/blob/master/docs/syzbot.md#crash-does-not-reproduce

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BayTBwBwsnV9Kp-vMQ%3Dhgu9-r9g4qzAfd%2BHdQXX95PX9g%40mail.gmail.com.
