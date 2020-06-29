Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBG74473QKGQEY6YDHKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DEF20CF38
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 16:43:40 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id m22sf2685388vka.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 07:43:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593441819; cv=pass;
        d=google.com; s=arc-20160816;
        b=0DkCb43U+DLlmCfUrBwfxNVOhKitAhGtfvIFT0mAcVrVOgJZ6pfIcUOp2NvfRCorZC
         w+2vAhOL/Z7M6g830eotXkOM1dTDHeCOAMVUbXfyAjlIo5S9BU2RerkWkBODAJfq056O
         L63PLzvAb+WG7FmqCnpHKmn97/JxnPHqv7dtpsn83uSs1pmWhiQUMZKB7FQnq2XX7TiE
         +Qx7Qm5/YJ0RtRd8mw67HCgoZhIzQ3X+yQdGSqXui+xqUy9dNOxOlzTTuWufd6iH9Zlo
         COivjEVWKWhY8zUo5/ouL+5N5IQhyNCQu8XjMTs/OcbiuzDlXkkF8ibRFQ0rbgcOL2tE
         Du9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/KQLIIm50gIksDugte/Fex+wrBcg1ixIxuDvGjQ6AxA=;
        b=Csa7jnmVBSqG7vh6cC3T/tPzr8mxZfC9o/FCgESl3YM1ARZDRJUMtIB0zcnOBFhk/F
         XwWi4Mbk/OGlflJEn8BPWpTGQlU/e5OMXSpjpUg2Uc5rfs0QjP55p2FGw+w6fQT3+Rbo
         Kdsm+k0fM8wZTpIvLm3y8a4Y1qDuRV5f6mxNxcySAJG6a3CiaXe4VGKaTM/PDQGKxqMi
         /d0alssYHSq5NycM3oF4Ce9ktaHeLvu505u3vK0xGsbHC6nd7Gokix16jG+6FG54gYV7
         DTy/cgp4jEdIOucSMzCiFrHCboNwdKIT8JQYuC3knqI7BGHrFFYv1xZpBKxb+arwZhTT
         gbMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FcI9HcFN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/KQLIIm50gIksDugte/Fex+wrBcg1ixIxuDvGjQ6AxA=;
        b=D02BzXp+1Rlf06pECaDh/ZbTV1MKhP3K0lPPNY3ymBLdxyxgoeugD/0jX2vVGTClHc
         JCIWtFVxXIbIIV/ZqAltQW9vxVNm78IYZB5VpphgySTnMOshRYnoXEdJbZzdXLFFbF+B
         +XkoRjwop08Rha/Q4BprIEUVS69bpR1HVvsnykZYF/LsRLXgLOVmvr9JR1hiDzYGbnUd
         4VgZgHrVdVWY7I0JG+00c66DxJaEEuQk9g90ts7bLN5HrWRc87IeJCo9jswu9ti4fy0C
         CdJQZFA47lYLwvOYdK1QPZ1khBMo/IczuSH8kNtKc9F1963vLOjOx+pUwueNR2MvnJ70
         0upA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/KQLIIm50gIksDugte/Fex+wrBcg1ixIxuDvGjQ6AxA=;
        b=Z5Eq8rvbaT7fFM627hoi71R/QXifRXaFMiYi5r6Em3c5ANhGifFivRnNON8MNgYI7i
         DdLPr/T2kr1UliqMW3HQQ5ZZjNZEaiO4ZPzofptXcNS/9UXGx9tElzVOeSZzrGCq4lIx
         JNNxzBYbV/6qLb50zVOXU1SvYgOkZ2Cszw7WQqG4Nr5lf2MVsa8gbIZyQLjBjSz9tqtU
         +ZujvyV9vY5Solcg7Lj6ga8gP2vP0Bxlz/SMGoAqGFoq7V8MJ3adRGEmeEhCAm3YdqG0
         bEZml6XitjTVJT3DuOEv2kc1A+0gC9SOEM/o0EK/IBguztSvrmQJ25B27Gr4a3YJC6HQ
         KJNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/KRUfHq1MVp3i8I8bTab1Ix0h2JvPFPnn2uOIGqPVSbTx7DHl
	GLHQ9Jnywq7HneoCknG+S4M=
X-Google-Smtp-Source: ABdhPJxnGx8YA1dQPDwgohBMm2e7DGxchGv/emUBzJsu6PUhciO9E0lZaVYBLTK1LmqF7WRCL90lYQ==
X-Received: by 2002:ab0:217:: with SMTP id 23mr11124187uas.51.1593441819564;
        Mon, 29 Jun 2020 07:43:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9c01:: with SMTP id f1ls780271vke.9.gmail; Mon, 29 Jun
 2020 07:43:39 -0700 (PDT)
X-Received: by 2002:a1f:d306:: with SMTP id k6mr10122799vkg.80.1593441819197;
        Mon, 29 Jun 2020 07:43:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593441819; cv=none;
        d=google.com; s=arc-20160816;
        b=kQ8nkCnWfYG5dA9T6dUTitMLAI3gaiGra/Dby/ClUBvUrKev4jY1vkrYOWL8qb+yEk
         xjlEeJVgdZfintgPhPIenbvnqaClsq4tsw3rPDNWndZWlwIfBqhGisyFyzRQFyNM12Nc
         MnBZF5es/3kkFcaHiouA7DvMvANh5/1Au5l0g4LFI7sh0naeGbwypqepQ/gZZeysj+kO
         pviMCT482Jeae3lTrQyiwEa2Sb/cLmZMf3GJ/cA9hkNi+x8Zi0fSFYsbbAnjQjW0wllD
         BXaLlgVRZmc/zRn/6WJW7a8X5jhvmOwFK9yNMcSe+7HcztE18HPSAwAIxRl2dhKH0jqA
         fQVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Yi6JXAo1ZyKdvYW2lysqRB4X8J5GEgjfQlw9nhW0Ebg=;
        b=lejeQE4XGG458XLnrjj4jYE3w1lusiCvByzyDvXjht3SaAJvrdy93LcmfMBiQDNGpR
         YIzZbANP4I6RltM08rQxnxhQIVUB9kTZC5/6q5n+VIQ1LIm1MBtgWEYj4eKsl4jAqmgW
         gxJt2qsuJaqe+TfioD9ktVlcWzR0gZJH2M7BnLHgv0VVai4pZ+1phPLJejsu6avW/XKD
         3195TQYY3DtyP63vGaoOWJZxrCu2esHAsjTGMSUjg9hQGejzP6/3fr3Yw36bjUpeAvYN
         UAR5s4zCKgStWTTCWAfHyePvloWYfVEPFUq9+FrZYIrxaHptNIZxkv2wAO5ZoLcOlNz0
         3kSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FcI9HcFN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id e10si6349vkp.4.2020.06.29.07.43.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 07:43:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id k1so7191522pls.2
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 07:43:39 -0700 (PDT)
X-Received: by 2002:a17:902:9346:: with SMTP id g6mr13542327plp.19.1593441818365;
        Mon, 29 Jun 2020 07:43:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 25sm58832pfi.7.2020.06.29.07.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 07:43:37 -0700 (PDT)
Date: Mon, 29 Jun 2020 07:43:36 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, X86 ML <x86@kernel.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 05/17] ctype: Work around Clang
 -mbranch-protection=none bug
Message-ID: <202006290742.92EC7235@keescook>
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200629061840.4065483-6-keescook@chromium.org>
 <CAMj1kXE+toCd=Bx-zw7D9bvDRNB2aPn5-_7CY7MOKcVGA-azVg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXE+toCd=Bx-zw7D9bvDRNB2aPn5-_7CY7MOKcVGA-azVg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=FcI9HcFN;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 29, 2020 at 10:15:47AM +0200, Ard Biesheuvel wrote:
> On Mon, 29 Jun 2020 at 08:18, Kees Cook <keescook@chromium.org> wrote:
> >
> > In preparation for building efi/libstub with -mbranch-protection=none
> > (EFI does not support branch protection features[1]), add no-op code
> > to work around a Clang bug that emits an unwanted .note.gnu.property
> > section for object files without code[2].
> >
> > [1] https://lore.kernel.org/lkml/CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com
> > [2] https://bugs.llvm.org/show_bug.cgi?id=46480
> >
> > Cc: Ard Biesheuvel <ardb@kernel.org>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Dave Martin <Dave.Martin@arm.com>
> > Cc: clang-built-linux@googlegroups.com
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  lib/ctype.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/lib/ctype.c b/lib/ctype.c
> > index c819fe269eb2..21245ed57d90 100644
> > --- a/lib/ctype.c
> > +++ b/lib/ctype.c
> > @@ -36,3 +36,13 @@ _L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,     /* 224-239 */
> >  _L,_L,_L,_L,_L,_L,_L,_P,_L,_L,_L,_L,_L,_L,_L,_L};      /* 240-255 */
> >
> >  EXPORT_SYMBOL(_ctype);
> > +
> > +/*
> > + * Clang will generate .note.gnu.property sections for object files
> > + * without code, even in the presence of -mbranch-protection=none.
> > + * To work around this, define an unused static function.
> > + * https://bugs.llvm.org/show_bug.cgi?id=46480
> > + */
> > +#ifdef CONFIG_CC_IS_CLANG
> > +void __maybe_unused __clang_needs_code_here(void) { }
> > +#endif
> > --
> > 2.25.1
> >
> 
> I take it we don't need this horrible hack if we build the EFI stub
> with branch protections and filter out the .note.gnu.property section
> explicitly?

Correct.

> Sorry to backpedal, but that is probably a better approach after all,
> given that the instructions don't hurt, and we will hopefully be able
> to arm them once UEFI (as well as PE/COFF) gets around to describing
> this in a way that both the firmware and the OS can consume.

Okay, will revert to the v3 solution.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006290742.92EC7235%40keescook.
