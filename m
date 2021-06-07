Return-Path: <clang-built-linux+bncBCMIZB7QWENRBEE266CQMGQE4F2UF3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB1339D62A
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 09:38:57 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id y2-20020a0568301082b02903b5696f0a64sf11051451oto.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 00:38:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623051536; cv=pass;
        d=google.com; s=arc-20160816;
        b=E4Bk22SrZDlu7X2dOdbIdoEGQ2Hun6ZnWsTj64eUO8c6+5bPNvCt8HxwCcgB0R67+7
         AZ6CUtSeE7TV9dS2KB5ZdVZstQBvIwKKbskkHhgMdYvsiuDigtb4xPrkvyLn8wNNiU8M
         7gfimfi4AvsoCbZCCnAqG9IdpXxWdaKMejA2K4v2A3u9w1HrZ45dqjh0VZTTykGjRe3t
         sEMC7cmfaMSnjSS86XFbfUV2yam++AEjICkmx4kOlWrzyWlPxGAZ3ENlOyGCSkFiYEBv
         AsEeur1lZNS41pmF5ddSueGX2bRl7PdhdWQWnh8pRX14kF96yqvSp0Vp1wLBUBf8j4i/
         +HTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vIfsUTLKObn+yCgURMXpp7Dli3FCiu4ZekIjGQayv8E=;
        b=sviviIfPbYqAX2fy/3bI0HEgmlcPA9pwheyrQmhn2eZHb2FHFhsGuAMiLfCGap0FkK
         69ckzNgueMbefb1X0WOtEys0IxFcP/JZufAEPdkAt5U7pgTC0foJ30oPLBSHUSNO3dR0
         A6u8EdwS2oFZJjuW0mcjhETWiLUvBPMrzBUhSSZPq69iXvXZsCawZroIP1taBvIRJZlT
         yXa9f91W0PdRHYXIFZoBYTeRQpDvHztcajvIEIA8Q1Cb2nhQr33PQQkB/7ZyGhv6TlcV
         lyu2Mp03O9psN1LMwFwvwvluCf1DZYKQE/vDQSN6LYubcsj54Qkjm+EN53lN67NULhmH
         1zVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nHm4WK6c;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vIfsUTLKObn+yCgURMXpp7Dli3FCiu4ZekIjGQayv8E=;
        b=a2kyVYwP54LxYw4C5kt0TthohB1zfYwxxpG9W2qRDlToCQVIbKvgecQqaSdsMS9B6Q
         Nqp2mSa7SMAFD5+K/Qt2QFC34+JE8xob0jbcXrXaG0g7HHWiFGg8S/N/XY/U9uB1fhM4
         r7BknKaOJlE7oCnO/uUvOKzKMvc9xvKv84YgZ+nRqMwFzwRSRekGEnp/4A5gOZ3Wlc3w
         L5GkX52FM6VBSZhcqjtJNYZ/90EjZjmq6GTZQQmlm8GJdrnidAyOdMNOAC+CUydZmL9L
         hJYWhKzgXCy65Vp7iw1lNyfsP9/FvLQacpIM5NLYAF+xTu9dW3s0NCg40r6f12ecxGpL
         8mTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vIfsUTLKObn+yCgURMXpp7Dli3FCiu4ZekIjGQayv8E=;
        b=cUqTWuqvkxEpUtvLFLyMchT0Vl5Qd1u1/hepoovyiiBuyzm6MIr4GmGeYqBskDddKw
         9VwEBHFkx20b3iji4Wv/KLpSbB+CncAU9dnPQ0odU7RENFNqrk1CpGLuLDe16HxkEIlU
         ivPFWJhdibojcUcTlhpp7jwQEFBBgx9xQSLHq2csOgGsazhZqHIHC9PBvqBJWQDK6Lm/
         WaT7v1urMB4ddbzTRXnNRKaYW8nzm1TlNKHrmnyiKXuwNQfUDIdMfjUIu8bX9Aiwv/p9
         +9gAiF/sHDQOmGnCUHTbA8I2l/2w+PWC6WbZLlt/8icYDLR8aUQhtVEU72Soa3SeQW37
         16DA==
X-Gm-Message-State: AOAM532Y/TM2nY5TxzyE9qyhp2Pqsw+vBmrDnd1Vki8q+Q7SeNcH1Hvg
	Jexk4RugmHlJdIurMR7T9qY=
X-Google-Smtp-Source: ABdhPJxgEls9kPaPu9rL6YZjrjD6V6dWf9oKYL6NEPVMhIsEmAgDSGrtV4HI/0rzuIRstJtHJ3+MIg==
X-Received: by 2002:a05:6808:8d4:: with SMTP id k20mr2207449oij.102.1623051536207;
        Mon, 07 Jun 2021 00:38:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c42:: with SMTP id i2ls614696oiy.9.gmail; Mon, 07 Jun
 2021 00:38:55 -0700 (PDT)
X-Received: by 2002:aca:bac2:: with SMTP id k185mr19512106oif.90.1623051535851;
        Mon, 07 Jun 2021 00:38:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623051535; cv=none;
        d=google.com; s=arc-20160816;
        b=GakhcLT2CLh+qx8n/ITiUSCxrevdRI9ia3u30PSb75BGEt1RiQK5D/sq9ViPn2bvuO
         wYGF1/c9w/6Gq/K6AQXcmH5hy4s1gqaJmFMdVOVmJmrAWiuyCCmT9yBtPHbkmv6hybTh
         LyQlYFrCAVID4n3UK+2ZRZRvqfV/TzWLjlrk451mP32+R2zsGzhEV1LZ3HTtlflsga6H
         ycSOeb7W8Se5ygwHROgPqexL/P/USbyAMKDai4xbgf6RUuaAye0cXRHzU1Y0mC/wcPX4
         VGzIMTQVt+tF3MMutRiu+wZW3eJWJ+3W8XUnO4WMWB80vpEjKCqjn4gqeldreVJlk7w1
         9EVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FkDnZkLm7S26Fub+7GJQrbQgH8zlz9fkqHVVt8EUVII=;
        b=NJ0WAKQjLT0Li12CQmNNXQxU1819ZiTpFSj3WUFpiDAgk2J+Izp/9W8UyOIu+CMqBW
         wVerlJfC7vbTCw1Fu451PpF3sRfhWFci0VWCc3RLGTXRSHBsSPvwdRcvr9AajwLD4Q0A
         5gZKnjWdrJq5i8MZYSbEDQVKFVvjDGnAIMSxZdB+9zMmYMKRvyso3BDU40bYF94vHE76
         uO9n9g7qWjiK4u/nEFhGzoKTsL9jV5C7XD3tmjSUr2a5jEoLPJDlqi1pjcpDS4ue4eR4
         i2uVl7vNyRkYr983CyfXCb7hcUqvEUmE8pOMWlc3EGAmEncjpIaCwK2e0xWw3JLF5zmy
         zvGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nHm4WK6c;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id t15si795546oiw.4.2021.06.07.00.38.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 00:38:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Received: by mail-qt1-x82c.google.com with SMTP id t17so11926588qta.11
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 00:38:55 -0700 (PDT)
X-Received: by 2002:ac8:7c4e:: with SMTP id o14mr14825948qtv.290.1623051534847;
 Mon, 07 Jun 2021 00:38:54 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000c2987605be907e41@google.com> <20210602212726.7-1-fuzzybritches0@gmail.com>
 <YLhd8BL3HGItbXmx@kroah.com> <87609-531187-curtm@phaethon>
 <6a392b66-6f26-4532-d25f-6b09770ce366@fb.com> <CAADnVQKexxZQw0yK_7rmFOdaYabaFpi2EmF6RGs5bXvFHtUQaA@mail.gmail.com>
In-Reply-To: <CAADnVQKexxZQw0yK_7rmFOdaYabaFpi2EmF6RGs5bXvFHtUQaA@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Jun 2021 09:38:43 +0200
Message-ID: <CACT4Y+b=si6NCx=nRHKm_pziXnVMmLo-eSuRajsxmx5+Hy_ycg@mail.gmail.com>
Subject: Re: [PATCH v4] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: Yonghong Song <yhs@fb.com>, Kurt Manucredo <fuzzybritches0@gmail.com>, 
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
 header.i=@google.com header.s=20161025 header.b=nHm4WK6c;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::82c
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

On Sat, Jun 5, 2021 at 9:10 PM Alexei Starovoitov
<alexei.starovoitov@gmail.com> wrote:
> On Sat, Jun 5, 2021 at 10:55 AM Yonghong Song <yhs@fb.com> wrote:
> > On 6/5/21 8:01 AM, Kurt Manucredo wrote:
> > > Syzbot detects a shift-out-of-bounds in ___bpf_prog_run()
> > > kernel/bpf/core.c:1414:2.
> >
> > This is not enough. We need more information on why this happens
> > so we can judge whether the patch indeed fixed the issue.
> >
> > >
> > > I propose: In adjust_scalar_min_max_vals() move boundary check up to avoid
> > > missing them and return with error when detected.
> > >
> > > Reported-and-tested-by: syzbot+bed360704c521841c85d@syzkaller.appspotmail.com
> > > Signed-off-by: Kurt Manucredo <fuzzybritches0@gmail.com>
> > > ---
> > >
> > > https://syzkaller.appspot.com/bug?id=edb51be4c9a320186328893287bb30d5eed09231
> > >
> > > Changelog:
> > > ----------
> > > v4 - Fix shift-out-of-bounds in adjust_scalar_min_max_vals.
> > >       Fix commit message.
> > > v3 - Make it clearer what the fix is for.
> > > v2 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
> > >       check in check_alu_op() in verifier.c.
> > > v1 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
> > >       check in ___bpf_prog_run().
> > >
> > > thanks
> > >
> > > kind regards
> > >
> > > Kurt
> > >
> > >   kernel/bpf/verifier.c | 30 +++++++++---------------------
> > >   1 file changed, 9 insertions(+), 21 deletions(-)
> > >
> > > diff --git a/kernel/bpf/verifier.c b/kernel/bpf/verifier.c
> > > index 94ba5163d4c5..ed0eecf20de5 100644
> > > --- a/kernel/bpf/verifier.c
> > > +++ b/kernel/bpf/verifier.c
> > > @@ -7510,6 +7510,15 @@ static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
> > >       u32_min_val = src_reg.u32_min_value;
> > >       u32_max_val = src_reg.u32_max_value;
> > >
> > > +     if ((opcode == BPF_LSH || opcode == BPF_RSH || opcode == BPF_ARSH) &&
> > > +                     umax_val >= insn_bitness) {
> > > +             /* Shifts greater than 31 or 63 are undefined.
> > > +              * This includes shifts by a negative number.
> > > +              */
> > > +             verbose(env, "invalid shift %lld\n", umax_val);
> > > +             return -EINVAL;
> > > +     }
> >
> > I think your fix is good. I would like to move after
>
> I suspect such change will break valid programs that do shift by register.
>
> > the following code though:
> >
> >          if (!src_known &&
> >              opcode != BPF_ADD && opcode != BPF_SUB && opcode != BPF_AND) {
> >                  __mark_reg_unknown(env, dst_reg);
> >                  return 0;
> >          }
> >
> > > +
> > >       if (alu32) {
> > >               src_known = tnum_subreg_is_const(src_reg.var_off);
> > >               if ((src_known &&
> > > @@ -7592,39 +7601,18 @@ static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
> > >               scalar_min_max_xor(dst_reg, &src_reg);
> > >               break;
> > >       case BPF_LSH:
> > > -             if (umax_val >= insn_bitness) {
> > > -                     /* Shifts greater than 31 or 63 are undefined.
> > > -                      * This includes shifts by a negative number.
> > > -                      */
> > > -                     mark_reg_unknown(env, regs, insn->dst_reg);
> > > -                     break;
> > > -             }
> >
> > I think this is what happens. For the above case, we simply
> > marks the dst reg as unknown and didn't fail verification.
> > So later on at runtime, the shift optimization will have wrong
> > shift value (> 31/64). Please correct me if this is not right
> > analysis. As I mentioned in the early please write detailed
> > analysis in commit log.
>
> The large shift is not wrong. It's just undefined.
> syzbot has to ignore such cases.

Hi Alexei,

The report is produced by KUBSAN. I thought there was an agreement on
cleaning up KUBSAN reports from the kernel (the subset enabled on
syzbot at least).
What exactly cases should KUBSAN ignore?
+linux-hardening/kasan-dev for KUBSAN false positive

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2Bb%3Dsi6NCx%3DnRHKm_pziXnVMmLo-eSuRajsxmx5%2BHy_ycg%40mail.gmail.com.
