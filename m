Return-Path: <clang-built-linux+bncBC5NVH6TWYJRBSXMXOFQMGQEZ5AXFXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D866433CA6
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 18:46:04 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id x25-20020a9d6d99000000b0051bf9bfc12fsf2099612otp.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 09:46:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634661963; cv=pass;
        d=google.com; s=arc-20160816;
        b=DC09QcRNr86CNwPnWnJ7IH5OYm8cMJEMxQF8ykv1x0M/k4xKmlbVNRT7CYnid61nCD
         dBtQwkyDE7xmBV+9niME4m5h0OGRozElHhxZG4f+YKsvLZNZ2dEG2B0EDjRNWZ4o0830
         h6ls18N/UeCk4cr0s/BZ6gkZV10gB7yRrvuXh7cJ4O2tWG5nD42/XpzVobTbQnuK2uI/
         XoN/FXPBdSq6Lnw+zGKLP9Q+z/zaeY8y48JuN0iWVblDjvmRl+jYLwkaZ21cYin4pbxN
         +5maCTFOwkTX//9vNiwwluHDQ3SVbCMO8oG5iX98OfHmeQ0tq5xwtzgEQEE4yOKzFbya
         XiOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=U82SwspfXQ15qWZDVaWy8p6tl6QpyR1iJtj+YMWKWQA=;
        b=F20SzkSQKcZowiXVNSK39UG1NC3MxOlgySTpJzOg3TttbPuiq77zFNTpmk1AsYTd4U
         YmWb4E1i8j5vW9wkwdPLYaXlvPISnSl2DJEAoubAdFxcL9Nct8cbXtFYtc3ndNmvjkDx
         z0BiEgtJmPer2h6oXSAVhxE4hMTaYhHbi/n5Mr5zWWT3IpC3+BNxsYOd4LdKCS+kknH4
         0Rzsa4oV6406l0owpZiaP/3/w30U6e1RjFIGYfNRMLGsszDbrGQTBpWJXqSvBEuLZ2k1
         hgjoV3Ep1tqXUbFOBGU0o64wX1fvOtvAP5siBk1LuLVTrqbV/Uv2876Mdct9e83JvFtk
         yaPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=YMR2Y6bo;
       spf=pass (google.com: domain of eric.dumazet@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=eric.dumazet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U82SwspfXQ15qWZDVaWy8p6tl6QpyR1iJtj+YMWKWQA=;
        b=sFz6Gj5gQjoBDyoULzAB6OWk/MhAmVa2pGB7uWZRCY4YGhOIlEXLzu4vZlUZFE1smK
         QmR24tWrcFuX3IL/QqZwiZYVDU1DgOH75BmPFpuPrN2BpWUEJJeTfxVmGhC0RzFT+TJu
         OrDSYv/hAr+x1QjZKQk2GJyRQe7sLvLxlBvkNNj4yfjPj4uC8yUamIxRZVMYX33GUNZZ
         izTQtpB+1q6z+LMVxbDmOmFwUsHqDwy3juhZg6xodWdTfzz9GKCPszjSPFWPBkp/VYnL
         hfv5EY542f9R1+kdxEvu5H4+95KozwX+km75ztwAfRpyB9VfX0/U7/8sETvHMBw11Uef
         b0tQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U82SwspfXQ15qWZDVaWy8p6tl6QpyR1iJtj+YMWKWQA=;
        b=aU7yuUryrLrmquxW3QacU/taPZOOEvybJcI2MGLoWTdSDSwSihqOsKCvfuSysBeRMs
         USRhGtYx3Su5iGWmUlT+/nSEsSwnUfQIBD0n9ol34YmIwN/DmuZ/e9ic6NJ/CDwFsKlA
         jX+2/PTXiEuRw6Glg7Xks3i/xPOe74b11A7SBPzoBYAuv3gwfKi9eZT/B7yZxbv+kHgn
         mGPvREyvULPhpWJrPfxyKCRJnwSnOuidU1bGFglMOaxJnoZB/saojmHCOzIZbNqqTf7S
         RuC/oOuMo4k3TAafDKklYJcObhpqmT+a665H66ntbtJZUBGXOzOv0VB5MznI74pm1dPB
         a7sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U82SwspfXQ15qWZDVaWy8p6tl6QpyR1iJtj+YMWKWQA=;
        b=Sg3XMWCa+BIqTOZ72VAyBp3pIgQNkIb/z/XY1eR+aOvG64+uiY0j+PGyEmr2lHxGPH
         E7cD8ViAzSCFi6M+X8reMS4coGc4OxeEDWfb5Y1RCK+xr3PyfliLuLpgqQBsDoPS90Ra
         b8jyO87RgzXqybWY/O/iqQ0duWMaXX/w9G1dA7FIwUr5RC+CPhLehYY0K9MyzstyHovh
         utE1ROKfIXprxhOL2pu+zLPtI58qb2xoCU67ei3D9iaHE29CaVZm90XHTbCivXCrETkk
         oO0tExr9x9CqiZVgKiw9lRHBISDpL04D90QGIoIonRI2s+WbniFkUwES/+LGGKCP8ENl
         pVUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Z7bckiwNEzxpYEdJqho5mJQGl1mTPSM1X8xHyPixdsXJPBpN3
	fHFE9JFCmNspFX2TgQJZoC8=
X-Google-Smtp-Source: ABdhPJxyt2K2bXWCcX/6qU01hh2nXKIeQg8OmH8Jvs4dXwDgArJ7N8PjepdJlJz0QvT4hDmKfUfcXg==
X-Received: by 2002:a05:6830:1656:: with SMTP id h22mr6149340otr.123.1634661962968;
        Tue, 19 Oct 2021 09:46:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c002:: with SMTP id v2ls1453007oop.8.gmail; Tue, 19 Oct
 2021 09:46:02 -0700 (PDT)
X-Received: by 2002:a4a:d0cd:: with SMTP id u13mr5523741oor.49.1634661962588;
        Tue, 19 Oct 2021 09:46:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634661962; cv=none;
        d=google.com; s=arc-20160816;
        b=nD+7rYE+xXGoGrH0q7CdRvhACmcI/p/7tbIpK+p8pBbMy+ik52mbHfJ1MUGjWMjxoC
         Z/qlowPMmn/+t3DXKIHiC5sWL7sA0IKOmY82Ihc6U1t2qoUobOO2DvOK8YJc0AL1m0mA
         GrUGbNr5rddlS2cgkk2oy5qkxT2df5gDECdnYAGG8+Jw2wRYS+exPwRJG60wAm73nT0A
         GImDsT16Yej/XCEBY0hGpokdvQ6flqvirMHdzCzd2OZUx1BLoChVMvSLVX7TmWdOMBv+
         aj3flrgF3BupVq9j/ug/7Al4zMkJDx4Sg+t+iHU/ixYvmy7I1eSfmFhg/rL8//riJX9r
         i7yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=m6ifRcXTDP6HSBZmS0xYlQ4bXkqgkStw3rde+wfGT3U=;
        b=NlRCvWW6hb+TJinL4XPsqhQDi3vRZKZax3ixWTJAXBwcZSQdSAImf7rupMlBSk9Unb
         2er38KiLYlGhR8ybfnLyHhcerVyYHIjWZfLkxn5b95oD6OoOd1w55tjbuAobYT4MfRQo
         8sFJngK3ArtMNHxlw9bLo0uSrUBeigU/TmC2vq21V2wyL7x86i2vomTS7OgeBs3wOPMl
         SEtp/9oKLVUdV36QHzG+KO27fMOI6eLPZHAdNKaVvN+3y/f/3Zrpo95bWO/Y5owPoJ3z
         4Eimrey6OAMFzWL6mJcu4PAKoQVd2cjgzSL+HMx7+VY5aXdU1npAtcoe6somUfx3d90k
         X5Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=YMR2Y6bo;
       spf=pass (google.com: domain of eric.dumazet@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=eric.dumazet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id s142si1366115oie.0.2021.10.19.09.46.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 09:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of eric.dumazet@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id c4so12856195pgv.11
        for <clang-built-linux@googlegroups.com>; Tue, 19 Oct 2021 09:46:02 -0700 (PDT)
X-Received: by 2002:a05:6a00:1a8e:b0:44c:f3cb:2a77 with SMTP id e14-20020a056a001a8e00b0044cf3cb2a77mr918202pfv.53.1634661961528;
        Tue, 19 Oct 2021 09:46:01 -0700 (PDT)
Received: from ?IPv6:2620:15c:2c1:200:554e:89d1:9693:8d66? ([2620:15c:2c1:200:554e:89d1:9693:8d66])
        by smtp.gmail.com with ESMTPSA id fv9sm3346007pjb.26.2021.10.19.09.45.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 09:46:01 -0700 (PDT)
Subject: Re: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp
 cookies in XDP
To: Maxim Mikityanskiy <maximmi@nvidia.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>
Cc: Eric Dumazet <edumazet@google.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, David Ahern
 <dsahern@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Brendan Jackman <jackmanb@google.com>, Florent Revest <revest@chromium.org>,
 Joe Stringer <joe@cilium.io>, Lorenz Bauer <lmb@cloudflare.com>,
 Tariq Toukan <tariqt@nvidia.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-10-maximmi@nvidia.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <834e92a4-8a4d-945f-c894-9730ff7d91dc@gmail.com>
Date: Tue, 19 Oct 2021 09:45:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211019144655.3483197-10-maximmi@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: eric.dumazet@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=YMR2Y6bo;       spf=pass
 (google.com: domain of eric.dumazet@gmail.com designates 2607:f8b0:4864:20::530
 as permitted sender) smtp.mailfrom=eric.dumazet@gmail.com;       dmarc=pass
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



On 10/19/21 7:46 AM, Maxim Mikityanskiy wrote:
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
>  			      u16 *mssp);
>  __u32 cookie_v4_init_sequence(const struct sk_buff *skb, __u16 *mss);
>  u64 cookie_init_timestamp(struct request_sock *req, u64 now);
> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32 *tsval, __be32 *tsecr);
>  bool cookie_timestamp_decode(const struct net *net,
>  			     struct tcp_options_received *opt);
>  bool cookie_ecn_ok(const struct tcp_options_received *opt,
> diff --git a/include/uapi/linux/bpf.h b/include/uapi/linux/bpf.h
> index e32f72077250..791790b41874 100644
> --- a/include/uapi/linux/bpf.h
> +++ b/include/uapi/linux/bpf.h
> @@ -5053,6 +5053,32 @@ union bpf_attr {
>   *
>   *		**-EPROTONOSUPPORT** if the IP version is not 4 or 6 (or 6, but
>   *		CONFIG_IPV6 is disabled).
> + *
> + * int bpf_tcp_raw_gen_tscookie(struct tcphdr *th, u32 th_len, __be32 *tsopt, u32 tsopt_len)
> + *	Description
> + *		Try to generate a timestamp cookie which encodes some of the
> + *		flags sent by the client in the SYN packet: SACK support, ECN
> + *		support, window scale. To be used with SYN cookies.
> + *
> + *		*th* points to the start of the TCP header of the client's SYN
> + *		packet, while *th_len* contains the length of the TCP header (at
> + *		least **sizeof**\ (**struct tcphdr**)).
> + *
> + *		*tsopt* points to the output location where to put the resulting
> + *		timestamp values: tsval and tsecr, in the format of the TCP
> + *		timestamp option.
> + *
> + *	Return
> + *		On success, 0.
> + *
> + *		On failure, the returned value is one of the following:
> + *
> + *		**-EINVAL** if the input arguments are invalid.
> + *
> + *		**-ENOENT** if the TCP header doesn't have the timestamp option.
> + *
> + *		**-EOPNOTSUPP** if the kernel configuration does not enable SYN
> + *		cookies (CONFIG_SYN_COOKIES is off).
>   */
>  #define __BPF_FUNC_MAPPER(FN)		\
>  	FN(unspec),			\
> @@ -5238,6 +5264,7 @@ union bpf_attr {
>  	FN(ct_release),			\
>  	FN(tcp_raw_gen_syncookie),	\
>  	FN(tcp_raw_check_syncookie),	\
> +	FN(tcp_raw_gen_tscookie),	\
>  	/* */
>  
>  /* integer value in 'imm' field of BPF_CALL instruction selects which helper
> diff --git a/net/core/filter.c b/net/core/filter.c
> index 5f03d4a282a0..73fe20ef7442 100644
> --- a/net/core/filter.c
> +++ b/net/core/filter.c
> @@ -7403,6 +7403,42 @@ static const struct bpf_func_proto bpf_tcp_raw_check_syncookie_proto = {
>  	.arg4_type	= ARG_CONST_SIZE,
>  };
>  
> +BPF_CALL_4(bpf_tcp_raw_gen_tscookie, struct tcphdr *, th, u32, th_len,
> +	   __be32 *, tsopt, u32, tsopt_len)
> +{
> +	int err;
> +
> +#ifdef CONFIG_SYN_COOKIES
> +	if (tsopt_len != sizeof(u64)) {
> +		err = -EINVAL;
> +		goto err_out;
> +	}
> +
> +	if (!cookie_init_timestamp_raw(th, &tsopt[0], &tsopt[1])) {
> +		err = -ENOENT;
> +		goto err_out;
> +	}
> +
> +	return 0;
> +err_out:
> +#else
> +	err = -EOPNOTSUPP;
> +#endif
> +	memset(tsopt, 0, tsopt_len);
> +	return err;
> +}
> +
> +static const struct bpf_func_proto bpf_tcp_raw_gen_tscookie_proto = {
> +	.func		= bpf_tcp_raw_gen_tscookie,
> +	.gpl_only	= false,
> +	.pkt_access	= true,
> +	.ret_type	= RET_INTEGER,
> +	.arg1_type	= ARG_PTR_TO_MEM,
> +	.arg2_type	= ARG_CONST_SIZE,
> +	.arg3_type	= ARG_PTR_TO_UNINIT_MEM,
> +	.arg4_type	= ARG_CONST_SIZE,
> +};
> +
>  #endif /* CONFIG_INET */
>  
>  bool bpf_helper_changes_pkt_data(void *func)
> @@ -7825,6 +7861,8 @@ xdp_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
>  		return &bpf_tcp_raw_gen_syncookie_proto;
>  	case BPF_FUNC_tcp_raw_check_syncookie:
>  		return &bpf_tcp_raw_check_syncookie_proto;
> +	case BPF_FUNC_tcp_raw_gen_tscookie:
> +		return &bpf_tcp_raw_gen_tscookie_proto;
>  #endif
>  	default:
>  		return bpf_sk_base_func_proto(func_id);
> diff --git a/net/ipv4/syncookies.c b/net/ipv4/syncookies.c
> index 8696dc343ad2..4dd2c7a096eb 100644
> --- a/net/ipv4/syncookies.c
> +++ b/net/ipv4/syncookies.c
> @@ -85,6 +85,66 @@ u64 cookie_init_timestamp(struct request_sock *req, u64 now)
>  	return (u64)ts * (NSEC_PER_SEC / TCP_TS_HZ);
>  }
>  
> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32 *tsval, __be32 *tsecr)
> +{
> +	int length = (th->doff * 4) - sizeof(*th);
> +	u8 wscale = TS_OPT_WSCALE_MASK;
> +	bool option_timestamp = false;
> +	bool option_sack = false;
> +	u32 cookie;
> +	u8 *ptr;
> +
> +	ptr = (u8 *)(th + 1);
> +
> +	while (length > 0) {
> +		u8 opcode = *ptr++;
> +		u8 opsize;
> +
> +		if (opcode == TCPOPT_EOL)
> +			break;
> +		if (opcode == TCPOPT_NOP) {
> +			length--;
> +			continue;
> +		}
> +
> +		if (length < 2)
> +			break;
> +		opsize = *ptr++;
> +		if (opsize < 2)
> +			break;
> +		if (opsize > length)
> +			break;
> +
> +		switch (opcode) {
> +		case TCPOPT_WINDOW:

You must check osize.

> +			wscale = min_t(u8, *ptr, TCP_MAX_WSCALE);
> +			break;
> +		case TCPOPT_TIMESTAMP:

You must check opsize.

> +			option_timestamp = true;
> +			/* Client's tsval becomes our tsecr. */
> +			*tsecr = cpu_to_be32(get_unaligned_be32(ptr));

Please avoid useless ntohl/htonl dance (even if compiler probably optimizes this)
No need to obfuscate :)

			*tsecr = get_unaligned((__be32 *)ptr);

> +			break;
> +		case TCPOPT_SACK_PERM:
> +			option_sack = true;
> +			break;
> +		}
> +
> +		ptr += opsize - 2;
> +		length -= opsize;
> +	}
> +
> +	if (!option_timestamp)
> +		return false;
> +
> +	cookie = tcp_time_stamp_raw() & ~TSMASK;
> +	cookie |= wscale & TS_OPT_WSCALE_MASK;
> +	if (option_sack)
> +		cookie |= TS_OPT_SACK;
> +	if (th->ece && th->cwr)
> +		cookie |= TS_OPT_ECN;
> +	*tsval = cpu_to_be32(cookie);
> +	return true;
> +}
>  
>  static __u32 secure_tcp_syn_cookie(__be32 saddr, __be32 daddr, __be16 sport,
>  				   __be16 dport, __u32 sseq, __u32 data)
> diff --git a/tools/include/uapi/linux/bpf.h b/tools/include/uapi/linux/bpf.h
> index e32f72077250..791790b41874 100644
> --- a/tools/include/uapi/linux/bpf.h
> +++ b/tools/include/uapi/linux/bpf.h
> @@ -5053,6 +5053,32 @@ union bpf_attr {
>   *
>   *		**-EPROTONOSUPPORT** if the IP version is not 4 or 6 (or 6, but
>   *		CONFIG_IPV6 is disabled).
> + *
> + * int bpf_tcp_raw_gen_tscookie(struct tcphdr *th, u32 th_len, __be32 *tsopt, u32 tsopt_len)
> + *	Description
> + *		Try to generate a timestamp cookie which encodes some of the
> + *		flags sent by the client in the SYN packet: SACK support, ECN
> + *		support, window scale. To be used with SYN cookies.
> + *
> + *		*th* points to the start of the TCP header of the client's SYN
> + *		packet, while *th_len* contains the length of the TCP header (at
> + *		least **sizeof**\ (**struct tcphdr**)).
> + *
> + *		*tsopt* points to the output location where to put the resulting
> + *		timestamp values: tsval and tsecr, in the format of the TCP
> + *		timestamp option.
> + *
> + *	Return
> + *		On success, 0.
> + *
> + *		On failure, the returned value is one of the following:
> + *
> + *		**-EINVAL** if the input arguments are invalid.
> + *
> + *		**-ENOENT** if the TCP header doesn't have the timestamp option.
> + *
> + *		**-EOPNOTSUPP** if the kernel configuration does not enable SYN
> + *		cookies (CONFIG_SYN_COOKIES is off).
>   */
>  #define __BPF_FUNC_MAPPER(FN)		\
>  	FN(unspec),			\
> @@ -5238,6 +5264,7 @@ union bpf_attr {
>  	FN(ct_release),			\
>  	FN(tcp_raw_gen_syncookie),	\
>  	FN(tcp_raw_check_syncookie),	\
> +	FN(tcp_raw_gen_tscookie),	\
>  	/* */
>  
>  /* integer value in 'imm' field of BPF_CALL instruction selects which helper
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/834e92a4-8a4d-945f-c894-9730ff7d91dc%40gmail.com.
