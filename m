Return-Path: <clang-built-linux+bncBCP7VQF36ABBBT7VWDZAKGQEKDVRWBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2B1162FED
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 20:28:17 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id v188sf8594633vkf.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 11:28:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582054095; cv=pass;
        d=google.com; s=arc-20160816;
        b=oKEOw3eLhd2woBmGBpn6kLkphcRCvFw870sgP1xeUQb8HuH4oLP7FxYCGrCv3xpJKQ
         1tcCvE2tjCT6U4tdEBxsE/hrNqUhTJS/5PX4RKmNRBE+8ObFtRamOxw7viDIHKKM0kSN
         22NEEjxuk8shl1tKAVUpeHzysPpUfZDRhMuKqxIs2P6zOtxWCv7tujj5TRh6nWy5x0Fh
         e7/4SHC/u0x6GA+k7rbO9txOwRZIL3JGyacuDD/Uv9qc0VwSeb/NTg92eaH2iHXAiol1
         1qeIaCgYtcap9PwKXGuyjB6T3SHJj5Lru7NFcK7bcu/CQ7C0kBc/pY2pcxHNJYlHgATm
         oDmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:message-id:to:from:cc:in-reply-to:subject:date
         :dkim-signature;
        bh=uWgBZRANoH1H6GOjRIcOzYPQpMWqVXLhBuSp8VeR0SY=;
        b=bTYHM9LzCRNdadKIERAALtQPXuGBwE2Zi0tp2wtrPyj5rwyLjLBrxIE6AJW3J34N3l
         bIMPy54R0rK0EjaTFolYHh6/DAMw7iBxjJ5z5Kst+HkpAH8wGN83Rrem7Lrr7bomVb0E
         TPZmV9B221VabdDJPc8RdDhyKcMCOEiuqbNHSNrrg+IZVl4SjZJJUIZVT1bFMCt8nsOa
         i7+6Ala0YKtna4NAyFl9ioQ4ayuJ3eR1rb+cbOyMy1yAich4pY+c/+NrNaHNl1Rbte3q
         d9B0eyQ5BoOhIWVT17KoMiGQBo+uvgnZIO6C/IN3gJO6CAc1wvKuVNFpNw9hOAVZ7JD6
         +GqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DvmqpHrn;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=uWgBZRANoH1H6GOjRIcOzYPQpMWqVXLhBuSp8VeR0SY=;
        b=qpd+c37JEzyMhl+oTSovmN9A8F4boLurUnBRAwKAFKMtZZTTeo3agd51AHRG/TRloC
         Oh7cHtcA2Ipvl/Ay40SlM8eRYzDFD+PWy0Uvx6sv43V1m2NmM8lQkmhPefvltCC8QKvl
         8hKpqAZ2lr7Qa1jgoTDMCohf8I9Bnpdo5bk5HV0rm/gBRd8vO5cQabj5efU3PU9mMy/f
         6OVcXc1QZh13d19MSwyys1nzz7DQ4WN5MmwgzAWVPeZSB6mjahKIhvv8mAHr7Gd0Y3lh
         9XqPV3DVBCyMt5+usyZXxyJ5u4gxj2Dd2YKdey/29XfpyOw6IFce3XhmpgyNxThQ9Yy/
         a1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uWgBZRANoH1H6GOjRIcOzYPQpMWqVXLhBuSp8VeR0SY=;
        b=XqHHPLtu3hgYbTUOEl0zvFjCq+6DMvtlPJazV5OzYW4rNNjXZrWn2xi1Vhii0sryc4
         cclGL8AlBA0Gyzvk21KU0vc80Fcm1Gxm5WOdgdu7jVCdOgq0RMdNeR+1BJy5oudRXVPt
         W0C/260+GAoSZM+SWzKooiJpRzLFYryql0xrvf67sQB3HLJqZtfMwHMGJQRO5pMf3k4H
         eREh/ys09CZI6/VQ0Ykq+1sCj+zeGLF6b8g9N24x5sbQnQ2LV5Z7HjleVXP4t8cmln3u
         six3oEySOUyJ9wWgy4+tjL7JIyU9zBlafKDzAvjSOpiDznN+5AAJlwV8X5TDn5viCfxN
         v4KQ==
X-Gm-Message-State: APjAAAVPnS6LdAxAJzcQ/TNzpqFqELv+LgI8jeAt83m+RO91CiBtzb/g
	NL24cz/maZtSy6MrsthBlwA=
X-Google-Smtp-Source: APXvYqzSyouN/ZaP4ZOHiH8I7V42QPlFDU6IthqW2/uMInckrQcz3JYZ0XlrWw3euiwE/oGx29Dg6A==
X-Received: by 2002:a67:e912:: with SMTP id c18mr11528033vso.72.1582054095657;
        Tue, 18 Feb 2020 11:28:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:20a9:: with SMTP id y9ls1012386ual.9.gmail; Tue, 18 Feb
 2020 11:28:15 -0800 (PST)
X-Received: by 2002:ab0:2ea6:: with SMTP id y6mr11450808uay.25.1582054095149;
        Tue, 18 Feb 2020 11:28:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582054095; cv=none;
        d=google.com; s=arc-20160816;
        b=coIZSnCcBgsSCo1x8sSICkW9ohBnNgBRYrJBcGJt6c4lX/RQsbLDXWevYDL8EVCWBL
         /UF+Kh8kqE6BGyd4dEO9bcQEstpkRuPfpyXP+bZ7M67CBp7I0fMTtxtST9B/34LL2aEW
         QLvtq/PYeXZmgdv50YBJqF4yypPUAmTLAvVGM8LB8sQookW+yMN0CfaW0EE4/pV5h/MX
         GQs/sOHm9L1PQ0perEYxjbB/vu6H+Um7BD/pSldsLSSPYh3PxbPC+ibsaN1Ecjysk4M3
         DwurnKycl/bB4RlzwJnFuk0oP4XpHPgpNbIIdwyZiIpBwZu6p4Hec7rA9JJZZKVUPhOv
         lieg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=zhYJCkJXlPxXtgjObEVr42uyGuLn0+lKW2wKfP/UpCE=;
        b=YVSX4ZnDLKXbbuiRk+RQIeVlhpgx43OVcanZe2c5VKqKaBBQ7kpnuj0OAY/mwWUOu5
         tUaNjlF9+Nb21BvSt41nZoC2oKOrVPiAx4R6/uQDftXxkh/346D/Zj0ynrk7oEwso4Cl
         K9gzDRHgMi8TBcUMRYsBz+LOoNpAemDN7I7f4J4JAmC0tAeLXgd4f2vcN9I1wz4BQQwM
         /89JVZSh7XKH/W55dvPrfXY/V2O2eSRzMNxTllgzMMJC+NIohExxIBNEK/9x0aP9BdqG
         9ksdskAnxQmcnYdLzMqTB177UFjzv/W1U1hmiGtC85NkNvtKvresJmmao1WzcsNbyGP3
         v/Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DvmqpHrn;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id n5si230840vsm.0.2020.02.18.11.28.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 11:28:15 -0800 (PST)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id k29so11125819pfp.13
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 11:28:15 -0800 (PST)
X-Received: by 2002:a62:cfc1:: with SMTP id b184mr22611022pfg.55.1582054093924;
        Tue, 18 Feb 2020 11:28:13 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
        by smtp.gmail.com with ESMTPSA id q12sm4931028pfh.158.2020.02.18.11.28.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 11:28:13 -0800 (PST)
Date: Tue, 18 Feb 2020 11:28:13 -0800 (PST)
Subject: Re: arm64: bpf: Elide some moves to a0 after calls
In-Reply-To: <5e39d509c9edc_63882ad0d49345c08@john-XPS-13-9370.notmuch>
CC: Bjorn Topel <bjorn.topel@gmail.com>, daniel@iogearbox.net, ast@kernel.org,
  zlim.lnx@gmail.com, catalin.marinas@arm.com, will@kernel.org, kafai@fb.com, songliubraving@fb.com,
  yhs@fb.com, andriin@fb.com, shuah@kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
  clang-built-linux@googlegroups.com, kernel-team@android.com
From: "'Palmer Dabbelt' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: john.fastabend@gmail.com
Message-ID: <mhng-eae623ac-3032-4327-9b23-af9838e3e979@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: palmerdabbelt@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DvmqpHrn;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Palmer Dabbelt <palmerdabbelt@google.com>
Reply-To: Palmer Dabbelt <palmerdabbelt@google.com>
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

On Tue, 04 Feb 2020 12:33:13 PST (-0800), john.fastabend@gmail.com wrote:
> Bj=C3=B6rn T=C3=B6pel wrote:
>> On Tue, 28 Jan 2020 at 03:14, Palmer Dabbelt <palmerdabbelt@google.com> =
wrote:
>> >
>> > There's four patches here, but only one of them actually does anything=
.  The
>> > first patch fixes a BPF selftests build failure on my machine and has =
already
>> > been sent to the list separately.  The next three are just staged such=
 that
>> > there are some patches that avoid changing any functionality pulled ou=
t from
>> > the whole point of those refactorings, with two cleanups and then the =
idea.
>> >
>> > Maybe this is an odd thing to say in a cover letter, but I'm not actua=
lly sure
>> > this patch set is a good idea.  The issue of extra moves after calls c=
ame up as
>> > I was reviewing some unrelated performance optimizations to the RISC-V=
 BPF JIT.
>> > I figured I'd take a whack at performing the optimization in the conte=
xt of the
>> > arm64 port just to get a breath of fresh air, and I'm not convinced I =
like the
>> > results.
>> >
>> > That said, I think I would accept something like this for the RISC-V p=
ort
>> > because we're already doing a multi-pass optimization for shrinking fu=
nction
>> > addresses so it's not as much extra complexity over there.  If we do t=
hat we
>> > should probably start puling some of this code into the shared BPF com=
piler,
>> > but we're also opening the doors to more complicated BPF JIT optimizat=
ions.
>> > Given that the BPF JIT appears to have been designed explicitly to be
>> > simple/fast as opposed to perform complex optimization, I'm not sure t=
his is a
>> > sane way to move forward.
>> >
>>=20
>> Obviously I can only speak for myself and the RISC-V JIT, but given
>> that we already have opened the door for more advanced translations
>> (branch relaxation e.g.), I think that this makes sense. At the same
>> time we don't want to go all JVM on the JITs. :-P
>
> I'm not against it although if we start to go this route I would want som=
e
> way to quantify how we are increasing/descreasing load times.
>
>>=20
>> > I figured I'd send the patch set out as more of a question than anythi=
ng else.
>> > Specifically:
>> >
>> > * How should I go about measuring the performance of these sort of
>> >   optimizations?  I'd like to balance the time it takes to run the JIT=
 with the
>> >   time spent executing the program, but I don't have any feel for what=
 real BPF
>> >   programs look like or have any benchmark suite to run.  Is there som=
ething
>> >   out there this should be benchmarked against?  (I'd also like to kno=
w that to
>> >   run those benchmarks on the RISC-V port.)
>>=20
>> If you run the selftests 'test_progs' with -v it'll measure/print the
>> execution time of the programs. I'd say *most* BPF program invokes a
>> helper (via call). It would be interesting to see, for say the
>> selftests, how often the optimization can be performed.
>>=20
>> > * Is this the sort of thing that makes sense in a BPF JIT?  I guess I'=
ve just
>> >   realized I turned "review this patch" into a way bigger rabbit hole =
than I
>> >   really want to go down...
>> >
>>=20
>> I'd say 'yes'. My hunch, and the workloads I've seen, BPF programs are
>> usually loaded, and then resident for a long time. So, the JIT time is
>> not super critical. The FB/Cilium folks can definitely provide a
>> better sample point, than my hunch. ;-)
>
> In our case the JIT time can be relevant because we are effectively holdi=
ng
> up a kubernetes pod load waiting for programs to load. However, we can
> probably work-around it by doing more aggressive dynamic linking now that
> this is starting to land.
>
> It would be interesting to have a test to measure load time in selftests
> or selftests/benchmark/ perhaps. We have some of these out of tree we
> could push in I think if there is interest.

I'd be interested in some sort of benchmark suite for BPF.  Something like
selftests/bpf/benchmarks/ seems like a reasonable place to me.

>
>>=20
>>=20
>> Bj=C3=B6rn

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/mhng-eae623ac-3032-4327-9b23-af9838e3e979%40palmerdabbelt=
-glaptop1.
