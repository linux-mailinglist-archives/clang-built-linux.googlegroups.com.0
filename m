Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBVWD6CAAMGQEQVE6WGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 514A530F7F1
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 17:33:27 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id y18sf1998441otk.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 08:33:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612456406; cv=pass;
        d=google.com; s=arc-20160816;
        b=iNZGOrXgBdnk6EapoD/q055fUnGyoLfMC4pwJhF1z0HibqvJ00u4+2jCR5BCtJJr01
         F1LkybmUGf9TyjmGpcrNtRJicgahGpmk+MkXzGFzr8vPaH2q3U+xAE3+q1Coi2g7YWn5
         ZVXT3ckKB7XAvjD/54H7vhda16D0csJBPJLiFEyDxWf16SHBvPfWC0ivHYIj/6aBzhKp
         +5MX4Jww/fzx6LGgxC6NrYq9ggM66bXMz8rN1e3CEGpQkd77Cdnt0yZXgqlfkvFY9o8E
         t5686RDhPKBgubhEZN3X0ZJBBw38sSYPQ4j+asYxpRW/DbBsq6gkMuHr/dGNNBQWX/g3
         JFzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=YRFCR7CeWlmJoonD10c9z8J7RftAnY3Su4gsxcCWrGI=;
        b=XH+hibsqk9af13OY73XT+4LtuoJMY+KnsbPWdrLWG9FcGAnuA0UOaRR7F0L8/GVzkf
         BcrRVfKwECgCTWV44bz2M51eGLmQgouidoAjjXJqAoI29F8htcAeUKqPc0mtYHClCcE+
         en3JmH7SfEFUeVRnyqFE53HsAmHKXjOTjwrjTVLJJrnIoO/WGO4jCPDkyhOqrlOVkQjp
         MFk+Mryo+K60nEDzodyvWpon9vddY9FOHZeNcUw3ant67sd1c9SbTJwUzpY8PIQUjk7B
         u5sIWGu9eE8wWTjpDxxIxF1FTop3IsU96dE/8ylf9ALLLQsVybLbimRADVQnXPpqVRG/
         5PIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FXJLCgVb;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YRFCR7CeWlmJoonD10c9z8J7RftAnY3Su4gsxcCWrGI=;
        b=Ee0jeOsaYmQna/6cZcMGYwLOLOaY74OtcoLwYu3BggigWsjR1Uw0AOrqSQelsUrK68
         CzoadvWwe112tPkXZyS9kPnXWuiPBC69AhYMaQrxwAGRu5muvQSWGa11m9FF7g4gKPOx
         4QH7tHTx09XlIuKWfihPT/Ty+1X6gu175cDiT977kVOfrgTBL25S7QU5yD8q/Tjh9Lr7
         DAB1Gmouxp7B1TkGZjfKOe8lkErEhWfZ3TXhirfWqomfNTRQbrJDttNitSLskjHzziPV
         NNA4rYN0hDOzFk8+AXH2s50jVzyN5c6MQrzyIUmEuwPaqt8StVjG2wpT+abl3Q/bJT6a
         zf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YRFCR7CeWlmJoonD10c9z8J7RftAnY3Su4gsxcCWrGI=;
        b=rBWNYFNHxEAN13BDrcepHTEbSMWgj++yFslD8uXg/Gh2q+zUCLXqsAH9nVi/78IFMd
         pUjGeZFBQTMYPlNwnZRF2X2/u91CGuqJOd6UvhHmBwcd13Hs4I1t8qGkGT/T+ADq8rBz
         /fd0SL9uR2gnsfj5niMWhZ+DqFGE3NMjoV2WGlbsL7mu+8UDJYzXh1Tm/ZY5FZfaFnd3
         rY06DBY28+A4iAe6dnKw7eixz5z/OexfZqg+8l8mddUTdAa72vP3Bvl4QxZ424DV8jIh
         cvhh+4zkTdbkZdYwLJSrGTJVlKMipQc0/yi4MLjlkQkN14qVmeh1wNBc7GY98iadBJYV
         bg6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530J0+MIaEW5twGUz1obgXcE36hGNIq5MvCt5SbT/Tk9wGd/I1Oz
	7TN3+SBGxEh4JcoMuqemsAE=
X-Google-Smtp-Source: ABdhPJws7pZi7EN63EChCoiM0aWS2ecBNpU2YRBiyFe638LURGBU/9688czmvJsf+neP0Oo3ZdGFPg==
X-Received: by 2002:aca:49d0:: with SMTP id w199mr170569oia.61.1612456406279;
        Thu, 04 Feb 2021 08:33:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fd82:: with SMTP id b124ls1445329oii.3.gmail; Thu, 04
 Feb 2021 08:33:25 -0800 (PST)
X-Received: by 2002:aca:c60d:: with SMTP id w13mr197114oif.26.1612456405887;
        Thu, 04 Feb 2021 08:33:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612456405; cv=none;
        d=google.com; s=arc-20160816;
        b=NGROY1QCbrns/fScvuNJTehJ+k73mv4XdUtJRHm7u1u1swiHx0zpw/xt5dbwPguhlp
         05HZtVTuuqKIBN25HYwfGMZgIqpp0hdijM9FoiAvK41Htjwt3S61D5wpstO9XNqSBD0d
         WhRK703CyuQZkx3bXGTwnU4oPx5H60gB+AtHsBWrKL6s4A0IvpIM/fGi9Tq4EvVsyxWu
         yg2Pt+YQmmm0SiTf0aZ3Teit9LVCJawK3Nhifnk6VSFf4EbPBs4hULyWcJA712tw6CBF
         WlYX5WOA29Ytx9toc1XzTjOvdl3BrLU+sERQ0PLp2k7i047kerqO9VrJaSA9T8cWw+hJ
         u9/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xYx5dxFJv4ZwGAVZ/p0SQmC5BvGAtZOg08iRzHcJa80=;
        b=hM2zqk4QXLuChghWk29lti30qL9BDUewhaMnSp2PWu7a/fhr/Iu8DxRW4ozRFuxjD9
         KPv5JjMM+YOox9Cx+fpHXyORl1ArOT6C4/tbFO3L00eRjoubCA+0yR0V4k582HtnNkg8
         lDcYhISr8MhOjgzK1Xk6iObEmE3JdxnyzkqBw6SqX7UeIwtYSUsTIkRkT+BDroxsVwjq
         6HgNmdhdiytUV+PQ4SWRVuJvqDHezi4yCRF1262wyh33UztjsiOVKBVXNIH7K1cUAI37
         3R+RODCO9fVhem67KPNm6KgYUSlbg3oMcfe+RZfEcjoQJiexAicQT8TAa06SO8PwN1Wa
         L3Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FXJLCgVb;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e184si534525oif.0.2021.02.04.08.33.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 08:33:25 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 520B964DEC;
	Thu,  4 Feb 2021 16:33:24 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id F3F6840513; Thu,  4 Feb 2021 13:33:19 -0300 (-03)
Date: Thu, 4 Feb 2021 13:33:19 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Chris Murphy <lists@colorremedies.com>
Cc: bpf <bpf@vger.kernel.org>, Jiri Olsa <jolsa@kernel.org>,
	dwarves@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>
Subject: [FIXED] Re: 5:11: in-kernel BTF is malformed
Message-ID: <20210204163319.GD910119@kernel.org>
References: <CAJCQCtSQLc0VHqO4BY_-YB2OmCNNmHCS6fNdQKmMWGn2v=Jpdw@mail.gmail.com>
 <CAJCQCtRHOidM7Vps1JQSpZA14u+B5fR860FwZB=eb1wYjTpqDw@mail.gmail.com>
 <CAEf4BzZ4oTB0-JizHe1VaCk2V+Jb9jJoTznkgh6CjE5VxNVqbg@mail.gmail.com>
 <CAJCQCtRw6UWGGvjn0x__godYKYQXXmtyQys4efW2Pb84Q5q8Eg@mail.gmail.com>
 <20210204010038.GA854763@kernel.org>
 <CAJCQCtQfgRp78_WSrSHLNUUYNCyOCH=vo10nVZW_cyMjpZiNJg@mail.gmail.com>
 <CAEf4Bza4XQxpS7VTNWGk6Rz-iUwZemF6+iAVBA_yvrWnV0k8Qg@mail.gmail.com>
 <CAJCQCtRDJ_uiJcanP_p+y6Kz76c4P-EmndMyfHN5f4rtkgYhjA@mail.gmail.com>
 <20210204132625.GB910119@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210204132625.GB910119@kernel.org>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FXJLCgVb;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Transfer-Encoding: quoted-printable
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

Em Thu, Feb 04, 2021 at 10:26:25AM -0300, Arnaldo Carvalho de Melo escreveu=
:
> Em Wed, Feb 03, 2021 at 07:10:52PM -0700, Chris Murphy escreveu:
> > On Wed, Feb 3, 2021 at 7:05 PM Andrii Nakryiko <andrii.nakryiko@gmail.c=
om> wrote:
> > > So it's a bitfield offset breakage that should be fixed in pahole 1.2=
0.
=20
> > Rawhide is currently still on
> > dwarves-1.19-2.fc34.x86_64
=20
> > This might also be related:
> > https://bugzilla.redhat.com/show_bug.cgi?id=3D1922707#c9
=20
> With about to be released pahole v1.20 it all seems to work, tldr;
=20
> [root@seventh ~]# ~acme/git/pahole/btfdiff /lib/modules/`uname -r`/build/=
vmlinux
> [root@seventh ~]#
=20
> Same thing. I'll do more tests after some errands, but I've put the pre-r=
elease
> rpm packages for 1.20 at:
=20
> http://vger.kernel.org/~acme/pahole/rpms/1.20-0/RPMS/x86_64/Packages/
=20
> Can you please try it with gcc 11?

Looking at the original source code in the kernel:

        /* Used for emulating ABI behavior of previous Linux versions: */
        unsigned int                    personality;

        /* Scheduler bits, serialized by scheduler locks: */
        unsigned                        sched_reset_on_fork:1;
        unsigned                        sched_contributes_to_load:1;
        unsigned                        sched_migrated:1;
#ifdef CONFIG_PSI
        unsigned                        sched_psi_wake_requeue:1;
#endif

        /* Force alignment to the next boundary: */
        unsigned                        :0;

        /* Unserialized, strictly 'current' */

        /*
         * This field must not be in the scheduler word above due to wakeli=
st
         * queueing no longer being serialized by p->on_cpu. However:
         *
         * p->XXX =3D X;                  ttwu()
         * schedule()                     if (p->on_rq && ..) // false
         *   smp_mb__after_spinlock();    if (smp_load_acquire(&p->on_cpu) =
&& //true
         *   deactivate_task()                ttwu_queue_wakelist())
         *     p->on_rq =3D 0;                    p->sched_remote_wakeup =
=3D Y;
         *
         * guarantees all stores of 'current' are visible before
         * ->sched_remote_wakeup gets used, so it can be in this word.
         */
        unsigned                        sched_remote_wakeup:1;

        /* Bit to tell LSMs we're in execve(): */
        unsigned                        in_execve:1;
        unsigned                        in_iowait:1;

Then the 'struct task_struct' as reconstructed by pahole from:
 =20
  $ ls -la /sys/kernel/btf/vmlinux
  -r--r--r--. 1 root root 4560322 Feb  4 10:16 /sys/kernel/btf/vmlinux
  $ ls -lah /sys/kernel/btf/vmlinux
  -r--r--r--. 1 root root 4.4M Feb  4 10:16 /sys/kernel/btf/vmlinux
  $

That was generated by 'pahole -J' from the default DWARF version
generated by gcc 11, we see that 'unsigned :0;' preserved (and that
isn't directly encoded in DWARF, so, to produce source code from it the
tool needs to add that "manually") and the byte offset (not
DW_AT_data_member_location isn't provided in such case) calculated from
the DW_AT_bit_offset (DWARF4/5 only stuff):

[acme@seventh perf]$ readelf -wi ../build/v5.11.0-rc6+/vmlinux | grep -m1 s=
ched_reset_on_fork -A40 | grep -v DW_AT_decl_
    <1149>   DW_AT_name        : (indirect string, offset: 0x53da): sched_r=
eset_on_fork
    <1151>   DW_AT_type        : <0x69>
    <1155>   DW_AT_bit_size    : 1
    <1155>   DW_AT_data_bit_offset: 18208
 <2><1157>: Abbrev Number: 29 (DW_TAG_member)
    <1158>   DW_AT_name        : (indirect string, offset: 0x3940): sched_c=
ontributes_to_load
    <1160>   DW_AT_type        : <0x69>
    <1164>   DW_AT_bit_size    : 1
    <1164>   DW_AT_data_bit_offset: 18209
 <2><1166>: Abbrev Number: 29 (DW_TAG_member)
    <1167>   DW_AT_name        : (indirect string, offset: 0x4883): sched_m=
igrated
    <116f>   DW_AT_type        : <0x69>
    <1173>   DW_AT_bit_size    : 1
    <1173>   DW_AT_data_bit_offset: 18210
 <2><1175>: Abbrev Number: 29 (DW_TAG_member)
    <1176>   DW_AT_name        : (indirect string, offset: 0x3245): sched_p=
si_wake_requeue
    <117e>   DW_AT_type        : <0x69>
    <1182>   DW_AT_bit_size    : 1
    <1182>   DW_AT_data_bit_offset: 18211
 <2><1184>: Abbrev Number: 29 (DW_TAG_member)
    <1185>   DW_AT_name        : (indirect string, offset: 0xe4b): sched_re=
mote_wakeup
    <118d>   DW_AT_type        : <0x69>
    <1191>   DW_AT_bit_size    : 1
    <1191>   DW_AT_data_bit_offset: 18240
 <2><1193>: Abbrev Number: 29 (DW_TAG_member)
    <1194>   DW_AT_name        : (indirect string, offset: 0x3ad4): in_exec=
ve
[acme@seventh perf]$=20

Looking at the options passed to gcc:

[acme@seventh perf]$ readelf -wi ../build/v5.11.0-rc6+/vmlinux | grep DW_AT=
_producer -m2
    <1c>   DW_AT_producer    : (indirect string, offset: 0x51): GNU AS 2.35=
.1
    <2f>   DW_AT_producer    : (indirect string, offset: 0x124a): GNU C89 1=
1.0.0 20210123 (Red Hat 11.0.0-0) -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -m=
no-avx -m64 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3D3 -m=
skip-rax-setup -mtune=3Dgeneric -mno-red-zone -mcmodel=3Dkernel -mindirect-=
branch=3Dthunk-extern -mindirect-branch-register -mrecord-mcount -mfentry -=
march=3Dx86-64 -g -O2 -std=3Dgnu90 -fno-strict-aliasing -fno-common -fshort=
-wchar -fno-PIE -falign-jumps=3D1 -falign-loops=3D1 -fno-asynchronous-unwin=
d-tables -fno-jump-tables -fno-delete-null-pointer-checks -fno-allow-store-=
data-races -fno-strict-overflow -fstack-check=3Dno -fconserve-stack -fcf-pr=
otection=3Dnone -fno-stack-protector -fno-builtin
[acme@seventh perf]$

its just plain '-g'

Also using pahole's friend, fullcircle, we can see that it uses pfunct
to generate a compileable .c file from the DWARF thing, building it with
the same set of options used to build a .o file and then compares the
degugging info in the .c generated from the debugging info and checks
it matches, i.e. full circle.

[acme@seventh tmp]$ cp ~/git/build/v5.11.0-rc6+/net/ipv4/tcp.o .
[acme@seventh tmp]$ pahole -C task_struct tcp.o | tail

	/* --- cacheline 194 boundary (12416 bytes) --- */
	struct thread_struct       thread __attribute__((__aligned__(64))); /* 124=
16  4352 */

	/* size: 16768, cachelines: 262, members: 252 */
	/* sum members: 16579, holes: 22, sum holes: 173 */
	/* sum bitfield members: 77 bits, bit holes: 2, sum bit holes: 51 bits */
	/* paddings: 4, sum paddings: 21 */
	/* forced alignments: 8, forced holes: 2, sum forced holes: 96 */
} __attribute__((__aligned__(64)));
[acme@seventh tmp]$
[acme@seventh tmp]$ ~acme/git/pahole/fullcircle tcp.o
[acme@seventh tmp]$

For reference, here is the script:

  https://git.kernel.org/pub/scm/devel/pahole/pahole.git/tree/fullcircle

Then the next test is to build and use tools/bpf/runqslower/ that uses
CO-RE, i.e. it touches task_struct fields, etc, after building it:

[root@seventh linux]# tools/bpf/runqslower/.output/runqslower
Tracing run queue latency higher than 10000 us
TIME     COMM             PID           LAT(us)

And on the other terminal:

[root@seventh ~]# bpftool prog | grep handle__sched -A3
93: type 26  name handle__sched_w  tag 77e6e21acbdbb0f6  gpl
	loaded_at 2021-02-04T13:22:32-0300  uid 0
	xlated 152B  jited 93B  memlock 4096B  map_ids 23,21
	btf_id 194
95: type 26  name handle__sched_w  tag 77e6e21acbdbb0f6  gpl
	loaded_at 2021-02-04T13:22:32-0300  uid 0
	xlated 152B  jited 93B  memlock 4096B  map_ids 23,21
	btf_id 194
96: type 26  name handle__sched_s  tag 1c25b248d7358175  gpl
	loaded_at 2021-02-04T13:22:32-0300  uid 0
	xlated 560B  jited 332B  memlock 4096B  map_ids 23,21,22
	btf_id 194
[root@seventh ~]#

Ok, system is running smoothly, lets try with a lower threshold:

[root@seventh linux]# tools/bpf/runqslower/.output/runqslower 1000
Tracing run queue latency higher than 1000 us
TIME     COMM             PID           LAT(us)
13:24:31 swapper/3        5070             1405
13:24:31 swapper/2        2037             1369
13:24:31 swapper/3        5070             1263
13:24:32 swapper/0        645              1384
13:24:32 swapper/1        881              1384
13:24:32 abrt-dump-journ  5070             2064
13:24:32 systemd-journal  882              2135
13:24:32 abrt-dump-journ  645              2240
13:24:32 runqslower       2947             1317
13:24:32 iceccd           3839             1451
13:24:32 runqslower       241              1500
13:24:32 rcu_sched        5070             1794
13:24:32 swapper/2        176              1369
^C
[root@seventh linux]#

And furthermore:

[root@seventh linux]# file tools/bpf/runqslower/.output/runqslower.bpf.o
tools/bpf/runqslower/.output/runqslower.bpf.o: ELF 64-bit LSB relocatable, =
eBPF, version 1 (SYSV), not stripped
[root@seventh linux]# eu-readelf -winfo tools/bpf/runqslower/.output/runqsl=
ower.bpf.o
eu-readelf: cannot get debug context descriptor: No DWARF information found
[root@seventh linux]#
[root@seventh linux]# pahole -C task_struct tools/bpf/runqslower/.output/ru=
nqslower.bpf.o > BTF.generated-by-clang-for-a-BPF.target
[root@seventh linux]# pahole task_struct > BTF.generated-by-pahole-J-from-d=
efault-DWWARF-generated-by-gcc11-for-a-x86_64.target
[root@seventh linux]# diff -u BTF.generated-by-clang-for-a-BPF.target BTF.g=
enerated-by-pahole-J-from-default-DWWARF-generated-by-gcc11-for-a-x86_64.ta=
rget
--- BTF.generated-by-clang-for-a-BPF.target	2021-02-04 13:26:16.215883852 -=
0300
+++ BTF.generated-by-pahole-J-from-default-DWWARF-generated-by-gcc11-for-a-=
x86_64.target	2021-02-04 13:27:07.483184784 -0300
@@ -49,8 +49,8 @@
 	/* --- cacheline 30 boundary (1920 bytes) was 56 bytes ago --- */
 	void *                     migration_pending;    /*  1976     8 */
 	/* --- cacheline 31 boundary (1984 bytes) --- */
-	unsigned short             migration_disabled;   /*  1984     2 */
-	unsigned short             migration_flags;      /*  1986     2 */
+	short unsigned int         migration_disabled;   /*  1984     2 */
+	short unsigned int         migration_flags;      /*  1986     2 */

 	/* XXX 4 bytes hole, try to pack */

@@ -284,8 +284,8 @@
 	struct list_head           perf_event_list;      /*  7016    16 */
 	struct mempolicy *         mempolicy;            /*  7032     8 */
 	/* --- cacheline 110 boundary (7040 bytes) --- */
-	short                      il_prev;              /*  7040     2 */
-	short                      pref_node_fork;       /*  7042     2 */
+	short int                  il_prev;              /*  7040     2 */
+	short int                  pref_node_fork;       /*  7042     2 */
 	int                        numa_scan_seq;        /*  7044     4 */
 	unsigned int               numa_scan_period;     /*  7048     4 */
 	unsigned int               numa_scan_period_max; /*  7052     4 */
[root@seventh linux]#

Not really a difference, but I'll check if I can remove this annoyance
in > 1.20 :-)

[root@seventh linux]# clang -v |& head -1
clang version 12.0.0 (https://github.com/llvm/llvm-project 87369c626114ae17=
f4c637635c119e6de0856a9a)
[root@seventh linux]#

So I think that for the problems related to building the kernel with gcc
11 in Fedora Rawhide using the default that is now DWARF5, pahole 1.20
is good to go and I'll tag it now.

- Arnaldo

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210204163319.GD910119%40kernel.org.
