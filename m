Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBHOZST5AKGQEU5IOVNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC64251C33
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 17:22:06 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id mu14sf2080997pjb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 08:22:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598368925; cv=pass;
        d=google.com; s=arc-20160816;
        b=vOg1GYLaO80+LJRMbrUQCZN/Cwfxpqs62Cvj+1s4PCldyisE1f5+0yp3Fhgfv5M3xs
         GMniKs3EDxrXqLpzp8AVY+NV+JIdARUSFtxKeUBPj8KFhoCFNKFQUBp7JohN8WJ0H86s
         OPGboXLoUSGDNufoTElQvCvAKjXDpbeYFa7S4CC/RHqkwdFLVMU9AowfPzATB3VWuAI5
         UtAZDhtnPOfN+UayYUTLkpZcYp4bxn/Cwg12BouFOojrrEvxlDzDpKMisTIUsSfmCBjj
         R7A9+Ba1WId01O8Xt16KVcwWgpnKNn5tl1xsuDO7mQkO/zawIoi9tnms/KFiU3GsTTOv
         bJ5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8U0BADss1MVxdhZ83OcBKnOII1fOJlDiA5uHnKIooCI=;
        b=0xD48qqhO7YA0PvywjSqejZnQDtG5NMWtt2ZHN+Ov6LOOwr36iqC6kGCP6rJJlTnQV
         ooiUgxvayf4duPFzITXZtlrPqvUFx3Pb4WQPA09Any9/ERPpnu+MW9HiPAUMFE7tnmwX
         tYEhIAfTe6EeLxW9jkodHhwBcl4Yee+YiYW7G+PkDucr2CPpWNIhe319YivPKEae+ua2
         bAAsbCDV3mj3Bq8a/REfRmy6A0Gt+m20Ijvnt9anp4BA1fg/L+psQEtZPwSw+X4Q22WI
         oCh66dojy/eAFxQAnzDrjTrwiz+Q6zoO20/DbbEQgUZWS9nf34uXImk1aH1uDR4e2JiY
         O07w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="j9EnQDL/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8U0BADss1MVxdhZ83OcBKnOII1fOJlDiA5uHnKIooCI=;
        b=Buubda16TXhLPGQ8g4ws891RhhA8xr/Cz2+1/+faKMky3mm0UHiXARe8actAlLD0N+
         M8P/4aHmaSG4ahvyIvKW1vCfJYdEIJrdCKtqt+u6WjFv1KolMcYSFu9IDdd5O5FgU800
         opFHbf0tvsiTp42YklI9SETH023pIVK+uv+tj/u0VjTQ9y4M0of1y2fHw3p7yV/7NP2o
         fHVtB3U2VSIetYHhW/eYnik79x99F/TD+KSMr1xami5yjhI1tFx2l8co5O/6H8IjZAd4
         a64Q3NkYu741g0wnTrm+Mnkvipdz7Z18++vo+RgsNv4dPZjQc5/AbeBLgnO7snBnqGRR
         KTWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8U0BADss1MVxdhZ83OcBKnOII1fOJlDiA5uHnKIooCI=;
        b=F7SKybeubeexLjmwvKRInK+fd9jTHERYmioCAxIuRDmQkEh5FKWDoOKMjpe8BxLhKP
         bQv8arhuyF8w8eZMyIofhVsiQWHcBfpcC5vH/wG4/II1UXIVD/n+LoP1azNzThQd9Tlg
         noD0wuSkrkhtL44S/U+kCJkaPl+ZLhP0cQsGkzitPn1cYcvGToHZcspACwwWrUezAjs1
         txCy3o8kQyZ8EHq8zINAdfqk5DovUctRu5PBAHQCqcBEYcw+7a9jd4KKH2bM81nG/37v
         OxDLMb7kTdEeeDD1GHeMZYVwPWkv9k+oGotYRSWKt7sZMZ0i2ffPITOY8tRnomLR21PV
         YDtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8U0BADss1MVxdhZ83OcBKnOII1fOJlDiA5uHnKIooCI=;
        b=eLJcxJTsWyQM6Cqcr7zQVdGk1mmYnLmIwzk9WA9eR3fCWIp4YxocUrpxLrqIRWjv2E
         ZGx+1iYAchBNd7eQsTIXnMI64fUi0D5KzehtwbbbSDJmJ92c3kvbD8DMDPQpIMXBzCJK
         I61QFfNDDng+ZtMZC00tH2uOFSl1kDBviw5+ozQgPye1E5Wu7j3gOTkI3JMDnhmk+WMk
         BFVKuEE4y9RE3sVVJysQHUuSrOYMp6PSIfr/Vn/9jY9RF6pHNLboqi9rCLIJ63iGaOM/
         ssuRyWNqu5aFOrJ8td8XlKbgbt7Ncrf+fIy+tng3NcHN+wAi0dqyiO5odPiVWpUXCa+v
         UuDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uREePwMMl1cqlhkqczhZ+n71akLfh06dTT/f8pYvctLAzG7oX
	6zEGpqqudkln3VG64QGG3UM=
X-Google-Smtp-Source: ABdhPJwpPlTM9LPcIlaTJHJHn9CYZ+OFvgsnZAi+f0L7AUhoJzRBOrBUuWgKUQeeM3iYvm7Gh3wa+Q==
X-Received: by 2002:a17:90a:c7:: with SMTP id v7mr2052472pjd.139.1598368925333;
        Tue, 25 Aug 2020 08:22:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:88c4:: with SMTP id l187ls3057676pfd.6.gmail; Tue, 25
 Aug 2020 08:22:04 -0700 (PDT)
X-Received: by 2002:a63:b10a:: with SMTP id r10mr7334738pgf.431.1598368924731;
        Tue, 25 Aug 2020 08:22:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598368924; cv=none;
        d=google.com; s=arc-20160816;
        b=h2gXI1qom9JUWceHon5RuU8B1MiQ+aZFfZ0caelusaNRLvoZbf9rpzIonC182KRHDo
         onVr3dg7kAjeCOGUZsF9ZBDC04QOrAa+cEhW+l15pGSD/CSwsxm1R3319DlyisQ8qF8m
         6XKln2ES/EJArJbdoAo3zkhXP5zFaFldQ/17A5BHlgVE9eb1z3zMUZgY/Ji7TzqY4fbg
         P2LAiUBaWPklSVBSJ9X2RGgMDoW04J/W+4LKnLe/0+PpKDGGNAmtt4bPPgSnzv/ZGMog
         zUSjdyEJewkcTfcmsTnfQ2bP0GGNH+HErpYebUIWNG3fWFd9tcoKho3dnzAeybLTRkbN
         kRuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fUzRthWoB95qJoATouB2WhM9wBqkFWmCuiCwuyo/jvo=;
        b=M/bG3WbUCRJnK3dCWRq5l5tfrRnSpA+eM2uWCvpeJqowy1/Vo6ppxHl1H++RuzUUkR
         4eiPb6n/OiT2iRLNprtvh5Qa2GnrdB0D+4j5bSEn7tFociN9Gmoxcx9VcNoAV2YZmx3p
         U77vgeFMBAk3DF6hTCReXM07VHZqXi1n1npD1VIfcNuGE/zrun00vBukjff7lat5pM/V
         2A9jTGp6kkDgZPX1fwkMw7VDYrayhngOf9FdGhv0wwjwvp3HMqXkcgTaxKJgFqmMcDWs
         b+ixnGyyThriJ4vE24z4t92lWOsnZXwQ8T0Rx3O7MsTvlE0eoUIGwVsEZxwiARMsvIpO
         LOGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="j9EnQDL/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id a24si774287pfk.6.2020.08.25.08.22.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 08:22:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id o21so11912000oie.12
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 08:22:04 -0700 (PDT)
X-Received: by 2002:a05:6808:311:: with SMTP id i17mr1403276oie.72.1598368924153;
 Tue, 25 Aug 2020 08:22:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200823011652.GA1910689@rani.riverdale.lan> <20200823212550.3377591-1-nivedita@alum.mit.edu>
 <CANiq72kWaS=8rDQ81cCY3021=1J5yFfJk8FHBQEjhtssRFoVcQ@mail.gmail.com> <20200825151910.GA786059@rani.riverdale.lan>
In-Reply-To: <20200825151910.GA786059@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 25 Aug 2020 17:21:52 +0200
Message-ID: <CA+icZUUrsG-Y_3Rg3a6+5mXXoh_w=QYnCFAazKane9fwXAWynw@mail.gmail.com>
Subject: Re: [PATCH] x86/asm: Replace __force_order with memory clobber
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="j9EnQDL/";       spf=pass
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

On Tue, Aug 25, 2020 at 5:19 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Mon, Aug 24, 2020 at 09:13:34PM +0200, Miguel Ojeda wrote:
> > Hi Arvind,
> >
> > On Sun, Aug 23, 2020 at 11:25 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > - Using a dummy input operand with an arbitrary constant address for the
> > >   read functions, instead of a global variable. This will prevent reads
> > >   from being reordered across writes, while allowing memory loads to be
> > >   cached/reordered across CRn reads, which should be safe.
> >
> > Assuming no surprises from compilers, this looks better than dealing
> > with different code for each compiler.
> >
> > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602
> >
> > A lore link to the other discussion would be nice here for context.
> >
>
> Ok.
>
> > > + * The compiler should not reorder volatile asm, however older versions of GCC
> > > + * had a bug (which was fixed in 8.1, 7.3 and 6.5) where they could sometimes
> >
> > I'd mention the state of GCC 5 here.
> >
>
> Ok.
>
> > > + * reorder volatile asm. The write functions are not a problem since they have
> > > + * memory clobbers preventing reordering. To prevent reads from being reordered
> > > + * with respect to writes, use a dummy memory operand.
> > >   */
> > > -extern unsigned long __force_order;
> > > +
> >
> > Spurious newline?
> >
>
> This was intentional, but I can remove it if people don't like the extra
> whitespace.
>
> I'll wait a few days for additional review comments before sending v2.
>
> Thanks.

Thanks for taking care and your patch.

I have tested this on top of Linux v5.9-rc2 with LLVM toolchain
v11.0.0-rc2 (ThinLTO).

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUrsG-Y_3Rg3a6%2B5mXXoh_w%3DQYnCFAazKane9fwXAWynw%40mail.gmail.com.
