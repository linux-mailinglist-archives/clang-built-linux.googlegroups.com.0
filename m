Return-Path: <clang-built-linux+bncBCR5PSMFZYORBPPX6XZQKGQEWCUOHDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DADC194FE7
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 05:06:22 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id 133sf2961132vku.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 21:06:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585281981; cv=pass;
        d=google.com; s=arc-20160816;
        b=rMSxyDz6Ytgud56Fy/TxKUejt6pMXYXaImxyMCnkGtYbIbS/eamaqdMAEUmMnNKYIK
         MGs7y5VWM4COlX0F0oawyrnC6K4AAs5wVTIs2gFDZqWBoyAueGhBeeKTmkJQh3+ysBSW
         K1sve7sr+/ybn7MoUSYmUVLt3haP9NythWWw2cf57HbsQ1te9+h5zDPX9QCAIpYivx3Q
         87xraDGCxeyHut81A26slgbK1jTU0+ed0U2uc4MD/qgfS/yCZ+lkaFXF+ZxbM4f5prXP
         iaGW8gRxpwAkAr/IK9oFzZeCAD9tnOolkKeTTpuYz0Yf7N/hsZ+MGA0Eo+fMv+u2ZKbH
         AOSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=pEjpi3YQPijv4VLzDszs914obBBwyQ7dHsNvQUoKLfY=;
        b=uVdrUn3IlH8v6sx0nYkjeI37kgvWZNrbXjf9baHWi3yhV5aaLmhU77Jjt8I6xfFDtC
         yaiNfV+RhBHB+4S9nmC38lBZY/RTwWHbvN+FTI8/kVjZvoFItPadu62JXgeFkQ8ltU6+
         YiZ86/sT+BCGdDDs9gMfxVpT52sGUjEtFTGlXItffKUXEhAvihkTskvMCpfWjco7bNsm
         W9uomdzO9BViashmDPb/N5t+Vu2u4R5L7u34DwRKNgr0TFrt+5e4RsmX1c5Ze9TLOq1L
         Uv2FSVrmNDj17D5CGVSq0NwMHL04YpDcADrphBKQPOW5f39uxwRtcNsWzmg0WrEA1XrP
         ylTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=RhdHyhJP;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pEjpi3YQPijv4VLzDszs914obBBwyQ7dHsNvQUoKLfY=;
        b=KPPk1+8rNLDN1QgR/jsaYZXnnFNPdug/rUd1mWzYjLa+/qKZ3grwWMBcMRFjKCJczc
         ZUMWSk7gsiXDTeURLx1y0vra8dP5obceSQhNi5QHCkcX8Ck1a5N7vHX8ceQBpjNBkDVo
         kaISqnUIIvW1H0ZUCwf++nhrNNXb7yRsztJUM5tBiP989o++oolVxViw0RYgLB2jf/sh
         NeOcRbG9/cS/E8X2dyF77hdZhay50oM7Gfj2gpqU8eMOYwg1DNzGcII+lOvBAvWplw9z
         or+7Wr0uzAiFofGqxJLYQ+wukQnL3tdb+YocmHmHoFWVNuutC40hR4aUp+h68K8Lu9W3
         acag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pEjpi3YQPijv4VLzDszs914obBBwyQ7dHsNvQUoKLfY=;
        b=J7KobUHTG81GlLLRPPwO9QL/4Biebnu0ClWWHPXOdc2+Jsxigayes8OmDz3a+kKROa
         ME0LVChjLcXcym/ItZudNoq4eZa7cPVY6G4mPQeKsBDzdlLomXnxRlqk/OsQvFomBwAD
         HWMZzAUakdLbDnpUXCb87ATwh3neWkYW8Ud54OX3vEqxKA+4iKh8Rugo/RaxOTdrgDwt
         3Oyq32oXFR/ujWD9j/hvB2e+X8HcoVUjvF6FIZfgmhGd5YUn944HYjUjrSo9eTxmKo8J
         FdUC8ZUYlM191/SASNvZ63UXGaEXJ5qcCdgdmAYtJJw5LHkDOTir49OVE/JUGR9K4Fdd
         bOpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2FWjheCN7L3Db93N9TvWVpxVjmAqOtHPi8bLvpF0K+NUWQrZZo
	bp5iM+ULnKJEg2eyqHGi2xQ=
X-Google-Smtp-Source: ADFU+vu3L9Oq4yCsvYXeZQPSPDFBXo/m/jAMKnM0MBT2xDWG8SYSbBd0a45GRji9CUwad/vkzCTVjg==
X-Received: by 2002:a1f:43:: with SMTP id 64mr9684628vka.100.1585281981394;
        Thu, 26 Mar 2020 21:06:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2949:: with SMTP id p70ls489683vkp.11.gmail; Thu, 26 Mar
 2020 21:06:21 -0700 (PDT)
X-Received: by 2002:a1f:a452:: with SMTP id n79mr9286617vke.36.1585281981005;
        Thu, 26 Mar 2020 21:06:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585281981; cv=none;
        d=google.com; s=arc-20160816;
        b=Z25F+TpIXNtP35vykCxUcILpX6jc90OakoGOHguXVg1fpDYEkYn6en6P2zV0FDRqR+
         uGb/vl4XgMHqyiMK9NdgP0/5WFa0/Jz5sb4FXoMk8mAaIvWETZX37/LjXEXEBQ5qg9P4
         mVWmvXNy36uG3SCKzOakwl+pbCkzjFGmj3m/oE4dOFeFkqQG5uxv9cW9T2ep9pJZe/Gy
         omo3gpXqJbVhwDwD6ub/NWwIaS3XaC0O1tb+qvYDZJwP93unczY2CpFtqR5Pa0QCItrc
         JSy2nQAOJDa3KEfrCj/lwHMwuBgFt8TH7CYSBFqsP9lcIXHA1osGOnSBVrfS2F7qKML/
         Xlwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=8qLw4G8wz3yDALhNVk8Egjke+0sAAvmqxPMG/Lc5cWI=;
        b=wUYRui+yfGndgpeeKNewd2zoDQ1V2q1nHJljyplXxROc3hA8v478EFo3lYFyJ/AYsV
         rLGJWMjE46TX0IG5pthMwY43uMsWClFvyPInX8B+QctiWgcxHiBGpsk3m44Nim0czl7d
         aw8WVk36wkEf0N2xPo2xunjLtwn9hUhw19P/0CMxoqpKF6t6HPsXnyD0zokB+1IEL4AX
         PNUyTVeQCZO02F3n1EE8P7afTLBsTPWTz6C6EmF2GbFKwcBHWGMwKlHRIu9RJBJ0qQ5D
         5DeTZWjiZaWDhojG2YLv7ClGvKM6G4bvGRDSS05rKcVcUc8xA/9RErVWsEWPKsPtAc12
         LFiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=RhdHyhJP;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id w12si297956uaq.0.2020.03.26.21.06.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 21:06:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 48pSvf1RWFz9sSN;
	Fri, 27 Mar 2020 15:06:06 +1100 (AEDT)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Clement Courbet <courbet@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, Joe Perches <joe@perches.com>, Bernd Petrovitsch <bernd@petrovitsch.priv.at>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Segher Boessenkool <segher@kernel.crashing.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Allison Randal <allison@lohutok.net>, Clement Courbet <courbet@google.com>, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH]     x86: Alias memset to __builtin_memset.
In-Reply-To: <20200326123841.134068-1-courbet@google.com>
References: <20200323114207.222412-1-courbet@google.com> <20200326123841.134068-1-courbet@google.com>
Date: Fri, 27 Mar 2020 15:06:14 +1100
Message-ID: <87a742wifd.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=RhdHyhJP;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Clement Courbet <courbet@google.com> writes:
> I discussed with the original authors who added freestanding to our
> build. It turns out that it was added globally but this was just to
> to workaround powerpc not compiling under clang, but they felt the
> fix was appropriate globally.
>
> Now Nick has dug up https://lkml.org/lkml/2019/8/29/1300, which
> advises against freestanding. Also, I've did some research and
> discovered that the original reason for using freestanding for
> powerpc has been fixed here:
> https://lore.kernel.org/linuxppc-dev/20191119045712.39633-3-natechancellor@gmail.com/
>
> I'm going to remove -ffreestanding from downstream, so we don't really need
> this anymore, sorry for waisting people's time.
>
> I wonder if the freestanding fix from the aforementioned patch is really needed
> though. I think that clang is actually right to point out the issue.
> I don't see any reason why setjmp()/longjmp() are declared as taking longs
> rather than ints. The implementation looks like it only ever propagates the
> value (in longjmp) or sets it to 1 (in setjmp), and we only ever call longjmp
> with integer parameters. But I'm not a PowerPC expert, so I might
> be misreading the code.
>
>
> So it seems that we could just remove freestanding altogether and rewrite the
> code to:
>
> diff --git a/arch/powerpc/include/asm/setjmp.h b/arch/powerpc/include/asm/setjmp.h
> index 279d03a1eec6..7941ae68fe21 100644
> --- a/arch/powerpc/include/asm/setjmp.h
> +++ b/arch/powerpc/include/asm/setjmp.h
> @@ -12,7 +12,9 @@
>
>  #define JMP_BUF_LEN    23
> -extern long setjmp(long *);
> -extern void longjmp(long *, long);
> +typedef long * jmp_buf;
> +
> +extern int setjmp(jmp_buf);
> +extern void longjmp(jmp_buf, int);
>
> I'm happy to send a patch for this, and get rid of more -ffreestanding.
> Opinions ?

If it works then it looks like a much better fix than using -ffreestanding.

Please submit a patch with a change log etc. and I'd be happy to merge
it.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87a742wifd.fsf%40mpe.ellerman.id.au.
