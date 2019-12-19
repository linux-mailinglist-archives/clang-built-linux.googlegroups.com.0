Return-Path: <clang-built-linux+bncBCU73AEHRQBBBC725PXQKGQELIOZIJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D8C125A4E
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 05:31:08 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id q187sf3058851ywg.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 20:31:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576729867; cv=pass;
        d=google.com; s=arc-20160816;
        b=h7AtQ7KvQrOywuJdq+mbaUkbgV2GKxtuEHKPyanfD7N3zHW0MBY2+Pldrff6569qWE
         KD5hC3BkAOJl+tT0jXs/Z4LyG4CcuEJFtAPK7mAyHPVIV0PuVJPgB0TRZY5wiUggMxH0
         W8vAUQQdQKSZuD24BwgGCOczlu8LaoxKJv4hzV85QKoiLEVRP6s0/kZyS88bX3ZNe/oh
         7miOUdXVmSsb0wGtWKaJ28wB5iPSct8CUPkhCz+qBVtPVetaHCUziOcfaFztNxufEuSa
         tLNi8KvJ56NyvDOJ3wBkQxIPSWHtp/m1OTW+r/UJXfsTH+Nn0TOZoDEWJoTvgf+yA621
         VIMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=N42e2jAsehKFAJ9HylkKjw0luBOGUAZgfEoMJh2+eP8=;
        b=whcGzTfHauxLIzSyC6SSGe69+v7/n9E20e4pG5CnSippsBvS5NVwWYjx+I0fl02J13
         /eu0rbMlchsRVYI7HzAcJrArZ/kbsZuFwZNYgcskTnvog2kFe7MWfcBCDQjm0TWB9RJo
         SGwDd0YUgwgR7heSRqWVWP2n+uE8Jqa/of5X3F7ds+3/Ol5U8nfkWFIOcnuG5apOajkr
         307PE5hpx3bhd1XoQrTPSD+KFTkvnQPRAtOLY+6Ix+m8WoQuvxLw4vXj/3A02m0kYWgh
         /XF47MMqVA1ixmVAXT1cGDDYlXABaWyv4S3EIGzG+2w7vNSl2bw+wflDywGGv5QtL4kl
         /jhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=vz7s=2j=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Vz7S=2J=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N42e2jAsehKFAJ9HylkKjw0luBOGUAZgfEoMJh2+eP8=;
        b=IHF5x6DmQS6aePdS2FYW5TpFI/Ooar4I1yx/i25NQZdol+Pv8o9J3VA6xKSqdjAaPY
         dV++jUMIRhP+WebETHt5wmiP2EVwqwN2X/n1yKbuMLGNoydcpnhqgpGNcjFjjDbvj1NP
         UptBifbxjhIb3hUAireoxx2oMmBZCfOyRBx3nH04oAug+5mRcj6AKGKdOm6KdAVKZZi3
         bt0OWxCk6bgRNQpRDCxn7irbGPbR8xqrVkr6wHVEwu0p2QCCsPl1snxa3Y9kjYRlkAWR
         UzEOUY6A2JzWSSJOGSEgGkFox/I3nm7cAc141h51KNBcY64Ki6z1Up5GismA5HP2KBho
         XjhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N42e2jAsehKFAJ9HylkKjw0luBOGUAZgfEoMJh2+eP8=;
        b=C6r+ScttnNNAKTLI+s9dvF4dvq99/pbh+vHB0mYwsj0MDdKHN9xDnH1G5L8jRWdK2W
         1eRiB7v5qnm7mT48kPsawg6mmKkAi32wC9KBOTGDAHEzEL12IG3RbZpxEYlAk6JFBYdm
         LYnJz6n3W4bgncDf52hXyHMoPLj9rKOuaHdbIzI7N7wOelTb9hKFo9+qOhg/wJoffEIr
         ix2drmwnfZTMKQVIAKGU4VnNIeJ01cT36T7GzV3BaTDtPHm/utXq051fQWItnQAtEk2o
         sbzs6RDA9AMbZ0I7EObK/I6a6xZqAGcmApdS2QjLSeTd+R9fgjtqkPOEeEMAR+TeAs4h
         qPeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUcdLIq1kNnGgoETPjAqQlLHACN5F12kUUBJdjSNhkQmNDEdoMw
	wM2XywcmsjcnSEhNhlvDmE4=
X-Google-Smtp-Source: APXvYqzjmutjwjEHhJS6Lt8rY1gPEq5MgjmRz3GegdmIyJUcaeYLh+x8VzxOIC+qKoP9i49HKGlx0w==
X-Received: by 2002:a25:5983:: with SMTP id n125mr4817257ybb.353.1576729867718;
        Wed, 18 Dec 2019 20:31:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5d09:: with SMTP id r9ls678663ybb.2.gmail; Wed, 18 Dec
 2019 20:31:07 -0800 (PST)
X-Received: by 2002:a25:7393:: with SMTP id o141mr4647705ybc.39.1576729867334;
        Wed, 18 Dec 2019 20:31:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576729867; cv=none;
        d=google.com; s=arc-20160816;
        b=Wr99phxl1zQ22kA38Rz2n7YErW7PG29vDnVJJ7Q41iH7bSYD5WvDXg/qt0xGh02UgQ
         fUL6M/tAkMAvSEamhXmuhzchzb+b5Lhvqqdy5LEXOaj1d0af0X45kgEVcNNPGEaNR6UT
         d3jheiO9iIn74adxLeqrq+pY0AmFRL7H7g+40NXHjEd3/w/9jsmrjO/QmdHH8/3siGzM
         oo29rDZUSMUeMFcDXYPmvJT/lNdyDQclUjkcwkLBIIxWWwrjGkA50vVsCuJ5+eGC/fMX
         VSs6FuBEbXwUDvVVXA8pdbt+d0iL7HV7s5gSHp6+9xZ6N3R2zdrzVdT4jbjlZkVV7KFv
         e6gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=nZRViP1u6F6v2CxJ69ZGdmggIzAbOT5n/zAnEtiDUa8=;
        b=ZN2fd5yMO9+9pnRF3eOsFvtLYhnoTIOuRiR0MYpIw2EjpOaFiJbSJ7YJ8uEf/dPhet
         1b6HDdTEXzXfp6K5TW4whc/2JCnzqpk3dmpb1KvKaDlcaI/Kyq2dhzY/bEbgPUxWLITw
         c/v2CTx8Kup4wUqpIiKLBSVW2k0sAcotVNds6t4wykRNaZjcKtLnrNrXAeSzN05GL6xx
         akQ9296VaE3hEGWjgNfPOIjUNgyQPMpoMXteBaIbHbi9Jz8HKpVwrKbGW58L5jfofyak
         KYxe1aNcputYl0sCWX0b0K5ID00/pn327QYkKWvgSFODpHP+uXDqCU48yjuR3QjUMF6s
         TOCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=vz7s=2j=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Vz7S=2J=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f8si219657ybg.2.2019.12.18.20.31.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Dec 2019 20:31:07 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=vz7s=2j=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from rorschach.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8A11B2082E;
	Thu, 19 Dec 2019 04:31:04 +0000 (UTC)
Date: Wed, 18 Dec 2019 23:31:01 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Qian Cai <cai@lca.pw>
Cc: Peter Zijlstra <peterz@infradead.org>,
 clang-built-linux@googlegroups.com, Alexei Starovoitov <ast@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: "ftrace: Rework event_create_dir()" triggers boot error
 messages
Message-ID: <20191218233101.73044ce3@rorschach.local.home>
In-Reply-To: <0FA8C6E3-D9F5-416D-A1B0-5E4CD583A101@lca.pw>
References: <0FA8C6E3-D9F5-416D-A1B0-5E4CD583A101@lca.pw>
X-Mailer: Claws Mail 3.17.4git76 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=vz7s=2j=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Vz7S=2J=goodmis.org=rostedt@kernel.org"
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

On Wed, 18 Dec 2019 22:58:23 -0500
Qian Cai <cai@lca.pw> wrote:

> The linux-next commit "ftrace: Rework event_create_dir()=E2=80=9D [1] tri=
ggers boot warnings
> for Clang-build (Clang version 8.0.1) kernels (reproduced on both arm64 a=
nd powerpc).
> Reverted it (with trivial conflict fixes) on the top of today=E2=80=99s l=
inux-next fixed the issue.
>=20
> configs:
> https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config
> https://raw.githubusercontent.com/cailca/linux-mm/master/powerpc.config
>=20
> [1] https://lore.kernel.org/lkml/20191111132458.342979914@infradead.org/
>=20
> [  115.799327][    T1] Registered efivars operations
> [  115.849770][    T1] clocksource: Switched to clocksource arch_sys_coun=
ter
> [  115.901145][    T1] Could not initialize trace point events/sys_enter_=
rt_sigreturn
> [  115.908854][    T1] Could not create directory for event sys_enter_rt_=
sigreturn
> [  115.998949][    T1] Could not initialize trace point events/sys_enter_=
restart_syscall
> [  116.006802][    T1] Could not create directory for event sys_enter_res=
tart_syscall
> [  116.062702][    T1] Could not initialize trace point events/sys_enter_=
getpid
> [  116.069828][    T1] Could not create directory for event sys_enter_get=
pid
> [  116.078058][    T1] Could not initialize trace point events/sys_enter_=
gettid
> [  116.085181][    T1] Could not create directory for event sys_enter_get=
tid
> [  116.093405][    T1] Could not initialize trace point events/sys_enter_=
getppid
> [  116.100612][    T1] Could not create directory for event sys_enter_get=
ppid
> [  116.108989][    T1] Could not initialize trace point events/sys_enter_=
getuid
> [  116.116058][    T1] Could not create directory for event sys_enter_get=
uid
> [  116.124250][    T1] Could not initialize trace point events/sys_enter_=
geteuid
> [  116.131457][    T1] Could not create directory for event sys_enter_get=
euid
> [  116.139840][    T1] Could not initialize trace point events/sys_enter_=
getgid
> [  116.146908][    T1] Could not create directory for event sys_enter_get=
gid
> [  116.155163][    T1] Could not initialize trace point events/sys_enter_=
getegid
> [  116.162370][    T1] Could not create directory for event sys_enter_get=
egid
> [  116.178015][    T1] Could not initialize trace point events/sys_enter_=
setsid
> [  116.185138][    T1] Could not create directory for event sys_enter_set=
sid
> [  116.269307][    T1] Could not initialize trace point events/sys_enter_=
sched_yield
> [  116.276811][    T1] Could not create directory for event sys_enter_sch=
ed_yield
> [  116.527652][    T1] Could not initialize trace point events/sys_enter_=
munlockall
> [  116.535126][    T1] Could not create directory for event sys_enter_mun=
lockall
> [  116.622096][    T1] Could not initialize trace point events/sys_enter_=
vhangup
> [  116.629307][    T1] Could not create directory for event sys_enter_vha=
ngup
> [  116.783867][    T1] Could not initialize trace point events/sys_enter_=
sync
> [  116.790819][    T1] Could not create directory for event sys_enter_syn=
c
> [  117.723402][    T1] pnp: PnP ACPI init

I noticed that all of the above have zero parameters. Does the
following patch fix it?

(note, I prefer "ret" and "i" on different lines anyway)

-- Steve

diff --git a/kernel/trace/trace_syscalls.c b/kernel/trace/trace_syscalls.c
index 53935259f701..abb70c71fe60 100644
--- a/kernel/trace/trace_syscalls.c
+++ b/kernel/trace/trace_syscalls.c
@@ -269,7 +269,8 @@ static int __init syscall_enter_define_fields(struct tr=
ace_event_call *call)
 	struct syscall_trace_enter trace;
 	struct syscall_metadata *meta =3D call->data;
 	int offset =3D offsetof(typeof(trace), args);
-	int ret, i;
+	int ret =3D 0;
+	int i;
=20
 	for (i =3D 0; i < meta->nb_args; i++) {
 		ret =3D trace_define_field(call, meta->types[i],

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191218233101.73044ce3%40rorschach.local.home.
