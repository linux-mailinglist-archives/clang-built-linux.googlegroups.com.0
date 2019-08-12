Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3XPYPVAKGQEXHNUDKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBC5896B0
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 07:23:59 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id b33sf63810765edc.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 22:23:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565587439; cv=pass;
        d=google.com; s=arc-20160816;
        b=NRyivKhmnlbOJZLao+6v98kuia8PkawqVLLOHIVyI5HlYKsuV6SZN1ok7zfeZ9pVv3
         2x9NAVeKqxFGKDH2IBOCvh/dkfUaRxmJIH9ujDIfyW+7y2seEtMt5PkltsscD3d8z1Fw
         r7AIHPvySiYpkOE3nK9n93WXXu3CdxSAz1aIgq96n0dRj9fsuk6fYSs8bDBLsQmNbSuc
         X75gRKyJPCpfAtif5xDPaEl6hV7DWJ7rj4duj9O8hJfaQ1AWzAg1ylmh9wTRnEXSZ09a
         raSW5D0sWK0S1pn5zbEdLzzlgpCR+X2TjFZfNezVo1YA2Lv63beWMdW2ZRU+4X4Uzb9u
         Rjqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=s4tsc4oLge4bhpVcknxRpLiErlta7Sc7xmeyBeQrPM8=;
        b=ILrjW0gI65JvDjxF/w55ATYF4waTTdqkFd01Ud4Wrs3iAuvGyvH0GZY+xHMEjPAiTb
         sE7c2ADTRRPJBnzFOOwBbCedRqg7QvRK/zLO3nICsIWcdoZiB5AnaUFdPcWsOVRCqMxR
         e+g6jJi9iyyOcINoQvb2B02vUaJvpCSZRFX//XoP3r6D4RktM2xoOa2Xqllsg857v59r
         meXCRcWasfQfKCr8HQKzYYiypebOwoocxV37qvFH31CoHT+qPB6hPQ/lvbXZwU89Bn9x
         Yp+Bx3LQKrOf1N+GTdipV56eUUNrTM6wzcNw9YymdV5vCZx27RIab8ZxuhzyEBtz0PtG
         5A3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cmt25JmB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s4tsc4oLge4bhpVcknxRpLiErlta7Sc7xmeyBeQrPM8=;
        b=NqpuRB4jz1undw3uEdMBuvVBRaiI1ODoaONrb/5uPgsd2t7NryjyhM9DiXblSPWL50
         XoEB4OGqpb0LXMkPmxuso7Vm8jxKlfhDcAf5H0nEXsQfFSipncw8bh6M4tCLeFNR643G
         vDS4L7LsVM1nGPcc1VFmlk0wJcEAAJOh2bxFIN+q8qXKOxXbU42cA2BilqpQZ1XR6NUC
         ZFjrzkXh6pl56ZtB7OvhCEQS0bvwpK8I2xfJNc/d7dqSE15Rt4dxDoS/lx/eiPEI87p5
         8HesBIRoNpPG9kVWIK9yWdzHFAeBvZJpYU+fOgSCaXKZaXSLYJ4CWAv9q2PKOH0kQXyE
         kOQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s4tsc4oLge4bhpVcknxRpLiErlta7Sc7xmeyBeQrPM8=;
        b=mOlJG1hY2mxhoIzQ0ngJYuJkKl1a9ER/g996XMZ8e4iS/oNJYwxZoAdu2pnpjXFvca
         Y81dC5F6vanPW2692zYeha3db3SJQ2z/jfpmHjctJoHoWmv4/JhG/oK04i3+IsQ8xHj8
         gvMstijLxB+51KUy+MPr51ZJvymgz1XYINQIjOtARNsGYMkwTQ3KRdRehTzUxVVfLnkE
         hgOcIs3LUFH++UkQfAdz6u/wzhFWWEZk+AbNF3SomV0a7LF0Z48pLLryaEcvlaVT/+TM
         IPdRxbJ93wXw/ry8RNGK/O+vqBewKOp/Nq3bNlNTioJWGqc5+Orh67+cC7I2G0vBfwr3
         Djbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s4tsc4oLge4bhpVcknxRpLiErlta7Sc7xmeyBeQrPM8=;
        b=XgwM4O+GjUPu39XuUhWhvFOcy5qeuWTh58kQEulsG3ua841j3QfomVfRsEeXIhcndJ
         5XJLkuBkIdrihZ5KiebDan6+5k7l3rVRi7FSaQn78i15u0HIlZN9IGdATHTACnZhHmEa
         BYaIKDa/HEHZDF40/i3Yc/MLkl8Gkettl9sEE//HikvVZZba3oM8Ibaa1sOmzXNaNcN4
         vs5FPiF12OSdqPSdBg0zwS8Ds8/SAXZnmwt2uGTC/K+sqMbxqbrQ7KU04qAWBwMncnPG
         KcoxmzSmDT05cJkz2ftAYckYk5TtsN2mEUSMQUNbBgyBd16W2itNMhseeUABvyAy89Z0
         Io2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVcG98/0H6SFhS6k57IJTlzlp/r/1/1TsmV3F8udvg3r859rWC
	1+V03OdEfbBbJ9Xx6N5zhJY=
X-Google-Smtp-Source: APXvYqy9ilSRNRLnNh7aV/szL3Vf/4FGEsWJM+Cx04dojZRZCa4plRGyWGqr6u12czMe+YXHP3ct+A==
X-Received: by 2002:a50:b942:: with SMTP id m60mr14764088ede.76.1565587439012;
        Sun, 11 Aug 2019 22:23:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8908:: with SMTP id e8ls29614525ede.4.gmail; Sun, 11 Aug
 2019 22:23:58 -0700 (PDT)
X-Received: by 2002:a50:fd82:: with SMTP id o2mr5623620edt.80.1565587438612;
        Sun, 11 Aug 2019 22:23:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565587438; cv=none;
        d=google.com; s=arc-20160816;
        b=uc8+jgbOcRPtxuNnswqW+jHzbUH8Qm3oBobdOujETt1A09SK5Na6Oh0Xr908Q7ajCa
         BBhQCvKNLmauOS14UPz23F9nKF49EQsZs8+B8hi54Y5hCnmxVu779tr/KszQp2UOehNv
         bfoPDQgWxbGsTJYFm/6UXi6XJ2lydlZLoNMliP62Ylaa7ZOxDUchV2JYZ8Rg1BxKYos0
         GGJC3sY+7UHCPmb7wvxkaxaxYTvFWguExJogxupWpflyHkcBe1LNSNhyR7JOurhdS54p
         f+2odjmOEX2xkX96aL6JzJ3vKdN4FCNoNqt+ghXGy+yUFS1YuqFAig4Ophdp2ZH+oKq5
         zoPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3G+7nnAoIeoj8pl8gwLC4j538STzFlKu9JRfT8QamrY=;
        b=pNtuy1/9f1/nnie8MbfW/bfrql8AzqfI5W6T0cPZjDZpNDees6LnOP67sa+SEauNOd
         tf5poIUrlaY6WzNtjz/4/bHzG78Cz8C3lTAaFjMIMcObc8QuHWKeumbSuYrdIQq0NYNv
         3j0LiDLsxTzY9RUqZL7aziINUlFtAkjYs+3T71T8hG3ZPP2uFKRn+siQ378RyypKoNSM
         t2LIfLQGz2VVOnVhQM7AzdTssGKUgJLQyO1JYJZceLBGcsYiNKcu4H5WztaNOfCfA+ci
         RzcJuPOGtrdvZQ01eZ/AbCS9qQomvMf7EhcXrl17Yt1BQ8LidSSHAVn/NIQCa2T1/sPr
         koww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cmt25JmB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id l17si585619ejg.1.2019.08.11.22.23.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 22:23:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id 207so10965683wma.1
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 22:23:58 -0700 (PDT)
X-Received: by 2002:a7b:c928:: with SMTP id h8mr26234799wml.93.1565587438068;
        Sun, 11 Aug 2019 22:23:58 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f17sm17575259wmf.27.2019.08.11.22.23.57
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 22:23:57 -0700 (PDT)
Date: Sun, 11 Aug 2019 22:23:55 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Vladimir Serbinenko <phcoder@gmail.com>,
	Jussi Kivilinna <jussi.kivilinna@iki.fi>
Subject: Re: [PATCH 3/5] lib/mpi: Fix for building for MIPS32 with Clang
Message-ID: <20190812052355.GA47342@archlinux-threadripper>
References: <20190812033120.43013-1-natechancellor@gmail.com>
 <20190812033120.43013-4-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190812033120.43013-4-natechancellor@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Cmt25JmB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Aug 11, 2019 at 08:31:18PM -0700, Nathan Chancellor wrote:
> From: Vladimir Serbinenko <phcoder@gmail.com>
> 
> clang doesn't recognise =l / =h assembly operand specifiers but apparently
> handles C version well.
> 
> lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
> inline asm context requiring an l-value: remove the cast or build with
> -fheinous-gnu-extensions
>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
>         : "=l" ((USItype)(w0)), \
>                 ~~~~~~~~~~^~~
> lib/mpi/generic_mpih-mul1.c:37:3: error: invalid output constraint '=h'
> in asm
>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ^
> lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
>              "=h" ((USItype)(w1)) \
>              ^
> 2 errors generated.
> 
> Fixes: 5ce3e312ec5c ("crypto: GnuPG based MPI lib - header files (part 2)")
> Link: https://github.com/ClangBuiltLinux/linux/issues/605
> Link: https://github.com/gpg/libgcrypt/commit/1ecbd0bca31d462719a2a6590c1d03244e76ef89
> Signed-off-by: Vladimir Serbinenko <phcoder@gmail.com>
> [jk: add changelog, rebase on libgcrypt repository, reformat changed
>  line so it does not go over 80 characters]
> Signed-off-by: Jussi Kivilinna <jussi.kivilinna@iki.fi>
> [nc: Added build error and tags to commit message
>      Added Vladimir's signoff with his permission
>      Adjusted Jussi's comment to wrap at 73 characters
>      Modified commit subject to mirror MIPS64 commit
>      Removed space between defined and (__clang__)]
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  lib/mpi/longlong.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
> index 3bb6260d8f42..8a1507fc94dd 100644
> --- a/lib/mpi/longlong.h
> +++ b/lib/mpi/longlong.h
> @@ -639,7 +639,8 @@ do { \
>  	**************  MIPS  *****************
>  	***************************************/
>  #if defined(__mips__) && W_TYPE_SIZE == 32
> -#if (__GNUC__ >= 5) || (__GNUC__ >= 4 && __GNUC_MINOR__ >= 4)
> +#if defined(__clang__) || (__GNUC__ >= 5) || (__GNUC__ == 4 && \
> +					      __GNUC_MINOR__ >= 4)
>  #define umul_ppmm(w1, w0, u, v)			\
>  do {						\
>  	UDItype __ll = (UDItype)(u) * (v);	\
> -- 
> 2.23.0.rc2
> 

 Hi Paul,

 I noticed you didn't pick up this patch with the other ones you
 applied. I just wanted to make sure it wasn't because it was sent to
 the wrong person. This set of files doesn't appear to have an owner in
 MAINTAINERS, I guess based on git history either Andrew or Hubert (on
 CC) pick up patches for this set of files? If I need to, I can resend
 it to the proper people.

 Cheers,
 Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812052355.GA47342%40archlinux-threadripper.
