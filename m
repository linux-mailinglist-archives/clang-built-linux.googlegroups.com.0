Return-Path: <clang-built-linux+bncBC2ORX645YPRBAPQU7WQKGQESGHQV4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EDCDCCE8
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:36:03 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id y189sf6220405qkb.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:36:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571420162; cv=pass;
        d=google.com; s=arc-20160816;
        b=n2lFynxT1J3zzcTokSVvVxjAziIH5j0bxskjRUkEMsbAgoyTsHSJz6GDSVk/1uIpKj
         vGWq2XisA8G8zhFMb9pRlUjwPCMwgdbotSf9zXe8o1zEIR+5Pe6NwyVqtcwEW2T75MBf
         6hzbX5uLfUoGBcaPiAYY4832HTIJL3tnWnVUUbvkS/jkpBRC2A1T2ym1jgl50s+7Y+ON
         eQkKacVbByc79msKgbHLVCVXqGWuB/uy1P0MmQvgo3RNHDfmNG2O6wmb/Uq+7Gs3OBIy
         cTg1L8trIRRPMgRNSKVyLL1L407eiEvv+PfLXCjc7vXjo+tZupy4hUKjWThHUbudF/c1
         g8Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2N1jRh9J0om2gXuUwbP0Hn7TpdAcMTpl9o6V/P0JmCE=;
        b=AM2e02aeN6HdbYdebWYOjE/UjoUz14qHUxRgCByfo1Ao/YRz6CwfO1cfcgvlmeJHwU
         wnOIOzA8f/A0uh3bnB5f+MPfiDSCApgt+8D/s2MaiLMLB3GnrU3CWO23Nh+ZUCQ8t+D3
         jvOFqBTdHOGXTNJ8bMMaEr7CwqVeqv4XSaLhHcFFw30X5SCh2pJNW9BkJ4X06jaNBMHV
         XSU9DiSnSOgHybFEZyLzRoeLw94widaRuu3nFWRHW0Lxk8Gtru89ZcSPfDwbDDsAOe3q
         jDD40Ykf8hY1on7qYMN+6he/sIvW7kYBorIxcNMvyYC9/MM357XlC84gGtAWaAd50LQl
         CXbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rqUeUBF2;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2N1jRh9J0om2gXuUwbP0Hn7TpdAcMTpl9o6V/P0JmCE=;
        b=M6OktjzCt5FAb5CA3UW6D5BVVpCnUwxzdl5UUgOsBSdFvdpedDjXG3wq3vm3f+OWVS
         qz9Qf7vIeTSXi7QF3kUYaFTRydl+j1Ifcz+8P/ihvrZJEQAB5VbwM6fJYyn2qN5FHdeR
         /1woEU3t2iWPOwqjgiYAMsKAqow0NNI28+oNvQis/8gFAd9B7Yq2ULvpNU3uX2GaDIu5
         zvAj2WunHm0PAsyfzIX/50u7IkJn/x80AWWQ9ITOaD+1WqRv8shhtmACAmSPGxluOvqT
         mlwhL17NEov7+HU2E12p/bDbUWEadismMnpLfwUzgHd4Gl/im4f/G0KOT1gwb0sbJ0qX
         S+pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2N1jRh9J0om2gXuUwbP0Hn7TpdAcMTpl9o6V/P0JmCE=;
        b=MNdY8LtNuCnlSftUJO8iaC3/eX0Fzy4zFwj7VpxcrZVMhh48pR8+SR0raU8e28SlFn
         l7+w5RJ8VVlangnsz8eXAXIlYL07hIZz3TcJ+svUXUk96T9uxNlpArgHtgaNdnJiqhK2
         eslWRddkdPN5m/sVf+WuBzcV8jlnxNJjydxr0qUDFYSYJsWqpvqPLIBwMSaOBekqsdVi
         icdIZO2xFZyMCVZkPyuyaEl8iu8uV0Q66vCNNjSpzWtSZjU3x5DFAwFTj3f8NR0JBsVp
         nVtP1iG2lBf4p64sNUdPR6nuuIfaoFsyHkOuuV2Xx1uTd2j8e2YDY3Bkr34ZIWNAUe1D
         gY/A==
X-Gm-Message-State: APjAAAXgypOCX+M+io+m5tGxxK6+Ac91YBKseJvqYaT/chM//f9UUeyG
	NCEa/tSFjbQzLQz31LItqD4=
X-Google-Smtp-Source: APXvYqzFhVMjGwOBezoebPXNKxmIDvmmAOb+FSfcJ4/503MSCjVNFND1L74U42dGFG2dJXZFl8Tk8g==
X-Received: by 2002:a0c:c15d:: with SMTP id i29mr10765583qvh.5.1571420161951;
        Fri, 18 Oct 2019 10:36:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3a24:: with SMTP id n33ls2142590qte.6.gmail; Fri, 18 Oct
 2019 10:36:01 -0700 (PDT)
X-Received: by 2002:ac8:682:: with SMTP id f2mr11281429qth.149.1571420161684;
        Fri, 18 Oct 2019 10:36:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571420161; cv=none;
        d=google.com; s=arc-20160816;
        b=A7bKOw2bPZfnPoXBeoFhBleRKCIFiVkpf3mfrMwxblTV22yRttVbhrSNSVrBUluygB
         r8ogSwYWarDDAEhAj5SJMI+2RHaFPONtc/eOp6NUqkyAD3A3DVC7K2dhQ+v46y6IXdmv
         aqX5mFO5tIeMO8Rawidc8hg5T822AfZL84Yw+zCw/v1a2ZhQJUUrii7QLbT0VMmWukN9
         0JVZmsNVuTH3oZ+uX2ZwvTKyxUiJdxhk8V5KpPu993/+mj9ysSaAU56tWDqTNBYkopWm
         pJAoWcdoxTYDSoN2tGJ6VU+/kSxHE5pH3gH4iE5oufbo7Cz4Vvm+TfmTbo7ET21OVouy
         grKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=X/WE+Ltkav02W5Zb5upG5+z14WBcxmzY6UajsHAAkG8=;
        b=GEHyFMd5N6fz9WM3WS/NYZtxJzysQtoZ/WpdHPd3TNRQCbaK46NpyOviInXzAWHQwW
         xgBzZ6/59ocvrnUhjGODbZ0YtiuU3OHMd2Cv/ZfC9WmCutcls1IQanio63ECJi+cMNDF
         coGAofSG3HzQ4C1EVGdHNbZPJzzRtec9jXoxJa9+tZEUuKEeE7MEB2ssCJHdmY3UMlzM
         wmoN/HlYaBCVq9aYlqywdcegu3FY0vGqTT20K4AqHXcW4XKmASb98/cMzNzoW0fUvZar
         xtvNMOOT42kQGUta69kI9pw8G7UJgmkMjCFUkO4LTHElLgYwm13m6eN5OZ8TTtoNuo5c
         E2CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rqUeUBF2;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com. [2607:f8b0:4864:20::a42])
        by gmr-mx.google.com with ESMTPS id l4si369204qtl.1.2019.10.18.10.36.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:36:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42 as permitted sender) client-ip=2607:f8b0:4864:20::a42;
Received: by mail-vk1-xa42.google.com with SMTP id s72so1542849vkh.5
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 10:36:01 -0700 (PDT)
X-Received: by 2002:a1f:a8c8:: with SMTP id r191mr6141200vke.35.1571420160894;
 Fri, 18 Oct 2019 10:36:00 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-19-samitolvanen@google.com> <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
 <20191018172309.GB18838@lakrids.cambridge.arm.com>
In-Reply-To: <20191018172309.GB18838@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 10:35:49 -0700
Message-ID: <CABCJKue27Aba_MJqB68Bh282zyL=LSQSBXV5TAb-NfsOAqJRnQ@mail.gmail.com>
Subject: Re: [PATCH 18/18] arm64: implement Shadow Call Stack
To: Mark Rutland <mark.rutland@arm.com>
Cc: Jann Horn <jannh@google.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	kernel list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rqUeUBF2;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Oct 18, 2019 at 10:23 AM Mark Rutland <mark.rutland@arm.com> wrote:
> I think scs_save() would better live in assembly in cpu_switch_to(),
> where we switch the stack and current. It shouldn't matter whether
> scs_load() is inlined or not, since the x18 value _should_ be invariant
> from the PoV of the task.

Note that there's also a call to scs_save in cpu_die, because the
current task's shadow stack pointer is only stored in x18 and we don't
want to lose it.

> We just need to add a TSK_TI_SCS to asm-offsets.c, and then insert a
> single LDR at the end:
>
>         mov     sp, x9
>         msr     sp_el0, x1
> #ifdef CONFIG_SHADOW_CALL_STACK
>         ldr     x18, [x1, TSK_TI_SCS]
> #endif
>         ret

TSK_TI_SCS is already defined, so yes, we could move this to
cpu_switch_to. I would still prefer to have the overflow check that's
in scs_thread_switch though.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKue27Aba_MJqB68Bh282zyL%3DLSQSBXV5TAb-NfsOAqJRnQ%40mail.gmail.com.
