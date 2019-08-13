Return-Path: <clang-built-linux+bncBDV7PEP2SMCBBEXUZHVAKGQEK3KGS2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D758B2EE
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 10:51:32 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id q1sf10462429pgt.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 01:51:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565686291; cv=pass;
        d=google.com; s=arc-20160816;
        b=v9MVIbzNWGI72olSyUxjeoKiReXugN/iVDNhzo+Xc8D4lq7KcU5yI+rzxYHO1f6IM1
         00/EgIuarYr0ttCGvkCoxNdyZSooJhj5JIccYiGea/kIU9JDRBLTQfu43ewUQ2UXoe6v
         CSOJL4XYCPBXqYrqFBKpWssXTac3b/ZNKNAwwBh3S1Elu0CTxtut/SPh+HgFk25gG46E
         m9IJ9xzP/s7RePWHPw3fZ/OreMe1J5GpOowRq8PoO7p38L6OCeZGdCZG2hUcJoYNN7Ke
         S5jVUyQG0I1Mw5Rpxd+ZD6PRn5rbug6seVtLFAmlLbmtvp71i4UZNk7ljmOcbCDfUJbv
         eAxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:subject:cc:to:from:message-id:date:sender
         :dkim-signature;
        bh=WdErv22VvzKHEvokU/CTQ+lFR57wTGFeHYYiMVEq3dY=;
        b=viFuecC14OB2v7hcLHDR2Lt7FwspG+CpJTuTmTf6PoTevs32nidtKdqWFcetodEPSS
         e+H4ergExHH/QQ1mFXK+uZ7I+T24KaptQjKmsEsyKGyp9ZaaQnXM49U8tjsp8AAtM89l
         OvoOIibC+yRxzibTc6HYnskjEeb6DBnW4vFK2VDo3aO4lnUJFMdNtfTXB1b5p5rL4GxN
         WNc4J9GPT33oWyUK307PY+Br/RfLTY5l207nNgX8eyCQSkQwx8BKdelxRH2hzjqXH8ET
         raIyey8KZEsLQsNBqFKbHHTUCSqG9HANm8kiH5X1akQGBbco0acUWBPj3HBaMPrl5El1
         +bDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning ysato@users.sourceforge.jp does not designate 202.224.55.13 as permitted sender) smtp.mailfrom=ysato@users.sourceforge.jp
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:to:cc:subject:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WdErv22VvzKHEvokU/CTQ+lFR57wTGFeHYYiMVEq3dY=;
        b=cs1pGir1VDxzPBhMv1FKbd2atBDd9VU8x9Uu/+o7MboCnOqi74wiYNl3X2dP/0gZeG
         FGSkA6XwKjCUrjGlXsnxRgATC5UB9eqyesRmDwr/L+Rm21+W7HtpDLgT1EQoqqgrHNHp
         vEObEx45AwXyLhaC8jAEQOL+MirEri+jXAXp3eczPCpscxftD/6qxGJrtn/KYLNuemxZ
         2UwuCXjArDpkzz2jnsNDu163MSZR3FNHeKEYpqxtiXjyPEtOHw5Gb4/9QSQpuo5rOof8
         IMRrUNfk/prgZvCjMGR4a49q9CEVZtT8xkGa7fC8BXF6mK7r6xh944lWn6Gcpoho/qUv
         HvUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WdErv22VvzKHEvokU/CTQ+lFR57wTGFeHYYiMVEq3dY=;
        b=IbVrpol8ap1olkmnSAO4OOFWFJreP2ixP3v1vliQgWEn8z6XC9W4iPVLacGM4k1791
         zOKh8PaPwdzODk9Xmrjx4KLb/z6gqhC3VI3lztuyjYZAYkWzTw6aCcsXDVZHrUDWkm4j
         5xs2HtZz1PyQ8cPRIKFeoHnOsPDyALw2xiuvxGs1nTTiiJrC6f2b2L/lGzxdNAQjT7I7
         Pj0ncM+fMRMpSTB2eUoU9JppYptX9XaDDW+naw/9v1gCwHo75FxWxikixF2zde3cnjSu
         9l972kGdsqCmWi4XmHJza6K9soPNSvD+Lz28pepjGinaYbg8yRmZiaotzwH3jOb00ewC
         5yQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUjf1j0X0QUhLYNX81A7N9NlFQRVPpxahKC90uZciFVUpv9jtBv
	kgNI43w7vjuggVUVd9gX9GM=
X-Google-Smtp-Source: APXvYqw1ByV1zaqnQPQetIwhZf5qp8k3E2gioahHQT0elY832nUfK72UJqpVNq1t/0aZdhiK+W/VeA==
X-Received: by 2002:a17:90a:b947:: with SMTP id f7mr1196250pjw.63.1565686290969;
        Tue, 13 Aug 2019 01:51:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2f02:: with SMTP id v2ls25007298pfv.0.gmail; Tue, 13 Aug
 2019 01:51:30 -0700 (PDT)
X-Received: by 2002:a62:6044:: with SMTP id u65mr39013600pfb.15.1565686290637;
        Tue, 13 Aug 2019 01:51:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565686290; cv=none;
        d=google.com; s=arc-20160816;
        b=mwPTvg8ny3ty3tyBM3T7H6fLAe6Lm6BA3oGPUmtUVthLYLRJTmZUX2J+yz2YtdnG2s
         FZzQJAaQsk/oTyDPY5FPgcKoJZhh25vzdMCQr5ZiE6pkNchkg7/B9kjTMpX9+qyhWtns
         gRgSDiezc7vfAzJtl/gk/2wZiVGvKjjVDGvwQoa/ZGlVZsCXp2Mrdp8hoE1DCDICfOVO
         qP9YZfVt6gWkUf4ZeC7YidK8TwSbmBKwsHAUsR+4v9BQdHyTKyV0zt+WsKnEOg5RkkGf
         yNa2ulpY52U/SOrg56i3fAjceNj6Mwf+TOFGxkGN8AyZhg8Ju/jQK7OFoNUItNTvs1cZ
         jd8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:subject:cc:to:from
         :message-id:date;
        bh=ByTARrSAvmNyj6Alu2Qh9EpHVJCBea1F/66m9H09TPY=;
        b=Fe8Y9o+CNWfAeduj8TYWMimMvYIdN2JQnWgArv8TA8Ubmf66dP9cx8A628jkKDxNB4
         Mu/nT9H3t8xxdQ28teeFmyq8sRANDQD0JVZBuwEo0vGpUB8GjwWrq3C9gYcxz+0QVcQo
         dAx6aaFqwI7J0blpO6q7SxrCKd6cOoZ9v8Ciw/1aDh0BfekKv0OaEkKJbTvcnsKQmHeB
         rjoeWkNdaUScQ0SkykukYhh7dDqYVdJrNx3mYHiTJukw/7dgyyp+9tKp1eFyM8HN5buI
         uYvP2zmouYOgvHOS3mUrNtuV1AaiCbjlwQlqysJOrk5foJtYBR2dFzAjUAnKyENPf+yb
         jR8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning ysato@users.sourceforge.jp does not designate 202.224.55.13 as permitted sender) smtp.mailfrom=ysato@users.sourceforge.jp
Received: from mail01.asahi-net.or.jp (mail01.asahi-net.or.jp. [202.224.55.13])
        by gmr-mx.google.com with ESMTP id w72si4796528pfd.2.2019.08.13.01.51.30
        for <clang-built-linux@googlegroups.com>;
        Tue, 13 Aug 2019 01:51:30 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning ysato@users.sourceforge.jp does not designate 202.224.55.13 as permitted sender) client-ip=202.224.55.13;
Received: from h61-195-96-97.vps.ablenet.jp (h61-195-96-97.ablenetvps.ne.jp [61.195.96.97])
	(Authenticated sender: PQ4Y-STU)
	by mail01.asahi-net.or.jp (Postfix) with ESMTPA id B8D031321BA;
	Tue, 13 Aug 2019 17:51:27 +0900 (JST)
Received: from yo-satoh-debian.ysato.ml (ZM005235.ppp.dion.ne.jp [222.8.5.235])
	by h61-195-96-97.vps.ablenet.jp (Postfix) with ESMTPSA id 13510240085;
	Tue, 13 Aug 2019 17:51:27 +0900 (JST)
Date: Tue, 13 Aug 2019 17:51:26 +0900
Message-ID: <875zn1phwx.wl-ysato@users.sourceforge.jp>
From: Yoshinori Sato <ysato@users.sourceforge.jp>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: akpm@linux-foundation.org,
	sedat.dilek@gmail.com,
	jpoimboe@redhat.com,
	yhs@fb.com,
	miguel.ojeda.sandonis@gmail.com,
	clang-built-linux@googlegroups.com,
	Rich Felker <dalias@libc.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	linux-sh@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org
Subject: Re: [PATCH 05/16] sh: prefer __section from compiler_attributes.h
In-Reply-To: <20190812215052.71840-5-ndesaulniers@google.com>
References: <20190812215052.71840-1-ndesaulniers@google.com>
	<20190812215052.71840-5-ndesaulniers@google.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL/10.8 EasyPG/1.0.0 Emacs/25.1
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ysato@users.sourceforge.jp
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning ysato@users.sourceforge.jp does not
 designate 202.224.55.13 as permitted sender) smtp.mailfrom=ysato@users.sourceforge.jp
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

On Tue, 13 Aug 2019 06:50:38 +0900,
Nick Desaulniers wrote:
> 
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/sh/include/asm/cache.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/sh/include/asm/cache.h b/arch/sh/include/asm/cache.h
> index 2408ac4873aa..07ddf31124a3 100644
> --- a/arch/sh/include/asm/cache.h
> +++ b/arch/sh/include/asm/cache.h
> @@ -15,7 +15,7 @@
>  
>  #define L1_CACHE_BYTES		(1 << L1_CACHE_SHIFT)
>  
> -#define __read_mostly __attribute__((__section__(".data..read_mostly")))
> +#define __read_mostly __section(.data..read_mostly)
>  
>  #ifndef __ASSEMBLY__
>  struct cache_info {
> -- 
> 2.23.0.rc1.153.gdeed80330f-goog
> 

Applied sh-next.
Thanks.

-- 
Yosinori Sato

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/875zn1phwx.wl-ysato%40users.sourceforge.jp.
