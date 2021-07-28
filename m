Return-Path: <clang-built-linux+bncBDPYNU65Q4NRBHECQOEAMGQE52A2UWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D753D85E2
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 04:29:49 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id s123-20020a2577810000b02904f84a5c5297sf1060069ybc.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 19:29:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627439389; cv=pass;
        d=google.com; s=arc-20160816;
        b=fKxyzAqoidwH/KUcQqQpu4qBpkZTpHqPXXIBySm0Xb1uYfb9VDJJZG6p7w8LUE97UE
         YByN44rNcer1b/Mx5Ed5cGwOhkc6NnN7CWp2duSFoSQ2fPSnrJgX3cZCkTiWsD62Q54Z
         v9jIHFJO/yQZftlcz3vkRdPebnlyTW96wACnKZxtxBpE0pKtQnvXDKhmsMH7Qmwn5UmW
         KRPMS28JEXfudPhCUI8iOJxndeNRN/kLN6crCjUqQ5w8USVGispTa+JYALn+qQQX2tFr
         uf0Lz2y7ntdSSVe5qcsSfZZeNFp/JYGepfdGs5B0dC62AMzDB3TEP/dllRuyCiXkkHFS
         B/GA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wfoD3KUxMRD8nQNxfpnKaxJhLj/R2t0aeKVcyBGd3qg=;
        b=b69LIeTKdzjgxb7a+XxRj6zKdmMLv7GjBsvJLHkRZBosufAU/KnrKYMuA+k+iHFu2H
         RcMTgxE4Zb0VmWjpbXHdAVu29n7EDoJ9rkPgckBIBZqVo60vFtNwFPLNBp0mvZWdutks
         C1EeVgMG5OYdj7XzoZLHrnti4nTzFgGJrJjPLM8bWVkoTxfXjUGrVy0PFNSicAQ0y+Zu
         SN+eztv4VZzJD1f0nlVF5TKqDV8q2T46/DnJVouPFshPOsAI4zv+ywkx3rduxAJVRVs4
         2zQ39c2GAo+DQBSVhghw0yL8g2I0LxJBLUc3YnydVcGgn4ih2cUn0+s9sSVABFg86WOF
         DYhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=l6M3v8Dq;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wfoD3KUxMRD8nQNxfpnKaxJhLj/R2t0aeKVcyBGd3qg=;
        b=olGN8pG2ZdbIM8TPSQuyfMm8adGYyiVAacGu+PfliQ7lum9b8upfEVPcOO6RJP7/ww
         GQqGcT8zJY7OKuy/0wGbTR5mRx5BPqmHQNSqCSYGKpCeHJjSET7RqBf5f7wbqUBHUJM9
         HXyhLg/p1Ds7HxIaklGOvRatxXxb9VIeL3RwJcRVN658qE4YiVhFbbc0cXOImJQDO5rt
         rKHKOj1wLT4iVQNStSvSk79kZiuH3q2E4nloR+C1Ju1JSrZObFROVrGOYp7sZyC6OlfS
         +5QnCh8UAGuyd7NDavRAENLGjQxPGz5blJoU/OGGRkWPSEkYY7kd4WdM9HzWc8X+0nJE
         HLaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wfoD3KUxMRD8nQNxfpnKaxJhLj/R2t0aeKVcyBGd3qg=;
        b=esmlJUHXzYJ0IIvIddn6fdWp+BDr0ApGMFDRF2wGC+C15bcmvFuM8NPBcGRGpcEh2j
         odiQC9xKMX2GvGgDsVlID3fDRUawxBU6Vj8SnEdGNVhrgwhTqPXIaTBW/RVd4SiwJ61J
         Q5S4kKzvTWMuRuaXBszYBl4nNXI/swim/KOiDxBW7GgSwSP48AJUcjjezcXPiXdsn48f
         8avDuOs7twe4VFCWYrm2o1KGI9jraU/DbB1uvG5LkLEVojQpOk9fcPv2XAEDl6DDeDm+
         YJS2r7rYu+OLLYcnGEE5oP0NYhFLPg7y/X7CeqVKdyixldFbhFtmm1VsTQYn8DoA8BCO
         fTtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kgkiHuEHg7UIL7EDaA/fUdLRq6sb+QvDGAnANMtEXbbQRjonn
	eTs2+JxebYauWP2jY4H+2LY=
X-Google-Smtp-Source: ABdhPJwvpzbDKxRNlvojU8rE67TF375QebSfNj9yy7gWBx3MWJ3bzCbR/lJ0ItIFxjtTp54jT2VVvg==
X-Received: by 2002:a5b:403:: with SMTP id m3mr36601632ybp.62.1627439389026;
        Tue, 27 Jul 2021 19:29:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a4c7:: with SMTP id g65ls485022ybi.8.gmail; Tue, 27 Jul
 2021 19:29:48 -0700 (PDT)
X-Received: by 2002:a25:6d43:: with SMTP id i64mr34422454ybc.252.1627439388473;
        Tue, 27 Jul 2021 19:29:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627439388; cv=none;
        d=google.com; s=arc-20160816;
        b=BCQP2TRTDd7cUKFWc+gketAWZ963LcTrqy/OfejAbc63tAjFuf7BaKEq1FSRui3VTQ
         WRkhF+zhZfX21/iHZ3yYnObQCiIDvP9mQXd0O4x0G7epCqJKVvOAlalziITmsvfCOZDG
         jjJuYwR8voGMkxhRYlH7anRxFQIGT8TFhlxeHg+kS+lRAxj9vfRN2RUdfH4qHgzn7ILe
         H8qCtnNaoZFls4yVSCBMEYVuwJvPTlGx9bexzRcTEx8swuE1RAsdjAw8uLVMKm5QPg0V
         Pf9iny1I7gn4NgnfvG+xcvetpwo8Oy8s2BUCjiVr/KCmQy6Mg5V3XxptACUG66HdHMWJ
         9X+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IslmFDdbqK4Ubz71C9UOYwz5CpIkxpVc+uyG2W1Pup4=;
        b=cSRL6zUnf9bOnjKSL+Ht6oGXnCWGrxiWu/uE2OPLFt/87G9IDGRTnEjn/Pjhgs9eJ3
         LBq3oOYNpRLFhzLHUEKLALtUJgJLWM2hf/plJUgh2qNqAI7DuyLz4eJu2dji3aAzum2T
         4n849uvlLUvznSmQK/OBjanQPu6EvNRDMf9m/uL6WuKz9bnSMe5zUZXx1sM5Ay4yH1o+
         00wpliTYWc6RkcAfjV2nl396cQcWaATxJ8s4h2G/SOcHmN87URpPVVr796IdeSuT7gqL
         p30rhgbQX1HAQTf3V91o5k6eLfmAZn6OGw+yShCDxKeIN6NDB9R0MovoNY8WweR5tJhU
         RjnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=l6M3v8Dq;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n10si256082ybj.2.2021.07.27.19.29.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 19:29:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 84F0D60F9D;
	Wed, 28 Jul 2021 02:29:46 +0000 (UTC)
Date: Tue, 27 Jul 2021 21:32:17 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org, Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 04/64] stddef: Introduce struct_group() helper macro
Message-ID: <20210728023217.GC35706@embeddedor>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-5-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-5-keescook@chromium.org>
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=l6M3v8Dq;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jul 27, 2021 at 01:57:55PM -0700, Kees Cook wrote:
> Kernel code has a regular need to describe groups of members within a
> structure usually when they need to be copied or initialized separately
> from the rest of the surrounding structure. The generally accepted design
> pattern in C is to use a named sub-struct:
> 
> 	struct foo {
> 		int one;
> 		struct {
> 			int two;
> 			int three;
> 		} thing;
> 		int four;
> 	};
> 
> This would allow for traditional references and sizing:
> 
> 	memcpy(&dst.thing, &src.thing, sizeof(dst.thing));
> 
> However, doing this would mean that referencing struct members enclosed
> by such named structs would always require including the sub-struct name
> in identifiers:
> 
> 	do_something(dst.thing.three);
> 
> This has tended to be quite inflexible, especially when such groupings
> need to be added to established code which causes huge naming churn.
> Three workarounds exist in the kernel for this problem, and each have
> other negative properties.
> 
> To avoid the naming churn, there is a design pattern of adding macro
> aliases for the named struct:
> 
> 	#define f_three thing.three
> 
> This ends up polluting the global namespace, and makes it difficult to
> search for identifiers.
> 
> Another common work-around in kernel code avoids the pollution by avoiding
> the named struct entirely, instead identifying the group's boundaries using
> either a pair of empty anonymous structs of a pair of zero-element arrays:
> 
> 	struct foo {
> 		int one;
> 		struct { } start;
> 		int two;
> 		int three;
> 		struct { } finish;
> 		int four;
> 	};
> 
> 	struct foo {
> 		int one;
> 		int start[0];
> 		int two;
> 		int three;
> 		int finish[0];
> 		int four;
> 	};
> 
> This allows code to avoid needing to use a sub-struct name for member
> references within the surrounding structure, but loses the benefits of
> being able to actually use such a struct, making it rather fragile. Using
> these requires open-coded calculation of sizes and offsets. The efforts
> made to avoid common mistakes include lots of comments, or adding various
> BUILD_BUG_ON()s. Such code is left with no way for the compiler to reason
> about the boundaries (e.g. the "start" object looks like it's 0 bytes
> in length and is not structurally associated with "finish"), making bounds
> checking depend on open-coded calculations:
> 
> 	if (length > offsetof(struct foo, finish) -
> 		     offsetof(struct foo, start))
> 		return -EINVAL;
> 	memcpy(&dst.start, &src.start, length);
> 
> However, the vast majority of places in the kernel that operate on
> groups of members do so without any identification of the grouping,
> relying either on comments or implicit knowledge of the struct contents,
> which is even harder for the compiler to reason about, and results in
> even more fragile manual sizing, usually depending on member locations
> outside of the region (e.g. to copy "two" and "three", use the start of
> "four" to find the size):
> 
> 	BUILD_BUG_ON((offsetof(struct foo, four) <
> 		      offsetof(struct foo, two)) ||
> 		     (offsetof(struct foo, four) <
> 		      offsetof(struct foo, three));
> 	if (length > offsetof(struct foo, four) -
> 		     offsetof(struct foo, two))
> 		return -EINVAL;
> 	memcpy(&dst.two, &src.two, length);
> 
> And both of the prior two idioms additionally appear to write beyond the
> end of the referenced struct member, forcing the compiler to ignore any
> attempt to perform bounds checking.
> 
> In order to have a regular programmatic way to describe a struct
> region that can be used for references and sizing, can be examined for
> bounds checking, avoids forcing the use of intermediate identifiers,
> and avoids polluting the global namespace, introduce the struct_group()
> macro. This macro wraps the member declarations to create an anonymous
> union of an anonymous struct (no intermediate name) and a named struct
> (for references and sizing):
> 
> 	struct foo {
> 		int one;
> 		struct_group(thing,
> 			int two,
> 			int three,
> 		);
> 		int four;
> 	};
> 
> 	if (length > sizeof(src.thing))
> 		return -EINVAL;
> 	memcpy(&dst.thing, &src.thing, length);
> 	do_something(dst.three);
> 
> There are some rare cases where the resulting struct_group() needs
> attributes added, so struct_group_attr() is also introduced to allow
> for specifying struct attributes (e.g. __align(x) or __packed).
> 
> Co-developed-by: Keith Packard <keithpac@amazon.com>
> Signed-off-by: Keith Packard <keithpac@amazon.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Love it! :)

Thanks
--
Gustavo

> ---
>  include/linux/stddef.h | 34 ++++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/include/linux/stddef.h b/include/linux/stddef.h
> index 998a4ba28eba..cf7f866944f9 100644
> --- a/include/linux/stddef.h
> +++ b/include/linux/stddef.h
> @@ -36,4 +36,38 @@ enum {
>  #define offsetofend(TYPE, MEMBER) \
>  	(offsetof(TYPE, MEMBER)	+ sizeof_field(TYPE, MEMBER))
>  
> +/**
> + * struct_group_attr(NAME, ATTRS, MEMBERS)
> + *
> + * Used to create an anonymous union of two structs with identical
> + * layout and size: one anonymous and one named. The former can be
> + * used normally without sub-struct naming, and the latter can be
> + * used to reason about the start, end, and size of the group of
> + * struct members. Includes structure attributes argument.
> + *
> + * @NAME: The name of the mirrored sub-struct
> + * @ATTRS: Any struct attributes (normally empty)
> + * @MEMBERS: The member declarations for the mirrored structs
> + */
> +#define struct_group_attr(NAME, ATTRS, MEMBERS) \
> +	union { \
> +		struct { MEMBERS } ATTRS; \
> +		struct { MEMBERS } ATTRS NAME; \
> +	}
> +
> +/**
> + * struct_group(NAME, MEMBERS)
> + *
> + * Used to create an anonymous union of two structs with identical
> + * layout and size: one anonymous and one named. The former can be
> + * used normally without sub-struct naming, and the latter can be
> + * used to reason about the start, end, and size of the group of
> + * struct members.
> + *
> + * @NAME: The name of the mirrored sub-struct
> + * @MEMBERS: The member declarations for the mirrored structs
> + */
> +#define struct_group(NAME, MEMBERS)	\
> +	struct_group_attr(NAME, /* no attrs */, MEMBERS)
> +
>  #endif
> -- 
> 2.30.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210728023217.GC35706%40embeddedor.
