Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOX2ZT6QKGQEGJRPWOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA5A2B579F
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 04:02:19 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id x3sf8536620plr.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 19:02:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605582138; cv=pass;
        d=google.com; s=arc-20160816;
        b=B1hJRpKwDqgPGDFohWWssbTpRP/yjAcvu7toyeQtlsDAh+QDxg6rq6lFwS+DoGLYtZ
         IiPO8E/vgWQWXmizjUlQ5kQCIPQq8yI2Uyc2uiPMulMMY1hiiWS5kWf2iJ9ItdkBVbZs
         lSj6Iw6OBW2KzBhiCdYYB9kcgFLRXzvrSYJkFhePb1RtfEQN0HBU872X1+XNMk13AtSp
         EiW6Vp6jNdetfVwfAtoJc+8jeTdsExtn0b+woIBnge0/8ezvrvNYp28DxlqOc39GBi88
         qDowC1lFEPEEjhlOpW0D+nMnORfgVEsHI58oZVTkgLg6ipuyLwtXcKYgvnGuu3HvbCIY
         7Aig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=psuhHS7QCxfURBASpxcpuzCHUqEuPPqdsQ5q7BAxUBU=;
        b=eiHLxTtdmNNno+oYEuIMX1ZGszGl/oB7HewM6anw1+zt/3AbIigC9J70iT2Lx6VvXv
         HvwSTOt2snOQviW4uqoew+6KBDYrervgOCcfBtNV17XyOXvpBfUr2Nw7SoeyH+jbO8Tz
         zSS0vfaaAdVBCFm8ZDafynGYFDsQtsdSiJCryZ3MKIe4uRm8bSDs0/wO6WGevZ8OfnxH
         vfiCd1PJHX5ceBGQYubecl0VNOmWiqipoQSTsbyFKUeMjjtTraAn3A17YVE+SaXoEC+G
         hAvzAFgKpjq2TB9RdtAx5I4UgXMQY8mmw/+8hTPsYIKS6g91kJIz5/zAo8fXQ1H6EKYN
         JIBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cj/r+TvC";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=psuhHS7QCxfURBASpxcpuzCHUqEuPPqdsQ5q7BAxUBU=;
        b=ZGDtYps0M9az2ygdcZRFvDQt1LFfkjCEOoQPzmJy3ycMiK7LrOUqb+flIVVS1mRFcT
         an2dmIgU0seTJSxKfKrDNjds/Es8P0UXKIi0eQwRCEEZSo/ovvdo5V3rgIArmBKZ6yVq
         RwAmEZeZ59XLZRsVvcn+6K2H+QlrSlwOgjRngP+wmMb1jGd5lDV0fJg5BObE7vRhaXLn
         j6lFsRwcwyEuXZcXmY010q4aL/OHHL1BD0Zborcsyfl9DN6IPv33u3XwGvPdxUbCETLX
         gpIY5uZiSobmvx3iXeqnHPOpSSQdK5UVkUzkl+0OPg5kAbkIZ0n8OKI0bMZVZbWAA7Ku
         932A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=psuhHS7QCxfURBASpxcpuzCHUqEuPPqdsQ5q7BAxUBU=;
        b=EYzH5os9ukb0MpRgybgI1DZb5j85TS6bw13DLg3vGZ08ZsUT1uFYuR4yNjErjNKZ+h
         2WldUA7o+weSbAfNcv8QYmOr+3jYYCbxm413dHn8n2981ddrX2crgpQiXOYS/KWnqWmM
         GRksDmUknxpEdL5LvwoyCq2d/467tb8jmNe51o8e7ysumy24Z1Vw83BkfkQ8XCjTDhWt
         S3prdlKHhA5N3fOomNo2GTpyh1wmCmBTEVypeM2cYyQXpADg4bzJO5XtSVexdqw7xGm1
         eOppcBLtfXEm7uPrWF+9AE8Tnh/qShPxCE1uZtJQLboFsGxE6mhGC+fyT4JXEV2jyc2T
         2IJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=psuhHS7QCxfURBASpxcpuzCHUqEuPPqdsQ5q7BAxUBU=;
        b=PLqoovrBFJgZYrSEgmJrHj7MOef+CREffBFdlrObnKmyV2WJNyQIs0sBBZjwXmyaUa
         hIBQXnvjK5F7xJ2QBJSIIRmFJ6In+RVB/Qy8Pgzw4NQJ20YLfCaMKevZXEBlO5KaRGmr
         ks0qHW1AtBOhH+dqbykC108cS5qGZ7VfgLa4BRKL2mZjM6RPk4FDBqIAVr6EUI74s+Eg
         Q7UilBqp1U7W+ftP0uuiwheUhfAN644B2C6U1DD6/FYbfX26b1KALCrvB1k+jhQDaEhC
         bBu7+FY37Xw+JOqNyRVGagGYXJqSP7nSLy5tVI4W5RRRsYYWYnQl9/mhesnXDWfO2LuP
         eEsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/OTsXF2myEN3+KzEU5YKVDQ0KQEsFX0MCAge+bk7EDAYtLaif
	Z3aLTEBm0/au99vjigxEl8I=
X-Google-Smtp-Source: ABdhPJyAylitZCb8YGVNo0eSIgeP0pEK+ZSXXzrDgODfz5d2nTmGpvW9Qn1ZX9yqemjrYkxfcORhyA==
X-Received: by 2002:a17:90a:ea01:: with SMTP id w1mr2229126pjy.153.1605582138178;
        Mon, 16 Nov 2020 19:02:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b086:: with SMTP id p6ls7283782plr.7.gmail; Mon, 16
 Nov 2020 19:02:17 -0800 (PST)
X-Received: by 2002:a17:90b:a17:: with SMTP id gg23mr2295967pjb.82.1605582137519;
        Mon, 16 Nov 2020 19:02:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605582137; cv=none;
        d=google.com; s=arc-20160816;
        b=q3w26JcRti1vo4sNhqa8cl5GvPdJVNt21Cp7SGhpGtxjE+QiWwzLAe2fc09Q06IvkP
         ZxfMNhW+j+5pT9JpO62CzEFwEGQMFo7Ttc7baqY3pdNpNBQ/+dz43YGBM4o9l+XgLveB
         xBfVEMtS5X7gDQDtByfGHMULovOH50jkTtSqrDg+eGDVA97VLYvLEsUmQT+LQ0SI/hMl
         z/WqOLDoc+bztqqPl1y0P0u3I5JwRJ7w13yzwoczUpBT67XdsOWg7mJ+W4vRXPBQiva+
         NQt3E8fkSBJ2Afhk1a/HMCYGlSvIhwYVA6bwG7MqAvC+crfRUi5sgBI6C3RI/CsIIpDS
         UvfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rkPojoty2kUASXQk/OunI4X8xfbaJe8ogUIQ8iLoD/I=;
        b=I03Nx1qr+bSiZtj80+alVi41HmomQkKr3b3P0EW1/VZrsAtISTDFKgc4L/vXzeJ1yL
         hCfNHqfSF6+w/lX5KUXXIki5l4x6aNNyPcTWFbkXbeOSs+x4aln/2yieLDbl/sjK5IJA
         0xvwnwJzQ5M+Tzwo1eKYfKxzHgkdfsffNeN3lU7FVjq+MzlKy3doUhMQZUJZDxwAw+T3
         FWY0kNuxuL/teZsHul9PPOcW0YqMJGq/i/pmvDuRt1V3cPZ0Qgkdv0Kqe+EpjOErmhL1
         rpagiEcTVCjnqeBR7ZSh3Yy4iUk/7+qWEJCtE7K4BlTcSkhu6XWIQ9pUDxbQ0YoryxbV
         AY5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cj/r+TvC";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id x6si945747plv.3.2020.11.16.19.02.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 19:02:17 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id n132so19221518qke.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 19:02:17 -0800 (PST)
X-Received: by 2002:a05:620a:98a:: with SMTP id x10mr18314666qkx.259.1605582136522;
        Mon, 16 Nov 2020 19:02:16 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id b64sm1825330qkg.19.2020.11.16.19.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 19:02:15 -0800 (PST)
Date: Mon, 16 Nov 2020 20:02:14 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] Revert "lib: Revert use of fallthrough
 pseudo-keyword in lib/"
Message-ID: <20201117030214.GB1340689@ubuntu-m3-large-x86>
References: <20201116043532.4032932-1-ndesaulniers@google.com>
 <20201116043532.4032932-3-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201116043532.4032932-3-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="cj/r+TvC";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Nov 15, 2020 at 08:35:31PM -0800, Nick Desaulniers wrote:
> This reverts commit 6a9dc5fd6170 ("lib: Revert use of fallthrough
> pseudo-keyword in lib/")
> 
> Now that we can build arch/powerpc/boot/ free of -Wimplicit-fallthrough,
> re-enable these fixes for lib/.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/236
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  lib/asn1_decoder.c      |  4 ++--
>  lib/assoc_array.c       |  2 +-
>  lib/bootconfig.c        |  4 ++--
>  lib/cmdline.c           | 10 +++++-----
>  lib/dim/net_dim.c       |  2 +-
>  lib/dim/rdma_dim.c      |  4 ++--
>  lib/glob.c              |  2 +-
>  lib/siphash.c           | 36 ++++++++++++++++++------------------
>  lib/ts_fsm.c            |  2 +-
>  lib/vsprintf.c          | 14 +++++++-------
>  lib/xz/xz_dec_lzma2.c   |  4 ++--
>  lib/xz/xz_dec_stream.c  | 16 ++++++++--------
>  lib/zstd/bitstream.h    | 10 +++++-----
>  lib/zstd/compress.c     |  2 +-
>  lib/zstd/decompress.c   | 12 ++++++------
>  lib/zstd/huf_compress.c |  4 ++--
>  16 files changed, 64 insertions(+), 64 deletions(-)
> 
> diff --git a/lib/asn1_decoder.c b/lib/asn1_decoder.c
> index 58f72b25f8e9..13da529e2e72 100644
> --- a/lib/asn1_decoder.c
> +++ b/lib/asn1_decoder.c
> @@ -381,7 +381,7 @@ int asn1_ber_decoder(const struct asn1_decoder *decoder,
>  	case ASN1_OP_END_SET_ACT:
>  		if (unlikely(!(flags & FLAG_MATCHED)))
>  			goto tag_mismatch;
> -		/* fall through */
> +		fallthrough;
>  
>  	case ASN1_OP_END_SEQ:
>  	case ASN1_OP_END_SET_OF:
> @@ -448,7 +448,7 @@ int asn1_ber_decoder(const struct asn1_decoder *decoder,
>  			pc += asn1_op_lengths[op];
>  			goto next_op;
>  		}
> -		/* fall through */
> +		fallthrough;
>  
>  	case ASN1_OP_ACT:
>  		ret = actions[machine[pc + 1]](context, hdr, tag, data + tdp, len);
> diff --git a/lib/assoc_array.c b/lib/assoc_array.c
> index 6f4bcf524554..04c98799c3ba 100644
> --- a/lib/assoc_array.c
> +++ b/lib/assoc_array.c
> @@ -1113,7 +1113,7 @@ struct assoc_array_edit *assoc_array_delete(struct assoc_array *array,
>  						index_key))
>  				goto found_leaf;
>  		}
> -		/* fall through */
> +		fallthrough;
>  	case assoc_array_walk_tree_empty:
>  	case assoc_array_walk_found_wrong_shortcut:
>  	default:
> diff --git a/lib/bootconfig.c b/lib/bootconfig.c
> index 649ed44f199c..9f8c70a98fcf 100644
> --- a/lib/bootconfig.c
> +++ b/lib/bootconfig.c
> @@ -827,7 +827,7 @@ int __init xbc_init(char *buf, const char **emsg, int *epos)
>  							q - 2);
>  				break;
>  			}
> -			/* fall through */
> +			fallthrough;
>  		case '=':
>  			ret = xbc_parse_kv(&p, q, c);
>  			break;
> @@ -836,7 +836,7 @@ int __init xbc_init(char *buf, const char **emsg, int *epos)
>  			break;
>  		case '#':
>  			q = skip_comment(q);
> -			/* fall through */
> +			fallthrough;
>  		case ';':
>  		case '\n':
>  			ret = xbc_parse_key(&p, q);
> diff --git a/lib/cmdline.c b/lib/cmdline.c
> index 9e186234edc0..46f2cb4ce6d1 100644
> --- a/lib/cmdline.c
> +++ b/lib/cmdline.c
> @@ -144,23 +144,23 @@ unsigned long long memparse(const char *ptr, char **retptr)
>  	case 'E':
>  	case 'e':
>  		ret <<= 10;
> -		/* fall through */
> +		fallthrough;
>  	case 'P':
>  	case 'p':
>  		ret <<= 10;
> -		/* fall through */
> +		fallthrough;
>  	case 'T':
>  	case 't':
>  		ret <<= 10;
> -		/* fall through */
> +		fallthrough;
>  	case 'G':
>  	case 'g':
>  		ret <<= 10;
> -		/* fall through */
> +		fallthrough;
>  	case 'M':
>  	case 'm':
>  		ret <<= 10;
> -		/* fall through */
> +		fallthrough;
>  	case 'K':
>  	case 'k':
>  		ret <<= 10;
> diff --git a/lib/dim/net_dim.c b/lib/dim/net_dim.c
> index a4db51c21266..06811d866775 100644
> --- a/lib/dim/net_dim.c
> +++ b/lib/dim/net_dim.c
> @@ -233,7 +233,7 @@ void net_dim(struct dim *dim, struct dim_sample end_sample)
>  			schedule_work(&dim->work);
>  			break;
>  		}
> -		/* fall through */
> +		fallthrough;
>  	case DIM_START_MEASURE:
>  		dim_update_sample(end_sample.event_ctr, end_sample.pkt_ctr,
>  				  end_sample.byte_ctr, &dim->start_sample);
> diff --git a/lib/dim/rdma_dim.c b/lib/dim/rdma_dim.c
> index f7e26c7b4749..15462d54758d 100644
> --- a/lib/dim/rdma_dim.c
> +++ b/lib/dim/rdma_dim.c
> @@ -59,7 +59,7 @@ static bool rdma_dim_decision(struct dim_stats *curr_stats, struct dim *dim)
>  			break;
>  		case DIM_STATS_WORSE:
>  			dim_turn(dim);
> -			/* fall through */
> +			fallthrough;
>  		case DIM_STATS_BETTER:
>  			step_res = rdma_dim_step(dim);
>  			if (step_res == DIM_ON_EDGE)
> @@ -94,7 +94,7 @@ void rdma_dim(struct dim *dim, u64 completions)
>  			schedule_work(&dim->work);
>  			break;
>  		}
> -		/* fall through */
> +		fallthrough;
>  	case DIM_START_MEASURE:
>  		dim->state = DIM_MEASURE_IN_PROGRESS;
>  		dim_update_sample_with_comps(curr_sample->event_ctr, 0, 0,
> diff --git a/lib/glob.c b/lib/glob.c
> index 52e3ed7e4a9b..85ecbda45cd8 100644
> --- a/lib/glob.c
> +++ b/lib/glob.c
> @@ -102,7 +102,7 @@ bool __pure glob_match(char const *pat, char const *str)
>  			break;
>  		case '\\':
>  			d = *pat++;
> -			/* fall through */
> +			fallthrough;
>  		default:	/* Literal character */
>  literal:
>  			if (c == d) {
> diff --git a/lib/siphash.c b/lib/siphash.c
> index c47bb6ff2149..a90112ee72a1 100644
> --- a/lib/siphash.c
> +++ b/lib/siphash.c
> @@ -68,11 +68,11 @@ u64 __siphash_aligned(const void *data, size_t len, const siphash_key_t *key)
>  						  bytemask_from_count(left)));
>  #else
>  	switch (left) {
> -	case 7: b |= ((u64)end[6]) << 48; /* fall through */
> -	case 6: b |= ((u64)end[5]) << 40; /* fall through */
> -	case 5: b |= ((u64)end[4]) << 32; /* fall through */
> +	case 7: b |= ((u64)end[6]) << 48; fallthrough;
> +	case 6: b |= ((u64)end[5]) << 40; fallthrough;
> +	case 5: b |= ((u64)end[4]) << 32; fallthrough;
>  	case 4: b |= le32_to_cpup(data); break;
> -	case 3: b |= ((u64)end[2]) << 16; /* fall through */
> +	case 3: b |= ((u64)end[2]) << 16; fallthrough;
>  	case 2: b |= le16_to_cpup(data); break;
>  	case 1: b |= end[0];
>  	}
> @@ -101,11 +101,11 @@ u64 __siphash_unaligned(const void *data, size_t len, const siphash_key_t *key)
>  						  bytemask_from_count(left)));
>  #else
>  	switch (left) {
> -	case 7: b |= ((u64)end[6]) << 48; /* fall through */
> -	case 6: b |= ((u64)end[5]) << 40; /* fall through */
> -	case 5: b |= ((u64)end[4]) << 32; /* fall through */
> +	case 7: b |= ((u64)end[6]) << 48; fallthrough;
> +	case 6: b |= ((u64)end[5]) << 40; fallthrough;
> +	case 5: b |= ((u64)end[4]) << 32; fallthrough;
>  	case 4: b |= get_unaligned_le32(end); break;
> -	case 3: b |= ((u64)end[2]) << 16; /* fall through */
> +	case 3: b |= ((u64)end[2]) << 16; fallthrough;
>  	case 2: b |= get_unaligned_le16(end); break;
>  	case 1: b |= end[0];
>  	}
> @@ -268,11 +268,11 @@ u32 __hsiphash_aligned(const void *data, size_t len, const hsiphash_key_t *key)
>  						  bytemask_from_count(left)));
>  #else
>  	switch (left) {
> -	case 7: b |= ((u64)end[6]) << 48; /* fall through */
> -	case 6: b |= ((u64)end[5]) << 40; /* fall through */
> -	case 5: b |= ((u64)end[4]) << 32; /* fall through */
> +	case 7: b |= ((u64)end[6]) << 48; fallthrough;
> +	case 6: b |= ((u64)end[5]) << 40; fallthrough;
> +	case 5: b |= ((u64)end[4]) << 32; fallthrough;
>  	case 4: b |= le32_to_cpup(data); break;
> -	case 3: b |= ((u64)end[2]) << 16; /* fall through */
> +	case 3: b |= ((u64)end[2]) << 16; fallthrough;
>  	case 2: b |= le16_to_cpup(data); break;
>  	case 1: b |= end[0];
>  	}
> @@ -301,11 +301,11 @@ u32 __hsiphash_unaligned(const void *data, size_t len,
>  						  bytemask_from_count(left)));
>  #else
>  	switch (left) {
> -	case 7: b |= ((u64)end[6]) << 48; /* fall through */
> -	case 6: b |= ((u64)end[5]) << 40; /* fall through */
> -	case 5: b |= ((u64)end[4]) << 32; /* fall through */
> +	case 7: b |= ((u64)end[6]) << 48; fallthrough;
> +	case 6: b |= ((u64)end[5]) << 40; fallthrough;
> +	case 5: b |= ((u64)end[4]) << 32; fallthrough;
>  	case 4: b |= get_unaligned_le32(end); break;
> -	case 3: b |= ((u64)end[2]) << 16; /* fall through */
> +	case 3: b |= ((u64)end[2]) << 16; fallthrough;
>  	case 2: b |= get_unaligned_le16(end); break;
>  	case 1: b |= end[0];
>  	}
> @@ -431,7 +431,7 @@ u32 __hsiphash_aligned(const void *data, size_t len, const hsiphash_key_t *key)
>  		v0 ^= m;
>  	}
>  	switch (left) {
> -	case 3: b |= ((u32)end[2]) << 16; /* fall through */
> +	case 3: b |= ((u32)end[2]) << 16; fallthrough;
>  	case 2: b |= le16_to_cpup(data); break;
>  	case 1: b |= end[0];
>  	}
> @@ -454,7 +454,7 @@ u32 __hsiphash_unaligned(const void *data, size_t len,
>  		v0 ^= m;
>  	}
>  	switch (left) {
> -	case 3: b |= ((u32)end[2]) << 16; /* fall through */
> +	case 3: b |= ((u32)end[2]) << 16; fallthrough;
>  	case 2: b |= get_unaligned_le16(end); break;
>  	case 1: b |= end[0];
>  	}
> diff --git a/lib/ts_fsm.c b/lib/ts_fsm.c
> index ab749ec10ab5..64fd9015ad80 100644
> --- a/lib/ts_fsm.c
> +++ b/lib/ts_fsm.c
> @@ -193,7 +193,7 @@ static unsigned int fsm_find(struct ts_config *conf, struct ts_state *state)
>  				TOKEN_MISMATCH();
>  
>  			block_idx++;
> -			/* fall through */
> +			fallthrough;
>  
>  		case TS_FSM_ANY:
>  			if (next == NULL)
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index 14c9a6af1b23..d3c5c16f391c 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -1265,7 +1265,7 @@ char *mac_address_string(char *buf, char *end, u8 *addr,
>  
>  	case 'R':
>  		reversed = true;
> -		/* fall through */
> +		fallthrough;
>  
>  	default:
>  		separator = ':';
> @@ -1682,7 +1682,7 @@ char *uuid_string(char *buf, char *end, const u8 *addr,
>  	switch (*(++fmt)) {
>  	case 'L':
>  		uc = true;
> -		/* fall through */
> +		fallthrough;
>  	case 'l':
>  		index = guid_index;
>  		break;
> @@ -2219,7 +2219,7 @@ char *pointer(const char *fmt, char *buf, char *end, void *ptr,
>  	case 'S':
>  	case 's':
>  		ptr = dereference_symbol_descriptor(ptr);
> -		/* fall through */
> +		fallthrough;
>  	case 'B':
>  		return symbol_string(buf, end, ptr, spec, fmt);
>  	case 'R':
> @@ -2450,7 +2450,7 @@ int format_decode(const char *fmt, struct printf_spec *spec)
>  
>  	case 'x':
>  		spec->flags |= SMALL;
> -		/* fall through */
> +		fallthrough;
>  
>  	case 'X':
>  		spec->base = 16;
> @@ -2468,7 +2468,7 @@ int format_decode(const char *fmt, struct printf_spec *spec)
>  		 * utility, treat it as any other invalid or
>  		 * unsupported format specifier.
>  		 */
> -		/* fall through */
> +		fallthrough;
>  
>  	default:
>  		WARN_ONCE(1, "Please remove unsupported %%%c in format string\n", *fmt);
> @@ -3411,10 +3411,10 @@ int vsscanf(const char *buf, const char *fmt, va_list args)
>  			break;
>  		case 'i':
>  			base = 0;
> -			/* fall through */
> +			fallthrough;
>  		case 'd':
>  			is_sign = true;
> -			/* fall through */
> +			fallthrough;
>  		case 'u':
>  			break;
>  		case '%':
> diff --git a/lib/xz/xz_dec_lzma2.c b/lib/xz/xz_dec_lzma2.c
> index 65a1aad8c223..ca2603abee08 100644
> --- a/lib/xz/xz_dec_lzma2.c
> +++ b/lib/xz/xz_dec_lzma2.c
> @@ -1043,7 +1043,7 @@ XZ_EXTERN enum xz_ret xz_dec_lzma2_run(struct xz_dec_lzma2 *s,
>  
>  			s->lzma2.sequence = SEQ_LZMA_PREPARE;
>  
> -			/* fall through */
> +			fallthrough;
>  
>  		case SEQ_LZMA_PREPARE:
>  			if (s->lzma2.compressed < RC_INIT_BYTES)
> @@ -1055,7 +1055,7 @@ XZ_EXTERN enum xz_ret xz_dec_lzma2_run(struct xz_dec_lzma2 *s,
>  			s->lzma2.compressed -= RC_INIT_BYTES;
>  			s->lzma2.sequence = SEQ_LZMA_RUN;
>  
> -			/* fall through */
> +			fallthrough;
>  
>  		case SEQ_LZMA_RUN:
>  			/*
> diff --git a/lib/xz/xz_dec_stream.c b/lib/xz/xz_dec_stream.c
> index 32ab2a08b7cb..fea86deaaa01 100644
> --- a/lib/xz/xz_dec_stream.c
> +++ b/lib/xz/xz_dec_stream.c
> @@ -583,7 +583,7 @@ static enum xz_ret dec_main(struct xz_dec *s, struct xz_buf *b)
>  			if (ret != XZ_OK)
>  				return ret;
>  
> -			/* fall through */
> +			fallthrough;
>  
>  		case SEQ_BLOCK_START:
>  			/* We need one byte of input to continue. */
> @@ -608,7 +608,7 @@ static enum xz_ret dec_main(struct xz_dec *s, struct xz_buf *b)
>  			s->temp.pos = 0;
>  			s->sequence = SEQ_BLOCK_HEADER;
>  
> -			/* fall through */
> +			fallthrough;
>  
>  		case SEQ_BLOCK_HEADER:
>  			if (!fill_temp(s, b))
> @@ -620,7 +620,7 @@ static enum xz_ret dec_main(struct xz_dec *s, struct xz_buf *b)
>  
>  			s->sequence = SEQ_BLOCK_UNCOMPRESS;
>  
> -			/* fall through */
> +			fallthrough;
>  
>  		case SEQ_BLOCK_UNCOMPRESS:
>  			ret = dec_block(s, b);
> @@ -629,7 +629,7 @@ static enum xz_ret dec_main(struct xz_dec *s, struct xz_buf *b)
>  
>  			s->sequence = SEQ_BLOCK_PADDING;
>  
> -			/* fall through */
> +			fallthrough;
>  
>  		case SEQ_BLOCK_PADDING:
>  			/*
> @@ -651,7 +651,7 @@ static enum xz_ret dec_main(struct xz_dec *s, struct xz_buf *b)
>  
>  			s->sequence = SEQ_BLOCK_CHECK;
>  
> -			/* fall through */
> +			fallthrough;
>  
>  		case SEQ_BLOCK_CHECK:
>  			if (s->check_type == XZ_CHECK_CRC32) {
> @@ -675,7 +675,7 @@ static enum xz_ret dec_main(struct xz_dec *s, struct xz_buf *b)
>  
>  			s->sequence = SEQ_INDEX_PADDING;
>  
> -			/* fall through */
> +			fallthrough;
>  
>  		case SEQ_INDEX_PADDING:
>  			while ((s->index.size + (b->in_pos - s->in_start))
> @@ -699,7 +699,7 @@ static enum xz_ret dec_main(struct xz_dec *s, struct xz_buf *b)
>  
>  			s->sequence = SEQ_INDEX_CRC32;
>  
> -			/* fall through */
> +			fallthrough;
>  
>  		case SEQ_INDEX_CRC32:
>  			ret = crc32_validate(s, b);
> @@ -709,7 +709,7 @@ static enum xz_ret dec_main(struct xz_dec *s, struct xz_buf *b)
>  			s->temp.size = STREAM_HEADER_SIZE;
>  			s->sequence = SEQ_STREAM_FOOTER;
>  
> -			/* fall through */
> +			fallthrough;
>  
>  		case SEQ_STREAM_FOOTER:
>  			if (!fill_temp(s, b))
> diff --git a/lib/zstd/bitstream.h b/lib/zstd/bitstream.h
> index 3a49784d5c61..7c65c66e41fd 100644
> --- a/lib/zstd/bitstream.h
> +++ b/lib/zstd/bitstream.h
> @@ -259,15 +259,15 @@ ZSTD_STATIC size_t BIT_initDStream(BIT_DStream_t *bitD, const void *srcBuffer, s
>  		bitD->bitContainer = *(const BYTE *)(bitD->start);
>  		switch (srcSize) {
>  		case 7: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[6]) << (sizeof(bitD->bitContainer) * 8 - 16);
> -			/* fall through */
> +			fallthrough;
>  		case 6: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[5]) << (sizeof(bitD->bitContainer) * 8 - 24);
> -			/* fall through */
> +			fallthrough;
>  		case 5: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[4]) << (sizeof(bitD->bitContainer) * 8 - 32);
> -			/* fall through */
> +			fallthrough;
>  		case 4: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[3]) << 24;
> -			/* fall through */
> +			fallthrough;
>  		case 3: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[2]) << 16;
> -			/* fall through */
> +			fallthrough;
>  		case 2: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[1]) << 8;
>  		default:;
>  		}
> diff --git a/lib/zstd/compress.c b/lib/zstd/compress.c
> index 5e0b67003e55..b080264ed3ad 100644
> --- a/lib/zstd/compress.c
> +++ b/lib/zstd/compress.c
> @@ -3182,7 +3182,7 @@ static size_t ZSTD_compressStream_generic(ZSTD_CStream *zcs, void *dst, size_t *
>  				zcs->outBuffFlushedSize = 0;
>  				zcs->stage = zcss_flush; /* pass-through to flush stage */
>  			}
> -			/* fall through */
> +			fallthrough;
>  
>  		case zcss_flush: {
>  			size_t const toFlush = zcs->outBuffContentSize - zcs->outBuffFlushedSize;
> diff --git a/lib/zstd/decompress.c b/lib/zstd/decompress.c
> index db6761ea4deb..66cd487a326a 100644
> --- a/lib/zstd/decompress.c
> +++ b/lib/zstd/decompress.c
> @@ -442,7 +442,7 @@ size_t ZSTD_decodeLiteralsBlock(ZSTD_DCtx *dctx, const void *src, size_t srcSize
>  		case set_repeat:
>  			if (dctx->litEntropy == 0)
>  				return ERROR(dictionary_corrupted);
> -			/* fall through */
> +			fallthrough;
>  		case set_compressed:
>  			if (srcSize < 5)
>  				return ERROR(corruption_detected); /* srcSize >= MIN_CBLOCK_SIZE == 3; here we need up to 5 for case 3 */
> @@ -1768,7 +1768,7 @@ size_t ZSTD_decompressContinue(ZSTD_DCtx *dctx, void *dst, size_t dstCapacity, c
>  			return 0;
>  		}
>  		dctx->expected = 0; /* not necessary to copy more */
> -		/* fall through */
> +		fallthrough;
>  
>  	case ZSTDds_decodeFrameHeader:
>  		memcpy(dctx->headerBuffer + ZSTD_frameHeaderSize_prefix, src, dctx->expected);
> @@ -2309,7 +2309,7 @@ size_t ZSTD_decompressStream(ZSTD_DStream *zds, ZSTD_outBuffer *output, ZSTD_inB
>  		switch (zds->stage) {
>  		case zdss_init:
>  			ZSTD_resetDStream(zds); /* transparent reset on starting decoding a new frame */
> -			/* fall through */
> +			fallthrough;
>  
>  		case zdss_loadHeader: {
>  			size_t const hSize = ZSTD_getFrameParams(&zds->fParams, zds->headerBuffer, zds->lhSize);
> @@ -2376,7 +2376,7 @@ size_t ZSTD_decompressStream(ZSTD_DStream *zds, ZSTD_outBuffer *output, ZSTD_inB
>  			}
>  			zds->stage = zdss_read;
>  		}
> -			/* fall through */
> +			fallthrough;
>  
>  		case zdss_read: {
>  			size_t const neededInSize = ZSTD_nextSrcSizeToDecompress(zds->dctx);
> @@ -2405,7 +2405,7 @@ size_t ZSTD_decompressStream(ZSTD_DStream *zds, ZSTD_outBuffer *output, ZSTD_inB
>  			zds->stage = zdss_load;
>  			/* pass-through */
>  		}
> -			/* fall through */
> +			fallthrough;
>  
>  		case zdss_load: {
>  			size_t const neededInSize = ZSTD_nextSrcSizeToDecompress(zds->dctx);
> @@ -2438,7 +2438,7 @@ size_t ZSTD_decompressStream(ZSTD_DStream *zds, ZSTD_outBuffer *output, ZSTD_inB
>  				/* pass-through */
>  			}
>  		}
> -			/* fall through */
> +			fallthrough;
>  
>  		case zdss_flush: {
>  			size_t const toFlushSize = zds->outEnd - zds->outStart;
> diff --git a/lib/zstd/huf_compress.c b/lib/zstd/huf_compress.c
> index e727812d12aa..08b4ae80aed4 100644
> --- a/lib/zstd/huf_compress.c
> +++ b/lib/zstd/huf_compress.c
> @@ -556,9 +556,9 @@ size_t HUF_compress1X_usingCTable(void *dst, size_t dstSize, const void *src, si
>  	n = srcSize & ~3; /* join to mod 4 */
>  	switch (srcSize & 3) {
>  	case 3: HUF_encodeSymbol(&bitC, ip[n + 2], CTable); HUF_FLUSHBITS_2(&bitC);
> -		/* fall through */
> +		fallthrough;
>  	case 2: HUF_encodeSymbol(&bitC, ip[n + 1], CTable); HUF_FLUSHBITS_1(&bitC);
> -		/* fall through */
> +		fallthrough;
>  	case 1: HUF_encodeSymbol(&bitC, ip[n + 0], CTable); HUF_FLUSHBITS(&bitC);
>  	case 0:
>  	default:;
> -- 
> 2.29.2.299.gdc1121823c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117030214.GB1340689%40ubuntu-m3-large-x86.
