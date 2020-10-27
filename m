Return-Path: <clang-built-linux+bncBCIO53XE7YHBBDNA4L6AKGQEIEEBANA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB5829CB2E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 22:24:31 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id f4sf904744oto.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 14:24:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603833870; cv=pass;
        d=google.com; s=arc-20160816;
        b=bZeVCynUeo7xib+4ptRe2Bylq5Jxw98qYSNcu3CrIbwIpHQNc07I5FRObz611eH1P6
         /4vqsjHRXu+pr+54Co4MnwMRsgZKfKAqf3UChTEfvX2ZjbYo9l34sBurhsaaxqQ1XYdv
         PIv3Bh8gl1vtbvIGF0z/gYsE82v4OON6l+G8WD1GzNO2JTuoiBoqojm84cwkUe1mfGWG
         BSm1sLs5F+h1subJLo8be78OPN41qfMgfY/5tlgLWgekZP3T1/k0KwHi+dFyhOu1EoH+
         g+wI7HMuqfn3/re3ZWmLZ7X+JQi/d0FM3Sjl4Xfbb9lq34BkOvGHbD5jKlRpjdWajxew
         hIvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=7QVedLJ2Y8L5SLS7o03KBKV9BVZ/nqhrhjSUdNPEuPY=;
        b=KDPvqw1BSAXVrKXcv6V1unGCXAWudMWcm9wCikzFSYiHAhhlSKJN4pOzGBEMFYEihx
         67Sr6u/Cnp3IyFgwQ2av3jdZH1fGxBYsz+XOyQ4J5R9BR+KbFP/HQtoezDcej7HLBajw
         FeARyQSRLgutUtFzByamCFS0YcqlgrPQZ4oUwS5/z1z8Tf/9Sa5GPXROXYi0o7gkqMyR
         6JBSzv2+hDqi0/Zh0JbTMI3KGTz0l8RfQ7NQHRBqfhtjl1fzCqmuUz57Q0BzM+rcHYbN
         tNq80F6kifPeaFbMhsOV2Pqvgude32/vphKShAZ75r9Ud4gF5kh+xdDB9K48dQmPI96a
         hXTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dkXJ1GSV;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7QVedLJ2Y8L5SLS7o03KBKV9BVZ/nqhrhjSUdNPEuPY=;
        b=VCkn8CUcm41En3I3Qyy2tKzG3qdjpTLvmigreSK9Jr6uzFH2Kw5NAMAGI2o8ZhdNHU
         5U7/X9UFy4QxCzEfl6TALNyyCnkp2jVUleZdxRIGQbX5mxqDaj/m1XOyDGeaTfxOUZNK
         J5T1SSB5yXxMemej4+i46VZJ6Z6t1v6p/2NPJv4abhpNhh+tPwF4/LRCu7EVkgnTEFT5
         rzmtNthiE1JL3GW7DCkbIFG0yBXbmPqHOcayMGQA/UWGT47tIBjn1UPnuOSqu3m+Su0G
         +TCYy+1Vi3iXn4lBOkZyeoLn5Z9/F5kvo2igo8Md9dO2AI8DCYS0gh+4FTGUSntiw4SL
         VCWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7QVedLJ2Y8L5SLS7o03KBKV9BVZ/nqhrhjSUdNPEuPY=;
        b=At42OBPpBPeORMxnQ+NWJmsxH2zs6QhN5XCkKHnLtI58d4vZxjdmvsZ81EuFPGwOf1
         bPXQ8wy2vGiN3dmOcZOHSmv0rHPwafiZ2e7/jqO44OuwxXDiOl/UxQyFviMos/vPuXmT
         K51zE99U/TafcBRWb+N9DiGXgryeza19w3ZQKvRFWjN/4WV+mbqiBBecXZIAAV+0e8MG
         yyZ5Bi1mDwCMBob7Tz8rcdwGdXM7bwrUO1SWJCm7kOSUraMKrRJfX/Iak+JUdLlfnEIx
         axvSLGHTcQBQzrzVX1SHz8Lx2wwcTuqB1/qbr+510Hz7/kvhtg7J9iz2xy1Ut0zc0xFy
         GFYQ==
X-Gm-Message-State: AOAM532/+IAHPi+AbGSHXAOApmkNFQdsIpjOSFRW+KuG0beOZIvLT6PQ
	69UkW653oJmbVc8QTIRC1l0=
X-Google-Smtp-Source: ABdhPJyyE6a8/lrGtz7cGmYdba4XKHadMJ9OmHu1nBvNH5bLZv7KAPejgltpsevKXeEY5I9Q1nidtQ==
X-Received: by 2002:a54:4808:: with SMTP id j8mr3034129oij.136.1603833870023;
        Tue, 27 Oct 2020 14:24:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:b12:: with SMTP id s18ls811136oij.3.gmail; Tue, 27
 Oct 2020 14:24:29 -0700 (PDT)
X-Received: by 2002:aca:8c1:: with SMTP id 184mr3065528oii.137.1603833869683;
        Tue, 27 Oct 2020 14:24:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603833869; cv=none;
        d=google.com; s=arc-20160816;
        b=qVtSK+kIrj5H/vWf8L+JTs51tNk2E8mRb+GCHVlosWPHIR638o/QzQ+HlB159H9WsC
         FajgO7m8LCzH/WWdhtTsg1c9jPtleDLjt4P7J5SIoocOaNqk2dtdaJgy1P7LFSDM4kP+
         K0F0eakbxNAFDOMqrh1TNHJgyETusATCmL9NLJ8KScmfk+EE378vXrqrSnSpseUAtp2L
         PvjX06J+tilcS1qBzXHSOUJloS0hFkvH1/b9EI2VMfer6BoTDq0H2XTByDyKzw2WJvrT
         LmkKADme62vEKsBQ41QHeqf3nK1gXoctlVUDwnCpiqlUELG451CJRuAzdek3tIce3qX8
         Zatw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=0FLU/FMaC6xi93uyz3KYGgImr83ejyr3rVqberCTz8k=;
        b=byalSuuiVzfAeF6IKAtcxe0fewGRtk7e3yBfuoYNY6XzALKewxVyZLYiRaCO5F7oo2
         E4PTqk0TbILMvCZKmmOTsSuaEGNAOc7YomStNRD1iW+AO3YloMQu120Uf7yDlOCGMxDq
         F8vWaOTf/M12XyEbLwSFl+/M7T6BmYcCxpKSwNbypCsyBAXcG0OuW9wzcr2bYMydRXOx
         VQZKa0JWE4ZzoNoYf/g0bwvwuQFAGGhfWwTeNGL7+Q4HPTbDeZT/eHThocWll7IPdToR
         IM7ViGHlHLAiKdsy+cmioki7qNAp+TVjFeMuF2HuRDiKZ2PF5TScHJuJwsapLkA2l5Zv
         PilQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dkXJ1GSV;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id q10si273513oov.2.2020.10.27.14.24.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 14:24:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id b11so1419481qvr.9
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 14:24:29 -0700 (PDT)
X-Received: by 2002:a0c:8246:: with SMTP id h64mr4822578qva.54.1603833869124;
        Tue, 27 Oct 2020 14:24:29 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id p136sm1640544qke.25.2020.10.27.14.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 14:24:28 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 27 Oct 2020 17:24:25 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux-Arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	kernel-toolchains@vger.kernel.org,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
Message-ID: <20201027212425.GD1833548@rani.riverdale.lan>
References: <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
 <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
 <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
 <CAKwvOdkE=ViGOhvoBRcV=9anjowC_vb4Vtefp9010+sC4c_+Sw@mail.gmail.com>
 <CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ@mail.gmail.com>
 <CAKwvOd=8YO3Vm0DuaWpDigMiwni+fVdrpagZtsROGziinjLvig@mail.gmail.com>
 <20201027203001.GA1833548@rani.riverdale.lan>
 <CAKwvOdmrjeLpS8H_uf_cfbOYFvE-ZhOdJQ14o4VoNF8ugARA0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmrjeLpS8H_uf_cfbOYFvE-ZhOdJQ14o4VoNF8ugARA0Q@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dkXJ1GSV;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Oct 27, 2020 at 01:40:43PM -0700, Nick Desaulniers wrote:
> On Tue, Oct 27, 2020 at 1:30 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Oct 27, 2020 at 01:17:55PM -0700, Nick Desaulniers wrote:
> > > > >  (I feel the same about there
> > > > > being an empty asm(); statement in the definition of asm_volatile_goto
> > > > > for compiler-gcc.h).  Might be time to "fix the compiler."
> > > > >
> > > > > (It sounds like Arvind is both in agreement with my sentiment, and has
> > > > > the root cause).
> > > > >
> > Btw, the bug mentioned in asm_volatile_goto seems like its been fixed in
> > 4.9, so the hack could be dropped now?
> 
> https://lore.kernel.org/lkml/20180907222109.163802-1-ndesaulniers@google.com/
> 
> For the life of me I can't find Linus' response.  Maybe he shot it
> down in the PR, but I can't find it...Miguel do you recall?  I could
> paraphrase, but might be better to not rely on my memory.
> -- 
> Thanks,
> ~Nick Desaulniers

You couldn't find it in July either :)
https://lkml.org/lkml/2020/7/10/1026

Possibly he didn't like the version check? That should be unnecessary now.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027212425.GD1833548%40rani.riverdale.lan.
