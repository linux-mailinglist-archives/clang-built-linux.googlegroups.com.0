Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDWYTP7QKGQEXD22ONA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5FA2E2DA4
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Dec 2020 08:53:51 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id l138sf3759504qke.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Dec 2020 23:53:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608969230; cv=pass;
        d=google.com; s=arc-20160816;
        b=mmDap1O9AH2Vmb1OmUHpO1kunqWhiJdwGq9Q1bVDIGfWxXaemQD+hP8IeOdnI1rpry
         OTnZk7KFWjSRxLigOJW1H+QyPBqTNoUIHDBkOOPU9AGxbhWrtVd+PznqESY4zOWYCJ8e
         ylyPvyc96aVIXAKWKibb9VWGnH0gJvMForymI7lVzr8ua72U16UX91bpL8BhCpZ2LuXl
         1mbnpmweb2WV98LrcToCcdJLA9d5xlOhPwGVBa+n2QaRqorYOcBVSc2+T9dLFzU592X/
         xfQYF2eqUV12+n1QX3O4HiXCh1IyakbXtS03Oa8D7dTz6haa0kvHMLWiCFq7jGGQr5rv
         6LCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=4v51JhIBZEbnnfz8mCyDIr22pLAhofuvUl3y4vmY4wk=;
        b=zwuHQZQx54ZDSF2NdB1Pht6EcZ+UwKI+l+R9UVD/hrqBqmHSl6EeW0qzk7hC2QZkaQ
         H74uj9BCj77kmCxIOfU5ggDP0ONYSly6iKLpGj3fpkwPd5Iq6yYPSCdVjZmKr9ogS48g
         eiwQt3C1tRpHJ9jwDOjfkjV+QxnuF/RfM9wLdlsDNSvl4QAkt5H+8xzDD5dL4OMM9Oxl
         pQdwV+C+MV7Qtb2Z70kjXiB7YGdOPEAhPy4mXE1d5j9Rt/ZEKkAvBmm6Nz9f7v5bRQYx
         B2VFMD4KGaRZIluYS3xNEja6WdsxkuboBzpXFMRxI5eJtaHZOMl8ZKIt7rPK+RQ6UzVV
         PH/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QMo9OLxc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4v51JhIBZEbnnfz8mCyDIr22pLAhofuvUl3y4vmY4wk=;
        b=MBXnaNTgqrpIa28KiHvqZLOSu4niPlxENUWDM8eTnKlK4iNcpQbxAibspm5ZUyqUvP
         NQnlyH4uOR1mi4s6Usm/xjl8HS4IFn3s9ldtzx0p2ByoVrHobfiqW77LASZVCzEltkgn
         voy4fstOonK/8sPsC0Dj4xZgW+T7YHDpXI5A4y0C0A/8ix8g3NqgXU6+Lr3veytHUv/B
         lpA67K3cDV5GOUNeCFBYcVwItYIKh9zEnzdHqlI7sjIhid8PnvHqN+ondetMM3E6kQNF
         WpX9nmIdzweGeImGjMk2UzWTSZxZzcpOtlAW/y77zGXFSmfTOe7n5PkdnoZMIMnOrtSH
         LHjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4v51JhIBZEbnnfz8mCyDIr22pLAhofuvUl3y4vmY4wk=;
        b=VyAypK0HN983OKT98UEa0e4v/NY5/CY/Um6sr8mgz3SodzJQv234SwrJIOhZob3Kw0
         N+giHNxBwbNox0AZO/snjeG6Sltb+GVCZbmsXU00vXAlGW5GR+BefLSkJwIj3cQkkfZk
         6LC2DSkZD8AaRLQP025MuantQuUyG4k8oetUyGKanj14SK9HH4enFy0ZhOu3O3j3FmNu
         hQssfxlCr0gKRUhDBU1QoIWfW6hiFillgmxJs0hN3AZ0qfs4Jz+M5ZrJ6Rs6NVpO7GTv
         Ol81H9AEQtv9rjC//wBG4boU4BagiVn3Hg3+pd4MiVkfCbLQ4Osx4rUMOqN4ll7SCI2X
         +Q1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4v51JhIBZEbnnfz8mCyDIr22pLAhofuvUl3y4vmY4wk=;
        b=U2KElTEaULj60X90YIuyVbibp+3tBegpfIaJvKnk3PFP7zlDUq98Jty8dTJpIT8a9q
         fWZY4I7iQqYWuOc59bM5JXVsdkthM90AUOYGTvzUbFmodL2UlsWiR0E0WI85yhS3ukKl
         4WfruzCqHJv4KL11qsu6gV/y3YZ8XpMtZw5iwywBEAFSmX1PrYjwDR2IF4ihbuOR+BtS
         vuvJAWb0XQtVWg8l6R0mGIR8bz6Rw3/hqz54uJEFddiiduXyAPW1JRZC3F9JcY3AoTJD
         0tI2Ul51md6XGjqFefFwDaD7DpFTIUuoZjr1E5/8/rfv4KpJ/F1IWiVV3wYhc4rCQGbD
         LqJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GbuafFDS7WI62eoeM1ojGs+qK4kZezRufeGNiScJ+j3oORw1H
	HPvzVLASMpRbA7fS6Nq8GqI=
X-Google-Smtp-Source: ABdhPJz0M+eP5oXcS2chbWJYhdNdoZhalsJ6IaPSSPjkaM2rHcJ2S5BO7mvpWzR8qUmMokKfsbTElQ==
X-Received: by 2002:a05:620a:2104:: with SMTP id l4mr35684059qkl.35.1608969230555;
        Fri, 25 Dec 2020 23:53:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:132f:: with SMTP id p15ls19309402qkj.0.gmail; Fri,
 25 Dec 2020 23:53:50 -0800 (PST)
X-Received: by 2002:a37:4796:: with SMTP id u144mr35913767qka.235.1608969230202;
        Fri, 25 Dec 2020 23:53:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608969230; cv=none;
        d=google.com; s=arc-20160816;
        b=BfyZ2IYD4eY8KtkZgFfkwI+ThZXxAfT2+xECDZdo0zcSvLFz6jdaedW4ic5yof2rXH
         2h1a6F7BCG4QYq3GUAomIJu9515oYrEqqYEYW4ErY1ipU6fGhyH04G3P06URNXg1pfO8
         7mvogxXpUBxuis6mGdTjikts37uBFLPsw2XaGfMBH/EsXI+QZuXL3wt3oi6qzkEJd/h+
         yIGFQqm/wbvzijvQf/pwqLreF1r8XieFUyqMGBHeWMQvlP5UtFHAzF7zcES/aAZpbEmq
         L1OPSyF55MsMq+fOv8W9jXKEmvTjeXGDcKily+QE5s5F3SHt3zopX0ChEElQCQy5/G/Z
         rxqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=NGNEUvGMlB9kamBKy3F0042bww9MOHsmz3qAxswwrG4=;
        b=OjAZwAnp0PHbprefNA4XDYI5c+GAuNveKz3ia8vLFvvHft6TCjngr7zrsLXfcwYF/+
         VzFM1gIliYcTmTuBxmKJxNGEARPSVLsU/8fyTtXDg61CZ/+r5wh64if2RPuxB4KIH0ab
         TQbav0wy+7d+inxXncE3Wro2qTDtbmpg/iA/k+3v80b3BhkUsgUQMLWNcErkCBFJm3ah
         URDCt7vy38u006Hju9vgPpa0XmSc8CECUMXUyAjsG586OASYdkkQjHlQ1qM2pRBP83MO
         8X/YXltu9omNmF4Ax5PfvWPjtnrZXlaSkzRhA0qx+GqbsooExQRQJYfsDKpmHIEaf8uP
         qpOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QMo9OLxc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com. [2607:f8b0:4864:20::d35])
        by gmr-mx.google.com with ESMTPS id f21si2540226qtx.5.2020.12.25.23.53.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Dec 2020 23:53:50 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) client-ip=2607:f8b0:4864:20::d35;
Received: by mail-io1-xd35.google.com with SMTP id t8so5240877iov.8
        for <clang-built-linux@googlegroups.com>; Fri, 25 Dec 2020 23:53:50 -0800 (PST)
X-Received: by 2002:a02:3f62:: with SMTP id c34mr32162065jaf.16.1608969229712;
        Fri, 25 Dec 2020 23:53:49 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id b12sm23205166ilc.21.2020.12.25.23.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Dec 2020 23:53:49 -0800 (PST)
Date: Sat, 26 Dec 2020 00:53:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: hpa@zytor.com
Cc: John Millikin <jmillikin@gmail.com>, x86@kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	John Millikin <john@john-millikin.com>
Subject: Re: [PATCH] arch/x86: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
Message-ID: <20201226075347.GA1977841@ubuntu-m3-large-x86>
References: <cceb074c-861c-d716-5e19-834a8492f245@gmail.com>
 <37DE7046-5096-4C0C-A96D-FD168A849DFD@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <37DE7046-5096-4C0C-A96D-FD168A849DFD@zytor.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QMo9OLxc;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Dec 25, 2020 at 11:35:28PM -0800, hpa@zytor.com wrote:
> On December 25, 2020 11:29:30 PM PST, John Millikin <jmillikin@gmail.com>=
 wrote:
> >When compiling with Clang, the `$(CLANG_FLAGS)' variable contains
> >additional flags needed to cross-compile C and Assembly sources:

I am not sure how or if others agree but it took me a second to realize
the purpose of this change was cross compiling even though I read the
commit message so I think it should be called out a bit more. I would
argue that it is not very common to see x86 cross compiled (I know
Stephen Rothwell does) :) x86 is one of the most tested architectures
for building with clang and we have see no recent failures in the boot
or realmode code.

> >* `-no-integrated-as' tells clang to assemble with GNU Assembler
> >=C2=A0 instead of its built-in LLVM assembler. This flag is set by defau=
lt
> >=C2=A0 unless `LLVM_IAS=3D1' is set, because the LLVM assembler can't ye=
t
> >=C2=A0 parse certain GNU extensions.
> >
> >* `--target' sets the target architecture when cross-compiling. This
> >=C2=A0 flag must be set for both compilation and assembly (`KBUILD_AFLAG=
S')
> >=C2=A0 to support architecture-specific assembler directives.
> >
> >Signed-off-by: John Millikin <john@john-millikin.com>
> >---
> >=C2=A0arch/x86/Makefile | 5 +++++
> >=C2=A01 file changed, 5 insertions(+)
> >
> >diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> >index 7116da3980be..725c65532482 100644
> >--- a/arch/x86/Makefile
> >+++ b/arch/x86/Makefile
> >@@ -33,6 +33,11 @@ REALMODE_CFLAGS +=3D -ffreestanding
> >=C2=A0REALMODE_CFLAGS +=3D -fno-stack-protector
> >=C2=A0REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS)=
,
> >-Wno-address-of-packed-member)
> >=C2=A0REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS)=
,
> >$(cc_stack_align4))
> >+
> >+ifdef CONFIG_CC_IS_CLANG
> >+REALMODE_CFLAGS +=3D $(CLANG_FLAGS)
> >+endif
> >+
> >=C2=A0export REALMODE_CFLAGS
> >=C2=A0
> >=C2=A0# BITS is used as extension for files which are available in a 32 =
bit
>=20
> Why is CLANG_FLAGS non-null when unused? It would be better to centralize=
 that.

It isn't.

$ rg "CLANG_FLAGS :=3D" Makefile
507:CLANG_FLAGS :=3D

$ rg "CLANG_FLAGS\t" Makefile
564:CLANG_FLAGS +=3D --target=3D$(notdir $(CROSS_COMPILE:%-=3D%))
566:CLANG_FLAGS +=3D --prefix=3D$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPIL=
E))
570:CLANG_FLAGS +=3D --gcc-toolchain=3D$(GCC_TOOLCHAIN)
573:CLANG_FLAGS +=3D -no-integrated-as
575:CLANG_FLAGS +=3D -Werror=3Dunknown-warning-option

The ifdef can be dropped and unconditonally add CLANG_FLAGS to
REALMODE_CFLAGS, as is done in a few arch directories:

$ rg "\(CLANG_FLAGS\)" arch | cat
arch/s390/purgatory/Makefile:KBUILD_CFLAGS +=3D $(CLANG_FLAGS)
arch/s390/Makefile:KBUILD_AFLAGS_DECOMPRESSOR :=3D $(CLANG_FLAGS) -m64 -D__=
ASSEMBLY__
arch/s390/Makefile:KBUILD_CFLAGS_DECOMPRESSOR :=3D $(CLANG_FLAGS) -m64 -O2
arch/powerpc/boot/Makefile:BOOTCFLAGS +=3D $(CLANG_FLAGS)
arch/powerpc/boot/Makefile:BOOTAFLAGS +=3D $(CLANG_FLAGS)

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201226075347.GA1977841%40ubuntu-m3-large-x86.
