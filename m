Return-Path: <clang-built-linux+bncBD42DY67RYARBG5NZT2QKGQEWJTPWOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDF51C7ACE
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 21:57:16 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id y7sf3915390ybj.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 12:57:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588795035; cv=pass;
        d=google.com; s=arc-20160816;
        b=i5JxHI7lqSKRTStfpqA7Xo7VtGJYDXW3Q9eBzjKE4PqZnNvZBSmrBNz642LBS3Jzac
         fLHpeyoD5Qu0ivxAdvTUg6PIuFX0EP1GKa2D5bBC7HJuixNNp6gsFUE6Sf9uhG1wn5sF
         Sq3ZoGJ2C/wdAfhct2zKfh/i4/qUlP97fMtMfTkB+O7iJ/6BTGzO61e0RgVTn0YDBlfZ
         XkCP2g6GDij0YtpLIJXFatyfLujZ2OIDCUdIot2uHETnacCIjwvHoyF+P4GfVM+IA3i4
         zXmvFFeflQ80vgCBBTucKBrgjIi2k8GFCsn7ghP6OLh5JF4wW0Jr802tgSHjo6dsSTyU
         rE5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:in-reply-to:cc:references
         :message-id:date:subject:mime-version:from:content-transfer-encoding
         :sender:dkim-signature;
        bh=dXrAZZHTUuClA12iBRL1PQEvNTDVMUL7CYSiGcz85p8=;
        b=1IeZ/3zW7IO3noqYBS2CoC2KQ83QNES1QRCe8lSzvaoh786aMkHW2sC3cxeJ4soD2M
         dvCi7zNIMJ5Xs84ldll6Fj5ylCYqsmAQfLFJqGbR2hkrbFfIkDngoYHoLUBGdOpQ0BP2
         4Jh3Ok29XVnDGPuu0wJMZfrMPhc7aYxgGAom7SekLZYNGCY018yxxtpAqr11vLw3syUb
         /4++z99HT85+VED10/SJEh4jOiOnwn2hN9MI7ybQCqYiKBFnfdKGaGz7YRAGRA565dfP
         L3rRPcedtpoXrdPrYh9uOS6VNogL0W77QAoqfpzn96yPcbk+m2jzkajVVniRBl46wb5g
         tXRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623 header.b=hTM+BjtB;
       spf=pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=luto@amacapital.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:content-transfer-encoding:from:mime-version:subject:date
         :message-id:references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dXrAZZHTUuClA12iBRL1PQEvNTDVMUL7CYSiGcz85p8=;
        b=rTGMq2//3OwPHX4h/SS3Nt38UYUTL6pIJww/NQEDcuyaOBbp+vvGOWpL3oJyZsirt1
         rkKh5HU1qt2hMVR5aDjt9KO6t9IC35sT6fNRLdCdCbMFt15YGK3f6iYKJRUTVhTbFjFA
         Xbp9tJpoVtGih5GFeQENPDQbmIDCqVPWgxsvRh8hDnT7pEI1Y+3TZ0PXT2TJK1RbxMCg
         OO68rX5pOwWDkzLA3MZAp3v1X4vWnuIm4k33xrkKpys4IXeCiCWEoUqI79l+18xuimXx
         4Bc0Klalz7pql1/UrWcinqv+FT25D2TlnGF0M6Ypud+biEEC8w0kYe4zO4oG7FUp+C8b
         VoDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:content-transfer-encoding:from
         :mime-version:subject:date:message-id:references:cc:in-reply-to:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dXrAZZHTUuClA12iBRL1PQEvNTDVMUL7CYSiGcz85p8=;
        b=XOP+XmIR7Eg++wN7E7J1E4Ngoz5unSETegncL8hSlJr5A1OrYWu62UnRgHGf8TuX33
         W7s2ydrRYJjbGMf4g5uRMNJ9RrDZ8HWxu6iXyjosaccT0xDlsa2cIin0B8hOVt6OxzKD
         axoQZgyEtefS//meR0xMerktY6iY/3OT10uiw7BZg8OM/I/9a3o4MrX9oM5VPxeYzaHt
         gdhDk8AfygwVdj/9fFFT7CxODmWL9HSl3GS3J+s+VtsB5OxmJFjQuDNb1OmJHIxf3JZi
         2drNRy8q8/fGjdSjjeAf8diotj0Gbai8I/Gy/kCJkgziKN8CMipnXAkwDxIRAmJMIgH2
         P6XQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubCTIbDSMRxoq75vAwP4dxLOL9Snu12fa1uhuQWECednszOkxw1
	R4dKOroKOYvC4JW85Rhd8Lg=
X-Google-Smtp-Source: APiQypL5d+qbCtfafrKmPKlrusStAlEKuLRWTzjfs+99qzf7JbIbxPn1l1YFxi9n13w1iLsq9r5SJw==
X-Received: by 2002:a25:660d:: with SMTP id a13mr14063952ybc.86.1588795035293;
        Wed, 06 May 2020 12:57:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2ace:: with SMTP id q197ls331896ybq.5.gmail; Wed, 06 May
 2020 12:57:14 -0700 (PDT)
X-Received: by 2002:a25:f413:: with SMTP id q19mr16817824ybd.178.1588795034830;
        Wed, 06 May 2020 12:57:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588795034; cv=none;
        d=google.com; s=arc-20160816;
        b=SDD6BYBVSm14Ut7j3FsSUpwmp0P4iOTNJnLza0csBFDijA455LfJ5RmAyAtyuSX2N5
         VU547UDQ7zMnFDD9aMUEQM5sqMP+1D0GueFbN97TUkvMDNS/A5lZc+a8thj16HDWSTWn
         eTkpGy/GQXXWYK3FlXZuPgMf3BsAj2di5U7ClBViUdjMcHmS75WgR50DdzJ0lg1i1k+r
         6sZ7sO1grDFPD3XUxfcfxIW1xkpuvCd65WdxAyuLfBW3sg6DSz6IllZFFR3k17lBYK5l
         ucBde4/PcgOoIpPA1OQgRYZLEHucCtPc0XHUN1HugZuKvL51AuHLAq5HUN+miGb/Th+/
         SXuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:dkim-signature;
        bh=LNWHRG4K9qHI5KbbCb7GvYbHc9+TzAyl6TbfjrwoBuU=;
        b=Ae/mbEluwxGyx1inUnUxsvuKLyvZW4RmciHqHM1P7H+/PjRGMb+LNvEsQcWkizc+7h
         E9xwhmq4Fg0JqjCdI/1TBWZIsRDa+jKzuV5fypjBE0HypaMxf7d9mv1Rfm52jv6m+MyS
         DB+SdpUzq9g3aegj9PY2CiFAdxwUmjWDP4bfSCuhC926+UHa62cVfbL3jgROA5avE/BD
         IKX+7VN4z/kPjgjE5O9ch3leyGTqblQVEIUQdkJW6FlIcCtkhIT3AZjEUou+7T6DzggW
         zBaeMApnDBwPj5+B7Qi5knecAkWS2iQWENr6yX5hkTSmw5q/mKtVrtRYSTPJSEXpEJTE
         cNQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623 header.b=hTM+BjtB;
       spf=pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=luto@amacapital.net
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y199si2655ybe.2.2020.05.06.12.57.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 12:57:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id y25so1606374pfn.5
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 12:57:14 -0700 (PDT)
X-Received: by 2002:aa7:8489:: with SMTP id u9mr10209486pfn.248.1588795033916;
        Wed, 06 May 2020 12:57:13 -0700 (PDT)
Received: from ?IPv6:2601:646:c200:1ef2:da1:bee0:4d4f:1387? ([2601:646:c200:1ef2:da1:bee0:4d4f:1387])
        by smtp.gmail.com with ESMTPSA id t76sm2273100pgb.33.2020.05.06.12.57.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 12:57:13 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
From: Andy Lutomirski <luto@amacapital.net>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v4 14/18] static_call: Add static_cond_call()
Date: Wed, 6 May 2020 12:57:02 -0700
Message-Id: <88AE3649-C2E6-4965-86B5-C8FE9D226293@amacapital.net>
References: <CAHk-=wjdLY-E3m21_QcHUauakW3qAAOCe2rxzuFEm-Af_oqG0g@mail.gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Daniel Bristot de Oliveira <bristot@redhat.com>,
 Jason Baron <jbaron@akamai.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@kernel.org>, Nadav Amit <namit@vmware.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 "H.J. Lu" <hjl.tools@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>
In-Reply-To: <CAHk-=wjdLY-E3m21_QcHUauakW3qAAOCe2rxzuFEm-Af_oqG0g@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Mailer: iPhone Mail (17E262)
X-Original-Sender: luto@amacapital.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623
 header.b=hTM+BjtB;       spf=pass (google.com: domain of luto@amacapital.net
 designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=luto@amacapital.net
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



> On May 6, 2020, at 10:23 AM, Linus Torvalds <torvalds@linux-foundation.or=
g> wrote:
>=20
> =EF=BB=BFOn Wed, May 6, 2020 at 6:51 AM Peter Zijlstra <peterz@infradead.=
org> wrote:
>>=20
>> I was hoping for:
>>=20
>>        bar:                                    # @bar
>>                movl    %edi, .L_x$local(%rip)
>>                retq
>>        ponies:                                 # @ponies
>>                movq    .Lfoo$local(%rip), %rax
>>                testq   %rax, %rax
>>                jz      1f
>>                jmpq    *%rcx                   # TAILCALL
>>        1:
>>                retq
>=20
> If you want to just avoid the 'cmov', the best way to do that is to
> insert a barrier() on one side of the if-statement.
>=20
> That breaks the ability to turn the conditional jump into a cmov.

Having done this in the past, you can get potentially better code with asm =
volatile (=E2=80=9C=E2=80=9D); than with a barrier and its memory clobber. =
I don=E2=80=99t know if that will make a difference in this particular case=
.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/88AE3649-C2E6-4965-86B5-C8FE9D226293%40amacapital.net.
