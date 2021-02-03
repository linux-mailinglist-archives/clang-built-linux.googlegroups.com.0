Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB35O5SAAMGQE73N7VDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E2230E504
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 22:36:48 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id f6sf905507iox.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 13:36:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612388207; cv=pass;
        d=google.com; s=arc-20160816;
        b=qCNJ1jFNjk0Ueq4tE8rdFYjsVJpr0n+sseRPZgolA7HOTgkeetpFBqc50azy+Q6YHi
         WnEK6hNm7Q3BA3K50Ejpc58z7XHg858Xw3xtSDQRzOb8QfX+3bnd5eFm1Nm/psrb+h93
         11KHO3gLIFlC5EBGp6rXc9TZS/rVA8V+gCVpFgWB7SrFuCNYOnPt8CQrynxWkTtMWdtE
         9Qxp71rTSVjwLo56PELpO3RpGQ9/2B361jeGaDqIDYwqOsCTlFeAQqvp0OpTH5pxOJEq
         KpN+Vb68bW/xoSNJsZd62rAaM8e6ZsWWOC6b0Zs52pyWba4GQa8M9KpPh8HXYW7RJA12
         rHBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1DfUZ36hQc6rQcOw8hpG9bGz7aM80LO1yLtj/xutP70=;
        b=VJseb6d3gvPg/6B8R2T2tUhOcH7fRGp2fSDW46TDLD/WbmHTlsc+5iLBpjQELhRng4
         RHAOzPLtMDGJGHA6Jbsq/ONr0o0yDD7GRQcbbT49xxhlG8sw+xi9WwHYVdyttRAx27sS
         H2gntzAyeWoulH9Cvt7pS2g0NMIbGtBwEyQOV+3zfbC8FUcaggM14IR9ZCQw9MiOGyU/
         ML5qF3nR/dJ+NfQ1YgtkYG+CK+V4riD0YKkzkDzB2MZXSm81jr+83QssaE+RKinK6/nr
         gx7fIVYjReGmUzuuFdbwzQ7NpYupk+m5aEX/OSMBbGXa4MwO6jBRH8vh3RtUBusTychS
         izzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hd9T6wgq;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1DfUZ36hQc6rQcOw8hpG9bGz7aM80LO1yLtj/xutP70=;
        b=PRsylSnMJuX1ItYFKNNm8yXAkhPHLYC9s8yoXk6kSrsEjM5ymXIM/AY/ZwE9DKBVo9
         NBUNP+Fc/CNuJrgfrJG8lVsbwLpouA3kNcXaA3u4JjxDePY6UmphclgZuO0+WkLiWbrv
         VzfSRug9qxdPlceoypsHyibthRhF0x4ZXUmHvGWYargUr6OZikt9IHI7B5wjJqtog65D
         veIfiuN5Mq+QLVwrXucnVwaZzyZBqr5Vc5tJbo2Lm8WwNgMTpU1jDO4GtHNv/e0/VQlK
         z7XM7hNby+DBh7nZm8R3hOVBUdAEL95gdQZjBOsaEPgdGBDGElcJMfbPo0xaCDdeqwSz
         VgcA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1DfUZ36hQc6rQcOw8hpG9bGz7aM80LO1yLtj/xutP70=;
        b=p1onFIl89zf7J5ubg5M32kl9z1LVU+2amv2lNbDktUb+gHBnSJkiJ1EUvFGUpH6kju
         JWmz0+A6miL7l74Pl2LTZf4wIZKx8N0tptpnC005qNfYPpZQ/D734ygkvhs9qc31HILg
         KdLbZXh1HVkTjsaY/Shi/BCjQXJpizyQ4tzHk/PwuKF1NTAX+kA9PTT1qKV6ivBZq3b7
         DgqvRpSdw7jmNl3VtJm1aHgtEM4uYTV8b67wCedq0+Ez98Rs7/MaziomAt3Zewe+G90o
         yPfnwkIVIkMK2eFPVYNHFJdwROTjNRxOfzmup1PviILfLT7Ed6rywgI3Rhb0fclINqXR
         P2sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1DfUZ36hQc6rQcOw8hpG9bGz7aM80LO1yLtj/xutP70=;
        b=ucmwFC77a7sbIJPHk+AjrCPjBDt+5IXA7VoqhAQ771fyWBJX/rm1sUzxftRPo0epkK
         aEDdvjY9XQ2u8q0/EW97iEdPwjvHTe9P+nVpstS4qg0zq9UAA3zxj8BctS7bzQ+RU30H
         3vEKKuteFGCYn1ZvXsYFU8Olqy8MIZAo+uJnECIYhPqtdmxERDT7gRDD2pidsJMymmkC
         tR5Cbq9h3MYA7CUj4kaAh34xHPDgYLqnUSReA9ZWq44sdfxCvrnC4Ed5Cj4xM+bvN++s
         SaTCQ6yoVhskEB2eZpQfRhUeo6Sq4wGkchXSIuC5e0bi1/FVEiOJ/wt7piWqHce7zhbE
         cXBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yNM3tCUpwgz7GP1L3Ml0IdqmGhLaGhSzAFEPm83sBoWtJD3wT
	cGctZFyQgyItM3xs725OfjU=
X-Google-Smtp-Source: ABdhPJzXjpNCIwHIW0no3Jg270kGNpJZv+lDz2wlGiLS181btZibmp/3eP7QVhd++yfxWKNYZ+2KxQ==
X-Received: by 2002:a92:c849:: with SMTP id b9mr1414826ilq.271.1612388207492;
        Wed, 03 Feb 2021 13:36:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3606:: with SMTP id d6ls782685ila.3.gmail; Wed, 03 Feb
 2021 13:36:47 -0800 (PST)
X-Received: by 2002:a05:6e02:1d95:: with SMTP id h21mr4232974ila.151.1612388206947;
        Wed, 03 Feb 2021 13:36:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612388206; cv=none;
        d=google.com; s=arc-20160816;
        b=QY0rr3WVOdZ+Z5q54TnkQTEs6cRvURYI829ROF6UUF9AiYCGRjpads3LiFw+3Fr2yx
         TD4v0yWyoQ9oUFO+Ip4rePeW9Y9hs+lJYPVDAHA3fSi2TrabI3SrWu4yxP0vy/6XWt0x
         himkA2voiY/3j0lr1UQKkPp3kn4toXMb82cNDD0rWT9LEJwVE7resszsPGHr+W1vEehp
         Iv5oHycw2nSfwmBF6R1GUcANuBao4ybrvickACH8MeYD7MEMDIYZLcH5C/S5/TvpWbZt
         6jxCGA6RTfv19ZitjVUNmQfN9CW8v/p56GnRqUUSj8m2fd7lmtCbXndGtNh1vrj1u1vY
         mUuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nk4Eqy5gI1BiAgrnMQQPHD5g4sRl79y53xGcikXIORo=;
        b=mP6FFWst8lNZo9C90ko08x2LP9c8aI8pvVjqNzS443NprMDUC6XWBWQhXiSGktyUAc
         QWMJGzgLxGLfUOsv5XjoV+oCW9V3AZNLpncJI1drkMKt2DmGsVDN0G7DWTjfOFAYNiT9
         i8i5r6JFwC/KI63gRJ+U7R5aqGLB9W1wzY3UqF0s0XRTQFqGHYZVP++XI9RlX1PUIa6i
         +Jk3r58w1ct2vJu+5cwwJ1hSS90wry4tdKHPDm6uu23sIIGKfUYGc4EnVPvt0pYxb+N0
         vJhktd0jX5iuR78BETjspUQmCbsc3XM3q+lN+o4Njf9D6KnCau8JtGy9xxGQsdIrBnsr
         XMEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hd9T6wgq;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com. [2607:f8b0:4864:20::130])
        by gmr-mx.google.com with ESMTPS id s10si131994ild.2.2021.02.03.13.36.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 13:36:46 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) client-ip=2607:f8b0:4864:20::130;
Received: by mail-il1-x130.google.com with SMTP id g9so675278ilc.3
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 13:36:46 -0800 (PST)
X-Received: by 2002:a05:6e02:d0:: with SMTP id r16mr4169346ilq.112.1612388206459;
 Wed, 03 Feb 2021 13:36:46 -0800 (PST)
MIME-Version: 1.0
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com> <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
In-Reply-To: <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 3 Feb 2021 22:36:32 +0100
Message-ID: <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Rachel Sibley <rasibley@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>, CKI Project <cki-project@redhat.com>, 
	Milos Malik <mmalik@redhat.com>, Yi Zhang <yi.zhang@redhat.com>, Filip Suba <fsuba@redhat.com>, 
	Memory Management <mm-qe@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Jan Stancek <jstancek@redhat.com>
Content-Type: multipart/alternative; boundary="00000000000049501905ba7562bf"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Hd9T6wgq;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::130
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--00000000000049501905ba7562bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 3, 2021 at 9:45 PM Rachel Sibley <rasibley@redhat.com> wrote:

>
>
> On 2/3/21 1:03 PM, Nathan Chancellor wrote:
> > On Wed, Feb 03, 2021 at 01:58:32AM -0000, CKI Project wrote:
> >>
> >> Hello,
> >>
> >> We ran automated tests on a recent commit from this kernel tree:
> >>
> >>         Kernel repo:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >>              Commit: 3aaf0a27ffc2 - Merge tag
> 'clang-format-for-linux-v5.11-rc7' of git://github.com/ojeda/linux
> >>
> >> The results of these automated tests are provided below.
> >>
> >>      Overall result: FAILED (see details below)
> >>               Merge: OK
> >>             Compile: OK
> >>   Selftests compile: FAILED
> >>               Tests: PANICKED
> >>
> >> All kernel binaries, config files, and logs are available for download
> here:
> >>
> >>
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/02/02/622905
> >>
> >> One or more kernel tests failed:
> >>
> >>      aarch64:
> >>       =E2=9D=8C selinux-policy: serge-testsuite
> >>
> >>      x86_64:
> >>       =E2=9D=8C selinux-policy: serge-testsuite
> >>       =E2=9D=8C LTP lite
> >
> > These should be the failures for this particular set of tests correct?
> >
> >
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-=
public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LTP_lite/95073=
27_x86_64_1_RHELKT1LITE.FILTERED.fail.log
> >
> > I am curious, is there any way to get a side by side comparison of the
> > test results between GCC and clang? In other words, I would like to kno=
w
> > if a test is failing with both compilers versus just clang. This would
> > help us understand if it is a compiler specific issue or something that
> > broke the kernel.
> >
> >>       =F0=9F=92=A5 LTP
> >
> >>From what I can tell:
> >
> > [12262.428593] general protection fault, probably for non-canonical
> address 0x8bc08b308b608b5: 0000 [#1] SMP PTI
> > [12262.428810] CPU: 1 PID: 465515 Comm: proc01 Not tainted 5.11.0-rc6 #=
1
> > [12262.428810] Hardware name: Red Hat KVM, BIOS 0.5.1 01/01/2007
> > [12262.428810] RIP: 0010:string+0x50/0x110
> > [12262.428810] Code: ce 48 c1 fe 30 85 f6 0f 84 be 00 00 00 31 c0 eb 15
> 66 0f 1f 84 00 00 00 00 00 48 83 c0 01 39 c6 0f 84 ac 00 00 00 4c 8d 0c 0=
7
> <45> 0f b6 14 00 45 84 d2 0f 84 a2 00 00 00 49 39 d1 73 dd 45 88 11
> > [12262.428810] RSP: 0018:ffffb1ea012bbc40 EFLAGS: 00010246
> > [12262.428810] RAX: 0000000000000000 RBX: ffff9ea25e9ea03e RCX:
> ffff0a00ffffff04
> > [12262.428810] RDX: ffff9ea25e9eb000 RSI: ffffffffffffffff RDI:
> ffff9ea25e9ea03e
> > [12262.428810] RBP: ffffffff8f5c95f1 R08: 08bc08b308b608b5 R09:
> ffff9ea25e9ea03e
> > [12262.428810] R10: 0000001000000000 R11: ffffffff8e212401 R12:
> ffff9ea25e9eb000
> > [12262.428810] R13: ffffffff8f5c95f3 R14: 0000000000000002 R15:
> ffffb1ea012bbca0
> > [12262.428810] FS:  00007fab43075740(0000) GS:ffff9ea35bd00000(0000)
> knlGS:0000000000000000
> > [12262.428810] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [12262.428810] CR2: 00005584bb6dba68 CR3: 0000000111bbe000 CR4:
> 00000000000006e0
> > [12262.428810] DR0: 0000000000000001 DR1: 0000000000000000 DR2:
> 0000000000000000
> > [12262.428810] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7:
> 0000000000000600
> > [12262.428810] Call Trace:
> > [12262.428810]  vsnprintf+0x570/0x710
> > [12262.428810]  seq_printf+0x6b/0x90
> > [12262.428810]  ? lock_acquire+0x27/0x280
> > [12262.428810]  ? mod_objcg_state+0xd2/0x160
> > [12262.428810]  ? vsnprintf+0x32f/0x710
> > [12262.428810]  print_name+0x46/0xc0
> > [12262.428810]  ? seq_printf+0x6b/0x90
> > [12262.428810]  ? __kmalloc_node+0xaf/0x340
> > [12262.428810]  ? lock_acquire+0x27/0x280
> > [12262.428810]  ? kvmalloc_node+0x4b/0x90
> > [12262.428810]  lc_show+0x82/0xe0
> > [12262.428810]  seq_read_iter+0x311/0x420
> > [12262.428810]  proc_reg_read_iter+0x3f/0x80
> > [12262.428810]  vfs_read+0x2c3/0x340
> > [12262.428810]  ksys_read+0x5f/0xb0
> > [12262.428810]  do_syscall_64+0x33/0x40
> > [12262.428810]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> > [12262.428810] RIP: 0033:0x7fab4318791d
> > [12262.428810] Code: 0f 1f 44 00 00 48 8b 0d 51 45 0b 00 45 31 c0 64 83
> 39 0b 75 d2 eb c0 e8 b1 fb ff ff 90 f3 0f 1e fa 48 39 ca 77 2b 31 c0 0f 0=
5
> <48> 3d 00 f0 ff ff 77 0b c3 66 2e 0f 1f 84 00 00 00 00 00 48 8b 15
> > [12262.428810] RSP: 002b:00007ffcaeb265b8 EFLAGS: 00000246 ORIG_RAX:
> 0000000000000000
> > [12262.428810] RAX: ffffffffffffffda RBX: 00007ffcaeb27730 RCX:
> 00007fab4318791d
> > [12262.428810] RDX: 0000000000000400 RSI: 000000000044b820 RDI:
> 0000000000000005
> > [12262.428810] RBP: 0000000000008000 R08: 0000000000000000 R09:
> 00007ffcaeb27520
> > [12262.428810] R10: 0000000000000000 R11: 0000000000000246 R12:
> 0000000000000000
> > [12262.428810] R13: 0000000000000005 R14: 0000000000000000 R15:
> 0000000000000000
> > [12262.428810] Modules linked in: snd_seq_dummy minix snd_hrtimer
> snd_seq snd_seq_device authenc pcrypt crypto_user sha3_generic algif_hash
> salsa20_generic binfmt_misc n_gsm pps_ldisc slcan ppp_synctty n_hdlc mkis=
s
> ax25 ppp_async ppp_generic slip slhc nfsv3 nfs_acl nfs nfs_ssc fscache
> lockd grace rds tun brd overlay exfat vfat fat xfs sctp tcp_diag udp_diag
> inet_diag rfkill sunrpc snd_hda_codec_generic ledtrig_audio snd_hda_intel
> snd_intel_dspcfg soundwire_intel soundwire_generic_allocation snd_soc_cor=
e
> snd_compress snd_pcm_dmaengine soundwire_cadence snd_hda_codec snd_hda_co=
re
> ac97_bus snd_hwdep snd_pcm joydev snd_timer snd virtio_net soundcore
> net_failover pcspkr virtio_balloon failover i2c_piix4 fuse zram ip_tables
> x_tables cirrus drm_kms_helper cec virtio_blk drm serio_raw ata_generic
> pata_acpi floppy btrfs raid6_pq xor [last unloaded: can]
> > [12262.462039] ---[ end trace f683b95858968bee ]---
> >
> > I cannot reproduce this in QEMU with a Debian rootfs with the supplied
> > configuration file though, proc01 -m 128 passes for me.
>
> Hi Nathan,
>
> We recently moved the mainline tree to use Fedora Rawhide as the base
> distro, this helps out kdump and other tests which require
> updated user space for testing. As a result, there were a few tests that
> shouldn't have run like LTP Lite. So the log you linked
> above is not related to the panic:
>
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-=
public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LTP_lite/95073=
27_x86_64_1_RHELKT1LITE.FILTERED.fail.log
>
> This is the version of LTP we run for internal RHEL kernels and therefore
> isn't supported against upstream kernels. I'm working on a fix
> for this now and should be resolved soon, sorry about that.
>
> As far as the panic, it was was triggered on our upstream LTP test, I
> don't have a corresponding x86_64/LTP mainline(GCC) job since there is a =
BPF
> bug which is causing our jobs to abort while updating the kernel for x86.
> You will see the following in the logs:
>
> 'failed to validate module [something] BTF: -22 '
>

Guess this is with CONFIG_DEBUG_INFO_BTF=3Dy and LLVM/Clang?

*Today, I played with above and diverse DWARF version settings.*
*Even recent pahole from Git in combination with up-to-date LLVM/Clang is
incompatible with DWARF-v4 and DWARF-v5.*
*Means all my builds were broken.*

Mark Wielaard says:
"I would try to avoid using clang producing DWARF5. It clearly has some
incompatibilities with dwarves/pahole. It should work if you don't set
DEBUG_INFO_DWARF5. Try GCC 11 (which defaults to -gdwarf-5) or an
earlier version (probably at least GCC 8 or higher) using -gdwarf-5
explicitly."

If this is with CONFIG_DEBUG_INFO_BTF=3Dy you should make it unavailable wh=
en
CC_IS_CLANG=3Dy.

- Sedat -


>
> Here is a regular mainline job for reference where you can it:
>
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-=
public/2021/02/02/622904/build_x86_64_redhat%3A1092352/tests/9507513_x86_64=
_1_console.log
>
> As far as comparing tests for mainline run with gcc vs clang, we don't
> email an upstream ML for regular mainline, so nothing archived.
> However, the logs are still published externally and we can always link
> them here for comparison.
>
> If you like, we could start forwarding you reports for both ? Otherwise,
> we are working on publishing our results database we use internally,
> but this will take some time.
>
> Thanks,
> Rachel
>
> >
> > Cheers,
> > Nathan
> >
> >> We hope that these logs can help you find the problem quickly. For the
> full
> >> detail on our testing procedures, please scroll to the bottom of this
> message.
> >>
> >> Please reply to this email if you have any questions about the tests
> that we
> >> ran or if you have any suggestions on how to make future tests more
> effective.
> >>
> >>          ,-.   ,-.
> >>         ( C ) ( K )  Continuous
> >>          `-',-.`-'   Kernel
> >>            ( I )     Integration
> >>             `-'
> >>
> _________________________________________________________________________=
_____
> >>
> >> Compile testing
> >> ---------------
> >>
> >> We compiled the kernel for 3 architectures:
> >>
> >>      aarch64:
> >>        make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pk=
g
> >>
> >>      ppc64le:
> >>        make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-=
pkg
> >>
> >>      x86_64:
> >>        make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pk=
g
> >>
> >>
> >> We built the following selftests:
> >>
> >>    x86_64:
> >>        net: fail
> >>        bpf: fail
> >>        install and packaging: fail
> >>
> >> You can find the full log (build-selftests.log) in the artifact storag=
e
> above.
> >>
> >>
> >> Hardware testing
> >> ----------------
> >> We booted each kernel and ran the following tests:
> >>
> >>    aarch64:
> >>      Host 1:
> >>         =E2=9C=85 Boot test
> >>         =E2=9D=8C selinux-policy: serge-testsuite
> >>         =E2=9C=85 lvm thinp sanity
> >>         =E2=9C=85 storage: software RAID testing
> >>         =E2=9C=85 stress: stress-ng
> >>         =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
> >>         =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
> >>         =F0=9F=9A=A7 =E2=9C=85 Storage blktests
> >>         =F0=9F=9A=A7 =E2=9D=8C Storage nvme - rdma
> >>         =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
> >>         =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test
> >>         =F0=9F=9A=A7 =E2=9D=8C storage: iSCSI parameters
> >>
> >>      Host 2:
> >>
> >>         =E2=9A=A1 Internal infrastructure issues prevented one or more=
 tests
> (marked
> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archite=
cture.
> >>         This is not the fault of the kernel that was tested.
> >>
> >>         =E2=9C=85 Boot test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
> >>
> >>      Host 3:
> >>
> >>         =E2=9A=A1 Internal infrastructure issues prevented one or more=
 tests
> (marked
> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archite=
cture.
> >>         This is not the fault of the kernel that was tested.
> >>
> >>         =E2=9C=85 Boot test
> >>         =E2=9C=85 ACPI table test
> >>         =E2=9C=85 LTP lite
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utilit=
y)
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking MACsec: sanity
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking sctp-auth: sockopts tes=
t
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic te=
st
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tr=
ansport
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tu=
nnel
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Ele=
ment test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex - version 1.9-29
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Syscalls: nrdiff
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suit=
es
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Trinity Fuzzer - Tier=
1
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kasl=
r
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP: openposix test s=
uite
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sani=
ty
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: ipv6/Fuji=
tsu-socketapi-test
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: =
basic netfilter test
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuit=
e test
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: dm/common
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libhugetlbfs - versio=
n 2.2.1
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
> >>
> >>      Host 4:
> >>
> >>         =E2=9A=A1 Internal infrastructure issues prevented one or more=
 tests
> (marked
> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archite=
cture.
> >>         This is not the fault of the kernel that was tested.
> >>
> >>         =E2=9C=85 Boot test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
> >>
> >>      Host 5:
> >>
> >>         =E2=9A=A1 Internal infrastructure issues prevented one or more=
 tests
> (marked
> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archite=
cture.
> >>         This is not the fault of the kernel that was tested.
> >>
> >>         =E2=9C=85 Boot test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
> >>
> >>    ppc64le:
> >>      Host 1:
> >>
> >>         =E2=9A=A1 Internal infrastructure issues prevented one or more=
 tests
> (marked
> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archite=
cture.
> >>         This is not the fault of the kernel that was tested.
> >>
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
> >>
> >>      Host 2:
> >>
> >>         =E2=9A=A1 Internal infrastructure issues prevented one or more=
 tests
> (marked
> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archite=
cture.
> >>         This is not the fault of the kernel that was tested.
> >>
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP lite
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utilit=
y)
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking MACsec: sanity
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking sctp-auth: sockopts tes=
t
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic te=
st
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tu=
nnel
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Ele=
ment test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex - version 1.9-29
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Syscalls: nrdiff
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suit=
es
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Trinity Fuzzer - Tier=
1
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kasl=
r
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP: openposix test s=
uite
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sani=
ty
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: ipv6/Fuji=
tsu-socketapi-test
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: =
basic netfilter test
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuit=
e test
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: dm/common
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libhugetlbfs - versio=
n 2.2.1
> >>
> >>      Host 3:
> >>
> >>         =E2=9A=A1 Internal infrastructure issues prevented one or more=
 tests
> (marked
> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archite=
cture.
> >>         This is not the fault of the kernel that was tested.
> >>
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm thinp sanity
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - rdma
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm=
 raid_module test
> >>
> >>      Host 4:
> >>
> >>         =E2=9A=A1 Internal infrastructure issues prevented one or more=
 tests
> (marked
> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archite=
cture.
> >>         This is not the fault of the kernel that was tested.
> >>
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm thinp sanity
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - rdma
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm=
 raid_module test
> >>
> >>      Host 5:
> >>
> >>         =E2=9A=A1 Internal infrastructure issues prevented one or more=
 tests
> (marked
> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archite=
cture.
> >>         This is not the fault of the kernel that was tested.
> >>
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm thinp sanity
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - rdma
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm=
 raid_module test
> >>
> >>    x86_64:
> >>      Host 1:
> >>
> >>         =E2=9A=A1 Internal infrastructure issues prevented one or more=
 tests
> (marked
> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archite=
cture.
> >>         This is not the fault of the kernel that was tested.
> >>
> >>         =E2=9C=85 Boot test
> >>         =E2=9D=8C selinux-policy: serge-testsuite
> >>         =E2=9C=85 lvm thinp sanity
> >>         =E2=9C=85 storage: software RAID testing
> >>         =E2=9C=85 stress: stress-ng
> >>         =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
> >>         =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
> >>         =F0=9F=9A=A7 =E2=9C=85 Storage blktests
> >>         =F0=9F=9A=A7 =E2=9D=8C Storage nvme - rdma
> >>         =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl =
test suite
> >>         =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test
> >>         =F0=9F=9A=A7 =E2=9D=8C storage: iSCSI parameters
> >>
> >>      Host 2:
> >>         =E2=9C=85 Boot test
> >>         =E2=9C=85 kdump - sysrq-c
> >>         =F0=9F=9A=A7 =E2=9C=85 kdump - file-load
> >>
> >>      Host 3:
> >>         =E2=9C=85 Boot test
> >>         =E2=9C=85 ACPI table test
> >>         =E2=9D=8C LTP lite
> >>         =F0=9F=92=A5 LTP
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utilit=
y)
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking MACsec: sanity
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking sctp-auth: sockopts tes=
t
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic te=
st
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tr=
ansport
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tu=
nnel
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: sanity smoke test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Ele=
ment test
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex - version 1.9-29
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Syscalls: nrdiff
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suit=
es
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Trinity Fuzzer - Tier=
1
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kasl=
r
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP: openposix test s=
uite
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sani=
ty
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: ipv6/Fuji=
tsu-socketapi-test
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: =
basic netfilter test
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuit=
e test
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: dm/common
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libhugetlbfs - versio=
n 2.2.1
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Tracepoints: operatio=
nal test
> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
> >>
> >>    Test sources: https://gitlab.com/cki-project/kernel-tests
> >>      =F0=9F=92=9A Pull requests are welcome for new tests or improveme=
nts to
> existing tests!
> >>
> >> Aborted tests
> >> -------------
> >> Tests that didn't complete running successfully are marked with =E2=9A=
=A1=E2=9A=A1=E2=9A=A1.
> >> If this was caused by an infrastructure issue, we try to mark that
> >> explicitly in the report.
> >>
> >> Waived tests
> >> ------------
> >> If the test run included waived tests, they are marked with =F0=9F=9A=
=A7. Such
> tests are
> >> executed but their results are not taken into account. Tests are waive=
d
> when
> >> their results are not reliable enough, e.g. when they're just
> introduced or are
> >> being fixed.
> >>
> >> Testing timeout
> >> ---------------
> >> We aim to provide a report within reasonable timeframe. Tests that
> haven't
> >> finished running yet are marked with =E2=8F=B1.
> >>
> >> --
> >> You received this message because you are subscribed to the Google
> Groups "Clang Built Linux" group.
> >> To unsubscribe from this group and stop receiving emails from it, send
> an email to clang-built-linux+unsubscribe@googlegroups.com.
> >> To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/cki.C90653A6EF.V9S14C=
F2MY%40redhat.com
> .
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/5877bb33-ba17-6459-41=
0c-1c51bd193481%40redhat.com
> .
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUWTia0CS5nrdGx7oE%2BZj_J3oC4id6U3jpVbUgqVosoFxw%4=
0mail.gmail.com.

--00000000000049501905ba7562bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 3, 2021 at 9:45 PM Rachel=
 Sibley &lt;<a href=3D"mailto:rasibley@redhat.com" target=3D"_blank">rasibl=
ey@redhat.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><br>
<br>
On 2/3/21 1:03 PM, Nathan Chancellor wrote:<br>
&gt; On Wed, Feb 03, 2021 at 01:58:32AM -0000, CKI Project wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hello,<br>
&gt;&gt;<br>
&gt;&gt; We ran automated tests on a recent commit from this kernel tree:<b=
r>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Kernel repo: <a href=3D"https://g=
it.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git" rel=3D"noreferre=
r" target=3D"_blank">https://git.kernel.org/pub/scm/linux/kernel/git/torval=
ds/linux.git</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Commit: 3aaf0a27ff=
c2 - Merge tag &#39;clang-format-for-linux-v5.11-rc7&#39; of git://<a href=
=3D"http://github.com/ojeda/linux" rel=3D"noreferrer" target=3D"_blank">git=
hub.com/ojeda/linux</a><br>
&gt;&gt;<br>
&gt;&gt; The results of these automated tests are provided below.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Overall result: FAILED (see details below)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Merge: OK<br=
>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Compile: OK<br>
&gt;&gt;=C2=A0 =C2=A0Selftests compile: FAILED<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Tests: PANIC=
KED<br>
&gt;&gt;<br>
&gt;&gt; All kernel binaries, config files, and logs are available for down=
load here:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 <a href=3D"https://arr-cki-prod-datawarehouse-public.=
s3.amazonaws.com/index.html?prefix=3Ddatawarehouse-public/2021/02/02/622905=
" rel=3D"noreferrer" target=3D"_blank">https://arr-cki-prod-datawarehouse-p=
ublic.s3.amazonaws.com/index.html?prefix=3Ddatawarehouse-public/2021/02/02/=
622905</a><br>
&gt;&gt;<br>
&gt;&gt; One or more kernel tests failed:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 aarch64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9D=8C selinux-policy: serge-testsuit=
e<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 x86_64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9D=8C selinux-policy: serge-testsuit=
e<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9D=8C LTP lite<br>
&gt; <br>
&gt; These should be the failures for this particular set of tests correct?=
<br>
&gt; <br>
&gt; <a href=3D"https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/=
datawarehouse-public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/=
LTP_lite/9507327_x86_64_1_RHELKT1LITE.FILTERED.fail.log" rel=3D"noreferrer"=
 target=3D"_blank">https://arr-cki-prod-datawarehouse-public.s3.amazonaws.c=
om/datawarehouse-public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tes=
ts/LTP_lite/9507327_x86_64_1_RHELKT1LITE.FILTERED.fail.log</a><br>
&gt; <br>
&gt; I am curious, is there any way to get a side by side comparison of the=
<br>
&gt; test results between GCC and clang? In other words, I would like to kn=
ow<br>
&gt; if a test is failing with both compilers versus just clang. This would=
<br>
&gt; help us understand if it is a compiler specific issue or something tha=
t<br>
&gt; broke the kernel.<br>
&gt; <br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=92=A5 LTP<br>
&gt; <br>
&gt;&gt;From what I can tell:<br>
&gt; <br>
&gt; [12262.428593] general protection fault, probably for non-canonical ad=
dress 0x8bc08b308b608b5: 0000 [#1] SMP PTI<br>
&gt; [12262.428810] CPU: 1 PID: 465515 Comm: proc01 Not tainted 5.11.0-rc6 =
#1<br>
&gt; [12262.428810] Hardware name: Red Hat KVM, BIOS 0.5.1 01/01/2007<br>
&gt; [12262.428810] RIP: 0010:string+0x50/0x110<br>
&gt; [12262.428810] Code: ce 48 c1 fe 30 85 f6 0f 84 be 00 00 00 31 c0 eb 1=
5 66 0f 1f 84 00 00 00 00 00 48 83 c0 01 39 c6 0f 84 ac 00 00 00 4c 8d 0c 0=
7 &lt;45&gt; 0f b6 14 00 45 84 d2 0f 84 a2 00 00 00 49 39 d1 73 dd 45 88 11=
<br>
&gt; [12262.428810] RSP: 0018:ffffb1ea012bbc40 EFLAGS: 00010246<br>
&gt; [12262.428810] RAX: 0000000000000000 RBX: ffff9ea25e9ea03e RCX: ffff0a=
00ffffff04<br>
&gt; [12262.428810] RDX: ffff9ea25e9eb000 RSI: ffffffffffffffff RDI: ffff9e=
a25e9ea03e<br>
&gt; [12262.428810] RBP: ffffffff8f5c95f1 R08: 08bc08b308b608b5 R09: ffff9e=
a25e9ea03e<br>
&gt; [12262.428810] R10: 0000001000000000 R11: ffffffff8e212401 R12: ffff9e=
a25e9eb000<br>
&gt; [12262.428810] R13: ffffffff8f5c95f3 R14: 0000000000000002 R15: ffffb1=
ea012bbca0<br>
&gt; [12262.428810] FS:=C2=A0 00007fab43075740(0000) GS:ffff9ea35bd00000(00=
00) knlGS:0000000000000000<br>
&gt; [12262.428810] CS:=C2=A0 0010 DS: 0000 ES: 0000 CR0: 0000000080050033<=
br>
&gt; [12262.428810] CR2: 00005584bb6dba68 CR3: 0000000111bbe000 CR4: 000000=
00000006e0<br>
&gt; [12262.428810] DR0: 0000000000000001 DR1: 0000000000000000 DR2: 000000=
0000000000<br>
&gt; [12262.428810] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 000000=
0000000600<br>
&gt; [12262.428810] Call Trace:<br>
&gt; [12262.428810]=C2=A0 vsnprintf+0x570/0x710<br>
&gt; [12262.428810]=C2=A0 seq_printf+0x6b/0x90<br>
&gt; [12262.428810]=C2=A0 ? lock_acquire+0x27/0x280<br>
&gt; [12262.428810]=C2=A0 ? mod_objcg_state+0xd2/0x160<br>
&gt; [12262.428810]=C2=A0 ? vsnprintf+0x32f/0x710<br>
&gt; [12262.428810]=C2=A0 print_name+0x46/0xc0<br>
&gt; [12262.428810]=C2=A0 ? seq_printf+0x6b/0x90<br>
&gt; [12262.428810]=C2=A0 ? __kmalloc_node+0xaf/0x340<br>
&gt; [12262.428810]=C2=A0 ? lock_acquire+0x27/0x280<br>
&gt; [12262.428810]=C2=A0 ? kvmalloc_node+0x4b/0x90<br>
&gt; [12262.428810]=C2=A0 lc_show+0x82/0xe0<br>
&gt; [12262.428810]=C2=A0 seq_read_iter+0x311/0x420<br>
&gt; [12262.428810]=C2=A0 proc_reg_read_iter+0x3f/0x80<br>
&gt; [12262.428810]=C2=A0 vfs_read+0x2c3/0x340<br>
&gt; [12262.428810]=C2=A0 ksys_read+0x5f/0xb0<br>
&gt; [12262.428810]=C2=A0 do_syscall_64+0x33/0x40<br>
&gt; [12262.428810]=C2=A0 entry_SYSCALL_64_after_hwframe+0x44/0xa9<br>
&gt; [12262.428810] RIP: 0033:0x7fab4318791d<br>
&gt; [12262.428810] Code: 0f 1f 44 00 00 48 8b 0d 51 45 0b 00 45 31 c0 64 8=
3 39 0b 75 d2 eb c0 e8 b1 fb ff ff 90 f3 0f 1e fa 48 39 ca 77 2b 31 c0 0f 0=
5 &lt;48&gt; 3d 00 f0 ff ff 77 0b c3 66 2e 0f 1f 84 00 00 00 00 00 48 8b 15=
<br>
&gt; [12262.428810] RSP: 002b:00007ffcaeb265b8 EFLAGS: 00000246 ORIG_RAX: 0=
000000000000000<br>
&gt; [12262.428810] RAX: ffffffffffffffda RBX: 00007ffcaeb27730 RCX: 00007f=
ab4318791d<br>
&gt; [12262.428810] RDX: 0000000000000400 RSI: 000000000044b820 RDI: 000000=
0000000005<br>
&gt; [12262.428810] RBP: 0000000000008000 R08: 0000000000000000 R09: 00007f=
fcaeb27520<br>
&gt; [12262.428810] R10: 0000000000000000 R11: 0000000000000246 R12: 000000=
0000000000<br>
&gt; [12262.428810] R13: 0000000000000005 R14: 0000000000000000 R15: 000000=
0000000000<br>
&gt; [12262.428810] Modules linked in: snd_seq_dummy minix snd_hrtimer snd_=
seq snd_seq_device authenc pcrypt crypto_user sha3_generic algif_hash salsa=
20_generic binfmt_misc n_gsm pps_ldisc slcan ppp_synctty n_hdlc mkiss ax25 =
ppp_async ppp_generic slip slhc nfsv3 nfs_acl nfs nfs_ssc fscache lockd gra=
ce rds tun brd overlay exfat vfat fat xfs sctp tcp_diag udp_diag inet_diag =
rfkill sunrpc snd_hda_codec_generic ledtrig_audio snd_hda_intel snd_intel_d=
spcfg soundwire_intel soundwire_generic_allocation snd_soc_core snd_compres=
s snd_pcm_dmaengine soundwire_cadence snd_hda_codec snd_hda_core ac97_bus s=
nd_hwdep snd_pcm joydev snd_timer snd virtio_net soundcore net_failover pcs=
pkr virtio_balloon failover i2c_piix4 fuse zram ip_tables x_tables cirrus d=
rm_kms_helper cec virtio_blk drm serio_raw ata_generic pata_acpi floppy btr=
fs raid6_pq xor [last unloaded: can]<br>
&gt; [12262.462039] ---[ end trace f683b95858968bee ]---<br>
&gt; <br>
&gt; I cannot reproduce this in QEMU with a Debian rootfs with the supplied=
<br>
&gt; configuration file though, proc01 -m 128 passes for me.<br>
<br>
Hi Nathan,<br>
<br>
We recently moved the mainline tree to use Fedora Rawhide as the base distr=
o, this helps out kdump and other tests which require<br>
updated user space for testing. As a result, there were a few tests that sh=
ouldn&#39;t have run like LTP Lite. So the log you linked<br>
above is not related to the panic:<br>
<a href=3D"https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/dataw=
arehouse-public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LTP_l=
ite/9507327_x86_64_1_RHELKT1LITE.FILTERED.fail.log" rel=3D"noreferrer" targ=
et=3D"_blank">https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/da=
tawarehouse-public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LT=
P_lite/9507327_x86_64_1_RHELKT1LITE.FILTERED.fail.log</a><br>
<br>
This is the version of LTP we run for internal RHEL kernels and therefore i=
sn&#39;t supported against upstream kernels. I&#39;m working on a fix<br>
for this now and should be resolved soon, sorry about that.<br>
<br>
As far as the panic, it was was triggered on our upstream LTP test, I don&#=
39;t have a corresponding x86_64/LTP mainline(GCC) job since there is a BPF=
<br>
bug which is causing our jobs to abort while updating the kernel for x86. Y=
ou will see the following in the logs:<br>
<br>
&#39;failed to validate module [something] BTF: -22 &#39;<br></blockquote><=
div><br></div><div>Guess this is with=C2=A0<span style=3D"font-family:monos=
pace;color:rgb(0,0,0)">CONFIG_DEBUG_INFO_</span><span style=3D"font-family:=
monospace;font-weight:bold;color:rgb(255,84,84)">BTF=3Dy and LLVM/Clang?</s=
pan></div><div><span style=3D"font-family:monospace;font-weight:bold;color:=
rgb(255,84,84)"><br></span></div><div><font color=3D"#ff5454" face=3D"monos=
pace"><b>Today, I played with above and diverse DWARF version settings.</b>=
</font></div><div><font color=3D"#ff5454" face=3D"monospace"><b>Even recent=
 pahole from Git in combination with up-to-date LLVM/Clang is incompatible =
with DWARF-v4 and DWARF-v5.</b></font></div><div><font color=3D"#ff5454" fa=
ce=3D"monospace"><b>Means all my builds were broken.</b></font></div><div><=
font color=3D"#ff5454" face=3D"monospace"><b><br></b></font></div><div>Mark=
 Wielaard says:<br></div><div>&quot;I would try to avoid using clang produc=
ing DWARF5. It clearly has some<br>incompatibilities with dwarves/pahole. I=
t should work if you don&#39;t set<br>DEBUG_INFO_DWARF5. Try GCC 11 (which =
defaults to -gdwarf-5) or an<br>earlier version (probably at least GCC 8 or=
 higher) using -gdwarf-5<br>explicitly.&quot;<br></div><div><br></div><div>=
If this is with=C2=A0CONFIG_DEBUG_INFO_BTF=3Dy you should make it unavailab=
le when CC_IS_CLANG=3Dy.</div><div><br></div><div>- Sedat -</div><div>=C2=
=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Here is a regular mainline job for reference where you can it:<br>
<a href=3D"https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/dataw=
arehouse-public/2021/02/02/622904/build_x86_64_redhat%3A1092352/tests/95075=
13_x86_64_1_console.log" rel=3D"noreferrer" target=3D"_blank">https://arr-c=
ki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-public/2021/02/=
02/622904/build_x86_64_redhat%3A1092352/tests/9507513_x86_64_1_console.log<=
/a><br>
<br>
As far as comparing tests for mainline run with gcc vs clang, we don&#39;t =
email an upstream ML for regular mainline, so nothing archived.<br>
However, the logs are still published externally and we can always link the=
m here for comparison.<br>
<br>
If you like, we could start forwarding you reports for both ? Otherwise, we=
 are working on publishing our results database we use internally,<br>
but this will take some time.<br>
<br>
Thanks,<br>
Rachel<br>
<br>
&gt; <br>
&gt; Cheers,<br>
&gt; Nathan<br>
&gt; <br>
&gt;&gt; We hope that these logs can help you find the problem quickly. For=
 the full<br>
&gt;&gt; detail on our testing procedures, please scroll to the bottom of t=
his message.<br>
&gt;&gt;<br>
&gt;&gt; Please reply to this email if you have any questions about the tes=
ts that we<br>
&gt;&gt; ran or if you have any suggestions on how to make future tests mor=
e effective.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ,-.=C2=A0 =C2=A0,-.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0( C ) ( K )=C2=A0 Continuous<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 `-&#39;,-.`-&#39;=C2=A0 =C2=A0Ke=
rnel<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ( I )=C2=A0 =C2=A0 =C2=A0=
Integration<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0`-&#39;<br>
&gt;&gt; __________________________________________________________________=
____________<br>
&gt;&gt;<br>
&gt;&gt; Compile testing<br>
&gt;&gt; ---------------<br>
&gt;&gt;<br>
&gt;&gt; We compiled the kernel for 3 architectures:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 aarch64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 make options: make LLVM=3D1 -j30 INSTAL=
L_MOD_STRIP=3D1 targz-pkg<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 ppc64le:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 make options: make CC=3Dclang -j30 INST=
ALL_MOD_STRIP=3D1 targz-pkg<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 x86_64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 make options: make LLVM=3D1 -j30 INSTAL=
L_MOD_STRIP=3D1 targz-pkg<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; We built the following selftests:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 x86_64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 net: fail<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 bpf: fail<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 install and packaging: fail<br>
&gt;&gt;<br>
&gt;&gt; You can find the full log (build-selftests.log) in the artifact st=
orage above.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Hardware testing<br>
&gt;&gt; ----------------<br>
&gt;&gt; We booted each kernel and ran the following tests:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 aarch64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 1:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9D=8C selinux-policy: serge-t=
estsuite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 lvm thinp sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 storage: software RAID =
testing<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 stress: stress-ng<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 xfstests -=
 ext4<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 xfstests -=
 xfs<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 Storage bl=
ktests<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9D=8C Storage nv=
me - rdma<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 Storage nv=
me - tcp<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 Storage: s=
wraid mdadm raid_module test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9D=8C storage: i=
SCSI parameters<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 2:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump=
 - sysrq-c<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 kdump - file-load<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 3:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 ACPI table test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 LTP lite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP<b=
r>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopd=
ev Sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Memor=
y function: memfd_create<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU =
(Abstract Machine Test Utility)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking bridge: sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking MACsec: sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking socket: fuzz<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking sctp-auth: sockopts test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking: igmp conformance test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route: pmtu<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route_func - local<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route_func - forward<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking TCP: keepalive test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking UDP: socket<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: geneve basic test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: gre basic<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP =
basic test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: vxlan basic<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking ipsec: basic netns - transport<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking ipsec: basic netns - tunnel<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkc=
api AF_ALG test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 pciut=
ils: update pci ids test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA =
PCM loopback test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA =
Control (mixer) Userspace Element test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex =
- version 1.9-29<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 stora=
ge: SCSI VPD<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Sysca=
lls: nrdiff<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 CIFS Connectathon<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 POSIX pjd-fstest suites<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Trinity Fuzzer - Tier1<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Memory function: kaslr<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 LTP: openposix test suite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Ethernet drivers sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Networking: ipv6/Fujitsu-socketapi-test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Networking firewall: basic netfilter test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 audit: audit testsuite test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 storage: dm/common<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 trace: ftrace/tracer<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Libhugetlbfs - version 2.2.1<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 kdump - kexec_boot<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 4:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump=
 - sysrq-c<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 kdump - file-load<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 5:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump=
 - sysrq-c<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 kdump - file-load<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 ppc64le:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 1:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot =
test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump=
 - sysrq-c<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 kdump - file-load<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 2:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot =
test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP l=
ite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP<b=
r>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopd=
ev Sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Memor=
y function: memfd_create<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU =
(Abstract Machine Test Utility)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking bridge: sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking MACsec: sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking socket: fuzz<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking sctp-auth: sockopts test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route: pmtu<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route_func - local<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route_func - forward<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking TCP: keepalive test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking UDP: socket<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: geneve basic test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: gre basic<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP =
basic test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: vxlan basic<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking ipsec: basic netns - tunnel<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkc=
api AF_ALG test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 pciut=
ils: update pci ids test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA =
PCM loopback test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA =
Control (mixer) Userspace Element test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex =
- version 1.9-29<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Sysca=
lls: nrdiff<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 CIFS Connectathon<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 POSIX pjd-fstest suites<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Trinity Fuzzer - Tier1<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Memory function: kaslr<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 LTP: openposix test suite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Ethernet drivers sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Networking: ipv6/Fujitsu-socketapi-test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Networking firewall: basic netfilter test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 audit: audit testsuite test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 storage: dm/common<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 trace: ftrace/tracer<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Libhugetlbfs - version 2.2.1<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 3:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot =
test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 selin=
ux-policy: serge-testsuite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm t=
hinp sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 stora=
ge: software RAID testing<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 xfstests - ext4<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 xfstests - xfs<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage blktests<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvme - rdma<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvme - tcp<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage: swraid mdadm raid_module test<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 4:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot =
test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 selin=
ux-policy: serge-testsuite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm t=
hinp sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 stora=
ge: software RAID testing<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 xfstests - ext4<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 xfstests - xfs<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage blktests<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvme - rdma<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvme - tcp<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage: swraid mdadm raid_module test<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 5:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot =
test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 selin=
ux-policy: serge-testsuite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm t=
hinp sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 stora=
ge: software RAID testing<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 xfstests - ext4<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 xfstests - xfs<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage blktests<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvme - rdma<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvme - tcp<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage: swraid mdadm raid_module test<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 x86_64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 1:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9D=8C selinux-policy: serge-t=
estsuite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 lvm thinp sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 storage: software RAID =
testing<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 stress: stress-ng<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 xfstests -=
 ext4<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 xfstests -=
 xfs<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 Storage bl=
ktests<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9D=8C Storage nv=
me - rdma<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9D=8C Storage nv=
me - tcp<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvdimm ndctl test suite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 Storage: s=
wraid mdadm raid_module test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9D=8C storage: i=
SCSI parameters<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 2:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 kdump - sysrq-c<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 kdump - fi=
le-load<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 3:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 ACPI table test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9D=8C LTP lite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=92=A5 LTP<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopd=
ev Sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Memor=
y function: memfd_create<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU =
(Abstract Machine Test Utility)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking bridge: sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking MACsec: sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking socket: fuzz<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking sctp-auth: sockopts test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking: igmp conformance test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route: pmtu<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route_func - local<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route_func - forward<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking TCP: keepalive test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking UDP: socket<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: geneve basic test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: gre basic<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP =
basic test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: vxlan basic<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking ipsec: basic netns - transport<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking ipsec: basic netns - tunnel<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkc=
api AF_ALG test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 pciut=
ils: sanity smoke test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 pciut=
ils: update pci ids test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA =
PCM loopback test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA =
Control (mixer) Userspace Element test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex =
- version 1.9-29<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 stora=
ge: SCSI VPD<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Sysca=
lls: nrdiff<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 CIFS Connectathon<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 POSIX pjd-fstest suites<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Trinity Fuzzer - Tier1<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Memory function: kaslr<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 LTP: openposix test suite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Ethernet drivers sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Networking: ipv6/Fujitsu-socketapi-test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Networking firewall: basic netfilter test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 audit: audit testsuite test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 storage: dm/common<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 trace: ftrace/tracer<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Libhugetlbfs - version 2.2.1<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Tracepoints: operational test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 kdump - kexec_boot<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 Test sources: <a href=3D"https://gitlab.com/cki-proje=
ct/kernel-tests" rel=3D"noreferrer" target=3D"_blank">https://gitlab.com/ck=
i-project/kernel-tests</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =F0=9F=92=9A Pull requests are welcome for new=
 tests or improvements to existing tests!<br>
&gt;&gt;<br>
&gt;&gt; Aborted tests<br>
&gt;&gt; -------------<br>
&gt;&gt; Tests that didn&#39;t complete running successfully are marked wit=
h =E2=9A=A1=E2=9A=A1=E2=9A=A1.<br>
&gt;&gt; If this was caused by an infrastructure issue, we try to mark that=
<br>
&gt;&gt; explicitly in the report.<br>
&gt;&gt;<br>
&gt;&gt; Waived tests<br>
&gt;&gt; ------------<br>
&gt;&gt; If the test run included waived tests, they are marked with =F0=9F=
=9A=A7. Such tests are<br>
&gt;&gt; executed but their results are not taken into account. Tests are w=
aived when<br>
&gt;&gt; their results are not reliable enough, e.g. when they&#39;re just =
introduced or are<br>
&gt;&gt; being fixed.<br>
&gt;&gt;<br>
&gt;&gt; Testing timeout<br>
&gt;&gt; ---------------<br>
&gt;&gt; We aim to provide a report within reasonable timeframe. Tests that=
 haven&#39;t<br>
&gt;&gt; finished running yet are marked with =E2=8F=B1.<br>
&gt;&gt;<br>
&gt;&gt; -- <br>
&gt;&gt; You received this message because you are subscribed to the Google=
 Groups &quot;Clang Built Linux&quot; group.<br>
&gt;&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegr=
oups.com" target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com<=
/a>.<br>
&gt;&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/clang-built-linux/cki.C90653A6EF.V9S14CF2MY%40redhat.co=
m" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/c=
lang-built-linux/cki.C90653A6EF.V9S14CF2MY%40redhat.com</a>.<br>
&gt; <br>
&gt; <br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups.com"=
 target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/5877bb33-ba17-6459-410c-1c51bd193481%40redhat.=
com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid=
/clang-built-linux/5877bb33-ba17-6459-410c-1c51bd193481%40redhat.com</a>.<b=
r>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BicZUWTia0CS5nrdGx7oE%2BZj_J3oC4id6U3jpVbU=
gqVosoFxw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWTia0CS5nrdGx7oE%2BZj_=
J3oC4id6U3jpVbUgqVosoFxw%40mail.gmail.com</a>.<br />

--00000000000049501905ba7562bf--
