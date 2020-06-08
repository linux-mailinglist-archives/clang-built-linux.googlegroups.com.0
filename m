Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTOT7L3AKGQEWUWVXMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D7D1F215E
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 23:12:46 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id n51sf8492469ota.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 14:12:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591650765; cv=pass;
        d=google.com; s=arc-20160816;
        b=pDGmlrLnC4rdKCNVZ/X4RP2LaAVMrkY7AS2Tgt5UbryDLd9kRsrjN7eb1z6/XuZejf
         /hBg+9lESDEU/+zBeqbzDuxd5aolIcNNR7h4TjZPbKheUcQwZUUAP+eiXPZ74JEsDDio
         i5DsRZNvn+KC0bQlcjkwCUeTO7l+7QEVCOEeeIeWPvwxphtKOuE5iq6+oVp7jG1iv/WW
         MK1kbeIucFgbx5H2I1Ir+ronUYrznriucJVC8fLcA3jcC0qJvJCfhfkbNU/LpF6eTNax
         K9CHC7rDTMd3GN3sQGel+ZHTgRGbPaGGA5KsQw5x0NbdqBGCcDQOStymZejUIF9GIWKm
         tLJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VY9LutydetOctq9DuiPaalxSPRK76BCoxJZxadHNiIQ=;
        b=kbsskGo/y7BtD4Inwj1UGV6Q4vC2JJkNOldkgyQg1+63BxGsj0jTa5dBWowyjMJ9WM
         OM3mb+AyE6OYFACy+SWU5loXm7SG2iExM8SH8eDqpgcG+390zyqYWdvyoHh5XT3JlyCX
         edBtZCK5Jn00mtP/uZAZPgA7bDBvHZ0lzLyq7QanK81RHFZDtX/+AmrfT4cX+2tEiIok
         1PhhYDgk59tYQ1a2L0xuZaxmQ/IsrBsQRtSSGYc9oXtF5UWnjvXs/rVQxu1x7d78iS5p
         GdXwwWQR3h8jH7yCZSgMF2qbg/6N8ysUVN+WQvsaNy1ngl5W9jfI23Ia9Jkw4zqEXUij
         Xbpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H45ROcx2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VY9LutydetOctq9DuiPaalxSPRK76BCoxJZxadHNiIQ=;
        b=VCO6xoJIbR3cF5JdEIzDgbQ/tSjXXsX23JHtgs10aJuRWiuLc3iVfK16C6NW/XW99S
         dB9O7PmidsugiKK4TG4s2FLddDUcIhsiw/bzc4f2pPOBbzqLJ1uYQ6CcDl4AKfoh5iXT
         lVvuTTIOel2wujRPthbm04ZkkWVcHDLhLFi6LIOiNpHnKeGP7NCdlPozbDCECvIZF+LR
         HR0q/cvhES+ahGjbjAQ0Zmea8zYUfYuuZ7jFcEnRgL/A+Pio8TmP5EyUdoa7mMLrksej
         kRiKUyleHu6/x/hpOf7Fg1lOhgkGjTdzTJU3sUzAgCPBAn/Jqm/0l0RFOEL4XEUa/9uq
         4T+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VY9LutydetOctq9DuiPaalxSPRK76BCoxJZxadHNiIQ=;
        b=H4vJ54ohZRT0NeI1pSBk9PYAimdXG8XaCs6Q+gP9DmxgRkFuxB/O/fIEbsZWo+v24P
         BrFyA+YCsgESX0aYR2e3X4dgiq2SEVDS/aOSwgx4amZXw1gILPM7RXm270mVczJd8ok7
         Uv4QzXh5M/9IkkqIcCP1NhJZF269AQd4dNw/9lFdEwq/HRBTrybxg9QCRfvtqeVY/zuU
         hlhxjRhG0wEmHJWaziRH/Pua7cCy4gOu5gH1Xheeqn6KvGVMcrqbZ0Cmq6W7pEaWQ4Gs
         ysNZ2J+c9W0Nd/fmBWvlHRcD0Xqnh56EBU99hW6/akAdxv90XalHVpLj6jEAbrRrptrr
         J0cA==
X-Gm-Message-State: AOAM5300uvfoMt/jziQS6XKU/MDieEcI1IQ1JXV9+uNvtU0gXrSPFiMu
	D62BbJLJz3KHQQ0FGfvLt+Y=
X-Google-Smtp-Source: ABdhPJxeWf1VjDYdgHCXoqj8J2foXFxsyzzeBXi2kHE2KEPIH1cswEY/fNBBwVntu45NB5VyEUDE+Q==
X-Received: by 2002:a05:6830:837:: with SMTP id t23mr18224512ots.87.1591650765173;
        Mon, 08 Jun 2020 14:12:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf10:: with SMTP id f16ls3424776oig.10.gmail; Mon, 08
 Jun 2020 14:12:44 -0700 (PDT)
X-Received: by 2002:aca:4f46:: with SMTP id d67mr1069322oib.174.1591650764896;
        Mon, 08 Jun 2020 14:12:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591650764; cv=none;
        d=google.com; s=arc-20160816;
        b=q+sFnkvaISKEJkIRsnOvOgSolXR6zz8wHfzkTprqBOqTxDUeg21aS0fWpVAbd97eXu
         Q6iDy+IvJjvCj3KatGJINXZ80rixOxYIq36Tf1BAlb1fuaSMdedKso88l0YPQgS2CE4k
         SoqiCjMscyqjH0e/NihUdkhPAuHZ1KfNFpdBS9tuUvkgknAKsfbymQDfTy6kHtO10e9t
         ZIEnj6yacNAGfRtl5SMuHMAYFV01W+BXboSo2rMbdSlTEqls37OEm7j3fCIxqXFa8MWy
         G5THg9rVwE8h2zO2g0YYwqxisINrdRvNQ48rr24QkVLAJqF1f0Dn2vhTHVcNKBXzs7mv
         8TxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eUU1SNwTPMMpa+RiYbTG49wUfrDQJr1PB29vhwz2Q0g=;
        b=VzKGSBat8fHSH5PGYIRWtrwkUB2Meuonn9nPWG1qfEG4cHucdIKrid79IhHw3TfKSm
         donyF0kTPMzzZgEJ0wVdAkK24o1p8byegw0xwMTFVVM30c0/QzVNW+vdl26pgmPFpKzB
         xvclunMMnmp8G5FldZ+YVaNG/ahT7iPCOXCUWEAyQ6+k0H/a/IhQaCUNxzLAFN0Sdrio
         u2yrCAUXEyVkmrTzIXrdxmUq31rnKqL8jitdBsAgv6OEWlGCJsmHYal2f8kVuT3xLPkD
         4+vmmUc27AntARMgiwgF7uH+RRZShyy0MJenBfpu6mEmJi1E6r8+r0+MOXKFHl/Qn7K4
         e+3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H45ROcx2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id n140si538199oig.0.2020.06.08.14.12.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 14:12:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id o8so9300918pgm.7
        for <clang-built-linux@googlegroups.com>; Mon, 08 Jun 2020 14:12:44 -0700 (PDT)
X-Received: by 2002:a63:4f09:: with SMTP id d9mr21260207pgb.10.1591650763873;
 Mon, 08 Jun 2020 14:12:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200527135352.1198078-1-arnd@arndb.de>
In-Reply-To: <20200527135352.1198078-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 8 Jun 2020 14:12:32 -0700
Message-ID: <CAKwvOdk=zO-VyYaQCjmgJK9MOGy=7Qv85RPr=qRYetOjWjU4Mg@mail.gmail.com>
Subject: Re: [PATCH] x86: math-emu: fix up 'cmp' insn for clang ias
To: Arnd Bergmann <arnd@arndb.de>
Cc: Bill Metzenthen <billm@melbpc.org.au>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Jiri Slaby <jslaby@suse.cz>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H45ROcx2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, May 27, 2020 at 6:53 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> The clang integrated assembler requires the 'cmp' instruction to
> have a length prefix here:
>
> arch/x86/math-emu/wm_sqrt.S:212:2: error: ambiguous instructions require an explicit suffix (could be 'cmpb', 'cmpw', or 'cmpl')
>  cmp $0xffffffff,-24(%ebp)
>  ^
>
> Make this a 32-bit comparison, which it was clearly meant to be.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/x86/math-emu/wm_sqrt.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/math-emu/wm_sqrt.S b/arch/x86/math-emu/wm_sqrt.S
> index 3b2b58164ec1..40526dd85137 100644
> --- a/arch/x86/math-emu/wm_sqrt.S
> +++ b/arch/x86/math-emu/wm_sqrt.S
> @@ -209,7 +209,7 @@ sqrt_stage_2_finish:
>
>  #ifdef PARANOID
>  /* It should be possible to get here only if the arg is ffff....ffff */
> -       cmp     $0xffffffff,FPU_fsqrt_arg_1
> +       cmpl    $0xffffffff,FPU_fsqrt_arg_1
>         jnz     sqrt_stage_2_error
>  #endif /* PARANOID */
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%3DzO-VyYaQCjmgJK9MOGy%3D7Qv85RPr%3DqRYetOjWjU4Mg%40mail.gmail.com.
