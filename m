Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWOH2D6QKGQE3ELEAMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id F27FA2B6E99
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 20:26:18 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id l189sf10474464oia.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 11:26:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605641177; cv=pass;
        d=google.com; s=arc-20160816;
        b=I+X/8mQgi4rmjB4+tIXGqyQU2kHzRRf2PuIcGvq6MxGmYAwjAJigThOkX6exHgiDUL
         EQB3RgDdu5U+X6h+JTdX2GEHLwUSF3P49jcELAACNKiecAY7RhJmBnZ1Oj9jYN6ZpTHJ
         6XhOvpL6Ut4LFDfhSN1uJL4aIMm0cxLcq3TGOkYe9n7GrBXhzzMsoH4ZST52lfkCLVJq
         MPxO6CZfuPKKEgbrfbMwktNsie1VBY5EoPabIB0v9iFbBe26eXGxePMoN10vuosC8FP7
         CpWeA9u9GxTEPQSs7ErHv2tVgyBC32JGzc54q2mFl7nB12i1NT+eqqRZXPt4JP3vikiQ
         qYHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cJFEW9qamsatjRdItjyao+rWl8CWmjAX5ZJ5Zpsgkbo=;
        b=ifcLAjBq5B7iFWeaFQWbFsMzCvgOnuAhjb6R0ZxQ8i7jfoh2Ux39O05Ftqrj5BVwdP
         nyHFNVQACRXYix1+tKoo0Me+g7SfRIIsfKoSNUVY31xdxsuNQ4PTC+rOMAr6BV3JWLIp
         giBAXZH0vDYJrmtH7gtkdsgGEWSPtBC2qaW1ZzwIuLFIO6WKYC+uwSBfRmSFFUX2DDt3
         I42dWO110NNVzlxH2RLOSdVe0j1INqZ+lGOB4HKKsu23qAhB5eK2UDXuR1ZOusZV9Z/+
         uaurkJ+gd7jKgMe7NDf4hzIMf5gnNpxpANJYxTpermTuEsQJ+MDHsQWOS0n3bfEsdzG8
         3BCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rc7d6RpV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cJFEW9qamsatjRdItjyao+rWl8CWmjAX5ZJ5Zpsgkbo=;
        b=UrLXC2+JGQ6Wg/nbJwyN8Hl7Gj0ayL+RBRZ0g8LcsnSIM/JHd8oCjf7Up45dATigyR
         rRctu1sKCuYBAtp9wG4KR0yZUhC+gFEBEKUPSK7Aux+xvLNBIS07L7VJSmX108lp1H8m
         B2GYtk3nPoHZl4rkRe3LyxzEaszdfBE2pRISooVJWXBTB70QF/eLPTZ2gM43jQN60drq
         3MxB052qzXuS8fXxjy2Un07Gamk3TkasYJKWz4uR2cWvJcXzXcDnuBCeEtM6PMB5AF1k
         op0OvRCbH6h5QOyWcQOOmYlV6eM94Nym9zhQwiEwCQqxqH6MMNooZ8PBNKtTrTC8RPTs
         mgaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cJFEW9qamsatjRdItjyao+rWl8CWmjAX5ZJ5Zpsgkbo=;
        b=mncB11zpnSrQT465IDrK9KwCZzJ8dXOleotH/NggG0F2cKWr7ABJSYs0u4fH3rsiG5
         rccIgLyd8sKiqjZG/pkG0pPFNvH7ER25OkKqJstA0R7QdTqqnaBnElBqF/1eee7WzjN4
         bcwZZaLuAlKJzHArDj6PAzwL/mG1Wib96lMut7XKI3g4zs7xXQ48AB5ZbHrRv2Xm4sqL
         PMJUBEtza5qWjiGu8Dc0j5Gywd5eGhqZDShLYbl1efoQttMvwbgaj9frkAJk+oQUfA3v
         HtEG2C9iHgcQJzCwZjDYpFIRT9pMJc7rPcGTo5VmEBE8uuVlg8mvSQAEdK+crADdS03G
         vmCQ==
X-Gm-Message-State: AOAM5339KJ5OsO31qufk3a1MymAA65QCHL7jxB6vDMVea71RySf0dkNY
	ItF/J9aFpP5R5R/Y1K7sTQk=
X-Google-Smtp-Source: ABdhPJzz8IzRa+uc2oiMhNX0QlRNBpDXrCYmV3qMQf2ANrNs8lxYEi63MR+IAJPe0L4308GBNj29tA==
X-Received: by 2002:a05:6830:150b:: with SMTP id k11mr4229801otp.234.1605641177464;
        Tue, 17 Nov 2020 11:26:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:98a8:: with SMTP id a37ls1075709ooj.8.gmail; Tue, 17 Nov
 2020 11:26:17 -0800 (PST)
X-Received: by 2002:a4a:dd83:: with SMTP id h3mr4098497oov.31.1605641177108;
        Tue, 17 Nov 2020 11:26:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605641177; cv=none;
        d=google.com; s=arc-20160816;
        b=E16aanJ6R/Keb4828hs2JJ7nLaHl84mHWSK8hTbvTzp8DMcn9egueYi/O5UWqgivcT
         ycxFhnGlQ/lg3iSliR0JLk+hbcHqDr/Oi59y8yusi+KBSQq806ZcHW2jU52hHrxqi+V4
         uXzMqhc5MIzEOcu2VJscrHwTOFzRkUaJSKi30USgpUHkqkhoOv/gvsJ5q3n6b5W7w972
         m7JM6SA32PVYT1YqYTSpcfs7RTmHy6QupQV71vhO7zLkP+ySv88mNL3piQcyb5hkeS5K
         vvETjAUCAUC6l7qifqTijsq9EwCQ6SAUbaUxtoxjk5zLQKPTM3QWYBNduPSzdXmXoCWT
         xr/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QKqRulGkV2LShhH9uPn88VjpNW5CZTHrE9JvGus3Oq4=;
        b=aWekycgc10dObD5RnP4BJgck03Mqn6pz9TuZjMlctCPVjs44RLErLTMR3gOaMBhCbs
         dhDxAsxtJMzeLW6PssGownPplCnhdMQLCetxMrU0a0l8kE3U9sL1otYOuUifu6dpI220
         JAtpBAJ2nEsAglptEL0dT4yyQxB6N3CJD0OHdBRJKYVNmDheTKJBCzH7NKIjjFnB8IbB
         hHlMHMjS65zEb4AMB2x2MXYVpIJVrdvmnfMGipz0avVysHfcK9UxlyWhJ8vIE92kcZ0I
         H74gzp+bofil8QGCmZPK6UesTCa8BePpdbOuWs+NBAVhBTOt/Loh4lPSyK1tXMS3x63Y
         23wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rc7d6RpV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id b4si441313ots.4.2020.11.17.11.26.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 11:26:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id r6so1007825pjd.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 11:26:17 -0800 (PST)
X-Received: by 2002:a17:90a:4881:: with SMTP id b1mr595006pjh.32.1605641176219;
 Tue, 17 Nov 2020 11:26:16 -0800 (PST)
MIME-Version: 1.0
References: <20201113195553.1487659-1-natechancellor@gmail.com>
 <CAKwvOdnf5WKJrLnwM9dDDniP0eG5gnFSMB0rapqWLUAZbVJZvQ@mail.gmail.com> <20201117015438.GA299247@ubuntu-m3-large-x86>
In-Reply-To: <20201117015438.GA299247@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Nov 2020 11:26:05 -0800
Message-ID: <CAKwvOdmDY=rZDuyjAdXQ9ukms_356mw0wovpxVUJ9Jvz9hEG_Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: Hoist '--orphan-handling' into Kconfig
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Kees Cook <keescook@chromium.org>, Russell King <linux@armlinux.org.uk>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rc7d6RpV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Mon, Nov 16, 2020 at 5:54 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Nov 16, 2020 at 05:41:58PM -0800, Nick Desaulniers wrote:
> > On Fri, Nov 13, 2020 at 11:56 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > Currently, '--orphan-handling=warn' is spread out across four different
> > > architectures in their respective Makefiles, which makes it a little
> > > unruly to deal with in case it needs to be disabled for a specific
> > > linker version (in this case, ld.lld 10.0.1).
> >
> > Hi Nathan,
> > This patch fails to apply for me via b4 on next-20201116 due to a
> > conflict in arch/Kconfig:1028. Would you mind sending a rebased V2?
>
> Hi Nick,
>
> This series is intended to go into v5.10 so rebasing it against -next
> defeats that; please test it against v5.10-rc4, where it still applies
> cleanly. The conflicts will be handled by other entities (Stephen Rothwell
> and Linus).

Got it.  Yeah, applies fine to v5.10-rc4.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Feel free to carry those with MPE's suggested change added.

>
> If you want to test it against -next, 'git am -3' will allow you to
> easily handle the conflict.
>
> Cheers,
> Nathan



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmDY%3DrZDuyjAdXQ9ukms_356mw0wovpxVUJ9Jvz9hEG_Q%40mail.gmail.com.
