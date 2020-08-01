Return-Path: <clang-built-linux+bncBCIO53XE7YHBB7GES34QKGQEUCSZT3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B172353BA
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 19:12:29 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id w24sf5460605vsk.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 Aug 2020 10:12:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596301948; cv=pass;
        d=google.com; s=arc-20160816;
        b=o263+EWuwAInr1YRVsHdBD9HJzndDwuy9AWlxLvxxCnGLU3OwDy/CxSpBz9HoacOQu
         gLcfden5F5m8J9+e3LslYu2wyQ2/nbq3GRL+yXovb0cZwirItmsWaFtE1i65KGBx1qzq
         vURs2bcHHn+kGJUpbbBt8bh4/cNC1ggiyIUhskbd/sCS1+8Ksj+r5bwqh3qB3o4trupY
         qusScfl7Irkv4BA9w0ycN8VD/7RpCC8S44cG2RMdoTOFSDq5Vr9OfORvkgXK4q9sOEmt
         9sGMCiga8dC2nGImHMlvz3Hdka8As3DDX9oDoIyDker/dF4IdOtfUlctNx/5RzBdneFB
         PxRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=4ACENBeTyrWL8q8ezGMKaoDbZiTh1nRyYfOkmh6pxng=;
        b=Hl7QHZuVJ0OdhXt4cwUlVZji4HE7aS/YPmZK2lRkPQQN1v2D+1/AZxn6YzlMOt8w1w
         IqiT8sjlBMSWvmwqxr3RbyossdAyTq7KNfsnpF+8PpVM95HRKob1/mJ1D1lF1UKmgIqn
         A5ypePDKh1Er8DnddVBqcMjXEdHYa5HBdnzHynMuULtwVJC6v+IGwLE0J7DmXuWTO6WN
         0/xKlKXzd4KgABEYl0J3dh43lhrPdf5w4aIO6O5R3YPYLtIvk6rkQk3SaWSGeuVptS5n
         Tcvcj1XWmsprJg3SXrwR0hWzQCCZwNgGwo411h+8fIx+KgLWWl5TU2vyTgVSG2a7SEOp
         OPUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ldn6PBxD;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4ACENBeTyrWL8q8ezGMKaoDbZiTh1nRyYfOkmh6pxng=;
        b=lT/QW6NB//nwg+a3sk7LAJZgEH/DWQDEgZBDv9/6ZmxsvYqXtIoX8MOzCTNKzUpyFT
         vJfFa7dspwl8wwVZ2sxGnuGR0uFiHJXfA46aFe8Sjf65+JQ7Iwl6kjGWsAKgBNwtDtRR
         6oq3JlRCGrjWcKuTNNHKK/26u9JkrYRCuIhsJrO7gcyYKoVO5emrIaylYpAjloo7RtRt
         kfUxqu/bIjUVI77G4fEFiUSGXcWfZHwIVmzx0NsOogn06EO82ZDb745ZogV3KDyr/yTi
         WoXmreTxmqGeHRMt7iMraU0dU/woJJjz7GNaER+vwGRyww8ifCfYIhn1aDIo7b+xAVe9
         au5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4ACENBeTyrWL8q8ezGMKaoDbZiTh1nRyYfOkmh6pxng=;
        b=C5KiURvw4jrP4t2leoIVuPQYB709dAW2fbpelX4EHn3popwOVIm6vh8jmbA5MNa/ze
         EtfUh506a9tP1a4Z4+9v2jn3GwjCajC7QTL0IPGttP0HQuXZ8nlTx/dqxnF4Li2nd0su
         6BrnOXV+RAP5hmYCzE5wQkBoihtyG0SoAU+f3zx2zmzbX2fj4YpeqR77Fze+J99RqZia
         4PCHwB8bZ1HN43Lreky7vV8gwnKvvJ0fXiKW22XbyeubS+mLOn56V0usabD36mmWC153
         Xz/khf+rWmiBi6uAfXTGDU6oEGMPdoGOleZuUmBL1tBR6L0QbTWRoPTgnDbNKCI8zsGz
         O4dQ==
X-Gm-Message-State: AOAM531FXT1GqUjn+wfM4h3OYu4YKktQwJ2nPSaH65uqj6RQxp4ERI9G
	YxvLPMaNFQhQiLoUOhcijOQ=
X-Google-Smtp-Source: ABdhPJw9KWI7pcFow9Y4JVgRFhxNX2jasFpx4nPon5AqJoKf75l1P83oYMoszHATjrwzlfFCDoHzsg==
X-Received: by 2002:a67:d485:: with SMTP id g5mr7280188vsj.229.1596301948607;
        Sat, 01 Aug 2020 10:12:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:21d0:: with SMTP id r16ls1461398vsg.0.gmail; Sat,
 01 Aug 2020 10:12:28 -0700 (PDT)
X-Received: by 2002:a67:6996:: with SMTP id e144mr7428206vsc.185.1596301948136;
        Sat, 01 Aug 2020 10:12:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596301948; cv=none;
        d=google.com; s=arc-20160816;
        b=WihXCYQYUYDJ3d8BtCHJmG/ekIVDcT+yB374fTu9pDHzr9sxl/Orc+nopL+z99JVtS
         /HXHhcfNN40GyG/s7+V8mp7h3kqsVkziz/J6M73W12QgdymuqGi105/L1hF+Eh+k4zrL
         Ti8Pq6ocZgc5AVR/IFYjcsZw41ZTcrLHKSQs6q/kQzdQCK+Hqj1eDaKjoiXePUrJaOV2
         D7E8IQXsyEaHXU141pm9x3TUwY8RRhH1VrZge0yCSxBPoazNWruwZw3tQEjvBZi3MDns
         CHGe7DS9uRdRUFMR3Nd9hlr4HqJM1t4rOwZMEIo1kQhimPwJu3GYPe1HrVb9bA0BUImB
         lgjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=2o6GVTZCy3XlmzBSwd7fA26VADSjJEkCYNl3YQKOr2M=;
        b=BRqvUsCCuxk+QBBfECdhAWdtU1bD8lvu+N0aj24LgPV7/IjB5YBgFg8f3uq2TcPMyg
         oO1P5qGrTuQsH3dfKzJeH7ieOjEsWEIoE13sMURvYrgB7Kgl115OmJ4Z7d0E7ySICwaC
         6dBJxDlKW4+acYIh8YRGLcmMvg+1t4b8n2hZbMdLG8/eOT8+tuh1OVXdlcjnwZqG8hPo
         CZESGrrtIKzZNzkX4ISrxQgARktyXMkTPmnI1EmmXItcYEAKFET+8R9Uekst6T2eaZYv
         Xa81YZZhRXsQAkTbZy+WNwnsDKwsmEHy90meyLkfSvEEun82/vA3kq8Sok99bYf07MqV
         whvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ldn6PBxD;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id y5si246346vkd.0.2020.08.01.10.12.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Aug 2020 10:12:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id c9so1876485qvu.5
        for <clang-built-linux@googlegroups.com>; Sat, 01 Aug 2020 10:12:28 -0700 (PDT)
X-Received: by 2002:a0c:ffc6:: with SMTP id h6mr9551061qvv.251.1596301947711;
        Sat, 01 Aug 2020 10:12:27 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i19sm12760874qkk.68.2020.08.01.10.12.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2020 10:12:27 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 1 Aug 2020 13:12:25 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 32/36] x86/boot/compressed: Reorganize zero-size
 section asserts
Message-ID: <20200801171225.GB3249534@rani.riverdale.lan>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-33-keescook@chromium.org>
 <20200801014755.GA2700342@rani.riverdale.lan>
 <20200801025325.GA2800311@rani.riverdale.lan>
 <202007312235.4A48157938@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007312235.4A48157938@keescook>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ldn6PBxD;       spf=pass
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

On Fri, Jul 31, 2020 at 10:36:00PM -0700, Kees Cook wrote:
> On Fri, Jul 31, 2020 at 10:53:25PM -0400, Arvind Sankar wrote:
> > On Fri, Jul 31, 2020 at 09:47:55PM -0400, Arvind Sankar wrote:
> > > On Fri, Jul 31, 2020 at 04:08:16PM -0700, Kees Cook wrote:
> > > > For readability, move the zero-sized sections to the end after DISCARDS
> > > > and mark them NOLOAD for good measure.
> > > > 
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > > ---
> > > >  arch/x86/boot/compressed/vmlinux.lds.S | 42 +++++++++++++++-----------
> > > >  1 file changed, 25 insertions(+), 17 deletions(-)
> > > > 
> > > > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > > > index 3c2ee9a5bf43..42dea70a5091 100644
> > > > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > > > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > > > @@ -42,18 +42,16 @@ SECTIONS
> > > >  		*(.rodata.*)
> > > >  		_erodata = . ;
> > > >  	}
> > > > -	.rel.dyn : {
> > > > -		*(.rel.*)
> > > > -	}
> > > > -	.rela.dyn : {
> > > > -		*(.rela.*)
> > > > -	}
> > > > -	.got : {
> > > > -		*(.got)
> > > > -	}
> > > >  	.got.plt : {
> > > >  		*(.got.plt)
> > > >  	}
> > > > +	ASSERT(SIZEOF(.got.plt) == 0 ||
> > > > +#ifdef CONFIG_X86_64
> > > > +	       SIZEOF(.got.plt) == 0x18,
> > > > +#else
> > > > +	       SIZEOF(.got.plt) == 0xc,
> > > > +#endif
> > > > +	       "Unexpected GOT/PLT entries detected!")
> > > >  
> > > >  	.data :	{
> > > >  		_data = . ;
> > > > @@ -85,13 +83,23 @@ SECTIONS
> > > >  	ELF_DETAILS
> > > >  
> > > >  	DISCARDS
> > > > -}
> > > >  
> > > > -ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
> > > > -#ifdef CONFIG_X86_64
> > > > -ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
> > > > -#else
> > > > -ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> > > > -#endif
> > > > +	/*
> > > > +	 * Sections that should stay zero sized, which is safer to
> > > > +	 * explicitly check instead of blindly discarding.
> > > > +	 */
> > > > +	.got (NOLOAD) : {
> > > > +		*(.got)
> > > > +	}
> > > > +	ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
> > > >  
> > > > -ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations detected!")
> > > > +	/* ld.lld does not like .rel* sections being made "NOLOAD". */
> > > > +	.rel.dyn : {
> > > > +		*(.rel.*)
> > > > +	}
> > > > +	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
> > > > +	.rela.dyn : {
> > > > +		*(.rela.*)
> > > > +	}
> > > > +	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
> > > > +}
> > > > -- 
> > > > 2.25.1
> > > > 
> > > 
> > > There's no point in marking zero-size sections NOLOAD -- if the ASSERT's
> > > passed, they won't be present in the file at all anyway.
> > > 
> > > The only section for which there might be a point is .got.plt, which is
> > > non-empty on 32-bit, and only if it is first moved to the end. That
> > > saves a few bytes.
> > 
> > Btw, you should move .got.plt also to the end anyway for readability,
> > it's unused even if non-empty. And with the ASSERT being placed
> > immediately after it, it's even more distracting from the actual section
> > layout.
> 
> ld.bfd (if I'm remembering correctly) was extraordinarily upset about it
> being at the end. I will retest and report back.
> 
> -- 
> Kees Cook

Actually, moving it to the end also requires marking it INFO or
stripping it out when creating the bzImage. Otherwise we get back to
that old problem of materializing .bss/.pgtable in the bzImage.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200801171225.GB3249534%40rani.riverdale.lan.
