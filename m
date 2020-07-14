Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQXTW74AKGQELICOFMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8852E21F994
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 20:38:20 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id a189sf12116181oob.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 11:38:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594751899; cv=pass;
        d=google.com; s=arc-20160816;
        b=dPjY/lKCGDwKephaiTf2tz85HURPqoqnawfrnEeaYSZFCt29kHnwL8Apj6wixqcSLz
         yWIDhT150/N0jf1rnKtIgkmVp7WguN6DG4ObN6XA6s/BR1R0s4J0b4HWN4Wpg8+g2R+m
         UYtXiLE+D1oTXASIyAJuRd3orRuzzIx0b3SxEuS+h5kBCbOuuxPpHeb71xYdvJjkaE3L
         n11pn5mYGztbQ0EmqUkmSHI+h19UVeRqrjDMKdosHQpu9Hp56rCPrgW8NAJD6Dbf5nSd
         3zpjI6W/EvqYIzcZ55PRRUBqcu19zo6ieAwZNvBx+/g4i9d+jT29u2IcUZxAE5XC9naK
         BABg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=GT6YbO3mtsN0g/3KaAizpCiJ7Cil26Ab55Ln4vg11es=;
        b=WYmxK4T23ZlYI4QWnb61P8nxo/QR+kn4WPQMy4icgheW8eUUgCfhnUc/ZwOuJzISTx
         I9NPbFlX2kr5o3z0wHomistk0jx7xB+NB1h3cqNWwQkzubTEwFtLHJ8n0F1OaSLBoK1u
         1GlSq+4BdURtld8hn+2h8i5nTMOEd7Pv9QsT5ahzMhSmp8XWxQhYTteGb4fUGVZ+4BgJ
         /Nme1z/Rl2k7jaet/81yQ3uqi7ioC/ui05JyNkV0dTks5WT5Pufa9e9HljL3wqVKvKQQ
         GiCcXzvPlPqVvUGbeVbdeXm3MMCMEKzmdkdFoN+6iTOwxZpeK6YEnoJd6ByhAHpBI56b
         GT3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hRtCYfvr;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GT6YbO3mtsN0g/3KaAizpCiJ7Cil26Ab55Ln4vg11es=;
        b=WGNCTXrhHVl5eSVi5RTOjxMJP4vtDAxkuJWRhCLjgLkvEsUypNl0OFIPqtmZ+8lyjV
         aD2UOHFp5lg975YRsOgQWN7FGfTohfIsZXR2ZdZul3hQSpbQMKJKsBLN9SP9hDpJWO+P
         tB4Tfz6nWjgte3pDb2FBhnSfJGIbx9KLHq55PUPV4RhO+Z+Q0vsrly4UKOov8qBiO6m5
         mwYSPnSqgmFuk57trus8P7jqOJVTkgkyq7kGhVO9LjjzAGlszbvtznBmToxkTcEkAJqP
         A+24xIjMjr1dB/N+PnMOv+Z7ngNZPtkT0KRcYjGh5Qk+z2YIeNfcCZCNipe4tQKeOoKU
         W9/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GT6YbO3mtsN0g/3KaAizpCiJ7Cil26Ab55Ln4vg11es=;
        b=LY1/3uzS5YRUGtHCFs1FvpjlAv8s/ByzZz3LLF+nOY0ldB8zqqp0bQpnz2wAd6v7T3
         h9E9XzHHCzO1Ghk0u+NfbPfjDFl817uR4R3n+Ucc7YBx8w4byhmMJZuBsZTm2MH6Td5+
         3HivHA/xA5+C3VhN0vNoSJ7xuzntpUcKXS2boXs6ir+i3jF648BORzf0abZZ2qSDe26E
         a+GX1M7BKO9cVImWkBcm5cQLNWNBloLb5DexI3OsP/TVe07nLFYKI1rMna/26EDQE5Ic
         e5fcQpCi10jTRBjxnGESS9gVYHQKBGwwiMO1YmTCxxq3m5XB0rA2t06N+/Wpk4G8xmyl
         GUKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GT6YbO3mtsN0g/3KaAizpCiJ7Cil26Ab55Ln4vg11es=;
        b=DPXP5m8Y3vTZkxg2X4YfZXUhV/rdorCtQZp79J4M1WX4qnjRg5I29Bg0Dg8GybI3GL
         KOupWcFtJXM4UuWCBDf4/VfspsvGPfxDW3SndiFtCctTYSgGMYLj4rdx8z9h14qR3UiV
         YtABO0w7ciw4v5KdLf0fOc0NOLpOO6gvzhEY/kWD0h2KbrLfikJH8ie29fyNMh2jshPX
         1uBhXMWJZMp2tNtx99bx7+vOW7u6qOf0Dy9rrwmHnqvfDvZnk6On+Ar5ffLYG9/QCm6L
         domEWdjoqBEeI0ZAgpVn2ZPfS9AVx2T8jKZ1esjvsy9ZyQkmhmCQjbflhFrYMn+6/LEl
         RqZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JASNIUXvKRVih2v4rpBmQgyIWot2DLjOJL8dOzafKbxZYpZWu
	9X6gEceq3b1xkvS5KPbr65c=
X-Google-Smtp-Source: ABdhPJxQbwnUDQVB9Mm0TqykNydLCyhXKYDQTHxXZf6IprrXW9Id5iZ0wY1dgvqt4ubpTS9a8+4jZw==
X-Received: by 2002:aca:4844:: with SMTP id v65mr4998606oia.152.1594751426640;
        Tue, 14 Jul 2020 11:30:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:31ae:: with SMTP id q14ls4598311ots.2.gmail; Tue,
 14 Jul 2020 11:30:26 -0700 (PDT)
X-Received: by 2002:a05:6830:42:: with SMTP id d2mr5519916otp.339.1594751426261;
        Tue, 14 Jul 2020 11:30:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594751426; cv=none;
        d=google.com; s=arc-20160816;
        b=A6oMlB+Jw5e3nysJNyaXwh2GScJeX0Da/znPa90EiIuokwW6kosuqSgTvSAv+uTyrC
         jnC/5lJ6+KPTQE8iCeU7+ydEJuJApo+KqzCQfLQB0Sihq0n+JEozMPTMS4b3ZODV1GGU
         egut9JkjEUliSIeLg8ZR6tkKwUs6PbLt81n5cSVlZAaLHlYRQ7txNIPqNIO1gxarTw/t
         KrpY6+nTedjVP+Sb2f6SjS3BM/GApWKVXTMb843QEEKiW93pXCERNvbIhljbg7fUmikP
         BinFeHamWavCOiMyGedM8niJuL+zNB3mmdtJtiOOucx0h1II4cODgDq8+zbb/+F1y4aH
         ndpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dWHcSl+qV/ewcMbxZBTT0+5lIFUMoe4sskE51jeT9lk=;
        b=Kj2wRaHSChU1VDGNVFNrccdOXpsw7iLEUqwQyb1meJnfaf0vVgQf8RBywEKSz8nDNo
         EFmQdWkOn/azSDRL2/8n3AA2aWtQRY/VFwuIXcewt1U8vA9NU0LRx9FjPL8ZWG4Qt6ne
         xYPRj6n4FYskzwxvV1cMhBtI+fghVLrEivM/yh4dwU+OuzqYD3bvGeZfPQzvN4c7HQSm
         ejZhZ5YWioTQ9+JLsWDuYbB/oGOtiVwl1KVI0q/uNu1A0nPnWXegfng3RqevYABGd5HC
         DRVwZrqgqQx/jmgV/ywdV5kIo1iy1GYEbh75gEN9FJpprf6iCXDKTfQWYDoQziqmTAJy
         zMnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hRtCYfvr;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id d65si1111975oib.2.2020.07.14.11.30.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 11:30:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id t27so15025853ill.9
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 11:30:26 -0700 (PDT)
X-Received: by 2002:a92:d843:: with SMTP id h3mr6290036ilq.255.1594751425849;
 Tue, 14 Jul 2020 11:30:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu> <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan> <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
In-Reply-To: <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 20:30:14 +0200
Message-ID: <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
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
 header.i=@gmail.com header.s=20161025 header.b=hRtCYfvr;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
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

> I did a full new build...
>
> ...and it fails with ld.lld-11 as linker:
>
> ld.lld-11 -m elf_x86_64 -pie  --no-dynamic-linker -r -o
> arch/x86/boot/compressed/.tmp_misc.o arch/x86/boot/compressed/misc.o
> -T arch/x86/boot/compressed/.tmp_misc.ver; mv -f
> arch/x86/boot/compressed/.tmp_misc.o arch/x86/boot/compressed/misc.o;
> rm -f arch/x86/boot/compressed/.tmp_misc.ver; fi
> *** ld.lld-11: error: -r and -pie may not be used together ***
> make[5]: *** [scripts/Makefile.build:281:
> arch/x86/boot/compressed/misc.o] Error 1
>
> It's annoying to fail on the last minutes of a build.
> Sorry for being very honest.
>

I applied this diff...

$ git diff arch/x86/boot/compressed/Makefile
diff --git a/arch/x86/boot/compressed/Makefile
b/arch/x86/boot/compressed/Makefile
index 789d5d14d8b0..9ba52a656838 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -51,7 +51,10 @@ UBSAN_SANITIZE :=n
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
+# LLD linker does not allow -r and -pie options to be used together.
+ifndef CONFIG_LD_IS_LLD
 KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
+endif
 LDFLAGS_vmlinux := -T

 hostprogs      := mkpiggy

...and was able to build, assemble, link arch/x86/boot/compressed/*.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWHdsk9%2BwkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw%40mail.gmail.com.
