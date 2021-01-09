Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBBEA5H7QKGQENVF3QZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BC32F046E
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 00:45:09 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id w8sf20050441ybj.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 15:45:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610235908; cv=pass;
        d=google.com; s=arc-20160816;
        b=ux0qsVC3OiOFp+y03Lmp22qVZ9QIlurLDVFVY3js2qQ+hT5UAN3Xr2EDAwRejZPT+A
         r/3CGv2csxQoLDay74MQK5Djlid1aiC3xSQmZRrMdrzwRQKfCvqj+f+tE+1sl/nKUGyG
         FtpmhzcU0bUSoe4Tm6SJESM4tALF1ihq1bQ6ojvosqneRNzpVeCN7yRwCkaM2ktGraXB
         oKt9BTVfrptn07EnJ9b+XkiFocAvoKkS2OEZ/A9rqCwQiffzU6pZQGSokHXdWOZy6Uax
         +YF9xqNqaaLIzA5MmxNkAd7KJJj/0Bq5ve0L80khjOAZVHUsRguos9hjxTFgzFC+0wbz
         VAWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=5TlDbq4cDK8kKEyuI5cQWWny5D3HcWnA+cKgZlF+HRg=;
        b=hGhvD0Mj42H4ZQue2ZaE73GvrgzwmTfcxS00fp6JPOoRJj0wioXVJmi5SxvUKnBXzZ
         M+NIAB+v47mCgbqwWSBpjcYigcXXlwc5hKqsO1SqGHoYMS5pFq40QIoy/7YjwgmXgQXU
         OKoxCL5VmvaZzansj9UbtDJ6SLMSEqDVC3EWnWQ/2xXiH0FUACUu79Aqqu/dirReyXpJ
         aLj/vulZ0DcHWKFcal9g6TXUgimbg2+eE7DKO6RZOOgfnvt/jpKlCswqeXN0DYN7752R
         X0fDIpiMCQVUIKMOZY9A7n+rVhSEKrluMBOrG+TrRVkd7h+WSPxDa2zIK3XwW5HkWe9X
         7lIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UOX+83ms;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5TlDbq4cDK8kKEyuI5cQWWny5D3HcWnA+cKgZlF+HRg=;
        b=hftPymReZ5rT9BzpBLN791aITY0/6jXyx/kIxKeYZjb/U/0lC8zqb7fEUwegLzVaPw
         4IWi/+RdNkkUH2hS3C5tDm7BrEoCRsB5UvkLoCuybXcho08mLUcT79ea3cnt5I3GoJjh
         Y/IMA5slKtltlLS131/MEXbnG2FBMLofILJf4PNzv9YkJI/hjwe39WXwC91ENC8SeHMf
         cQAS9zm2rYLkTmYssildO64w3Egck+ggJIh9qYdfiXSZ1QFywio0/eg63aAAQVsglUE1
         I1HX5DgeRqQQ7IkqdxGnpm9dWors6tuL2DI6awZwa0FOMYQj1kRt6l3r8mi1ZQZlBVpo
         sMGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5TlDbq4cDK8kKEyuI5cQWWny5D3HcWnA+cKgZlF+HRg=;
        b=dZokXgytMQyPbAxAaMyULCep9u1PiFy56a9nae5AQvIkqtmh82E9cR4RS72VdcZZNn
         PtYBDsXYYy1kKdoyNw1QhcugZ3km28Qpd0+SY1hXP59c2HgvibmNhKgAkifIjfqC3+Ab
         +YnIfv28LCOlFlLPi6ZPZ0kjHo9dQQqDk1E5CL6PFJYGA0pF5dv99940UBDc0zfeKm6X
         iu+ElZPUZyrFz23eFe8NQxoDXbBfWTSVD8QtkU04eLvnMjfpAayFHMFHceDIvt4Qj8jQ
         RY5FkHREsKbC1JRw9tIIUvReCxzuX37x4NWgxKiq+g2j/FQ5l0mEX7jFa5MCSADSu8Gi
         rL5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5TlDbq4cDK8kKEyuI5cQWWny5D3HcWnA+cKgZlF+HRg=;
        b=ghR/uZiR86N8jgWuRqeoPLL+eb4LfvaofqluJyFpjE0YKLvVKhm3fGa76i/oCZogNm
         fTFh0hg/HMbgXVSM12zeo5lmke7HYuO4e1mdjk16L1Q3MgX02/apwEKsGjHVFi8gLzWd
         R3Er8Uey9bcD/JgnspdLppAOwE4icVeHqv9zPp7YmFPjsz5w5nig0hOQ49Ao+FWU62XO
         VbCnW8EcYvarUrdxfmspoEAYH80xh+mL80wsvx/0McVPf5yBjsGoFgvZTSmyFLkHtRgY
         a122yi4FWz5kzQc/YBez4Lkj94y6LJ4ZfIp87nqqCsQqijtdgjI1Y/8fJOVXOArf3RbZ
         s67w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qmcZIWL2K7rIhM73oreV8CruCXaW1sZ9M9r0hFh95VwLDMFKM
	huNc+MLvf2pYViYPjnic4ZI=
X-Google-Smtp-Source: ABdhPJxuIUFaXTe6P/m6WRuOlik8AOsGvnRv72NvSg+QJkl7HG3LaSYcGVuhON13CU2c5f301Uw0uw==
X-Received: by 2002:a25:d295:: with SMTP id j143mr16162067ybg.20.1610235908281;
        Sat, 09 Jan 2021 15:45:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:77cc:: with SMTP id s195ls7683491ybc.2.gmail; Sat, 09
 Jan 2021 15:45:07 -0800 (PST)
X-Received: by 2002:a25:af87:: with SMTP id g7mr13952565ybh.420.1610235907859;
        Sat, 09 Jan 2021 15:45:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610235907; cv=none;
        d=google.com; s=arc-20160816;
        b=MjKZbPnSxbhRqPMBAEEQUUVwGyoEttnqJ+W3VXi+dPRAy4m2dmCynyq96XRjszOmJt
         RNKfk64aXGhcV5U6VPbN/k7eVls2/N25L1fOZkGUidci2m0JwKJkPXIX4wfJxhsLPIHr
         VcVj3ELO2zcNJ16ypLZr1FpQjfUVTGW//iJmylrp/bKH+MCrpYxnc4dQ46T782iSx+cV
         PS/wrhiIBNDhzGq9/MvwAhT2m805UJmUJF2c3BxFcRurs01chZE0GwUtfYEbdIG2up5l
         upXeZuPa6K/XXEwgplNeMFGtE8FEnwluSp7ZdeHRGi+PwOy8/QyIbwMINZkqY1Igxab/
         SPKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+RrrtQj8SC/rvlP5LlORUe5YEU0RLqpKs9/GxE+Y/3s=;
        b=w4HRd5zkh/t7rYxJhdfmF7e64bDeJNeAHOgGQUKkMA8pJS8dyKHq+FUW3VZMPLCMc3
         7dwM/e3Y9FPLoZQ0VJGkUHz6sgEhyQZjU9Y54x44atuPpfuXroWxrQwtxtTxm2ugxXvq
         NhzUbI4AuJnWvH/b8qirKf0xyFRUQocXSXGNTuv/ZS2W4RZGyOQSq58jRhV+h3mBNSQN
         +M2msS88NCmwzlH6fq12mBSVX7bkl2Je5NRb4YG4I/GzeHPb5HC6YI+ESyOF7P5FdFUs
         +r3uZiEU9YwtsU/+s17Run5hlV59AiexCy3Iq7FTSytZUtyWG0n53blBseF37TlNomMy
         BdtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UOX+83ms;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id 23si1490682ybc.0.2021.01.09.15.45.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jan 2021 15:45:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Received: by mail-il1-x131.google.com with SMTP id t3so10294788ilh.9
        for <clang-built-linux@googlegroups.com>; Sat, 09 Jan 2021 15:45:07 -0800 (PST)
X-Received: by 2002:a92:c002:: with SMTP id q2mr10229657ild.186.1610235907552;
 Sat, 09 Jan 2021 15:45:07 -0800 (PST)
MIME-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <CA+icZUWYxO1hHW-_vrJid7EstqQRYQphjO3Xn6pj6qfEYEONbA@mail.gmail.com>
 <20210109153646.zrmglpvr27f5zd7m@treble> <CA+icZUUiucbsQZtJKYdD7Y7Cq8hJZdBwsF0U0BFbaBtnLY3Nsw@mail.gmail.com>
 <20210109160709.kqqpf64klflajarl@treble> <CA+icZUU=sS2xfzo9qTUTPQ0prbbQcj29tpDt1qK5cYZxarXuxg@mail.gmail.com>
 <20210109163256.3sv3wbgrshbj72ik@treble> <CA+icZUUszOHkJ8Acx2mDowg3StZw9EureDQ7YYkJkcAnpLBA+g@mail.gmail.com>
 <20210109170353.litivfvc4zotnimv@treble> <20210109170558.meufvgwrjtqo5v3i@treble>
In-Reply-To: <20210109170558.meufvgwrjtqo5v3i@treble>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 10 Jan 2021 00:44:54 +0100
Message-ID: <CA+icZUVS_CbbxG-V0RZxqxcY7E__QUrVxgC1VRmTLN4wrz=E5w@mail.gmail.com>
Subject: Re: [PATCH v9 00/16] Add support for Clang LTO
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UOX+83ms;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131
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

On Sat, Jan 9, 2021 at 6:06 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Sat, Jan 09, 2021 at 11:03:57AM -0600, Josh Poimboeuf wrote:
> > On Sat, Jan 09, 2021 at 05:45:47PM +0100, Sedat Dilek wrote:
> > > I tried merging with clang-cfi Git which is based on Linux v5.11-rc2+
> > > with a lot of merge conflicts.
> > >
> > > Did you try on top of cfi-10 Git tag which is based on Linux v5.10?
> > >
> > > Whatever you successfully did... Can you give me a step-by-step instruction?
> >
> > Oops, my bad.  My last three commits (which I just added) do conflict.
> > Sorry for the confusion.
> >
> > Just drop my last three commits:
> >
> > git fetch https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
> > git checkout -B tmp FETCH_HEAD
> > git reset --hard HEAD~~~
> > git fetch https://github.com/samitolvanen/linux clang-lto
> > git rebase --onto FETCH_HEAD 79881bfc57be
>
> Last one should be:
>
> git rebase --onto FETCH_HEAD 2c85ebc57b3e
>

Hi Josh,

as said I tried your latest changes on top of Linux v5.10.6 + cfi-5.10.
This reduces the objtool-warnings in vmlinux.o from 15 down to 2.

Without your latest changes:

$ grep 'vmlinux.o: warning: objtool:'
build-log_5.10.4-3-amd64-clang11-cfi.txt | wc -l
15

$ grep 'vmlinux.o: warning: objtool:'
build-log_5.10.4-3-amd64-clang11-cfi.txt
vmlinux.o: warning: objtool: wakeup_long64()+0x61: indirect jump found
in RETPOLINE build
vmlinux.o: warning: objtool: .text+0x408a: indirect jump found in
RETPOLINE build
vmlinux.o: warning: objtool: .text+0x40c5: indirect jump found in
RETPOLINE build
vmlinux.o: warning: objtool: .head.text+0x298: indirect jump found in
RETPOLINE build
vmlinux.o: warning: objtool: __switch_to_asm()+0x0: undefined stack state
vmlinux.o: warning: objtool: .entry.text+0xf91: sibling call from
callable instruction with modified stack frame
vmlinux.o: warning: objtool: .entry.text+0x16c4: unsupported
instruction in callable function
vmlinux.o: warning: objtool: .entry.text+0x15a4: redundant CLD
vmlinux.o: warning: objtool: do_suspend_lowlevel()+0x116: sibling call
from callable instruction with modified stack frame
vmlinux.o: warning: objtool: kretprobe_trampoline()+0x49: return with
modified stack frame
vmlinux.o: warning: objtool: machine_real_restart()+0x85: unsupported
instruction in callable function
vmlinux.o: warning: objtool: __x86_retpoline_rdi()+0x0: stack state
mismatch: cfa1=7+8 cfa2=-1+0
vmlinux.o: warning: objtool: .entry.text+0x48: stack state mismatch:
cfa1=7-8 cfa2=-1+0
vmlinux.o: warning: objtool: .entry.text+0x156d: stack state mismatch:
cfa1=7-8 cfa2=-1+0
vmlinux.o: warning: objtool: .entry.text+0x15fc: stack state mismatch:
cfa1=7-8 cfa2=-1+0

With your latest changes in <jpoimboe.git#objtool-vmlinux>:

$ grep 'vmlinux.o: warning: objtool:'
build-log_5.10.6-1-amd64-clang11-cfi.txt | wc -l
2

$ grep 'vmlinux.o: warning: objtool:' build-log_5.10.6-1-amd64-clang11-cfi.txt
vmlinux.o: warning: objtool: kretprobe_trampoline()+0x49: return with
modified stack frame
vmlinux.o: warning: objtool: machine_real_restart()+0x85: unsupported
instruction in callable function

Awesome.

If you need further information, please let me know.

Regards,
- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVS_CbbxG-V0RZxqxcY7E__QUrVxgC1VRmTLN4wrz%3DE5w%40mail.gmail.com.
