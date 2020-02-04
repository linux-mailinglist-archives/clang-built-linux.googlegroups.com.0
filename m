Return-Path: <clang-built-linux+bncBCUZHQPN7ADRBW4M47YQKGQE4GGBCDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id D77C0152116
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Feb 2020 20:30:37 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id l15sf12086138pgk.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Feb 2020 11:30:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580844636; cv=pass;
        d=google.com; s=arc-20160816;
        b=RStJyYF8erp7UM0FZKz9IbwfyOZoWIH2igdcNnGf+ZpTRcRp28dQpqYreb5PMrNa49
         aniONIrjavot9DqKnwoIAgbyCNIdOP66niCF81T9oafGiGEkpr4wHxWG0tSDtbD8k6xQ
         s/D938DLVbpZuB8G1vfSMj4iK6ksanU3iAjVL21Z1J1DUCKm34T8FAH9pDAxbKzhgwkh
         L8gTXm9lzQ+cUMzcwsuY2oYDsD7HEGSEpweQQDFBRl1HVYLhDZFm/i+9oTF1Gh/AeAPU
         wHj9ee6dP1X26ibeoZD7rDlWfWHFRVOmUrDlgei6pt0DaubAHQhipz4pvqZKnhmOsVPj
         l7wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=GBTpK7C2k8ndIElgwIcOQCy1nmbfom6v1PkR7VDOcM8=;
        b=EaPYKMWBpplcZQqMIz9IFdEA/256tnYTAJI18LFCChq1vbv15x59tbOo1f1evi6+CH
         btloqXrDrupxymX4LUPjFcw2ySLcf2N/E54Mrpvte48xh46vHM/e7dEqeQUGQlevBR/y
         zf7dmMPSeghmWnJdS0uOtaiXUk1/IN7ZSeCHE8yfy65qKr6KhzhFR+sxZenr+hDYMWSm
         CX1QijiXvax3LJ4ZU5Nx9x+F7vjgUCDR9qdTz3Qwz9B0lINg/NeHHVfwMccXrHUF3lTO
         xiwRdYzjsPJMLKFRVVx8uNLr09mIoGnlyu6Ee85hC+l65oHFklA7g24aAuKiri4zKa8C
         vRTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="o/eOozhV";
       spf=pass (google.com: domain of bjorn.topel@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=bjorn.topel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GBTpK7C2k8ndIElgwIcOQCy1nmbfom6v1PkR7VDOcM8=;
        b=H0BcKYql+FbIEBEu3os0Oyx/9IZ2YrR5pc5LJYQiXgQ2e1+nLdiJlPl9fiBUJdFB8k
         wBpYOvtqD1OFrTqxugJoHh5Qmx5w/BzvOwkD19kTnOgVasYjIqHjEXwkF/kt8Ok/2qOb
         LWIH1UfvDhfAE3FzTZVh6esIISn99JDFFgUlNhLeGBcN401WXo5NzbUMbFcbj+/QQ6jQ
         E87tuPFhPH+Wx7H7lYCA01JwKGE9jUbJmHmYd5ZR95oyeNEg7RrSVddrEUFXIT4ltwB4
         JIwwJU9TCoHtz2nJEPCpE61r+DuNLpZLRxzQUgsScHv02+WCL+SaGJKn7abtDLiouZ7R
         N0LA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GBTpK7C2k8ndIElgwIcOQCy1nmbfom6v1PkR7VDOcM8=;
        b=VGhe2invrWWwgUnrii/FxyABm916kiUCrx04qnW2wYdLVhaxBAMoCNRNg305fmfCl5
         b+VsMiHr6mZncO+tU5resCl3K0i0n+1TURqxYIcx4Qx6+FVPtSSz+UXdlR5MN2P3I8W+
         OO4LRcQEAw+by9KxAbM6yTPXyIhiz8XnrO82IubN/o9qL8hHK8pNsDiH0a1Tn4ZbwlYN
         llcbLFtY3hjRB+w/vOJxpxlGgHSBQudrGPY087VvLiUPPdf4UGAx+PpTGekSgqLA9OMj
         /7KqRwYsUK5Z/+aIKog/QeaHozwr3B+hrEVLfOgGM36Q50AfLLTbHC94D+QdOCqul7tj
         /Hhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GBTpK7C2k8ndIElgwIcOQCy1nmbfom6v1PkR7VDOcM8=;
        b=VexY8mv/TQ+e3slOn9DP+5y6XdVQ24HWXWQOGYyxcBVNfEJtaLlHzivdQYO3pbTnNM
         7TjbPLk4a8+6kHY4GswEDZweXIRSMb533x1ehdIujMF5bwspmOFEepGA5a/sNd7kBwML
         tmCizg8QTiUh0ZS98LcandD7Mpjh5Wc/id6917eq3+gPFFcUqh/SQx4GEyRXTt1bG4ND
         tEw2lPXGdd1rGHqQMWPFVtjT0YJMB4AgGYAdoKSlKCs3AUObURJvVJK/4043TzPW9pcS
         k7zZL2kM78KgI0Jnetg0zIkIPtSShsve7y4snN+GRPIkmdBT2tHPRNqOwR5tM1lfpJcV
         2VQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV5/L99rRsqtPfCU2lBc69nxuqSbYXknK42ZPhiZbG1A0+p+Zab
	peDYOKvGaHmQ/K5kF48DnBY=
X-Google-Smtp-Source: APXvYqzPjKcPDtv2GHw6Y1DanRtY/nd4IC4uXMher5NEmy1C8njdSg1nJcHB3+pQWRgQYk4CTIhfCA==
X-Received: by 2002:a17:90a:2e86:: with SMTP id r6mr829698pjd.104.1580844635857;
        Tue, 04 Feb 2020 11:30:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:94a6:: with SMTP id a6ls1572133pfl.7.gmail; Tue, 04 Feb
 2020 11:30:35 -0800 (PST)
X-Received: by 2002:a63:3c4b:: with SMTP id i11mr15195476pgn.123.1580844635369;
        Tue, 04 Feb 2020 11:30:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580844635; cv=none;
        d=google.com; s=arc-20160816;
        b=vTYAgRWzdDHkjnNAhDEyEBvuriCS47Xzp+KM82cNQs7shbWt93TGhQV3ijWELllZt5
         1+M5zjTErfnX0357PQI9XyTwzcMC6vXf2wk7EF5AW6kO9qmImaL+1d2uPG9l3LB07B92
         Yb0oBHcbmHEY0G4EOLpO279MJhfDB0hLMiYIbMGjEKBc/56W542iuBmOHh/lCqmpo5oE
         +qPoqR11T8sehPfvnwP+HytIdkSdTGN1Xr4QC8rGUhvZvzep1PCnjzW6r0Gs+2Bu3Iml
         0g8hFxn3Jr+Jc6gJP+2pZ/g03g9Z3f9r7WoOm1fSUDvh1VrKj5NiY1ku+3H/kI+QUA9L
         63gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=UapTR/Swn2AywRKzX/GSR/rd23O04e9h6Fgs9p2msUo=;
        b=nIhVrqTdGTNcd8gEtKwu+5OTmeqrTL4dkE5Bhw7lcbl0rxYzY7GzZG5Yzpl/KNt3A6
         a00wX4ee2uyd1XxUuwJV9gkwKzdwbNGz0j20/RilyWQVoAHzWWkSfZxacLpKt4KKoq5f
         Pbd5jpKTwjK7cRw7UyWTb35kFZdU3covgtrR5oNgn9gvESR6BPCAZqbU0WYXhjdpRcYF
         3vDA4vO8aBaUm/5tC9n+ad/y6bi2eJLTmNSWyavao4GBLH8WZG6zpV9NxeaIUbkMupDK
         ARqaDoRPgmO4TFgmFTBs2Q+tPGf25RURHYF+9zW0hL8fHotOWcpE4CskyR8jtnbiqFwL
         JCNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="o/eOozhV";
       spf=pass (google.com: domain of bjorn.topel@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=bjorn.topel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id l12si949433plt.5.2020.02.04.11.30.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Feb 2020 11:30:35 -0800 (PST)
Received-SPF: pass (google.com: domain of bjorn.topel@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id l19so15256661qtq.8
        for <clang-built-linux@googlegroups.com>; Tue, 04 Feb 2020 11:30:35 -0800 (PST)
X-Received: by 2002:ac8:554b:: with SMTP id o11mr30093106qtr.36.1580844634484;
 Tue, 04 Feb 2020 11:30:34 -0800 (PST)
MIME-Version: 1.0
References: <20200128021145.36774-1-palmerdabbelt@google.com>
In-Reply-To: <20200128021145.36774-1-palmerdabbelt@google.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 4 Feb 2020 20:30:23 +0100
Message-ID: <CAJ+HfNh2csyH2xZtGFXW1zwBEW4+bo_E60PWPydJkB6zZTVx3A@mail.gmail.com>
Subject: Re: arm64: bpf: Elide some moves to a0 after calls
To: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, zlim.lnx@gmail.com, 
	catalin.marinas@arm.com, will@kernel.org, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, 
	Shuah Khan <shuah@kernel.org>, Netdev <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	linux-arm-kernel@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, 
	linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com, 
	kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: bjorn.topel@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="o/eOozhV";       spf=pass
 (google.com: domain of bjorn.topel@gmail.com designates 2607:f8b0:4864:20::843
 as permitted sender) smtp.mailfrom=bjorn.topel@gmail.com;       dmarc=pass
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

On Tue, 28 Jan 2020 at 03:14, Palmer Dabbelt <palmerdabbelt@google.com> wro=
te:
>
> There's four patches here, but only one of them actually does anything.  =
The
> first patch fixes a BPF selftests build failure on my machine and has alr=
eady
> been sent to the list separately.  The next three are just staged such th=
at
> there are some patches that avoid changing any functionality pulled out f=
rom
> the whole point of those refactorings, with two cleanups and then the ide=
a.
>
> Maybe this is an odd thing to say in a cover letter, but I'm not actually=
 sure
> this patch set is a good idea.  The issue of extra moves after calls came=
 up as
> I was reviewing some unrelated performance optimizations to the RISC-V BP=
F JIT.
> I figured I'd take a whack at performing the optimization in the context =
of the
> arm64 port just to get a breath of fresh air, and I'm not convinced I lik=
e the
> results.
>
> That said, I think I would accept something like this for the RISC-V port
> because we're already doing a multi-pass optimization for shrinking funct=
ion
> addresses so it's not as much extra complexity over there.  If we do that=
 we
> should probably start puling some of this code into the shared BPF compil=
er,
> but we're also opening the doors to more complicated BPF JIT optimization=
s.
> Given that the BPF JIT appears to have been designed explicitly to be
> simple/fast as opposed to perform complex optimization, I'm not sure this=
 is a
> sane way to move forward.
>

Obviously I can only speak for myself and the RISC-V JIT, but given
that we already have opened the door for more advanced translations
(branch relaxation e.g.), I think that this makes sense. At the same
time we don't want to go all JVM on the JITs. :-P

> I figured I'd send the patch set out as more of a question than anything =
else.
> Specifically:
>
> * How should I go about measuring the performance of these sort of
>   optimizations?  I'd like to balance the time it takes to run the JIT wi=
th the
>   time spent executing the program, but I don't have any feel for what re=
al BPF
>   programs look like or have any benchmark suite to run.  Is there someth=
ing
>   out there this should be benchmarked against?  (I'd also like to know t=
hat to
>   run those benchmarks on the RISC-V port.)

If you run the selftests 'test_progs' with -v it'll measure/print the
execution time of the programs. I'd say *most* BPF program invokes a
helper (via call). It would be interesting to see, for say the
selftests, how often the optimization can be performed.

> * Is this the sort of thing that makes sense in a BPF JIT?  I guess I've =
just
>   realized I turned "review this patch" into a way bigger rabbit hole tha=
n I
>   really want to go down...
>

I'd say 'yes'. My hunch, and the workloads I've seen, BPF programs are
usually loaded, and then resident for a long time. So, the JIT time is
not super critical. The FB/Cilium folks can definitely provide a
better sample point, than my hunch. ;-)


Bj=C3=B6rn

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAJ%2BHfNh2csyH2xZtGFXW1zwBEW4%2Bbo_E60PWPydJkB6zZTVx3A%4=
0mail.gmail.com.
