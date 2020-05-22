Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBXWRT33AKGQESDNMK7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 241F91DE45C
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 12:26:39 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id r17sf2990081ljj.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 03:26:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590143198; cv=pass;
        d=google.com; s=arc-20160816;
        b=CAy3bw23c5gNp63Vc/e36sG8UgUwDsvr57tgI+vhsUJPr8kB2XqeRNPu+cybBzw5Sg
         je0meC58isFpGaTZ9TuO0+sVvGKjfWYNxxSGGQnVBTsNhjxtDtMnJ+56lL9uF698ags7
         wUstrvinYD80mgpRpo0U/Xtg5szqRbXHLLmddxOXu1wStvk4+9iAc0qkqNudpaGrNdf2
         Jt/ZuXnwhl8JSJ4gH95291e6pWQwfIaw3jftwKee8+axSM4lR8+oCdrA+gvomZIMccfw
         qpfJeA0d6fReG6L2sFm7MZl/z3le5F/7R+hS4189oHfBnNyJ4pTIzlQae3AMMxOOPfyo
         tFMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=yYQ8RGhlKLKSaj3EpKOXAe+KsogaqnhzYCT1VO+sw/Y=;
        b=yk4oAVO2PdL5XfYH8P2O4fCozAlZ4WeHF6qNzx8m6I8/UYCiiwi/8XcCm0DMCe20Uj
         UaDLk0USp2b648wC/iKYZrkejsoeIJyEH/4SxDGHtFdT5lTn63PsXANzaI7oXdgDotMR
         kflW/oibD8ZZxYitLlVR+AnzHPs/hPTJfi0maVf7mVSmxt2gFkqpHJJdKXeu/o6MQAzw
         qRCO9WJ9HaYeHZMGA7ooKF2SweJoIenLwsBocKjXG070LAEoyumK81dXd26UfB8dWIZG
         yB7dQnMYufWOsi2gvfQ7m4/8VM5VlrwK8NudwGQFTwy+DQxN3NARlDnh0ler5MgqzPtV
         LvXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=qdA9OPqs;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yYQ8RGhlKLKSaj3EpKOXAe+KsogaqnhzYCT1VO+sw/Y=;
        b=ChMK1gKoPizFBdCflq3oDMNEUVrvwMIhdD2QACFDoflJR6u+SkU1p99pprZexDGdlJ
         vq0sOPeu7JeX8rCE+xEi+Kllvvhcp7bE9bUL98Tj9MmoOhdr7hX+OBG6+4TaHzkDepAo
         8EB9WVJ8JlJXV1ryQnK7DP+7FTxtUTgrtrWZwDZXGFHsVEN4x0aQIxStQE7kG3Eo3ihg
         01XJGXPFdM/kt4NKKNQwBtC5LcbbAEQ+dyUW61Vxz2bJEfS0p2BX9DRoPdM74wBGuoxt
         9AeXx5NE0w0rifQzfReDstI/+IO8hWCzI/N4fJnwv4c3QFB0Pz6HqaO6dTyI3RjcWld7
         WEEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yYQ8RGhlKLKSaj3EpKOXAe+KsogaqnhzYCT1VO+sw/Y=;
        b=TqkZZF5Pb88Y5EnkkeNXixAAU6NC2xzsurMDlHq8vn01qbKk/uDEX1IyoxBqAlGOBG
         GaFhQkRRC2Znz2nkoSSSycCFhbMOsUG2jYe5LzbbwTnVi3roJCX1It61fyXUKvXb79zc
         Cf/Z/198Ln87wabY1BUWLmBuCppaNQcpTaBHtH9CJSgvLKBJQWVocW9df1vlKrSpAgg4
         kcZRINNLKIVtlbSXaLFWix4DoBoGf1bxb7ck9PEochAa2QrHM1dXp1jwl9sf4iyqu/3H
         tzAEPlr5whrbVYhK4oTAzohDcgaDs5AnlEuky0VC//6PGKZFkqULm08NimF0sZmgZ/9h
         ZXFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531u/O3o9E6PgeSSWqLHWA0iG9ggJknuVJBtTFbazgZ7AK+OP/kJ
	3h2/u9LPD4i1bgT96UrkFNQ=
X-Google-Smtp-Source: ABdhPJw0ko6tx8x3qAmWvtOOke6ZQoWPoVK9WUvwSoNhxekR0MALqto/0cIgnLdA5CQlohGCibjt/Q==
X-Received: by 2002:a2e:8e99:: with SMTP id z25mr7109888ljk.142.1590143198618;
        Fri, 22 May 2020 03:26:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9194:: with SMTP id f20ls231567ljg.10.gmail; Fri, 22 May
 2020 03:26:38 -0700 (PDT)
X-Received: by 2002:a05:651c:3c1:: with SMTP id f1mr7180051ljp.77.1590143198032;
        Fri, 22 May 2020 03:26:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590143198; cv=none;
        d=google.com; s=arc-20160816;
        b=JNU/JEcHPbSAfuE8LYYuuDXmkD4mtXU4CtEeDA8nhns+20OwbdHM3rM+arnoJtYLkE
         9VI3nYE96D+O5TSH7yZTQpOTvkfZGCH8xJf8tu2qBy7iSo+aVRIzMNuq/T2h7Z1x5MkT
         vNF9j/Kl7SZUD2N5J1ht0dXRKnnMR0Y28j6h6LTWgEAk/tl3DecJaiPbX6Io3Il1Ot/c
         v2IZ/Ou9kb4iJFwEI5leA0mQZrdup/3+Y0v/kBlRcLeFc0paLQHanPH4wCzHD1t2MZg0
         j8ntdXQyT8dePs/ISzY/1WwDP4EzKrbEiN6h3FM0jdwzFb2TSjfMkIsFTKse0uzJtil2
         iBSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=P/XDVTKccx+x8Mgp+Gyd+1EjhHIf2Ys7dOXVJ8hPhJY=;
        b=vehdFMV1avL3ZBit6qVB0B8gw4WAlPF72zV5XDEhVbvPVmE9tC+GFVKJDqux8xg3c2
         qKhlf+knqjrVrge0orcwhiS4aoHfMPGCKt+BKUvxyvdIo5cmwNARGbOBChZ5STCEhj1F
         pyI+LWTEVBlGhEiUgZTjBqrOG19bHs5PZXX5i+eeoipg8VCmSrCyPDFcSftdtu8sfWXk
         MtSfSzis1EsLiVcXUacmy9xHeLNXaN6xqoqHOTnYnuEk0nKi8UWy72unhaztEBkAjy7R
         LW2B0FauomialN3EeSGu2syTCUSEZy4GkSYkYXUB2fEaoMnQGt+0nzahXdikl+40Xt6d
         JhaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=qdA9OPqs;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id c10si33260lji.1.2020.05.22.03.26.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 May 2020 03:26:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0d490039ac3da161697ee8.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:4900:39ac:3da1:6169:7ee8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 12E0A1EC02B2;
	Fri, 22 May 2020 12:26:37 +0200 (CEST)
Date: Fri, 22 May 2020 12:26:31 +0200
From: Borislav Petkov <bp@alien8.de>
To: Marco Elver <elver@google.com>
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com,
	andreyknvl@google.com, kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org,
	peterz@infradead.org, will@kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH -tip v3 03/11] kcsan: Support distinguishing volatile
 accesses
Message-ID: <20200522102630.GC28750@zn.tnic>
References: <20200521142047.169334-1-elver@google.com>
 <20200521142047.169334-4-elver@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200521142047.169334-4-elver@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=qdA9OPqs;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Thu, May 21, 2020 at 04:20:39PM +0200, Marco Elver wrote:
> diff --git a/scripts/Makefile.kcsan b/scripts/Makefile.kcsan
> index 20337a7ecf54..75d2942b9437 100644
> --- a/scripts/Makefile.kcsan
> +++ b/scripts/Makefile.kcsan
> @@ -9,7 +9,10 @@ else
>  cc-param =3D --param -$(1)
>  endif
> =20
> +# Keep most options here optional, to allow enabling more compilers if a=
bsence
> +# of some options does not break KCSAN nor causes false positive reports=
.
>  CFLAGS_KCSAN :=3D -fsanitize=3Dthread \
> -	$(call cc-option,$(call cc-param,tsan-instrument-func-entry-exit=3D0) -=
fno-optimize-sibling-calls)
> +	$(call cc-option,$(call cc-param,tsan-instrument-func-entry-exit=3D0) -=
fno-optimize-sibling-calls) \
> +	$(call cc-param,tsan-distinguish-volatile=3D1)

gcc 9 doesn't like this:

cc1: error: invalid --param name =E2=80=98-tsan-distinguish-volatile=E2=80=
=99
make[1]: *** [scripts/Makefile.build:100: scripts/mod/devicetable-offsets.s=
] Error 1
make[1]: *** Waiting for unfinished jobs....
cc1: error: invalid --param name =E2=80=98-tsan-distinguish-volatile=E2=80=
=99
make[1]: *** [scripts/Makefile.build:267: scripts/mod/empty.o] Error 1
make: *** [Makefile:1141: prepare0] Error 2
make: *** Waiting for unfinished jobs....

git grep "tsan-distinguish-volatile" in gcc's git doesn't give anything.

Hmm.

--=20
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200522102630.GC28750%40zn.tnic.
