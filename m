Return-Path: <clang-built-linux+bncBDNIR65Z3ENRBSXYYCFQMGQEL7HUWYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id DADFA434F7D
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 17:56:58 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id u23-20020a50a417000000b003db23c7e5e2sf21453800edb.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 08:56:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634745418; cv=pass;
        d=google.com; s=arc-20160816;
        b=Layd0FfS92DK11EMiF0yF924+V506wW1R+R2L6OrgTCHe3OtYzFiRMdPXMxXpi+P/h
         KcwiwHTJr3BMyRY/yZJFri1PqFnpEjCqOCYum8jx5eyM6BcCP0dPvL8I9SX1EuF3ZMPn
         9kkAz+K1NyB9H72Br/bfgciRzYdMnxQ9UHPqki4YecHhUywxwDPHq5SVhvPxUH2I1VVI
         ZL1cbBGPjRELWRgOdN42q9IekzxDO30hxjvNzHRwvpLRO56psfBUhv/h9CyjhYaVTqMt
         uDBqf6wpSs3VlqXMCZxRQrA9PvKa4uGbhMTmwLvw/gBAhlRjffR5kEtpcNmMQITqvHj0
         hejg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dBaLCufeBW1+6DGjCtjISq/CjlT5vpLpxRTn0sGBtbw=;
        b=u8yOyUo8XakHourjoYo9wcl1mMMaLuEmPi36X2pYLwytXLR0M50bREj4B8G1tRbZi2
         vP2vyhbb+ljYqKfJ/4q5r7FtGDRKUQBw4MiKBMqzS38FanmYHiqjfgUqi9cN3ahy4K01
         SjK1v2e5IHBWLUZPSE0/6/2dOpDZ2ia/tALefJRXistn+79+c5j+sbYjnZmVsuRdDyYh
         aKZ3BGdGK0dSZmMiE//Aa/GwOXX2N/1ojTqEk+26ZATsbbMnLt6CUMbz+YVduE7ZKuJa
         o3G9WnHaAx8QzaVjrC7nguyjXEOK+nAJKX4Ys1+9ckOZj03F5INUR38rYzyAdCLlGf1h
         iiWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cloudflare.com header.s=google header.b=UoEY0usm;
       spf=pass (google.com: domain of lorenz@cloudflare.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=lorenz@cloudflare.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=cloudflare.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dBaLCufeBW1+6DGjCtjISq/CjlT5vpLpxRTn0sGBtbw=;
        b=Hqfm8bRtZTj05T5DrEli04/MiCMf6zYkC+CsvcRUYHakD/gq1GsQcRzCes4U4+76IV
         v/wf/Gih+dScVm7WIjkoYOORJ+D/LnInqGSAj9BTcZ+M25twQ1KsluZy3MKDw6mKanlQ
         A8Cy/xqICYDv1gsmsTTMgudUUqzOSsY05afJaKxBrqI/QOyG0UJctoQSIUSfU+g8RcHM
         whwkbs/WkcOcwTs/xOBXlJiaM6k9U9nSyVE5sWnsVq5btCg/tVxTQXKDIQ2TuS275eoi
         P/3HqlEMz2YKx+WckygRgOw8IzIOgQmJ3GyOPwtR1ui6OcN6L9LVryWxYt+Wazx1LqUs
         jfRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dBaLCufeBW1+6DGjCtjISq/CjlT5vpLpxRTn0sGBtbw=;
        b=scwQ3IK3LU0DzK2m33+nWI/HihgAjQ7H7J9CcdWbKCtu/sKCXtTL5OVrF/4mPsXa0i
         8EQ8vqja292cluyaBr4Of3pAjqH1KUtTA2nSIo4XS/LUBDlrgnD4CufHCoJAItM5h/jK
         fgkOcnz92fJ6Sp2p87ubphLj23h38ea1vaeu5vHaDnI2QTLtu/410v5UNgyn8E8kbTkR
         oTWUoasGRzraV7LbgqXu7W2GxpL7ws0p3+rSrtuo7w8q1ZRw9S9cB4dQnlLi9fRWWwR9
         71HCCrDsBz8VpfseFBSQ+iZci7hgI0SA2RGufx/5SCB2rsny7PvhUMqt2hURB2sqwrJR
         MXMQ==
X-Gm-Message-State: AOAM531uL1Ln0E8om+ktyuJWwuNztxSsFx5mar2iLSnIaOgyAb+H49M4
	nGFwrSYbuFH+6Uvu96hJvwA=
X-Google-Smtp-Source: ABdhPJyWVFmoRZQZaGHVM4WgWXFtqrG3DXbweFFG/RmAaLnxmAps+NigXfm5ijHw96jRgLEYM/6m/g==
X-Received: by 2002:a17:907:9714:: with SMTP id jg20mr139181ejc.455.1634745418637;
        Wed, 20 Oct 2021 08:56:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:18c:: with SMTP id r12ls3200432edv.3.gmail; Wed, 20
 Oct 2021 08:56:57 -0700 (PDT)
X-Received: by 2002:a05:6402:42c8:: with SMTP id i8mr323829edc.349.1634745417634;
        Wed, 20 Oct 2021 08:56:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634745417; cv=none;
        d=google.com; s=arc-20160816;
        b=ArnU/XuOAa0Erryso2MJ+B22hFPowMhMleg42ImMBaJx9MveaZOMRvfMNP+KAYxdFq
         yQEu0bsR6dgZW4n64RR0mi4gEmCvTISSZdpkcBZucu5BP//pLqSPfZzXgK12eOjuldTt
         Mf5Bq+eodnSu1ATLUS89YYIoiGEieRCo7HbhnS7XMeB2meTnh79BUR87Y8MBzj8On8Mp
         y58Ep0o7eMVbbWHenq4CyUZHa11jO1I1PJ1KKhHT3x2oT1JAbwNJOcv8+XIjaPAkDitv
         HcU7TmS06U8HtGaHre7H1DfY/kwRP98WFn3KUgb/TG958hLPixm1ohyRflfzJqSG15id
         gYQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TCZ683u99Jm41qEN6eWPpP1n8rGety/eAnHibS9A2GQ=;
        b=wi1/0xHWyVi39bIEydX8U+rgJcFwi2t4qXxYKTNkSy4szc+KGnADIjUr76ooiSjxWW
         1/HSmstnz/VWN61JInrqRXcHitquEuDMHdHVYEVUeyCk1lHJV77vf45ujp4NUtutm1FM
         GtwXjwGG69+l25+ORGZy6iV0NRKB0gMZ75EIMbnAwYQW0Pl5Xff94TuJRWX4N8tdvoJC
         4o5OGMw403xuEk2u6QNUm5rrKOgI6u1N8Fm+8YbZi+P787jsgIdGVgudL1IdO+4B0NAP
         sfHxe7DVlzYCjzqySLNDOh7E7jA6w85T5Eqb/5QeN9gpEdscj+/LVWDnsQkKGpj6lu5H
         a97A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cloudflare.com header.s=google header.b=UoEY0usm;
       spf=pass (google.com: domain of lorenz@cloudflare.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=lorenz@cloudflare.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=cloudflare.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id cc18si162035edb.2.2021.10.20.08.56.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 08:56:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of lorenz@cloudflare.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id i24so15911350lfj.13
        for <clang-built-linux@googlegroups.com>; Wed, 20 Oct 2021 08:56:57 -0700 (PDT)
X-Received: by 2002:a05:6512:3bc:: with SMTP id v28mr152447lfp.102.1634745417053;
 Wed, 20 Oct 2021 08:56:57 -0700 (PDT)
MIME-Version: 1.0
References: <20211019144655.3483197-1-maximmi@nvidia.com> <20211019144655.3483197-10-maximmi@nvidia.com>
In-Reply-To: <20211019144655.3483197-10-maximmi@nvidia.com>
From: "'Lorenz Bauer' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 Oct 2021 16:56:46 +0100
Message-ID: <CACAyw9_MT-+n_b1pLYrU+m6OicgRcndEBiOwb5Kc1w0CANd_9A@mail.gmail.com>
Subject: Re: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp
 cookies in XDP
To: Maxim Mikityanskiy <maximmi@nvidia.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, 
	David Ahern <dsahern@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Brendan Jackman <jackmanb@google.com>, Florent Revest <revest@chromium.org>, Joe Stringer <joe@cilium.io>, 
	Tariq Toukan <tariqt@nvidia.com>, Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lmb@cloudflare.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cloudflare.com header.s=google header.b=UoEY0usm;       spf=pass
 (google.com: domain of lorenz@cloudflare.com designates 2a00:1450:4864:20::131
 as permitted sender) smtp.mailfrom=lorenz@cloudflare.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=cloudflare.com
X-Original-From: Lorenz Bauer <lmb@cloudflare.com>
Reply-To: Lorenz Bauer <lmb@cloudflare.com>
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

On Tue, 19 Oct 2021 at 15:49, Maxim Mikityanskiy <maximmi@nvidia.com> wrote:
>
> The new helper bpf_tcp_raw_gen_tscookie allows an XDP program to
> generate timestamp cookies (to be used together with SYN cookies) which
> encode different options set by the client in the SYN packet: SACK
> support, ECN support, window scale. These options are encoded in lower
> bits of the timestamp, which will be returned by the client in a
> subsequent ACK packet. The format is the same used by synproxy.
>
> Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
> Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
> ---
>  include/net/tcp.h              |  1 +
>  include/uapi/linux/bpf.h       | 27 +++++++++++++++
>  net/core/filter.c              | 38 +++++++++++++++++++++
>  net/ipv4/syncookies.c          | 60 ++++++++++++++++++++++++++++++++++
>  tools/include/uapi/linux/bpf.h | 27 +++++++++++++++
>  5 files changed, 153 insertions(+)
>
> diff --git a/include/net/tcp.h b/include/net/tcp.h
> index 1cc96a225848..651820bef6a2 100644
> --- a/include/net/tcp.h
> +++ b/include/net/tcp.h
> @@ -564,6 +564,7 @@ u32 __cookie_v4_init_sequence(const struct iphdr *iph, const struct tcphdr *th,
>                               u16 *mssp);
>  __u32 cookie_v4_init_sequence(const struct sk_buff *skb, __u16 *mss);
>  u64 cookie_init_timestamp(struct request_sock *req, u64 now);
> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32 *tsval, __be32 *tsecr);
>  bool cookie_timestamp_decode(const struct net *net,
>                              struct tcp_options_received *opt);
>  bool cookie_ecn_ok(const struct tcp_options_received *opt,
> diff --git a/include/uapi/linux/bpf.h b/include/uapi/linux/bpf.h
> index e32f72077250..791790b41874 100644
> --- a/include/uapi/linux/bpf.h
> +++ b/include/uapi/linux/bpf.h
> @@ -5053,6 +5053,32 @@ union bpf_attr {
>   *
>   *             **-EPROTONOSUPPORT** if the IP version is not 4 or 6 (or 6, but
>   *             CONFIG_IPV6 is disabled).
> + *
> + * int bpf_tcp_raw_gen_tscookie(struct tcphdr *th, u32 th_len, __be32 *tsopt, u32 tsopt_len)

flags which must be 0?

> + *     Description
> + *             Try to generate a timestamp cookie which encodes some of the
> + *             flags sent by the client in the SYN packet: SACK support, ECN
> + *             support, window scale. To be used with SYN cookies.
> + *
> + *             *th* points to the start of the TCP header of the client's SYN
> + *             packet, while *th_len* contains the length of the TCP header (at
> + *             least **sizeof**\ (**struct tcphdr**)).
> + *
> + *             *tsopt* points to the output location where to put the resulting
> + *             timestamp values: tsval and tsecr, in the format of the TCP
> + *             timestamp option.
> + *
> + *     Return
> + *             On success, 0.
> + *
> + *             On failure, the returned value is one of the following:
> + *
> + *             **-EINVAL** if the input arguments are invalid.
> + *
> + *             **-ENOENT** if the TCP header doesn't have the timestamp option.
> + *
> + *             **-EOPNOTSUPP** if the kernel configuration does not enable SYN
> + *             cookies (CONFIG_SYN_COOKIES is off).
>   */
>  #define __BPF_FUNC_MAPPER(FN)          \
>         FN(unspec),                     \
> @@ -5238,6 +5264,7 @@ union bpf_attr {
>         FN(ct_release),                 \
>         FN(tcp_raw_gen_syncookie),      \
>         FN(tcp_raw_check_syncookie),    \
> +       FN(tcp_raw_gen_tscookie),       \
>         /* */
>
>  /* integer value in 'imm' field of BPF_CALL instruction selects which helper
> diff --git a/net/core/filter.c b/net/core/filter.c
> index 5f03d4a282a0..73fe20ef7442 100644
> --- a/net/core/filter.c
> +++ b/net/core/filter.c
> @@ -7403,6 +7403,42 @@ static const struct bpf_func_proto bpf_tcp_raw_check_syncookie_proto = {
>         .arg4_type      = ARG_CONST_SIZE,
>  };
>
> +BPF_CALL_4(bpf_tcp_raw_gen_tscookie, struct tcphdr *, th, u32, th_len,
> +          __be32 *, tsopt, u32, tsopt_len)
> +{
> +       int err;

Missing check for th_len?

> +
> +#ifdef CONFIG_SYN_COOKIES
> +       if (tsopt_len != sizeof(u64)) {

sizeof(u32) * 2? That u64 isn't really relevant here.

> +               err = -EINVAL;
> +               goto err_out;
> +       }
> +
> +       if (!cookie_init_timestamp_raw(th, &tsopt[0], &tsopt[1])) {
> +               err = -ENOENT;
> +               goto err_out;
> +       }
> +
> +       return 0;
> +err_out:
> +#else
> +       err = -EOPNOTSUPP;
> +#endif
> +       memset(tsopt, 0, tsopt_len);
> +       return err;
> +}
> +
> +static const struct bpf_func_proto bpf_tcp_raw_gen_tscookie_proto = {
> +       .func           = bpf_tcp_raw_gen_tscookie,
> +       .gpl_only       = false,
> +       .pkt_access     = true,
> +       .ret_type       = RET_INTEGER,
> +       .arg1_type      = ARG_PTR_TO_MEM,
> +       .arg2_type      = ARG_CONST_SIZE,
> +       .arg3_type      = ARG_PTR_TO_UNINIT_MEM,
> +       .arg4_type      = ARG_CONST_SIZE,
> +};
> +
>  #endif /* CONFIG_INET */
>
>  bool bpf_helper_changes_pkt_data(void *func)
> @@ -7825,6 +7861,8 @@ xdp_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
>                 return &bpf_tcp_raw_gen_syncookie_proto;
>         case BPF_FUNC_tcp_raw_check_syncookie:
>                 return &bpf_tcp_raw_check_syncookie_proto;
> +       case BPF_FUNC_tcp_raw_gen_tscookie:
> +               return &bpf_tcp_raw_gen_tscookie_proto;
>  #endif
>         default:
>                 return bpf_sk_base_func_proto(func_id);
> diff --git a/net/ipv4/syncookies.c b/net/ipv4/syncookies.c
> index 8696dc343ad2..4dd2c7a096eb 100644
> --- a/net/ipv4/syncookies.c
> +++ b/net/ipv4/syncookies.c
> @@ -85,6 +85,66 @@ u64 cookie_init_timestamp(struct request_sock *req, u64 now)
>         return (u64)ts * (NSEC_PER_SEC / TCP_TS_HZ);
>  }
>
> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32 *tsval, __be32 *tsecr)

I'm probably missing context, Is there something in this function that
means you can't implement it in BPF?

Lorenz

--
Lorenz Bauer  |  Systems Engineer
6th Floor, County Hall/The Riverside Building, SE1 7PB, UK

www.cloudflare.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACAyw9_MT-%2Bn_b1pLYrU%2Bm6OicgRcndEBiOwb5Kc1w0CANd_9A%40mail.gmail.com.
