Return-Path: <clang-built-linux+bncBCIO53XE7YHBBGP4W34AKGQEWUB2XOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F6621F3AA
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:15:54 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id q6sf13150334qke.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 07:15:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594736153; cv=pass;
        d=google.com; s=arc-20160816;
        b=tGgl6Z9+xLKn8LWyiui089eL7Nan7f6G2hxkSkQTldvnpJWg1u8WpCLW2Agh/VfRrK
         6wNNkLbtWKGh4l2UbMYLCPwCz2NzokpXQ7XVxNjO9Eh9DU18geHC2hV0E0+VM5BuDN7J
         FbN9UGT9K/WJ7NCo8HSQ+yn/iV5QIE9wbGzUlRr5jGsq7diN+LSDJXLtDQ0qxkwHDxnN
         AJeWvKhEKXgY7S+aYdwkJxzPds4TRRIJncmk8KjoCoDZeUQblAin2Etc6k9x8VjuTT6U
         f4qKZsh3ZKOi3RCf1d5GXM68I30Q56Qpqk5lFCk6Lu8ZizkKZVTMHzANEYb4fRMvf0aA
         qTIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=VJbMur6u1eLmHSi2qmm5Ffztesw5XTgmw9aaNhhfJ3Y=;
        b=z+yY08f1leTfBCLs1R0RHKs2bPAFSsVZnK0hHjNKWHzi5ZdymCVPtfKphJPyNZhSdc
         B7BXR5sTIkHL/eE0bdJ2GaaQGNVdxDtqNfGaeC6fyxI2vNJNl82TRZGtQG5y7BGjoznM
         L6rcwusD/A8irVdOcCLbHYqwtHgppBfuujHMJ4vH97y0M7ydwGMRYcaOc9/k+XiPanmH
         LzBuRxSYlgA2ZwOFMEjB3PPsR5ZXA00bMuBqKGihm4psNSQxe+Um40ieI2n3w2vi34YS
         jGvkqeu2X7hTm7oCVscUBicb//F0AYaMwtxTKF6fWTG2O2TbsWF5uN4+pP7ttOtFO0mk
         Yg4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fWDJszts;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VJbMur6u1eLmHSi2qmm5Ffztesw5XTgmw9aaNhhfJ3Y=;
        b=Y/lSnci3ClTa7Ze+Dll6GdDgCIv/BDHK1GAzibuMobcbGklR4BMVszSGBisaI80g5O
         Z2sPAHH8WRtB2RoX/KrHPy1a9OHSTd0jStH7y3gVJJ8WIH8BPnVdmpISAVg5h0emSyJ7
         URW1kHFUSm0n5vwvfh1Q0/e9f0184jxMnI1pk0fhffhZkJambo8b/VlA1GtnCm2AjJ8P
         SxqHSMEJ+Nd3QAV+8yoRvmW119/Jdwc3+RehFypqpVpgvqHXAto1YewUrJEpcpFSqX6S
         X3yEJG6dJC7Mdrq7/1Y/6i2HsM8uFOHc6CPsERSNOQBNQ5UUe8oET/clDrtagKdJ+YlP
         +n+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VJbMur6u1eLmHSi2qmm5Ffztesw5XTgmw9aaNhhfJ3Y=;
        b=Q+1Rr1WMU6v2E2C+dM7JSK62quhBfEoJK+5KqMe+IdnPHyThKNVCq5Dhv81NCVMlVJ
         P3YO/QW9Alr3WBOVRdBSoh3hYXY+5Kzuy0wE5inC0Cwu26k7XhwOUQfbCz6/45+qvtIP
         OGM7g8a00CCvpOiTzhG2aQ4SSJOoa0TyQHhvAXMIsn1oDheuJYakHg6SiWdaq9U1Kg9V
         yk5dD/AG1CMqjjVx0nwoty5nGNC1cHptdQFeJr/W7SaLSmzUfNh6rIyAZjH9WadO/Qdr
         ZtVcVwQ2iTpiaRDJwZt9M5aH6DAlL8BzlYPrjvpksS1EUPw3yfPXMMdWtTnEyNrL2YN0
         sMdA==
X-Gm-Message-State: AOAM532UFbJYFzOPTUMdRuzdtAtJUvoAU8kDzn0BW+WVqPbB/QT/r1Gf
	Deg0bmCy9r4JOHTtjmLQdU0=
X-Google-Smtp-Source: ABdhPJxvcynadneSI79vfM/V0zrgdgPK9e84/Hs0vLBFWXflEtAXrWm7IRZBlyBiXrGoGON+e6uKQA==
X-Received: by 2002:a37:9dd3:: with SMTP id g202mr4506784qke.432.1594736153223;
        Tue, 14 Jul 2020 07:15:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2491:: with SMTP id i17ls9909264qkn.8.gmail; Tue,
 14 Jul 2020 07:15:52 -0700 (PDT)
X-Received: by 2002:a37:a18f:: with SMTP id k137mr4795765qke.249.1594736152813;
        Tue, 14 Jul 2020 07:15:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594736152; cv=none;
        d=google.com; s=arc-20160816;
        b=0Lbs4k5tVdub0S18ip203CS3Nzl6JHzzwjQy4dNWbGme/6jAguMY9UBD5XusAqfTRa
         yOfg+LXCv4A8RlXNFWNUP3WuLbVbXxd7tmtXIz8Xiq6Q6TbcNBxEc1yyAr0rjRVGs84U
         7XE/oiG87sPr9UfKbZCXxaSNjH6L6mcHkP86hkPqUm73NSgTPo+f3Rq4NM8oL2m6gWPc
         gz9119rREMmh+BixzNv60mwP+UgRJ8xX2D+hz0ZaPctwYVeAaAyXAc1UCti2qKHpR4FO
         oZNxKEMtZVjA4reUG972q8qdFiI56av+mYvFqSFu02oEH/SIMH36FO8pu8wCdkxyUSPm
         12tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=P372NUKZoZ0/nvzVGUuc2s28GruKsUnveXwN5n0Gdac=;
        b=y8B9M9HAoTNUYYu94UgnoTHF7bnrRjU2+GA9ltpRa9x1H9Igvz72jkKTRRx5yIPQvY
         m6Yl8b6JNBgt0eLCnK7ahO89KDfvac5rgZh3KlMUG2hWEfO7m3FftN2tFhu0Z8BnhMBY
         ufwDCk+lQIZMdGTw1EyMlyaqRSoWPqpouDIZLqrsuV8K1kxYQsrF0Da8nY8Qb0fyFpME
         1TYBF33IcBIYvMYM2Sc7nzHw9Var5STABS1+fr+HUSMP3hyJQcb0xtnlL+JFHXptou/5
         cA9ENXbqg4tPfMqh2zFEa1MV2r4My/nW2x0RR/9cxegLfD0dznaahlnvWFQggJFiPK7Y
         Nxwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fWDJszts;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id f2si1124324qkk.3.2020.07.14.07.15.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 07:15:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id o38so12861326qtf.6
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 07:15:52 -0700 (PDT)
X-Received: by 2002:ac8:544d:: with SMTP id d13mr4915886qtq.375.1594736152547;
        Tue, 14 Jul 2020 07:15:52 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 19sm22696233qke.44.2020.07.14.07.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 07:15:51 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 14 Jul 2020 10:15:50 -0400
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
Message-ID: <20200714141550.GA329060@rani.riverdale.lan>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fWDJszts;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842
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

On Tue, Jul 14, 2020 at 03:15:49PM +0200, Sedat Dilek wrote:
> 
> How to test this series without building a full new kernel?
> 
> make $make_opts vmlinux
> 
> - Sedat -
> 

Not sure I understood the question: you do have to build a full new
kernel with this patch series to test it. Since the changes are to the
compressed kernel, you would need to make bzImage, which is the end
product of the full kernel build.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714141550.GA329060%40rani.riverdale.lan.
