Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBFPE77VQKGQEKC2UTCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DB8B41F0
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 22:35:34 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id 11sf1448907qkh.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 13:35:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568666133; cv=pass;
        d=google.com; s=arc-20160816;
        b=x4FGt/R3dLzMTpEpLUDVwtLf2PDbDpZIQy90A8wuR8vptP4CVKcL7TMo08pB6uzBsb
         Lw6k7xdKePxpe4k0TkSnjxD9bqYsET0wPz1jWnG/BJhnB+K0xwL8mW8Kbyv5P1wKYWix
         lOvXb28I6mZZK4pc2BV5bXyFp2QZdaP56QF0DV5hLPYdn3yGQa3Xw9IvnxPtlAwwJXng
         Woa+63G8UxmnIw5Fa8iKtE/2Lvw2sFBGNEoK3H0waRfD/NaWTxQMYh3lCjOz8m+3bG2V
         9U/hcQhhMVnHSPrfyfU7YjuywuxwNPknpKj5KnCHIV9MFd038lKjq5eLZVM7rvduik9O
         IciQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=7ldwdoEjlvgK698G+xurN8ZpGHQIEK+EckGRlFlQZ/g=;
        b=wCJbLAYsYD3n+0KYfF/4Hx2p1/wXNDS3h3v/If5a5HtapQit0LZ57+wdBc1Y8q4+Z4
         3g5y6+A8wCrXHDbWiAI0rlz72l5p0pT/Q+vv55tSizBAMH0zC6d6bOrJEit5ogmR86YL
         zN5gsf/2NQxryH0FC2iXJNe+2L4ru/X7hhNktupHHUh/NgT4zNHsmwRnXFsrIdQyo8Kb
         tqK/7nZulm9G9KIAd5xMMLvnHS+L8+V2LREymReLN573/zqO1zpQzJnDk9jgjq/IH59H
         96rgiL+sF0iMGSfPVIcF/bRVrtrC2mbp3RfnSXkxFOTR2zYRPe9OpH4a8B6m6GDg9jN4
         ggAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NVDnnS7Q;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7ldwdoEjlvgK698G+xurN8ZpGHQIEK+EckGRlFlQZ/g=;
        b=MKXkKyzYx6gkiunPvUqwEV0t6uV+nKDWWEiM+EV29caPPSdbJ11/faiBVL8tuPte3e
         8uaR+WpG1nD8bQwQ4DU8RGSclNAn3ti05gO2soRqMfJfbP7fFrchFz0YBMh3hY+GceFH
         7njhyf4r5GDbc+LWKOq4It5kQw6/Euebc0Ipo1fuc2zjg2uX35lX5X8+Dv5HHtcv3y2Y
         h6uTo3amkCVEg8qdNHiq8o7x2b8sYUqMQUAB9NbGbX5tqgUnnbSTnyhKYJoFg6IKhKJK
         r3BgOLXgu+E6mgZgsA3H8d/toIvOiD5ieGZ//DzDuLIkZqr99HkSTRkaYzd9eU1yibG1
         Zx5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7ldwdoEjlvgK698G+xurN8ZpGHQIEK+EckGRlFlQZ/g=;
        b=JSqt4BCbVwtpDQLWAuZ7zJWzuosG/1LUStsOI7A7nZ/YcBk+qcVQ0vCElfbcaiKsgZ
         2BBJmBiud/pp2R/C5xI2EZqGvdNep23QJvyHXf9pFyEWY4ghW6Gt01ACVqzXsELUAOHH
         L0mUYRkyQrXOKVxTeso0khTe6mmEqCXEY6j3wKvHAD+0O1t0Fi+UDW0UQuWDmTG6WcpH
         AdtEULiBGyis4tdsSZETGoC4IT3XqGxhf7svF2SVe3oetl5tb+gHELc22090kT5IbHbq
         ZYlQdvtDebpsNyRq4pV2Q7v9SZfG7bMp1PwetjVjP/eScGTTL8mEnoCvGRGKFqIOX9O8
         L/TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7ldwdoEjlvgK698G+xurN8ZpGHQIEK+EckGRlFlQZ/g=;
        b=DgIlgvTkMVNBbAXHUnKGyAoMhm9TQGoCLzrKHJPxwaqobE9wlQIduRpb7XdNGIGmXT
         QocgbQzgLtiOYFJEQP72ynemgRhLwcm61u6YSjlbQxTp8q3O09BmL2dB8lpTNRsqeHIN
         z9v30Nj4Oz5wwivig6DXKMGBXRcTx6qPzw8vXaFWoA1jc6YgHUrpD/7C2nS3maKbdgSS
         zpWXIPAoS4Byzp2SCtYyMuQPYrgFlfiVk9f549F6Kkz/6UNIoWRCXwmHCrCLxi+augqW
         o6EaqBkXIi/LckJ4p38C5pYkTHI4KxeugyzYEUVUfDSFx8XY6j3ocz/zJGvfA8x56aFb
         u2mw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWsfjawH9Bx26qj5nfmTxr2zY6/9/G1G4LO/GwHOXm144YNOZL5
	YQxFgqWtEUQytH6LXKaMdes=
X-Google-Smtp-Source: APXvYqzg8cSbOHxQwWzESJm0N/VaMWZTD5QhQ1fhI+6pGf8IpFxbp+o6mozPeAc0tx0DsmPZ1E8frA==
X-Received: by 2002:a37:8cc3:: with SMTP id o186mr199374qkd.186.1568666133113;
        Mon, 16 Sep 2019 13:35:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2efb:: with SMTP id i56ls242675qta.11.gmail; Mon, 16 Sep
 2019 13:35:32 -0700 (PDT)
X-Received: by 2002:ac8:2c86:: with SMTP id 6mr263295qtw.113.1568666132894;
        Mon, 16 Sep 2019 13:35:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568666132; cv=none;
        d=google.com; s=arc-20160816;
        b=DGHdtpem59Z0mbyGpRUYrLAuDBMSFYTiGRHDDg1KYdmcXF0Q+xkn+Mxl6K2+ZMLOPa
         8GCnxlzurtS0GaMSKD6yKE4Mey5M/SXHi6e1V0brZHwxe5ieX7dk0gUE5agvXahWb/yS
         jAEMGULp1Z07nX5k5rELabsn80PYaUcj5VqGRV0+XueX1UzmG6sejZfU6EMn18Zd/Ulk
         lBQghiltohVYruv0xo7c8cdcBKDsMrjoVCvXI23mcahBA/ZK70DavNLN+7VMnpWhx8yv
         2UXAVNv+UeTCqK9R/svPeOgSxiMqLnRl8rvJrtCYERZAsdFrHvXl03+jL/W66oILYnvn
         kUSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ihyLcr/IE8dYmQPkpIxkQFwoGx9mvcYHtpb7Os1ZV9I=;
        b=bDDPP3M+QxcvJ265v5R4wSo7JVrUwytD0mQkh/0r4ycScjFgYSpx3JgFU9W7cbLHQe
         zzqmCb5hdyuKOThaC60i+5YDBDNni7+9huC9ydpAV8SIAgD9SbFqLxSUoC4M+O0NkQkT
         w1Ynw0ki6RV0Z0u37yBumZlDh+9//E/ap9L0gZhJd0OAmht+RfGgL5d8aASgg+Dp64Zw
         hpJ9rKoqzsj8W1TE+aRJKlqAbSt7oIp6izDK9o4BBmoIT96yb0zAQfnv7g/e0H54PxT9
         rNa7hppNUhJ6p2Nc7mlbU0Kg1v//Wav0DPkMd+rUUMBtzvogy4RqjmAU8HmmUqyfyIqM
         3dKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NVDnnS7Q;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id v7si54035qkf.5.2019.09.16.13.35.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 13:35:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id x5so1528472qtr.7
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 13:35:32 -0700 (PDT)
X-Received: by 2002:ac8:7401:: with SMTP id p1mr259871qtq.141.1568666132646;
 Mon, 16 Sep 2019 13:35:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org> <20190916105433.11404-5-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-5-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 16 Sep 2019 13:35:21 -0700
Message-ID: <CAEf4BzYJ5Q4rBHGET5z6nPBhh=8qAK7uuCK=Qnsh14FDH-24gA@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 04/14] samples: bpf: use own EXTRA_CFLAGS for
 clang commands
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NVDnnS7Q;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Sep 16, 2019 at 4:01 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> It can overlap with CFLAGS used for libraries built with gcc if
> not now then in next patches. Correct it here for simplicity.
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---

With GCC BPF front-end recently added, we should probably generalize
this to something like BPF_EXTRA_CFLAGS or something like that,
eventually. But for now:

Acked-by: Andrii Nakryiko <andriin@fb.com>

>  samples/bpf/Makefile | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index b59e77e2250e..8ecc5d0c2d5b 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -218,10 +218,10 @@ BTF_LLVM_PROBE := $(shell echo "int main() { return 0; }" | \
>                           /bin/rm -f ./llvm_btf_verify.o)
>
>  ifneq ($(BTF_LLVM_PROBE),)
> -       EXTRA_CFLAGS += -g
> +       CLANG_EXTRA_CFLAGS += -g
>  else
>  ifneq ($(and $(BTF_LLC_PROBE),$(BTF_PAHOLE_PROBE),$(BTF_OBJCOPY_PROBE)),)
> -       EXTRA_CFLAGS += -g
> +       CLANG_EXTRA_CFLAGS += -g
>         LLC_FLAGS += -mattr=dwarfris
>         DWARF2BTF = y
>  endif
> @@ -280,8 +280,8 @@ $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
>  # useless for BPF samples.
>  $(obj)/%.o: $(src)/%.c
>         @echo "  CLANG-bpf " $@
> -       $(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(EXTRA_CFLAGS) -I$(obj) \
> -               -I$(srctree)/tools/testing/selftests/bpf/ \
> +       $(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(CLANG_EXTRA_CFLAGS) \
> +               -I$(obj) -I$(srctree)/tools/testing/selftests/bpf/ \
>                 -D__KERNEL__ -D__BPF_TRACING__ -Wno-unused-value -Wno-pointer-sign \
>                 -D__TARGET_ARCH_$(SRCARCH) -Wno-compare-distinct-pointer-types \
>                 -Wno-gnu-variable-sized-type-not-at-end \
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYJ5Q4rBHGET5z6nPBhh%3D8qAK7uuCK%3DQnsh14FDH-24gA%40mail.gmail.com.
