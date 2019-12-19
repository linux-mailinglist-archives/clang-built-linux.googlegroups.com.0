Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBTFG5TXQKGQEWOPEBOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id D2723125B35
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 07:06:05 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id 63sf3276807ybz.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 22:06:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576735564; cv=pass;
        d=google.com; s=arc-20160816;
        b=i/ywczMDILkAq9QK0HfNgmeTpNd4bq9yu9SipdqmC2A4O3R93nSd0wbIjChbTgQaXi
         tVb58O7xnm2y1LwWOPoxyifTu5hqm1CtJJq4gAhhSG2Y4x0echNgXVjExSJMzUfNkeEp
         8F27QqZXZFG75edyC+yPj0yyGBNxD2+aUVTPwP+kiOWI65FXevfAPpaIMmN2SZxyCVgg
         hsQb3BhPPW9RAoNCn3wk1OaiRwF9Djtn5wdiN5XXPOTSzNrhjvQ855FT9tzdmFSsPdYS
         3UmZG2/6vm1RxUYHxomMBKvDmpLGeM2Sf+6FQB0JjiC965dVZghzsf4AeT6yk5H6f1sM
         cRkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature;
        bh=WfCI8UG0x8VU24xpDjI8kcEtcHAKkufGSoyIO6FkvOw=;
        b=tnaCsyg9sF4O8QhNVIV6H+cTemrsSzY0JURuuz+WTdrF5kk9cmqjLcfIjkUJGXOAL+
         LqlM3ZPFmJjyYfOXoC2Q6wwXYD6mLQkt9Scbt/oQGiOxhcv1qIrnC5FOvqDa/ZFB4g6p
         1lq43xiSevtC7G5CEvMWw3fJI+LoPXeX+EA1IEwZiHGqAUNiasEEp6KaPJvngagezoLe
         C1lWVI/GjNr4msZhXvPhk27wJvxhX/9mB7qaMCHpLeZBovEWV/5dZVingJm25xUq6P8r
         /eeLwbEk5yKY3kUI8XQ70/HGMAJljmMaZFUdRSEwAXSq3oNnxND+nNWZFC77JclQ57bp
         zZ8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=R53bfuj7;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WfCI8UG0x8VU24xpDjI8kcEtcHAKkufGSoyIO6FkvOw=;
        b=nRK3c0kM77kp7jsB0USR/KYC57NVkifhXlEcmk2agsYEPYepP1m+X4ANak0GwuVxwZ
         m7r4oT3uzd7Cr+zA2ObfFS3hX9+Y3E8OVti2zwToLbuwBWDb9HpJV4fCFcAxDIyw1Bxg
         DCzx0COCGlvox77edJYd2xrZBg79fFnfmFRvfBnerVzAG3KvZyDbQrhCjEsgfLcC50D0
         GR0NEaoUjoGyMgkBxAeD47It+ujNWrt0tQiPS/1m7KdRDuUOcw0ikREzSj9ckOzahU2l
         faK7OFGAynNosQuIINNWcNzYbdFH4nyUD4LVkTgIB3zx1L3FtzWkhDZlNzWepNlsARbA
         8rjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WfCI8UG0x8VU24xpDjI8kcEtcHAKkufGSoyIO6FkvOw=;
        b=ebF1AYbKvZpODT+BH1FVRgsEL6SX2sHrVsZtY7mAQ4dzQIA3FDwWj9ZAe5WzeceZeg
         uGm20qSTdQ9Nvn+qzwrfddItcg5sQ6TFa+d6/xozYvnwB/quH6dC9VqwCyJq4tvXAFpl
         bpuyQi9PYFTL7ghBbBl5CUx9DmdNdx5OohAUIVNYr1p1u2kjlFuCqrdgCCHe/9UBqKes
         78t/PMkcBeS6zmF7D1Iw68aHnpE6C5xt+kHczphSvJGYvLVSacHHa6EhPwYeh818jCp3
         LJq4Sv7RQjeNdwmAp+A3Os1wr/JgtvJDYxlJ3Cs3ArJ+ltzUrbwsh43vGDIGBPncBizE
         D+Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVy7vF4W2iiIeXun8WCYkBMXWRZwVm4+gSvWiiS683t/NojMz0j
	YYZVSiNM/UaLegfHXSD2Scc=
X-Google-Smtp-Source: APXvYqzabCYl5YXLmYxWyfaMk0i1nO7RdJy4dWV4dSJ/mTKnoGyl5T1ItWX9FDeI0r+zn4+lWlSyHg==
X-Received: by 2002:a25:4188:: with SMTP id o130mr5062806yba.150.1576735564623;
        Wed, 18 Dec 2019 22:06:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8644:: with SMTP id w65ls666713ywf.3.gmail; Wed, 18 Dec
 2019 22:06:04 -0800 (PST)
X-Received: by 2002:a81:980a:: with SMTP id p10mr5119563ywg.132.1576735564190;
        Wed, 18 Dec 2019 22:06:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576735564; cv=none;
        d=google.com; s=arc-20160816;
        b=Y+yiBn4kZLDOVYFRs32N3+/2CCvuoz7NPGNHqqEnvBTYpvXjeEOzut4G6Roxdc3cDA
         uQX0iYjhEU5xVPIUNTcaf1XBkO9NBg2/li2Dv+n3xc0/WopJuAm1l0YQP9jhrT+2ajHZ
         2cQzEeknPUQzl4gnCm3tcEJdpkl7zuRwKVV180lo6CHrmFzhdUtOO9v0Tz8rePO9KSaM
         foLQ2kCdk7Bh1GiiFsEgUWghYiRSpNXAWbZTQpI8P/PwJSJdEyVnGRYNKPxnRWKoX1Ax
         GCFytqUZ613dKueJGWIXU4tr39Q2fZmefbP7B0yTRHHYxWFCYc/WXyMa6g+aC3Vvpxkp
         d6Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=hh8KccvDtoxQ5iuVrGchqXmublC0voHoq882to+xc8w=;
        b=0NRoRNqRYkn4AYHmBvadG21xyUc1KSTGCJh4ewdz6iEKYZU9x3vSW7NjIJEG0WahfI
         QzuCC4DEmd2NaqNL3S5YxpHjCa/WHGcgM6AdyTq/lJYd+4eTRtzpjlEurfrgksSRPdtL
         p+JXKtblH8RuxcOMKCHrlJvCXAZLG7IOqkG/D/YGuy9EufdHm56FSlefCCvOqFwo6bR4
         K6SBr2no3KMWzUtNxXywU1oK6WqZLc1GJHYir1ScTfUtWoTq8Vp0eiQaSapZ7hRVhBAL
         kBe7LLgPIPQW68sNHgHokvpvRrbTsrKlFiPYmXCWtq2orF5SpKD0P3edbjE8yaxP209I
         iMiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=R53bfuj7;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id z5si253099ywg.5.2019.12.18.22.06.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Dec 2019 22:06:04 -0800 (PST)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id d71so4107314qkc.0
        for <clang-built-linux@googlegroups.com>; Wed, 18 Dec 2019 22:06:04 -0800 (PST)
X-Received: by 2002:a37:7c6:: with SMTP id 189mr6850205qkh.408.1576735563755;
        Wed, 18 Dec 2019 22:06:03 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id 4sm1453127qki.51.2019.12.18.22.06.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Dec 2019 22:06:03 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: "ftrace: Rework event_create_dir()" triggers boot error messages
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20191218233101.73044ce3@rorschach.local.home>
Date: Thu, 19 Dec 2019 01:06:02 -0500
Cc: Peter Zijlstra <peterz@infradead.org>,
 clang-built-linux@googlegroups.com,
 Alexei Starovoitov <ast@kernel.org>,
 Ingo Molnar <mingo@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <7CC42C4D-8DD3-48E5-BB68-752BAB98DB56@lca.pw>
References: <0FA8C6E3-D9F5-416D-A1B0-5E4CD583A101@lca.pw>
 <20191218233101.73044ce3@rorschach.local.home>
To: Steven Rostedt <rostedt@goodmis.org>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=R53bfuj7;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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



> On Dec 18, 2019, at 11:31 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
>=20
> On Wed, 18 Dec 2019 22:58:23 -0500
> Qian Cai <cai@lca.pw> wrote:
>=20
>> The linux-next commit "ftrace: Rework event_create_dir()=E2=80=9D [1] tr=
iggers boot warnings
>> for Clang-build (Clang version 8.0.1) kernels (reproduced on both arm64 =
and powerpc).
>> Reverted it (with trivial conflict fixes) on the top of today=E2=80=99s =
linux-next fixed the issue.
>>=20
>> configs:
>> https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config
>> https://raw.githubusercontent.com/cailca/linux-mm/master/powerpc.config
>>=20
>> [1] https://lore.kernel.org/lkml/20191111132458.342979914@infradead.org/
>>=20
>> [  115.799327][    T1] Registered efivars operations
>> [  115.849770][    T1] clocksource: Switched to clocksource arch_sys_cou=
nter
>> [  115.901145][    T1] Could not initialize trace point events/sys_enter=
_rt_sigreturn
>> [  115.908854][    T1] Could not create directory for event sys_enter_rt=
_sigreturn
>> [  115.998949][    T1] Could not initialize trace point events/sys_enter=
_restart_syscall
>> [  116.006802][    T1] Could not create directory for event sys_enter_re=
start_syscall
>> [  116.062702][    T1] Could not initialize trace point events/sys_enter=
_getpid
>> [  116.069828][    T1] Could not create directory for event sys_enter_ge=
tpid
>> [  116.078058][    T1] Could not initialize trace point events/sys_enter=
_gettid
>> [  116.085181][    T1] Could not create directory for event sys_enter_ge=
ttid
>> [  116.093405][    T1] Could not initialize trace point events/sys_enter=
_getppid
>> [  116.100612][    T1] Could not create directory for event sys_enter_ge=
tppid
>> [  116.108989][    T1] Could not initialize trace point events/sys_enter=
_getuid
>> [  116.116058][    T1] Could not create directory for event sys_enter_ge=
tuid
>> [  116.124250][    T1] Could not initialize trace point events/sys_enter=
_geteuid
>> [  116.131457][    T1] Could not create directory for event sys_enter_ge=
teuid
>> [  116.139840][    T1] Could not initialize trace point events/sys_enter=
_getgid
>> [  116.146908][    T1] Could not create directory for event sys_enter_ge=
tgid
>> [  116.155163][    T1] Could not initialize trace point events/sys_enter=
_getegid
>> [  116.162370][    T1] Could not create directory for event sys_enter_ge=
tegid
>> [  116.178015][    T1] Could not initialize trace point events/sys_enter=
_setsid
>> [  116.185138][    T1] Could not create directory for event sys_enter_se=
tsid
>> [  116.269307][    T1] Could not initialize trace point events/sys_enter=
_sched_yield
>> [  116.276811][    T1] Could not create directory for event sys_enter_sc=
hed_yield
>> [  116.527652][    T1] Could not initialize trace point events/sys_enter=
_munlockall
>> [  116.535126][    T1] Could not create directory for event sys_enter_mu=
nlockall
>> [  116.622096][    T1] Could not initialize trace point events/sys_enter=
_vhangup
>> [  116.629307][    T1] Could not create directory for event sys_enter_vh=
angup
>> [  116.783867][    T1] Could not initialize trace point events/sys_enter=
_sync
>> [  116.790819][    T1] Could not create directory for event sys_enter_sy=
nc
>> [  117.723402][    T1] pnp: PnP ACPI init
>=20
> I noticed that all of the above have zero parameters. Does the
> following patch fix it?

Yes, it works.

>=20
> (note, I prefer "ret" and "i" on different lines anyway)
>=20
> -- Steve
>=20
> diff --git a/kernel/trace/trace_syscalls.c b/kernel/trace/trace_syscalls.=
c
> index 53935259f701..abb70c71fe60 100644
> --- a/kernel/trace/trace_syscalls.c
> +++ b/kernel/trace/trace_syscalls.c
> @@ -269,7 +269,8 @@ static int __init syscall_enter_define_fields(struct =
trace_event_call *call)
> 	struct syscall_trace_enter trace;
> 	struct syscall_metadata *meta =3D call->data;
> 	int offset =3D offsetof(typeof(trace), args);
> -	int ret, i;
> +	int ret =3D 0;
> +	int i;
>=20
> 	for (i =3D 0; i < meta->nb_args; i++) {
> 		ret =3D trace_define_field(call, meta->types[i],

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/7CC42C4D-8DD3-48E5-BB68-752BAB98DB56%40lca.pw.
