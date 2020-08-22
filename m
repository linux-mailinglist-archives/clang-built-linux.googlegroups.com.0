Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBFWIQP5AKGQE77JFKSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B3F24E6A9
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 11:23:36 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id y13sf2811255pfp.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 02:23:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598088215; cv=pass;
        d=google.com; s=arc-20160816;
        b=pBvSyOlIzyBQl+vT8/qrK+m6MbOtf3udcJQ0tYcdfIp5aA3+tnHLV2xiemUKhgBHL2
         MLlKQ5+3awWPQyCwVHktF4RRmsR/J5UOdbnLJBQcBj8AINCdoyJCRwxnFZcoK80OF8cj
         UcBP87U52kcvrgpsQq3xud5aqpCMjk2Mr7cGfbiMGjXuSWy0s5qmbpUJpFc+L36HhDAh
         FWNWM6Qx0M1/acXrJUbTvt7bo4aIK96HAxNF6bz+wkviVQnRHzHBnYtgFZUZYjc9Weno
         g0EehgdDft8YFRdLd0Y6AooQKiYKoN7wiP1XDPQ/apYJ4qvRvOdcAxZItrM/sM02C6BL
         81hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Hoaq5EGVq20v52aD4TjzVNKy3MIo4qW7MtoGC+EXK9k=;
        b=goDmk84Dh0XJwtX7AkoXsOHcQ2BwXrB6JgZ9JohMUzv7y4JUjvjgA6/AKZA1cJMYf/
         ipN1XtzBljxic+v/HVtMd9oDqE2fDPg5w3lc7cJV7rdj2Lujv+xQyeauRkrHpVBAv5aZ
         ApT+m0kbHc7Dx5L84suCAG5PbHBFVXDJWtLb0t4YprcCXLk8T9NyY0y6q2BgMJBlKyK+
         os51X5UR1+yy4xBkz4BWRtjGgLD/28aiRkZOkRY0ScdnLJ2CykkhquBeEndgUlTch+yN
         1iSpkguzl9bD0KTwZIjN7XnWK76FGyPDLXDUcoRFPjhiExVUPAqOWNfGM+Z55oSTYjSN
         +SEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AUQziiOp;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hoaq5EGVq20v52aD4TjzVNKy3MIo4qW7MtoGC+EXK9k=;
        b=ld3KI+cTcj4L06PVDOyTUhQHiszDr+EG/ZAhZmlVX34b0k6fXOBiFqjoO+zUxT4B6E
         eJR5ehp8qU/gOZ9uk2+PZTtrMdBVpyKqukI/vzT9eXC44FfR4MzdFsQarEfV4RgIUPv1
         vj1UBEsCCcjqolQrJh50+kiAn34pK9cL/QXj6+kRnY3I2CM4GG97IeHfHw2gzEQYGGFj
         y83IEibv4urZ/nO2tvctw7Vw2YchsS0ZGOOwlGCNFydmo+RM7omvgQjiPKR/M8bJwOtz
         LLystmLoZXQpVwpC77GKfZCQ5Dfpum5hInbDFhalNazGiTkzfSJFf5zVuU7KZaaQK2er
         kepQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hoaq5EGVq20v52aD4TjzVNKy3MIo4qW7MtoGC+EXK9k=;
        b=EMZSSDWLan//lZ6JI/QJLnCDiHSWwEJBW2yjUt7xv+uUydES5opis8R07TFAB3FAQG
         U3x5e88vLUhFPnZ3IUd6xy9OJlDf6zl9xj5p0kQogdrsv7tXtUtiMn+QE92wkgMuufvW
         rZ1P8mnCUZ1I2NaOWhXsMRQBZvOO648TwBFKbtgsEpfcmt+jnrbliX2RFLO6gugw0la8
         1MX5hkbPINzXCRP5PF+Dwv0dtxq4OQCYqQzAr8hf3c5OoqCIbsSaN1yCuSad0Do/1/0S
         xCJ64zrWcDJrQ6k4rRUyebS9DOY7/QBxuRqlcsWgOI0/wq2izdVvqsxHCXKHpJbet7E3
         DvDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hoaq5EGVq20v52aD4TjzVNKy3MIo4qW7MtoGC+EXK9k=;
        b=CxR1BobRRddiNWcvRYOUOYvlCmQ2MpZ+S38t8OlFKkHMcSLXpdw3GcwigQxxpnfksu
         VJdbSFewnTUxH9mjnJTPxLyXpTpPd35imYt2RiZMqkA9QMNItKtsuuFQBtYr6hMqLTfu
         zuYCx/NI06y3rC8RFo9ZpuaUgKYe5QpazFN1C/cWmtxRemAjZASMsax+6m0lN6I4dGTa
         kdA2H2tnSa6rImIshwzGJESRj5sXKHWvA1+3VOIbDvE2FONPjoJjzP8oeGOeUMFr+o/x
         biqTSVvb/Lw/F+Jx0Jplkclad/bC0h/xvyIBSRuQj6h+eLSMMUrNHG+pvgY2t8oiJXZ+
         Qs+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sLQSJ2FGB7nfgTKFax5f/6bBTWi8ohULOs6iK8a2uOrm1m7KA
	xvenfGz1/s3Ix3rE7f+5ocE=
X-Google-Smtp-Source: ABdhPJwj/XVe+RUBUjmCYGpiqK6vWPwuXqBF9ulnZhj9JX10teOBLxETHjnd2XRbR+HVSeGP2k8oIg==
X-Received: by 2002:a62:a203:: with SMTP id m3mr5461349pff.86.1598088215109;
        Sat, 22 Aug 2020 02:23:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b12:: with SMTP id b18ls1613925pfb.8.gmail; Sat, 22 Aug
 2020 02:23:34 -0700 (PDT)
X-Received: by 2002:a62:5cc4:: with SMTP id q187mr5589044pfb.95.1598088214574;
        Sat, 22 Aug 2020 02:23:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598088214; cv=none;
        d=google.com; s=arc-20160816;
        b=u/3ChNLdbScmHrbCuvrL5OZQJFBi6z/UzVvbcTmcEeISzX1Cv5Pm2fwOmUUmIlrDel
         fKuv8lGiEJiAh4sIEWrojHSU5RGc6wBS4H6dOLs/fv2xk1cPnObUJfTJ4/igf4A8hER9
         Dqa1JKN1M5Nw8AqKkf26rDd22nes4ro866OjKki3k0NclZsd+IrsdbBvWgc4LgBv2CQE
         xWEOwGNDYNUf8leiPrnM/x5gS09/EwcA4eqP9qu7nDWGcDGDiwfm+Cc8LQfdTl0TUozQ
         FlNzKkVuS8CFOIDiOMxq6V+UXCdUDHhvea18Fx+bVF5EfZBrFPSUuNEzmrh9yyNxXnVQ
         DWLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HXml0ksMnzvv0PRQAiLA54DGPaMuEoNWDNqurufgFqc=;
        b=qQcD6ZbdTrEWsOvlRtFFSlgIuZ6tQOD/B44wRSgXa/lfYU/EPLAGTMdVcTmhyb/LOQ
         Nw/psbWe1eU9G/u8bZF2sL6kXckhqUpdC7qfsbRFD2bdap8InJhNZ/xxBRquI/BrJCNR
         qYCO/jy9J0uwn9pij3fU1IRPQwPsILoDCoiMfwByZ7V6nqk+kqU91YQAwUrRjgtvJAXa
         BeqepZSr0yeViJdETcOGQcl+dEB0J/zluRlzqk5v6tU1HvVPB/QBW8ZqkpN0NIy74oi6
         c23eMszcy0r2ooRaYNnMJcXEKufCoLYnh51D4/g9vXT9TA7IAdpy99YONA2WeJarUric
         KyLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AUQziiOp;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id ls7si126158pjb.2.2020.08.22.02.23.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 02:23:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id k4so3691708oik.2
        for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 02:23:34 -0700 (PDT)
X-Received: by 2002:aca:acd5:: with SMTP id v204mr523966oie.35.1598088213901;
 Sat, 22 Aug 2020 02:23:33 -0700 (PDT)
MIME-Version: 1.0
References: <87h7t6tpye.fsf@nanos.tec.linutronix.de> <20200813173701.GC4295@paulmck-ThinkPad-P72>
 <20200813180933.GA532283@rani.riverdale.lan> <875z9dioll.fsf@nanos.tec.linutronix.de>
 <20200820130641.GA536306@rani.riverdale.lan> <87zh6ohm03.fsf@nanos.tec.linutronix.de>
 <20200821230435.GA56974@rani.riverdale.lan> <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
 <87eenzqzmr.fsf@nanos.tec.linutronix.de> <20200822035552.GA104886@rani.riverdale.lan>
 <20200822084133.GL28786@gate.crashing.org>
In-Reply-To: <20200822084133.GL28786@gate.crashing.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 22 Aug 2020 11:23:21 +0200
Message-ID: <CA+icZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AUQziiOp;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Sat, Aug 22, 2020 at 10:42 AM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> Hi Arvind,
>
> On Fri, Aug 21, 2020 at 11:55:52PM -0400, Arvind Sankar wrote:
> > Cc Segher.
> >
> > Segher, we were looking at gcc PR82602, where IRA could reorder volatile
> > asm's (reported on ARM). The fix was backported to gcc-6.
>
> I know ;-)
>
> > Do you know if
> > there is any reason the problem couldn't occur on x86 on older gcc
> > without the fix?
>
> No, I see no particular reason, at least GCC 5 seems vulnerable.  (The
> GCC 5 release branch was closed at the time this bug report was made,
> already).  There is no reason I see why it would work on x86 but fail
> elsewhere, either.
>

[1] says:

Current Minimal Requirements
...
====================== ===============  ========================================
        Program        Minimal version       Command to check the version
====================== ===============  ========================================
GNU C                  4.9              gcc --version

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/changes.rst#n32

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ%40mail.gmail.com.
