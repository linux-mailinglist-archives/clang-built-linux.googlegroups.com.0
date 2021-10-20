Return-Path: <clang-built-linux+bncBDB2BCVHRUBBBWUZX2FQMGQESKTAXJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CE04343E2
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 05:28:28 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id g26-20020a63521a000000b0029524f04f5asf12702873pgb.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 20:28:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634700507; cv=pass;
        d=google.com; s=arc-20160816;
        b=03gBcSVof7EJhVuD93IAUiemdcj7Wzji3vx5dZoQKOX8q+l2LZT5cJmLLgiX9UnyfL
         L4/GAxZGT0pOAAt6mbYgWr1FodfaGz10SkGKZEy635s/tcCHqxzh58S4dZkhhBYIeTrL
         cCxsZIaHxVmzg5vkhHL+PcJZoo8BVHSsbsf8JInp+gGAS6WilDDYD5+tuy2VxUnOv0Uk
         ZgcwrwNO1JMvZkyav+LWB5EPoD4tTUJQWJV9+quuX6arK1Yqw2dW4pj5QQ5rWoIlcbhH
         BjgCFsnwFjbUQxl3WnefbYr3aLeZ5+DxQ+eotfQF8c7N2tWAopMTdP5R6blw+VH/n9xO
         lRqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=i5THEu9OO2Y+Rkkdtntm11EN6MsF72tBw2C5t9iyYvY=;
        b=j2x/xEtTz/tW/RajF4652pbRi4bTit9H6BJ8aPrY0oL6b3vZC7Zsof/YGALFVOAcAt
         DtcyhlPETdX4JM4SBCHYpD+SoQGUFEV4OuzMClIhWnrGLr5JeipK2ppyyqyqICVPPk1u
         sI5ZIOECRCxt9kO158Hf3NccabZp0TiiCgbQ1t6BBfV7wzXiAFAHydNKHbfXh9H+dfO4
         oEsA/a4g5jrBkcu8HF0SXrkUow3SPmNSRWic3cOJPLgQ3ZqOLu/hzgd3SzDKxIeMugeZ
         AZK1SZvvCHLg77i3JVKeBnYiOP7UgfX+/bVhpn3lp2+K+LlMHW4La6h0LJWZm6k3iFnT
         d8qA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Nk3tgkVz;
       spf=pass (google.com: domain of john.fastabend@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=john.fastabend@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i5THEu9OO2Y+Rkkdtntm11EN6MsF72tBw2C5t9iyYvY=;
        b=rzUX6C2IQ9MBBAgM29zcTpYkeJ6F59+iVfsY0XUo8VEerOjxFJnUDGwnJusdlLY/Zr
         wvtVZ2UwJLz0WQPIfFmC4kcPSQxUKbZFI2p5NFxJEo/47gxVpHATxg7C1Uq7/eBo6ynE
         xXAD0UqF3z4Q5pycDZLdFJk3ztYuB7ZO9D5NLJZ4E+sLRJ6wCIT2sM7W2teNi5sWYYnv
         zCqkYqxQB9rUE8ry2x1nqFmamHhMFWwaGdrS2UlvNRshGhCHRfXGKWw8f4bHwJ/gyu6y
         A0hMFq9XxISM9eEVub+xuyfFHhOgk8mkHeIq2uoRCk4c3UseAFE4NSo9yLja99ScX0tB
         /v0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i5THEu9OO2Y+Rkkdtntm11EN6MsF72tBw2C5t9iyYvY=;
        b=n3nIG2qUM1+2zY7XhAnQbGCzU/LDIdNNuFiWfo58mhylsXVcp6TAeV9VhGmpHr4T5z
         o+c3LfKgKPnHMpxqOTjLTy5hGY3Qh1brPZxniYLbnDcdLuiIigAxRD4TwSr8YHs3X+wW
         XLipN2VoVrldINe5dkXby/HbFEovXxkWANllsqdod/r9qvefxsIzT8OnInFwOXQzoQqK
         C0AAVfwV2/ov532WExRymEC1Ndm19SCszbKooCvEFGg9sRRRxTLzh6hpkG32M7fka1JY
         RG0OCLnw1Mj+bt68yDDwGOI3jToWE6kshbXDQyIAy2Jlbmfjv0ey7ga3XWRJk+/+lSUO
         iyxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i5THEu9OO2Y+Rkkdtntm11EN6MsF72tBw2C5t9iyYvY=;
        b=pZacwbYHjxhByO8h4Llg7xP2fpbiYdyjQ0dj7xRbiNbIeZalgvwjCIlwTvgh1czXpz
         bMyLYzNMMpmtWV39ENAjcy+yLbwtFv/x4INQnx1aSVxYiWfwjb3990N/SNKq4NtvXZi4
         HT8zoV3LE5j3dsqyiZcQXvkNJR0daFF4ldrPs5FwdFyZI5jSmqFjLMZpcSmOAGJuTuzl
         cud/cWlG3xmiCDAQGaxw2c+SGTDQACKV9yweCQ9kBepCQZp8dAZIaHWnRcPFVTbK7+FX
         AebRUzSc1+FVqhyWwucQmrj0rFZJjS/gTaZ6OFLLZK25uDgW17mgF2OR2+hOAptkyWqm
         fjNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gIe2h71nmGgtb/uPwENdtlhyfr+WDiGlIbQISNTLzdCvpMw95
	0O7zSv5LN0YCccWcvqtgEvs=
X-Google-Smtp-Source: ABdhPJx3p5zZZ8VePbGV0qGs0DEZ6CZq0KY29ivlySW6wTvEXMdUw1ibQqmXPAcDFG3zxzW3dCV3RA==
X-Received: by 2002:a62:8f53:0:b0:44c:5d10:9378 with SMTP id n80-20020a628f53000000b0044c5d109378mr3755845pfd.19.1634700506840;
        Tue, 19 Oct 2021 20:28:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:41c5:: with SMTP id b5ls313471pgq.11.gmail; Tue, 19 Oct
 2021 20:28:26 -0700 (PDT)
X-Received: by 2002:a05:6a00:c8a:b0:44d:8985:ff4f with SMTP id a10-20020a056a000c8a00b0044d8985ff4fmr3797581pfv.1.1634700506194;
        Tue, 19 Oct 2021 20:28:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634700506; cv=none;
        d=google.com; s=arc-20160816;
        b=gM8injKM5vpqXdSsJPsXl6/GxjmWVVvY0FSttvOjFkGVnOoYTgeNSMYk2i6NTttFaT
         NTguD5gZLMiRDRGA7eLCfkkBhWZLMljuktqOSbGppDBAzI+sjBN9+yQ7VYJdFkQakSck
         T5Y/uC+8+xwCnsynfH56Zc0pBXO9nCK6JC1p34FKur8lAKwc0FnBxqVvzc+ojvUB1Z1x
         U7v+eoGw47lBJKYFuL0bCyroqbz9tp8nbpwjM9eGZfWXkIMTk0/FYGRKrPjSOzVit4vs
         bzALOkvKRHLMIZkRTswSTpELQ66M6TY20C7yLKo2WxOtqbd3mQ1Ly563aFF7JyQ/UqhE
         6OXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:dkim-signature;
        bh=eBIDOwTiVEDpLZJCtDQ9qFP0TuQHVkD3tTneVRsqqv4=;
        b=JtljkwndduCTMvTptWscRbprTDpzsOuK9sT1oXTEWli5foXgYCAT/kC9v7e4y8v2f0
         aV5IXe9R6Tp936U47JSwW+Anuv4bxeO9Jit4w4M117FqXTf7XysSa3219qv2FQHMEdA1
         bwL/md1hKPObtTsjwOb24bjK8xv+efqHIcb0zJMoy1c/krApMRMz0myCTmIxAVqakKzI
         2zrlO5S2J1c2wB8fm0kYmmu4rzl5YU5eOmaO3fc9ksv7QNXTaowOCSk/SyxP2ypMar50
         MPitA/xF07kYIJEvzLNUIqG7wMEiYH0cdqZpBvp1FOYlbCOD/Wv6AHumP8nNoiM7Vd1C
         uB+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Nk3tgkVz;
       spf=pass (google.com: domain of john.fastabend@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=john.fastabend@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com. [2607:f8b0:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id me13si44049pjb.3.2021.10.19.20.28.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 20:28:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.fastabend@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) client-ip=2607:f8b0:4864:20::12a;
Received: by mail-il1-x12a.google.com with SMTP id h10so20621893ilq.3
        for <clang-built-linux@googlegroups.com>; Tue, 19 Oct 2021 20:28:26 -0700 (PDT)
X-Received: by 2002:a05:6e02:19ca:: with SMTP id r10mr15540186ill.148.1634700505518;
        Tue, 19 Oct 2021 20:28:25 -0700 (PDT)
Received: from localhost ([172.243.157.240])
        by smtp.gmail.com with ESMTPSA id x5sm474959ioh.23.2021.10.19.20.28.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 20:28:24 -0700 (PDT)
Date: Tue, 19 Oct 2021 20:28:16 -0700
From: John Fastabend <john.fastabend@gmail.com>
To: Maxim Mikityanskiy <maximmi@nvidia.com>, 
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Andrii Nakryiko <andrii@kernel.org>, 
 Martin KaFai Lau <kafai@fb.com>, 
 Song Liu <songliubraving@fb.com>, 
 Yonghong Song <yhs@fb.com>, 
 John Fastabend <john.fastabend@gmail.com>, 
 KP Singh <kpsingh@kernel.org>
Cc: Eric Dumazet <edumazet@google.com>, 
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, 
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, 
 David Ahern <dsahern@kernel.org>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <ndesaulniers@google.com>, 
 Brendan Jackman <jackmanb@google.com>, 
 Florent Revest <revest@chromium.org>, 
 Joe Stringer <joe@cilium.io>, 
 Lorenz Bauer <lmb@cloudflare.com>, 
 Tariq Toukan <tariqt@nvidia.com>, 
 netdev@vger.kernel.org, 
 bpf@vger.kernel.org, 
 clang-built-linux@googlegroups.com, 
 Maxim Mikityanskiy <maximmi@nvidia.com>
Message-ID: <616f8cd0a0c6c_340c7208ae@john-XPS-13-9370.notmuch>
In-Reply-To: <20211019144655.3483197-5-maximmi@nvidia.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-5-maximmi@nvidia.com>
Subject: RE: [PATCH bpf-next 04/10] bpf: Make errors of
 bpf_tcp_check_syncookie distinguishable
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: john.fastabend@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=Nk3tgkVz;       spf=pass
 (google.com: domain of john.fastabend@gmail.com designates
 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=john.fastabend@gmail.com;
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

Maxim Mikityanskiy wrote:
> bpf_tcp_check_syncookie returns errors when SYN cookie generation is
> disabled (EINVAL) or when no cookies were recently generated (ENOENT).
> The same error codes are used for other kinds of errors: invalid
> parameters (EINVAL), invalid packet (EINVAL, ENOENT), bad cookie
> (ENOENT). Such an overlap makes it impossible for a BPF program to
> distinguish different cases that may require different handling.

I'm not sure we can change these errors now. They are embedded in
the helper API. I think a BPF program could uncover the meaning
of the error anyways with some error path handling?

Anyways even if we do change these most of us who run programs
on multiple kernel versions would not be able to rely on them
being one way or the other easily.

> 
> For a BPF program that accelerates generating and checking SYN cookies,
> typical logic looks like this (with current error codes annotated):
> 
> 1. Drop invalid packets (EINVAL, ENOENT).
> 
> 2. Drop packets with bad cookies (ENOENT).
> 
> 3. Pass packets with good cookies (0).
> 
> 4. Pass all packets when cookies are not in use (EINVAL, ENOENT).
> 
> The last point also matches the behavior of cookie_v4_check and
> cookie_v6_check that skip all checks if cookie generation is disabled or
> no cookies were recently generated. Overlapping error codes, however,
> make it impossible to distinguish case 4 from cases 1 and 2.
> 
> The original commit message of commit 399040847084 ("bpf: add helper to
> check for a valid SYN cookie") mentions another use case, though:
> traffic classification, where it's important to distinguish new
> connections from existing ones, and case 4 should be distinguishable
> from case 3.
> 
> To match the requirements of both use cases, this patch reassigns error
> codes of bpf_tcp_check_syncookie and adds missing documentation:
> 
> 1. EINVAL: Invalid packets.
> 
> 2. EACCES: Packets with bad cookies.
> 
> 3. 0: Packets with good cookies.
> 
> 4. ENOENT: Cookies are not in use.
> 
> This way all four cases are easily distinguishable.
> 
> Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
> Reviewed-by: Tariq Toukan <tariqt@nvidia.com>

At very leasst this would need a fixes tag and should be backported
as a bug. Then we at least have a chance stable and LTS kernels
report the same thing.

[...]

> --- a/net/core/filter.c
> +++ b/net/core/filter.c
 
I'll take a stab at how a program can learn the error cause today.

BPF_CALL_5(bpf_tcp_check_syncookie, struct sock *, sk, void *, iph, u32, iph_len,
	   struct tcphdr *, th, u32, th_len)
{
#ifdef CONFIG_SYN_COOKIES
	u32 cookie;
	int ret;

// BPF program should know it pass bad values and can check
	if (unlikely(!sk || th_len < sizeof(*th)))
		return -EINVAL;

// sk_protocol and sk_state are exposed in sk and can be read directly 
	/* sk_listener() allows TCP_NEW_SYN_RECV, which makes no sense here. */
	if (sk->sk_protocol != IPPROTO_TCP || sk->sk_state != TCP_LISTEN)
		return -EINVAL;

// This is a user space knob right? I think this is a misconfig user can
// check before loading a program with check_syncookie?
	if (!sock_net(sk)->ipv4.sysctl_tcp_syncookies)
		return -EINVAL;

// We have th pointer can't we just check?
	if (!th->ack || th->rst || th->syn)
		return -ENOENT;

	if (tcp_synq_no_recent_overflow(sk))
		return -ENOENT;

	cookie = ntohl(th->ack_seq) - 1;

	switch (sk->sk_family) {
	case AF_INET:
// misconfiguration but can be checked.
		if (unlikely(iph_len < sizeof(struct iphdr)))
			return -EINVAL;

		ret = __cookie_v4_check((struct iphdr *)iph, th, cookie);
		break;

#if IS_BUILTIN(CONFIG_IPV6)
	case AF_INET6:
// misconfiguration can check as well
		if (unlikely(iph_len < sizeof(struct ipv6hdr)))
			return -EINVAL;

		ret = __cookie_v6_check((struct ipv6hdr *)iph, th, cookie);
		break;
#endif /* CONFIG_IPV6 */

	default:
		return -EPROTONOSUPPORT;
	}

	if (ret > 0)
		return 0;

	return -ENOENT;
#else
	return -ENOTSUPP;
#endif
}


So I guess my point is we have all the fields we could write a bit
of BPF to find the error cause if necessary. Might be better than
dealing with changing the error code and having to deal with the
differences in kernels. I do see how it would have been better
to get errors correct on the first patch though :/

By the way I haven't got to the next set of patches with the
actual features, but why not push everything above this patch
as fixes in its own series. Then the fixes can get going why
we review the feature.

Thanks,
John

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/616f8cd0a0c6c_340c7208ae%40john-XPS-13-9370.notmuch.
