Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOFTUD7AKGQE5F5NMGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9AD2CC9DF
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 23:48:26 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id hg11sf154935pjb.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 14:48:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606949304; cv=pass;
        d=google.com; s=arc-20160816;
        b=N0NswIjMncZQ/ZGGB3aGY0iZbPuj9QEndFBMz7DBorJYL7eVFhcPbuo1bhi6XDvyHC
         yk99AgwqFscvHi2+Ilh994+9uI63Q3BEnSt78Ad+DE9jlt3lyNoWfBJW/h0l4p3oO/yl
         nf5TrgmtjRZSI1LvpV0gOPddMC9n+ulLQppqHdHNPDplqg0bXNoGv5OVdX+0TYNE3o6j
         tlmZBXdMkpUa4nc8mi+g1UInoCo8msGUwF7HgcXIZ+eCzPxRZi+0T171cSrYOqkZTWbw
         1zooGPNhmCMYlqx/HOQZ4uo4JZpF5Esx3NAM6jD68lBoUYNelI6YclnLTEaZZEqcbytb
         hr8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wod2NkLec4QReTjN8i3JGFeT3vN9CtnJiiHUl9O8z9c=;
        b=Szpcg1sLTf3kNUERjoCBVV7GGhoQtvM30BDCJxpX3716YzKBsvaNR7+chg64nyt2I9
         ++CwIRLge8qqBXYLzAn1LuDYLksuxYXgcjZBPIWAdNA9Ha7D6tAQNtsP23apcwPryeNs
         wgyYIwVl37DquLJLcIjh7m4q/P5+MHE7QJobyuf0MtwAUz9uIhLal+3jV2sA0t98PCvO
         ZYaa/xeFIsMtq9erptfapLOqIDTocQ7ukBLEyDHNVgflhnDQFbAudoLxm1vTf26WMa4/
         zGkR4/opQ3z+IxjW3VeEQsc8TuvvB1qePLziUNY5xt0Fvvz4NhZd4pPVHN5qWnNHEqKj
         jSKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="M/IpdzSO";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=wod2NkLec4QReTjN8i3JGFeT3vN9CtnJiiHUl9O8z9c=;
        b=nU5Rw3rai0ZSY070at0z1wweBEAiiJvO5bsH7We7U5gypo4BvNba7scL0Uu2ih6RVi
         43sbv/N1BR+vKTmYOiAHV/tdUaaZh5KkURlz3riN7z3YDDvh3uVcwF3z0K44B+xNbtVR
         dtDHdPNqNbfdlZzQ6B20rKCjRzQpKOPuqz2LuBpYxCIvs63pG/icOLeCxvVHAw81JaqN
         1LYbRWath+Buxo7qNWmS6APxa780ncIwofndf90CXCrSI4oxP11Gb5Us3js0i+14F7AP
         ojnYoNNGWJXqlvJEQMA7C0oPF9ZMbIalt1v2aycvAW0wwBiyKBCELy+nJx3hQ6LOKJv+
         RLpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wod2NkLec4QReTjN8i3JGFeT3vN9CtnJiiHUl9O8z9c=;
        b=qYAlAbKYMIZHrrpCif16pQRpI1BSoN4M9IEEZiAxraIO6WjbCW4P1yXNKa322r5fRd
         ZCwqoNTWeAxrjbGvyYP8WPIAJUYs/9LjMs0OmzUCBEiSM2vBsOYabP/J02KWjGY7VYW7
         xbcYBXmcZ8D7/O9beSYQyGF7BCYpvBHzCb44oji/lh78DFaTrToiQlQgHbuiC15cP7sB
         9dYIXNG1eWChDJmE86rba8lvRAKWLnSDplv2iP+OTNeSfUuVMB6AKuTUmBQIoutYGHP6
         n3nrx9l2OVcfDL75OXr7K0b+UjH82yBeIzQPbE1WUJMccRy75Ox95u1D/hu+WUDkSO1x
         GAhw==
X-Gm-Message-State: AOAM530bJs9my3XiZ300X6BpJtpI3wOvOQP255wagTXsY5pH2fH/meDi
	JuQo8A5VZevXOXeuK/NvuwE=
X-Google-Smtp-Source: ABdhPJw3UoUpR3UCwVhIE8RN9JwnLzuvg3xEcXw5E5Tbr+WUWPZb3YJRS8Zy0cQ0GDYEz8pFE1hi5A==
X-Received: by 2002:a17:90a:14e5:: with SMTP id k92mr150829pja.169.1606949304578;
        Wed, 02 Dec 2020 14:48:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c253:: with SMTP id d19ls1905667pjx.2.canary-gmail;
 Wed, 02 Dec 2020 14:48:24 -0800 (PST)
X-Received: by 2002:a17:902:9003:b029:d9:ee53:5066 with SMTP id a3-20020a1709029003b02900d9ee535066mr270211plp.66.1606949303884;
        Wed, 02 Dec 2020 14:48:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606949303; cv=none;
        d=google.com; s=arc-20160816;
        b=wcvUhMBlNyqSwMWa+8/fGbguWArD1P77rHupCFqu4joVpT4p0eA7u8AaDnvy/Mq81l
         sA3kPMdQI/2CWbBqDgS9r/9Fshl5Ve2K1edp3+WHTK+A3IOXBc5P0PIT3y6f2NGfDkmN
         irCwcEqLTNmCF6IVbm7orV/2Xpkv566Xk0W/0kkNKMU6TjMmDcXVuPeDsb32PDXTSSQm
         h1fRmhmu09CWN9HWW0I9HhDqAw5ddmTYJ7pCi/acLbgvbpGDCcxktqPBkgS8RtuTCoZ6
         vJXB5L8VLTP8wtLiKRlsIellO3M3Lk/D3pDVNwDG4xZTXmMcpLXIWz4CeT2p6fxyGMJP
         SkhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=m6IgX7u4I9t5y33P/nBBEk+FmpFVSlFPji3HIMY+yLE=;
        b=ItVrkKDt9txzctfeBSHnWNiiDWVc1LkIZ8zdJsYrp4sLYWl2w3MrFr68z64r2/3lPL
         QFytcSelW2gkYemnuh/tL8pzwlIOcLRciX5+nuKA74uYqwwhaMmWyCY0fx6HWw/UF01k
         yNz5eTbtCqyNi62UyTdVV+0E1t2NYsTBzs2PXmxUfPg915dwiDat0fpQpxNbmXsKZZFG
         ZpV5jQlaY0dJ+EILeg++XFimUJSOQ4iVciGgyegItLJrOMrsBC5wuhNZIMsM1mMP0QhI
         I01pN6wYRVoFBqz4bsWnIqMnjJADCmqYOkcDbrFMmdrBkCDXrJwIB/IdZYi7S5Q58e5e
         ANxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="M/IpdzSO";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id j124si10163pfb.2.2020.12.02.14.48.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 14:48:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id j13so1131pjz.3
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 14:48:23 -0800 (PST)
X-Received: by 2002:a17:90a:6fa1:: with SMTP id e30mr202510pjk.32.1606949303352;
 Wed, 02 Dec 2020 14:48:23 -0800 (PST)
MIME-Version: 1.0
References: <0000000000008f84b705b5830199@google.com>
In-Reply-To: <0000000000008f84b705b5830199@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Dec 2020 14:48:11 -0800
Message-ID: <CAKwvOdkEoGEgCD6pZY8HgQ8po_CAsXK7Fzc=2KJ7FY=FDMnKJw@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - Dec 1, 2020
To: Nick Desaulniers <ndesaulniers@google.com>, Android-LLVM <android-llvm@google.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Tom Rix <trix@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="M/IpdzSO";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d
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

Here's notes from Nov 18 as well:

Nov 18, 2020
* Orphan Section Warning patches up for lld-10.
https://github.com/ClangBuiltLinux/linux/issues/1187
* LLVM_IAS=3D1
  * IWMMXT arm32 LLVM_IAS=3D1 patch submitted.
https://github.com/ClangBuiltLinux/linux/issues/975
  * -Wa,-march=3Darmv7-a issue
https://github.com/ClangBuiltLinux/linux/issues/1195
  * .ascii directive issue https://github.com/ClangBuiltLinux/linux/issues/=
1196
  * Bill sending PPC LLVM_IAS=3D1 patches
https://lore.kernel.org/linuxppc-dev/20201017004752.415054-1-morbo@google.c=
om/
* Stack protector LTO inlining bug affecting x86 suspend/resume.
https://bugs.llvm.org/show_bug.cgi?id=3D47479
* barrier_data fallout still landing; needs backports.
https://github.com/ClangBuiltLinux/linux/issues/1202
* Android kernels updated; minor LTO related regression for 4.19 from
unmerged sections.
https://android-review.googlesource.com/c/kernel/common/+/1511434
* -Wimplicit-fallthrough LKML discussions
https://lore.kernel.org/lkml/cover.1605896059.git.gustavoars@kernel.org/
* -Wformat LKML discussions
https://lore.kernel.org/lkml/26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel=
@perches.com/
* CI: gitlab pipelines vs github actions

On Wed, Dec 2, 2020 at 2:45 PM <ndesaulniers@google.com> wrote:
>
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>
> Dec 1, 2020
>
> LLVM_IAS=3D1
>
> .ascii directive almost ready to land https://reviews.llvm.org/D91460
> Issue unwinding possibly due to ARMv8.3 PAC?
>
> LTO v8 patches need help testing https://lore.kernel.org/lkml/20201201213=
707.541432-1-samitolvanen@google.com/
> KernelCI reports are back now that orphan section warnings are fixed.
> ld --cref, ClangBuildAnalyzer for dependency tracking
>
> https://github.com/aras-p/ClangBuildAnalyzer
>
> Arnd=E2=80=99s header changes speed up Clang builds significantly more th=
an GCC builds. Needs to be rebased.
> Tuxbuild github action demo: https://github.com/danrue/tuxbuild-demo
> Tuxbuild testing sparc tinyconfig
>
> Arnd recommends only focus on sparc64, not sparc32.
>
> Nick emailed TravisCI about builds being offline since Nov 20.
> %hh treewide cleanups for -Wformat. Clang-tidy for treewide cleanups?
>
> https://github.com/ClangBuiltLinux/linux/issues/378#issuecomment-73753937=
8
>
> TODO(Nick): update DWARFv5 patches
> Linaro Connect =E2=80=9821 March 23 virtual https://connect.linaro.org/cf=
p/
>
>
> ________________________________
>
> Sent by http://go/sendnotes



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkEoGEgCD6pZY8HgQ8po_CAsXK7Fzc%3D2KJ7FY%3DFDMnKJw%4=
0mail.gmail.com.
