Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDUF6D6QKGQE6YOOSGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id B03742C134D
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 19:42:23 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id u37sf24420697ybi.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 10:42:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606156942; cv=pass;
        d=google.com; s=arc-20160816;
        b=NGtTnCGr+tpfgpbkHl0MV3QP7x4gofJS4IWDZY5smxSzMMPdp6N+TPLlcdpkSJfeHm
         K/8AE/W7J17Pke9SNUD2824RXctThDFgCyHqOkEh/CcIxHFpivpD+57k1tcRi0HoidMY
         bUzGv+QES08ALXmC0nWIpSXvRT3EFlTAcH4NrSm3N3YRVq+rB8YfkU0Aj91rNIV67AeL
         Zz2Fp4OB9sfM/bArl1NboKhaX/69Khtgzr2qpX70YIlljaFUSWFMIS6K3wfkRqxigqfp
         WA1+mrG8QBxie817E6nVcHvCRNmx6DniDR40E0c10l2a60owj2kTbrwbJnMomdo9sSy+
         7cFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7180ARENQPOXLO64kjRdVX25kBX6KD6UryJaCCdL6tQ=;
        b=gxsyPPIUvDe/6pGPP55DZgxTC7Bq3cQqphXZVOOlG1hGIhoTRFmEV8Py2q4BJaAWmb
         0JbAP+jxMuzBxD7VhtoiMA08JXvHz/45XdrucnwHEzV3X1OZ2xCjlGYs6Q+3unNrBtwz
         jpxNxqU2FOWtn2G5iRZ95TPyju5dWhdcmc0mZ2HfaxWMTj8juBDZ3WITSXOMUdeIx5lY
         hTlPRFtNdGq3QfWYaqkDZH2a0qhslrbk7YJWEU7J4P29LwpFSEK5rVYIgjOiVlmpQ3pn
         /pD8gQ2ySon65BSXSvli7fzPY/qv3ca6BBygASh57mFYIx/XNHwMUCkUY7h3+X61Vbmj
         1LjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xo+IICOV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=7180ARENQPOXLO64kjRdVX25kBX6KD6UryJaCCdL6tQ=;
        b=d4INT8bEwx4JPy2+mvDYKHfAZns2sEjNi8vzXWt+oekbZf2xhHcPiws9pUtvhS137z
         1qcb/Akcc5Z5SYYy5v0xB/lceqP2J5AExcGFyaJFzavXtObAiusEM+Rz6KVPcL5A9LRf
         MqTuwAT8MVCXiaeDppivHYHUs4yVXokZ45ES2X8ZYAF3Fvl61/ehqYeO+tNmGboAhDER
         rtKfR/mB6IMmQG9XvMWGHhjALRIZr0mcglq432xHyytFOjKVwVa1or819GbrLtjf2uGJ
         qlQH++qfHfWuAsy50GivVv0Fwn4xqyJ+c9Ivc5kor9j+iPuTsnRuXFNJgSo5PgN0qBny
         E3vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7180ARENQPOXLO64kjRdVX25kBX6KD6UryJaCCdL6tQ=;
        b=nSD4cHCp4q1SyYOoZApfulPxmFHY3Omwa5hKGflEw5hHJ83eRYdrAKVdKiFbN2X5V6
         3GHlCVbxKXR6ifW4JpD20zInnOTpyS89tvp/LVS/gjjQaDB4UGww6VG8LePcwXB35Lpf
         2UJ2UA8fdckurtGd6I6phgd1Elw9+6F1p38mnZAfBH0kvHOHdIPJJ/Cguwd9Rlq2c1ou
         jTZUw9He2NuP90voJyacwqOYUYRKw0lvwOIN/1+YxLZbALDNm0uZWNmJj5kj7k6aTpuf
         4yat3LgkJxKsSHhiDRPXs2Qi5LHGw102s82hECLlKrAF/lRBwD4c/hgwbhSaM+uL4zHg
         zwxw==
X-Gm-Message-State: AOAM5334P6xHRt1/pkz/SC/ruUPkZBVca4EToH5ZS6Fy1H3g4bdzwnra
	UNScq6HBnmlMM72KaA44mRA=
X-Google-Smtp-Source: ABdhPJwiFMQEdjar7heVU19qGOnCsQgFKLKWVThaeX7y5+5jaE3oXskvi8nYXiutOZNWRe1f3pVGEA==
X-Received: by 2002:a25:cf0a:: with SMTP id f10mr1177797ybg.353.1606156942798;
        Mon, 23 Nov 2020 10:42:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c553:: with SMTP id v80ls428540ybe.2.gmail; Mon, 23 Nov
 2020 10:42:22 -0800 (PST)
X-Received: by 2002:a25:7444:: with SMTP id p65mr841693ybc.149.1606156942330;
        Mon, 23 Nov 2020 10:42:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606156942; cv=none;
        d=google.com; s=arc-20160816;
        b=JJ9a4I0Fl2NA0Z8oRebSBDSoJL2OAG/mbfa8enPMuYDfuI4tGBi726iag29XGT9PZ9
         7pl4kLDUkHrwkSG8V7R/sOQhIUDCLcntgP+JKxwUYOfCx69xgDoRKcvEldbrWrTqqR+H
         s5Cyb5aUkVyAtdGGkxqj3ch82NiLQwK/H7zK3ssaJcLLneS+JZ/y9jcVTSHJYdtdk1yj
         5uISnJzwkGX6NQPzt+pPeFpL4b/AgL8OGhYvB9nXgEmgl3Si0X4jdDnzZ1jD+FbsvjjN
         aFAcE4q7DOv6bLqCWVXD4fS7O8XuYbkHZMeH6/hA5SS9aGBYqPGKwlPqSh4VyddPH3eX
         0gMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nJpF2gat8sIt3hy0qTCyIbzDeQ9i0fB1Rc02MDjSdMo=;
        b=UuMDOUHeewsWmJYTJePEv3n43XZuxLODEXWxrkQ7d4cfzyj+pAm5SDCBgigeWmfUCg
         xTIwG9wwTLRTRVhVBWkxPPAXVCureFU8AZR/M6NEO0Xr6IJ23LITuodWjmBTccULOd5E
         sDdPZez6LOVoD7VzrZ2uMn3R1PwxGjd49cQnqAVzpUWUlb6TOqKUiNEXaf1S85h/zvf0
         xI1l31ahav23qpbCnRSFywBTJ+fI6F955NEz/ylxhBIWgPYY5lK0b2Zd8h4769FsILV9
         1ywxiQk1KXf4ThSoGZ+LRV5fLmqWL+ZyWjT4a0LS31MASNFcqnCajfeR44ucwNPAg17r
         uu6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xo+IICOV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id m3si1173985ybf.1.2020.11.23.10.42.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 10:42:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id v21so8023232plo.12
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 10:42:22 -0800 (PST)
X-Received: by 2002:a17:902:221:b029:d8:f938:b112 with SMTP id
 30-20020a1709020221b02900d8f938b112mr702048plc.10.1606156941355; Mon, 23 Nov
 2020 10:42:21 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=9iqLgdtAWe2h-9n=KUWm_rjCCJJYeop8PS6F+AA0VtA@mail.gmail.com>
 <20201109183528.1391885-1-ndesaulniers@google.com> <CAKwvOdnxAr7UdjUiuttj=bz1_voK1qUvpOvSY35qOZ60+E8LBA@mail.gmail.com>
 <CA+SOCLJTg6U+Ddop_5O-baVR42va3vGAvMQ62o9H6rd+10aKrw@mail.gmail.com>
In-Reply-To: <CA+SOCLJTg6U+Ddop_5O-baVR42va3vGAvMQ62o9H6rd+10aKrw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Nov 2020 10:42:10 -0800
Message-ID: <CAKwvOdn0qoa_F-qX10Hu7Cr8eeCjcK23i10zw4fty32u1aBPSw@mail.gmail.com>
Subject: Re: [PATCH v3] Kbuild: do not emit debug info for assembly with LLVM_IAS=1
To: Masahiro Yamada <masahiroy@kernel.org>, Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Xo+IICOV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Hi Masahiro,
I would appreciate any feedback you have on this patch.

On Fri, Nov 20, 2020 at 3:58 PM Jian Cai <jiancai@google.com> wrote:
>
> I also verified that with this patch Chrome OS devices booted with either=
 GNU assembler or LLVM's integrated assembler. With this patch, IAS no long=
er produces extra warnings compared to GNU as on Chrome OS and would remove=
 the last blocker of enabling IAS on it.
>
> Tested-by: Jian Cai <jiancai@google.com> # Compile-tested on mainline (wi=
th defconfig) and boot-tested on ChromeOS (with olddefconfig).
>
>
> On Mon, Nov 16, 2020 at 3:41 PM 'Nick Desaulniers' via Clang Built Linux =
<clang-built-linux@googlegroups.com> wrote:
>>
>> Hi Masahiro, have you had time to review v3 of this patch?
>>
>> On Mon, Nov 9, 2020 at 10:35 AM Nick Desaulniers
>> <ndesaulniers@google.com> wrote:
>> >
>> > Clang's integrated assembler produces the warning for assembly files:
>> >
>> > warning: DWARF2 only supports one section per compilation unit
>> >
>> > If -Wa,-gdwarf-* is unspecified, then debug info is not emitted for
>> > assembly sources (it is still emitted for C sources).  This will be
>> > re-enabled for newer DWARF versions in a follow up patch.
>> >
>> > Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with
>> > LLVM=3D1 LLVM_IAS=3D1 for x86_64 and arm64.
>> >
>> > Cc: <stable@vger.kernel.org>
>> > Link: https://github.com/ClangBuiltLinux/linux/issues/716
>> > Reported-by: Dmitry Golovin <dima@golovin.in>
>> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> > Suggested-by: Dmitry Golovin <dima@golovin.in>
>> > Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
>> > Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
>> > Reviewed-by: Fangrui Song <maskray@google.com>
>> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>> > ---
>> >  Makefile | 2 ++
>> >  1 file changed, 2 insertions(+)
>> >
>> > diff --git a/Makefile b/Makefile
>> > index f353886dbf44..7e899d356902 100644
>> > --- a/Makefile
>> > +++ b/Makefile
>> > @@ -826,7 +826,9 @@ else
>> >  DEBUG_CFLAGS   +=3D -g
>> >  endif
>> >
>> > +ifneq ($(LLVM_IAS),1)
>> >  KBUILD_AFLAGS  +=3D -Wa,-gdwarf-2
>> > +endif
>> >
>> >  ifdef CONFIG_DEBUG_INFO_DWARF4
>> >  DEBUG_CFLAGS   +=3D -gdwarf-4
>> > --
>> > 2.29.2.222.g5d2a92d10f8-goog
>> >
>>
>>
>> --
>> Thanks,
>> ~Nick Desaulniers
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/clang-built-linux/CAKwvOdnxAr7UdjUiuttj%3Dbz1_voK1qUvpOvSY35qOZ60%2BE8LB=
A%40mail.gmail.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdn0qoa_F-qX10Hu7Cr8eeCjcK23i10zw4fty32u1aBPSw%40mai=
l.gmail.com.
