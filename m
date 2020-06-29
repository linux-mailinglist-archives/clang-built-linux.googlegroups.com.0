Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZM45D3QKGQENGG4PMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A1720CFDA
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 17:53:10 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id j37sf1788140ota.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:53:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593445989; cv=pass;
        d=google.com; s=arc-20160816;
        b=gPu6hWcYpqLIHI7XfaF0lRKzk7YK7+TTRmp5NhU6BqvRpTuipywMXOA4LwGtQddNFk
         bTpPRQY/ziX4CbmZn2EpeKBH9x0Y7hl1eNMTPKwTDIspnIy1NeFf0CvGdbSfRkFkAtBs
         J00Dc5PG7DMHlc4uq49pa2hgopv5CcrFfaQuzyvwnkHJwoHhGwyHK0/BCFFMo/iDFVYA
         EAKKzk1aurQL5urWC4kfQTApJW6uWpCckBSdmo5nCQjEpsLyicMXfm9pUEnp6zQHGBRA
         Nm353bWAnNuTIeF+cgET6OTlKW7WnohNfP5fR9m8Pk6bCSwseBucD4Tn4NINbUmZiIPX
         xmkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pd6Fgq8/RvxwM3MJOV3r/KqAgokkb5mX02hHnChK420=;
        b=KIA+N837d60Y/a3j6lomG2+9QweraFjQWc9nbgoQKAeuFcm67wpzZ3PMCrQJ81oRMh
         kTiYwskLgNwI0+WMM8YjcKhLwuXr7mxaoO1lvKSrnoJJaEau8VxB/ZIwHTKHXSlGEktf
         Co8Un47/Vz5v4L4Eg7GeddrDXbFzlPmINKf2zY/BwG6RfcBwlu8hZGDwp5NTSaKMrqU6
         IiD4QkZm8/Zrepj6Fq3Ma7IfqlsZKsDrX8pCOpbG6ijksI5PjymHMZkiypz/AC3ObeQt
         30GONXBpS1N62ZvgdiWi+1nss5/SXGyZ965uJFbWNKUFUgKnJDRPHo8e8+aRLF1bqtTp
         kH1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oZmPy0NU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pd6Fgq8/RvxwM3MJOV3r/KqAgokkb5mX02hHnChK420=;
        b=J0wDPSBDZXBl54b8ibwmpgF0tl0WLsAcXZAlsMtLbn51KudJxnWIUgtLC/62+43Bnl
         aCedfv2/4v/QLCj+ubvzh+ya1jNL+Ln5ht6cZ+vbUcT4vRuZVtYjiYG1uSORf1lM2puO
         o/xdMO0WBswQ1wfM0uWSIM2yZ9OvLYIyzSOIJpPS0lZ4kx9usZxT1iIOOUtU0/gQIvhJ
         OGFhtF7LBuIzlg0rc/VbmP4B1DvwIpbDY+ZGovJjME07beJ5IUQHvQm09qRfj/dMO+Qh
         WAxyF3ejSFmsYDcw4T0wKxUuvu0ldg6awLk+i8Z+83Bxvk2UcieHXhgOwa7ask8x/fww
         xO1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pd6Fgq8/RvxwM3MJOV3r/KqAgokkb5mX02hHnChK420=;
        b=fah4IA60lRtOxDLncgm9ELO6om7i855AXKfZo1lUwqydPxlfjAbrC/MZLZag3gv3NM
         hUUkIRzzxLjUPb7gaw6wb3y7SH+kwASNqUwU20OvJxfmDA052+TQltsMi3lJ38GBiAki
         u9w59PAwITPrVWzRS+a6x2+a8Viy0re+Tf0XPsuLwhfPnQeW8sON9T3Zgjxv4nhj8kgI
         xXSviWHnRrN+2tshfJgfP0FOD1A1cNc6Q2tOo/sgZoVU64HHM7NOxucIWpqAetId1CVp
         Zz3NkjOsUO1+btVn8ciEDoEUJpgmavboZpNM4ORwPWFoIH0IN2FRSAVBPODbMA6n6azy
         rdIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DSt94k8bJHefoHUOxU9HpM2bFm9yeiSRCm1XnuZo+hS/KglbH
	dlPdNXTw8x5zIb6mCZj7/LE=
X-Google-Smtp-Source: ABdhPJztore/qyFdtenLkGGZ3dMJNIXYMDVswKygdFoFaS7Bfs5ibKXoPGnxRm/cfcGQpKw7SVWQXA==
X-Received: by 2002:a05:6830:204b:: with SMTP id f11mr14350427otp.198.1593445989343;
        Mon, 29 Jun 2020 08:53:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:11ce:: with SMTP id v14ls3618399otq.0.gmail; Mon,
 29 Jun 2020 08:53:09 -0700 (PDT)
X-Received: by 2002:a9d:3ac:: with SMTP id f41mr7369714otf.5.1593445989059;
        Mon, 29 Jun 2020 08:53:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593445989; cv=none;
        d=google.com; s=arc-20160816;
        b=I2gI3Hctb4YCERhoiJWgdXiYJI/HFQC4XG2Vr4V+JVtB+97jS433BrMlmF53EUQAvi
         1YYmcXb3JoNLgd2CrVvoDh+quJabOsVym4ybI3EdtinMglStdQ07LBKepsOTAzk53uCH
         CKoFieZzdLVHlILaLzFBbPoQpGT7i2mz9XZGp92EH+gO5+X4Ca3tU5ffmQiS1Wm/KcHs
         mFdeI9Z1L3swaI4VLT/KoYE2qNusqubzoIBdQkQgX972kCU4+8WHtMxU3nYH664LvJTi
         p8nmIgKFZbAU0UyCL0gjrwY0SKQaQnxKmcQPxYBeDfG2a9ntDKWmViS84nqxv3hEMhMd
         E7uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Fvsxr2HY+SFC+OoeANTJ+FulqBtWNjBDs0tQuiH8cfs=;
        b=ZO5ztSLt0iP2DlJYr34Da/NxArG2JIW3ZwgXNZhW8xMHwfKWVZfo4JSxSbmamxiw/G
         QfNsy9Dhud7fgp/qUmamKwujlfrE7tbwmjtq6AFEiUx/AVAPgcIDgpXjjDjwohpn9DZL
         59qDw+MtLIypb2t519i4lvrLFghjMyhgpEkad3AiYSctpMlTGs8pCvDErtJcueHppAl3
         AzcEwGH0qePaf7qHbkAvr+6x/3fzUHodiMqjsq2YSlzRMzl3jTcWjdDSDZdeI4XnDy7o
         HEwYYsLkyhikDiTVg8tikym253kRB2HnbGBtICgpt7ic34VsBJJ3NAFLW+ugmTNebrVY
         cW+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oZmPy0NU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id c26si12677otn.4.2020.06.29.08.53.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 08:53:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id h22so8202754pjf.1
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 08:53:09 -0700 (PDT)
X-Received: by 2002:a17:90b:1491:: with SMTP id js17mr18692103pjb.118.1593445988392;
        Mon, 29 Jun 2020 08:53:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s6sm47034pjz.2.2020.06.29.08.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 08:53:07 -0700 (PDT)
Date: Mon, 29 Jun 2020 08:53:06 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/7] x86/boot/compressed: Get rid of GOT fixup code
Message-ID: <202006290852.8D8CAF38@keescook>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-4-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629140928.858507-4-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=oZmPy0NU;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
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

On Mon, Jun 29, 2020 at 10:09:24AM -0400, Arvind Sankar wrote:
> From: Ard Biesheuvel <ardb@kernel.org>
> 
> In a previous patch, we have eliminated GOT entries from the decompressor
> binary and added an assertion that the .got section is empty. This means
> that the GOT fixup routines that exist in both the 32-bit and 64-bit
> startup routines have become dead code, and can be removed.
> 
> While at it, drop the KEEP() from the linker script, as it has no effect
> on the contents of output sections that are created by the linker itself.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> From: Ard Biesheuvel <ardb@kernel.org>
> Link: https://lore.kernel.org/r/20200523120021.34996-4-ardb@kernel.org
> ---
>  arch/x86/boot/compressed/head_32.S     | 24 ++---------
>  arch/x86/boot/compressed/head_64.S     | 57 --------------------------
>  arch/x86/boot/compressed/vmlinux.lds.S |  4 +-
>  3 files changed, 5 insertions(+), 80 deletions(-)

This makes me very happy! This code always bugged me. ;)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006290852.8D8CAF38%40keescook.
