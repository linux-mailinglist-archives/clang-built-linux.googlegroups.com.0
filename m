Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBYUQ6DUQKGQEZTWKTTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 794C877794
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jul 2019 10:16:35 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id o9sf12152001ljg.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jul 2019 01:16:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564215395; cv=pass;
        d=google.com; s=arc-20160816;
        b=WFweEXbX8/dhjNc8MrgUnyby9cyUGO4qSoeyADzv0pgoh3C+gjauOW5g1LAU2aShKU
         f/DQeyO13Ha4+v6VarwmRpCuiE7tmOGSjEBP39lkfeDsMhPDwuYfHNVfoZOBN2G7WyMv
         tCsjby1ugvDTPSBlIX7ky3wtWkLhEQIagmEMgAHih7D2cON2vXpTBn6FsBQmfn+FkL2T
         w3v0JqtEH/QhJHbHle4GZclWrRZIXO4b1xazWxYJvoaoR7qSikGKAyka7P92J5tnxwZv
         ZFcg1N8WqD1oKGvJUPOHHqXNkCqc7LqVI10SRFw2ONK0wtVKY0sVxVm+6qVrRA4D7KgT
         alUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=bdCBCBiuYsKDvdy9NefMRWbMKsyuDATwn1UnXdrnSJo=;
        b=Vr6H8G8XRm62OcjcSyPD+qjgydxY95XKb/Xdsc8qs/DHipedZVj9Zn7nNt8fv2bHng
         XgD6ce/MNVB7Wm0IaRIvtCMLoxYmc4f0Ou85r0wfwH3Bweswqv9Ndo0j4VC3/zBZf9Gn
         Q2m76I1lnsPLY6aWipm7fVzUoM4oeRjBnVetBpgnhYXgkeoRWM9oFkbZKFFJF7GrJYAx
         xOPO9Iz9t6lggoibDXbDpdEwA4v/PMaBnha1HZLBffiZd5/Z7iSrexl/KTzift1Go5gl
         2MZx1WjWk4iPELunk33DjBM6YpkuH28Dfi8ZDWtWzvhlY0pkBO/qFTuSWi0uGHCyAkTl
         6eNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QEXihd9u;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bdCBCBiuYsKDvdy9NefMRWbMKsyuDATwn1UnXdrnSJo=;
        b=fjQrcKoZyazwHzAnX/tPHJiKzdYzAUYULlrDbWqc8onFewqvj237tvfnjqjFXS7/xA
         PnL3MupBHjPVRIA53nY1IJSr3OYGf0+otNw8tY7mJBO/g0XIQL2nXKBlPCD/dwVuin8s
         IKbwKPm7al1l5YV+x5a0SOWC/zG3xsBKumqLpKX9o0us9I2gZiZrIun3peoz3eQQIPUg
         dLB/5nZhMgwAZE6l5gDG+xQrxr3llMIPUYfoekokzl15INo8DUSGK1jqIVozoGhDpVRj
         qv6Qrl6QZjcOOsJzhkzMaXVUHwxfjVtzzk+D9ByK/TTXfoJDvzxJgYtybCbWYVOcFJ9n
         Bgpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bdCBCBiuYsKDvdy9NefMRWbMKsyuDATwn1UnXdrnSJo=;
        b=Gx4lO4Po8KfZJeecMdG0JKzYre1eJZQnZ46FMFLNmhWuyDciRvktLoOM+nFF9+nmwh
         vqFNFbEn9gFJJ6w1dlW1R+gZu0gIphRMLYfw8I06O952bHt5uzyU83pTG4kEdi+Odq5i
         Yu/N/5r9PQPktRdX9n8RNlEmIiiJ30adxe8bBAK4j+M9gTvd2U4id1H0egud3b/lg+rb
         EA8mWTHypXijPAYwrzfQOQQyMFRhAhkN712qb7J4Z+rZLyN+d16CUedtYvN3pfHVkuh9
         8BAxxFV5xR29Q34E4El5JZmRZwZS+ADxCFhAyKiPI1Zmq0/cca6r7rN9Gq7fw7WFiNpv
         Sv/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bdCBCBiuYsKDvdy9NefMRWbMKsyuDATwn1UnXdrnSJo=;
        b=K81jHxs9iPYgQaDaDFWdmvbJrxYSZ7Uf3FjkQWdnPK6aEraLIoR5AS2uOrov6V9TZQ
         1XQvn0/yKyGnysHIwkylauhNNmR3EPD59j5aUt6VMCna8s4i1gJ/TmKu96TeXtIua0Zb
         qCQ1OLmF/KANJobdroWU++FUES7yxwTGC/JI09+Tp6xFfMYS4ZprAuDXcGwZcrkdrSvT
         cO/ta1qmELLFehNH68PjUX8HUQ9Km+69jM5EwbG7WpVd4ML18PodGCDyHwM17J19ulnf
         ynCQG3X+mPx/Yg21dMwV3srbXr+ZBBXvY1G81qH6qZ7DR7SERNR2EUT8PRDXStlw3rtq
         6p7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUxmiozw9JtJjhfJ9R0o5Gg78hP0JxPtPNgLaA4GC0pORkXYz6P
	6pJ0VNYtmaj1fQddTEEpdT4=
X-Google-Smtp-Source: APXvYqz4R+gm2qi435NSJvJHyeBjAUCqWk3PXJzIdWxoyY6D0QUyD6MFZLTaIVyKLZhqCC3Z4qCEjw==
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr14987324ljs.44.1564215395025;
        Sat, 27 Jul 2019 01:16:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:640f:: with SMTP id y15ls4595896lfb.14.gmail; Sat, 27
 Jul 2019 01:16:34 -0700 (PDT)
X-Received: by 2002:a19:4a50:: with SMTP id x77mr2693021lfa.91.1564215394389;
        Sat, 27 Jul 2019 01:16:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564215394; cv=none;
        d=google.com; s=arc-20160816;
        b=JOenEwjV9TqTG+mh7kJMH/M/x1K1PmsXZ78dNeA2PbWh69kcfuNBCEdbEgmVVsS2N+
         R7Hpdx9+2wHrEdLewglN7wnCXAolMrDvThEPjbI6dxJuDpmx5BhhEgkulnAIF4mF7UCc
         dDlnLe8hCO+GPXIhpHqU7jnEdKLrlEVQHvElb2xBqJg8yfvV278IYOaW9bhnOU2RlnZZ
         v00/YS8+XdMl0RvrSZS630F15MzAMrKrYMOwK3lig6gLDKRdE1RkDYdPQkEaXGTaUYWM
         CCOnWhigyyntIogWKwegQGJmXrbjEn0h1C2Ryd/URiOIHKkvLME365EKapL+orzQOjuR
         QHiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=76rL5iz1eRzr5KitnsEreILjrU7y5lITzKiCAHJ8VEY=;
        b=moXBtUxEkd+R/wH7WbNjttBCJe8Pw28BouHHpFG7kCAtbpe6hG0mPiPOHO+6nmeAMc
         iOrZssm+xCcpfOYATwZm+NCet2E6G5VYMRYWoM9JsezPS9rH9+ZJ2IGhuouaXHDbQga9
         d0rWGTxNuya/eOCA4eY1DtllokDddlcnVSYfPjNSdaxl5WDX9Le2HeIjWU6ubWrzKWKn
         YS4miy1Z8wMifFee72b8sGqKj5fNM0NhfQe35OeRBQSBAyuDPIAyCCJOEpBG0yEr+z1g
         X+RA/LWd+YtdzR3pQ3zvgatY2p6InXN0lCRYS0lETaOy1xOtQUKaGH3mF0FFTbeW/lZf
         JYeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QEXihd9u;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s14si3111215ljg.4.2019.07.27.01.16.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Jul 2019 01:16:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id n9so56739705wru.0
        for <clang-built-linux@googlegroups.com>; Sat, 27 Jul 2019 01:16:34 -0700 (PDT)
X-Received: by 2002:a5d:498f:: with SMTP id r15mr100608236wrq.353.1564215393799;
 Sat, 27 Jul 2019 01:16:33 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
 <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com> <CA+icZUXYp=Jx+8aGrZmkCbSFp-cSPcoRzRdRJsPj4yYNs_mJQw@mail.gmail.com>
 <CA+icZUXsPRWmH3i-9=TK-=2HviubRqpAeDJGriWHgK1fkFhgUg@mail.gmail.com>
 <295d2acd-0844-9a40-3f94-5bcbb13871d2@fb.com> <CA+icZUUe0QE9QGMom1iQwuG8nM7Oi4Mq0GKqrLvebyxfUmj6RQ@mail.gmail.com>
 <CAADnVQLhymu8YqtfM1NHD5LMgO6a=FZYaeaYS1oCyfGoBDE_BQ@mail.gmail.com> <CA+icZUXGPCgdJzxTO+8W0EzNLZEQ88J_wusp7fPfEkNE2RoXJA@mail.gmail.com>
In-Reply-To: <CA+icZUXGPCgdJzxTO+8W0EzNLZEQ88J_wusp7fPfEkNE2RoXJA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 27 Jul 2019 10:16:21 +0200
Message-ID: <CA+icZUWVf6AK3bxfWBZ7iM1QTyk_G-4+1_LyK0jkoBDkDzvx4Q@mail.gmail.com>
Subject: Re: next-20190723: bpf/seccomp - systemd/journald issue?
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: Yonghong Song <yhs@fb.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QEXihd9u;       spf=pass
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

On Sat, Jul 27, 2019 at 9:36 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sat, Jul 27, 2019 at 4:24 AM Alexei Starovoitov
> <alexei.starovoitov@gmail.com> wrote:
> >
> > On Fri, Jul 26, 2019 at 2:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Fri, Jul 26, 2019 at 11:10 PM Yonghong Song <yhs@fb.com> wrote:
> > > >
> > > >
> > > >
> > > > On 7/26/19 2:02 PM, Sedat Dilek wrote:
> > > > > On Fri, Jul 26, 2019 at 10:38 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >>
> > > > >> Hi Yonghong Song,
> > > > >>
> > > > >> On Fri, Jul 26, 2019 at 5:45 PM Yonghong Song <yhs@fb.com> wrote:
> > > > >>>
> > > > >>>
> > > > >>>
> > > > >>> On 7/26/19 1:26 AM, Sedat Dilek wrote:
> > > > >>>> Hi,
> > > > >>>>
> > > > >>>> I have opened a new issue in the ClangBuiltLinux issue tracker.
> > > > >>>
> > > > >>> Glad to know clang 9 has asm goto support and now It can compile
> > > > >>> kernel again.
> > > > >>>
> > > > >>
> > > > >> Yupp.
> > > > >>
> > > > >>>>
> > > > >>>> I am seeing a problem in the area bpf/seccomp causing
> > > > >>>> systemd/journald/udevd services to fail.
> > > > >>>>
> > > > >>>> [Fri Jul 26 08:08:43 2019] systemd[453]: systemd-udevd.service: Failed
> > > > >>>> to connect stdout to the journal socket, ignoring: Connection refused
> > > > >>>>
> > > > >>>> This happens when I use the (LLVM) LLD ld.lld-9 linker but not with
> > > > >>>> BFD linker ld.bfd on Debian/buster AMD64.
> > > > >>>> In both cases I use clang-9 (prerelease).
> > > > >>>
> > > > >>> Looks like it is a lld bug.
> > > > >>>
> > > > >>> I see the stack trace has __bpf_prog_run32() which is used by
> > > > >>> kernel bpf interpreter. Could you try to enable bpf jit
> > > > >>>     sysctl net.core.bpf_jit_enable = 1
> > > > >>> If this passed, it will prove it is interpreter related.
> > > > >>>
> > > > >>
> > > > >> After...
> > > > >>
> > > > >> sysctl -w net.core.bpf_jit_enable=1
> > > > >>
> > > > >> I can start all failed systemd services.
> > > > >>
> > > > >> systemd-journald.service
> > > > >> systemd-udevd.service
> > > > >> haveged.service
> > > > >>
> > > > >> This is in maintenance mode.
> > > > >>
> > > > >> What is next: Do set a permanent sysctl setting for net.core.bpf_jit_enable?
> > > > >>
> > > > >
> > > > > This is what I did:
> > > >
> > > > I probably won't have cycles to debug this potential lld issue.
> > > > Maybe you already did, I suggest you put enough reproducible
> > > > details in the bug you filed against lld so they can take a look.
> > > >
> > >
> > > I understand and will put the journalctl-log into the CBL issue
> > > tracker and update informations.
> > >
> > > Thanks for your help understanding the BPF correlations.
> > >
> > > Is setting 'net.core.bpf_jit_enable = 2' helpful here?
> >
> > jit_enable=1 is enough.
> > Or use CONFIG_BPF_JIT_ALWAYS_ON to workaround.
> >
> > It sounds like clang miscompiles interpreter.

Just to clarify:
This does not happen with clang-9 + ld.bfd (GNU/ld linker).

> > modprobe test_bpf
> > should be able to point out which part of interpreter is broken.
>
> Maybe we need something like...
>
> "bpf: Disable GCC -fgcse optimization for ___bpf_prog_run()"
>
> ...for clang?
>

Not sure if something like GCC's...

-fgcse

Perform a global common subexpression elimination pass. This pass also
performs global constant and copy propagation.

Note: When compiling a program using computed gotos, a GCC extension,
you may get better run-time performance if you disable the global
common subexpression elimination pass by adding -fno-gcse to the
command line.

Enabled at levels -O2, -O3, -Os.

...is available for clang.

I tried with hopping to turn off "global common subexpression elimination":

diff --git a/arch/x86/net/Makefile b/arch/x86/net/Makefile
index 383c87300b0d..92f934a1e9ff 100644
--- a/arch/x86/net/Makefile
+++ b/arch/x86/net/Makefile
@@ -3,6 +3,8 @@
 # Arch-specific network modules
 #

+KBUILD_CFLAGS += -O0
+
 ifeq ($(CONFIG_X86_32),y)
         obj-$(CONFIG_BPF_JIT) += bpf_jit_comp32.o
 else

Still see...
BROKEN: test_bpf: #294 BPF_MAXINSNS: Jump, gap, jump, ... jited:0

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWVf6AK3bxfWBZ7iM1QTyk_G-4%2B1_LyK0jkoBDkDzvx4Q%40mail.gmail.com.
