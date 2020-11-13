Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBVSW76QKGQENATVETI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id C19912B138A
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 01:53:27 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id 202sf5595289qkl.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 16:53:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605228807; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jj27R3BNNDkXu1/wFxNnYZOEGNS3pkr8d8Um2VpjeTKNT9H/+mwSSi0/AWha6Pye4w
         ywTVRQ+WrtMjOfPIYYTucfYe6NblS+rSZzKjOFnoG/P91NxKzq4S97aN/dYhIKRZ8D4E
         m6eCLCT5dhgTZehO5mV6zqT+XQjeV/iwC1ZMDVdDuw/1zGtHF8YTxy7jAdLH02gbge6s
         l5PENlwTwRwYlEvEnRDET1CRHFwN0N/mOaaV6zmSzbe8aC/iztKrvm6QR4UIUjg1yybS
         OauV6FHXyuWQ7EyYFk53BVGh3IIuHEVBi65/XuAZRc7sTg8xkNfmQwAeV7KvGDzXAobt
         GGaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MJlpi5ZjDDKS96vigfDD+zyQ0Ol046SN83Ap7F6D7Xg=;
        b=sPMk5CqNs1v0KxMjvNQwPNrXfNUd20qInxCF7Iq6x1J3Cq2vZOiIINJlz7iH7NTqv3
         uIyNjoIi89qNohFWTQZcSvjyCXtMOGqexgLdzW18Z+2cBGZqaSfirmprj2H/yhLBPbrH
         dGi5OKy3j3+ar2c6VHZv5d0tQ/lyTsfKBuEQwd3nh51uJlF6PoAQ4TSbI9ZW1UdmlzJw
         B+3V7F31uT396v38NRdlSZBysxlErRxIGLEAo0h0HvX17dhJEoRd1/J0YDITzVcYO+xC
         zY60zEzOR+TBVBVDDm0LAgU9xEPAkj6EzLaNHrjM33N8CT4eNcTonjNMEmhta4RT+Amc
         nyPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CCoUOKAE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MJlpi5ZjDDKS96vigfDD+zyQ0Ol046SN83Ap7F6D7Xg=;
        b=Nk7NFW//pbrbLnhTuY7SLdG9niZPGVwoxdoT8/071RVER8isrCcjOVq7sHscISXbLI
         MIYpgNa6SExA9KCJ7shhLbarP7o/soxcQxs6YZ/DzzcDEtGQyfshCyDS/6CY4BqGGdbq
         aFeQKrrr97Y5ksvQbxEZC+11KI639Xjx6mjyTgymJYP1wBAJvZBi7/zreIBKgOsIEZLY
         YDk1wkdeMHruDPlmevXy578T9dgwq9LztmCLQyNY4J0zhGIDNmHqDqmlKmDytkIYmpOM
         CmpkybgnKL0p3z34X8SEfmxVJovnqwiCyVbnmIQ/Ceoel5Ijlhzbxf4aUrbcrTGxvF7G
         Mh7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MJlpi5ZjDDKS96vigfDD+zyQ0Ol046SN83Ap7F6D7Xg=;
        b=mW+v/rNTlW+TrFDbUlfD2xRYfMbuMPVXzw51aCvcb/SKwS5desNJbogOGujR1/f8yJ
         x3EW7MIxVOUXKW3+3R6IqO43gKPbM7B/jaFuaQaqCM1MvW7NT9O6Bf/82/iYdGZKgUq/
         eCCMdVnUft21tP5rKWz1a0InM6p5AH6QHrFqWXnIN8QVLMB6v3q+dpPiARvcwzHb4RXB
         SEKyV2+tj0AfHHgFF307K+QKBOFmkTNKqd3l5MndbgAmv8BTffslSI5Bi0LxoeGuxitG
         236VMyQI7/lJGpUS1mTSJist0mVXG27oE/KQFSFnqM+AC2uHw4OZnfFnTXkbrjImRnjq
         GVdQ==
X-Gm-Message-State: AOAM5335AkIUWpC8s1NyWP4pCT8poKzVJ8VkY6cxNwU2Vmq4G3caylwR
	guRJEzlDZym6mLaaUXy1Y0k=
X-Google-Smtp-Source: ABdhPJx58l6T5pPLzviPvvIVLbiZ6IKJyCV94x771YZ2VwaQjqnvVmQKrlE9b8+4VEqEVxJDLADHsQ==
X-Received: by 2002:ac8:4f02:: with SMTP id b2mr2011496qte.284.1605228806828;
        Thu, 12 Nov 2020 16:53:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:a8c5:: with SMTP id h5ls1097348qvc.0.gmail; Thu, 12 Nov
 2020 16:53:26 -0800 (PST)
X-Received: by 2002:a0c:db8c:: with SMTP id m12mr2597474qvk.11.1605228806360;
        Thu, 12 Nov 2020 16:53:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605228806; cv=none;
        d=google.com; s=arc-20160816;
        b=j6Lowhhku1/8oDiN/G3RL/N+rM+466OaMnef/in13DUrar9tgsvopPpfogDR1EDDiW
         tU4wbEcIsJpbAQmt4dpJI6eOzz48qJKG0b05XHu3yyA0UASPXS2BPXJ/FBMRSP+rnL56
         zquuwNIlpW2LABv7MLqYOV3ibM/2ifXM0ihN4c1ufdi8W5xHU124YxJpORI+fUPSBm2C
         4Ib1ZbpRe6QL+JmDo/EumLRpfJTqZNe2kPyihnAGcgL6ggG3Y+bVZstKe/E4/Ol4IZsl
         MnavrxhskmkKe71ZxGn23OPnctEPEDyRci12xW4mcXYRfr4DxHeFqX2Bq617//cijg9w
         emMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kpvnKSrVoabXQhGOD0rhoXlbZEbSnpbz56+dy5+JM3c=;
        b=Vi727I9Pa62gzOKssiw6xSMobgSsMyQTNFVYr7KLXHhnyvHeQygyaH09Xq4n8uhWh9
         j/QJ+VpM8jnplMxX99rpjY8vWwi4hrfqxT35XfUU/UdmRd5vAfZCRGGA7BdzkzPlV5KO
         Cri4Us7ERz1ozpgdMm2wFw+yRQwqtPViyJKVPQtiLGkr5vLE0/jGEOZFOrNksyVEQ1rl
         A6TLr1uFAZ+ZR9E/nbQYSyh0/WqYgM1iRaEo5OnsCJkAMqffXhToE8Hwxrxn0N6KKhAU
         YiQuPcrIkr8UorgXKeJIYGmsMFaxwSDwFMv9FpC7FW155jG4jRI4zUEfIi1E2RbW/MCk
         V8/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CCoUOKAE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id w30si490603qkw.2.2020.11.12.16.53.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 16:53:26 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id v12so6121047pfm.13
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 16:53:26 -0800 (PST)
X-Received: by 2002:a17:90b:110b:: with SMTP id gi11mr491437pjb.25.1605228805456;
 Thu, 12 Nov 2020 16:53:25 -0800 (PST)
MIME-Version: 1.0
References: <20201108203737.94270-1-natechancellor@gmail.com>
In-Reply-To: <20201108203737.94270-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Nov 2020 16:53:14 -0800
Message-ID: <CAKwvOd=P2yFxkAXh9TUpJ=D5=jNnxnx7O5Nr3iTDeqV40UA19A@mail.gmail.com>
Subject: Re: [PATCH] riscv: Explicitly specify the build id style in vDSO
 Makefile again
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, linux-riscv@lists.infradead.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CCoUOKAE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Sun, Nov 8, 2020 at 12:37 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Commit a96843372331 ("kbuild: explicitly specify the build id style")
> explicitly set the build ID style to SHA1. Commit c2c81bb2f691 ("RISC-V:
> Fix the VDSO symbol generaton for binutils-2.35+") undid this change,
> likely unintentionally.
>
> Restore it so that the build ID style stays consistent across the tree
> regardless of linker.
>
> Fixes: c2c81bb2f691 ("RISC-V: Fix the VDSO symbol generaton for binutils-2.35+")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the fixup!

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

(I'm curious what --build-id linker flag does, and what kind of spooky
bugs that led to a96843372331?)

> ---
>  arch/riscv/kernel/vdso/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index cb8f9e4cfcbf..0cfd6da784f8 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -44,7 +44,7 @@ SYSCFLAGS_vdso.so.dbg = $(c_flags)
>  $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
>         $(call if_changed,vdsold)
>  SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
> -       -Wl,--build-id -Wl,--hash-style=both
> +       -Wl,--build-id=sha1 -Wl,--hash-style=both
>
>  # We also create a special relocatable object that should mirror the symbol
>  # table and layout of the linked DSO. With ld --just-symbols we can then
>
> base-commit: c2c81bb2f69138f902e1a58d3bef6ad97fb8a92c
> --
> 2.29.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201108203737.94270-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DP2yFxkAXh9TUpJ%3DD5%3DjNnxnx7O5Nr3iTDeqV40UA19A%40mail.gmail.com.
