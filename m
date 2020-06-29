Return-Path: <clang-built-linux+bncBCIO53XE7YHBBPNY5D3QKGQEFH7EINA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD0620D045
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 18:52:14 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id x25sf4351160uap.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 09:52:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593449533; cv=pass;
        d=google.com; s=arc-20160816;
        b=g3kntmDt3IdQetcJ31VQPvKuqw9d/5bF3msF031VXVWOe1P8QlZgPMLQcBnOLPHX/R
         U7ordhQ5sqRBIMatO2+eF1k6sSM27G6vQhPFG+s/oXP+SvbbFn/PHh5vManwazQp7nGt
         GO5LtoAkLnVE8Jbr2hAA0fj53PozR/mE8jifNALssdyUGSGy1/T2R9bZI+RVjef10OGC
         bekSpPbkimuBTS8Up8BiKsln9e6wCdkTMv8qMiMQOq8+5ygt/NcjjcGVs3mCj6w1q+Zu
         v+C5doIiwRnboFSL3oosONMjjFiDfvJEMwCP+RNfd95Jiin/oGq+Q9mLPhIyfKE209yF
         pRYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=RzRYcexYwioHMl2KRAKvyQMSdUFPClP68b2jbOX/QOY=;
        b=Wl9/Wh83uoT1jvh6MVlZbYHrBvuDILJ/tT9dl+EUfpGiML4zjYtH2QAFQffjNHDKuP
         oZOI/VwihSRx/KDUYbFuVfhBQei/HfG4KBKSm+t/GT1uEwogo0CsS4qA3UziThlN7t0D
         wpl0dH39Ke/gZRrc72l/BqDonhrelICMrWgVQ87HdygPDoRBhtvuy0U/so9qDB5fwyW6
         1ALVU2e3vQ6rimnZEIbCQ58oZ55gSf7w2EaW/Hr7P+2m+I5/puMJDhdbcVQsWFWC6MXm
         fz2JEbd17zGPHMVFlgMu0mJCMUSR7v+/WploFtIms7rS13nwhEhYyvq37xFcvhIdoeAC
         XtTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AbHbF76T;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RzRYcexYwioHMl2KRAKvyQMSdUFPClP68b2jbOX/QOY=;
        b=euHpFZMn+Wmy33AgrR8322YkuQyT7Zz76i+G0PMlctXacmKrpv+XaElzFhG1WbwQTz
         Hi8g1VgPo7/5xUtsIz6VxhlnHGIGWnBgibOVzzU1vA2EfOF2OTbE4iiylY0kDgxcjFXZ
         4f5/7L+Ssk5NY5o2XzAJOqkSuJwXCjj6jtE2frQY/ISata59Bki3c8GiwvCW04CZ1N+w
         ay6upSXX2uK83MIBm0TxoMoP/1CMVvVNqI8eKxpKPqrEf7MuvAkSgMu79tMuw6bylyCB
         iMaYpYc5eAqxcwIPhPNVRgTj+tTavZHIV9QYE6u+n/Vjql9/LweLe0GkBxr84/a54Pt8
         r+Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RzRYcexYwioHMl2KRAKvyQMSdUFPClP68b2jbOX/QOY=;
        b=WF4xaO0jevIV6uLmYc2/gwPuB4AwtzUc+ulxS6keG5Wa9pixfSG71QPI+HDlfgfT72
         A4sNeCfmo5wIShsXJiaKRDbItJxPXADyvT32pzR5uoHl/FBgIIWY7N0sa6h+kL0Se2Ue
         DYlO5fpz7/3vfuZbz1cJCcCcur3r7XTDm7ORpVM1b68JjPlKz2Oxa+YycRggPa2HVTa/
         eb828RTrkcBEobKPzKDtVyfS+6kmpLoiogcUP6i/2k20gMxV39cai01OGFZPSc7r4C8Y
         /o2Lw9CmnNGjdal4YfC+6XDT21B3i6BrNcDzm6GIg27BWjeUBhztNrp5zu2ZMRNvCz8n
         y5pQ==
X-Gm-Message-State: AOAM530KpezoDfY5KEvxoX02iQkyJmhmccEkAyzXfP4XlgWdnlCWnonW
	ZjffcD9IXumWf+imRWOS6O4=
X-Google-Smtp-Source: ABdhPJwHO3U407CVqd0mC35IrteEwYwqr5fb50NrikOtnvRE6fRJVRCBZvrVxD/93DWqFnStDPEEtw==
X-Received: by 2002:a67:fac7:: with SMTP id g7mr11804941vsq.10.1593449533383;
        Mon, 29 Jun 2020 09:52:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2912:: with SMTP id p18ls229250vkp.1.gmail; Mon, 29 Jun
 2020 09:52:13 -0700 (PDT)
X-Received: by 2002:a1f:2083:: with SMTP id g125mr10985788vkg.43.1593449533019;
        Mon, 29 Jun 2020 09:52:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593449533; cv=none;
        d=google.com; s=arc-20160816;
        b=mIZuu0AD5eJr9ZAEcX1htGtgSFHEOaLSmSXeCuqQ4wi2llIZMA7b8GqdfqTh+Cs7Vl
         IClsbG6/8vC+gmWZZnJq9M9YpzqEUSroKTgXuoE/JHTAmrAkeefhmDtjZ62ns4Egazbk
         BwVprS/B6r+JCVrEK/nMrJmc59nke/SZ0ciaf8pwYVI6TfeOwGboZ/MXV9k+Ac0CTdjs
         kFM+hFcaA8wrdc5s3NpQC3lFwPRO0FiVqY1fYsRJuT4tYS8cphVhmJk92XT6e35ovNxC
         Wl630OSsIMREBXF4Ui/ic4tfU1heGSj4WO43m0zCXwgMPw1Mul5R67/W6NkOFAQYohKy
         3tTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=zVHoQQL1LMsjUx4guRxFxG91mzY8eSh+1dSHVIjtlAw=;
        b=H9MvsxDirrwKWaEueJMKF6SJm+hoif2R4sj7LXYVhStdXmI3+fsZl6PJZ5B0zRwkC6
         dmlK9hgW01lw+quZrbzhAT2Meh75QWs/MjoaMg3Kikz0IbedKO4uryh0rGQtWJyRLXY9
         X+34bNEExNe76Si2lfuCnvtS58kSvu/9R9qzIHVpWNkYaZT05n6jdiRKWqgAe/10d8Qy
         wA4b8gA4S0lYea9ZSahGrNZ5d/3RG2Erezk/0PYRqm8tuS95TPkHIk3eKMt5iWCTOmgO
         H6KsQCspvnbe1JXoi7K+5AlCzR20xOSVK2BI9pP+qf89/X81F4xCOMIXf+Kj4dF7Ydy5
         96uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AbHbF76T;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id a68si28878vke.1.2020.06.29.09.52.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 09:52:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id j10so13327874qtq.11
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 09:52:12 -0700 (PDT)
X-Received: by 2002:ac8:3496:: with SMTP id w22mr16740693qtb.147.1593449532575;
        Mon, 29 Jun 2020 09:52:12 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id g145sm398035qke.17.2020.06.29.09.52.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 09:52:12 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 29 Jun 2020 12:52:10 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 6/7] x86/boot: Remove runtime relocations from
 head_{32,64}.S
Message-ID: <20200629165210.GC900899@rani.riverdale.lan>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-7-nivedita@alum.mit.edu>
 <202006290905.7531731A@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006290905.7531731A@keescook>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AbHbF76T;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
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

On Mon, Jun 29, 2020 at 09:06:07AM -0700, Kees Cook wrote:
> On Mon, Jun 29, 2020 at 10:09:27AM -0400, Arvind Sankar wrote:
> > The BFD linker generates runtime relocations for z_input_len and
> > z_output_len, even though they are absolute symbols.
> > 
> > This is fixed for binutils-2.35 [1]. Work around this for earlier
> > versions by defining two variables input_len and output_len in addition
> > to the symbols, and use them via position-independent references.
> > 
> > This eliminates the last two runtime relocations in the head code and
> > allows us to drop the -z noreloc-overflow flag to the linker.
> > 
> > [1] https://sourceware.org/bugzilla/show_bug.cgi?id=25754
> > 
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> > Reviewed-by: Fangrui Song <maskray@google.com>
> > ---
> >  arch/x86/boot/compressed/Makefile  |  8 --------
> >  arch/x86/boot/compressed/head_32.S | 17 ++++++++---------
> >  arch/x86/boot/compressed/head_64.S |  4 ++--
> >  arch/x86/boot/compressed/mkpiggy.c |  6 ++++++
> >  4 files changed, 16 insertions(+), 19 deletions(-)
> 
> I continue to really enjoy the smaller code. Anything that makes
> mkpiggy.c smaller is a win. :)
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> 
> -- 
> Kees Cook

It doesn't actually reduce the size? mkpiggy.c _could_ I think be
replaced with some carefully written shell code, but this doesn't do
anything like that.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629165210.GC900899%40rani.riverdale.lan.
