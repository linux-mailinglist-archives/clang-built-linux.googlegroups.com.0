Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBQ7646BQMGQEO27DR5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F53362A0E
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 23:19:00 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id k1-20020adfd2210000b02901040d1dbcaesf5028073wrh.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 14:19:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618607939; cv=pass;
        d=google.com; s=arc-20160816;
        b=nod7nTH6Uit71xFGJ3VOCYqO7vMFuF4061BXZEkqP2mvl0KcECztZ77PWBOTPZErCF
         pEYvF+FaFtmD37vBc/0RSy2PBFBrawda9f9OQOVJpvUCTSkF0t7Be6hTpvKIUw0fGS8J
         3EGNeSABe4LNtTUOQAvGLc0VE+w/bE4t8ZZDv/tdh7P0HUZ/WrGEAbMxmW05/xQEqZ6E
         KlCd++dFcoZOdNT7hRNGVUW4r8uGoigJvC1b831MVS5gPeu/iK8rJCsGBHuR3WcsZigc
         vIzzN8kWA1q/qqsm5IC2fGxg8LH9QN7wUB6jCnEl6mrdUn725j74Ntl4EBFDjRc9xcsp
         mX1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=nmxzMGr9KKMQMILMWqyv67ohsYTF2mZXVuQwnwbsNcg=;
        b=VKnjfgeMDbacr9CaZTETc8VQzjHF9VHBaJT8mQo4cI9Ql7a4zLeOyw5z6A2ePaP5zc
         2z7qAS7gudewiBcz5fKmkTEt9KIpueLxXXSVxocPu5KN3vU4FB3YAvHQ+KtjCuuBi/oJ
         fecAPyqUWxqQYuTf0sqwLH3sU3mYkLfiacgfifTM5Cq+oS3CIUaAGFjoyh1bKHKYrTeq
         Ex+vCuIXJYQHoItCbbPiaAjgUI3zaJjAmnVKuLCJySWfN3b1rKfNPGY6YiT1QRgL8tr2
         h91g+BqRSulLhA86SBPeNuU1UZ4pNe1yEmkI7IUbgkA2ISkJz6QuAIfYpHKeZevgLFTZ
         GwrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=qAv9ARPZ;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nmxzMGr9KKMQMILMWqyv67ohsYTF2mZXVuQwnwbsNcg=;
        b=YZgrOK3WbzOBNwweY8Iun/fpqLLLPrATZUjfmZKkGQeP2Sn7E+COOOIvIMPQexA57Z
         jSOsGJ1mUbn0LUfrb1usRzA2KeV86VcNw31ylN3F4sci5qPG8sfsQWwcsRj0lL8I2POc
         X/OFfYnvjmH8D/v9DqK+PMrWfMlKoLU64rQuSyenwBKnlrrERLTUyzmSb3wsp43ujCvB
         oJXlV/CpKYw04qRN/EG5nSJI+k7wnrleloN+wB3+1RDRRh/p32cq/4SVOyKuhNcYDc6V
         YQabriJeDUjf79lE0Q3k7ED0z6ylJuxn7KtGQbnHv2y2cO3cTIrmHitJfuShVRPjBj50
         Dmbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nmxzMGr9KKMQMILMWqyv67ohsYTF2mZXVuQwnwbsNcg=;
        b=TzICxVlEv/SP6HON3MvKdm1Maj3BDSUwQTSVj9cICGdWibepEsE1bu8WTwe+Me0ilO
         QaYlNlENvI+IQIajiaPjrLXV3y3dRrrFugmaqGWPUMhSKSPNBQV+nDxeoPUzFKGAWqTr
         1hldkrLhHYPYK6ZoXEV3Wpx/1qu5JEP3OhyUQj4UimbOtbgVapnzu1dQdxEzdu8x+CJr
         IyCATJkvRl+uaj/QyLitYXyPCzwe6NT41fX7Mblw4gfDt49iFHH4e2EjPX5qaNykXCWS
         gwKVEBpBI+46UFVXT9nA6bs8pwTV/dPmZwEi9dTh1ycw4BIa6W7T9d/MX4DEdWPGARIC
         yLwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hqWVKh75ZofpN33X6b24Q2+34vYWsh9n8ZR3q6W/TMv5Dp026
	4hiKLRBFcVc+els/0hbMHfs=
X-Google-Smtp-Source: ABdhPJyfUBZOGM5bGNmqL6jlw6Vd5Zifesm+4N89HZJDTqGfR2wQkhwNPeHIte6uOplE8+ax3rWiZQ==
X-Received: by 2002:a05:600c:4ec8:: with SMTP id g8mr2213582wmq.134.1618607939768;
        Fri, 16 Apr 2021 14:18:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:11:: with SMTP id g17ls580677wmc.3.gmail; Fri, 16
 Apr 2021 14:18:58 -0700 (PDT)
X-Received: by 2002:a1c:a182:: with SMTP id k124mr10179072wme.132.1618607938905;
        Fri, 16 Apr 2021 14:18:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618607938; cv=none;
        d=google.com; s=arc-20160816;
        b=hVEPp2uRH1ZUUl1r/Dpg6bK7xDxmQs7YGsrSGqoWxcS1jZhkSM9LpEuD5Z/ki5X8AP
         P9iQ2VfalTIizNtTQjXLVouj2dFF7LZTPpVXh2Je/WCdMUkC7PHS/yiEGoGuWNXc94lH
         6BbGkGhiYfRCfveODxs+gD+jpj/cL5CwJcmbxKK2vJbdJrhpFtuQPf9Dc+cA/++7oiiO
         8pp83/yXw0uQCySyYEKoLapNithMkOIalMO7qHQ+ShL/60Roua8m1rNbxnXYZO34uQOu
         MGgAHdxT4lhan4LktqVxvbFVQtXoW1MNMWGNhtVjvf5t3qWFPqcWD6XPfy4hCtz9bGI3
         PvaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=UpcmZbbbGFBVK0S1XUfHo8fVMPRezkHQLhMcfuuypro=;
        b=kfuwWhdRCrjaf2IWhrX8LPofyZ5W7LxO3BCoZEcMsIo1etxSWu4QHHQM8qFFESG4vw
         grE9yEQ8Nzll+hj+JUnbaGY7MMOGDvwwpOBpTZhAEuJ9NWS+mZXfkvMH+rFLzkjAIW98
         BYBPwfHZ0LxP9OvfQmN4BWkQxPFbJkCorFJDwXnEcv24tRWc5gFg5HlyoIuwa16j5KPe
         6hLeM3F45XATEdFetcLZ2/lrGDcuThPR2mL4gJhzXeNTKnn+gmBeacMXwX8HiX0LUry8
         lNnutXQBC//bCL+hUTZ1NLXNh1ugD8k1T6lo4Jre8LPGy3qgtLc+0Cvq0BMv0TYowoAT
         xwag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=qAv9ARPZ;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id p189si278444wmp.1.2021.04.16.14.18.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 14:18:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0cc500329c23fffea6a903.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:c500:329c:23ff:fea6:a903])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id C0A971EC0350;
	Fri, 16 Apr 2021 23:18:57 +0200 (CEST)
Date: Fri, 16 Apr 2021 23:18:55 +0200
From: Borislav Petkov <bp@alien8.de>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Kees Cook <keescook@chromium.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
Message-ID: <20210416211855.GD22348@zn.tnic>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210416203844.3803177-6-samitolvanen@google.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=qAv9ARPZ;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Fri, Apr 16, 2021 at 01:38:34PM -0700, Sami Tolvanen wrote:
> With CONFIG_CFI_CLANG, the compiler replaces function addresses in
> instrumented C code with jump table addresses. This change implements
> the function_nocfi() macro, which returns the actual function address
> instead.
>=20
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/x86/include/asm/page.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>=20
> diff --git a/arch/x86/include/asm/page.h b/arch/x86/include/asm/page.h
> index 7555b48803a8..5499a05c44fc 100644
> --- a/arch/x86/include/asm/page.h
> +++ b/arch/x86/include/asm/page.h
> @@ -71,6 +71,20 @@ static inline void copy_user_page(void *to, void *from=
, unsigned long vaddr,
>  extern bool __virt_addr_valid(unsigned long kaddr);
>  #define virt_addr_valid(kaddr)	__virt_addr_valid((unsigned long) (kaddr)=
)
> =20
> +#ifdef CONFIG_CFI_CLANG

Almost every patch is talking about this magical config symbol but it
is nowhere to be found. How do I disable it, is there a Kconfig entry
somewhere, etc, etc?

> +/*
> + * With CONFIG_CFI_CLANG, the compiler replaces function address
> + * references with the address of the function's CFI jump table
> + * entry. The function_nocfi macro always returns the address of the
> + * actual function instead.
> + */
> +#define function_nocfi(x) ({						\
> +	void *addr;							\
> +	asm("leaq " __stringify(x) "(%%rip), %0\n\t" : "=3Dr" (addr));	\
> +	addr;								\
> +})

Also, eww.

It seems all these newfangled things we get, mean obfuscating code even
more. What's wrong with using __nocfi instead? That's nicely out of the
way so slap that in front of functions.

Also, did you even build this on, say, 32-bit allmodconfig?

Oh well.

In file included from ./include/linux/ftrace.h:22:0,
                 from ./include/linux/init_task.h:9,
                 from init/init_task.c:2:
./include/linux/ftrace.h: In function =E2=80=98ftrace_init_nop=E2=80=99:
./arch/x86/include/asm/ftrace.h:9:40: error: implicit declaration of functi=
on =E2=80=98function_nocfi=E2=80=99 [-Werror=3Dimplicit-function-declaratio=
n]
 # define MCOUNT_ADDR  ((unsigned long)(function_nocfi(__fentry__)))
                                        ^
./include/linux/ftrace.h:671:35: note: in expansion of macro =E2=80=98MCOUN=
T_ADDR=E2=80=99
  return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
                                   ^~~~~~~~~~~
In file included from ./include/linux/ftrace.h:22:0,
                 from ./include/linux/perf_event.h:49,
                 from ./include/linux/trace_events.h:10,
                 from ./include/trace/syscall.h:7,
                 from ./include/linux/syscalls.h:85,
                 from init/main.c:21:
./include/linux/ftrace.h: In function =E2=80=98ftrace_init_nop=E2=80=99:
./arch/x86/include/asm/ftrace.h:9:40: error: implicit declaration of functi=
on =E2=80=98function_nocfi=E2=80=99 [-Werror=3Dimplicit-function-declaratio=
n]
 # define MCOUNT_ADDR  ((unsigned long)(function_nocfi(__fentry__)))
                                        ^
./include/linux/ftrace.h:671:35: note: in expansion of macro =E2=80=98MCOUN=
T_ADDR=E2=80=99
  return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
                                   ^~~~~~~~~~~
In file included from ./include/linux/ftrace.h:22:0,
                 from ./include/linux/perf_event.h:49,
                 from ./include/linux/trace_events.h:10,
                 from ./include/trace/syscall.h:7,
                 from ./include/linux/syscalls.h:85,
                 from init/initramfs.c:10:
./include/linux/ftrace.h: In function =E2=80=98ftrace_init_nop=E2=80=99:
./arch/x86/include/asm/ftrace.h:9:40: error: implicit declaration of functi=
on =E2=80=98function_nocfi=E2=80=99 [-Werror=3Dimplicit-function-declaratio=
n]
 # define MCOUNT_ADDR  ((unsigned long)(function_nocfi(__fentry__)))
                                        ^
./include/linux/ftrace.h:671:35: note: in expansion of macro =E2=80=98MCOUN=
T_ADDR=E2=80=99
  return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
                                   ^~~~~~~~~~~
In file included from ./include/linux/ftrace.h:22:0,
                 from ./include/linux/perf_event.h:49,
                 from arch/x86/events/core.c:15:
./include/linux/ftrace.h: In function =E2=80=98ftrace_init_nop=E2=80=99:
./arch/x86/include/asm/ftrace.h:9:40: error: implicit declaration of functi=
on =E2=80=98function_nocfi=E2=80=99 [-Werror=3Dimplicit-function-declaratio=
n]
 # define MCOUNT_ADDR  ((unsigned long)(function_nocfi(__fentry__)))
...


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
clang-built-linux/20210416211855.GD22348%40zn.tnic.
