Return-Path: <clang-built-linux+bncBC25XUMBOQIPNG6Q6UCRUBEPCVNCS@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2DD1C8C68
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 15:32:40 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id p1sf5840899iof.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 06:32:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588858359; cv=pass;
        d=google.com; s=arc-20160816;
        b=WQHEG1YwqAR4KmGpv6rh+ofEOaSTRLW+HM91mWm5PmEpQj5LK/IZoDt5kFJG5lQEAs
         Qjk8DPQlyDAeMk7AIBlS/ctya5RGdt3B/Dk7LrIDEm2ciYS8/H61yxsHlYBfrTrLknT9
         iJMLBULUYXEBhjwZw19qM3veUj0otqyK8ubHvd5Q6MxOouTZ21jyyH7lUqoEVzSHVVVM
         d5Nrvq/KpZZJyMx5yJGafYKp9Lcp1Cu57y1p1sn1I+1fGs5up43LDB+dZiMLoljpEeYD
         V2mwqyFCFn6ejU0KWskjLglCIBOiHeSQ+b2enYra9kPNuvQ4T2368wKTdhGRWBkTNBvZ
         DfNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+JkrAguaA4FevaIgN4b1v22GffPjBXn+F9mDlcjWweQ=;
        b=XMTHObM5G3bOh1RFoM+OBeagl/S8EwLdoFnapiKLIBNDoitTqSmdDB6pkYRskLjrtR
         5ZW2+doBvLJg8aXcDCaCagAM7EKPOZeLBG1iYDkE+huYRsAnGkqlUzzT1hRbCVXOY7Ig
         iBzjBpJLqSZAfApGXWr5etW/O4ICofg7BuwcqRYuQrghwMVlicDXAyL5AP0c67eIp8Jj
         maoes6ckz6izmv1yRf3XeFPmpmZLSW3aaaX2RCyWrSx8c3JwrACiuOYLLN2sTYf/UIdB
         Usa3prQHXvHu2kMnxAzL3kwoy9Qdze8C3smbSthqfB5/M6P5b3PfgV357LM/xaErEcsv
         Y4sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cK5Jj4DL;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+JkrAguaA4FevaIgN4b1v22GffPjBXn+F9mDlcjWweQ=;
        b=SLLbC+jsgjTYJ4N67TJLCaJcYCCoYEGYasuJAeVa0okzwMTISdPOpBFNkUzY856z2y
         +Bm/odrxooUgXo5eOLFOAEztPCUs5PRFFfd5awuFMdhiexgvY8TzLHEBPb+LnDrKuR2H
         sVRVBrZFzi1E4kqtdn93yAMpzi+ejgfVDrw7IWC5zSpiCKlpgdInSn7VpL9NGuLTdTzu
         VIDXQxfRhTm8konO1uzTaZTjtFmcPSWwuXMtAT26ChqtT82UOAR9UEzixJTOHO1HULvO
         SwPRJLWa0sX3E4GZNomafxyG2i47y9WXJZhD9WDgtrXp29rQr9oJEdWCTDHUAslq7rb5
         kNeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+JkrAguaA4FevaIgN4b1v22GffPjBXn+F9mDlcjWweQ=;
        b=j8yo0nqtujw07nUg45sIZZH+X5zltluJ966sk+ao9DWKSsrseiwWTyPJbglALf/JbO
         zJxH0oaUVFNUlOU0emNgBBj4lzY139lAt9AtHgA9xSqWRx4j5vkCf86a2JwXijEzHO7z
         tHZtOllqrmfgw4spYhNE+eTifHhENuCUqibDzF7gO8dapzKtGKxckE9jJaDCNj/yw/Ws
         bKg7F1eYLW9ZVniLhWA6iqkVZh3uu1qFKlgD7KedRsXwok+WIOe6OeTRRLCkdk42dScm
         Nt+9ckV8miPs9CRfpQcUAfXFCSTCEGT/arUTzprGaJRKO/TTWBkAZ60S5sIPQGsIxN/G
         YFbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+JkrAguaA4FevaIgN4b1v22GffPjBXn+F9mDlcjWweQ=;
        b=ighMxXWWLFGasFynHDE9lYqHQcz/ulBkl4YqhISNjaDwwZrn1TFHq2BvSlCOjVkXx6
         /u5YXRBZGbuUsB5DEhldtJ48D3zrIFG23I4Ax7Oo6CY3uVawdeylulNtLPHIT48Gzrym
         8SfPTANdejv1a5AXnXbQl7s6eBkY6F3BcFKWyhDre98i7D3YYna44WLvwsVJEsQDnvF6
         9tkRWdn3HwEmbpqXdKwYuyTHuqLQOWvp88eI9okV3YDazS9stx+SHz85r+Osrn7Whj9M
         gnuIo4jpk2C3o9ot4ppnpswXtulDbIhzKzJNZcS1t5lZ5JevAFlYoo3XGg0LNzqNyDnu
         IrkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZCnmgjAS4sK/0Ykyo/L2C/g9wH3BmsauxRSI/724tdR0Fd5t+O
	ItwJwclmGJzcphSF7i7YNHw=
X-Google-Smtp-Source: APiQypLxiIdSkU+hc6sllsClsDNL6R1JEIkaYedWnKHZMYLqJNr7WHhonk3NgtOyJBtLoBeUFFCDQw==
X-Received: by 2002:a92:d846:: with SMTP id h6mr14095966ilq.248.1588858359080;
        Thu, 07 May 2020 06:32:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:13c7:: with SMTP id 190ls2336246jaz.9.gmail; Thu, 07 May
 2020 06:32:37 -0700 (PDT)
X-Received: by 2002:a02:a887:: with SMTP id l7mr7596018jam.91.1588858357235;
        Thu, 07 May 2020 06:32:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588858357; cv=none;
        d=google.com; s=arc-20160816;
        b=v3qoSkFTpei3NFU1hy7JuGWesYbCSCtFycqE/89+YduS6DlWNa+rJKwIGz3ip0l+O3
         uyrnda0gGutCRUznyrcg65cRVshkGGEP4kw161qDMZu276HvrSbNvB9X0MwdIleDonmT
         ZR5bJjHvzaa835KvevTk9asuUaISGkrgPV5+G932pSsev0VByFVX9tZSn+imqLsMcjVM
         Zn6BjI1RND5GrX+l32oqcW2ptnJqPbWQaubxFNLbWfrXAfQBfwaKrk2GgrLu575dR9XB
         CyGtGSjfd4AUA1vCrWuWV8DxWYSv0I663qu5HLuHHvcVwUlWZXgE1/DUd5rBCWGfV1TD
         1xiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IWNT0grjCY4sGAusEiDjhM/Qhpke9FBN+ida4mrV6O0=;
        b=ysgQFSIj3CpaohU9ZFlNGhebBsHmIo954nLI1L1V4JISHowH/wINQGknYyzi+AK8fe
         +93IlqtQbKN3MFva8S508ky1O1bWjpoxuquzUzSzb3vRV4Nj8UfoLT1HG4LAyBD1jc/b
         ddMBVab+OY3BL/WAxGDF56DkjQ9vTExZ2NRbwQP+ZpNrKDBAC6nehQpp5FXUb5YOD/cb
         wmaCekVrndYM3K7d8IV9rLL5ZDlQrey79wtFf0KfQ4PRRABymtnJyrR8My+Uy7+lhbwn
         Wjag4ZUA3r+cR9bFRrC09Ngj8tRP/fICEL2sXTQTv3c7HkwN7TYx/zO/nweNbiMre18h
         6LwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cK5Jj4DL;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id g5si54702ioq.3.2020.05.07.06.32.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 06:32:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id i19so3807261ioh.12
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 06:32:37 -0700 (PDT)
X-Received: by 2002:a05:6638:f0f:: with SMTP id h15mr14334812jas.142.1588858355459;
 Thu, 07 May 2020 06:32:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com> <6A99766A-59FB-42DF-9350-80EA671A42B0@zytor.com>
In-Reply-To: <6A99766A-59FB-42DF-9350-80EA671A42B0@zytor.com>
From: Brian Gerst <brgerst@gmail.com>
Date: Thu, 7 May 2020 09:32:24 -0400
Message-ID: <CAMzpN2iCgr0rb=MCYPGMx8tcfLq2qdzv0h7YnX5hkzBB+O7JJQ@mail.gmail.com>
Subject: Re: [PATCH] x86: bitops: fix build regression
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>, 
	stable <stable@vger.kernel.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>, 
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Ilie Halip <ilie.halip@gmail.com>, "the arch/x86 maintainers" <x86@kernel.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Daniel Axtens <dja@axtens.net>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brgerst@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cK5Jj4DL;       spf=pass
 (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d42 as
 permitted sender) smtp.mailfrom=brgerst@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, May 7, 2020 at 3:02 AM <hpa@zytor.com> wrote:
>
> On May 6, 2020 11:18:09 PM PDT, Brian Gerst <brgerst@gmail.com> wrote:
> >On Tue, May 5, 2020 at 1:47 PM Nick Desaulniers
> ><ndesaulniers@google.com> wrote:
> >>
> >> From: Sedat Dilek <sedat.dilek@gmail.com>
> >>
> >> It turns out that if your config tickles __builtin_constant_p via
> >> differences in choices to inline or not, this now produces invalid
> >> assembly:
> >>
> >> $ cat foo.c
> >> long a(long b, long c) {
> >>   asm("orb\t%1, %0" : "+q"(c): "r"(b));
> >>   return c;
> >> }
> >> $ gcc foo.c
> >> foo.c: Assembler messages:
> >> foo.c:2: Error: `%rax' not allowed with `orb'
> >>
> >> The "q" constraint only has meanting on -m32 otherwise is treated as
> >> "r".
> >>
> >> This is easily reproducible via
> >Clang+CONFIG_STAGING=y+CONFIG_VT6656=m,
> >> or Clang+allyesconfig.
> >>
> >> Keep the masking operation to appease sparse (`make C=1`), add back
> >the
> >> cast in order to properly select the proper 8b register alias.
> >>
> >>  [Nick: reworded]
> >>
> >> Cc: stable@vger.kernel.org
> >> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> >> Link: https://github.com/ClangBuiltLinux/linux/issues/961
> >> Link:
> >https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
> >> Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
> >> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> >> Reported-by: kernelci.org bot <bot@kernelci.org>
> >> Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> >> Suggested-by: Ilie Halip <ilie.halip@gmail.com>
> >> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> >> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> >> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >> ---
> >>  arch/x86/include/asm/bitops.h | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/arch/x86/include/asm/bitops.h
> >b/arch/x86/include/asm/bitops.h
> >> index b392571c1f1d..139122e5b25b 100644
> >> --- a/arch/x86/include/asm/bitops.h
> >> +++ b/arch/x86/include/asm/bitops.h
> >> @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
> >>         if (__builtin_constant_p(nr)) {
> >>                 asm volatile(LOCK_PREFIX "orb %1,%0"
> >>                         : CONST_MASK_ADDR(nr, addr)
> >> -                       : "iq" (CONST_MASK(nr) & 0xff)
> >> +                       : "iq" ((u8)(CONST_MASK(nr) & 0xff))
> >
> >I think a better fix would be to make CONST_MASK() return a u8 value
> >rather than have to cast on every use.
> >
> >Also I question the need for the "q" constraint.  It was added in
> >commit 437a0a54 as a workaround for GCC 3.4.4.  Now that the minimum
> >GCC version is 4.6, is this still necessary?
> >
> >--
> >Brian Gerst
>
> Yes, "q" is needed on i386.

I think the bug this worked around was that the compiler didn't detect
that CONST_MASK(nr) was also constant and doesn't need to be put into
a register.  The question is does that bug still exist on compiler
versions we care about?

--
Brian Gerst

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMzpN2iCgr0rb%3DMCYPGMx8tcfLq2qdzv0h7YnX5hkzBB%2BO7JJQ%40mail.gmail.com.
