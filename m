Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZW3TL7AKGQEFOK3DEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC192CADDC
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 21:56:07 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id u8sf2490447ior.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 12:56:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606856166; cv=pass;
        d=google.com; s=arc-20160816;
        b=joezocOj1n3/8ASg0om6UBmbBCT/SBRCxjXFn9dpYvGh7WVOWI1O1XdEAfEITedlBu
         DxHJNv+HxfoD8bN7dHrSEYi9iEMh9q6YZcbPV9X/e1/inhOyzMp6E4AjGzhashzBTAd1
         WuLE6cUZDmxnI2qnaux8arsptvsEVETNs5TvhkhPsnnp8XcI9Mn2DQaS/QgsbHoH+DAT
         2zHSfSZzKaM67I5nV9sVZyKytDtSjMmNoGDvZodqZF7qTcuAqx1nDib3pcL/1PMJ4pgN
         aAmfpRSAd85BxzbA5n3CgQGKfF4RAvrsQBrV31lNXj4uBW219kS+8snNv6hGfOIQZ1p2
         RWNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dJaqpqHAZALTsOuozF6lHH6SEkVWctiU6ye/FADdN8U=;
        b=AAHc0+55HNqSVrhfYCY4wu392ioakuGabMNyFwkbtKRwELRbkNkrLI/d/pFVvdf0Gk
         JyxL/rQKqAmLa0m46Ph/t5Fm0id4RdziOxIunkf31HnvKUpjry3WEgCv6zQVD9vlJa/d
         Wgj4NJyp7XubQRl4KRHCxsPu0VSMqJX6T7Fog555WDoLRegPfAUExkdVZJImH1szXa2F
         cNjWjOyB/0q5jxjLPeMbtUgM7FYGQNsqsdZh2hDVEmNH7FUUtQPU/Uf6n+TZjkh/ZvHl
         rjDlWL3FcVCAoTB6483J/HLn08sACx9XvdW3HDxe+R9jQ1/Q4kS4kP+wyGXzOE44kgkl
         y1CA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TFwSRXZw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dJaqpqHAZALTsOuozF6lHH6SEkVWctiU6ye/FADdN8U=;
        b=PfhDuVloKS/b/5Y3iXbwLp9QI6lqAIFq73ByTgseEiI7KYNannJIerwXy5iJJrSZ8l
         Jd27TqZopGZzqjRd8LmeEUqiriqG0SQfMIMWES/ttBUg9BwUYpiodCWN0VYPcsCPaRri
         RKKd/y6pBibvfdUj2jR//u5hSvtdWigRlot2qDS20a4lM5+7U0K3Fa7g9aQwZ5dTUzMW
         +LD+DB5V/uohXmdVM9uwJr8fZXSYk/fTbpt7dU8KpwL4OPnII0WpajKCL/f3Bzo5YKD/
         YqiFPhyPXNAHg5+Gz78jxtLsPTbopnWrYHvYtBhu7n3Rl7NpFYAK4UlG8fYdhflCUuK2
         Licg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dJaqpqHAZALTsOuozF6lHH6SEkVWctiU6ye/FADdN8U=;
        b=j1Uq6OBE2WhvkPAvBnqTl3QcJWUwjGOKSkbgLCgVbRTV37VPkMaXNlb/ur0YYQdev1
         YwWH1gCvnIBEYnvnxdb3sjkh9zusgyLJcWWldK0PFtj1vWLq0vu6s1ix8nlkQbjFr5tT
         n3ICJ9EdvdmqGRwyLw7yD8Ur2oieUChjcVi3gW5hEQ8UpyqQ/yQrPwr7Bn1+GEo9vIK9
         hcdyoayOuKOH7LIyA3BQRM+7co6h/Yx6M3q7nKEuAilbJUQJmGx0j3iJ9Qtb92L6+gfS
         8PO4XT96sQx4G5JzKr4Szc4iRQDKrCj4rTdP1EbMmNLqA8KV7WxBDbJn1cCFXbAtx5zQ
         lOjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rxye29DAJtgj2fc5f5PTvJL3s5ytm3no2f375jieA390hNw5P
	vRYZGbTgetneZb9AfKpnyiE=
X-Google-Smtp-Source: ABdhPJyjSjqIVAEyljVJSrtNbKM6mWEerijktutGv5pwUTRc0S/8yqGmMyh7pkj9lCIVBN0Nt+GXwQ==
X-Received: by 2002:a05:6602:1228:: with SMTP id z8mr2068501iot.151.1606856166417;
        Tue, 01 Dec 2020 12:56:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1656:: with SMTP id a22ls9446jat.7.gmail; Tue, 01
 Dec 2020 12:56:04 -0800 (PST)
X-Received: by 2002:a05:6638:c4c:: with SMTP id g12mr4185548jal.82.1606856164543;
        Tue, 01 Dec 2020 12:56:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606856164; cv=none;
        d=google.com; s=arc-20160816;
        b=AQFqnGfsUvUJiasKIbDbrdF9l0R1bcNJeNy4kSJbN96J56oDVw43oxLSZeLrlA/5lY
         3lQIEHwy+JJThd5HUwgf3LfOQtN55utLlecBOZKs6UTpgTRZKS0PTC/cNp7b+vlgMAK1
         bqsvnxVaDzAAXsNPxoX24PGnz4Cw9u4hsoqgCqBijGs6urqqSFDmAk4p0n9ieMwUt/vU
         zzUbvEf6+orpGdEAnYn1ITmM1xlF7TpVEcJfrLil6MCjgVdlIL34p5neNlLMYJKm6Qct
         WLgHqM0zAe6RGlKAjBw0gSmOc0r72bi4PCuXXeC02eZxqHoAVLvryzF9TJcyYO9tie76
         gPIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jvZxaR1uxdRFvn7XeforUrhpQcomda06FE9z8v9SF+I=;
        b=XiqPB17zgYUkAymaI/l88doJYCa10np7gIpskgZ4WwqZTNCAyWolqlng+wCCxs3Rp+
         Xg1g4zrb/bSUuG99kqpKzNeoypjjlLs3cXe/MgsvJVMIPCS7boQBnb7w0RwmRxQ5xNG8
         O41Dinqbs73IeUhVFm6ePFLXKhfy11VHOzQsvwG37xBAKkxfJ03zRFG40at/HiQWB6qe
         DtSyAGfqEURZDZba51sroCkeXk6iwuv0ovzHyfAYpbEP9yFdHDO3XuRDtOC3rILz3iH+
         lMf3JzA4exAb1nDHZRaXTHneUhTk28nPNZsP19vQizM0IypzPrtlowU3tsS4xuow6S0b
         vTIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TFwSRXZw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id u4si60251ilk.5.2020.12.01.12.56.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 12:56:04 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id g18so1958954pgk.1
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 12:56:04 -0800 (PST)
X-Received: by 2002:a62:293:0:b029:197:96c2:bef6 with SMTP id 141-20020a6202930000b029019796c2bef6mr4299536pfc.62.1606856164000;
        Tue, 01 Dec 2020 12:56:04 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i26sm597443pfq.148.2020.12.01.12.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 12:56:02 -0800 (PST)
Date: Tue, 1 Dec 2020 12:56:01 -0800
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 2/2] kbuild: Disable CONFIG_LD_ORPHAN_WARN for ld.lld
 10.0.1
Message-ID: <202012011255.9D677ED3@keescook>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
 <20201119204656.3261686-2-natechancellor@gmail.com>
 <CAKwvOdkPgwL8H4EGF6=-VuxTdmxA8JHhGbLHVYcLJj9MmAvW=g@mail.gmail.com>
 <202011241421.A2F3062A70@keescook>
 <CAK7LNAR=_+1K7EtpvGzgyM+ans-iNOT0PBXdLRApnsyAzakQ3w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAR=_+1K7EtpvGzgyM+ans-iNOT0PBXdLRApnsyAzakQ3w@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TFwSRXZw;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Dec 01, 2020 at 10:31:37PM +0900, Masahiro Yamada wrote:
> On Wed, Nov 25, 2020 at 7:22 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Thu, Nov 19, 2020 at 01:13:27PM -0800, Nick Desaulniers wrote:
> > > On Thu, Nov 19, 2020 at 12:57 PM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > >
> > > > ld.lld 10.0.1 spews a bunch of various warnings about .rela sections,
> > > > along with a few others. Newer versions of ld.lld do not have these
> > > > warnings. As a result, do not add '--orphan-handling=warn' to
> > > > LDFLAGS_vmlinux if ld.lld's version is not new enough.
> > > >
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1187
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1193
> > > > Reported-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > > Reported-by: kernelci.org bot <bot@kernelci.org>
> > > > Reported-by: Mark Brown <broonie@kernel.org>
> > > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > >
> > > Thanks for the additions in v2.
> > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > I'm going to carry this for a few days in -next, and if no one screams,
> > ask Linus to pull it for v5.10-rc6.
> >
> > Thanks!
> >
> > --
> > Kees Cook
> 
> 
> Sorry for the delay.
> Applied to linux-kbuild.

Great, thanks!

> But, I already see this in linux-next.
> Please let me know if I should drop it from my tree.

My intention was to get this to Linus this week. Do you want to do that
yourself, or Ack the patches in my tree and I'll send it?

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012011255.9D677ED3%40keescook.
