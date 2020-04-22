Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTVCQL2QKGQEECXT7UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 9025B1B4CD6
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 20:47:43 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id k3sf1536988vkb.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 11:47:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587581262; cv=pass;
        d=google.com; s=arc-20160816;
        b=jHRnxusQGfnjBYr3RyTlSPdZ/cSR4yZavQM9mJFP1ckMkaDkSqF6sf0F4Hx/3U/wpA
         aFBEHUfic0Sc9+hMZDbzXjK5AAlT4o/uHcETkEZByqoKbSkw1Xv/Z3pKf4Z+YPUNA1eq
         VEkHJ7Iypy4t86QYa4l1aIVn6vdsdE+lpvaHS0mQivsEOk1caski55s+YEz4KfFaPLza
         uNKCasSL738bGfP0R1BLSf9nmbsezGKptLiOhXlnpBitTHpgnvRYQ/KFzwyEltvCKX0c
         CTZjPLDtybxOZ2hPHywlnY57Cm/HTZPnDzoCvrFv06ugDOAzzzvoKuw3+PW5AeJHUAJL
         muJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c+0SKBPFvhWxURVw6ic/TLg4KJK/iGMRkOM7a8PHRCY=;
        b=gcLGdaruEqZS53X4w5Tzb6MMmSQHDnJT29pQOArV6N4IxrsdcDS4HZNZzrHHDhV2QB
         xdTnwrnAeyh32UKAsZK8q86xMfXoeO1D6YiXGrZIaTwlmmnFYfzpc+g5wiks4UUa9XJZ
         2XET/hG1Q5RFPeVascaKsmtTefctRe1gBXVk1M1dn4dP1Ntqlr1v4GpBmXnguRFjzhlF
         bqW14EfhGkrfSeOuNsYwQpq/QKiJ1oS4efyh7KypmTTMvmc9+OCCDJFEKqYg3np7R/QQ
         skeEJNXNEuWYPvXwRgi0RWB0hNzJMOoZWLiAcytLkeHL044SU365kl1RdHjD50xIb9O8
         CE2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RFUf9SlO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=c+0SKBPFvhWxURVw6ic/TLg4KJK/iGMRkOM7a8PHRCY=;
        b=kGCrxTIernOENI54NDAqkyw4wmPifOpVyOW5VpThLObke3M64h6WHc/3du+tzv6wd8
         oFUCMMSG6DWBH2H+vtBbQ3JO4INz3X6kniKS5VaRfEjt9yRg4HIOjAsKXG7RJ5G9+uka
         B8XXyCeXJJZMiQfm8ZJVFVAqFGnnZJN1tqGvETNtnrrAOdknbpL+3PzqulvtM6hEy6uB
         oh3gFGE1Y+cNxcWuM/TH0z6Qi7r4yh3rMcyk8vETNPOS3U5IInudz+39gmBcN0BGmSyL
         Z2EiwCekDbnXcoKuYWR/EhyPvgy02Z5geQfzHUzGw5NXH2pg06jaSqIt0DptW5Gqs/BB
         Krvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c+0SKBPFvhWxURVw6ic/TLg4KJK/iGMRkOM7a8PHRCY=;
        b=uaoMOe+lzly4xsD3ijg0Nqodsu25QpOpapxEjz+jSiK90G3HMvMu9qS0JPpGsDbz6X
         iZBoYkoq+KCEeX/JE7fThAMeESV1yf4lN0uiyilEpQQ8AEWj2dnv08c8dPeRC94lHdb9
         sh/WFUwdviM32FGDbUrVk/qnb8rRYsk/UAgFa/LcF1EBm6ppwV3lWivuKjU3+ZcU296z
         Ui0f7A5/PfE7ACx8wWzZz5U/PrtM1+TlVOdk4Yg/odcpp3TUh7Z5aFFEzWx+YHtO6a6x
         wjYZWMHgDIIm9ciceN3XNPZG9wh2AiZHOTiZ9i4wX0vHlJHfpt5SJOPhcQ3VRJVPfh+K
         HQYg==
X-Gm-Message-State: AGi0PuZ3yGJ6OcmUutJ81YLGQfTbbWEHANDwUf9PK+/ScgTwb6OvtW5S
	Tks0UQOjq0zugZS+L/C1nGk=
X-Google-Smtp-Source: APiQypKkkcClSVYTLBei1ljIG+1kdEl2Hv61P2Zzf13TPxuAEEhT8udUaNwXAk/CnQpxo8y77pD4SA==
X-Received: by 2002:a05:6102:2156:: with SMTP id h22mr200565vsg.28.1587581262556;
        Wed, 22 Apr 2020 11:47:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:b14c:: with SMTP id z12ls513692vsl.0.gmail; Wed, 22 Apr
 2020 11:47:42 -0700 (PDT)
X-Received: by 2002:a67:f258:: with SMTP id y24mr179273vsm.112.1587581262144;
        Wed, 22 Apr 2020 11:47:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587581262; cv=none;
        d=google.com; s=arc-20160816;
        b=EetdaZLU0r1IJMVETEC1ys8U5ZGB3OZsjAHnscANgEJ7RR9bp9TF3cak9RCKwWPD6B
         A6GlvfXrkt80uV8T1BXGhFcMn7dN8OQzOaU5YdXzyf+5E3izqE1DlDGFo2I01h7bU/UA
         xet8RdEmlR26DWzlWxO8Uur8FI0FYvE3zWtCF0ENyqfyMWnvMlPvSfgF27ARVWud/kai
         1MLo/8gMo9Jg65va2UatvZ0GEg8Xumllpqfai4IPOwnAnOxyk4xicgeGfoMSAGQAXtzZ
         Zvvn9L3BH00XDdyBApKBT2sfmOrUjmtsIEBxr0USLNC2dsD20lyddfHANaO/l8L8aMqx
         SCCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5k+yPGx/qr44nGnCycXueReY9HedaR9suO/n1V+xq9k=;
        b=bXQDMkx3Kjx4s1YDR5NCg4GvBke3pVv+RUB2Jl4KfuQ2X0ZYOueRAgfgTFvId51G5A
         GLJHQkeW7rB+Sp7LuPh4rlvteahJiV24FH93rSwEp5YVFCeLRzDlNSdwfLlHFn2sh7Pa
         LJmgkfVhzp6g0lu/6b9ausY+xApfzuEZc5oK8MLXBaO9Udwz8tk4DRkuRySwmHVaFC/3
         3vZFfeiy4wYU04tCOLuy5X4XHZAXyBnpxxPkVYpS88rl+a/1zV8CFGaIhqpb9fIQkp/3
         Ho+IKKcABNh5aKty6ndSGUS0iF7n51h8iTg3JE+PNvdjuoOyvhznaOfnlhB6skAineHn
         oYzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RFUf9SlO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l3si3470uap.0.2020.04.22.11.47.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 11:47:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id d184so1564596pfd.4
        for <clang-built-linux@googlegroups.com>; Wed, 22 Apr 2020 11:47:42 -0700 (PDT)
X-Received: by 2002:a63:5009:: with SMTP id e9mr366799pgb.381.1587581260929;
 Wed, 22 Apr 2020 11:47:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak> <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de> <20200422102309.GA26846@zn.tnic>
 <20200422114007.GC20730@hirez.programming.kicks-ass.net> <20200422134924.GB26846@zn.tnic>
 <20200422135531.GM2424@tucnak> <20a91f2e-0f25-8dba-e441-3233cc1ef398@suse.cz> <20200422165339.GE26846@zn.tnic>
In-Reply-To: <20200422165339.GE26846@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 22 Apr 2020 11:47:27 -0700
Message-ID: <CAKwvOd=1CDhfgkcXJ1Q8bZcy0UKWFFoP4QCeCzt4OE7LTGq6yA@mail.gmail.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
To: Borislav Petkov <bp@alien8.de>
Cc: =?UTF-8?Q?Martin_Li=C5=A1ka?= <mliska@suse.cz>, 
	Jakub Jelinek <jakub@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Michael Matz <matz@suse.de>, 
	Sergei Trofimovich <slyfox@gentoo.org>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	Andy Lutomirski <luto@kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RFUf9SlO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Wed, Apr 22, 2020 at 9:53 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Wed, Apr 22, 2020 at 04:16:53PM +0200, Martin Li=C5=A1ka wrote:
> > And as I talked to Boris, I would recommend to come up with a "configur=
e" check
> > that a compiler does not optimize the key code sequence:
> >
> > $ cat asm-detect.c
> > int foo(int a);
> > int bar(int a)
> > {
> >   int r =3D foo(a);
> >   asm ("");
> >   return r;
> > }
> >
> > $ gcc -O2 -c asm-detect.c -S -o/dev/stdout | grep jmp
> > [no output]
>
> That is a good test to run at the beginning of the compilation I guess.
>
> Without the asm("") it produces:
>
> bar:
> .LFB0:
>         .cfi_startproc
>         jmp     foo@PLT
>         .cfi_endproc
>
> I'd like for LLVM folks to confirm that this is a good test for LLVM too
> Trying that here with clang gives:
>
> bar:                                    # @bar
>         .cfi_startproc
> # %bb.0:
>         jmp     foo                     # TAILCALL
> .Lfunc_end0:
>
> so this *looks* like it would work with LLVM too but I might be missing
> something...


LGTM https://godbolt.org/z/ExtHx7
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3D1CDhfgkcXJ1Q8bZcy0UKWFFoP4QCeCzt4OE7LTGq6yA%40m=
ail.gmail.com.
