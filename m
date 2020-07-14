Return-Path: <clang-built-linux+bncBCIO53XE7YHBBGNNXD4AKGQETXPOD3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFD121FE9D
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 22:33:31 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id b6sf36664pjw.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:33:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594758810; cv=pass;
        d=google.com; s=arc-20160816;
        b=nUjeEYE4VV6XyWXPl1QDbKc7b5zv1hwpOv/LEDz/6ufvzBQNp2fsqy/EcL/XP7CpHt
         ZgeW2dhW91t8SZ/qCAjVgQQJiqNrh3Um5PiojdOLnv3L3A/lNc9G2ERIeTVh1rubyL9j
         9Z3E6kZChLmrhUxNkiF4G0zkXUSpAiTH3bGpnGQkBZfTzEDNT1Fz2Mt6x2SBYCr2+Izf
         I1Yd+PNpsSTWFnEAuUgfdV3qRCFPWislGvROGupenNh+1KusdCtow2b8ngIr9n+1HoeV
         CR2eB8WoTZatx5cE3n7c3HTKkxVSzqkj5ngso6Gi44G/ciQdZLsYcJudac4mUjgw1Gql
         vC6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=UhX3yQ2c4p6kY+4tRHpK9yOTDb3QPOquRXZkUpOXohs=;
        b=qQljkkcOvslKhTueV+hTQ1/Kp8EsmXsyMi/R+iUldPsecjnIOl+vbbuanZtVLc0Edy
         k0wzUFbhuzWws9K86ogd3JUNT3PPSOejoo8agoravaEecP+pG0d7ViyrVKtt3m347JcQ
         FlCq2A+sv5HRrWnHRJhjSW4u54Kk/mlsKvxSNnivGUHd5Q6pzIX5j5EuV27r2C4/N+gX
         b6fcXeshXSF/Ls1OOkdMCweWsLaLb9PoaTRavYQQjNjjZG72/UXYVm/sEcr0dDBffhrs
         A8hc+SZKHn8rED4Lu4VmOCVjtqmhXCu59jciqTikpHOSqSGFBnu2Y7O/qxvNI6/kvdhJ
         Jkwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pjcaBLBK;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UhX3yQ2c4p6kY+4tRHpK9yOTDb3QPOquRXZkUpOXohs=;
        b=GJELL8fFiOxSnKVzenE6TC6Ng5BrXJZPH9md2mQtsekuInfAKEzrH9JWxYWnhP7p7D
         Yk0v/8XJ5yjo/OHXsj/zAfdZ+VxclWGvm1zhtK208GPwASDyovz8PwsGiRkrqz1nfM4b
         7kyb6sVh83M8h9RaRNnMatmZWQRjPFVMh904X6bX0KoRmzVOesYcxYzhqPZE5d85QOcn
         Y2sdPaiHkKc7rBgBPZH8olXv6TlqFfZWLp4f5jcv6ClM/IYZ+JghjjWinPdBtVbWgB9O
         1Wk/t+NseGnarzmHpJP/HAcOV4bZnCsF/Tgty+OZj56kR/Z9pRl281rWdTtmdnY5iObY
         UWOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UhX3yQ2c4p6kY+4tRHpK9yOTDb3QPOquRXZkUpOXohs=;
        b=e0dYtbnXUbyOiGsC1qlPIVemNJOjDkQ76BI4k/H+559PRcLLKlznxUX/2Dp5HrO7AL
         acoV5G+FuR07M5EWgdKU6S2ZV1W3AUCtVXzXeFz24HIgsoaLJa7PM+5nzyFPCg6ix8QU
         OjU2WTd8dJq3OV38mv0XkL/ikfs6wG0OSQjBSKAwesq9VUD6OtGW7Ado6Fg1sTSv/kOu
         Sx8H19JICkY43R/SU0T0yhcMpKufPMt2kAiB0jiH4v7eilWFlxYymMldjNx3C88F1b67
         V5+5fL0HaInmQOMoD3Sjgg+fSUN0eNc4dH81S5px1Jya09GUmAAzJ9edv7PLnRKoI3TL
         YDJA==
X-Gm-Message-State: AOAM530F5h/liPsC/S4oWcNgonVztmM8PW+RRD7RcreIc2FUOCrtJRAL
	rxh0yyD+nmok4n/F7FaO2Z4=
X-Google-Smtp-Source: ABdhPJw44GEE6Vz7np+d+/MsdCGl6M8cbz0tKVYMgVO224qgSzpQIy03KI6e5w94mkd8UQFpU4hpGw==
X-Received: by 2002:a62:140e:: with SMTP id 14mr5568619pfu.196.1594758809954;
        Tue, 14 Jul 2020 13:33:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ce4d:: with SMTP id y74ls6883502pfg.3.gmail; Tue, 14 Jul
 2020 13:33:29 -0700 (PDT)
X-Received: by 2002:a63:9d45:: with SMTP id i66mr4840702pgd.25.1594758809591;
        Tue, 14 Jul 2020 13:33:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594758809; cv=none;
        d=google.com; s=arc-20160816;
        b=cRy8rAEHn1GDrwF8goJUsXyy8sGyOxbfpCG8zJ26GVi6iuSzjq6ARuhm25IpYLw+8X
         PhxLJez7+JNuSmezBn7BgtqYFQ7tjJ+rUNrrNCrSQKZlPlVFSA29wXt/cXtGVATRWxYK
         lSqRVmz4GvbHQnSicGRjRaxO6LB7L9lNYOQD0sPRAZb/XG+0sAJYeSxjcvXJ33VeQrpr
         ayuZmoiBSfzwV8G52OzkiUUz6gycUzZHUx86zjUbJlRtimNyZqUxjqEg6/QwmblxYDhd
         7XXrzltFfGupUYnBkUZMj9UjLZGydyJ4vaMu8VbrABEYkn0WCNpokUxzVsh89gSCkd6b
         319Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=gzLHGIDvFYHJRK00lx5d1fHBO119ugNEpP1rJkTYBEw=;
        b=LetMP9varviuvJe7Vc8FVtjyTW8cU2WkpBHQexBxRrFsg6tURPW6cBa/m3CMM1BlCw
         luUNZIVQf11OzonfXAe+Zw/b5aIgaWN38S6CRmvP3Tcg9QHun+rcPrbHAiHO33uCqh9u
         hUsL8Dm+pBQEC27Bip8kenYJvbvlEJYhe79uaF2joNVRCO6bOt6MIm4y5EUozN3P0b8M
         R9rWnCWfkoTQskt+vDXHQDiZ4gMU+ZfPhiMPnmykeb7QNPIBlWdH0Mb3vGTNCCBkm3S3
         C+MmSsFkM2/DXaT3jhKhuSzATLEz8I0q2DCKeYr/ndSg18pxYFAJ2WKqnLSondDuFEC3
         SUKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pjcaBLBK;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id y20si881087plb.2.2020.07.14.13.33.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 13:33:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id b185so16959740qkg.1
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 13:33:29 -0700 (PDT)
X-Received: by 2002:a05:620a:121a:: with SMTP id u26mr6367055qkj.398.1594758808776;
        Tue, 14 Jul 2020 13:33:28 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id w28sm21975428qkw.92.2020.07.14.13.33.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 13:33:28 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 14 Jul 2020 16:33:26 -0400
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
Message-ID: <20200714203326.GC902932@rani.riverdale.lan>
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan>
 <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
 <20200714192956.GA689174@rani.riverdale.lan>
 <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
 <CA+icZUXBggJtwtWmyXEwgu1WztrcTiLrZCW1_QqSw2SiThOkfQ@mail.gmail.com>
 <20200714202100.GB902932@rani.riverdale.lan>
 <CA+icZUVcyAfXqyAQp+bjb0bx5z2Q0Bfyt899AxJASXY-GCRCrA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUVcyAfXqyAQp+bjb0bx5z2Q0Bfyt899AxJASXY-GCRCrA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pjcaBLBK;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Jul 14, 2020 at 10:24:07PM +0200, Sedat Dilek wrote:
> On Tue, Jul 14, 2020 at 10:21 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Jul 14, 2020 at 10:08:04PM +0200, Sedat Dilek wrote:
> > > > >
> > > > > In any case, I think the right fix here would be to add -pie and
> > > > > --no-dynamic-linker to LDFLAGS_vmlinux instead of KBUILD_LDFLAGS.
> > > >
> > > > Hmm, you might be right with moving to LDFLAGS_vmlinux.
> > > >
> > >
> > > We will need the "ifndef CONFIG_LD_IS_LLD" as -r and -pie cannot be
> > > used together.
> > > Is that the or not the fact when moving to LDFLAGS_vmlinux?
> >
> > LDFLAGS_vmlinux will only be used to link boot/compressed/vmlinux,
> > whereas KBUILD_LDFLAGS is used for all linker invocations, and in
> > particular the little link to do the modversions stuff ends up using it.
> >
> > So once we move -pie --no-dynamic-linker to the more correct
> > LDFLAGS_vmlinux and/or stop modversions running, we'll be fine. Being
> > able to use -pie with lld is one of the goals of this series.
> >
> 
> OK, I am doing a new full kernel build with:
> 
> $ git diff arch/x86/boot/compressed/Makefile
> diff --git a/arch/x86/boot/compressed/Makefile
> b/arch/x86/boot/compressed/Makefile
> index 789d5d14d8b0..056a738e47c6 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -51,7 +51,7 @@ UBSAN_SANITIZE :=n
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>  # Compressed kernel should be built as PIE since it may be loaded at any
>  # address by the bootloader.
> -KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
> +LDFLAGS_vmlinux += -pie $(call ld-option, --no-dynamic-linker)
>  LDFLAGS_vmlinux := -T
> 
>  hostprogs      := mkpiggy
> 
> - Sedat -

That needs to be in just one line (or with the += on the -T line)
LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker) -T

Your second assignment will blow away the -pie.. flags.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714203326.GC902932%40rani.riverdale.lan.
