Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXGX3T4QKGQEDY2XXYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B612245046
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 02:27:09 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id u15sf2855053vkn.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 17:27:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597451228; cv=pass;
        d=google.com; s=arc-20160816;
        b=sQGcThHLJcq/BZPqd+ubSq/AJlYQOwzdqA8E9kNGLVaUeTsAEi41rYX0arqEyBsNxj
         dTVuTZEN+0jifRtdas1HPvukS40s0aEw8Bh18M7mGiRfmrUTXA0HI6BdGOSvi85cyz0J
         tk8nEthGrp6WKbmeZI9tz9iLtEymRKtD/90sKHsbLUBBb6/oppQ38mU5B2W8lolpjYGP
         G52imeyg63fwkic5D9sX31SmpC8/Hz4OcHOUgE0d8PzMvPTBDEm1L8GQcrHundHYNhRW
         IkXBBjkU94Sp2tnmbpzTgPsrSBzkVllhawH1sUiRd3ZK04UyMyyQXnNaULBDP7KU3Bmq
         oKBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sclEKhHbZUyx2W5vEYJQKXCUUz1aGLCCQ40bxiJLbEE=;
        b=TsboYe9zc9DFZ4+zZ4DqTY6LQUw8xorfoBOiRb35vBXrPTQiwzy9Id1vOU5vzKfhaU
         FUryAeYGRuD0XkgTKQNNzV7SDVjEb1a0KFiamhMGlI5gIxzVrnvywjXf67U0ukG2Q2t6
         HFISWT0kui+paxVPbixQPmgadLCfg0i6+lgbTNHP+8zUqAqX4uTGPrCRET8DPiYy58Dq
         C6r3ryt+dnhAlwCc8YPX+IKz2YP35GQsVwBiXr66F1ux87HML5eeJFym9ZR3sFdrURzp
         u5FbiMSspQVhEkHnX0r8vv8EwXEDhshdwwgf6mUwXBgjUP5K8vlEIkTutoSTELDlLMH/
         vJAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="M/ugSCNe";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sclEKhHbZUyx2W5vEYJQKXCUUz1aGLCCQ40bxiJLbEE=;
        b=WdwwTjfmsSxLjeD2VjUu1zhqufiBz5CjGFXx8XEo1YxTsYaRPhyVGOEv0qWBXzmSlv
         n99kmrQGh/uWMvEpcZhEZHSFDd9neJb3gpZ4n8HkvYEKHEqlbY0GyE84Kz5Ui1882KW0
         Eizr77fRACoP1JOtORJ+MHr5IBu31vIXNaYq6fRnPeOusLShDgw4Nw8icvCFHQZGmA6H
         BXUFCeWc7L0DGNRUiSTrAx/WO/m9F/+lWlF2Y2p/KoVFmOgDSG4RTkakr9huVr9+Eszq
         IIcWYd+LWY6zq4nt6SgeVKZJgSOaPnebNQDpAkXQnt4f31H3PUDAqmKxQ83z1ZU0RlXx
         k5CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sclEKhHbZUyx2W5vEYJQKXCUUz1aGLCCQ40bxiJLbEE=;
        b=t66Il2GNUQViOoPJxTgL+v1+dHjF6FhhM649NtsJ67YSN3njlRPMIf9OMbeX/BEkEp
         qZ7EmZsjfe2Kl88BjdcwWgej9Tl8Hc4qSPBNX+IcizxVTUdfgeBAR7yE6uDa1Lmhw1OK
         y7wZd9A23YvBdQxBWssRKPuTu4/Pnc8myrL4Ph70oMl6hJMXN687S/fEhqvYFs8oK1ZR
         Y3vAadIC5z/dX5imrcLwnkt/FqJFk7CpozIl/aEwLjzzKw32WqykWRxSYbjpvOwhJBCz
         Khdb7hk4yhosS2XMytD60TK1OPkVUZ+L0V/H3fb+TM8AarGaGZTs05iY+I2XEaTQw4uN
         PaHw==
X-Gm-Message-State: AOAM530tYeVBoYWBZCW29yF8tL98Y0m+kEYxCeDNQVnRnmi7K1hPUrpD
	zo7xfzDfSeMWmdW97jGyFpE=
X-Google-Smtp-Source: ABdhPJyjgraPwkTl/u087c43Xd6wtvBBN82TclETlh/HwT1C05cnC1DI9JrcQgxBYKWNT0rVW0tYPg==
X-Received: by 2002:a1f:734a:: with SMTP id o71mr3079251vkc.89.1597451228368;
        Fri, 14 Aug 2020 17:27:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3cc:: with SMTP id n12ls1286545vsq.8.gmail; Fri, 14
 Aug 2020 17:27:08 -0700 (PDT)
X-Received: by 2002:a67:8081:: with SMTP id b123mr3216029vsd.157.1597451228056;
        Fri, 14 Aug 2020 17:27:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597451228; cv=none;
        d=google.com; s=arc-20160816;
        b=nmPSo1GUjkQ1xiuVpmgvhAbCFOuYjxwHI+IV0gV0+PlIKpif1OeXzC6chcsnYAk4h2
         Ep8CG6m3qphUUfcvikmQs3f6/GVRZLQAa2vz7b1P7SiWoA5gur/yWNXfLu909qCZ4oYM
         NRJR5im0Y48LpzdqCSdWxISAC0KH7KF0Ew6cb/6XUkjTySGRsqZRfLpl0n34msIBZR9z
         OzDptL4Jp/mFCSFimjoOMDd2brrtU7ZMweJTcvwmAsKyXepxH5u5rfcCHHABkeeVVCyG
         TG8MY4s6IC4W3NQyNE8k0KMq3zE/nuk1dOSN6/3FVZ+FKImpCYYPxxm26I8MXXopuA3J
         IbHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eA5hkX4xNHxWO40Nw1BpR0B/AOSewL7fvL2/Um1m3Y0=;
        b=aopCryvClw/EfJwGLwpVfwvBipO+d3dYVGaL9nor9VqMmsrIu3mRxhKbGgs3P3F9O1
         GKlhIG3BNOAUp79AexisKvFiYA3Pf0mZGuDGqDHcLLabou6F7A4XNonYLAMLkxbcjspE
         nh0rLmdOT6b4l1KrvZpd6b0zTK9tMzt+HkDTgwcn2FR8bO3tDoslWJez7TnvuflK4xjP
         rZKXggOhNLQWIcybxF6F3XicRYPmD3i0SdFh6dENb/dluwrCZ2qiY26vcRd1QNB23zm4
         R9FtOb+VGKZRt18cZ/MGitIGtQxZ0h52bdmN1d6QvT+4pn3CnFT8gF+MXaq5UFtvnkkV
         k73Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="M/ugSCNe";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id q1si774297ual.0.2020.08.14.17.27.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 17:27:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id v5so2744241plo.4
        for <clang-built-linux@googlegroups.com>; Fri, 14 Aug 2020 17:27:08 -0700 (PDT)
X-Received: by 2002:a17:90a:fc98:: with SMTP id ci24mr4260629pjb.101.1597451227000;
 Fri, 14 Aug 2020 17:27:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200527135329.1172644-1-arnd@arndb.de> <CAKwvOdmA29WzTd7APsQCsG_a=NVWuR53Z2h8NTLza5sisnV2PA@mail.gmail.com>
 <CA+icZUUjtu3fCNTngY52h3uRL+eUaimNJb0UNwj5v-QwKggs5A@mail.gmail.com>
 <CA+icZUWH5f4B_6eYy2_OOi45VjUkE_kN9akqvcOxxmmmM3TSrg@mail.gmail.com> <CAKwvOdnj6ObdpsdVYkDxWp-dVTTg=xMkBm84y419SNtLuAqfMg@mail.gmail.com>
In-Reply-To: <CAKwvOdnj6ObdpsdVYkDxWp-dVTTg=xMkBm84y419SNtLuAqfMg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 14 Aug 2020 17:26:55 -0700
Message-ID: <CAKwvOdnahyqQQMdWhzpaYkJNi21Ux=8qyBmRnPidiT_RAn0YFw@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Collingbourne <pcc@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="M/ugSCNe";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Fri, Aug 14, 2020 at 3:57 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Aug 14, 2020 at 2:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Aug 14, 2020 at 7:29 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > Thanks for the proposal.
> > >
> > > I have adapted it to fit my patchset against Linux v5.8.
> > >
> > > Both Debian's GCC-10 and a snapshot version of LLVM toolchain
> > > v11.0.0-rc1+ seems to be OK.
> > >
> >
> > Yupp, OK.
> >
> > I was able to boot FreeDOS 1.2 VM in VirtualBox GUI.
>
> Hi Sedat,
> Apologies, but it's not clear to me precisely which patch you tested.
> Can you please confirm whether you tested:
> 1. Arnd's patch that started this thread.
> 2. My proposed diff adding -fno-addrsig to CFLAGS_powernow-k6.o.
> 3. My proposed diff removing __force_order from the kernel.
>
> I'm hoping you were referring to testing 3., but it's not clear to me.

Ah, sorry, I missed your comment on github:
https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674282107

Ok, I will look at more disassembly next week and hopefully have a
patch ready, with your tested by tag.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnahyqQQMdWhzpaYkJNi21Ux%3D8qyBmRnPidiT_RAn0YFw%40mail.gmail.com.
