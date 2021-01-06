Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBXUM2X7QKGQEA32KYUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id E87422EB935
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 06:10:55 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id m9sf1037836ioa.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 21:10:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609909854; cv=pass;
        d=google.com; s=arc-20160816;
        b=n+tZAZBl4l2JrSTIk6sOmFMlP+DzLYU53TF5cFWATkFMSS3L5C4kI7A4kQOj8+jEaX
         mBr33KL/cQgs9Fa/8k7gB31XozwrYxgVsbWn81WHe91XhmtXqKHdr1/xX2/waFKrrj6+
         nCFmGYZ+HnPA5BHjIiTV9oiLT4N1UAD4emAuu+r19nyzvsu7nrSE+Iwk5gAjQ1dmqbqi
         MJlK4JKOjWRQBipHM1t8XIjcMO4BVQrnqU+7O0d8wuT25X4awLhPtU1xKg5bsKQ9SsrY
         BP6k4vszesU8OP9QikFDBD0SVUqTyQnIktOzF+8Oe3tozuy4w4uLHT5mDBtNlKcPwazY
         OqMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=I8MMjcTr4RdLXFbc+CheudG/vdaiF9QRCThrpiqkzsY=;
        b=vMrUo1IiC+LJxllDCjknCALzGwz9xL8NgmDlDav8FLVvpWLbR2xi/3EQOI7pN7qC1g
         xH0sNhq+SSRq2ST+Ii4iT11NQEh0yfefKhFQ9OaHM7VWp8BFWGRzrsqzT88DBtTX7zDr
         e2bnb8XRCYrDErFctT7XlSLsTrMle4f1sBsZMANwNsYDvQBXP8nIr+cbdrPTbNzyAsEv
         RdbdTfS8/IAcmFkviB6+oJFkmaCd5DMCYpDVZ9zp9fv/giV8rl9cHW7Sz1qChooK/ZE9
         9ItXWDu1WnHaNL+ARP4B9I0U3DCT2N6FV3cBq6kYRBgJ7STmqMhTz/UqQ9zdsY7jIqwF
         8axQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ScquwSv3;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I8MMjcTr4RdLXFbc+CheudG/vdaiF9QRCThrpiqkzsY=;
        b=Yw2YzFBJviQGZjz+d3K2aHjsOc/GHFTfb9gKbxvJMIsr4kjO3Dpcnjp7m9Wyg7ldwT
         AOz5s5P2MCEPdel2XKfuVcYto6r3P+NkEPj7MgCnzoF/bpynSvCmhVvELcnmBQni+OeZ
         E3VByYltr76ImbKuddgUPMXNqm9LZ2R4alp1avdA3Mb+BsihaGLGhrKACO7yGnzSki76
         UGFsqpe1dH1l4MMNxV9Ufj445Xeb8DYHx+mnqFTlz1qoNmJ85CM1FnaOE6AJ5jfWl0L/
         NFLVRsjt4h1yWrxekIxaKk+EYwKcDA8HvZpaSQO+1jghNQjppfaUWbIP0U8UCzpmM2tq
         4hnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I8MMjcTr4RdLXFbc+CheudG/vdaiF9QRCThrpiqkzsY=;
        b=Nb48IG++zUx8OHsYFJo/aoqtwERSH68hEw1PalJCpVSc5jakbsKtpPJTKEFWUIMf6i
         zY5NceKQEkY/aAYY68kh+HOcD+ihz3jkWEvvd0mZQJTjssEe48p94O+CY6a7GdFf+RTw
         3IlIGtUsQ9A0TwemukHVsbGLTV1n5v2Izo4JBJokwY9nzg7EJjhfM79m3BPRijuKlMme
         h/FfJdFAJfH48rj+ihe57SMFdtBIwpkDOd9gQv+X9a2ZB+IOP/wvttHmJEw0TqlnhCMp
         x/ThKP4bFymZqtssx2Nt9xPXmr46zaxtua5a9AEcdz9hSeL4q2LQSBIKDE63eB3Oqbvp
         Lk6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I8MMjcTr4RdLXFbc+CheudG/vdaiF9QRCThrpiqkzsY=;
        b=N+A81cmgDsowDZ00IotUs5xGd8Ge/0kW1mzkf0gcN8pVj8Fq0tHX5I2WyIs2b5knxr
         bz5frHMMA9Suv9PtfjZgwlQzvdlrFmqmW7Ve1vx5jvakRmPor9SKjMK6RlhhcagpHreu
         Uja6Rr0LJjDFOzHFNh47etkFf9fATJ6SuPoUlNhNqoQwkOaN25DEyq1kqx188wkO+Kgc
         QsOECLU3jENISW5aBly6ypWy0dJceXpyWehKdfJzwo3rvRQq0TwZRuKuqTF+BQXPhowG
         IEaJfAUjedwVyT0P3M2gFHtKpzQX96PtGfTFPH8GYcA1586xsN7OA5mYrdjXBj3VYK0I
         mw+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WWj2EfQRsfiEdz7jb3ePkael+WMqUlyQ+2MZzADYq6YqAOBmk
	C+ys5maz7yQFEaLjdoQIGHc=
X-Google-Smtp-Source: ABdhPJzgGTukTqDWisce5jRzQiuK6YudVjf7xuqRDnbBS2lEuSXZ2myug6MJVb92je2rO0rOQrDNDg==
X-Received: by 2002:a92:d68f:: with SMTP id p15mr2655115iln.29.1609909854702;
        Tue, 05 Jan 2021 21:10:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:97d8:: with SMTP id k24ls261141ios.6.gmail; Tue, 05 Jan
 2021 21:10:54 -0800 (PST)
X-Received: by 2002:a5d:8b98:: with SMTP id p24mr1846489iol.7.1609909854182;
        Tue, 05 Jan 2021 21:10:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609909854; cv=none;
        d=google.com; s=arc-20160816;
        b=kqlxniYna8GyGOtxlgoP4mA4dqcu7/SoYfVN4Vp7ESnnbhdwR2751+IMHNbGM5LV3x
         KUodvZfXNMJ02PeRj2dNGRg5JdeBGKzTkEnO1MPmsujEQvrWV7nuuKUfeIVW9Wh/geod
         kWnEWg6Yc4sl6D+CpWikZn8F3ymROoGGEfddlO8dpOCZsn/cFqorRQfC8LGfnmo2CylV
         hzCOPECgolx2UadxXPOl7+99Y83Ze04ZkhwgL8IO/r/u1dMRZ8UQwE0l1f8B/k6Vtw9a
         NXwSDUpkE/jSiUuyltJOWgFoGNO5r09eKLZC/8CtPmVHCcbItA241HZHHZFsBHzcvH1S
         t9sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zXdX42ua40xKPxCS3alHiWCo/OZpqmT3ZMbLUhJVIoQ=;
        b=Jd5S7HvMNBUelKG9HLpy0zb1xDhjhEFrk0A5fnZ+bPzWYZ976h8v5TWQENZ9Rvco4U
         XjszUJft296TNLaRPhne2Eg9hMig/PqUtase424128j170qJI253beu2pzA6bz7q5F1a
         cO9//7z5H86c1e1UJD1VOgKUOO3Obp0c6vtp4BNRz/ZJaTezuWDaVPI6Ju4aV8eKypdL
         ivZTyaQiH8PbELjU1kB3DO6asRl3Wx3ZL+DJIeMY34rmvI5O729AkZUpBxvr9rxSqMe7
         qAcgAgdiDqfcMzfIFsLL9vCaGnzVZj8XgxH5gxMQKqyuThDTsMr3DfLawvZYq3qY9W9l
         xHsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ScquwSv3;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id q4si86801iog.3.2021.01.05.21.10.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 21:10:54 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id f6so1702238ybq.13
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 21:10:54 -0800 (PST)
X-Received: by 2002:a25:d44:: with SMTP id 65mr3853240ybn.260.1609909853620;
 Tue, 05 Jan 2021 21:10:53 -0800 (PST)
MIME-Version: 1.0
References: <cover.1609855479.git.sean@mess.org> <13cfab3593e0ea960ca732c259bfa60bf3c16b3b.1609855479.git.sean@mess.org>
In-Reply-To: <13cfab3593e0ea960ca732c259bfa60bf3c16b3b.1609855479.git.sean@mess.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 5 Jan 2021 21:10:42 -0800
Message-ID: <CAEf4BzZgPx7YZ_S6a142gu+0XqxOq5-0=iMnAr1-DDJqyNOQrg@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=ScquwSv3;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Tue, Jan 5, 2021 at 6:45 AM Sean Young <sean@mess.org> wrote:
>
> clang supports arbitrary length ints using the _ExtInt extension. This
> can be useful to hold very large values, e.g. 256 bit or 512 bit types.
>
> Larger types (e.g. 1024 bits) are possible but I am unaware of a use
> case for these.
>
> This requires the _ExtInt extension enabled in clang, which is under
> review.
>
> Link: https://clang.llvm.org/docs/LanguageExtensions.html#extended-integer-types
> Link: https://reviews.llvm.org/D93103
>
> Signed-off-by: Sean Young <sean@mess.org>
> ---
>  Documentation/bpf/btf.rst      |  4 +--
>  include/uapi/linux/btf.h       |  2 +-
>  kernel/bpf/btf.c               | 54 ++++++++++++++++++++++++++++------
>  tools/include/uapi/linux/btf.h |  2 +-
>  4 files changed, 49 insertions(+), 13 deletions(-)
>
> diff --git a/Documentation/bpf/btf.rst b/Documentation/bpf/btf.rst
> index 44dc789de2b4..784f1743dbc7 100644
> --- a/Documentation/bpf/btf.rst
> +++ b/Documentation/bpf/btf.rst
> @@ -132,7 +132,7 @@ The following sections detail encoding of each kind.
>
>    #define BTF_INT_ENCODING(VAL)   (((VAL) & 0x0f000000) >> 24)
>    #define BTF_INT_OFFSET(VAL)     (((VAL) & 0x00ff0000) >> 16)
> -  #define BTF_INT_BITS(VAL)       ((VAL)  & 0x000000ff)
> +  #define BTF_INT_BITS(VAL)       ((VAL)  & 0x000003ff)
>
>  The ``BTF_INT_ENCODING`` has the following attributes::
>
> @@ -147,7 +147,7 @@ pretty print. At most one encoding can be specified for the int type.
>  The ``BTF_INT_BITS()`` specifies the number of actual bits held by this int
>  type. For example, a 4-bit bitfield encodes ``BTF_INT_BITS()`` equals to 4.
>  The ``btf_type.size * 8`` must be equal to or greater than ``BTF_INT_BITS()``
> -for the type. The maximum value of ``BTF_INT_BITS()`` is 128.
> +for the type. The maximum value of ``BTF_INT_BITS()`` is 512.
>
>  The ``BTF_INT_OFFSET()`` specifies the starting bit offset to calculate values
>  for this int. For example, a bitfield struct member has:
> diff --git a/include/uapi/linux/btf.h b/include/uapi/linux/btf.h
> index 5a667107ad2c..1696fd02b302 100644
> --- a/include/uapi/linux/btf.h
> +++ b/include/uapi/linux/btf.h
> @@ -84,7 +84,7 @@ struct btf_type {
>   */
>  #define BTF_INT_ENCODING(VAL)  (((VAL) & 0x0f000000) >> 24)
>  #define BTF_INT_OFFSET(VAL)    (((VAL) & 0x00ff0000) >> 16)
> -#define BTF_INT_BITS(VAL)      ((VAL)  & 0x000000ff)
> +#define BTF_INT_BITS(VAL)      ((VAL)  & 0x000003ff)
>
>  /* Attributes stored in the BTF_INT_ENCODING */
>  #define BTF_INT_SIGNED (1 << 0)
> diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
> index 8d6bdb4f4d61..44bc17207e9b 100644
> --- a/kernel/bpf/btf.c
> +++ b/kernel/bpf/btf.c
> @@ -166,7 +166,8 @@
>   *
>   */
>
> -#define BITS_PER_U128 (sizeof(u64) * BITS_PER_BYTE * 2)
> +#define BITS_PER_U128 128
> +#define BITS_PER_U512 512
>  #define BITS_PER_BYTE_MASK (BITS_PER_BYTE - 1)
>  #define BITS_PER_BYTE_MASKED(bits) ((bits) & BITS_PER_BYTE_MASK)
>  #define BITS_ROUNDDOWN_BYTES(bits) ((bits) >> 3)
> @@ -1907,9 +1908,9 @@ static int btf_int_check_member(struct btf_verifier_env *env,
>         nr_copy_bits = BTF_INT_BITS(int_data) +
>                 BITS_PER_BYTE_MASKED(struct_bits_off);
>
> -       if (nr_copy_bits > BITS_PER_U128) {
> +       if (nr_copy_bits > BITS_PER_U512) {
>                 btf_verifier_log_member(env, struct_type, member,
> -                                       "nr_copy_bits exceeds 128");
> +                                       "nr_copy_bits exceeds 512");
>                 return -EINVAL;
>         }
>
> @@ -1963,9 +1964,9 @@ static int btf_int_check_kflag_member(struct btf_verifier_env *env,
>
>         bytes_offset = BITS_ROUNDDOWN_BYTES(struct_bits_off);
>         nr_copy_bits = nr_bits + BITS_PER_BYTE_MASKED(struct_bits_off);
> -       if (nr_copy_bits > BITS_PER_U128) {
> +       if (nr_copy_bits > BITS_PER_U512) {
>                 btf_verifier_log_member(env, struct_type, member,
> -                                       "nr_copy_bits exceeds 128");
> +                                       "nr_copy_bits exceeds 512");
>                 return -EINVAL;
>         }
>
> @@ -2012,9 +2013,9 @@ static s32 btf_int_check_meta(struct btf_verifier_env *env,
>
>         nr_bits = BTF_INT_BITS(int_data) + BTF_INT_OFFSET(int_data);
>
> -       if (nr_bits > BITS_PER_U128) {
> -               btf_verifier_log_type(env, t, "nr_bits exceeds %zu",
> -                                     BITS_PER_U128);
> +       if (nr_bits > BITS_PER_U512) {
> +               btf_verifier_log_type(env, t, "nr_bits exceeds %u",
> +                                     BITS_PER_U512);
>                 return -EINVAL;
>         }
>
> @@ -2080,6 +2081,37 @@ static void btf_int128_print(struct btf_show *show, void *data)
>                                      lower_num);
>  }
>
> +static void btf_bigint_print(struct btf_show *show, void *data, u16 nr_bits)
> +{
> +       /* data points to 256 or 512 bit int type */
> +       char buf[129];
> +       int last_u64 = nr_bits / 64 - 1;
> +       bool seen_nonzero = false;
> +       int i;
> +
> +       for (i = 0; i <= last_u64; i++) {
> +#ifdef __BIG_ENDIAN_BITFIELD
> +               u64 v = ((u64 *)data)[i];
> +#else
> +               u64 v = ((u64 *)data)[last_u64 - i];
> +#endif
> +               if (!seen_nonzero) {
> +                       if (!v && i != last_u64)
> +                               continue;
> +
> +                       snprintf(buf, sizeof(buf), "%llx", v);
> +
> +                       seen_nonzero = true;
> +               } else {
> +                       size_t off = strlen(buf);

this is wasteful, snprintf() returns number of characters printed, so
you can maintain offset properly

> +
> +                       snprintf(buf + off, sizeof(buf) - off, "%016llx", v);
> +               }
> +       }
> +
> +       btf_show_type_value(show, "0x%s", buf);
> +}

seen_nonzero is a bit convoluted, two simple loops might be more
straightforward:

u64 v;
int off;

/* find first non-zero u64 (or stop on the last one regardless) */
for (i = 0; i < last_u64; i++) {
  v = ...;
  if (!v)
    continue;
}
/* print non-zero or zero, but last u64 */
off = snprintf(buf, sizeof(buf), "%llx", v);
/* print the rest with zero padding */
for (i++; i <= last_u64; i++) {
  v = ...;
  off += snprintf(buf + off, sizeof(buf) - off, "%016llx", v);
}

> +
>  static void btf_int128_shift(u64 *print_num, u16 left_shift_bits,
>                              u16 right_shift_bits)
>  {
> @@ -2172,7 +2204,7 @@ static void btf_int_show(const struct btf *btf, const struct btf_type *t,
>         u32 int_data = btf_type_int(t);
>         u8 encoding = BTF_INT_ENCODING(int_data);
>         bool sign = encoding & BTF_INT_SIGNED;
> -       u8 nr_bits = BTF_INT_BITS(int_data);
> +       u16 nr_bits = BTF_INT_BITS(int_data);
>         void *safe_data;
>
>         safe_data = btf_show_start_type(show, t, type_id, data);
> @@ -2186,6 +2218,10 @@ static void btf_int_show(const struct btf *btf, const struct btf_type *t,
>         }
>
>         switch (nr_bits) {
> +       case 512:
> +       case 256:
> +               btf_bigint_print(show, safe_data, nr_bits);
> +               break;
>         case 128:
>                 btf_int128_print(show, safe_data);

btf_bigint_print() supersedes btf_int128_print(), why maintain both?

>                 break;
> diff --git a/tools/include/uapi/linux/btf.h b/tools/include/uapi/linux/btf.h
> index 5a667107ad2c..1696fd02b302 100644
> --- a/tools/include/uapi/linux/btf.h
> +++ b/tools/include/uapi/linux/btf.h
> @@ -84,7 +84,7 @@ struct btf_type {
>   */
>  #define BTF_INT_ENCODING(VAL)  (((VAL) & 0x0f000000) >> 24)
>  #define BTF_INT_OFFSET(VAL)    (((VAL) & 0x00ff0000) >> 16)
> -#define BTF_INT_BITS(VAL)      ((VAL)  & 0x000000ff)
> +#define BTF_INT_BITS(VAL)      ((VAL)  & 0x000003ff)
>
>  /* Attributes stored in the BTF_INT_ENCODING */
>  #define BTF_INT_SIGNED (1 << 0)
> --
> 2.29.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZgPx7YZ_S6a142gu%2B0XqxOq5-0%3DiMnAr1-DDJqyNOQrg%40mail.gmail.com.
