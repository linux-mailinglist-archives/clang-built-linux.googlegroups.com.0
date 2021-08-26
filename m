Return-Path: <clang-built-linux+bncBDEPT3NHSUCBBHWFUCEQMGQELL4GOUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3697D3F90EA
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 01:24:26 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id 11-20020aca090b0000b02902684dd1d9a5sf1661232oij.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 16:24:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630020255; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q+WslViYtX8lDKfr6auYpLockJXjR1pBVdL4RzPrEfXNiF9eAWhJitvdqUChW8U471
         XVFkWY/E52j6FFRotTLgZZVI5PnUYZHAokaKdI60hP7aTkhcLoQRL4PDJEnOWMwbFklP
         0QKVxqb6BdtV/SpI22gVHX2Y2EhvbbFhei5bUYkH5zvAyGeDbRw0hLy4x+Z2UeMwWGeW
         V/jKWfwPqe8BmrDMZ7XW3QEN3hX+j63+X4Id56HVu0kSh4t7vFAK9K6dRmlkUiErV39v
         eg6QVMVQ14RidAb6/VdyPwSeFxmFNkPACBrPUfuQSzW4ebYrbTBT1H/Oh7i5TOluLcrN
         04lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:cc:to:from:date:references
         :in-reply-to:message-id:mime-version:user-agent:sender
         :dkim-signature;
        bh=hKsB/eZyXB7vTfYThuWfcQOW0qqRXoVFU3tL8AjtD8c=;
        b=xHiXbDfA4pPx+sPSoiWlhSnyfv9yy4Ds3v4khMn0w3LE4SaAHhbGHg3kQdDaCc8tUP
         U+606Rhgsk/AZmdZhVRdg5Hu3ceF4rW2Fsik3Y6o73M6wGzvfeHpJ3jYdOe0Og4CNYgx
         pd4JYwcBKMGpGX32NFO2oV/xPElU6BlVFXRVnq5NxD/sebNnyR9JZ0zaz+zv2+BybqTu
         ua3EDgBABL1GsqBeYJB3R8VNP7ngmsH94Lzf5TRKgMAdr3jDIrebaYPjuZYJhgrgFPfg
         IRdOTV+hTNMqpEzF6X4fojaQTnUw5v0E6zDP3PuQHB8Ized+2Epyp8i9fpHm9ZabEGO/
         SO0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iDNj0Dtc;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:user-agent:mime-version:message-id:in-reply-to:references
         :date:from:to:cc:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hKsB/eZyXB7vTfYThuWfcQOW0qqRXoVFU3tL8AjtD8c=;
        b=LzONTo7k4L6d3Tjh8VJa4fx+T7volUDkuLZfBIX2CalkNP4kw40ol6mt8EG4tKrtom
         E2sDKM/Bm1nrBDoOl9UYWTxW/xzKzgZH1aDROwJM/lZOCQhmSgXcLlbgL/qGjgmb5k6f
         OpFyFn9E9G5ObSy9Ds0TCi9kCim5u5vGwoWypr9e3nkH7/T9oVPWQlIJeWjiAFIgw6Dj
         HY36JIGMkAIqIDzuPU81vaou2wGlLQHR+vMQC3m7Q1tYt2U3xLC57YkX5iRcosKOi1Fk
         1XI3R2A2QdkKCGg9XReAriF3t/ElVrFiCBs/1eBBKX6eIG3RH2VitKxX4ufco3RsiVEP
         yj0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:user-agent:mime-version:message-id
         :in-reply-to:references:date:from:to:cc:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hKsB/eZyXB7vTfYThuWfcQOW0qqRXoVFU3tL8AjtD8c=;
        b=U0o/gaaWHUKOYpAmYCSnCyzhaybqkIkVB5malHaOOXofBfo+zKgX2CO74+ZG17WcDP
         TA4wqhNJf9GS8vLX6po3OfhLv5IDxyd50ZBOMZrNpjNjPmgLjWgBdOs7WtbTgFZppxLS
         E/+xWWA+9Qqq2a6TymX2b6McYGmw9MXzVE+p/apzezeEclWA1eroFwRkNgn75xlL/3e6
         Oo2nUrg23VXN7jB0tBx1xD7/fhIZuqKBOQTASXGIka9+jJt7Li7zshtv4ccPVKAZ+hdq
         YOlMnIs+sQKylLhylZIVgCM9g/LpgvtUvQ7txWFYxC4Djefh6BYlQdaAupbLn94ASrZ8
         6J0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327KK4efkmgmnoJgpibte/qezLm0G3ioLX4KtO/Nn53Yq8eoa9k
	f30LuT6vIf/64gcjS/GVPHY=
X-Google-Smtp-Source: ABdhPJxKPHBQHAcrv7ezP4OpbJA/p78DILreC9k5HwFD2OLEuqbdSTaR/252G6Y6oruUoloxTunIsw==
X-Received: by 2002:a05:6808:158d:: with SMTP id t13mr4280109oiw.27.1630020254933;
        Thu, 26 Aug 2021 16:24:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4408:: with SMTP id q8ls2019291otv.7.gmail; Thu, 26
 Aug 2021 16:24:14 -0700 (PDT)
X-Received: by 2002:a9d:6f81:: with SMTP id h1mr5522506otq.242.1630020254486;
        Thu, 26 Aug 2021 16:24:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630020254; cv=none;
        d=google.com; s=arc-20160816;
        b=TgVAIxcJGSF54Zsbo67Tmek2GEMfeL5J1i4nTEQ6jXlxlvkj1aFZdMVqbNTKkNJ1Yz
         FtfUi8B8fd851OGGdS2VXSgkKaugeYUU4C5WTZq2+3ZOOWmxPiDJ7wApkHBvhHX1AboZ
         zSF0imTdUAbSTmY3SlCnZRJv5vwY2gD0KsTWL1Fu9YVPcOTPVIwXNqHx9UU8FXbUU/Xp
         dzC8rUCUy/iM/8yqVkme6wMB367rl5uc40J646HDxeYBIoV+GZqFIIc86ug4Hs+HVeXz
         //FwMuIYFwmbnNbxrPw6xdweZMfxycOINre6pOODmlmZ2jtWu26Vb5yPiUWroS9bqIqb
         KyVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:cc:to:from:date:references:in-reply-to:message-id
         :mime-version:user-agent:dkim-signature;
        bh=zrA2B1n2smMEgrYkLuAqwpAzZh+CE9+rD1ToKSBzNGI=;
        b=y5aWFFlisbPfjL3zE5b5ofBtJlf99mpbMsPEeEFfdu/X4IX/q3jkavI4flUNSakmhR
         C2FQoL0ZtNYj+56vSgfUrY9oZ2d+favR+khdLfS5u8/OwU1zjqDK9g9a/kP+IHKqDROC
         /qRXt3xdufNgj5qdtkgZADGg3MDLQ2RIehVYD9hDTPiGjaaVQ+SWwj5cVb8ITV3LkrmI
         2jU1L0APPjxx09XsYVnTgUZBa54ctB1Cbt7RHhBw5LskBOviu8tWAC/uf9m/3iJmGJ5R
         Lht5vlAQ/W6kzlXp6R2KRoLcpB7UJXsmPSB4TBj4YqjH3vdAEhhL7XASqOoJlbr4+L9P
         FW2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iDNj0Dtc;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b9si465817ooq.1.2021.08.26.16.24.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Aug 2021 16:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D476260E8B;
	Thu, 26 Aug 2021 23:24:12 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailauth.nyi.internal (Postfix) with ESMTP id F279027C0054;
	Thu, 26 Aug 2021 19:24:11 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
  by compute6.internal (MEProxy); Thu, 26 Aug 2021 19:24:11 -0400
X-ME-Sender: <xms:myIoYZo4fAo3elsjBHy8-cTiskHxe0-bkPgFhCRM_Wt8U2sMfByQxA>
    <xme:myIoYbqRrBNSQ1-qwhBCfuVKjyjXwnAoOzfG77nL_Xsk1QNYYUgejRVfjw7W_UATJ
    1Rp0w89CrrqhmnPQ7U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudduvddgvdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
    hicunfhuthhomhhirhhskhhifdcuoehluhhtoheskhgvrhhnvghlrdhorhhgqeenucggtf
    frrghtthgvrhhnpeegjefghfdtledvfeegfeelvedtgfevkeeugfekffdvveeffeetieeh
    ueetveekfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpegrnhguhidomhgvshhmthhprghuthhhphgvrhhsohhnrghlihhthidqudduiedukeeh
    ieefvddqvdeifeduieeitdekqdhluhhtoheppehkvghrnhgvlhdrohhrgheslhhinhhugi
    drlhhuthhordhush
X-ME-Proxy: <xmx:myIoYWOAPwZP0E1PVxP0KwmlFHtTf14kccot6cT81Yk1NIz7pGc75A>
    <xmx:myIoYU4IijAVcMpV9qlR31L5vM59iko-7SciVOgQVZuFozWOfwLjiA>
    <xmx:myIoYY5hZzZHDGH48xyrIGISNqscX_Q2xzvKVZQ3T2dRxFn9Pao23Q>
    <xmx:myIoYatHq5kzxfR9Lpwegp7VLp9yiPw2WdLUVRYncaFuMhJgDRk3Ye5kKCk>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id E7336A0378F; Thu, 26 Aug 2021 19:24:10 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1125-g685cec594c-fm-20210825.001-g685cec59
Mime-Version: 1.0
Message-Id: <959b3e65-97c9-4e00-87c5-f4a31c6739de@www.fastmail.com>
In-Reply-To: <CABCJKueE=_WCLkVDmPss-Bo-1VWaX7W6SSNx33rQCO+eEv_Lzg@mail.gmail.com>
References: <20210823171318.2801096-1-samitolvanen@google.com>
 <20210823171318.2801096-8-samitolvanen@google.com>
 <b2b0247a-39ad-097b-8fab-023ee378c806@kernel.org>
 <CABCJKueE=_WCLkVDmPss-Bo-1VWaX7W6SSNx33rQCO+eEv_Lzg@mail.gmail.com>
Date: Thu, 26 Aug 2021 16:23:50 -0700
From: "Andy Lutomirski" <luto@kernel.org>
To: "Sami Tolvanen" <samitolvanen@google.com>
Cc: "the arch/x86 maintainers" <x86@kernel.org>,
 "Kees Cook" <keescook@chromium.org>, "Josh Poimboeuf" <jpoimboe@redhat.com>,
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 "Nathan Chancellor" <nathan@kernel.org>,
 "Nick Desaulniers" <ndesaulniers@google.com>,
 "Sedat Dilek" <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org,
 "Linux Kernel Mailing List" <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Subject: =?UTF-8?Q?Re:_[PATCH_v2_07/14]_x86:_Use_an_opaque_type_for_functions_not?=
 =?UTF-8?Q?_callable_from_C?=
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: luto@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iDNj0Dtc;       spf=pass
 (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=luto@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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



On Thu, Aug 26, 2021, at 3:11 PM, Sami Tolvanen wrote:
> On Thu, Aug 26, 2021 at 9:54 AM Andy Lutomirski <luto@kernel.org> wrote:
> >
> > On 8/23/21 10:13 AM, Sami Tolvanen wrote:
> > > The kernel has several assembly functions that are not directly callable
> > > from C. Use an opaque type for these function prototypes to make misuse
> > > harder, and to avoid the need to annotate references to these functions
> > > for Clang's Control-Flow Integrity (CFI).
> >
> > You have:
> >
> > typedef const u8 *asm_func_t;
> >
> > This is IMO a bit confusing.  asm_func_t like this is an *address* of a
> > function, not a function.
> >
> > To be fair, C is obnoxious, but I think this will lead to more confusion
> > than is idea.  For example:
> >
> > > -extern void __fentry__(void);
> > > +DECLARE_ASM_FUNC_SYMBOL(__fentry__);
> >
> > Okay, __fentry__ is the name of a symbol, and the expression __fentry__
> > is a pointer (or an array that decays to a pointer, thanks C), which is
> > at least somewhat sensible.  But:
> >
> > > -extern void (*paravirt_iret)(void);
> > > +extern asm_func_t paravirt_iret;
> >
> > Now paravirt_iret is a global variable that points to an asm func.  I
> > bet people will read this wrong and, worse, type it wrong.
> >
> > I think that there a couple ways to change this that would be a bit nicer.
> >
> > 1. typedef const u8 asm_func_t[];
> >
> > This is almost nice, but asm_func_t will still be accepted as a function
> > argument, and the automatic decay rules will probably be confusing.
> >
> > 2. Rename asm_func_t to asm_func_ptr.  Then it's at least a bit more clear.
> >
> > 3. Use an incomplete struct:
> >
> > struct asm_func;
> >
> > typedef struct asm_func asm_func;
> >
> > extern asm_func some_func;
> >
> > void *get_ptr(void)
> > {
> >     return &some_func;
> > }
> >
> > No macros required, and I think it's quite hard to misuse this by
> > accident.  asm_func can't be passed as an argument or used as a variable
> > because it has incomplete type, and there are no arrays so the decay
> > rules aren't in effect.
> 
> I considered using an incomplete struct, but that would require an
> explicit '&' when we take the address of these symbols, which I
> thought would be unnecessary churn. Unless you strongly prefer this
> one, I'll go with option 2 and rename asm_func_t to asm_func_ptr in
> v3.
> 

Do you have a sense for how many occurrences there are that would need an &?

> Sami
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/959b3e65-97c9-4e00-87c5-f4a31c6739de%40www.fastmail.com.
