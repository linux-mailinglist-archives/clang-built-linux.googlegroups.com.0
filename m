Return-Path: <clang-built-linux+bncBCCMH5WKTMGRBF4FZ72QKGQEINUEZ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3651C8468
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 10:11:04 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id s1sf789103ljm.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 01:11:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588839063; cv=pass;
        d=google.com; s=arc-20160816;
        b=z5F2N+C/MlAuALFi9AaTGNCnHhqMvBuDIRR+2I5PObLVMLYUfLBqRTvNl8HPJ/EwoL
         JIDLB5nFbCN8WPGlZQci/0u1qkIJs2jrHN2lC85M4KCxDCEaaSQ6vUam+76xkLZuWM1k
         BnQOM+i9BOgyrZ0uR5y4OpfUjX1d211zFHNQVlxVvL2RPNUrbZ3s7rAdsDrgrFK5eLpt
         OulzXdwergNWz7fY19MxY3Kd/KDMpABdwTjtLQIyycnrwEsZnevqNx1qjN6o6acPgEE2
         2oTQea65AfCmWOifbKlAm6+KmkT8zOcOu5qYrbUgw4jzpzHsK3DnL78lDFAsM461UWtu
         I2bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VCNCUI16lNrkibon1n/9ZR/RIfttFv2u0NGdPaY8gbE=;
        b=Engq8w31s2SbnFMbivlur9KJ8oZpkzInsSEEdaobemY5wMjbpW4UdmtLeWOxCZVqqK
         xvOUX5OXc7arUTtG4nZJ1yKQZAkYUjbjjha4tPsQX4P3TQqEArLylySu80rvZPcxmHRk
         KPzC+2/aLg0pE34ce7nGcAS6MrB825k5du5hUXUu1NBjk+s8WHU8TD6jKhd26l95Hb31
         mcwJktCyRSZdiNBBed5yYuiLXBpZkvDeMYL8a0pMmme+oDIw4m402d75LVEQBAqz/BV3
         lbxyhk/OGnhvMBERGeYOfO/3wizOJuT/xJWaO6a8R2+frbcK8CeG2s8NxjZoxx2YJ2Hj
         mV+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gop2+4FO;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VCNCUI16lNrkibon1n/9ZR/RIfttFv2u0NGdPaY8gbE=;
        b=LHTliDfzzhVvFJ2vG5IE0/Qt9U+mIqdyaZyoUuOWqwrFIqDh0AQ3lJyKb9nhuvcSbz
         WEJ+7VQNvM2CpwHy8XxxFpPXm20ku/fL3VpqyKM3dZTtC8DmNYw3cnmraoEoRGXLQ2IL
         C4yZ7EyqSRBa8lm4QQ1gKLidlpSIpuvDG7oL6F+cV43VEqxcOkjQtrlKNy6+6+eGbh79
         HHsIXGP6bXB5sGyQcSSA819lrs4jUmuPd6uSUI/TxWHSRG4Iccty02QinsCg3z6u1kqR
         i7jVa867jAC/ZmOThseoc0cEYXRdKrgucwM65mAs2hQNB00rXHSBaAJaqoRGIduYx/o0
         y0qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VCNCUI16lNrkibon1n/9ZR/RIfttFv2u0NGdPaY8gbE=;
        b=QRhGqCJ1XFDHBin5NQYQ53OzJv48pnIrxVBuUWgqNKoDXfUReBy+SZduMb/fkbTrCj
         DgBTpKz4X2KlDpWHBw5qsJiOSHUkR8xbJXTsJaPM5CIN0lR8Df3exMKaTYkLFVLE9F5w
         DKT0ADpuTbRz4OG7h/YsuHAu8ooG8cCF8Wccv6YQrm+9KcUGVFbYejPSoH5ygfvStZic
         wGQXQpwfDtmxtcffxXRD0xjsXWHNIp6jAJ7+4/HcSUUvw44+LyBMEFUMS/k3xiAVL8wO
         g18emOf62NTnxdYsNf6ryjaTAX+AxfGJgVEKRJHVTFMpjuuAyhW1aHusiqtUpUXgYylM
         HgnQ==
X-Gm-Message-State: AGi0PuYRiil7qMO+EY99IeE2spg3yvhLJ+d51LTrVxv0FA+Gf5ZrZcI8
	gu0XXBIEfM3GmKarboZZyy4=
X-Google-Smtp-Source: APiQypJgKOqUs2Cu47145lDLpQEX2IiCrRfoIh40K2NEMgpCBdtpl3q/BMivl3T1pFrNMnX82c770g==
X-Received: by 2002:a05:651c:2002:: with SMTP id s2mr6985693ljo.285.1588839063342;
        Thu, 07 May 2020 01:11:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:288:: with SMTP id b8ls1372374ljo.8.gmail; Thu, 07
 May 2020 01:11:02 -0700 (PDT)
X-Received: by 2002:adf:e511:: with SMTP id j17mr15395370wrm.204.1588839062756;
        Thu, 07 May 2020 01:11:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588839062; cv=none;
        d=google.com; s=arc-20160816;
        b=k0edRQgsLPFqwak3dxrLGF+0hgQG5MIVIOpWYcGl11a7BRjv4d1E0YJlKQ1HmEfF98
         VDR1vjF8M0/VDb8KUFJRDVYL4jSRnwe0uDE/Kg1SmuVymHfmt3raRhtTTYt4pl2p5uDO
         YzXUgRd4PN7OF3hcwCCsh/xUHu6MxNeytWuaUm1nSPFXfQOljAq+MwRj0IwCKNLeCU4K
         cza9wrA72/1eQ6FOL9cU3SljriTBaW/3Ll0lxU/qKFSvYliEo+tus9cUvbynHSxoujzz
         riFt8mUl/3mflHPShiCHsY9hL0meMN7oq0glyWrbqR37worIJq7FQLGPN7bWSXkK9buJ
         5ilw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SXwFsojjDn4z/H90UMw2gS34l+ZmOkg0RzGdV3s9vY8=;
        b=Xf4cE80QFoIZU0aRNf1wHSd3315t1bbZhRQVHNMiW4S5FtXj9fFmi7C01cBTHsSAfc
         bMdXhuGRzz/tW7BQ8IaUGbFZ45SDGELJoeExb90eQioFXeCqb7QwZynjv7+kR4CJMJ04
         F+RsV1vu4+6k9LBeAvXlG7QB4p9vj55jLQcbPCtd+mJqUdYiNgi9j88ABFi2nE+ofqSJ
         +IAlPcwStchy5u8UlYPIjZRjbxXKSr8cqvu/gq0oK6EBV8Xx5qaHJRNPF5f8XMmF1JIp
         KYX5B1CdqVMCmUSDrKIoyfuMw+Ll4Jkcx5MptOkY4UM6pkS8zmsAgE9EPiNnlQr4+y59
         Gnpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gop2+4FO;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id x11si201383wmi.1.2020.05.07.01.11.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 01:11:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Received: by mail-wm1-x332.google.com with SMTP id e26so5352004wmk.5
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 01:11:02 -0700 (PDT)
X-Received: by 2002:a1c:f312:: with SMTP id q18mr8750126wmq.175.1588839062143;
 Thu, 07 May 2020 01:11:02 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000003c4d7f05a5002a86@google.com>
In-Reply-To: <0000000000003c4d7f05a5002a86@google.com>
From: "'Alexander Potapenko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 7 May 2020 10:10:51 +0200
Message-ID: <CAG_fn=VZ6tR0wD+grUFn+B_ywU4hbXV7eQDqM2xYb5cAQKOtLg@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - May 6, 2020
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Android-LLVM <android-llvm@google.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: glider@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gop2+4FO;       spf=pass
 (google.com: domain of glider@google.com designates 2a00:1450:4864:20::332 as
 permitted sender) smtp.mailfrom=glider@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Alexander Potapenko <glider@google.com>
Reply-To: Alexander Potapenko <glider@google.com>
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

> Kcov + boundsan or tsan - kcov gets disabled

Any details on this?

On Wed, May 6, 2020 at 9:56 PM <ndesaulniers@google.com> wrote:
>
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>
> May 6, 2020
>
> Welcome to Arnd, Randy. (Linaro)
> Fortify disabled (Kees, George, Tom)
>
> ~2 bugs, primary is that Clang does unusual optimizations around memcpy/s=
trcpy*/=E2=80=A6, so this missed some fortify calls in the kernel.
> Clang-10 had a bug where it was doing full calls to memcpy() instead of i=
nlining down to smaller sequences. This is fixed, but exposed the first pro=
blem.
> Fortify is important for compile-time and potentially run-time bounds che=
cking.
> GCC is better at issuing diagnostics later during code generation, while =
Clang struggles with this.
> Fix will go in a point release for Clang 10.
>
> https://github.com/ClangBuiltLinux/linux/issues/1002
>
> Script for filing bugs for Clang releases.
>
> llvm/utils/release/merge-request.sh
>
> More work needs to be done on the kernel side for fortify as well.
>
> X86 LTO 4.19- not booting (Nick)
>
> $local for keeping symbols from being exported.
> https://github.com/ClangBuiltLinux/linux/issues/852
>
> X86 -next orb (Nick)
>
> https://lore.kernel.org/lkml/20200505174423.199985-1-ndesaulniers@google.=
com/T/#u
>
> 32b x86 (Nick)
>
> Close to working, just waiting on one patch to be merged to turn this on.
> per cpu and getuser fixes merged.
>
> https://lore.kernel.org/lkml/20200504230309.237398-1-ndesaulniers@google.=
com/T/#u
>
> Compressed debug info patch sent (Nick)
>
> Large debug info growth sparked work on this.
>
> Dwarf 5 (need to retest w/ gcc, 5 recent fixes to ToT GNU as)(Nick)
> Rust in tree builds working (Nick)
>
> https://lwn.net/Articles/797558/
>
> Plumbers will likely be virtual
>
> Should we just merge with Toolchain MC? (Nick thinks yes)
>
> movzxw mnemonic/pseudo-op not supported by LLVM (Jian, Diab)
>
> Will probably just fix this with an explicit version of the instruction.
>
> Pahole + LTO (Bill)
> Networking slowdown (Bill)
>
> Compile bug, missed optimization?
> https://groups.google.com/g/clang-built-linux/c/ZCwRi6n_jcw
>
> 3 bug requests (Arnd)
>
> Kcov + boundsan or tsan - kcov gets disabled
> -Wframe-larger-than can=E2=80=99t be set with a value with a pragma
> Can=E2=80=99t print all available warning options - Any ideas on how to g=
et all of this?
>
> https://clang.llvm.org/docs/DiagnosticsReference.html
>
> -Winline-asm warning about any use of r7 in Thumb2
>
> -Wformat (Nick)
>
> https://github.com/ClangBuiltLinux/linux/issues/378#issuecomment-62377271=
2
>
>
> ________________________________
>
> Sent by http://go/sendnotes
>
> --
> You received this message because you are subscribed to the Google Groups=
 "clang linux fellowship" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-linux-fellowship+unsubscribe@google.com.
> To view this discussion on the web visit https://groups.google.com/a/goog=
le.com/d/msgid/clang-linux-fellowship/0000000000003c4d7f05a5002a86%40google=
.com.



--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAG_fn%3DVZ6tR0wD%2BgrUFn%2BB_ywU4hbXV7eQDqM2xYb5cAQKOtLg=
%40mail.gmail.com.
