Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBEVUQLYQKGQEPSTC25A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E96713E572
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:15:00 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id e10sf13711720qvq.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:15:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194899; cv=pass;
        d=google.com; s=arc-20160816;
        b=rW64GPLNMh0EMtWu/Mwsjx9vK7izVjdq7cw5p5B5tt5bhHlzN5yFhgvrwUD+6vYnew
         HZcOGGbrFRlmPs2mipeJTHFJDcRkD6Sr3Rhoyji7aj3VH8XT69YvWyhuesxrp1tBaIvX
         h/hQlYoCRgC17SEx6fvIPQOtbul4bAtpsKlUFo//4VJfBgBX2mCB/IWhv8yJtVi25ZOw
         /olIZrRktvomN2OBCdoGvT9pjfGCzOf03eIntMg85sKO4LHlXQHEnv4ogMu0scx0Z4Ml
         a8K/9XJyQn+2s9IxmqncYFCRSU+BDD3JLH2Im/S8rxcvMI/DPWqNe7zyGinyN7Wftker
         uVmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=GDWPcz2jO89mJxFtMhmTbcS2mh7D+1FbfvI7ODiOzSA=;
        b=x+sQXZNLqFD0LMQ8p3dyglK8fvbcMRKlVsNnXBiCFo73iCV2SrmoEnqvRVycphdRNc
         rfXct29X3Jc9nd49iwbbyMbGvvIZcxeRozYUfUbezdFLJR9rdSCutsqJpiuIZFY5gEkc
         w9gxwJnBFyH9kXOfD6P6gq8QyqeIt2LJHH5Zxm4hKQnR/xxX6OWD8zFFdF03qR3GlCKM
         cNcYPrsmkUxSuHZK5MSkoNyTPtucP6QMoE+JUzPE0DiATTBhyIKYRJTm8Ru09+ncQmKR
         lhof0iiKasPf9EY8rUyDVVopSatV2/Hq/7dNlMknYcnief5f/Y3tqJl8w7EfsAWUPVrn
         bsIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DujDkG5W;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GDWPcz2jO89mJxFtMhmTbcS2mh7D+1FbfvI7ODiOzSA=;
        b=iZ2oH9/rD0QVDYpNsqKMXLmo47n2rkbGV7+Zd8bXRdvS31o29CdJ/93ZqXAExkNRjB
         Hbg3EbwK8Pin/CM+b51+B0msG1vUJIC9JSltT4z6SKcDulxGe/ti4WCZoopcefaKDetv
         QfydCWztBnLcwf5dPdXXGYw4JWD+y2calQ62trIbA61QD2UtNKLuzXtc3KyRl4BbPr7p
         d6Cd9my7nm1fTiI/+7ZLK8cD0fyIkcECe0L6vRuR2vHAFO59dP/haiMm/2xXJn+iyYDn
         ZDfh8/DvxRNqaYzVsMcEhAFuNdPDsMYAY7LeY3FiSY8Y/Ro/W+NFu3AftMNBMfSGWaH0
         11Dg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GDWPcz2jO89mJxFtMhmTbcS2mh7D+1FbfvI7ODiOzSA=;
        b=bHO5Xgy+eBNPxDwqojuJCOzL1m2SawtZD03cQaguhtX9mHAzxHqnWqUEsMSR1NUFtx
         HQ+Xxz01elVWpXq4qL6zh4t+vDMARyFLCS5gB0fuakavIhEQGvF5/CfolTh3kihygpuu
         xLBPNtaI8RfcuaPvMuW2sofTtHAEIqCOqP+yRQWUU9SQ5SswUIel3ZmtXWgaDsAOgjq+
         yi9hTUBEtYgpMGTAFVnhdS8oMNaVquOr5SiBoPh6i5pWcz8ysdp2VTdqi2HjcL/bxNLp
         Wt/nIKNdTBr68B2fxQIWJY75LdhdnmXvEE1gBQek4Q9GanWe72mdzCmcEWzahpwxnw1K
         Orkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GDWPcz2jO89mJxFtMhmTbcS2mh7D+1FbfvI7ODiOzSA=;
        b=SiJWbDSUpoqVw0nFcHqPMimRjMMBDMo1GCJ3j5X8UT7MmcJi3a/W4dYGW0A/7tCICe
         NoKJ0aV8DkQzTfu/TTioYM2g5EuNv/cHisnhGaaLVBQBrWnZyhqFV7gTak5NDTyRVHH3
         QqX6gLWyGqr6lmYTfwB6YictdC8Sq4R25aESCc8UAXgROIQ9iJoOZbd2v4ufQnWeOVtq
         de5IXTdAO4Q6rze3GohRlzkLXjMjpLsdI4JbEyiF3f12OWVD/MrMo+FIcVawblvptfe5
         xYSfK4FWIf5oxAPD0mJF+B8HmkKn5kqYM8GdLTMxilO/WNV62ADGXf/hAAGrZtLY5Xca
         iQ7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWlBsPmL3xxG4NnyhmPubbDE34azfyzmdmHo/LaVO1BtqwbNa1D
	7ZvasfrGl2m0/NTx+aICHys=
X-Google-Smtp-Source: APXvYqwLNjWjLmwHMqH1gkbBovLT0h2rbHW0Dud8qU/UYuwJ/z+3+sMuYw5HU24Bg4f7zQ0E4sjiwA==
X-Received: by 2002:a37:6313:: with SMTP id x19mr32704975qkb.443.1579194898980;
        Thu, 16 Jan 2020 09:14:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:49b1:: with SMTP id u17ls4310757qvx.14.gmail; Thu, 16
 Jan 2020 09:14:58 -0800 (PST)
X-Received: by 2002:ad4:514e:: with SMTP id g14mr3684662qvq.196.1579194898597;
        Thu, 16 Jan 2020 09:14:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194898; cv=none;
        d=google.com; s=arc-20160816;
        b=pnYpAcyGqjGcMAB7d/mzhSzFWi8EuYvC03O1STggY90eT7hlI33iJDIM93DPOx4TQ8
         8wRdb26Sy0miQqYr2Y29DPofZ2lsc1noHFrminv6KBvnJo1VU/9ob7HwCxd9ERfQbBBb
         O/0Fw7GzK4rzzLvDWtf71h7KqaUygBudY8OvVU3pH62SfjaNTbReIaGjjDjH6p8+6zzR
         l6nQcnQFd+LJCjqVqMO3NDDY7iiJg6vcr3YGhax5h+QCt3zpIsniE99hIn9cX4OyvhkW
         57yCJEYLyf/ospG7VTJjSskRkmAw5uLKQMHhKpmVKtJZR1obRiK66+rrF0OXUMP1d9Pw
         DXEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qbPesbI6+o4JGTWaTpLZljTSTXaCbDPO7M6CK9Z7jy0=;
        b=MR0deRoL1VF2UvkFnRAeAjAanbemCWQADLyBxj+ntD+DxJOVlyq2TsnqqoCeEWxxtx
         Hlxk01bAqIolYT6NmKVE0OcGKXgzSmR8JR7wmanXBjYEqQm2u/+dqJZ5lLoE5Gl3/qS4
         WSSuaK7jIkTt03htLeqyqiaibNR732pjfrgRijj+Fi2CSggiPyFeO5UWj6TaL9kqRx2r
         F2UOQSXX7jJpYJ95pKxLyQzQbRVriFZetuJTx/TWn6pcjDn1N2izaatB3U3iXvJvIEV1
         +mVNm1ztIhhFhiPW3/zgToa+OXPmBmeQTWwLWoy0qqy8JBlPSTglWaIcP3F8KwqKaoge
         //Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DujDkG5W;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id i53si1081411qte.2.2020.01.16.09.14.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:14:58 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id k6so19811906qki.5
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 09:14:58 -0800 (PST)
X-Received: by 2002:a05:620a:5ae:: with SMTP id q14mr29954210qkq.437.1579194898228;
 Thu, 16 Jan 2020 09:14:58 -0800 (PST)
MIME-Version: 1.0
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
 <157909757089.1192265.9038866294345740126.stgit@toke.dk> <CAEf4BzbqY8zivZy637Xy=iTECzBAYQ7vo=M7TvsLM2Yp12bJpg@mail.gmail.com>
 <87v9pctlvn.fsf@toke.dk> <CAEf4BzZpGe-1S5_iwS8GBw9iiyFJmDUkOaO+2qaftRn_iy5cNA@mail.gmail.com>
 <87a76nu5yo.fsf@toke.dk>
In-Reply-To: <87a76nu5yo.fsf@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 16 Jan 2020 09:14:47 -0800
Message-ID: <CAEf4BzYLycZb+DBkao-jt+5sGgi3vbmzQ4Ogq9eRXZ+Jvew-ZA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2 02/10] tools/bpf/runqslower: Fix override
 option for VMLINUX_BTF
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
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
 header.i=@gmail.com header.s=20161025 header.b=DujDkG5W;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Jan 16, 2020 at 1:05 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> Andrii Nakryiko <andrii.nakryiko@gmail.com> writes:
>
> > On Wed, Jan 15, 2020 at 2:06 PM Toke H=C3=B8iland-J=C3=B8rgensen <toke@=
redhat.com> wrote:
> >>
> >> Andrii Nakryiko <andrii.nakryiko@gmail.com> writes:
> >>
> >> > On Wed, Jan 15, 2020 at 6:13 AM Toke H=C3=B8iland-J=C3=B8rgensen <to=
ke@redhat.com> wrote:
> >> >>
> >> >> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> >> >>
> >> >> The runqslower tool refuses to build without a file to read vmlinux=
 BTF
> >> >> from. The build fails with an error message to override the locatio=
n by
> >> >> setting the VMLINUX_BTF variable if autodetection fails. However, t=
he
> >> >> Makefile doesn't actually work with that override - the error messa=
ge is
> >> >> still emitted.
> >> >
> >> > Do you have example command with VMLINUX_BTF override that didn't wo=
rk
> >> > (and what error message was emitted)?
> >>
> >> Before this patch:
> >>
> >> $ cd ~/build/linux/tools/bpf/runqslower
> >> $ make
> >> Makefile:18: *** "Can't detect kernel BTF, use VMLINUX_BTF to specify =
it explicitly".  Stop.
> >>
> >> $ make VMLINUX_BTF=3D~/build/linux/vmlinux
> >> Makefile:18: *** "Can't detect kernel BTF, use VMLINUX_BTF to specify =
it explicitly".  Stop.
> >
> > Ok, so this is strange. Try make clean and run with V=3D1, it might hel=
p
> > to debug this. This could happen if ~/build/linux/vmlinux doesn't
> > exist, but I assume you double-checked that. It works for me just fine
> > (Makefile won't do VMLINUX_BTF :=3D assignment, if it's defined through
> > make invocation, so your change should be a no-op in that regard):
> >
> > $ make clean
> > $ make VMLINUX_BTF=3D~/linux-build/default/vmlinux V=3D1
> > ...
> > .output/sbin/bpftool btf dump file ~/linux-build/default/vmlinux
> > format c > .output/vmlinux.h
> > ...
> >
> > Wonder what your output looks like?
>
> $ make clean
> Makefile:18: *** "Can't detect kernel BTF, use VMLINUX_BTF to specify it =
explicitly".  Stop.
> $ make VMLINUX_BTF=3D~/build/linux/vmlinux V=3D1
> Makefile:18: *** "Can't detect kernel BTF, use VMLINUX_BTF to specify it =
explicitly".  Stop.
>
> Take another look at the relevant part of the makefile:
>
>   ifneq ("$(wildcard /sys/kernel/btf/vmlinux)","")
>   VMLINUX_BTF :=3D /sys/kernel/btf/vmlinux
>   else ifneq ("$(wildcard /boot/vmlinux-$(KERNEL_REL))","")
>   VMLINUX_BTF :=3D /boot/vmlinux-$(KERNEL_REL)
>   else
>   $(error "Can't detect kernel BTF, use VMLINUX_BTF to specify it explici=
tly")
>   endif
>
> That if/else doesn't actually consider the value of VMLINUX_BTF; so the
> override only works if one of the files being considered by the
> auto-detection actually exists... :)

Ah, right, unconditional $(error), completely missed that few times, thanks=
!

>
> -Toke
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzYLycZb%2BDBkao-jt%2B5sGgi3vbmzQ4Ogq9eRXZ%2BJvew-ZA=
%40mail.gmail.com.
