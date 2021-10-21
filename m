Return-Path: <clang-built-linux+bncBCUY5FXDWACRBAX2YKFQMGQELF3AGAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id B37A143580C
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Oct 2021 03:06:11 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id r13-20020a17090a1bcd00b001a1b1747cd2sf558162pjr.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 18:06:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634778370; cv=pass;
        d=google.com; s=arc-20160816;
        b=rwgG/aWzvyi74Ph460jwAlsgMfHe/DpqRfEFn08uEE2lsxslnjETFB+BIPKbRJRU1C
         smCyAtgjlonEIp830J8s1KEJ0QPZsbLNYGUUkOvus6Ifbl+LMAEApON7xR2KiSeoMOFG
         t+5MxB75YQVxwOjV35lMt+iW9Oz7BHNYykbQuvgv5lcOKoLK6BBoBMGz38j7ibO7W5+E
         jsUpHhvAYhDw0/PU4f/HSc3LsEC7HdkCdDSp8rnMv6Ik+wTY/c4igqTE0fJbkV1b+1S0
         UPViFxn7yTMywyVml9PDVLhgyYyfAST4b/PGDRBoylFrf1a2reGj97f+Qu66ZBjxMbPL
         kirA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=2vD4NQve9wwL6PiDBA5M31apQLqyp9jji2Au2xyrM0M=;
        b=BOex7jM8xHOLPEkCVE8haRdIS+FCbCz4SRZYmi80AMZ3BhKZuB2FSdaMN8tmyHBtqx
         s+wk5xI6CtOkW79WZwp6JWs/IQxjr8niH0N4APYv8qrzDGbOrC4QrqfracVL5yeOgs9a
         dCNbRfgVEeNTc0LGMltBpwm5bu4jCfPx9ZwFfgyPlpcFSVSQGkAyHpYZI4XiaKawp7ZL
         pLM7MBdCM9P/ELiSBbx6zfy36KMis8FDCS5bPyFmDzw8MiPU34NwsKYFP9keIWxr7YzN
         we0wsu2jOfDDuxtYn2T1bWjbvjV0f7aHGnwKPScS/Irxk77Ht3SskM0jKWBQ5DBLaF81
         qYFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lzebUHAx;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2vD4NQve9wwL6PiDBA5M31apQLqyp9jji2Au2xyrM0M=;
        b=j2bWRk5V8i7AJUQKMO2oeT5L41yBDUda3sLsWj2ZU0K14FwlUa4SW0CEEI3Bdtbezl
         FuQRfo1vvOiSJEtnWcWFDr56qjtXmQH5W6mdd3E+uQgyOeGOkSpaNO3pJtZ6tM30mbeg
         QyOIAhZhjFf9MvZe6puFAaIfv62F/i5f0kiBQuCWJtMduZ7elNrMXf8Iz+pBxzNQ5ph4
         /iEIgzhfuI7iQDOZOewwATp++kYDsSEfI7LtRDijnsj6ty05N03uQbGa9WcIHv6gJghN
         DbwGh7mnpIbvldyz6yuprp/QmbetSSja2KROaLsQFvVW5VIHOVghoecHHY2xCS6ma9rp
         rHLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2vD4NQve9wwL6PiDBA5M31apQLqyp9jji2Au2xyrM0M=;
        b=qlClL16WkEJRH4wk3BQigHLDWHsZWgHeh6v2k68Rv8vOgmq0e+paugVu3VOZyT+FI2
         wN1QufNGUZFPFo5L6JnfKNgtufZfs0Voi3fbuP6ytlXUr/aLWu4sHaKBV8hgh2K1sv73
         iuDoG702fDXYpt5bMQbPM3dxwvEaWw67jQrLC8rkptfue3EdhmmT6iGEXqxF7cfS6Iok
         4QF2rR8J4Q+DaxSZMLDaGmwfrXcs8Fd7VDTt51Dqt0OnwO/jgmhgyzlSth40tdsz3jo8
         XJDGgFRtTOvj3w/uhrSJEhCgmltqYhgH2EUOe4v4bEpLk172H7bIo/mOGiGtWW/60yJo
         NXIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2vD4NQve9wwL6PiDBA5M31apQLqyp9jji2Au2xyrM0M=;
        b=7/wUCDS+4kOCsbaL6sRgLqsrUSXy4+QDdrV58ySvEUAkd500IIlfeKY2aUccx2bfus
         0zf4HtfcwkWMMhDRgvm3eP24qAZb84VmjVgsJ9an0SV1jov8aSsGlDGOPtw8BGUk9ndE
         OJW7+jI7viPX2JWwpqYJOFhIe1iU6LJFdCY/D7SPIU9Lgl8WxbsyrLLxXpNCTrCMNhD/
         qpzf9OGTgaelzOCJMoElnb6OaVgrBq0sUsxEY710G76dnujZbsg0okSV3YyKd9Zh2Aw9
         tcf+u75TYdCHmOoVOXwMkT61N3NtEocJ0lXQ0wkha4GHSTHk/vhrezu96TW+7ADqt7u4
         lWkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323zuUa1153275q9IcNZuXfYi8txPGcVv5M4/u25RaZPQcxmIkj
	zMDrTDbFzMQLmyMElLVtZVs=
X-Google-Smtp-Source: ABdhPJxwhZwdXGNK4S4A9eSAhC2MP7Ndstyd7FAumTep8hXk3EyDXrRl83ntJbYdo9Pu6DL2AqFU1g==
X-Received: by 2002:a63:79cf:: with SMTP id u198mr2004279pgc.259.1634778370377;
        Wed, 20 Oct 2021 18:06:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:188b:: with SMTP id mn11ls2083438pjb.2.gmail; Wed,
 20 Oct 2021 18:06:09 -0700 (PDT)
X-Received: by 2002:a17:90b:3e8d:: with SMTP id rj13mr2712850pjb.183.1634778369721;
        Wed, 20 Oct 2021 18:06:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634778369; cv=none;
        d=google.com; s=arc-20160816;
        b=mHbd5YB7gKh7868rfYg5+UWkvqC44kvGzBBeUPvlQeJMEUB/RUkq5rlXr3ryal/iW2
         rbTR500DmuvAcY7mdW73c69/hHj0Wphpew0AtLlsIdHMwkhNylZwGDmqbJpsg+RiFWAZ
         39ylN9c2rFNLf79TKn1PrTjMjOXq6EYBdTPfDIDVUPd5iNoZID0vJhgcfG6tHD9m9Aq4
         xYDvJqXsKcgFC9dWBjxRXuGuH+vSFWMxkCs57f1m1lzDqMTu7NKyGG2jWLlsrTE6E4+r
         ASPsbS3lStai2ApahkYdQof4y1SJB4E4y0Vga6PI1pjfPAcMfnW4EQsNCTxF+0uM2/Yb
         CNpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=06BhUAAUORlPk7152bN5SJFZoUaSVjUcf1XHx3yIAJY=;
        b=CgXK0KpsjGBg3vLPzCXxc9WqTC+IXHpUryJNC26v/ifPu5r5EbzR3w6RdZSI1H7XAj
         0Jm43b4HxWHXs0MgaYZjOwD6J8k5jBSqjkO5uUuKqrqbZYKleWoALQCLLxr0BAxZTRQ6
         C+mp3cUdNHDlFqmS6W1ZuH5mj0L9BXLht/S0erG0wTd/yqlqIx+YCXQEOMhoXpu+YuFl
         qxVTI10ZYmUL/536crSBe/yXP50I5iC8HSyicfu4KOhKbvrecJbhc52QgMdYD4qOFHg7
         IkmIvdOL2ZRnOXSvaS+iUEjvhr5Rd7MsHYk8ec168Wrze3EMUwDmKKl+fwVpaLjAFmgl
         oGWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lzebUHAx;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id a63si387324pfb.2.2021.10.20.18.06.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 18:06:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id g5so17363578plg.1
        for <clang-built-linux@googlegroups.com>; Wed, 20 Oct 2021 18:06:09 -0700 (PDT)
X-Received: by 2002:a17:90a:c087:: with SMTP id o7mr2889434pjs.30.1634778369306;
        Wed, 20 Oct 2021 18:06:09 -0700 (PDT)
Received: from ast-mbp.dhcp.thefacebook.com ([2620:10d:c090:400::5:8c95])
        by smtp.gmail.com with ESMTPSA id g186sm3858699pfb.53.2021.10.20.18.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 18:06:08 -0700 (PDT)
Date: Wed, 20 Oct 2021 18:06:05 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Maxim Mikityanskiy <maximmi@nvidia.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>, Eric Dumazet <edumazet@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	David Ahern <dsahern@kernel.org>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Brendan Jackman <jackmanb@google.com>,
	Florent Revest <revest@chromium.org>, Joe Stringer <joe@cilium.io>,
	Lorenz Bauer <lmb@cloudflare.com>, Tariq Toukan <tariqt@nvidia.com>,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next 10/10] bpf: Add sample for raw syncookie helpers
Message-ID: <20211021010605.osyvspqie63asgn4@ast-mbp.dhcp.thefacebook.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-11-maximmi@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211019144655.3483197-11-maximmi@nvidia.com>
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=lzebUHAx;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Tue, Oct 19, 2021 at 05:46:55PM +0300, Maxim Mikityanskiy wrote:
> This commit adds a sample for the new BPF helpers: bpf_ct_lookup_tcp,
> bpf_tcp_raw_gen_syncookie and bpf_tcp_raw_check_syncookie.
> 
> samples/bpf/syncookie_kern.c is a BPF program that generates SYN cookies
> on allowed TCP ports and sends SYNACKs to clients, accelerating synproxy
> iptables module.
> 
> samples/bpf/syncookie_user.c is a userspace control application that
> allows to configure the following options in runtime: list of allowed
> ports, MSS, window scale, TTL.
> 
> samples/bpf/syncookie_test.sh is a script that demonstrates the setup of
> synproxy with XDP acceleration.
> 
> Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
> Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
> ---
>  samples/bpf/.gitignore        |   1 +
>  samples/bpf/Makefile          |   3 +
>  samples/bpf/syncookie_kern.c  | 591 ++++++++++++++++++++++++++++++++++
>  samples/bpf/syncookie_test.sh |  55 ++++
>  samples/bpf/syncookie_user.c  | 388 ++++++++++++++++++++++
>  5 files changed, 1038 insertions(+)
>  create mode 100644 samples/bpf/syncookie_kern.c
>  create mode 100755 samples/bpf/syncookie_test.sh
>  create mode 100644 samples/bpf/syncookie_user.c

Tests should be in selftests/bpf.
Samples are for samples only.

> +// SPDX-License-Identifier: GPL-2.0 OR Linux-OpenIB

Isn't it deprecated?
LICENSES/deprecated/Linux-OpenIB

> +	// Don't combine additions to avoid 32-bit overflow.

c++ style comment?
did you run checkpatch?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211021010605.osyvspqie63asgn4%40ast-mbp.dhcp.thefacebook.com.
