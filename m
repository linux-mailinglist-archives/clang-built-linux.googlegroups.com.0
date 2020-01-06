Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRB6ORZXYAKGQEPCBSTVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A00131671
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jan 2020 18:06:03 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id m8sf2562268uaq.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 09:06:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578330362; cv=pass;
        d=google.com; s=arc-20160816;
        b=MmGZTy4HM9/IlAgflngqyFuMv2vOiTRXA2kViv/N4CUulpqQi2w/f7GC+eRTSzu6Bs
         KaT/xERwvRrvpfDZXrjG//8LOA4EglBG0g58ghWa5EAewJKZntLwqfw0X6z7qaWR8N9w
         IrTWmMdIBvTOd/Ky5J45wRC3CXfBb3w0vjTsFnAyh1e7Tg2Uku9TKlfgPjLnyGf2I38P
         T2d+h6ziVbd2gYltId/SnDAEV99b0M9jtRZy05DaLateU0ROga113qcgtqnFPWbC3LQa
         6Fkm1DQ4Tc/MGBp+yrVygnr284h3Mvpz1GMHUjIOPgSFxIOPB4s0p19LkiF+DFp3fb4z
         neTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature;
        bh=iZqVRcqFF2DQhiyJAJsmXS5ZovHJp8TRW7iTb+Z2A7U=;
        b=JJBeLvnVPNjYNnxdl7qlhB9QnuE2CUtbcTJGAoN4necZgEdGEB1Vq6JFtw7wK8wSvR
         qSOqreE5Inyt/IZp1AieFV8yE+cTpxbBwXpuayvaxr3zIK5m0N7dNpCIyD+upmV46nG+
         ehRGv61dN/SCEL04wuaIwWkchziMfMF3cZovECi98EdepXImLOqpbjhuEZ/xACEcJJ3f
         sO1XAhbcPJkfX3K4BUUiz+6neyPx3tcUbNpJzwn3vsEACvTXR8UiXFGq0ZW4XG3Ylolz
         eYdC7e45YrCeR/F/1grhVfoj9BJZlzIp2eUPr1YrqEwsjcRilWwPI+YKOevlGAhx4o2s
         6JwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=Q5qXUAWv;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iZqVRcqFF2DQhiyJAJsmXS5ZovHJp8TRW7iTb+Z2A7U=;
        b=iZdDb9sHGe2LcOesahveD9b2i2L94bH088KaGRePoHbdR+NFcgtXGaQX7ATyULM/vh
         iVpNQkoeTeokl/fYySuCGHT/AD0+KeprnjzV2h6V3GPDEzVxP+65a2tYkjLlgPVjQQpp
         1g7SRecoXKIM7i7P9IxmsYz+VKTYVT8Sc5hXIzknzX5/rJFo347Uu29UNqnOyoIvDgF3
         ZGFZaKsnFC+9NRyGjYl7PMCI8H59cKVuWH6tnsxiogflbfgATu1H2dz3o34+E0zygMcc
         +WdYlDsKHIsDL0CrciC43KZbf/RC4gFCL0yKijRdzQPa96h/3rfFVv1cPOTdA/g9JuGy
         7lig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iZqVRcqFF2DQhiyJAJsmXS5ZovHJp8TRW7iTb+Z2A7U=;
        b=hQ7ZF52atPDucKoVRO55KDLYKjRtZ5aC3CetHsRmnng8MMjbmGBf7ziX8uKoBwxkaz
         5d52Tm5Cf45siKbtDl/o5Y6+1DZuGSs8HbpWJS3q/RfVxlR4HlB2E8MCxvcsKUJ2dCx8
         XoaBAFNfsJhEqD4n0KmILZ2Po23to9//3/QwSa4T8VbbLBWB98qDBggTt6UUtQncsg89
         bRma9BIZZPoTtl1Dq1zvcWYSPJU2DuEed/QWPD2zZyEZkCO7RZvTEyX8Q65kwPC3xxV8
         wQtRbgIMrLnMoty6loJi2gmHdCgEU20Jw/3AeAkm1180iNpVlEmrMlqFSqaHM25+tSan
         vqiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWdekUBYlbO9R4oOOIxiDpRWaX+1J9esoq7tdUA8WI0pj53lRnS
	yWZqHLiZz5AUr0mtnIVqYJ8=
X-Google-Smtp-Source: APXvYqw1amP8aGgqQxwdUlpTb1DN5FoxaKWowDvURWQl1iHkT2oZXFZwg4ys2NH1I2EYiZWczmdDLQ==
X-Received: by 2002:a67:fe50:: with SMTP id m16mr56836262vsr.114.1578330362134;
        Mon, 06 Jan 2020 09:06:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd78:: with SMTP id h24ls4131363vsa.0.gmail; Mon, 06 Jan
 2020 09:06:01 -0800 (PST)
X-Received: by 2002:a67:6282:: with SMTP id w124mr52699444vsb.191.1578330361706;
        Mon, 06 Jan 2020 09:06:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578330361; cv=none;
        d=google.com; s=arc-20160816;
        b=zH0uoy3jBJ/URDwO2UnC/84cgDTMSIlsXAwQPVcGuirREDmJcVi45OOD6OpDOuhGuw
         IcKcXoCfMLaOg4E3C+pDZE/NQH4N8t9LP7b3Ia1VGywupdIy9Bm0I06VVHhi4f4l2XwY
         3waaBAAZ6RhaMasB0w8RzAOM6eYm+bpW/sG0hlQJn7M26/N2Hu1mlPnU4yy4whmQ4zYQ
         Qd7F08/yq27DLL/B37I+Jjqanb2xTvWTF5G2VQBpo1GeeMSx0tHZ+yW1oiC3GP1YDqWR
         gX5FCClmPRt/DUotf0oqPrgCSAZd8Tzz0dwnwAYOA0Dpp1qzOShYUDejLmBzie2t9YJ3
         EbGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=EwZ+SLXyd+u2b7lSTZL/WS+X23E/iu51rmn5Dj8RxnU=;
        b=ICo2iD/zC/BoaBlZ9HXmAa2dWxcCxZiM59bIpLGKnUd3hVXfUg0TlECplGzGTbXkbp
         AlDETS+4ihcqWtBCRN/tDYF91iGLPgZOYHboH2L83EUJxqXxwTr6xrrUJVVzViEiWuF7
         rCrnqNE2gHSORDWCc055U+KG4vQhtqJU/p1HYjOK/TmTlDCxO7tF5k7L04h1k3AQeBjJ
         Lb21PbQ48Rc7HAG9g9lQ2e1zFSHXWzcjb7Xh0kuJO6znfXwNjPwSqcNLtt6tBeSIoZwa
         NwSfmhIY+NtrwVUP95v8gD9jLmWAvMBKbMnDMPC5qO5GDh/KkLV69OmHMIDhe0Djrb0t
         sWxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=Q5qXUAWv;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id w4si2511705vse.2.2020.01.06.09.06.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2020 09:06:01 -0800 (PST)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id r14so40008244qke.13
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jan 2020 09:06:01 -0800 (PST)
X-Received: by 2002:a05:620a:78f:: with SMTP id 15mr9230475qka.295.1578330361188;
        Mon, 06 Jan 2020 09:06:01 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id w25sm17147166qts.91.2020.01.06.09.06.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2020 09:06:00 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: "ftrace: Rework event_create_dir()" triggers boot error messages
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20191218233101.73044ce3@rorschach.local.home>
Date: Mon, 6 Jan 2020 12:05:58 -0500
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
Message-Id: <3F343134-63CB-4D99-97AD-F512B8760C94@lca.pw>
References: <0FA8C6E3-D9F5-416D-A1B0-5E4CD583A101@lca.pw>
 <20191218233101.73044ce3@rorschach.local.home>
To: Steven Rostedt <rostedt@goodmis.org>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=Q5qXUAWv;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as
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

Steve, those errors are still there in today=E2=80=99s linux-next. Is this =
patch on the way to the linux-next?

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3F343134-63CB-4D99-97AD-F512B8760C94%40lca.pw.
