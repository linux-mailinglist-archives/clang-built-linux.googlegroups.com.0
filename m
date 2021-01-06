Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBSUP2X7QKGQE3JLHV6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F1D2EB940
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 06:17:00 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id y2sf1045835pgq.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 21:16:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609910218; cv=pass;
        d=google.com; s=arc-20160816;
        b=eK05ewGtTLfem5DKmllB68wUgzc5SYR5dZEZiK5KQIzG1+YQIsAZRo4Rc7EkcEOmX/
         9Jar8XGcuAMKiPHHn1a3cYqDyPU9JPRLy6fP4gbDeMEQTuVfAfqiyNtn4nD7fXpuuLUI
         ECZk+PjUA8rkSwt13YNj6HsHWhqOQJCZPGcwsy9zJgX179ZuqzmAjuGqjqoZVoH+r60D
         ig02ikEu9UAQmCtxBFSQMiKXiNuWMmkSnBabtZkeQv6yEVbxMpNzywMQdPSF2QAnfeP5
         1oxzsXXZhTjLZbKmPOlZMIxbwC0NhMkEFeaUjf8b2p6bO/gWSZ9ZlaBx58RgX3W1jewy
         t5Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=a3Xc9rLRGcO91m9qg0G7I32Z+2vQc7yEB2eAFFPPNdo=;
        b=tddDcL1qEJa/jjZUDK3m7Yi9X+7wJ1vo2qvhM2dLQ8tzR/kgg1i3TE2OeUk3SPtzD8
         2HRjFZauYN0TydlTyvlofYwwuZ8KaXpyu+SEvHVuLy4QCeR57HyRgcmsaG+nKrztuuhS
         GLAJLfC2ryavUPPM0h3zKSNskjGOAkFodM632cR4H/sfozFlFWP9/bJlPO90PfPDVSvG
         uAtk4SOs0BbixBu0mjP400LRZubmL6qN3PWdy2oSPXeK0NxkQE9EG1G/fe44iuGEaJ5h
         jTNp1tn3ACEQvBUU6V7WWV54HGtXEKbeBojds98qFBYPiQxNxqpmO+I2G1m+aX30MkK6
         ZT6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Vsy/aiqQ";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a3Xc9rLRGcO91m9qg0G7I32Z+2vQc7yEB2eAFFPPNdo=;
        b=KOXGyc0KWfuniixzyPwsQ9b3fgJ5F3/npKiPpIWsYShJujbrvX8sYBeqd4++Tn23w1
         QnrEMryOaNBV/a2LpNXSoYep+dga5BSsln3gee4tylkPG+norOn46aiHOKiZlip4HhDX
         wPVYGwMIdbcU0f/ja1mTywE/6or1rDiS+PQ/VNWwSbomp9kCAc4C+Psuc/kIPSy9AyV+
         MSkfGwCKJ3fVPdMu7RhtSgk14Ds7bmzdLkhg0UInY8xRVMyO3isVMfPJLXA2qkbeniRQ
         FmpvoGIRDN4Eq+9vDt/WWjBZ2YubFI3MEDNtDF2X3VgSolKtM6Iz4EAPa9IVBO0lQaC8
         JXSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a3Xc9rLRGcO91m9qg0G7I32Z+2vQc7yEB2eAFFPPNdo=;
        b=t/aKWOKk6m4QoD3IO3a0QjlsvUIfkXGWJpIEOxjDYK4REGKwkYWW5vslJKb5JyW4O2
         8AkHp3I8DfAMb8e7RgojPbwGCvi+6Zs76lwfIqJoNS0P8epz2JnbMXClHXnX7cDxqNou
         OUL9z02z4Nw8YcciFDW9D5nDNLvtRX+2aMa6SeorMeyuYStE9jiuIWFnBfEBuljdknHK
         A1l8yQq10OFBghhZtQESx/axbtffVkO5JLAnrQb71GdEyBPn5zyLA8U48QE8a9TraHc5
         htia2mHVOuDa9kNYQbcnhsAcCbWSrwepLOxTEhRDO7niCblEZoaWhhtwfHKElZBptv02
         Spcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a3Xc9rLRGcO91m9qg0G7I32Z+2vQc7yEB2eAFFPPNdo=;
        b=RUm8hjw7Jx/ENrBVBe5BjlkxPB9Y6vfW1744DRx6zca4DfvZ2R6pYOCLguGHAusc3W
         LH4y015JV0IMpTnFKSOVwbRSnA8IRjz70ti+gwvI7fo3eByVrMdo9PImNqago738qz5H
         mG7dHCl1fcq4WhIfa10UUhPanPfQhdbKubH15vNBV9S2bF+jkcHJLeD0F4B/lHLFZZTK
         V3lhUUyo/Muq1JrHAQ09MW2OB+cpY3B1WtGm5q2dJICYq/u0zOgvC6sAmGCiYKlqjQej
         2dR6sb4kSGZsb5VKV8GyIlrF6kxcrb+sh/AwGQwppBAsfQJKKqTNhFGMXj+oApc2y8Jg
         gcVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JqozQNCWqKQ4zimkq7jdsLJyAuj2ZgBWkc8GzvQd9mcuec6wm
	/bob7I3Ha+LQg4XRPe2OxS8=
X-Google-Smtp-Source: ABdhPJw9/JjqXsZVLWiu8Ql2q1vIQaifDRYaD9xUpGFxFKKj+BFbTJ1LjMPxSs8rv6CeYRPyyTt6TQ==
X-Received: by 2002:a17:90b:691:: with SMTP id m17mr2579011pjz.73.1609910218419;
        Tue, 05 Jan 2021 21:16:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3192:: with SMTP id x140ls748059pgx.6.gmail; Tue, 05 Jan
 2021 21:16:57 -0800 (PST)
X-Received: by 2002:a63:745a:: with SMTP id e26mr2624561pgn.321.1609910217800;
        Tue, 05 Jan 2021 21:16:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609910217; cv=none;
        d=google.com; s=arc-20160816;
        b=nAFRnC7zRKcQmfV1Y4tJqciI6RQ7l1qJfIsBQvZ7GRK9BxMvzBMWmIgdnu3j8JgllD
         I2odr+zIF3bi83GPrsBse5Xcrwsplt/dwvGDtkvH3Cr3tt7RasFUji7yytQ5i6d2gI1T
         QcSClBt9qfhyGuaVxqj9DadBNKcvw053M8FYj/CBrTKlW0uahPAI2uM1B6qY/Ni/50gI
         /rtjRYh0xj8Cfvz2dfPtmElB9W/64wVHpRz7hR7mq2DcQMfqU66IM2I9daSTPUY0WK5Q
         0/O3sM2U8Wd1EeApM8xBnpEjbdnCdsRqWaO9mjlMS7xtSZRVKUjvXLGmtsRRqFzWGMZ7
         mgSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VFpdV6pRJZEFwxkogw1SPlzH3MjscLRM9pi8S+Tq6RI=;
        b=uwuFiZBjg6IFxp4P7pnmqrZdkaGHl6B4I/5pvFv6MqWHo9t1EmXqAUYcroWMNTGMn6
         tX2U/aMS1GjXL92Qrgo8DcnBqgELUE9mFjMK1h3fNKVAhdUYJ8NtoM2X85WzvgwDnhsW
         Iw/2154m8rk1mFGpAvOgU9hLth+mwKW+RF5jSR0LkGJKftaqteJtU1h5+fWFLOEJtMPa
         Tv4udZFRaTV3QB8HwiYRRVaOojIFvJFe2ln2j3bOFYSfFmqjrK+1kDcbaYlbgqfmK47U
         u6cJ6uZOAE/odVw380osjkDR0H065ITRhxHBJp6kWJWz2kYPaGJTvYA76YeLBQzyolG/
         ANZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Vsy/aiqQ";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com. [2607:f8b0:4864:20::b33])
        by gmr-mx.google.com with ESMTPS id d1si121907pjo.1.2021.01.05.21.16.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 21:16:57 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) client-ip=2607:f8b0:4864:20::b33;
Received: by mail-yb1-xb33.google.com with SMTP id j17so1732926ybt.9
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 21:16:57 -0800 (PST)
X-Received: by 2002:a25:2c4c:: with SMTP id s73mr3906453ybs.230.1609910217022;
 Tue, 05 Jan 2021 21:16:57 -0800 (PST)
MIME-Version: 1.0
References: <cover.1609855479.git.sean@mess.org> <13cfab3593e0ea960ca732c259bfa60bf3c16b3b.1609855479.git.sean@mess.org>
 <CAEf4BzZgPx7YZ_S6a142gu+0XqxOq5-0=iMnAr1-DDJqyNOQrg@mail.gmail.com>
In-Reply-To: <CAEf4BzZgPx7YZ_S6a142gu+0XqxOq5-0=iMnAr1-DDJqyNOQrg@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 5 Jan 2021 21:16:46 -0800
Message-ID: <CAEf4Bza-D-FtFkeEt3jEpR-9QNpXdRCnhx2Sekkj44xqRv+i-Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] btf: add support for ints larger than 128 bits
To: Sean Young <sean@mess.org>
Cc: Yonghong Song <yhs@fb.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Quentin Monnet <quentin@isovalent.com>, =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, 
	linux-doc@vger.kernel.org, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Vsy/aiqQ";       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jan 5, 2021 at 9:10 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Tue, Jan 5, 2021 at 6:45 AM Sean Young <sean@mess.org> wrote:
> >
> > clang supports arbitrary length ints using the _ExtInt extension. This
> > can be useful to hold very large values, e.g. 256 bit or 512 bit types.
> >
> > Larger types (e.g. 1024 bits) are possible but I am unaware of a use
> > case for these.
> >
> > This requires the _ExtInt extension enabled in clang, which is under
> > review.
> >
> > Link: https://clang.llvm.org/docs/LanguageExtensions.html#extended-integer-types
> > Link: https://reviews.llvm.org/D93103
> >
> > Signed-off-by: Sean Young <sean@mess.org>
> > ---
> >  Documentation/bpf/btf.rst      |  4 +--
> >  include/uapi/linux/btf.h       |  2 +-
> >  kernel/bpf/btf.c               | 54 ++++++++++++++++++++++++++++------
> >  tools/include/uapi/linux/btf.h |  2 +-
> >  4 files changed, 49 insertions(+), 13 deletions(-)
> >
> > diff --git a/Documentation/bpf/btf.rst b/Documentation/bpf/btf.rst
> > index 44dc789de2b4..784f1743dbc7 100644
> > --- a/Documentation/bpf/btf.rst
> > +++ b/Documentation/bpf/btf.rst
> > @@ -132,7 +132,7 @@ The following sections detail encoding of each kind.
> >
> >    #define BTF_INT_ENCODING(VAL)   (((VAL) & 0x0f000000) >> 24)
> >    #define BTF_INT_OFFSET(VAL)     (((VAL) & 0x00ff0000) >> 16)
> > -  #define BTF_INT_BITS(VAL)       ((VAL)  & 0x000000ff)
> > +  #define BTF_INT_BITS(VAL)       ((VAL)  & 0x000003ff)
> >
> >  The ``BTF_INT_ENCODING`` has the following attributes::
> >
> > @@ -147,7 +147,7 @@ pretty print. At most one encoding can be specified for the int type.
> >  The ``BTF_INT_BITS()`` specifies the number of actual bits held by this int
> >  type. For example, a 4-bit bitfield encodes ``BTF_INT_BITS()`` equals to 4.
> >  The ``btf_type.size * 8`` must be equal to or greater than ``BTF_INT_BITS()``
> > -for the type. The maximum value of ``BTF_INT_BITS()`` is 128.
> > +for the type. The maximum value of ``BTF_INT_BITS()`` is 512.
> >
> >  The ``BTF_INT_OFFSET()`` specifies the starting bit offset to calculate values
> >  for this int. For example, a bitfield struct member has:
> > diff --git a/include/uapi/linux/btf.h b/include/uapi/linux/btf.h
> > index 5a667107ad2c..1696fd02b302 100644
> > --- a/include/uapi/linux/btf.h
> > +++ b/include/uapi/linux/btf.h
> > @@ -84,7 +84,7 @@ struct btf_type {
> >   */
> >  #define BTF_INT_ENCODING(VAL)  (((VAL) & 0x0f000000) >> 24)
> >  #define BTF_INT_OFFSET(VAL)    (((VAL) & 0x00ff0000) >> 16)
> > -#define BTF_INT_BITS(VAL)      ((VAL)  & 0x000000ff)
> > +#define BTF_INT_BITS(VAL)      ((VAL)  & 0x000003ff)
> >
> >  /* Attributes stored in the BTF_INT_ENCODING */
> >  #define BTF_INT_SIGNED (1 << 0)
> > diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
> > index 8d6bdb4f4d61..44bc17207e9b 100644
> > --- a/kernel/bpf/btf.c
> > +++ b/kernel/bpf/btf.c
> > @@ -166,7 +166,8 @@
> >   *
> >   */
> >
> > -#define BITS_PER_U128 (sizeof(u64) * BITS_PER_BYTE * 2)
> > +#define BITS_PER_U128 128
> > +#define BITS_PER_U512 512
> >  #define BITS_PER_BYTE_MASK (BITS_PER_BYTE - 1)
> >  #define BITS_PER_BYTE_MASKED(bits) ((bits) & BITS_PER_BYTE_MASK)
> >  #define BITS_ROUNDDOWN_BYTES(bits) ((bits) >> 3)
> > @@ -1907,9 +1908,9 @@ static int btf_int_check_member(struct btf_verifier_env *env,
> >         nr_copy_bits = BTF_INT_BITS(int_data) +
> >                 BITS_PER_BYTE_MASKED(struct_bits_off);
> >
> > -       if (nr_copy_bits > BITS_PER_U128) {
> > +       if (nr_copy_bits > BITS_PER_U512) {
> >                 btf_verifier_log_member(env, struct_type, member,
> > -                                       "nr_copy_bits exceeds 128");
> > +                                       "nr_copy_bits exceeds 512");
> >                 return -EINVAL;
> >         }
> >
> > @@ -1963,9 +1964,9 @@ static int btf_int_check_kflag_member(struct btf_verifier_env *env,
> >
> >         bytes_offset = BITS_ROUNDDOWN_BYTES(struct_bits_off);
> >         nr_copy_bits = nr_bits + BITS_PER_BYTE_MASKED(struct_bits_off);
> > -       if (nr_copy_bits > BITS_PER_U128) {
> > +       if (nr_copy_bits > BITS_PER_U512) {
> >                 btf_verifier_log_member(env, struct_type, member,
> > -                                       "nr_copy_bits exceeds 128");
> > +                                       "nr_copy_bits exceeds 512");
> >                 return -EINVAL;
> >         }
> >
> > @@ -2012,9 +2013,9 @@ static s32 btf_int_check_meta(struct btf_verifier_env *env,
> >
> >         nr_bits = BTF_INT_BITS(int_data) + BTF_INT_OFFSET(int_data);
> >
> > -       if (nr_bits > BITS_PER_U128) {
> > -               btf_verifier_log_type(env, t, "nr_bits exceeds %zu",
> > -                                     BITS_PER_U128);
> > +       if (nr_bits > BITS_PER_U512) {
> > +               btf_verifier_log_type(env, t, "nr_bits exceeds %u",
> > +                                     BITS_PER_U512);
> >                 return -EINVAL;
> >         }
> >
> > @@ -2080,6 +2081,37 @@ static void btf_int128_print(struct btf_show *show, void *data)
> >                                      lower_num);
> >  }
> >
> > +static void btf_bigint_print(struct btf_show *show, void *data, u16 nr_bits)
> > +{
> > +       /* data points to 256 or 512 bit int type */
> > +       char buf[129];
> > +       int last_u64 = nr_bits / 64 - 1;
> > +       bool seen_nonzero = false;
> > +       int i;
> > +
> > +       for (i = 0; i <= last_u64; i++) {
> > +#ifdef __BIG_ENDIAN_BITFIELD
> > +               u64 v = ((u64 *)data)[i];
> > +#else
> > +               u64 v = ((u64 *)data)[last_u64 - i];
> > +#endif

to avoid duplicating this #ifdef with my suggestion, you can do something like

#ifdef __BIG_ENDIAN_BITFIELD
u64 *v = (u64 *)data;
int step = 1;
#else
u64 *v = (u64 *)data + last_u64;
int step = -1;
#endif

and then just `v += step;` everywhere

> > +               if (!seen_nonzero) {
> > +                       if (!v && i != last_u64)
> > +                               continue;
> > +
> > +                       snprintf(buf, sizeof(buf), "%llx", v);
> > +
> > +                       seen_nonzero = true;
> > +               } else {
> > +                       size_t off = strlen(buf);
>
> this is wasteful, snprintf() returns number of characters printed, so
> you can maintain offset properly
>
> > +
> > +                       snprintf(buf + off, sizeof(buf) - off, "%016llx", v);
> > +               }
> > +       }
> > +
> > +       btf_show_type_value(show, "0x%s", buf);
> > +}
>
> seen_nonzero is a bit convoluted, two simple loops might be more
> straightforward:
>
> u64 v;
> int off;
>
> /* find first non-zero u64 (or stop on the last one regardless) */
> for (i = 0; i < last_u64; i++) {
>   v = ...;
>   if (!v)
>     continue;
> }
> /* print non-zero or zero, but last u64 */
> off = snprintf(buf, sizeof(buf), "%llx", v);
> /* print the rest with zero padding */
> for (i++; i <= last_u64; i++) {
>   v = ...;
>   off += snprintf(buf + off, sizeof(buf) - off, "%016llx", v);
> }
>
> > +
> >  static void btf_int128_shift(u64 *print_num, u16 left_shift_bits,
> >                              u16 right_shift_bits)
> >  {
> > @@ -2172,7 +2204,7 @@ static void btf_int_show(const struct btf *btf, const struct btf_type *t,
> >         u32 int_data = btf_type_int(t);
> >         u8 encoding = BTF_INT_ENCODING(int_data);
> >         bool sign = encoding & BTF_INT_SIGNED;
> > -       u8 nr_bits = BTF_INT_BITS(int_data);
> > +       u16 nr_bits = BTF_INT_BITS(int_data);
> >         void *safe_data;
> >
> >         safe_data = btf_show_start_type(show, t, type_id, data);
> > @@ -2186,6 +2218,10 @@ static void btf_int_show(const struct btf *btf, const struct btf_type *t,
> >         }
> >
> >         switch (nr_bits) {
> > +       case 512:
> > +       case 256:
> > +               btf_bigint_print(show, safe_data, nr_bits);
> > +               break;
> >         case 128:
> >                 btf_int128_print(show, safe_data);
>
> btf_bigint_print() supersedes btf_int128_print(), why maintain both?
>
> >                 break;
> > diff --git a/tools/include/uapi/linux/btf.h b/tools/include/uapi/linux/btf.h
> > index 5a667107ad2c..1696fd02b302 100644
> > --- a/tools/include/uapi/linux/btf.h
> > +++ b/tools/include/uapi/linux/btf.h
> > @@ -84,7 +84,7 @@ struct btf_type {
> >   */
> >  #define BTF_INT_ENCODING(VAL)  (((VAL) & 0x0f000000) >> 24)
> >  #define BTF_INT_OFFSET(VAL)    (((VAL) & 0x00ff0000) >> 16)
> > -#define BTF_INT_BITS(VAL)      ((VAL)  & 0x000000ff)
> > +#define BTF_INT_BITS(VAL)      ((VAL)  & 0x000003ff)
> >
> >  /* Attributes stored in the BTF_INT_ENCODING */
> >  #define BTF_INT_SIGNED (1 << 0)
> > --
> > 2.29.2
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bza-D-FtFkeEt3jEpR-9QNpXdRCnhx2Sekkj44xqRv%2Bi-Q%40mail.gmail.com.
