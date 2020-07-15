Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBDHAXX4AKGQEIK6T4QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B63A2216C7
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 23:07:24 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id i10sf2566563wrn.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 14:07:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594847244; cv=pass;
        d=google.com; s=arc-20160816;
        b=bhNEzXrJHuVW9kUB3G8Z/KfhY90o4gygq+kFJugLSD5uuocbMOyQZMbpuOStI/jvn5
         z9kMFcKv124E3Tuo1ZxKfVicZasYSU8tNtNW4jAgrf4dWGpO+1wakCm5JyZaKt4COKEp
         vw/ae4tZlGANCuQwpNCX+NHXeToJpPTojkIEt6+o8o6T1RiKmmIU2lLJzljyL1Ows/Zn
         +lN/zkthZZ9y/IWajP8XJcuQjQPCfQ5Wv25jyAMs/WQDkde3enUS5W1dpLcSz23bsYoG
         XZVc8GDGFVUukg/KlbB1LI4iai0QUlGamOoR+JH7+glTo47CGi+AP/N1itCGBwuWFpAW
         XAxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=bc0cxnLdrEicONGUGNr3rodiV+OyPz+LJUbNryRy7Q8=;
        b=r8TyBfaBlgyfnrDQ0plYlz1EIS8qu78nDdw233uU6XaCgiyICvQD0oyerrjkNbEc5i
         Tl6IfSmBXYRfviD1Idsd82aJQNQ0Y6za42tYDza+QBbj2uHFiwI+AtOPbdQ/1XT3kHwt
         EKlpPEv0OZMZjhxA6X+X8liqcYkIeczmrpVf77XoLJc2Gj1lqj9nR2zJnQ6/AVITRHqu
         xj/3c4KoA3AEXWZNatTHaRjN4j7GLlr8NLnZb0bhdnhOHnm23rvHqavMH8XGzfDgqLON
         C0vDjr1HSnQED6s60U1fX/1uCthwZOtWdblNCn/S6mrVOtd08FiEHB0e1hEaAyOiLNPM
         soAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bc0cxnLdrEicONGUGNr3rodiV+OyPz+LJUbNryRy7Q8=;
        b=WUqgTZ0osC56VsItQ+VJcqo7pEB0/GHMxu+lXUKBOmObS8X679hlhUXDK9msh+lZ5x
         b6f7xuf2YWRK+wvVyIrTna1EZZUK9ff/9XuFFdt76cQ/2zbIPBBFwSyF9xCNydQm8/Pr
         VE1eDDQhw3q1Yf32eFfPAZCDpLs9MbjZACXnhijrTw0U2iGX7yEArZKyOEzn/cw+x52l
         1BaWbJCvkmMIzPgHqjGbk+ai40KOJxhiB+v9uWEYq+RS+XGYpcWLWoY7/sa4B1UWB7Qm
         pFhbhc52A4WsTJugx25seNnuw6CEGaaIGYXEhxc8aH1A5625zBCG8IlCDvK3KE5IRFAt
         7DgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bc0cxnLdrEicONGUGNr3rodiV+OyPz+LJUbNryRy7Q8=;
        b=sqYXPZNfRk6PcaK7AKVf8S4diJfa0CmNPImA37o7mdG5JugRHhzAevxYVPkQsCNMcb
         sNDp4r6bNbmYMovC9lJ9YMscyYieuzElBB7zNfXM8t/nhrQ9u/iDc8tnnFdXRQRoKlXN
         fpcKp2LCPPlV22EVfFcfeUQds5QhJvRX9R4wIaZW8VAsUtn6XFJrGkpKQdvP0DmZkJpD
         tb0lxoDvTkZvsD5tVKAQeSyHtewjCxCT/hJ3uvFqPAgY83UP7MBuzjxH2ZUitq6WkICR
         7Rsv7qh1ZENzSP7PlLsTxYyOs1Nde1DMZmv2SkUXTKX9JU9qhsemSW6cNpjEos19DUb1
         YUBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318Zzr1UZopeI/UcXo68b3j0piklbiNhKSfKQokeJ1b/n/ey/8h
	b+cZMrjFpP4OwaYmuTWDRYs=
X-Google-Smtp-Source: ABdhPJxrg+BqxWdonqXMw7jdE4L/KJxK3NjDgzwM0yf2uzYBwMXT/e6duGc7FRp/OTuj2NqQEyw+GQ==
X-Received: by 2002:a7b:cd18:: with SMTP id f24mr1448427wmj.40.1594847244113;
        Wed, 15 Jul 2020 14:07:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6507:: with SMTP id x7ls2888399wru.0.gmail; Wed, 15 Jul
 2020 14:07:23 -0700 (PDT)
X-Received: by 2002:adf:dd83:: with SMTP id x3mr1568825wrl.292.1594847243662;
        Wed, 15 Jul 2020 14:07:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594847243; cv=none;
        d=google.com; s=arc-20160816;
        b=Dd/15rOXbFVc+B++dpP+HkIHpSLsFuYCPpR5KDEI5BpiMEigUH43VUclW0pCa9BWLZ
         ReijZLmgnNLe9iMxeWKyM8t0dPWYxMQGOY6VAk4/4bTdwPExvfy1DtZD3gxtPWRKLoLL
         eYzBnILIgkwU7K6rFM++Z0wabEQiqy9nCfCQGYbCAqpFODjY5m41RC82DXKa7s8LxKpj
         HWomsHG7XDlJEyhDI+MKTgoodBJF+qocxIrjv4RWb/m0Lxzl2AXX9YKQ0ot1c/Pfh5eQ
         /Tjxga2saNlmK2EzZKhrQl9S9116JNmQLS4Qg3alktAH+tThgNHVRe+Z+n1cRPCwxjja
         MVFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=4CA3+FbNyBKeP09ZxsJCS+WiPseOhRLkIdqBJ5s4vNc=;
        b=YFSPxAyxDX0D/QybgfXkoBi9+QLX8MtzhFte8f8ipIpgntGEI5X/c//cBtwkBsCyqO
         pK3P0+RquKZXzvpNLv35jQkbf7jTwbpf12y7y0GR9DgZcP0zIB2FuzEHhgYXfTf9851H
         Su2up9i8sRuHlHGMDrd3GM7nu9tj4nyRUIj/xL5d+DOGwyNPKqhMYnP50xh9e1XGteob
         vpfX+l4Rw8UPpzxO3trFGlukHUm7sHA97LorR7CCsqmGOIbUdnw9BVe1zrRG08PRXgyy
         PXvhoiusl34q9JS+HV1aamRC86m/wNEZKNiFJS4WWaFTj98cH3yKpdvh/Ktv1mecA5fP
         35rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id 14si160260wmk.1.2020.07.15.14.07.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 15 Jul 2020 14:07:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy02.your-server.de ([78.47.166.47])
	by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1jvocY-0003ol-AP; Wed, 15 Jul 2020 23:07:18 +0200
Received: from [178.196.57.75] (helo=pc-9.home)
	by sslproxy02.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1jvocY-000Rp7-0q; Wed, 15 Jul 2020 23:07:18 +0200
Subject: Re: [Linux-kernel-mentees] [PATCH v3] bpf: Fix NULL pointer
 dereference in __btf_resolve_helper_id()
To: Peilin Ye <yepeilin.cs@gmail.com>, Andrii Nakryiko <andriin@fb.com>,
 Alexei Starovoitov <ast@kernel.org>
Cc: Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 KP Singh <kpsingh@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel-mentees@lists.linuxfoundation.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <CAADnVQ+jUPGJapkvKW=AfXESD6Vz2iuONvJm8eJm5Yd+u9mJ+w@mail.gmail.com>
 <20200714180904.277512-1-yepeilin.cs@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <3b97c5bf-9f07-0353-ea4d-f90574fbcdc0@iogearbox.net>
Date: Wed, 15 Jul 2020 23:07:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200714180904.277512-1-yepeilin.cs@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.3/25874/Wed Jul 15 16:18:08 2020)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 7/14/20 8:09 PM, Peilin Ye wrote:
> Prevent __btf_resolve_helper_id() from dereferencing `btf_vmlinux`
> as NULL. This patch fixes the following syzbot bug:
> 
>      https://syzkaller.appspot.com/bug?id=f823224ada908fa5c207902a5a62065e53ca0fcc
> 
> Reported-by: syzbot+ee09bda7017345f1fbe6@syzkaller.appspotmail.com
> Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>

Looks good, applied, thanks! As far as I can tell all the other occurrences are
gated behind btf_parse_vmlinux() where we also init struct_opts, etc.

So for bpf-next this would then end up looking like ...

int btf_resolve_helper_id(struct bpf_verifier_log *log,
                           const struct bpf_func_proto *fn, int arg)
{
         int id;

         if (fn->arg_type[arg] != ARG_PTR_TO_BTF_ID)
                 return -EINVAL;
         id = fn->btf_id[arg];
         if (!id || !btf_vmlinux || id > btf_vmlinux->nr_types)
                 return -EINVAL;
         return id;
}

> ---
> Sorry, I got the link wrong. Thank you for pointing that out.
> 
> Change in v3:
>      - Fix incorrect syzbot dashboard link.
> 
> Change in v2:
>      - Split NULL and IS_ERR cases.
> 
>   kernel/bpf/btf.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
> index 30721f2c2d10..092116a311f4 100644
> --- a/kernel/bpf/btf.c
> +++ b/kernel/bpf/btf.c
> @@ -4088,6 +4088,11 @@ static int __btf_resolve_helper_id(struct bpf_verifier_log *log, void *fn,
>   	const char *tname, *sym;
>   	u32 btf_id, i;
>   
> +	if (!btf_vmlinux) {
> +		bpf_log(log, "btf_vmlinux doesn't exist\n");
> +		return -EINVAL;
> +	}
> +
>   	if (IS_ERR(btf_vmlinux)) {
>   		bpf_log(log, "btf_vmlinux is malformed\n");
>   		return -EINVAL;
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3b97c5bf-9f07-0353-ea4d-f90574fbcdc0%40iogearbox.net.
