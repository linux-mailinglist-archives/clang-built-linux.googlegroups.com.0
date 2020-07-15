Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBUMHXP4AKGQEUJ2VD7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 742132207D2
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 10:52:34 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id e12sf540326vkd.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 01:52:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594803153; cv=pass;
        d=google.com; s=arc-20160816;
        b=S7myjeoWks2FnVfMH7dByh1/gvxFmzF7UgqmXM9gZup7q2aznNdLLKXgU6N71dNPC9
         LCvJJhPtnAp/rAkg+DjNgN/QLZjIDq00iwoCNaRt1hL5pEs+NhjHqhhFc7WXmTH5o03s
         wLT1iiIA8uoertklmN2NrPbsdGTMgOeD9nueSld6GpSIKCOJVnJzJ0M3HT2goHJhstcB
         9Diu9EQqQo0KRDLOMs2mTpRKyLt7gXuCJ9iRPQKtOp3TMSXqTytHGAtfmmPDwWTbZ0qL
         xr2e5VQtbsMGmuHH3RNcikaQpseP7cVx8oM4zUcwyKrzYj/Vo35XyZKd5oIsYq23gtgL
         zvLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=9QWcCBTBNalfZB5ON0/pbYY74Y7sqoTDY6+2FGWsb9g=;
        b=PQ8zS5Px2yaoePV/AJjom6x5lCWY3zs3CQh/GwXmTXqmQHUiRW2TT0AIs7I2YtsGyX
         XvV+1FNCWTluveFIIXUNZX5gtwUG/GWBS5IXZFwET9c6a/p7mntRLvG2OPwAq63wycC7
         Yvh3xw2IAklFOVcsGs8ZJAK4DnbSRmeWk0V5W1xOxASV1ynd8E3IkaKXdRHIrWgJDVL/
         9k8ELq/kL9dhylyox8dPkckoTxaZ2+/1rG03Ae0JaMbnSbnhXZimsF/S4XGaVucxrroJ
         eVuHzpl1AvFaInIpFHaagRnEGZ4Dm6nlzYPpfiXSuQpChP7RZr4nkKqTj2Y2eqOUqlNu
         xHRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hHzdxBJ1;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9QWcCBTBNalfZB5ON0/pbYY74Y7sqoTDY6+2FGWsb9g=;
        b=nInmjRXyrUsTJLHAQ/1xJ7Z0N2NqBFerilm+GQkivGZDrnQA0Fu3guZUj9mrHgWGeb
         Wuu9xUkriHqhyk9MCvwUWaET4Y5kZ1grdDqtUILKYM4VTHCNNq7n0//6SjYkHwysGI8M
         TfyjUsmBKhYkGW2WIJ1x/f5ODImsZF1yqqUs4CRMPg0OZzPXTEPRBxDFqXmxvSkQwpfL
         v0xutlmEzkntYW+3kgsYRlDgyLlF3Ywy3ok7Ak9NkvsE2XOyQAbqao7TQqQaxLTlYtzQ
         nUM/13R5zm0rvyD0+nC8g1XJMEMm5vfTkBHlITrczayC4lcqEbQoJMpokW3+w3ZhScFC
         anmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9QWcCBTBNalfZB5ON0/pbYY74Y7sqoTDY6+2FGWsb9g=;
        b=bA58ekv8AQlo+iimUZ7IhHaltQTayefMV/L6EJgtbWk14PKIt7RN7dOjjWequer6Qx
         zFMWoyKuJIHfXgVK75Zt1bR4KDEswkm9yoJBdPaFCzMGommeGoBtj3qmBMWftfPPoQao
         arjRXoPZmmTT+erxOqVu0MgZKsvdryNFuT/yuTtEPK57bDm9A40zHVODBrjwgcLcCvwy
         pR0M9bw2m0ZSkgCEyC/zWyZ0E01lTVuAGlKJaWnhkRre0ToTW+LemQmXFrC4S/KutDR4
         BR+k5DMkaon5puSgx/oIDNWvXSBk71txq13JMSC44Yrg2QpVhEfw3jJlCqNz9iLTGfVk
         YZ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9QWcCBTBNalfZB5ON0/pbYY74Y7sqoTDY6+2FGWsb9g=;
        b=GxP7tX91P/Rs/piwAz3whI+tstFiLEPlIr206wWM+noIXHhkWr2JW3fse+CXZ1DdHZ
         3SgjTNHO3elKp7WHGI5C0Y6RIWCFmW1soC5pKFek4yj3mhn1jyBFDBZ+dEG1h9wX1bev
         ymvrPR96+0e1EryO+l/6NplJ27xcCkgOWk0+wJK/xvsrkH/VqX5QSXLRGH+YQHV6DZQW
         wEPcoCcP3ng/zfunD472KlW76ObgY4MYz1HyXjaR+eNF1bZcf8VOiwVSD2ECyVIFbIq5
         kLAXASY1fdrxiTLHmUjsbU/AqKsjyaBzb4hRMgSElqSAKiv5ZIyt1+8B+yIR7kSkrA+o
         Jdqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532e48wfiFXO3I4ue50uJMp+TiGfAM2B5FPSbVj3x23+0xtMdaWM
	dTK/23hGU2MovEM0+gYww3E=
X-Google-Smtp-Source: ABdhPJwEY1FXlY/wlOUJjWkFUSCbWS/lB8W7d03KojumLRaS+a5n5yrqFPmVhoMkcBcCgfIztGtP9A==
X-Received: by 2002:a1f:1acb:: with SMTP id a194mr6884058vka.21.1594803153261;
        Wed, 15 Jul 2020 01:52:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:b604:: with SMTP id d4ls194062vsm.4.gmail; Wed, 15 Jul
 2020 01:52:32 -0700 (PDT)
X-Received: by 2002:a67:304e:: with SMTP id w75mr6271964vsw.192.1594803152729;
        Wed, 15 Jul 2020 01:52:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594803152; cv=none;
        d=google.com; s=arc-20160816;
        b=sV2b7zd1yCPbw6yCoUCQcIFjlP/RRwkxQmJb7HphwlIYd2BKy6DTOXrmXCvQsE3zW+
         gALIzB2n3pWs9rfnuDktZ3cQRe5OkoI7o1f4hzMXxy23DaALiG6w1FYRkIw5A5mMktdN
         O5oRR9qHH0kjyFtWlR68ljs384IEfAuGAJFOxyokFwrB/qCDIM0Pmg9mNTiop26CAbMD
         IEgyAAqLSLqQGgerC/8o/i/qUTDlTO0t4nc/xUAOCBh9h8krj4+VaQnXhEUQ14Z5iFva
         UZAxI74TwKg3fny9e85yUUktyqiO2z6/HdHZo2bIfFlFYDWyFV/kN2oynaKTNUoqcqNi
         12Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3Z4IpLUKocM3OEmb2Wb4pmzCIIom6GoJeorw5OSNFmA=;
        b=X2VdUqk93dYDeq9khFMMWEYc/X6KKtBu6cPQEMkfmuQFJi3nZFDgtm1YlW9uKvXmhd
         VkydY6ND9N7jB3K02jOM+Kzs2cAC/daDwvd0BTkXoWN3JBYXHS0hcALoLuiIiHQ1on3L
         sAARvBlgHPgrv2aYqFwN0G8HfyFpeCZdqzKzNCqtizahicyFo96Nwq8iBX+C7VLEPRHl
         p8hDzlUHrHZaNp4asfKxaWOWhrBrWpvagxL+wRePUknAeNZDpMr5YT7kmMwj4uXkxa92
         TxepuDcfW0oN3U8faszzeAg/UIepMp24Z5YOoB9U/zBCUCXHbJtRH8TpgPNdY1ntAQ59
         /Ysw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hHzdxBJ1;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id s7si66910vsm.0.2020.07.15.01.52.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 01:52:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id q74so1454349iod.1
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 01:52:32 -0700 (PDT)
X-Received: by 2002:a02:ce9a:: with SMTP id y26mr10812220jaq.121.1594803152177;
 Wed, 15 Jul 2020 01:52:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu> <20200715004133.1430068-2-nivedita@alum.mit.edu>
In-Reply-To: <20200715004133.1430068-2-nivedita@alum.mit.edu>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 15 Jul 2020 10:52:20 +0200
Message-ID: <CA+icZUW4YycmdKATQNW+3-rjLS8=jSVWCvQNx13TuZcYXt0YnQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/7] x86/boot/compressed: Move .got.plt entries out of
 the .got section
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hHzdxBJ1;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jul 15, 2020 at 2:41 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> From: Ard Biesheuvel <ardb@kernel.org>
>
> The .got.plt section contains the part of the GOT which is used by PLT
> entries, and which gets updated lazily by the dynamic loader when
> function calls are dispatched through those PLT entries.
>
> On fully linked binaries such as the kernel proper or the decompressor,
> this never happens, and so in practice, the .got.plt section consists
> only of the first 3 magic entries that are meant to point at the _DYNAMIC
> section and at the fixup routine in the loader. However, since we don't
> use a dynamic loader, those entries are never populated or used.
>
> This means that treating those entries like ordinary GOT entries, and
> updating their values based on the actual placement of the executable in
> memory is completely pointless, and we can just ignore the .got.plt
> section entirely, provided that it has no additional entries beyond
> the first 3 ones.
>
> So add an assertion in the linker script to ensure that this assumption
> holds, and move the contents out of the [_got, _egot) memory range that
> is modified by the GOT fixup routines.
>
> While at it, drop the KEEP(), since it has no effect on the contents
> of output sections that are created by the linker itself.
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> From: Ard Biesheuvel <ardb@kernel.org>
> Link: https://lore.kernel.org/r/20200523120021.34996-2-ardb@kernel.org

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> ---
>  arch/x86/boot/compressed/vmlinux.lds.S | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index 8f1025d1f681..b17d218ccdf9 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -44,10 +44,13 @@ SECTIONS
>         }
>         .got : {
>                 _got = .;
> -               KEEP(*(.got.plt))
>                 KEEP(*(.got))
>                 _egot = .;
>         }
> +       .got.plt : {
> +               *(.got.plt)
> +       }
> +
>         .data : {
>                 _data = . ;
>                 *(.data)
> @@ -77,3 +80,9 @@ SECTIONS
>
>         DISCARDS
>  }
> +
> +#ifdef CONFIG_X86_64
> +ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
> +#else
> +ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> +#endif
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW4YycmdKATQNW%2B3-rjLS8%3DjSVWCvQNx13TuZcYXt0YnQ%40mail.gmail.com.
