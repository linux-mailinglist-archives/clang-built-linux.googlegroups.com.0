Return-Path: <clang-built-linux+bncBDYJPJO25UGBB26G3L3AKGQED3HAE4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 230D41EC259
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 21:07:25 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id m4sf3112273pll.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 12:07:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591124843; cv=pass;
        d=google.com; s=arc-20160816;
        b=anOeLLwMJyJgWAqRAvt28kMAcFbcmBE1qn5MAmRUsNiMkf3h9Yn2G0c5Y43eUYeFnw
         yCLnliV0/D0dWfr2GwERZAbwVzI/uzJ+eh8Edh7YBNzl1Sc5CRnEML11qUSIwHTHi2yH
         hfV5u6K5Snf4Lrlm++G/TCJndlPfKX/wl41gwOQiw9mmGLpob+kWfT1ty2u2JFwQC46r
         f/R3bclsv1MMPjwnHBGmhvIJnU9HzAi3UrNLfs+aYt0schxJosskNScfi6GjAkFNHM0+
         0kEKM0NE7PFOYhDF5SseaFsrvTUzvwoi1OEmJqluIKaK1zfSPdlKkKmL9wcpin6mG9Jm
         YTFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=S7uPh3yTmeJ9Y7+HXJuUXk1WojzlyXm1cKouUGKlD9Y=;
        b=dw9SZJHL8MxkJu/C4lf/nOoF0txxXUmB1bicg3q37/ZwrqYyC8Iaq9YHO8aJrF6lHc
         9j01cFS0F9UA6I+7TvmXJaYN/ckYR0CNlINmtcHa5B5t+crtKkKDhAScAGwlwsJzi5wA
         oDLJ8hsm+bzBxH0Hm7ip7OfgVA1hZHRUWNiONaso8Kz8uJ40mzFkZRUOAKy5N4Rcbv54
         9LcK+t33mwravvA1dMeHv2WnrWJpsS9Qwrl68GK7eFgvjVgINHI5Lp2zELZAa30VjG6l
         jtq2vTWPSPWK1kldj3iQXiIUCzWHPueZB6dmB67KbysRYwQ1ILHZJKR+M3PauOH/gZT7
         H61Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CwzremuR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S7uPh3yTmeJ9Y7+HXJuUXk1WojzlyXm1cKouUGKlD9Y=;
        b=ORAdRKJmp2xzQemorOoRGs4ZZ/+Fk8R0DIIzpDcOtt9zAZ6Re4egJlrZRRFTUBH328
         976xQ4wGQ1A4TLAlAN0+IOxie38a6FBe/hRZCzGEcBBdYcwQcWjbwCbnvC8hcZBtIHV5
         ni1GtOD6OtKAaT6yT05DEc6H27PY6E42XNlXxQsQnrK10T95hJ9LdwCWVf1CAvrGcJhy
         vzeFuPt+EkfXM0eOooHRQSSrjH6xvsvA92RsWoJva4GLOFnvsiQK68g5l1w1d5QcYSBN
         lQPu9/IW28VD1C8Tp9ljJaJgtM7povJqvcHvBNU8+F93VdGe/0zcEShxIRECiCZs/HLL
         vbGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S7uPh3yTmeJ9Y7+HXJuUXk1WojzlyXm1cKouUGKlD9Y=;
        b=MVhndXs0dW1fpfZdXqDT0orrEHIixTnsUBeWwnqUC2ODrLcOi/E1CCZFyIqjvAVwBf
         uEQiUZ4hfvaOfwJgB4BIKi4UFrg3rzvHu9RQoTAeyXf5Z49pqB2n4018DWr77EXRtYlA
         FSbKsLf48SZjIX6ut2YF8mya7CdaUgR8/IeWPugwfpWD9bdylhAWjzWTRb6bLAJYBdrJ
         ztzuU2Mw4jpZVgPcZjPSgHnyB/dvrfGpFXGAQPM4VgJUW/rzIk0jXloWCSZywAg9aDFS
         lN/FTqMQQbHPnVcwvTJLPQzzoC8YMG1AicDKybJVPojDuLm7SMnikdyzt1N4Rqb2Swh8
         wX+g==
X-Gm-Message-State: AOAM530AP2P14KVM3/8emFkHOL3fKwgg/i5GkZ+h6czvoDtUmWHNJtMB
	H9gMfxPRNk2+tgHFxKeXjeY=
X-Google-Smtp-Source: ABdhPJwqE0QJKGl8VGieReBKTd+qnooXcyM/eB+Z6uue0LBKgkWTw5u2vSneXjBG5JEIa46iTC9MFw==
X-Received: by 2002:a05:6a00:150c:: with SMTP id q12mr26682256pfu.270.1591124843788;
        Tue, 02 Jun 2020 12:07:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:521f:: with SMTP id g31ls5465014pgb.2.gmail; Tue, 02 Jun
 2020 12:07:23 -0700 (PDT)
X-Received: by 2002:a65:5349:: with SMTP id w9mr25755537pgr.281.1591124843392;
        Tue, 02 Jun 2020 12:07:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591124843; cv=none;
        d=google.com; s=arc-20160816;
        b=gFJWKiU4oSqDZSZaaVpCHOz5azNXsyKIFO/CWUcCa52n8iZbZ9k+WiEKbanKK60Oiu
         551QbB7FuqfrTW8EVfhx92Hxw+iRCqxWjVvYlQTaIoK8Rtsr6xuq5Pg5aycxnCX4PQB2
         yN6WwIUE2wsQtG9LFpEkApVUqsXdm27KAnIh5VPlRQI5T3TIuG+UwOkIhzI4QnkI3iCm
         gHZfzbBdMSHbz05ICJo6FpPpKrRZJXNWxUhireNiIsQB+j7m3PfDdEDxMHpaYdPUnal1
         jUz2WxfpDlvM9xpJlz0ClPL1UFn3GldXr08nYm2g55K8C/yCH+nYyCIAXpTZRgLn2GJr
         zJUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bfQKuxiya5c6CS1sQLjDYz3AELCRI+zeqaXfLh33ZRc=;
        b=nmLN94aSul6N/99MkZFvB+LFyao/cuMs2VRXQJ1j4fcBAyh9fY/zzT7laVDI0O+FL3
         OD5kiFG4OMeH74ER1zcPfm4rnm05kWIDg9GwKmCmEsX3cc+sjDaAex4oRYgWCRxteWXo
         aU07byYJ957kSIqQlk/Z11hGKnDvd+oyNB8uDPAdqDQwO3A490YbjAWlFfeew7gVE1VL
         avmbCtdBJiJ9oFYfs7JYrTtoglyvuA/wzJIbkG5IK/JFcL95mZsn7p0Va1/wyZCg9TIq
         E3ieEnRVQfHpD/fj824FuVO7ruk6+t6UhMF1ml8J2YuSEAMM3z+1t2cwIAuvbQvmqzlj
         3CaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CwzremuR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id v197si147790pfc.0.2020.06.02.12.07.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 12:07:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id bh7so1753680plb.11
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 12:07:23 -0700 (PDT)
X-Received: by 2002:a17:902:724a:: with SMTP id c10mr26014006pll.223.1591124842742;
 Tue, 02 Jun 2020 12:07:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200528060600.2732012-1-natechancellor@gmail.com>
In-Reply-To: <20200528060600.2732012-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Jun 2020 12:07:11 -0700
Message-ID: <CAKwvOdmCrM0eUZHR12OBgyRhNPFDzZKjrpZ0DW8Cg=wqTfzDFw@mail.gmail.com>
Subject: Re: [PATCH] s390: vdso: Use $(LD) instead of $(CC) to link vDSO
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390 <linux-s390@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CwzremuR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Wed, May 27, 2020 at 11:06 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Currently, the VDSO is being linked through $(CC). This does not match
> how the rest of the kernel links objects, which is through the $(LD)
> variable.
>
> When clang is built in a default configuration, it first attempts to use
> the target triple's default linker, which is just ld. However, the user
> can override this through the CLANG_DEFAULT_LINKER cmake define so that
> clang uses another linker by default, such as LLVM's own linker, ld.lld.
> This can be useful to get more optimized links across various different
> projects.
>
> However, this is problematic for the s390 vDSO because ld.lld does not
> have any s390 emulatiom support:
>
> https://github.com/llvm/llvm-project/blob/llvmorg-10.0.1-rc1/lld/ELF/Driver.cpp#L132-L150
>
> Thus, if a user is using a toolchain with ld.lld as the default, they
> will see an error, even if they have specified ld.bfd through the LD
> make variable:
>
> $ make -j"$(nproc)" -s ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- LLVM=1 \
>                        LD=s390x-linux-gnu-ld \
>                        defconfig arch/s390/kernel/vdso64/
> ld.lld: error: unknown emulation: elf64_s390
> clang-11: error: linker command failed with exit code 1 (use -v to see invocation)
>
> Normally, '-fuse-ld=bfd' could be used to get around this; however, this
> can be fragile, depending on paths and variable naming. The cleaner
> solution for the kernel is to take advantage of the fact that $(LD) can
> be invoked directly, which bypasses the heuristics of $(CC) and respects
> the user's choice. Similar changes have been done for ARM, ARM64, and
> MIPS.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1041
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/s390/kernel/vdso64/Makefile | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/arch/s390/kernel/vdso64/Makefile b/arch/s390/kernel/vdso64/Makefile
> index bec19e7e6e1c..b8db1ffbc2b9 100644
> --- a/arch/s390/kernel/vdso64/Makefile
> +++ b/arch/s390/kernel/vdso64/Makefile
> @@ -18,8 +18,8 @@ KBUILD_AFLAGS_64 += -m64 -s
>
>  KBUILD_CFLAGS_64 := $(filter-out -m64,$(KBUILD_CFLAGS))
>  KBUILD_CFLAGS_64 += -m64 -fPIC -shared -fno-common -fno-builtin
> -KBUILD_CFLAGS_64 += -nostdlib -Wl,-soname=linux-vdso64.so.1 \
> -                   -Wl,--hash-style=both
> +ldflags-y := -shared -nostdlib -soname=linux-vdso64.so.1 \
> +            --hash-style=both -T

I'm happy with the rest of the patch, and the intent of the patch.
The one part I'm worried about is the above hunk.  Since -shared is
now repeated between the compiler and the linker flags, I looked up
the documentation on -shared.
https://gcc.gnu.org/onlinedocs/gcc/Link-Options.html
>> For predictable results, you must also specify the same set of options used for compilation (-fpic, -fPIC, or model suboptions) when you specify this linker option.
So it seems that -shared should be used for BOTH compiler and linker,
but it seems like -fPIC should be, too.  It may be fine without, but I
would be more comfortable signing off if -fPIC was specified in both.
Otherwise the rest of the patch LGTM, and thanks for sending.

>
>  $(targets:%=$(obj)/%.dbg): KBUILD_CFLAGS = $(KBUILD_CFLAGS_64)
>  $(targets:%=$(obj)/%.dbg): KBUILD_AFLAGS = $(KBUILD_AFLAGS_64)
> @@ -37,8 +37,8 @@ KASAN_SANITIZE := n
>  $(obj)/vdso64_wrapper.o : $(obj)/vdso64.so
>
>  # link rule for the .so file, .lds has to be first
> -$(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64) FORCE
> -       $(call if_changed,vdso64ld)
> +$(obj)/vdso64.so.dbg: $(obj)/vdso64.lds $(obj-vdso64) FORCE
> +       $(call if_changed,ld)
>
>  # strip rule for the .so file
>  $(obj)/%.so: OBJCOPYFLAGS := -S
> @@ -50,8 +50,6 @@ $(obj-vdso64): %.o: %.S FORCE
>         $(call if_changed_dep,vdso64as)
>
>  # actual build commands
> -quiet_cmd_vdso64ld = VDSO64L $@
> -      cmd_vdso64ld = $(CC) $(c_flags) -Wl,-T $(filter %.lds %.o,$^) -o $@
>  quiet_cmd_vdso64as = VDSO64A $@
>        cmd_vdso64as = $(CC) $(a_flags) -c -o $@ $<
>
>
> base-commit: 9cb1fd0efd195590b828b9b865421ad345a4a145
> --


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmCrM0eUZHR12OBgyRhNPFDzZKjrpZ0DW8Cg%3DwqTfzDFw%40mail.gmail.com.
