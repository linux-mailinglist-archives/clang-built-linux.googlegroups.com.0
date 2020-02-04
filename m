Return-Path: <clang-built-linux+bncBCUZHQPN7ADRBWME47YQKGQEBHIGRMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 959661520D8
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Feb 2020 20:13:31 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id x10sf12434401iob.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Feb 2020 11:13:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580843610; cv=pass;
        d=google.com; s=arc-20160816;
        b=MJs+Vcz5gi6coiljjqs7AQ5/EkY9dDp8MiNkOPMrT/IYCotr464Er0wKn2IbzSyV52
         RBP/CUONbFtOwRpXGw/6khDA1zpD+E9rcFwk+T48o639hqZVXU6gdSzes1I3Sb1Amywe
         +pelYfsM9aDKWEgh+i1+A0KkMYyBnFt1lNAMlDSY88sFpP0f0XZlj9AERDHdLbYyjqK/
         g9AIzAjQPWJOz7evR4beJZVlNUkcdFwNCJrCY2nRtHSmgCmgfw54Z6Esdr3KUzjhUx79
         nV90J1GbZJwWnF/EX/nBl4eGWTgv94HLJAw7j7Cw96IV+aGrULNnZ/ZOQHcfCGmQ9pFR
         qozw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=pmiuwxO5e3F9IsDeQqVOoOqIX2GxwuI/4alpFezOmLI=;
        b=IGKFi5w24FAvn1E8ps8LX0/MS3Q4+qOtmXxcRXmkuVzUXdSLe6bQ0AjAgMhwdgIDXl
         SwOiLEV835Qx3YNITHcJmqoOg2+UmUodoRu2oeO9fw1iLCs3zbFT3nFDd7AobtUolNP8
         2OiUrNWAuSPuAy4qbO5KMB4vcj3/b5XHWp93Kax61s50odVfpi/qs043xaKeNSa6JR+O
         YQTCvT39MPVdGqLSyOCQv7q0N0nzpGLN2emVDAzXNaJ6TL9nriTh43amQTikmhoqAMMh
         EgXJQPYWPzFViYVO2PrLha6bvbQssf0CxjLHRdGW9S3l5f8sjLwW6YY5X6gpHqQ6Re07
         uLCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=af9b04ei;
       spf=pass (google.com: domain of bjorn.topel@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=bjorn.topel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pmiuwxO5e3F9IsDeQqVOoOqIX2GxwuI/4alpFezOmLI=;
        b=mq85J648TM4zF8AK6jtEWijSqBsVm9eJoc5gsZnUWXDfS3+Uk93WOlVVjhj5LnkS6S
         PN5Pv6IF1uXcYAFzJScF7bK74A6DSpkm7lmwGvx3ZT++/YQOt6B2aKn0tctsVZFecYqk
         V9NhkYRgtL4F8ZLMseizZkNA5DSoi5CinGY44lRP7KMDiBoEeUQZerS5BXQCjcKRpvvG
         dDPTXNfYpx6LHM5Ytk3cP91MoYgrvfi0/WgR1ZtoEaMLODkZpyNwbftzfrsQz+wFv0SB
         SCOWwXaz/0SWTfHMAZRpcRLQuAAz/MYvLWLDvHGaFDxT3xAlsNyscwOP5ky8+OrO8yiC
         UjNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pmiuwxO5e3F9IsDeQqVOoOqIX2GxwuI/4alpFezOmLI=;
        b=ma2NZXHpri/wgQqCJlVm6EtdAamTFjiW13PMb09kkG1wDh7vTs5fKXCeMeFM6JtO/5
         /TdifsheB5k4CbbFTzPsjoqs4v3xujdmmIySTTr2wyxTu5ke3Ir3xUBUSuVHWr8Lsil5
         I/droPj2FtLko/irs/tCG0rbpkOv7Nw9VfQEdVNIjJHpwOIAh2zsTcaCxOQoyWkH6Fmf
         Ecm6y1U+jBPtHCH1otrWxBqmGhoZvs4t0OIz5wIlzJ/K997RtE87DPwaaFtoSxYxhmIS
         AKQMk3x3nTSBd6xGLQcKE8A9rWiriy6r+aL/miyZzyDp/CBTNYNh93CtyxiTgTxpLSOo
         za+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pmiuwxO5e3F9IsDeQqVOoOqIX2GxwuI/4alpFezOmLI=;
        b=pd6K/UC6XQv2NnVhnBkhGdifSl7OIQnq6at0DFE5dMDun/cdxGdV/X1QlvKc1KwsDc
         nF3hvuHXf77nn+/gQOmeplUXVSP/FciygJ3FyEw1AdBOrfXgsjRQSMB7bVP/fMmUm1bS
         8qejYELa6/yJHb2x4FfujDEJbBKIgUuO9NTugbKYILYRi36tHd8kFxrLWll1dhvDGYm9
         5Z7X+J9UN0W8Fejj44Zl3NBohZUPFIdshRicpVW++jiiOlQZ2YD1SXHhTR7C6bzbLrjd
         SbmSgjz5If6Oj26OarZXqrKyD1QjkafYpPxRbZoHI6Kk5RqrlNWt3BPPbXppdhCdBTqR
         wYAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXqZ5DwTe7h/Lqu3georxRGjWqEdLe69iFC3CUMBjj0oqT8ElQ+
	QGEzJFk+MU6kCoWXqtmQ0VQ=
X-Google-Smtp-Source: APXvYqw9kBj2gxvQrQlWBeikoZqfzDjWr0oSefphKsqgtlgc9lpjVspGTBdGu9MGqk3hgKm8cis1kw==
X-Received: by 2002:a02:c773:: with SMTP id k19mr25025608jao.61.1580843609999;
        Tue, 04 Feb 2020 11:13:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:384c:: with SMTP id v12ls446611jae.8.gmail; Tue, 04 Feb
 2020 11:13:29 -0800 (PST)
X-Received: by 2002:a02:7092:: with SMTP id f140mr25709059jac.128.1580843609551;
        Tue, 04 Feb 2020 11:13:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580843609; cv=none;
        d=google.com; s=arc-20160816;
        b=lCW0NpsY590qrPrbuncOHRBcYqPXhgyYqjA8rxQEAgrXYP4eJjt/peKNonsgHUesDZ
         VQoLtojLvQZx5N4Hzsz4vQoyhxh+2t/Hbjvt09Ewitsq5SE/nYZWMigwJj/iZQ2ZzRtm
         99s9YiUtvorZsMQFDcp8bywUg1XM/gkeRNggmxHq1dUB8b8E6LYrTK/CLzTqRwZS/L89
         BQ/79ru5jETlDY+Aiccx1A+S3X6FtdU+T0fNHJTiinzHyQp6QDzopyb8WmmSiODTgTHW
         grFA4/r5stCfyIMuc03PbcwYzXM4YDRwZx/GbxPy9eW1tmTjX5XbHx4Vl52lNACVT8rH
         ozFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bdX909F5cI382fCwL2BmbcR0X3LXro/I1upGDSYHuzo=;
        b=GI6WvwHZrpqGO0d4O1qq29flqQiF+WyFaRckiKvGgjUnerSDVFeVPcG0Lw/HazsKoN
         fHL/NkonJ9t8zZn7HgB7b88DYAiMV22NpH3wvj42x1QmYA81UZxnsVR0/wgn8xVY46gq
         hc9oINDAwKhqFxEoGdODk73LDlYn2JGUnKL0AFD+Oij192R3sUa/IJ4aBbGTdlFHTimY
         a3PjYbvV6yw4sv4rQy4IbuWjM8LiSI+ijvphCiKR4h0DRd7rSCiYWhEl2PM3Mv/y4aCd
         gLLje0udJuOY8cfYr9LKNXySwXDMTRdiTDB9TdPrRxymJ3hvnY4DGhYXqKQxcyKQWpvS
         YBKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=af9b04ei;
       spf=pass (google.com: domain of bjorn.topel@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=bjorn.topel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id z6si1077571iof.2.2020.02.04.11.13.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Feb 2020 11:13:29 -0800 (PST)
Received-SPF: pass (google.com: domain of bjorn.topel@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id q15so19086829qke.9
        for <clang-built-linux@googlegroups.com>; Tue, 04 Feb 2020 11:13:29 -0800 (PST)
X-Received: by 2002:a37:63c7:: with SMTP id x190mr30030638qkb.232.1580843609003;
 Tue, 04 Feb 2020 11:13:29 -0800 (PST)
MIME-Version: 1.0
References: <20200128021145.36774-1-palmerdabbelt@google.com> <20200128021145.36774-5-palmerdabbelt@google.com>
In-Reply-To: <20200128021145.36774-5-palmerdabbelt@google.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 4 Feb 2020 20:13:17 +0100
Message-ID: <CAJ+HfNjkacY-KStgGJMgvQh2=2OsMnH6Saij+nAPBqQrSJcNWw@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: bpf: Elide some moves to a0 after calls
To: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, zlim.lnx@gmail.com, 
	catalin.marinas@arm.com, will@kernel.org, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, 
	Shuah Khan <shuah@kernel.org>, Netdev <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	linux-arm-kernel@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, 
	linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com, 
	kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: bjorn.topel@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=af9b04ei;       spf=pass
 (google.com: domain of bjorn.topel@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=bjorn.topel@gmail.com;       dmarc=pass
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

On Tue, 28 Jan 2020 at 03:15, Palmer Dabbelt <palmerdabbelt@google.com> wro=
te:
>
> On arm64, the BPF function ABI doesn't match the C function ABI.  Specifi=
cally,
> arm64 encodes calls as `a0 =3D f(a0, a1, ...)` while BPF encodes calls as
> `BPF_REG_0 =3D f(BPF_REG_1, BPF_REG_2, ...)`.  This discrepancy results i=
n
> function calls being encoded as a two operations sequence that first does=
 a C
> ABI calls and then moves the return register into the right place.  This
> results in one extra instruction for every function call.
>

It's a lot of extra work for one reg-to-reg move, but it always
annoyed me in the RISC-V JIT. :-) So, if it *can* be avoided, why not.

[...]
>
> +static int dead_register(const struct jit_ctx *ctx, int offset, int bpf_=
reg)

Given that a lot of archs (RISC-V, arm?, MIPS?) might benefit from
this, it would be nice if it could be made generic (it already is
pretty much), and moved to kernel/bpf.

> +{
> +       const struct bpf_prog *prog =3D ctx->prog;
> +       int i;
> +
> +       for (i =3D offset; i < prog->len; ++i) {
> +               const struct bpf_insn *insn =3D &prog->insnsi[i];
> +               const u8 code =3D insn->code;
> +               const u8 bpf_dst =3D insn->dst_reg;
> +               const u8 bpf_src =3D insn->src_reg;
> +               const int writes_dst =3D !((code & BPF_ST) || (code & BPF=
_STX)
> +                                        || (code & BPF_JMP32) || (code &=
 BPF_JMP));
> +               const int reads_dst  =3D !((code & BPF_LD));
> +               const int reads_src  =3D true;
> +
> +               /* Calls are a bit special in that they clobber a bunch o=
f regisers. */
> +               if ((code & (BPF_JMP | BPF_CALL)) || (code & (BPF_JMP | B=
PF_TAIL_CALL)))
> +                       if ((bpf_reg >=3D BPF_REG_0) && (bpf_reg <=3D BPF=
_REG_5))
> +                               return false;
> +
> +               /* Registers that are read before they're written are ali=
ve.
> +                * Most opcodes are of the form DST =3D DEST op SRC, but =
there
> +                * are some exceptions.*/
> +               if (bpf_src =3D=3D bpf_reg && reads_src)
> +                       return false;
> +
> +               if (bpf_dst =3D=3D bpf_reg && reads_dst)
> +                       return false;
> +
> +               if (bpf_dst =3D=3D bpf_reg && writes_dst)
> +                       return true;
> +
> +               /* Most BPF instructions are 8 bits long, but some ar 16 =
bits
> +                * long. */

A bunch of spelling errors above.


Cheers,
Bj=C3=B6rn

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAJ%2BHfNjkacY-KStgGJMgvQh2%3D2OsMnH6Saij%2BnAPBqQrSJcNWw=
%40mail.gmail.com.
