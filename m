Return-Path: <clang-built-linux+bncBCIO53XE7YHBBNU35D3QKGQET6GMJHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C5320CFD4
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 17:50:15 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id r12sf12078803qvk.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:50:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593445814; cv=pass;
        d=google.com; s=arc-20160816;
        b=EYhytw1xDm55Cb/WTNsob9hKhRR91i4ZtqIzzNEt54CrtESYrLfRBY1imotGy0p0mH
         Wbne/FVPAr6M0E7OS95n5UvF4mJKUoAxY61t9y5IqBN3s6nVcOv2rBN6RnuZTOOsJOMu
         stWNGYESmfdJsAe6YEkyQwoS2nWTrOUjlqntu/aWPV6ShE+YlOfjdnS9ssS56TjcIUyr
         S15w6LN/p6NjT4JzAzdn/rjLtSGx6LqE32UbrK7kEo+Ksau3WNuo/GugKxOoHeUaIZ7U
         De+uHg395t1HlZK83R/LA8taQ53BI9sDwilLc3pD8/qHz+OWtdA7sh1xovIFTgs9ndrB
         cFrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=Tqq2VeI7zDaduBookWsZYvmyLuqKXHjFfYNnVwjwmtM=;
        b=rcdva2uQI+Jm6GrQxiiX/kROCOgmwMpoMkxMV/4aWsvpEHb4eALVDZsYQQMM1WvB8A
         daeRNw1Oi3lcOZ9FWGt8f5qCScALWiLV9D5lVXe9kP5VN9EYofdoImZJ1c6Up/94yXa/
         4bDde3NtsgbgsrvifRsJqZXmiYf2Ix8GKoo5nOH78xM9MCKp7rcbIuSZILR+KX6KBHJU
         BVc0XJBf+xv4G/KDZuNbtZpbd6lx9L+isbaGqT3WFMxny75JlE/3YbndjkobK5V5Fzs5
         +vM3K7aTaqZj+3BmP2szjxoJ4hMT+enwsenXnbOzy8N9i8vSZb80ryDXf3fKazGfq7pL
         YDSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Db5sQB7X;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Tqq2VeI7zDaduBookWsZYvmyLuqKXHjFfYNnVwjwmtM=;
        b=i8y+KEEjON1cdMdaauM9bQ3Vx7l0htC3G7ZWTqFs5fP/KlX38ZVajNDyJr4Gs5kzMp
         UIMupuKY/8+pUr+BDDBIkxzUS8YF7dSURNCwkgtg77TLUwXy7yNMbYtYTOfS3DY5nsQ8
         te9BBT8hjhQrNXUyMdWWBvsmfc8ksKpIDHot0uWzSX1IXglfbEve4UL66dzCjIa61LdC
         k98TP8OpkFWypAS+wGwnnilB4HWc14SAozIGqj5xOv2vdVm8G/tVLfpNN59pxyeZYLCW
         4OyP1Cjne+i7TXy1UAh2LldzaIrYMsnPgXiIRrwoyMsQAuutB94I4SKOp2cSxvcwq2uQ
         U2QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Tqq2VeI7zDaduBookWsZYvmyLuqKXHjFfYNnVwjwmtM=;
        b=giAfa9BfevOC9Jx0lHkNryohLZlcfistiSjO+FQdqPvNngaM2xHoLKGsCafldhWfdD
         BQ8FB8VdVAeseowSPUorc9PHn2lt1brfGhlcKUKCfb16+xWlYlwsM34UQK57R0fNcpaL
         QEtT2a2kv+WN1oCAPafLUNR1SxvjkxcQ3ZirzLRRVusNmMMAgTT62+SGIlIGUyPhxqX+
         RfjHNPhDbzez+seGVWDFksjdfszErDy1+sdN6zkD3AYT5bvEOI9EfEmyTpQ96Jfla0D3
         NdcfDHbozVlZcKsWcbHuzs8ZHz4AQD6eny2k6ZJykVSAZvwJ30VQoomngpG9AcFC4wyK
         +Sbg==
X-Gm-Message-State: AOAM532BG9g7IBXPtrKgoa/hTXW3WEFKBGZEv6IEBLPY8Wi6IzYeAI3t
	NHbSSdYkwkOQv50panAVOls=
X-Google-Smtp-Source: ABdhPJyHEfZvG/0Fg1TObOeIFnFb15pk7HCWFFA/1iqcEFSoBhYLtMIq/Vj9RpfWijHm7WLD+5CRWw==
X-Received: by 2002:a37:d0d:: with SMTP id 13mr16397603qkn.234.1593445814758;
        Mon, 29 Jun 2020 08:50:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:17b3:: with SMTP id o48ls6945962qtj.5.gmail; Mon, 29 Jun
 2020 08:50:14 -0700 (PDT)
X-Received: by 2002:ac8:1b7d:: with SMTP id p58mr16797083qtk.360.1593445814466;
        Mon, 29 Jun 2020 08:50:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593445814; cv=none;
        d=google.com; s=arc-20160816;
        b=iG7N7amvm7rqTg8AwGwM9Vg4nv4f46+vhVy6WhpQjDkhmD5H/XTjZR9XsGb8c1DfON
         iSAINnREZuWeH2VPcxj7hR3PRjnhxR2umjncECKIhXgBXi0oWD+W2AqkhoDfY+SQ+YCo
         2rslvXsosPlGPdST13QKfMWAjNO52FB8ZU3kHViZshpCBkze1IezCQdUYT1wh4F6AVVC
         Qg4qhpDsKYIChZyIWpI6E4YfJeURLphHQaPP5VGnqYSIVOnawW64bFnd3S+Zkfxx7UIw
         tYzeTR+7jJJRiXm6ErRSeCz7BvrGTEaEJXXlo7wUbefrlzpZV7EI/sDquPdNDeAMg+32
         a5Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=wV0NHhglv/mmSSjfHCWkkJCA24T21ipzwYGTvO6LqDY=;
        b=g2ATp9mbgS6ahTQ6l/426oxiEzXSakRpVWXNxkBrSFzsKP6+UFLJyCNnZLAIwW554d
         e2dJ58yH1wZWbeh/xlSAjo16fncoByvkngcUe5J6uSmEog4FtMtbvGA3n4z2DRIW0XKV
         NCWhfab6v3+SOS7DDT/4VEbdwWQ+DFUSCKabNJoqdliA5x1KbL181qNppYmcGIwKYo5L
         BFsUP2F751HduFw+SECka7l9Ynaci0Fr1WS2IrvqRAffAsBU2IeGJP7IvWw1WCydfPlP
         Iyxa9D3ONmCsQbc7H7axDC/TEzyBUrWfPGDwCiMOtCg6OPhab7AcX9RGOsynwzy7w/JY
         9V8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Db5sQB7X;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id a72si6957qkb.0.2020.06.29.08.50.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 08:50:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id b4so15640040qkn.11
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 08:50:14 -0700 (PDT)
X-Received: by 2002:a05:620a:1282:: with SMTP id w2mr15014742qki.196.1593445814064;
        Mon, 29 Jun 2020 08:50:14 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id b22sm162685qka.43.2020.06.29.08.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 08:50:13 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 29 Jun 2020 11:50:11 -0400
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
Subject: Re: [PATCH v3 1/7] x86/boot/compressed: Move .got.plt entries out of
 the .got section
Message-ID: <20200629155011.GA900899@rani.riverdale.lan>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-2-nivedita@alum.mit.edu>
 <202006290846.5A5C76A4D7@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006290846.5A5C76A4D7@keescook>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Db5sQB7X;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743
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

On Mon, Jun 29, 2020 at 08:48:05AM -0700, Kees Cook wrote:
> On Mon, Jun 29, 2020 at 10:09:22AM -0400, Arvind Sankar wrote:
> 
> This is also being done on arm64, and the section was specified slightly
> differently (with INFO) which maybe should be done here too?

I was actually just about to email you to ask what that INFO is for :)
What does it do?

> 
>        .got.plt (INFO) : { *(.got.plt) }
>        ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, ".got.plt not empty")
> 
> Otherwise, yes, looks good.
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> 
> > +
> >  	.data :	{
> >  		_data = . ;
> >  		*(.data)
> > @@ -77,3 +80,9 @@ SECTIONS
> >  
> >  	DISCARDS
> >  }
> > +
> > +#ifdef CONFIG_X86_64
> > +ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
> > +#else
> > +ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> > +#endif
> > -- 
> > 2.26.2
> > 
> 
> -- 
> Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629155011.GA900899%40rani.riverdale.lan.
