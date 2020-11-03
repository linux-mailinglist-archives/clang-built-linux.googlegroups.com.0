Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWXVQP6QKGQEB5VRTDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4462A3CDE
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 07:38:20 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id bc2sf10069740plb.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Nov 2020 22:38:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604385498; cv=pass;
        d=google.com; s=arc-20160816;
        b=at/CFXbHst3ZRqUPVZEwxK+bRFe0nCc6HIOXeLIJL+8v9bg3QcQ30yt18DVQ9e1Gvz
         PoITuuGI5I+OGhsnSCm3FWjx0veL412pMoI6SERRGzPIEHbBqgxXNeqmBA82f7jn6xmj
         enBAaN06Z0oIpW8wGhTlqF3I0WVyptggbCFZVmbMx9Hl/LsRCLj66VUy7vErNbLkSR50
         p9BJvFAmm5oO+tzp+mvogQrmMm+KNCIs2q7XK0ZNBNYECYthBlNAUnogOJnObTkY8eto
         KLnO+sEsSL7D3LovOrbOJQUdEbWIsU9nvjeBfHd4obkgkg2Q994tcPa4MM8BZPaCCf3X
         IN3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=qIFqJPIJHkJnWKoCT39hHk7C4EdEbBhZ1aIQTbGhBwM=;
        b=mY9vHD1swujxhERxLGcqnhc7rfZZF/NaqzrpYeRl/TbLrITy2fD2PjaOMtHxkxcuk7
         7Hg+BYFIQ8FUngtSuWz15U6uDPJGkHc4qnE+Hbx6P8A2J3A5TSoOHnuHOVUQnicPPjVx
         hUnpZY5GIMPsMHcP1IuJXGVUT94/LTaN7QAeclng1tgUCfbLrogsrK/H1T18RpuDpyck
         y7wH+i1Rbm2g+AP5bmOVth9yQjESy3zLvdIw3lJXDcz7168WGfPxBKCl4C3uUZOH2TmI
         bed4FjdwCOq8nGw/GYW4MUVI7gbzm54bojAxhYEPkGIEs0Cz0neNLjLpKmft+VN6z/Na
         7c9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XItdZxU9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qIFqJPIJHkJnWKoCT39hHk7C4EdEbBhZ1aIQTbGhBwM=;
        b=exdKZm6PZ8R3sSm9ZPfOZCdCl+YB9qiqO1dhx5YjQCvm5Ww9+y9ENoVx/vwNJt4znN
         Tck3B7xpXkwR7Cwc1GXGhfJrFa2TiYSCsQRqLj6IUyD03YrJVf4a1jblRDzDTC1H7EL8
         sffV+R+r8C7ClHbfeYh/u4MWnFIVK5f6hsjcb424yq6j63ttb9GlqxHDBjM7J9UygUq7
         N7m/CeJbfuqIivKTH8YLS3DwwZ0QWXJdYIeXav9/Rz5JRrzvqZrCVpT6mPZO2gi16MGG
         Y/xvXfUDjlsHsGtAa6hqECFH8T/BeFz2G6VYu+9X2B+LKkukBZV7TyT/ir+ONoslYqi6
         B6TA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qIFqJPIJHkJnWKoCT39hHk7C4EdEbBhZ1aIQTbGhBwM=;
        b=R+XqxEuFzqb8il43tBQpYFQn+JnduGagPoubVDKBErBqYrWrQqRGUFmIUv6C+DC3uL
         UaLY0VYU7vKaipXRFveWTKmuNikH0Cjwer31yPsKQgbwmHWtnBDLO6+4o4b35KZ/ODpZ
         5WDOPi4kgE/A+E6ySamSVopFgBAgrlpV8/a5QGH/YBhHUcwcicWdnssXSLOiTgSO1t9t
         cp25e9CoWcvNa4DW7PCnslYTDYzbvA+zQnsIJ+lm+8oN+FibyKdTKosLEoIKd2qihFzF
         wNo0BbIMVt4Fk8HVoZLmjsLkb5/94eOEPQoHFwypuLmCeOPe9PUVChWcGxAbtP1vhAm6
         +1/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qIFqJPIJHkJnWKoCT39hHk7C4EdEbBhZ1aIQTbGhBwM=;
        b=TyyfsaAs1XDKguECV4uCgF1esU1H4YW7+i9Z2VvYSrbURFhzo2lYQ9vhvG1DyYhEz3
         dk411WMujVZ5WIfZPG0Jc2Bw3bpjfyZomecuo1uKF0dIm3oa+Vagk3UP2ky1UhWw72es
         HQv4Jz+n7PUR2OgUlQcjhAQszxgBGwjIkHBcaMlGLvjN54RNbBu1EjmJt+ISpCrJNT+0
         fTqEJ0TADAchasZaWTQNIL62KB6sqnPNVsv4dUWsz9v1G8XqZeP4k4OuCcRbmQ7xKi1A
         vqEDejAyoeRQeUTqpl9R+s0nNuj4PYGpst16qLin+lv95jbNcOKnjij/ZuaB3KAtQh7s
         DyKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gxDEcE/1KGL0Sf1Tuv+U1e9f4bSz3h12rBelmycBnRegJ1S+h
	krMR7r77KRQxJ2EGB2LoFo0=
X-Google-Smtp-Source: ABdhPJwbwH69DiF6K6WywtgezBCp50EQIfcFyifLen3L7NNdlGVtPOvyafRraOG55WE6gckX2eM8Kw==
X-Received: by 2002:a17:90a:5310:: with SMTP id x16mr2220522pjh.62.1604385498605;
        Mon, 02 Nov 2020 22:38:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7786:: with SMTP id o6ls338956pll.0.gmail; Mon, 02
 Nov 2020 22:38:18 -0800 (PST)
X-Received: by 2002:a17:90a:7e0a:: with SMTP id i10mr2271167pjl.89.1604385498020;
        Mon, 02 Nov 2020 22:38:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604385498; cv=none;
        d=google.com; s=arc-20160816;
        b=THENbMP/MoJtDAwBUJdU7o/b3YmuMTt33jHunBqnNqq7qByNgenCTSDbfsvKNwcst6
         ryd34olBSB4afASOzr0YCp0OiwVmjHiG0/SmjzcUN753/5LLIRlGsM+2EHy9vJlQsbYb
         R6x8rljvdupKHNOwoOaaBdk6GRnP/WzSQLJJpYmLZpUWVQlMvhKgoXMAkt1INUc5eCjI
         9oAyGQoqd6FVesIMr9jC5knpClDDPdIJV3b5CA66CNTIWk1J4+1CQOLEG33ja5jsUZvE
         f3OGBGPOgcYY6cYiQctJsL5rZV5yE9OofXWJGfZnMTiR6In+6I7hJwjAFsro3+RikGOm
         IS4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Hqxtx5ajWvQQEKJyoleM3jwGkL8tLKvH6bJZ4hHFfLI=;
        b=SYqlKb+JGpUE2ejF0Eexbc6OW5hYnQk0JhLL1LbK8DDSA4PubaXhTzYm30pezOi0Ng
         8cMbu7waDLScoJKx8ydsWOfJQeDwN0UdAgA5kHDZL4MI9IgYm9eVH+4ZlVObDSlm10A9
         uGsmZu13lWcxbo5zg/yRT7wNiivxMxe0e2xFs/P6O4NkwTV3gdnCijqKj9I1Uj//j9yZ
         EXe0gTB63ALzn/Fs+zCsKFNNgfB9b9QxrjE+XHu6Awk9hpanacbLuQ0I1iHdzCG4Rz1P
         JOO3VO2Lgska/1k7IOFJAB2TgTVogZwlMAD1nE8GeQMzTgttJrnCCULBNiw7Vjnwft/7
         9nOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XItdZxU9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id e22si1058879pgv.5.2020.11.02.22.38.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 22:38:18 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id u21so6814826iol.12
        for <clang-built-linux@googlegroups.com>; Mon, 02 Nov 2020 22:38:17 -0800 (PST)
X-Received: by 2002:a05:6602:2d4e:: with SMTP id d14mr13420142iow.105.1604385497350;
        Mon, 02 Nov 2020 22:38:17 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id j10sm2095428iop.34.2020.11.02.22.38.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2020 22:38:16 -0800 (PST)
Date: Mon, 2 Nov 2020 23:38:14 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jarkko Sakkinen <jarkko@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/7] compiler-clang: add build check for clang 10.0.1
Message-ID: <20201103063814.GA647990@ubuntu-m3-large-x86>
References: <20200902225911.209899-1-ndesaulniers@google.com>
 <20200902225911.209899-2-ndesaulniers@google.com>
 <20201103045521.GA58906@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20201103045521.GA58906@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XItdZxU9;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Nov 03, 2020 at 06:55:21AM +0200, Jarkko Sakkinen wrote:
> On Wed, Sep 02, 2020 at 03:59:05PM -0700, Nick Desaulniers wrote:
> > During Plumbers 2020, we voted to just support the latest release of
> > Clang for now.  Add a compile time check for this.
> >=20
> > We plan to remove workarounds for older versions now, which will break
> > in subtle and not so subtle ways.
> >=20
> > Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> > Suggested-by: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
> > Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Acked-by: Marco Elver <elver@google.com>
> > Acked-by: Nathan Chancellor <natechancellor@gmail.com>
> > Acked-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/9
> > Link: https://github.com/ClangBuiltLinux/linux/issues/941
> > ---
> >  include/linux/compiler-clang.h | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >=20
> > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-cl=
ang.h
> > index cee0c728d39a..230604e7f057 100644
> > --- a/include/linux/compiler-clang.h
> > +++ b/include/linux/compiler-clang.h
> > @@ -3,6 +3,14 @@
> >  #error "Please don't include <linux/compiler-clang.h> directly, includ=
e <linux/compiler.h> instead."
> >  #endif
> > =20
> > +#define CLANG_VERSION (__clang_major__ * 10000	\
> > +		     + __clang_minor__ * 100	\
> > +		     + __clang_patchlevel__)
> > +
> > +#if CLANG_VERSION < 100001
> > +# error Sorry, your version of Clang is too old - please use 10.0.1 or=
 newer.
> > +#endif
>=20
>=20
> I'm trying to compile a BPF enabled test kernel for a live system and I
> get this error even though I have much newer clang:
>=20
> =E2=9E=9C  ~ (master) =E2=9C=94 clang --version         =20
> Ubuntu clang version 11.0.0-2
> Target: x86_64-pc-linux-gnu
> Thread model: posix
> InstalledDir: /usr/bin
>=20
> Tried to Google for troubleshooter tips but this patch is basically the
> only hit I get :-)

Do you have a .config and command to reproduce the error?

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201103063814.GA647990%40ubuntu-m3-large-x86.
