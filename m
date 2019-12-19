Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBZHK5PXQKGQE3BSX6YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2E4125A2D
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 04:58:29 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id p5sf2274013otr.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 19:58:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576727908; cv=pass;
        d=google.com; s=arc-20160816;
        b=ea9ocz9Kp5arpS6MMCaCVbUmFtfZ58mVuAmqcFlRXgvDQpjZ/w0k60ZIGBfAeXTkp9
         ao97/pp5yRoBJZNhB1V7pgrR7SVdtr5XVPnpDBDHRBzWth/02/6tTY4IkkQmw+cogbGy
         X+6oVfr1CmZDzKCw2UvaSBT161CMQ82H0MnGID42OnW5WI/su8Zi2RxTZTwmfZbefGwK
         K8Ctkr0hKIqMvtoV7nmswktDe7W6rJlU09F9/+4dGCk4v+rxIaWXx+qFik+TQv+wM4cq
         VL1HZtzcupLgHSBqbopixMenF7Gd1gX5nH45BbZYWsrYZok6JzuSL6OzHwo0AYNrKqHv
         jHZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:cc:date:message-id:subject
         :mime-version:content-transfer-encoding:from:sender:dkim-signature;
        bh=56cvxyjK94GK05mD5rhDbLYlVsoc4ecRbSz0VPw5wwo=;
        b=fz83V5lBFooph4OFLOUI16kLYkzZPcwsA6KtPfQTL9IHFON8oyYHJVLQTDW/ipWqJl
         opS3pm4tcQgx1vZJyfgvcA9RhdkamjwdL9hYHXOMP2k6tdkNErLS135ihtIwFmmgFNlg
         dBxcKLE24a/6ULxLQ+vRA4k5MLAQDLpsWBbY5RR1eFhhPOmH9OKf5Qc5iXL2JIZPb0Xs
         iNltRuFCohXoXnJVxlKEAeKpJ3/ikVXzTwipcM9lcqZ4uSQIhdqpmia95RrahOH1fhVI
         bqwGIK8w4yC+MRZPxQg/QUtYPRJHjFmigJdQiEREPRQ1gkjJV1R85I3LaymtjaoRUM6f
         vmkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=JSxWh4JN;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:content-transfer-encoding:mime-version:subject
         :message-id:date:cc:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=56cvxyjK94GK05mD5rhDbLYlVsoc4ecRbSz0VPw5wwo=;
        b=Of98bZTSC9uRgwyhWTshyxfpLdQXbF7vDLZCFpk2r8SCnNE9MaaPC5Tad37V3ZLbqA
         Xm2U+cSXyJMnt40APqU3qpEXP/dO0sozEKf9ainRzpzOZhH78lD5pmoal3ELoT9pl/E+
         q2u+KAJiufAqUAc0k1NSWyfYj4UeFuOFXZcWfKhGpycGlEUAt3z6MYP6ortrvoYw67hE
         wYy5PAlyB+YGgcgAhPjLTkDLQVh7DNvD33jwRhnJRtD0qLEBR0u7UP4SBDohKBrRpIn8
         JLlDmVHOWUoozdVyszkcRtZwtXRW3wQ5Dd2Rnzy7tRgU96UtTH+N1siyP15CxqUYD837
         Pl7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:content-transfer-encoding
         :mime-version:subject:message-id:date:cc:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=56cvxyjK94GK05mD5rhDbLYlVsoc4ecRbSz0VPw5wwo=;
        b=cICd6wUwYeTf+Y4g13DEXbtxb2jNEBZRjdSUOqwRoaaa+jK1QaVSMU18iy8qkVIH4h
         KMdILODC8l+sLG3LW8SfLCLBIyLCPWvBaGkyCh005CMzAHejQfWYdxwnOPDi1512Dppd
         9+vrVtDPuCKw4G5xnr44Kuc9XcZyhIBK0nwvwXFQhiir4rB8BY4E2vyYTDuYwhephusA
         T2h/xv7n2GLld2q7W8seTPtOsDuHVsIxgOWQi7iFGUG24ne9ElYvqU884qg+KSRbejY9
         zNr5lLgaaEa/ri6vbgltBE9fqKwE1jOb+EtvyZ3QAPORDhpyoKWvvrJuDHzzU9oDO3A3
         DWfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVpQx5zcmKjIFPz1tJk3yDk+3AypwztTk9HRD30PSKTZKKDl3ow
	ccF7OBacxoH+1Jymofvg1S4=
X-Google-Smtp-Source: APXvYqxdaqlQ5wyWQlJS44sdt4BE1gnHChmh9wzDZM4G0aji6T7neHpVUOHtVySMMAlRThV7u72MVQ==
X-Received: by 2002:a05:6830:1d4c:: with SMTP id p12mr6767166oth.198.1576727908611;
        Wed, 18 Dec 2019 19:58:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3e11:: with SMTP id a17ls1291799otd.12.gmail; Wed, 18
 Dec 2019 19:58:26 -0800 (PST)
X-Received: by 2002:a05:6830:1353:: with SMTP id r19mr6597383otq.288.1576727906183;
        Wed, 18 Dec 2019 19:58:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576727906; cv=none;
        d=google.com; s=arc-20160816;
        b=Ns55bLlOorGSefahxEYMTSV0bQkL/pPJtkGmRwQy3is4gKyEQ1WdstiS4dFyjD942Q
         fDKtCErXiHytQXKe/nbAjrdfGlIfRPLhPVOD6HyDVEqmlH79LIfkL0h/oFygQSX9ZLr/
         uGfOcZmN5YKDbepTvgYcQmU3Znb0R8dVp5i17/pbHPPjXpRJJU+KrxMOyBXmp+BSH4LL
         +KHT6qg5Z2cINYZ1WhjKYdeO/uwkUuHLglpSyZCHQ/cH7yxle/W81p8PbGRFDGFeodWw
         OXtweyRO/iqVudbFvO+zpsd45pSStGIE0UpUkhfieW0RjQSHQpB3FiKUoV9qo+d6R0A7
         QhBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:cc:date:message-id:subject:mime-version
         :content-transfer-encoding:from:dkim-signature;
        bh=k4eq1tsjI4N+dCmP20F1GO1zoclUAiI9XzZa4bk41AM=;
        b=cev3i+R8plwG2v0XyOYJKdlI4d0CrjN6Kep0nRpEaLjYQdeaHEo/o0KfxETIg9Eicb
         tbRRJ5QXOkb929motzqkVs2M94gOFqbEPkIcd6twwsCVi+z+DYps06gNTEU+DixA21sI
         KsyDZ3S6clG9fba9WpU5hxqlaRuiOboDZUCqpzYlUKgUk7wdfcJm0FqVZ8h79Glj7fbr
         OaQFGsPvdTjkg+iuJ6BKYOiITsStPym0ETEgsOeSOWFQNj14PsEcoJ1yIBAiMdL0oUcQ
         /Hvccfw6oCXMTDtsnR/wwFo09MLRXdtWEcGrdzpaw244p/s7/JR8iEpWpHPTQmcKieqw
         j3Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=JSxWh4JN;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com. [2607:f8b0:4864:20::82b])
        by gmr-mx.google.com with ESMTPS id p189si147852oig.3.2019.12.18.19.58.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Dec 2019 19:58:26 -0800 (PST)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::82b as permitted sender) client-ip=2607:f8b0:4864:20::82b;
Received: by mail-qt1-x82b.google.com with SMTP id e6so3900239qtq.7
        for <clang-built-linux@googlegroups.com>; Wed, 18 Dec 2019 19:58:26 -0800 (PST)
X-Received: by 2002:aed:3e12:: with SMTP id l18mr5140425qtf.91.1576727905487;
        Wed, 18 Dec 2019 19:58:25 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id j194sm1367615qke.83.2019.12.18.19.58.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Dec 2019 19:58:24 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: "ftrace: Rework event_create_dir()" triggers boot error messages
Message-Id: <0FA8C6E3-D9F5-416D-A1B0-5E4CD583A101@lca.pw>
Date: Wed, 18 Dec 2019 22:58:23 -0500
Cc: clang-built-linux@googlegroups.com,
 "Steven Rostedt (VMware)" <rostedt@goodmis.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Ingo Molnar <mingo@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
To: Peter Zijlstra <peterz@infradead.org>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=JSxWh4JN;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::82b as
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

The linux-next commit "ftrace: Rework event_create_dir()=E2=80=9D [1] trigg=
ers boot warnings
for Clang-build (Clang version 8.0.1) kernels (reproduced on both arm64 and=
 powerpc).
Reverted it (with trivial conflict fixes) on the top of today=E2=80=99s lin=
ux-next fixed the issue.

configs:
https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config
https://raw.githubusercontent.com/cailca/linux-mm/master/powerpc.config

[1] https://lore.kernel.org/lkml/20191111132458.342979914@infradead.org/

[  115.799327][    T1] Registered efivars operations
[  115.849770][    T1] clocksource: Switched to clocksource arch_sys_counte=
r
[  115.901145][    T1] Could not initialize trace point events/sys_enter_rt=
_sigreturn
[  115.908854][    T1] Could not create directory for event sys_enter_rt_si=
greturn
[  115.998949][    T1] Could not initialize trace point events/sys_enter_re=
start_syscall
[  116.006802][    T1] Could not create directory for event sys_enter_resta=
rt_syscall
[  116.062702][    T1] Could not initialize trace point events/sys_enter_ge=
tpid
[  116.069828][    T1] Could not create directory for event sys_enter_getpi=
d
[  116.078058][    T1] Could not initialize trace point events/sys_enter_ge=
ttid
[  116.085181][    T1] Could not create directory for event sys_enter_getti=
d
[  116.093405][    T1] Could not initialize trace point events/sys_enter_ge=
tppid
[  116.100612][    T1] Could not create directory for event sys_enter_getpp=
id
[  116.108989][    T1] Could not initialize trace point events/sys_enter_ge=
tuid
[  116.116058][    T1] Could not create directory for event sys_enter_getui=
d
[  116.124250][    T1] Could not initialize trace point events/sys_enter_ge=
teuid
[  116.131457][    T1] Could not create directory for event sys_enter_geteu=
id
[  116.139840][    T1] Could not initialize trace point events/sys_enter_ge=
tgid
[  116.146908][    T1] Could not create directory for event sys_enter_getgi=
d
[  116.155163][    T1] Could not initialize trace point events/sys_enter_ge=
tegid
[  116.162370][    T1] Could not create directory for event sys_enter_geteg=
id
[  116.178015][    T1] Could not initialize trace point events/sys_enter_se=
tsid
[  116.185138][    T1] Could not create directory for event sys_enter_setsi=
d
[  116.269307][    T1] Could not initialize trace point events/sys_enter_sc=
hed_yield
[  116.276811][    T1] Could not create directory for event sys_enter_sched=
_yield
[  116.527652][    T1] Could not initialize trace point events/sys_enter_mu=
nlockall
[  116.535126][    T1] Could not create directory for event sys_enter_munlo=
ckall
[  116.622096][    T1] Could not initialize trace point events/sys_enter_vh=
angup
[  116.629307][    T1] Could not create directory for event sys_enter_vhang=
up
[  116.783867][    T1] Could not initialize trace point events/sys_enter_sy=
nc
[  116.790819][    T1] Could not create directory for event sys_enter_sync
[  117.723402][    T1] pnp: PnP ACPI init
[  117.736379][    T1] system 00:00: [mem 0x30000000-0x3fffffff window] cou=
ld not be reserved
[  126.020353][    T1] pnp: PnP ACPI: found 1 devices
[  126.093919][    T1] NET: Registered protocol family 2
[  126.180007][    T1] tcp_listen_portaddr_hash hash table entries: 65536 (=
order: 6, 4718592 bytes, vmalloc)
[  126.206510][    T1] TCP established hash table entries: 524288 (order: 6=
, 4194304 bytes, vmalloc)
[  126.227766][    T1] TCP bind hash table entries: 65536 (order: 6, 419430=
4 bytes, vmalloc)
[  126.240146][    T1] TCP: Hash tables configured (established 524288 bind=
 65536)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0FA8C6E3-D9F5-416D-A1B0-5E4CD583A101%40lca.pw.
