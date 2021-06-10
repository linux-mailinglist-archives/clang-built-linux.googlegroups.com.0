Return-Path: <clang-built-linux+bncBCMIZB7QWENRB5OHQ2DAMGQEN5GPZJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1BA3A2403
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 07:32:38 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id 82-20020aca04550000b02901f40670cf75sf479861oie.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 22:32:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623303157; cv=pass;
        d=google.com; s=arc-20160816;
        b=akL6BOCGyOhmS2EZtR37kzjNIL/rlOb1zWbcg+q33dSVmkeFxBt9YgZR6rRm/DpiNk
         KuSr9STdIIvUKKpFBVm6gYYJ/0n8uGErmsRbKcTUBRT9a6Qi4k3NjuA+IE5fYwggmlll
         mFS/t9I8nUHpLtj466fAfag+b/VHga1VPM/IffLllQaP9aXXoLrOyrVr8LK8XHEv9BLg
         bnAWfksWy1/VenSDfiKR5BJxnndrDztvR9xZ5SW3TZG5mBedS8Wgyy3ry+/r/8sXc8Jg
         UTEtl5tKt9o2+Vi97QRZrWsZGgIQvF06rbthcDtx/C71cz7QjgHmvpwFHs3uJB0lINKV
         l1cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ovVg+ppXIzMhn4a29Og/PzZi3bL8jatNC8YsRGkY4a8=;
        b=xEchUfMdNNX5OORcHFOyHfoAIekkF7WHx8p3LKLYp+A9uqDNcytf370xAf+h+3UmB2
         PNVSFCwbBWdJkykTo7GdUheQ60Qzd3gANLi7f+aKr4knLaFtaLupbojaC3Lly4584YCb
         +3HJr7qilNJWzZsjKR1cQQo6dYL1hfhj0znJTyHLNXaNnqyc+XZYim8/lQWaN6CvDdtm
         xl85G/NVPiMlNkn3whVOJ7jRAUicFGvsbvwucu+Cmho0zpLziYxXBQcI0i0Z3w56MAQc
         Z7WrU1UWnMLrrZws1j+uzbZBG+jfOvgtDAp7HrNtfwVlIf6eRengLYGG68PmYkIAuWhF
         w2cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LVuckSqO;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ovVg+ppXIzMhn4a29Og/PzZi3bL8jatNC8YsRGkY4a8=;
        b=cm0MYJ1aF52R+cbUx1jSzx/h0A05syKQa8FhoLQFiNF21wK0ClCyBm/NSqZzq+nadZ
         nGFPw7g642ZLcSSJKcPk76SWQs/a/tyA5X6Ap/2yjZS+16Opr5SldaKcb2T6jjcrmHrt
         nI4ZlzGoyCaG0Zm5rgu+x10cRaEJ+T0QkjsJGW7ufr6F9wXfrJGev+fwntlo+tQ0OUkM
         pqlIMYbTwoFeDJriOG/1kT0XD7oK7ipWguuzO3N66119yhnY77Q9lpmPsg5Tfz9Ry8MH
         FVdtrME0jYNVqJxHgkLzSYlr100AAFc5L+T8iK/f0k/q6muE6uzb4Ap64c7yPJgMTJwY
         1Rjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ovVg+ppXIzMhn4a29Og/PzZi3bL8jatNC8YsRGkY4a8=;
        b=M2t7CYQt0q/xwx6Fgto5d0iKDtd2jO2FWaT3mTN54At6yUoo0zMCla2o4PoEiP31jn
         g3cYEKbdqksU4WTcpoU4LTj4IYTKPDlKg6UJFE1a5n9I7Qfji7pUddY1GcWaIoRvsq45
         qo7qLTUD9Jj47NhApVBYyjiGQh0VV0okXZihJl5667oDs9ScLZGzgnGdRGHb18y0sxPg
         tJEkj0T3CNqSFojnRL+yR96K2RKXFgmNJgvcfO7k1SkkV6k5UXaL+FAFnrW5w+VI7FgK
         7kcKaW+4QZ1Aqmx+Qej+dJmC3gLIyIt+uV+74czFVPr2VMb7Ae5IV8at+FUZse5UWLya
         zWJw==
X-Gm-Message-State: AOAM531v7hbMFSwJgPa4v22s8Y6u8bRzHSnF6sxYNEG4SApxAKS+OyrA
	U+AGf4YTAV50GgdqeW8gCQ8=
X-Google-Smtp-Source: ABdhPJwdiQSV/gY2iWi0nDVa9pJGDK5MVP76sueD6yFJgq+I7thXlTRNANt38/SymYBKTSk3F9qvcg==
X-Received: by 2002:aca:4e92:: with SMTP id c140mr8857705oib.39.1623303157657;
        Wed, 09 Jun 2021 22:32:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5903:: with SMTP id n3ls1490247oib.6.gmail; Wed, 09 Jun
 2021 22:32:37 -0700 (PDT)
X-Received: by 2002:a05:6808:1304:: with SMTP id y4mr9128178oiv.20.1623303157328;
        Wed, 09 Jun 2021 22:32:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623303157; cv=none;
        d=google.com; s=arc-20160816;
        b=fijYBubUeE/YGsu8Qt1QPLklAJPz3ZURvy7lb5oxcZWAPlOgBdGaZggqGvLBy/qaei
         iaWcEiCcsloaIzPxtb4CBo24r+TOqvVC5OSt83F1HgBEaP8MFUsS4P4aqCvFsyEZMG7Q
         OrEAS+9UZDiNbmiDIhWWiONEOes7qs2xxc+rG3Bm7f6pNZNaqhNjFVdYzeILg0WpngCj
         DgP25v8hDqKTbg0cHpYPx93bOy4vRse1dnx8bRuIECrHlshs3cOWmvLvRO/JmWJHOQgB
         TKzVfy7dGgxP/pQ0ll/e36coepSel3+LCbjXA7yRcdkCYIHD7kbK/MdJ0SP0UBoGpns7
         yKyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OaVwnGtK9jh2uHt5Ipx2vrWPn+KDUOXrS2y79saIzrk=;
        b=HstnVloujLb1ZIpqg1MmqgMxrX535+SLSRJO3CTcYkYKMzhEDXosfI1/xkyGfvCY27
         SFxpSz6v9hYUiXQYMJeK7l/vCC1VG9fgN1KbtOMaSSQU5ZDoKc6mo7PNDAZDNqwQdro/
         97RO1DdXbgdeSAM4xt5tkdGA2di1PlnvYHE4sOOZ/H7Cs60/h0LQvs+UcaFKedOLiVv5
         er9nx5YqKvdoM9vxiiPSioKSiyyHMzhJms/i8zv3ITyZPE57U13Z0mbbhO+Z/e+f6TNe
         O08WPr4temkQ0M9vmRGjgNJTXdugRUIojkpICmlCFH83JfJvFiWGPD+LZq2JNVAXtcTq
         4oVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LVuckSqO;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com. [2607:f8b0:4864:20::f2f])
        by gmr-mx.google.com with ESMTPS id u128si220558oif.2.2021.06.09.22.32.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 22:32:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f2f as permitted sender) client-ip=2607:f8b0:4864:20::f2f;
Received: by mail-qv1-xf2f.google.com with SMTP id l3so7068632qvl.0
        for <clang-built-linux@googlegroups.com>; Wed, 09 Jun 2021 22:32:37 -0700 (PDT)
X-Received: by 2002:a0c:d610:: with SMTP id c16mr3488166qvj.13.1623303156474;
 Wed, 09 Jun 2021 22:32:36 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000c2987605be907e41@google.com> <20210602212726.7-1-fuzzybritches0@gmail.com>
 <YLhd8BL3HGItbXmx@kroah.com> <87609-531187-curtm@phaethon>
 <6a392b66-6f26-4532-d25f-6b09770ce366@fb.com> <CAADnVQKexxZQw0yK_7rmFOdaYabaFpi2EmF6RGs5bXvFHtUQaA@mail.gmail.com>
 <CACT4Y+b=si6NCx=nRHKm_pziXnVMmLo-eSuRajsxmx5+Hy_ycg@mail.gmail.com>
 <202106091119.84A88B6FE7@keescook> <752cb1ad-a0b1-92b7-4c49-bbb42fdecdbe@fb.com>
In-Reply-To: <752cb1ad-a0b1-92b7-4c49-bbb42fdecdbe@fb.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Jun 2021 07:32:24 +0200
Message-ID: <CACT4Y+a592rxFmNgJgk2zwqBE8EqW1ey9SjF_-U3z6gt3Yc=oA@mail.gmail.com>
Subject: Re: [PATCH v4] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
To: Yonghong Song <yhs@fb.com>
Cc: Kees Cook <keescook@chromium.org>, 
	Alexei Starovoitov <alexei.starovoitov@gmail.com>, Kurt Manucredo <fuzzybritches0@gmail.com>, 
	syzbot+bed360704c521841c85d@syzkaller.appspotmail.com, 
	Andrii Nakryiko <andrii@kernel.org>, Alexei Starovoitov <ast@kernel.org>, bpf <bpf@vger.kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, "David S. Miller" <davem@davemloft.net>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
	Martin KaFai Lau <kafai@fb.com>, KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	Song Liu <songliubraving@fb.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	nathan@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	linux-kernel-mentees@lists.linuxfoundation.org, 
	Shuah Khan <skhan@linuxfoundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LVuckSqO;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f2f
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

On Thu, Jun 10, 2021 at 1:40 AM Yonghong Song <yhs@fb.com> wrote:
> On 6/9/21 11:20 AM, Kees Cook wrote:
> > On Mon, Jun 07, 2021 at 09:38:43AM +0200, 'Dmitry Vyukov' via Clang Built Linux wrote:
> >> On Sat, Jun 5, 2021 at 9:10 PM Alexei Starovoitov
> >> <alexei.starovoitov@gmail.com> wrote:
> >>> On Sat, Jun 5, 2021 at 10:55 AM Yonghong Song <yhs@fb.com> wrote:
> >>>> On 6/5/21 8:01 AM, Kurt Manucredo wrote:
> >>>>> Syzbot detects a shift-out-of-bounds in ___bpf_prog_run()
> >>>>> kernel/bpf/core.c:1414:2.
> >>>>
> >>>> This is not enough. We need more information on why this happens
> >>>> so we can judge whether the patch indeed fixed the issue.
> >>>>
> >>>>>
> >>>>> I propose: In adjust_scalar_min_max_vals() move boundary check up to avoid
> >>>>> missing them and return with error when detected.
> >>>>>
> >>>>> Reported-and-tested-by: syzbot+bed360704c521841c85d@syzkaller.appspotmail.com
> >>>>> Signed-off-by: Kurt Manucredo <fuzzybritches0@gmail.com>
> >>>>> ---
> >>>>>
> >>>>> https://syzkaller.appspot.com/bug?id=edb51be4c9a320186328893287bb30d5eed09231
> >>>>>
> >>>>> Changelog:
> >>>>> ----------
> >>>>> v4 - Fix shift-out-of-bounds in adjust_scalar_min_max_vals.
> >>>>>        Fix commit message.
> >>>>> v3 - Make it clearer what the fix is for.
> >>>>> v2 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
> >>>>>        check in check_alu_op() in verifier.c.
> >>>>> v1 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
> >>>>>        check in ___bpf_prog_run().
> >>>>>
> >>>>> thanks
> >>>>>
> >>>>> kind regards
> >>>>>
> >>>>> Kurt
> >>>>>
> >>>>>    kernel/bpf/verifier.c | 30 +++++++++---------------------
> >>>>>    1 file changed, 9 insertions(+), 21 deletions(-)
> >>>>>
> >>>>> diff --git a/kernel/bpf/verifier.c b/kernel/bpf/verifier.c
> >>>>> index 94ba5163d4c5..ed0eecf20de5 100644
> >>>>> --- a/kernel/bpf/verifier.c
> >>>>> +++ b/kernel/bpf/verifier.c
> >>>>> @@ -7510,6 +7510,15 @@ static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
> >>>>>        u32_min_val = src_reg.u32_min_value;
> >>>>>        u32_max_val = src_reg.u32_max_value;
> >>>>>
> >>>>> +     if ((opcode == BPF_LSH || opcode == BPF_RSH || opcode == BPF_ARSH) &&
> >>>>> +                     umax_val >= insn_bitness) {
> >>>>> +             /* Shifts greater than 31 or 63 are undefined.
> >>>>> +              * This includes shifts by a negative number.
> >>>>> +              */
> >>>>> +             verbose(env, "invalid shift %lld\n", umax_val);
> >>>>> +             return -EINVAL;
> >>>>> +     }
> >>>>
> >>>> I think your fix is good. I would like to move after
> >>>
> >>> I suspect such change will break valid programs that do shift by register.
> >>>
> >>>> the following code though:
> >>>>
> >>>>           if (!src_known &&
> >>>>               opcode != BPF_ADD && opcode != BPF_SUB && opcode != BPF_AND) {
> >>>>                   __mark_reg_unknown(env, dst_reg);
> >>>>                   return 0;
> >>>>           }
> >>>>
> >>>>> +
> >>>>>        if (alu32) {
> >>>>>                src_known = tnum_subreg_is_const(src_reg.var_off);
> >>>>>                if ((src_known &&
> >>>>> @@ -7592,39 +7601,18 @@ static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
> >>>>>                scalar_min_max_xor(dst_reg, &src_reg);
> >>>>>                break;
> >>>>>        case BPF_LSH:
> >>>>> -             if (umax_val >= insn_bitness) {
> >>>>> -                     /* Shifts greater than 31 or 63 are undefined.
> >>>>> -                      * This includes shifts by a negative number.
> >>>>> -                      */
> >>>>> -                     mark_reg_unknown(env, regs, insn->dst_reg);
> >>>>> -                     break;
> >>>>> -             }
> >>>>
> >>>> I think this is what happens. For the above case, we simply
> >>>> marks the dst reg as unknown and didn't fail verification.
> >>>> So later on at runtime, the shift optimization will have wrong
> >>>> shift value (> 31/64). Please correct me if this is not right
> >>>> analysis. As I mentioned in the early please write detailed
> >>>> analysis in commit log.
> >>>
> >>> The large shift is not wrong. It's just undefined.
> >>> syzbot has to ignore such cases.
> >>
> >> Hi Alexei,
> >>
> >> The report is produced by KUBSAN. I thought there was an agreement on
> >> cleaning up KUBSAN reports from the kernel (the subset enabled on
> >> syzbot at least).
> >> What exactly cases should KUBSAN ignore?
> >> +linux-hardening/kasan-dev for KUBSAN false positive
> >
> > Can check_shl_overflow() be used at all? Best to just make things
> > readable and compiler-happy, whatever the implementation. :)
>
> This is not a compile issue. If the shift amount is a constant,
> compiler should have warned and user should fix the warning.
>
> This is because user code has
> something like
>      a << s;
> where s is a unknown variable and
> verifier just marked the result of a << s as unknown value.
> Verifier may not reject the code depending on how a << s result
> is used.
>
> If bpf program writer uses check_shl_overflow() or some kind
> of checking for shift value and won't do shifting if the
> shifting may cause an undefined result, there should not
> be any kubsan warning.

I guess the main question: what should happen if a bpf program writer
does _not_ use compiler nor check_shl_overflow()?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2Ba592rxFmNgJgk2zwqBE8EqW1ey9SjF_-U3z6gt3Yc%3DoA%40mail.gmail.com.
