Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBW4E63UQKGQESYGB3LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id BE38D77F1D
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2019 13:09:15 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id j10sf25456617wre.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2019 04:09:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564312155; cv=pass;
        d=google.com; s=arc-20160816;
        b=BC8wDPnTnMfjxUjiIsjrBgh5IUxkX6diJxCqKhxs6g49nIicYWhbKsn/Toy1PvosaR
         xrBloBy37BKSGOcz8ICXokwWnEWcBEpALRJKUCENkkgFmlAnUuE4mTqwCYoPoxpfpMqD
         CgNfl7GqAzSxN42wY66t3H8x8rosCxgQqh1pYKH+/Ctx29HDhqn43J4TKU/WA0ci4q5s
         N1pPA5XQRtKh2aw0tusrIIX3h1nZVj7u/FKqwrCsZtV31HD2Xvp/TIAiw+RTTcfREVfY
         CckjyIsrKoUy3Y0wcwEre5RLT0A87XwWRn204WFwqd280ccv/4UNPGJ+yCLfIoe7w51D
         792A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Q3yXNq/mdCSP/dijQ+U4Wpt43aXvXsg2+RMlelU9LNY=;
        b=Wl83sWg6EkRD+5PBUQojiIZynzS4zRh8rKJaR4nlMU7jCmFWuKa+cs3hlnF1lAWhg+
         /iSyPUSvjxSkrEII4lRiSKbPGz1tujExMRhFm6dq9r8yCKpUfdupTuQzYfPuva/aCvEo
         kPNbmTrAPWXxSLHUAYXCXt22ac6vkupFSRXtQpsBXQXNe3ZUNYVXLQ/tGFd7nJ3xO9tQ
         RUO+OGi5dULxhZg778LnRGjK31iqrffd1ycpr9tLWFM9nu34OiqT9wVjWt0eKxx+nCfG
         QJl2uxWizQVyqjbMZnPEYFYmIvVf00hZKzFBDeTuprPSP76WSN7wAVTaONNovMfqHExR
         TQgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TRbQSGnn;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q3yXNq/mdCSP/dijQ+U4Wpt43aXvXsg2+RMlelU9LNY=;
        b=bEFSAjcsyBxPpfFFFk7wXi343FBUaPP82jO9rFQKhs63Kgf37F9VD7/MEwHnzZXfC/
         5/SSrxQQ88EKG7VTnu1fw5nGnzvIW91W0DSSxfJLIfGlyQE71U9Zq4hnbeWJ9+czkrV5
         ht5NGi/syfTByWkHc/MR6ODYzRRCC4tgoltbobzVR6WtqJHyEsplpZAHQWL0N7LkW5Wf
         RGIpVyPZeNdW9gCKleHX1yq20v9sVbWtHyaZK/W6sjsUnz+hXvfcZVvnraArsJ6O4efU
         P/UFnM1K5r5Chs2jKg8Qun8Gq0uTpHbhfX83eEtnoir0Y07CAlvF6r5FdkyBaKwfHhfe
         p/uA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q3yXNq/mdCSP/dijQ+U4Wpt43aXvXsg2+RMlelU9LNY=;
        b=Wb2sMslI8lg3CSOG0D/GsKlvRCJYcov/e5x8o4r9mn+62sUgNnLKHT/LzEeIokdk+r
         Glet//b5Do3UsVu3LInvAAL+ggYEq0o1L2JTAsAQ/7OCWdnHKJdJdorPNaEY3KjR1uOp
         K97EL7uvPGqVTXpDJREEF/z7yaIoyeCE2Srlwcd3nKl7S+yw22av0mnvbIIWXsnyRBct
         PmCpo2VZmySm08eRuuNd72valapwwn6PPVAQARGPg5hDUGsBgAmzoVjsu2j2D8K9Mc1d
         1MJMBfl8+9jidEg6VhNtWjEdnH2koVDWzo3Y1JuNeRDfr4QaWFX5zRT9KRG2hSGcqkHE
         2O8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q3yXNq/mdCSP/dijQ+U4Wpt43aXvXsg2+RMlelU9LNY=;
        b=MtuGI6AP3rV9I3QwyaXVS9aiDm/LpaqrjDTVskoBI23//bpjoCDWLWQ+vw8sq3UxY8
         D7M5uPw9xwgyERg46RAZXfNEdkazCeJ1G+mBcs7Gdcl6M1ThImXFVoXN0k/ed9srMJ39
         ownjEK419W2AqzNW0GnJkpagHHaR0eZ3Ia7LLAjpKzNXibWDi4pWpL62bdHk/QDH5Sy/
         EUvBDUadKAj1tGsTA5rn73wXLuVKGPOwYLdqJ/JYE6LJ2wp0yJ5BXr+5ga5kjx8yBpRO
         NGSRfgUD4xrd8iX4u4Ixde2skP7SGJwka4y3JGJ9SfpZuNronUYypRFsdZfDuncKmDJh
         0dmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU3RI5/QLe2YIgen5X2V5qDD51TtA9onpXaV9LVmkIGOliNkUkI
	69jrd0H+FDL2znq+DIFOPCk=
X-Google-Smtp-Source: APXvYqx17f4Uqo89WOxkYSq6cTJjYdrcxfxjcQ64yQ9OZ1FjcXJ4W79Gq+m/BjcwXH/Amnn4KCgt7g==
X-Received: by 2002:a5d:6a84:: with SMTP id s4mr36782567wru.125.1564312155421;
        Sun, 28 Jul 2019 04:09:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:bac4:: with SMTP id w4ls17344550wrg.13.gmail; Sun, 28
 Jul 2019 04:09:14 -0700 (PDT)
X-Received: by 2002:a5d:4e06:: with SMTP id p6mr32245671wrt.336.1564312154731;
        Sun, 28 Jul 2019 04:09:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564312154; cv=none;
        d=google.com; s=arc-20160816;
        b=UMHxgsQ2JCWAyhRYTNtwLtR5bpMl+TQoqaF0JpLrdY1DP26lhQ565t7keYiBzMx6wp
         kykpW/ZOgDy0lR1BsJ4NB7MIEvkF5eyL0lO+4QX/gOX3aBKh9P5DgQRF+ia/tqrgpEoE
         0ZIYAPjBXKsmRjX91zT5B7pYjHgAD6M1gJhs0HwcXIOjoEiW9E4CdRzrO4vna3rnRQHG
         kbTsUOyIyfKgnSCGQmfsh4zKRvRYAuEu9LGWULSCOOiyIwRhDT+zQOOSb07iO8/POfXS
         tIqN9xeSxwBV+6HFk78CPtoWMXgsB/Dn3s1XLGTg9fOEkf4a/gJMlxve4eFCWA7tzsgk
         OzyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=beL4mWA1iVeAECG6KDWGVS8O+3XLORAZj0ElPPmdem4=;
        b=N9TIVKJbSW2LMunBh50fZKb+IEgBpy7wSbccIOqOqtHgYjBLQVhTd3S2kfEaIc7DAv
         DKqRVemQSrqywY6gKlGkYbbMMw4Silc3ENSfjKvW2k8ISpzAy9mNsHmj51St3V40mN42
         s8D1pn4d1rmHA2rrdMZFOC6jUN4mIfyjrQ7fuAjfQGlsYaD3eDYDuVgNyY1QIV7EPVDj
         Zd7lyjyr/FyUi9IQ/EcCTBaWPFIWWPK4jWQfPMWZFwKpEDMS4CAfV00v2xcwNFmMb6PY
         dgWycQyvgSvwIjin6Cw5b3tzJXTZBSIkon+Gv+IV5F8R2FQ9nrAa5mavjXc7x3iD8tGN
         x1tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TRbQSGnn;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 60si1514252wra.2.2019.07.28.04.09.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Jul 2019 04:09:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id p13so58731674wru.10
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jul 2019 04:09:14 -0700 (PDT)
X-Received: by 2002:a5d:4212:: with SMTP id n18mr110877871wrq.261.1564312154314;
 Sun, 28 Jul 2019 04:09:14 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
 <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com> <CA+icZUXYp=Jx+8aGrZmkCbSFp-cSPcoRzRdRJsPj4yYNs_mJQw@mail.gmail.com>
 <CA+icZUXsPRWmH3i-9=TK-=2HviubRqpAeDJGriWHgK1fkFhgUg@mail.gmail.com>
 <295d2acd-0844-9a40-3f94-5bcbb13871d2@fb.com> <CA+icZUUe0QE9QGMom1iQwuG8nM7Oi4Mq0GKqrLvebyxfUmj6RQ@mail.gmail.com>
 <CAADnVQLhymu8YqtfM1NHD5LMgO6a=FZYaeaYS1oCyfGoBDE_BQ@mail.gmail.com>
 <CA+icZUXGPCgdJzxTO+8W0EzNLZEQ88J_wusp7fPfEkNE2RoXJA@mail.gmail.com> <934a2a0a-c3fb-fd75-b8a3-c1042d73ca0c@fb.com>
In-Reply-To: <934a2a0a-c3fb-fd75-b8a3-c1042d73ca0c@fb.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 28 Jul 2019 13:09:03 +0200
Message-ID: <CA+icZUVcvwKvAxv+doNYmGGmKnxSgc7DpozgnAwWgdVUpsvgtg@mail.gmail.com>
Subject: Re: next-20190723: bpf/seccomp - systemd/journald issue?
To: Yonghong Song <yhs@fb.com>
Cc: Alexei Starovoitov <alexei.starovoitov@gmail.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TRbQSGnn;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443
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

On Sat, Jul 27, 2019 at 7:08 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 7/27/19 12:36 AM, Sedat Dilek wrote:
> > On Sat, Jul 27, 2019 at 4:24 AM Alexei Starovoitov
> > <alexei.starovoitov@gmail.com> wrote:
> >>
> >> On Fri, Jul 26, 2019 at 2:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >>>
> >>> On Fri, Jul 26, 2019 at 11:10 PM Yonghong Song <yhs@fb.com> wrote:
> >>>>
> >>>>
> >>>>
> >>>> On 7/26/19 2:02 PM, Sedat Dilek wrote:
> >>>>> On Fri, Jul 26, 2019 at 10:38 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >>>>>>
> >>>>>> Hi Yonghong Song,
> >>>>>>
> >>>>>> On Fri, Jul 26, 2019 at 5:45 PM Yonghong Song <yhs@fb.com> wrote:
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>> On 7/26/19 1:26 AM, Sedat Dilek wrote:
> >>>>>>>> Hi,
> >>>>>>>>
> >>>>>>>> I have opened a new issue in the ClangBuiltLinux issue tracker.
> >>>>>>>
> >>>>>>> Glad to know clang 9 has asm goto support and now It can compile
> >>>>>>> kernel again.
> >>>>>>>
> >>>>>>
> >>>>>> Yupp.
> >>>>>>
> >>>>>>>>
> >>>>>>>> I am seeing a problem in the area bpf/seccomp causing
> >>>>>>>> systemd/journald/udevd services to fail.
> >>>>>>>>
> >>>>>>>> [Fri Jul 26 08:08:43 2019] systemd[453]: systemd-udevd.service: Failed
> >>>>>>>> to connect stdout to the journal socket, ignoring: Connection refused
> >>>>>>>>
> >>>>>>>> This happens when I use the (LLVM) LLD ld.lld-9 linker but not with
> >>>>>>>> BFD linker ld.bfd on Debian/buster AMD64.
> >>>>>>>> In both cases I use clang-9 (prerelease).
> >>>>>>>
> >>>>>>> Looks like it is a lld bug.
> >>>>>>>
> >>>>>>> I see the stack trace has __bpf_prog_run32() which is used by
> >>>>>>> kernel bpf interpreter. Could you try to enable bpf jit
> >>>>>>>      sysctl net.core.bpf_jit_enable = 1
> >>>>>>> If this passed, it will prove it is interpreter related.
> >>>>>>>
> >>>>>>
> >>>>>> After...
> >>>>>>
> >>>>>> sysctl -w net.core.bpf_jit_enable=1
> >>>>>>
> >>>>>> I can start all failed systemd services.
> >>>>>>
> >>>>>> systemd-journald.service
> >>>>>> systemd-udevd.service
> >>>>>> haveged.service
> >>>>>>
> >>>>>> This is in maintenance mode.
> >>>>>>
> >>>>>> What is next: Do set a permanent sysctl setting for net.core.bpf_jit_enable?
> >>>>>>
> >>>>>
> >>>>> This is what I did:
> >>>>
> >>>> I probably won't have cycles to debug this potential lld issue.
> >>>> Maybe you already did, I suggest you put enough reproducible
> >>>> details in the bug you filed against lld so they can take a look.
> >>>>
> >>>
> >>> I understand and will put the journalctl-log into the CBL issue
> >>> tracker and update informations.
> >>>
> >>> Thanks for your help understanding the BPF correlations.
> >>>
> >>> Is setting 'net.core.bpf_jit_enable = 2' helpful here?
> >>
> >> jit_enable=1 is enough.
> >> Or use CONFIG_BPF_JIT_ALWAYS_ON to workaround.
> >>
> >> It sounds like clang miscompiles interpreter.
> >> modprobe test_bpf
> >> should be able to point out which part of interpreter is broken.
> >
> > Maybe we need something like...
> >
> > "bpf: Disable GCC -fgcse optimization for ___bpf_prog_run()"
> >
> > ...for clang?
>
> Not sure how do you get conclusion it is gcse causing the problem.
> But anyway, adding such flag in the kernel is not a good idea.
> clang/llvm should be fixed instead. Esp. there is still time
> for 9.0.0 release to fix bugs.
>

To clarify: This is a snapshot release of clang-9 built with tc-build.

Building with -O0 is not possible as I see asm-goto failing.

- Sedat -

[1] https://github.com/ClangBuiltLinux/tc-build

> >
> > - Sedat -
> >
> > [1] https://git.kernel.org/linus/3193c0836f203a91bef96d88c64cccf0be090d9c
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVcvwKvAxv%2BdoNYmGGmKnxSgc7DpozgnAwWgdVUpsvgtg%40mail.gmail.com.
