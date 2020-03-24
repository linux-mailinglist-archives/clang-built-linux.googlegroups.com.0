Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQPQ5DZQKGQEE6A6J3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id B86161916A3
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 17:41:38 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id r1sf20298242ybf.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:41:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585068097; cv=pass;
        d=google.com; s=arc-20160816;
        b=eUKo6AKTl2J51mSh2JfNA+L0xFgf6akvQHyi4K5BO9yhhKYeMvm5R+SG425bW47zsf
         Top/QtqQGLu9Qo6D1zfAYnuoLJRJr+OzSsomeXl9fF9/J1qMVmoItWKdaf1Q1UOnxtbo
         VjY2+0auoaPqfoi+0774oS1EKWRwH53ya7CGVJaOoIKfSZnTc5umphFj8s7W3HShDtZB
         dO3lFn2BDX3CMrPHRJ2pLSWRnvp6fWctzWI2BAKR+GmBuyyv0hbKJ79AtN95YOaBI1YO
         wcFOly1N0/v9MBGA1jVPEeOFOmtW1/0T/sGDOoz12uEl997JCDSqnM+i5hFir25hHIDP
         CnZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PzWW6kiE01bB6Xt2FLfIWatI/ZqfbUsVs3DGFCcqdOc=;
        b=sfKLkgSAlrU0mxdAqJKgdMMCqFAywjR3Qd2CX2FQediuCq5bukH9CwwhHk3704W7km
         60YHwWdzRHKXc/thmwK8+rWUzdip9mKQ53i/5+GlrGETS03RmkZYfrzuImT7+8GnHav1
         qMxyQQYGvH6xYQ1gvPzdhwNsqpZXe2E53nUXvL3sEL6HAWCebmC49Xm1yGFW31WSBKfe
         3ZLyZJ991/gwYXeRbye4VcETFUWb6umzIuKI8/gKCtYo7/vlH6gHS+QJ0RdSCv4v4OVA
         +/MCkkoQ20jg9z79Lxgs5qDLHpATuASh8kYtNI54UBNvDPmsL7VTpipSylmP4CZQbmNy
         YgLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j98GJB7I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzWW6kiE01bB6Xt2FLfIWatI/ZqfbUsVs3DGFCcqdOc=;
        b=LsvCtZpLofo0a8r/x7XMAqT8Rmzb5hSBiKhsqafU0iGhTHxo1KKGC6l3FBjPPmbtwS
         FBL8h6BpvdgbIE1hmOc3QlHk6FC4pz4HRtrPdDFf1QlvXxpaYBDrhjjJOOXD5CGkUrh0
         SHApOT/j8tIvEz+rztuoJp3+IhPx9pQaEHyL6EHrHIIhqxC/YgkNUo1h7CckmDFOVope
         HNvL15XQWkPWaEIfo+3jdVLvYrT5QBmoDPCN/aJErFzqX1NIZzayZGMlhJSi+OZbzV8J
         CRGneoO829W1X1ifYYyKQCa6ah5wb/dYQUx4aOcgQ2dXHtcHucXN/ondNT0wmMxEPnva
         ySQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzWW6kiE01bB6Xt2FLfIWatI/ZqfbUsVs3DGFCcqdOc=;
        b=hVs4JBseB1gelPylVCcT4saTAvJEB2XNPG4k+VPUAh0qEDslMgvew+p7k7j+UBxQ7q
         JAkrzr0NYixZJbYmogkm3qDymyFIEWK0SCSpUuAEd5L1fzZGyQazltFYaye3DjJxQ3ua
         /cqGWSufIDV+DBugtWGp+kyQ3WTyiVWIp69I3bdYwCJzPM6+fhgN3BcoXqBiIDqvVmGr
         60PwHgYtiic+8DDgR60//7CDF5SzxMw63hQaRzMB5S4nh72vboudbr3fyPaaAG6sMxIZ
         RI5EnveQJ5k9mq0yhfKguhD7wfj7nbpvBvJWpbLc1mhDcZsdjtWy1Mayx1x92j6VTmnx
         J8yg==
X-Gm-Message-State: ANhLgQ0XYOgRLuPvPLSETVWa8+v98qMIW7JwRCuB2Y9hB5YXvE3iXcBI
	jDbVO6z3whB0vaAzD7laDK4=
X-Google-Smtp-Source: ADFU+vuTbdzeKvJ9RgAnYWoXRycHDs6Mrib6GiWiKUkLEzke6ctuLPGqVnfd4ok4rTXl9Wx40nYrVg==
X-Received: by 2002:a25:1c8a:: with SMTP id c132mr16300039ybc.108.1585068097731;
        Tue, 24 Mar 2020 09:41:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa0c:: with SMTP id s12ls6590963ybi.6.gmail; Tue, 24 Mar
 2020 09:41:37 -0700 (PDT)
X-Received: by 2002:a25:824e:: with SMTP id d14mr45626660ybn.8.1585068097231;
        Tue, 24 Mar 2020 09:41:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585068097; cv=none;
        d=google.com; s=arc-20160816;
        b=yvK8VMw5wIN6FYG6xlqG76LKJ8WFA0g6nDmTwV4hwzVfMQUtxJPkga4gNdmfb9OWHQ
         XLGMLjqoRgGBSbHFQP9q6zWX+sNCfM+qCzY5RsGZRTCudOIJm582ki+0l9zby+oNxlvv
         lqBsxp9yLLgYZXhuI+hS0RPlDmzs8liSYRqUzfwECsBGYmI3Ol6Ew3WzQEjO4Afk5mEp
         vuNSOqTnUYgiQnlt20Uv/Gdocrz646BHQwdI4tyUQbiiS49LJL6p63HE8L6gsy9BmUG3
         JzaruQjINkOvxzp5c1nIxx3UtoxqmuvVV9THtf7SCYCYb0GN/nHu/u59E5JgZ0NbB+ow
         CFFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=979Mtap+CCQ7tKvldIjbiCeKqDiW28MMMAoe002pSds=;
        b=RLdgyrT/b4zJL/1jXR22nqDboNEc/IAihlKqUc+i4toMoo2ck8wCmy4c7J4rRmxImi
         Nh7+DuQVW+OsqRZtSL8cAYvTzixwngcUmpdY9Ru7aDuyoPC0JOtokNRYLuAmbRkc0AE4
         OFU7EA1G4PjJlSddLWGP2i53daUGp94CZ0zxQOWshuz8wCP7/B+CWh1qpkfsE3u1XKaO
         OUUuDxWaTtmHZ6v6vsunn2KOjum239sS3z11UEpjSzli8kLs487OWvMh7vL7wCAWqYMy
         0Jy8lB9+QEIK/X3xpAMJRjxpy/wg/+3ZJ1PR6VrpyhLjXBac7QJwmOzr13i6FSXl3+kc
         q3Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j98GJB7I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id e14si1471203ybp.0.2020.03.24.09.41.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 09:41:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t16so7609016plr.8
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 09:41:37 -0700 (PDT)
X-Received: by 2002:a17:90b:230d:: with SMTP id mt13mr6422700pjb.164.1585068096041;
 Tue, 24 Mar 2020 09:41:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200324084821.29944-1-masahiroy@kernel.org> <20200324084821.29944-5-masahiroy@kernel.org>
In-Reply-To: <20200324084821.29944-5-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Mar 2020 09:41:24 -0700
Message-ID: <CAKwvOd=3tm+OQhuyM9SzC1Mo6QWphLWipd-=VBRYzEmMC6Bg=A@mail.gmail.com>
Subject: Re: [PATCH 04/16] x86: remove unneeded (CONFIG_AS_)CFI_SIGNAL_FRAME
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, 
	"H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=j98GJB7I;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Tue, Mar 24, 2020 at 1:49 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Commit 131484c8da97 ("x86/debug: Remove perpetually broken,
> unmaintainable dwarf annotations") removes all the users of
> CFI_SIGNAL_FRAME.
>
> Remove the CFI_SIGNAL_FRAME and CONFIG_AS_CFI_SIGNAL_FRAME.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>

Please remember to clean up the reference to
CONFIG_AS_CFI_SIGNAL_FRAME in arch/arc/kernel/unwind.c.  It was not
defined by any Makefile scoped to arch/arc, so the the ifndef guards
can go, but the code they guard should stay.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
>  arch/x86/Makefile             | 6 ++----
>  arch/x86/include/asm/dwarf2.h | 6 ------
>  2 files changed, 2 insertions(+), 10 deletions(-)
>
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 72f8f744ebd7..dd275008fc59 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -177,8 +177,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
>         KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
>  endif
>
> -# is .cfi_signal_frame supported too?
> -cfi-sigframe := $(call as-instr,.cfi_startproc\n.cfi_signal_frame\n.cfi_endproc,-DCONFIG_AS_CFI_SIGNAL_FRAME=1)
>  cfi-sections := $(call as-instr,.cfi_sections .debug_frame,-DCONFIG_AS_CFI_SECTIONS=1)
>
>  # does binutils support specific instructions?
> @@ -190,8 +188,8 @@ sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=
>  sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
>  adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
>
> -KBUILD_AFLAGS += $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> -KBUILD_CFLAGS += $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> +KBUILD_AFLAGS += $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> +KBUILD_CFLAGS += $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
>
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>
> diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
> index 90807583cad7..f440790f09f9 100644
> --- a/arch/x86/include/asm/dwarf2.h
> +++ b/arch/x86/include/asm/dwarf2.h
> @@ -21,12 +21,6 @@
>  #define CFI_UNDEFINED          .cfi_undefined
>  #define CFI_ESCAPE             .cfi_escape
>
> -#ifdef CONFIG_AS_CFI_SIGNAL_FRAME
> -#define CFI_SIGNAL_FRAME       .cfi_signal_frame
> -#else
> -#define CFI_SIGNAL_FRAME
> -#endif
> -
>  #if defined(CONFIG_AS_CFI_SECTIONS)
>  #ifndef BUILD_VDSO
>         /*
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-5-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D3tm%2BOQhuyM9SzC1Mo6QWphLWipd-%3DVBRYzEmMC6Bg%3DA%40mail.gmail.com.
