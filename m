Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBYWDQPYQKGQEBDZZJNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 970A413FC14
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 23:21:24 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id u14sf13123791pgq.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:21:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579213283; cv=pass;
        d=google.com; s=arc-20160816;
        b=XPtlEZwdD6oBAXH5RRR/fqPbmgwNQ9NseLioioMr5NTUky1C/0sZUyK1JRuoTXtpJt
         Le+sY6OFl9JJTk/jseBsL+4L1AZ32j75LBhihsAKOqZ3MIYRx4jiJ4HYVoQlc9gZq9RH
         nTpcSxgiPsp1MsYODwaoxaBp/ogwdC4LDmipfD4h7oTpPf5ZRloj0XGeLbn8e3F1KH3I
         drn7SqOsKvkbfP5JYk8HRA6NXr5aj/K3wjVZ97kjxGLMx88dqhHNspgkaYwdmCLjhGL1
         6IIvmb+kOG33PJYs9Juk9IweMaKB6dLB6+l1osQg4swHhXzgAXDrG6pAlYtFu7xXMfOm
         bVFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=2/gCwQv/Tc33sRHLacn6/Gsz4zlhA5ihMVH6p/AhBgc=;
        b=YkS/DQrHsSwEa2oOko3qdrAq5tBfe7a3AWozawscyYwEQNSKO9iNbndxDxkRiv/9qV
         1QX0JcB87YI21FeiStxp2wxe7PRvICc/a/4vKOCUQ07q9rJniIsPAgviLWFgVX9wk0qH
         2cTwhwAXpLPzGd2N/bhjeqnn4/hf+2qPjmvV8xz7zWSZbiVvMduuI4TKzmjvAEYFhbOF
         xmVkTs/d+dL9+pVdqxGfbIaLzgS3wMbucvi2zS7FnRh/i/UJXacnqy3HJ13i1wKp2naS
         2MNraS6R2vcL86t7KN1ZpR5PfvGQrphxwSWy9BXdegcWrYbesxXyKEnU3vcsuqaaco4I
         tU/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YrLfshsT;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2/gCwQv/Tc33sRHLacn6/Gsz4zlhA5ihMVH6p/AhBgc=;
        b=jliEGlVS1tJt0GNz65d9W7lzTQ3MYE4Y6rX0lyxrcdyYeKSpkuezBdQuOiynB8Clsi
         +QdI5e+fdqKEEYwaCvW73NbZ6xqAbfOdIFQCSMJ7pA7l77vb1jUrWLkK7DKRWXILUd2p
         JEvQcplT4ddlGh6wXlP93tYfUcHPHVJEuUa+IlRnnaDcXBCSrPVPcVdQxPBWWzgAc7Hz
         R6a5TEAznMPYurnvQLsFN8qkWIeAnlZ1ARJBqk9dSqGsm1ECEwajml4RgzUT/zMQOSxm
         SQqW7ApRj4kwYsCOCrSQ2D4q53X1vxnWmYZRWnbK1jIPeLv9JnONu7YDnpz/J0Lsh1Aj
         9nNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2/gCwQv/Tc33sRHLacn6/Gsz4zlhA5ihMVH6p/AhBgc=;
        b=ojjfRhJDF1MJe6E+MhJkCM+lc/3TFrInL6E8Ho3ntPNYijG84sQg7kQ7bP7O50+XZS
         YFcAQyGGIVjM4jjlnit20iwF9GCbBpbWf5Vjv/WMcmeaf0SrgBeXEU3Kk/YhjvPbkFN8
         ur/3Bx7CNIm0Q9pYgGkmNtb/gc7eKk2p1qtDOIbMN5+MjPDF/rkk58qJ1ciACr8daEoS
         MPRspjdxJsuZwoSnZiUwo8XVO3doQqCkBSseItUQtXE7ZhU6ksIebzOqAsuKBZoQ4puM
         fmXJrbKzESg14dIltkkPgM4i6kQnobJCmZGU/zprhwARNjiqZsCllvuushZ5r0H48fP6
         2k1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2/gCwQv/Tc33sRHLacn6/Gsz4zlhA5ihMVH6p/AhBgc=;
        b=QfhIR1CFAb++FkrjnPPcz7uagX+t4CLm49caBgHUU5SWHNKzM2F8UMxEAKdu3ChEo+
         3RJJavrBw5DqYx9g3eob1u/+o4Pl+P4LFVBrZD7N5uwNA5Cm+8cGpUUX9O56D+DzMny+
         8SbKe35m7Igx1VkxLyzi8rSrqODznhguK6HVTbTA1FZ8v99G/vUVw1UM7JW5ZKRr9aPF
         xhGlD6yRGEQuiwsJ22aPXEJEJqHJL02NE3rRgaMldWDK8OJ8YMswY/qCdKtxqp5rw/tg
         Q1DeebJxJEdWTCC1x/H91aG3igiWS6OxFOTblAJ9t1v/PC6DvhFSjZ2GlbD6yzMHJrjN
         snfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV3J5xIE+DEcV455G1EI1i0v5lzfI5kBWrOsReGYQfNpzmQhcD0
	1k1N/3TvcNkeDBXcTMKJuz0=
X-Google-Smtp-Source: APXvYqwd5ESdkyrlvGZUj3b8meQqOmkvH/RA5LrmirDvuWoE6mfvN2mmm0Z9reG0O0+UIs3pkcK5Qg==
X-Received: by 2002:aa7:8e0e:: with SMTP id c14mr39418149pfr.95.1579213282835;
        Thu, 16 Jan 2020 14:21:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:cc:: with SMTP id e12ls7096559pfj.6.gmail; Thu, 16
 Jan 2020 14:21:22 -0800 (PST)
X-Received: by 2002:a65:63ce:: with SMTP id n14mr42722114pgv.282.1579213282317;
        Thu, 16 Jan 2020 14:21:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579213282; cv=none;
        d=google.com; s=arc-20160816;
        b=JI7QUaoIrroL5ApU5JeUx27+ezVR7xoqTVl8FoIPzjuHG+BGw9HMMYCxHUdeA0A4sW
         zKqhchXVMAf/QwC6AhHvwZu7Ct7n7lI6OTuf/z6YvItdXJr0I3DPGwbAPdvwKnQwgFfQ
         cdNHQMVg7Z7brz1DPJqnaHwn3TavgLUkAX9fRCmGlof5J6DsXp4bQMuU35PoOpm9ZLnL
         PuB5phF6RsaLTxay/v/SMncpyd2m3MZytQFp6e5O1j29YG1zSKrEG/hh9E84U1uFlsoO
         ER7sfEI/QMYd/Jy//EGk7PqARDaWkldYhkxP3JGvIbhzr2PgT0AXuYt10WTGJbCtFTgx
         rprQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vpbQOrapjlYcWs3bkrcm05Gp66rOZ9x8yOYklUO+LHY=;
        b=fkMO0xMxfbn+vaaYEc2tGdcbkCjlxbjmUm2gGsDc8BJyA+hYu5J/z8YDbkSXcU5H8u
         EzuU2ENi9gRZGiclHhuJ892IibMvwToL2hVeZq6aMxrn13TPFP5PX1pWfwXwRDJ9HUpv
         HXkRx//hE8bsYBjr8uCOTZ6dn0p6EPkvzPtuyzdzsX624oKvkI1RMGEVAUE26ZKxuHH+
         eDDKsgSpz51LoiIcCds0UsIc8hYLBWtq18gsaExr4jU7WMDMroHh7j6vulWiksooN7rs
         CIHl+3hNRc51ycJGwyZbTykZLr3VwzC3ImepG2isVJXP+o5BCOmeeJO+N1nPd4+hNEdy
         I5nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YrLfshsT;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id o9si1307695pfp.0.2020.01.16.14.21.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 14:21:22 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id c17so20811516qkg.7
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 14:21:22 -0800 (PST)
X-Received: by 2002:a05:620a:5ae:: with SMTP id q14mr31315590qkq.437.1579213281433;
 Thu, 16 Jan 2020 14:21:21 -0800 (PST)
MIME-Version: 1.0
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918093839.1357254.16574794899249700991.stgit@toke.dk>
In-Reply-To: <157918093839.1357254.16574794899249700991.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 16 Jan 2020 14:21:10 -0800
Message-ID: <CAEf4BzZep26Y50ER5x9FLsxu0_yW-sG5abxE2RZLBT-JhRnqbg@mail.gmail.com>
Subject: Re: [PATCH bpf-next v3 06/11] bpftool: Use consistent include paths
 for libbpf
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YrLfshsT;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Jan 16, 2020 at 5:23 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>
> Fix bpftool to include libbpf header files with the bpf/ prefix, to be
> consistent with external users of the library. Also ensure that all
> includes of exported libbpf header files (those that are exported on 'mak=
e
> install' of the library) use bracketed includes instead of quoted.
>
> To make sure no new files are introduced that doesn't include the bpf/
> prefix in its include, remove tools/lib/bpf from the include path entirel=
y,
> and use tools/lib instead.
>
> Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken f=
rom selftests dir")
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---

Acked-by: Andrii Nakryiko <andriin@fb.com>

[...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzZep26Y50ER5x9FLsxu0_yW-sG5abxE2RZLBT-JhRnqbg%40mai=
l.gmail.com.
