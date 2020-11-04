Return-Path: <clang-built-linux+bncBC225DNQ34LBBPUKRD6QKGQEQCGT45Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EE32A5C00
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 02:34:54 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id j13sf8618107wrn.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 17:34:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604453694; cv=pass;
        d=google.com; s=arc-20160816;
        b=vFaohXr8Vo3MHpPU2zzr6/KzX3aU2tA9LCdkNWIyFiiUNEP9uUAKK9pO419OMlXex3
         c+X01Hss5SoU3egUL5bf5tFEN+3EIMHRGXjciSJPQFvYozejkFGbCG1wioaYZ+47eytL
         aJ+11qsYjNy2+0EtcpCEcPdk0wTpmhb47axdXQN8+V8X67/156tpeAZpGzW+tSW8ex4Z
         9l5SHU6UI5ftEPDVwHJO7HPyEZarIBLn13KyftQWQEM4midQOeVsrDfjHyNVL96b6UG/
         B9hsZdMm8PgTbr8Marq54t0qY7QhsRmt3vWqQqXN+JM1PNa4eAbZBcc79u/W+Rs6izM8
         PtoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=NgxtABpom2zfGQ+sdGae2rofPrXkhshvi1FhH09oLL0=;
        b=CpaPCfAwqHFtEVcLtQD3877me6MK0z5ztyCFPhQ/ZNf2nzEq/mmSNs+LaeuGA4fXak
         NCwEs79Gjx9biC3XJTkC4Oz5hDbfUDeSNiaZOP3ooGxumPwuj32GmbiPUa4zTRUFZkze
         fHVn8k4JKyDyTSEg0MbQWtyvHWbrr9Xmw0gZHaZtSjzruOWeEDV8mBef+rSMc1R36R3I
         rUjG4RefL4za0Hp23lGgl5iym0HZavQtGJuSteZaPMo8eXfSYulJdAsjl3dnZK/RI/Sx
         5ahM7bHiQJ70blh+VCoZPg0lg9zYvCz9XqcueIJpNhATiSm5H8RhQMFwzGSUcoy/xwKC
         zRmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=nmuMK1K+;
       spf=pass (google.com: domain of jjs@kapsi.fi designates 2001:67c:1be8::25 as permitted sender) smtp.mailfrom=jjs@kapsi.fi
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NgxtABpom2zfGQ+sdGae2rofPrXkhshvi1FhH09oLL0=;
        b=PZEm7e6tpGC4eGQAtTwbOxXIGQM5mVBL4FYksWOXWVJC2eePWnrYtPjDBF/kpVkitI
         aKVDCCmskvAlODdoWWJnF6tTtOnjWI7FEpSZZuVrIjvezRxyLii3GLI9mV1LLwoAFpju
         8c8AcDp0nRClNC0AWqOUKGxw7hdzCunoEEr6+NBvDsYhukMdhc77YMYfs5+NE3nZVogL
         MZCupYFLdA5yv5rKo28kxeuvuRSvQY9mn8og6O5So7BuljjRg3pK4U32KXA60nsA66B1
         y/hdd1vzZtbp2AwpR1o7HcKoX0bQIVsKo+klkBaKsA8DJq15/GYD5x22dnEyNpZwm4ew
         NWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NgxtABpom2zfGQ+sdGae2rofPrXkhshvi1FhH09oLL0=;
        b=LhUmjxP6ldhGrd74xHjSMD3d6V9dAmNn6BEOCg5UjFpfC5ZKyQySZC53tJPuD3A/rl
         UjdnkVX498eChUyxbrJwNf5s8kDg6Xndf0g1AB8z6Mkq87LSa+wJ8InwAao8LaRX6Xeg
         kVXsx200sh5e52EtY92FJuF43En/n8QFOiCRf9WhjbAKkgnh3Od3lJYkdNDloemduXOF
         Y7CW6SODcmaj4E8Nd+mwqxzzNNYd/pbiVy0er8OJHV6wV+DD+4pn04lMtkV+fzRcrct5
         u7jeL05a4j1yf4jnCxM11QhIaggNNfcGQnoKdfgTWC0Uf6xkOidgCy1yMZ7fbLFQdgOo
         5Gxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305gePdnAqHI5lE7NQTF92/JgX5Jgk5A3yUW+8pVq+MwMByCtKk
	E/+ZHDnTUnSB2g9SCbpoDkE=
X-Google-Smtp-Source: ABdhPJxvGugu8D3v/7OjqnF9JQot8sp+EZQkwF87oX4FKHLpBJt0qdFzrhQxKmZb/D+n0/SM7dDrMQ==
X-Received: by 2002:a5d:6cc9:: with SMTP id c9mr31509677wrc.276.1604453694242;
        Tue, 03 Nov 2020 17:34:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:cd8c:: with SMTP id q12ls606295wrj.0.gmail; Tue, 03 Nov
 2020 17:34:53 -0800 (PST)
X-Received: by 2002:a5d:4e8f:: with SMTP id e15mr19390675wru.390.1604453693415;
        Tue, 03 Nov 2020 17:34:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604453693; cv=none;
        d=google.com; s=arc-20160816;
        b=QMntxXxrWDQgAwCud9hZo97u0y33D9Qte6X2UZbCH87G3VODNRqoDafVTtZDuGasQM
         hr42RlCY/SNNnEDIdxDtdqi5tolVYJt9BFv38OnuumMwGeAWilm6IVd+QpaPMhBerr3z
         9rlbZBgD2yTnJj8IOQ3uM08cHm64tRVr3XPzAOXP6kP5sb56QMw+SJ66tXOd28abRj/i
         xk9/6n3NXmRsiCd/v+Hlg6V8kSLWgInGMe7KM1IYRpbQg8T57CcNRLzYE/PgjhFsrpMj
         ZqMilKyNpUeulbmy9COClVyEmiHbxKsNZOljklk0x/3+JZNAjK7WJLbhuzK1f7dPlSLm
         xCog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=QralSrBulzxB8NovVwoWh+i/AbrWlvBFhJysCZOTo1w=;
        b=xL9Y7vgwYIxctCT9+AAkwplj/3wsOjlkar04ftSDSdwDZJhRzvf3IfnDADFVSKkE33
         CHQXsL2T9Ixsf5lfNfSWZhuZeAOPrOlMCFNbCwWKB4yuHXqVB6KURkdlTH4R5CnYwPw0
         npSSGgYSPvDYVAP3FF9RRvtFb4SolLVhOZ5iqW9bqW/XrLaKG4MYnp7vJ2vfiCThlX+O
         VcX2w1chUVIn9CazzA9Q0tru3yRovHEImcjt0DY+uQ/ofue5Ie3306hutB6oiH8XlJNi
         AOXvfxQmedf7d4fKaaDyiuKj8YW6FQwGtn/Q4KoXtQnOsskj1mpjjTw9BtXsitTNnYJ+
         34Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=nmuMK1K+;
       spf=pass (google.com: domain of jjs@kapsi.fi designates 2001:67c:1be8::25 as permitted sender) smtp.mailfrom=jjs@kapsi.fi
Received: from mail.kapsi.fi (mail.kapsi.fi. [2001:67c:1be8::25])
        by gmr-mx.google.com with ESMTPS id y14si25828wrq.0.2020.11.03.17.34.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 03 Nov 2020 17:34:53 -0800 (PST)
Received-SPF: pass (google.com: domain of jjs@kapsi.fi designates 2001:67c:1be8::25 as permitted sender) client-ip=2001:67c:1be8::25;
Received: from 83-245-197-237.elisa-laajakaista.fi ([83.245.197.237] helo=kapsi.fi)
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <jarkko.sakkinen@iki.fi>)
	id 1ka7hJ-0006YA-6e; Wed, 04 Nov 2020 03:34:49 +0200
Date: Wed, 4 Nov 2020 03:34:47 +0200
From: Jarkko Sakkinen <jarkko.sakkinen@iki.fi>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jarkko Sakkinen <jarkko@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/7] compiler-clang: add build check for clang 10.0.1
Message-ID: <20201104013447.GA21728@kapsi.fi>
References: <20200902225911.209899-1-ndesaulniers@google.com>
 <20200902225911.209899-2-ndesaulniers@google.com>
 <20201103045521.GA58906@kernel.org>
 <CAKwvOdk-bMx3Jt6=oN=PHqRv_tx5cF=9cVmumazb4vMNHdj5Ag@mail.gmail.com>
 <20201104003826.GB19460@kernel.org>
 <CAKwvOdnZSLP_YF3iFDLTHFE=ORxsrCR06s-B2Hk7khSxdC0+5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdnZSLP_YF3iFDLTHFE=ORxsrCR06s-B2Hk7khSxdC0+5A@mail.gmail.com>
X-SA-Exim-Connect-IP: 83.245.197.237
X-SA-Exim-Mail-From: jarkko.sakkinen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-Original-Sender: jarkko.sakkinen@iki.fi
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kapsi.fi header.s=20161220 header.b=nmuMK1K+;       spf=pass
 (google.com: domain of jjs@kapsi.fi designates 2001:67c:1be8::25 as permitted
 sender) smtp.mailfrom=jjs@kapsi.fi
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

On Tue, Nov 03, 2020 at 05:18:38PM -0800, Nick Desaulniers wrote:
> On Tue, Nov 3, 2020 at 4:38 PM Jarkko Sakkinen <jarkko@kernel.org> wrote:
> >
> > On Tue, Nov 03, 2020 at 10:48:27AM -0800, Nick Desaulniers wrote:
> > > On Mon, Nov 2, 2020 at 8:55 PM Jarkko Sakkinen <jarkko@kernel.org> wr=
ote:
> > > >
> > > > On Wed, Sep 02, 2020 at 03:59:05PM -0700, Nick Desaulniers wrote:
> > > > > +#define CLANG_VERSION (__clang_major__ * 10000       \
> > > > > +                  + __clang_minor__ * 100    \
> > > > > +                  + __clang_patchlevel__)
> > > > > +
> > > > > +#if CLANG_VERSION < 100001
> > > > > +# error Sorry, your version of Clang is too old - please use 10.=
0.1 or newer.
> > > > > +#endif
> > > >
> > > >
> > > > I'm trying to compile a BPF enabled test kernel for a live system a=
nd I
> > > > get this error even though I have much newer clang:
> > > >
> > > > =E2=9E=9C  ~ (master) =E2=9C=94 clang --version
> > > > Ubuntu clang version 11.0.0-2
> > > > Target: x86_64-pc-linux-gnu
> > > > Thread model: posix
> > > > InstalledDir: /usr/bin
> > > >
> > > > Tried to Google for troubleshooter tips but this patch is basically=
 the
> > > > only hit I get :-)
> > >
> > > To check the values of the above preprocessor defines, please run:
> > > $ clang -dM -E - < /dev/null | grep -e __clang_m -e __clang_p
> > >
> > > If you have multiple versions of clang installed, you might not be
> > > running the version you think you are.  Particularly, if you're using
> > > bcc, idk if it includes a copy of clang?  If that's the case, we may
> > > have to work out how we can support older versions of clang for the
> > > express purposes of bpf.
> >
> > =E2=9E=9C  ~ (master) =E2=9C=94 clang -dM -E - < /dev/null | grep -e __=
clang_m -e __clang_p
> > #define __clang_major__ 11
> > #define __clang_minor__ 0
> > #define __clang_patchlevel__ 0
> >
> > I'm compiling the kernel itself with GCC.
> >
> > Here's an example BPF script that fails on me:
> >
> > struct sgx_enclave_add_pages {
> >         unsigned long src;
> >         unsigned long offset;
> >         unsigned long length;
> >         unsigned long secinfo;
> >         unsigned long flags;
> >         unsigned long count;
> > };
> >
> > kprobe:sgx_ioctl
> > {
> >         if (arg1 =3D=3D 0xc030a401) {
> >                 printf("sgx_ioctl: %d, %lu\n", pid, ((struct sgx_enclav=
e_add_pages *)(arg2))->offset);
> >         }
> >
> > }
> > Note that it relies on code not yet in the mainline.
> >
> > If I don't declare structs, things work just fine. E.g. the following
> > works:
> >
> > kprobe:sgx_encl_get_backing
> > {
> >         printf("%s\n", func)
> > }
> >
> > BTW, I don't really understand how scripts/clang-version.sh is even
> > supposed to work, if you compile the kernel itself with GCC. In that
> > case there would be no output, right? And thus version gets set to
> > zero...
>=20
> That script is only used by KBUILD.  include/linux/compiler-clang.h is
> what's included into include/linux/compiler_types.h and causes the
> error.  The eBFP tools must be including kernel headers and defining
> `__clang__`.  Forgive my complete ignorance of eBPF, but how do you
> build that script?  I assume the tool is using Clang, since eBPF

Thanks a lot for helping with this :-)

I'm using bpftrace as the frontend.

> relies on the LLVM backend (not sure if the GCC eBPF backend is good
> to go quite yet), and that version of clang is older.
>=20
> I wonder if we should guard the version check with __BPF_TRACING__
> similar to arch/x86/include/asm/cpufeature.h? Care to test:


Before I received this response, I did git revert for this commit
and things started working again.

> ```
> diff --git a/include/linux/compiler-clang.h
> b/include/linux/compiler-clang.h
> index dd7233c48bf3..98cff1b4b088 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -8,8 +8,10 @@
>                      + __clang_patchlevel__)
>=20
>  #if CLANG_VERSION < 100001
> +#ifndef __BPF_TRACING__
>  # error Sorry, your version of Clang is too old - please use 10.0.1 or n=
ewer.
>  #endif
> +#endif
>=20
>  /* Compiler specific definitions for Clang compiler */
> ```
> --=20

Shouldn't "#ifndef" be before the whole version check? Otherwise,
LGTM. Please CC me once there is a properly formed patch to try out.

> Thanks,
> ~Nick Desaulniers

/Jarkko

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201104013447.GA21728%40kapsi.fi.
