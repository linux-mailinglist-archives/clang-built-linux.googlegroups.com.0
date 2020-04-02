Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX6ETD2AKGQEOKIJQEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EA419C822
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 19:35:28 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id b14sf4081832ilb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 10:35:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585848927; cv=pass;
        d=google.com; s=arc-20160816;
        b=v1ZmQMn1JJWlwofZI8Et82xuIup8bPE3U51RwS6z16H9WhaE4MwPiz3HKPbOPLYVy7
         xVw13c4vfRuXdeMkZx1Sz3ZUDHgxRLvIc4VF6G/5P1wIbts0hib/alZ/2y+H6sWv7Alm
         NP+A3Xh2GmutMy59Y0NQw+xMCkMUW0vdzD5wnAkqoHy3PB7INik1V8q/CU1sVVN/HN7u
         6W++vRvbUtFytNiMzkMyd6qMCOBImLd2NbPCjVd9KGyPP/PSg0tHIqj6FV7MFUvtja3o
         sxRae1xAqROOR0m1CTeR2fxYD4+TvNkzmiz5Je+8dTG0O9d/X8TR8dEJy/u0kiRK9DRc
         ujtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gNBzNkUawdWwcHQstRoOOY3NkUpgafPLJCMoV6FvdhE=;
        b=O+fZHcKmWg53ieATsNazoq0unkkpsSPrDVxlQi3E63E2heS4Nw6mcbUuokq09k456W
         xS9AQ1DCWOW4f5xS29nVIjiQXMCYfoZqbPtPEIq8xtoUL8LAyn92v2c8bLa488cKT2NJ
         gSBdMghPv70X0n7wSdvOGGep45JSLgJy6WHmXtnjGNlArOYGp8DE0P9TBA2QM0p7Jjjm
         LHkcf5bX0dHqlJhwqPlLtN1jgMuagF1h3RsfXUbQ1zH4yVOUH12NT1X8vPENi4tiOYRu
         U3iHpzT07xjmBdYV9KGuTqPtV8RLT1vDLZcbgXUSqEddjce2Fu6pDwI89nfstnrkJFpu
         PU5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DIJgguHk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gNBzNkUawdWwcHQstRoOOY3NkUpgafPLJCMoV6FvdhE=;
        b=pRFF+4IOv96XldwS0aH+r8yJHljUAbXOwMNGN0P3yQ/zgn7/Qr9ssIuAo5JMerEdAj
         n3L/uFZB++tmSC6DTWyrb3FKHiHrennUOeXSOYHaTL2wqlUnnyXndoQVDJFqtqDelVWB
         H+n1/JwBpiek25PA7Fn0QIaucYzU1RKFucEcss99r/BOWNimKCuk+GALo1b6CTjklmqN
         G4trQN68i0faXEvH4aIzMI6AoVxS72FEvdwbs+veHrf7eYJMtvifMOidMA5CbaA3Jult
         nNZ1nd35xBIQsh0lotVBl+lJDiWTBchaLdXXvNYDsZ+joJPH3soBCeKL8pwjficPtxQY
         0ksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gNBzNkUawdWwcHQstRoOOY3NkUpgafPLJCMoV6FvdhE=;
        b=FkEu8jet67Io/Q8widAzJfqdk/txtQ8IQtDLF2EnVzClplvDJ1jP6dQ+MVPvLAFDWk
         sbS51fZU9oh6hbMykVxpsrD9fLW0iRj03yiD/gFF4X7q/NNX/mrxUswsTrZqRZCuQWz4
         H2tD4P+j57po8sVMZPs7g1ltPoSy6nz+Xukc4/ILuA4FaYYaBU5YyhKd/tME8cyXQ9p8
         DxfVDAvn1NH3Zjty8aa+T7sm3eJIj4LzvwY2f+r1gtnWP5FUKlopuwapZho4oQHpTXMf
         e8bNTVAHU4CpZgqanuKQfPT22Qbu8vp7UuyQa+VTOoE84xMirnhTysu9PdeH9pMZnGaS
         k1ew==
X-Gm-Message-State: AGi0PuYwIRumKoVIfh+3vKsHwlB6KdfEP2vI8Dkb6IvRJLRisqWtZV/u
	vB/O8Wt354j1YqqEH9TTjG8=
X-Google-Smtp-Source: APiQypLKyOOm+MTMEkD+rj7SnFdzG5yVr8FhAh4TPaWkzKN1tVCAlvhBoVlxnVOk8Apo0wm+NRwZUQ==
X-Received: by 2002:a92:d650:: with SMTP id x16mr4662937ilp.226.1585848927079;
        Thu, 02 Apr 2020 10:35:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:194:: with SMTP id 142ls2097798ilb.4.gmail; Thu, 02 Apr
 2020 10:35:26 -0700 (PDT)
X-Received: by 2002:a92:8642:: with SMTP id g63mr4183857ild.281.1585848926763;
        Thu, 02 Apr 2020 10:35:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585848926; cv=none;
        d=google.com; s=arc-20160816;
        b=Eru95he0IPHM2ZZ1pVvrD/+IYN2CalKsRYXFq0TM9DHq8nkIgJcrKEdwrnZt88VqLJ
         JjdiACnMz59pVoSFcZ4vFUKqKquPnGzGZUQ/w0gjR5H8EgPG2Q7dxdpDV0PDGM4edtVy
         qPeE899bhuyFRavKF5RDF1zAGyvrD3u6alASr2Jgs8RKz/2/mLf2faYQmUaSnbO0Q+0C
         xOSPx87hZkCxYhJ1hrRO6iBP+b5OeuTH7vq9x92DpBAkvPDomGRDeTi1SGoUhV0PPE8P
         oK+XV6geiuSzl0KTWD/iwqvNf6XnpDgUn9Z92wNqv7Gx+WIeKnKtCT6F9lqNkh7BrBP2
         KRAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=guC1fZiSgEL3S0epJpXk9N5uLkHmIuEzGe6F9jNE+kA=;
        b=KA6uHGINXKA/q9zYOa8qB1zV7OnjX/O7pVK80VC6Yoyu3weoAcjb1yc0e6Mm3PaYv8
         BGewUi9/i8IrKF6IdzuGG/RhY7PzsN5+XXAocKI8SSyW3FIqiiwcEURN/6LZ92V/3xNN
         b9EbzSdxAmrZ+tHNzIUGprEL2y6swCfR33JdCCkckz1nV4t2u4NT9IbDX1gvdtPpqkia
         B4Mnyu0sbada5KJJuSq27RyNzpLWRvkr/gJG+PQiJ/n4FLY5kYMCRekMDbIAD7yrqDQT
         J9BEwQB1H+WgBi4ACh7b6JajPoJpQzvUZrvKiMjzFYp56NdtBpm/ViPd8JgCp2ccA/fM
         6HjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DIJgguHk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id d207si484219iof.3.2020.04.02.10.35.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 10:35:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id a23so1611542plm.1
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 10:35:26 -0700 (PDT)
X-Received: by 2002:a17:90a:8085:: with SMTP id c5mr4543968pjn.186.1585848925816;
 Thu, 02 Apr 2020 10:35:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200402085559.24865-1-ilie.halip@gmail.com>
In-Reply-To: <20200402085559.24865-1-ilie.halip@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 2 Apr 2020 10:35:14 -0700
Message-ID: <CAKwvOdnasXV2Uw1r4we_46oGD_0Ybjanm7T_-9J83bdf6jeOAg@mail.gmail.com>
Subject: Re: [PATCH] riscv: fix vdso build with lld
To: Ilie Halip <ilie.halip@gmail.com>
Cc: linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mao Han <han_mao@c-sky.com>, 
	Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jordan Rupprecht <rupprecht@google.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DIJgguHk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

+ Jordan, Fangrui

On Thu, Apr 2, 2020 at 1:56 AM Ilie Halip <ilie.halip@gmail.com> wrote:
>
> When building with the LLVM linker this error occurrs:
>     LD      arch/riscv/kernel/vdso/vdso-syms.o
>   ld.lld: error: no input files
>
> This happens because the lld treats -R as an alias to -rpath, as opposed
> to ld where -R means --just-symbols.
>
> Use the long option name for compatibility between the two.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/805
> Reported-by: Dmitry Golovin <dima@golovin.in>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> ---
>  arch/riscv/kernel/vdso/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index 33b16f4212f7..19f7b9ea10ab 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -41,7 +41,8 @@ SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
>  $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
>         $(call if_changed,vdsold)
>
> -LDFLAGS_vdso-syms.o := -r -R
> +# lld aliases -R to -rpath; use the longer option name

Thanks for the patch.  Maybe the comment can be dropped? It doesn't
make sense if there's no -R in the source file you're touching.  If
someone cares about why `--just-symbols` is spelled out, that's what
`git log` or vim fugitive is for.  Maybe the maintainer would be kind
enough to just drop that line for you when merging?

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Jordan, Fangrui, thoughts on this? Sounds like something other users
of LLD might run into porting their codebase to LLVM's linker.

$ ld.lld --help | grep \\-R
  -R <value>              Alias for --rpath
$ ld.bfd --help | grep \\-R
  -R FILE, --just-symbols FILE

> +LDFLAGS_vdso-syms.o := -r --just-symbols
>  $(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
>         $(call if_changed,ld)
>
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnasXV2Uw1r4we_46oGD_0Ybjanm7T_-9J83bdf6jeOAg%40mail.gmail.com.
