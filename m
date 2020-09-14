Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB7HS7T5AKGQEO66NBEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 64714268886
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 11:35:57 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id e12sf11682763pfm.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 02:35:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600076156; cv=pass;
        d=google.com; s=arc-20160816;
        b=y1xNJz5N9TFgVs8GB7dgo3LW8sGDFamc9WclmL94moUVEPEKJNRscNAavgWA7s5rji
         pG21dw9E3CEZqIN3SefmOi7r0tt4+2m4YYU1eEUa5CHk6aH8dsUwmOi8bY6QmfUDQT8f
         SocpbgsTLPnS5ZCuT/A8a8vJKLZ7O/LUhBMXZfyapCoR5xiCnb67KWmJbuXkUOQkap6b
         5I7BGPRb8eJEDWqVOPMgypyq2Jv505OsF2OhVWQLgaSrFMet+eMFBiJMmrwG2NPmmfgN
         cM3kXI8Gj3/e1FASI1w5Apap1LZWc7hqezQKBYmImnWBPZ4PBKoMutNTY6ZpN2ww+SPm
         UUEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=s8gBi+fhUSQmYaHSoNdtrkAZpWSmo2Q5R0/8cwuwh68=;
        b=cNPtsM42BKchGZp2xZ6kwikEEpydHw1fdCR/Z2V3v9yYAg26FkwoCWNEKxr7yu9Ndo
         HSgRU0mRBGPT5BTmCJj4vS+PB7uRKWEKlMUXVfC2uk/q8dhA/e7Q9rSUeBoVCi66pAEZ
         H98FU85utAm2CLOhEZe65eA30KxC0g4tOyVB0kGm3zJHfOkfvk8q/Ec5eBILVZDIA8qg
         /E0TjYxsG7IhZOm6LcNRekl52zY0zZ+SoTeLTWpsSTfZwjNJNclL9APmBUS+NBswgdqk
         W9Msi2cVTr9sxEt8MCeX30zxdR9Jt2GPu1KFqeUnepXq5sZXp63QXik0UGYKydNosLU0
         0EIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L+p4RPrb;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s8gBi+fhUSQmYaHSoNdtrkAZpWSmo2Q5R0/8cwuwh68=;
        b=jdXDo6gqw7M6U0lza0JIiVYyvKWgZpHyq7tAtTqOAwHF9Vj3Ie/MULs+/jXuRijhtY
         2G9NcJCBAgj2+6LlpLvvJAT72w/CuQV7qpO4lENaT29ATVhzfrnfj6P338B8l7qT32Hw
         33K4Gy0J0ARIwUcJTzrBdb2p/knZi20IHpfcTCjIiZe8bjSJlHxRYOFFegs3Jfyj0gvF
         B/xuXkXl3cbYG10XP4tyQTf9YqjReeSqId+3jNVUphLno0c7EzKrxeKaHfyTbtxyx83o
         Nu+7ydTN365dYmcx1SnNXfFKusM88g6s6zHKRhbKjTuyzx6u18nU6s/kt5DoPli1Kf7T
         JZLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s8gBi+fhUSQmYaHSoNdtrkAZpWSmo2Q5R0/8cwuwh68=;
        b=a5497yTWiumGMO4HW9iPTlsWxmxybo3m2TEEhascXei77HMYa8Qyzsp5sVukD66g+a
         armujbJUzL9mGYjBgVVXKvTEkBekT6SlkfhGS9W2xkXGgvZzl1yw0Q8luPRCL3i1BN5c
         hPCUChF9rCT6IIPVrlVSySaxFXrUk9TrHL5N5fD5XbZoSnFUYq+UEKhl2Curc52YjTBe
         AqX594xOXCUFOovaQfiUBptXxxFiu+F17SuNMXxp1OINAx/tcb3ALc9sQAtX3Fs1iwNw
         VtRrM/44YLxFBnJJG8kshqx/ijZQmskR1z4Vn2Wil8PaXEf1dDJn5ngwiH9JM008QSBj
         LX2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s8gBi+fhUSQmYaHSoNdtrkAZpWSmo2Q5R0/8cwuwh68=;
        b=eWa26HvsyIGXKAxQ4Y0TB4Bps8eSrAYZzSYW+jk5Y2pcbSBifdRJch80qTdAs4mARC
         Cz0u849Wjsiioim3CT2oJ/QfvtrPAA8AzdaM4pdEguXV0gJxUZ/Ncx1nWCX7ONkM61xK
         LXvHU2dvmxN0sOx4BixPkHOXINpJfZTbdHQg1U2JtKyBITikrROTyuFu5gP+be9cvbF1
         ozKwdw/Vme1zB58DkSgiKFS7TtvKi2qqt/ke+MgxEBJ//1m6KmjmgoQVsjhZaQD6Aj/L
         nnYRLqGqfUxKCvXA6Z0p/FMXUkWeHPq1jdVUKPNctZv24WvLoYafM3l6m65KbBG20ZC7
         Aivg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329qV4/UhGTvbRp89PHE/MIVVZEzfF3GHB65CY99SCcoj/KP7Cc
	YsEmCcCHXdtHv/lmYscW6I4=
X-Google-Smtp-Source: ABdhPJwkFwglzCfR6Sr6Lbzi7BskrEGjNLX9rTUG7ShQBUXXEWo3hMweZR2CzB1BttUIVJN02nO+cg==
X-Received: by 2002:a65:691a:: with SMTP id s26mr10469788pgq.103.1600076156127;
        Mon, 14 Sep 2020 02:35:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c8b:: with SMTP id t11ls4656878plo.3.gmail; Mon, 14
 Sep 2020 02:35:55 -0700 (PDT)
X-Received: by 2002:a17:90a:744f:: with SMTP id o15mr13779758pjk.216.1600076155572;
        Mon, 14 Sep 2020 02:35:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600076155; cv=none;
        d=google.com; s=arc-20160816;
        b=lya12TEQzkCtMqH1FUy70xHal6Gp0kCgD7jlpxEGIR3evtm5yiy37q/c2SsIHq3Kyl
         tQPPz7ULR984gddsj0/L3gL3UYC1BNzz2Wf7cliwmQYqISuVfROzrZzrIugg31zIvsgt
         3ySx0p66QKK0pao4xDLXLAIY/l+VBV8sPUuNCy+KqC/xGuZXYF3L59rdfQmCbnbhKBYk
         DRG201LusSRVdARPE5yCDgc+1jiIJN2OMmE9oFPuYpf078+lUL5k/UUJ8yp38O3PmDte
         k7tfJF3nMKhw17+0kelprD75RwL7e7XYpx3oAx8GsEczRot1J+BUUT2RTCcCyvIb0N3i
         c/Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=r9cbH5W71i4ID4miB4mL4ql1K0EFgtyqFKMoedqtXIw=;
        b=Yo0HTrH4/WJmiKNGmac4dfIFtHV6QezYOm+avpmws/99ANHze5GBP6hmlLiY1Ko6QY
         zKYjiEIAyxXpsXpaAMOM1D7T6hZF0OhuR8rdMjNQGfOtKA0jq3PSfmqfFTPko9EEhAYF
         CIm33oaVo/vZFqQYLXe5ETgKgx/AnTndauD4J1KOwF7IG+m5q72dD2ELOMKcvskFblPJ
         EkUYhiWtVS3S9T93KXwme8PdEIxmWfz59vp1tgGk7eXlHS8KuXPWPB0iEd8j7hkNsl0U
         H2mmVGlZ7TKgH74PQVRgHEFnzpzWzz1RDLQmtq/A5OvRllrQX9P8lkOpg4v5ufQnezeM
         fJTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L+p4RPrb;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id lj12si622075pjb.0.2020.09.14.02.35.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 02:35:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-oo1-xc43.google.com with SMTP id h9so3867214ooo.10
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 02:35:55 -0700 (PDT)
X-Received: by 2002:a4a:2c02:: with SMTP id o2mr9510259ooo.24.1600076154986;
 Mon, 14 Sep 2020 02:35:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200812004158.GA1447296@rani.riverdale.lan> <20200812004308.1448603-1-nivedita@alum.mit.edu>
 <CA+icZUVdTT1Vz8ACckj-SQyKi+HxJyttM52s6HUtCDLFCKbFgQ@mail.gmail.com>
 <CAKwvOdmHxsLzou=6WN698LOGq9ahWUmztAHfUYYAUcgpH1FGRA@mail.gmail.com>
 <20200825145652.GA780995@rani.riverdale.lan> <20200913223455.GA349140@rani.riverdale.lan>
 <CAMj1kXFnuzdmPxCytCbFdgtLo8Bb4k247ePgbLuZ1mANEn=azw@mail.gmail.com> <20200914091627.GA153848@gmail.com>
In-Reply-To: <20200914091627.GA153848@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 14 Sep 2020 11:35:43 +0200
Message-ID: <CA+icZUXnkBwrHxfCkAraPWzSks2RhRAfDr9=m-tDympmCp2zng@mail.gmail.com>
Subject: Re: [PATCH v2] x86/boot/compressed: Disable relocation relaxation
To: Ingo Molnar <mingo@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, e5ten.arch@gmail.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
	"# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=L+p4RPrb;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::c43
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

On Mon, Sep 14, 2020 at 11:16 AM Ingo Molnar <mingo@kernel.org> wrote:
>
>
> * Ard Biesheuvel <ardb@kernel.org> wrote:
>
> > On Mon, 14 Sep 2020 at 01:34, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Tue, Aug 25, 2020 at 10:56:52AM -0400, Arvind Sankar wrote:
> > > > On Sat, Aug 15, 2020 at 01:56:49PM -0700, Nick Desaulniers wrote:
> > > > > Hi Ingo,
> > > > > I saw you picked up Arvind's other series into x86/boot.  Would you
> > > > > mind please including this, as well?  Our CI is quite red for x86...
> > > > >
> > > > > EOM
> > > > >
> > > >
> > > > Hi Ingo, while this patch is unnecessary after the series in
> > > > tip/x86/boot, it is still needed for 5.9 and older. Would you be able to
> > > > send it in for the next -rc? It shouldn't hurt the tip/x86/boot series,
> > > > and we can add a revert on top of that later.
> > > >
> > > > Thanks.
> > >
> > > Ping.
> > >
> > > https://lore.kernel.org/lkml/20200812004308.1448603-1-nivedita@alum.mit.edu/
> >
> > Acked-by: Ard Biesheuvel <ardb@kernel.org>
>
> Thanks guys - queued up in tip:x86/urgent.
>

Thanks.
Did you push it?

Git-Web on <git.kernel.org> seems to be slow this Morning - checked
Linus Git an hour ago.
Does Anyone know what's going on?

- Sedat

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXnkBwrHxfCkAraPWzSks2RhRAfDr9%3Dm-tDympmCp2zng%40mail.gmail.com.
