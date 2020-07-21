Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBBMQ3X4AKGQEIW4A2HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8FA228987
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 21:54:46 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id s64sf10038001oih.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 12:54:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595361285; cv=pass;
        d=google.com; s=arc-20160816;
        b=OyyvJNAtyB+kOmBs1mWVkwsQD15U7DLDf40/EJQPDNxfuG+M6+y/vp1kxeMkai1EUu
         xPFiKn0iIchYwV1NqRkSOUvut0lIcRYMi8jmklUdJ8fhRX3K/YBuYDWbL/W/4X4FZ1Zt
         4V7iuSqV44NK+mrzqt3PCHydrOr+TC0t9MKJuAhHMsRU7K2vnOzoKS3ETqd6JWuIbPS8
         QAVi9WhDY/nPubLz1IWr+0L+EOYNSOEGTBip8yeHRvQeoLbC+VanXpf01LqNDdbWVREx
         buMZ598tUR6dT8/2AURoFX2BhcdRp93tVlMTSCgEw+JqAWlOSjeAq12BvvFQv8/+RZux
         oosQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=A4BQks1+HtTC1IAUfPa6xP5/4d5EkymX20EoVuYJiFs=;
        b=ly9iIetjpy7rmKojqsjUU5n1zQ7wSGcfK/ld9nKOH+3n8VYtiQY805RWVGs71xkY7K
         KiRk3c6He6BCzODumetUe6q+gBWl0rdiudy76bdGfa5bTeIq1OGyB8uBL/fC2+2Lh3/m
         bCSf/bbG4DaqvNwGbns0YNuSruKQ5LAGQ4KiSCXSaEip2A271OTG2Xb0Sok6+08wIHGn
         oIlOuqIO8HkuBPZJfzXIV6R1Ok+CV7ZjGIRMumWXK3p2RFhx1K03waybkCXN5iEtS5AR
         Uf+bRorUrkyO4cjbiOwMJqcQNyFL0HQtG4vUVbALpHC+OYhlV77pMybYwfiDoTbJTIFC
         5gZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SenRoNEM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A4BQks1+HtTC1IAUfPa6xP5/4d5EkymX20EoVuYJiFs=;
        b=dgEr3k+FVO//r8VTT1JmKzfzXkY/CrsyEj5VzyAguJdueT4QtOFASjaMUvRVJXTpr5
         qSUeRYU4HFEiUfQyt30fSPSEuACtP/thKoWzISIizdfqxmH0WAW5AHjjPya3RNvs8uOe
         JmVLlLGZMUd8507NwXEh/kuTbkU8CDEfYIJjMCB8dq3XlxqspPqvhUvG1KLd4dpRc2Vl
         qn/BlHclapOY8jWfHx13qdvVm+k8AFndpft+AN14xNnv7g6aaX3Mk02WMbKdqf+clI8r
         4LHi1NKQOMN73RfmB3MznmBnIn5fnfm0KwIAwhskmQjYsXbTMhbmDn1U6cO8//P6wtlV
         zdrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A4BQks1+HtTC1IAUfPa6xP5/4d5EkymX20EoVuYJiFs=;
        b=ZrX9viDGNCVXG5MMr6ygqY/CRFNIK+/y35UDYphA1+blM3JNY/qzz56b8fmozuo5oC
         4Pt/T/aWz9HUjjQGw1wkr9LD9IsJ7TKWTNzWcgZYweA+R25gK2OYd3zBUimc6tpVDcOY
         SV6oBHY3nAkKAlhwvnltegI71MgADFhVg2j+ht0DNeTmAGL2vFHujfTbjLdD3umhbMmE
         7m/aMVSCXamzKUJuiriKQMTCTqZQvmx2+dbwxrTFDjXmjqDLirIMqjiDEtXO9q5qYqhe
         nVDSA51i9u/yRK/TPNQeMrqy8i4kzMK1c52516Up2BmzPc6ebJ4pTr5TXYPo55IhQw+N
         psLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A4BQks1+HtTC1IAUfPa6xP5/4d5EkymX20EoVuYJiFs=;
        b=Wbpc3VKMFfLIZIavObXLJDbaIJWRnF0zR7qUdDQnycKsXnbke34liFcp/qrh8w0bMO
         4ygF9nR0YUN469TDz+X7YoD01cgMTm1/nhfkkQWyo8ksHFhTdk8LSlvGZ+G8mDh55nwz
         L9bJSPLKX9yce3VzjrmYyFHHitewUqrJ65hB9bD0+Qrqa6CdY9ZylgcJLSssRBuaB/La
         J1Be9luhM+1fcMFMFPq0Y3VtkHCgvXFE3nE/PGQWRicGPuCSqTRwe4nwPeksbcv9VVwE
         kh/lD7WCUwMGVAe7U2JHJGXGqEfkwQSB8xUjn0iqg9LQVPG9w6g71ddQUky3CDQlIQYG
         YYUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yV/cIg83LOvC/QUp1A1ewM+hmB1PvASSHzv6w73QnFtBUHlqn
	PfN86bt9/1syxi7dpbH25/Y=
X-Google-Smtp-Source: ABdhPJyqYdkG9uF1O3Jvi2yS71eNK1bN6zXTPXrg0y//P5DkLHnlJA8lx9UCDsmdEUx6u/bX0EGV9w==
X-Received: by 2002:a05:6830:1617:: with SMTP id g23mr26804607otr.282.1595361285640;
        Tue, 21 Jul 2020 12:54:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4d:: with SMTP id e13ls4166931otj.5.gmail; Tue,
 21 Jul 2020 12:54:45 -0700 (PDT)
X-Received: by 2002:a9d:73c9:: with SMTP id m9mr26390379otk.94.1595361285238;
        Tue, 21 Jul 2020 12:54:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595361285; cv=none;
        d=google.com; s=arc-20160816;
        b=MUrAar+JUMalVBDBPtW7P2nZTH+O8s6ptldkyf2ZqKfQVHs+e8X/a1GtxbXvwjjg34
         qxs0J8/rhEccx3R0tc7eK/PHEf05yNtPVUhVPmRUhlHofgWyE0LFf3Ybn229ZE+QvTWN
         EIJhVS43VU3aBZXgBDD5tSCpw+Sc0g0qk3xinagiHaZTv1jBJQ8tFrquJmjlKY0uNLGt
         SKQyS6SU6dTe48umbCaBvAVN3Bi//+kjsBGUyeU6uOF4sOGe4dyIZikBgi79kZ2A798x
         ajKrRBejWe5fk6hkcFvklCE6S4myWxb2zwBPJlFd+UNPDMNQJjZRKKkuKEbcF5IAT0yz
         M+mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iseUsb4cwqFRjmEUZSESf/WmYPRnoCDuuKRyDEs9PoA=;
        b=zgBSxyw72PGAfOuzfgbiXAeKZcN9wcmr0Zxy04bB0EIkSLQEtzwJiMC+inbrn/vYcd
         YxtE1/J9zxlwPH6eV2kxera6N0JKY8iq9zbq42BVXGVZUyoKCFR/D7kd7zkO/A9+OQWl
         m5Iikmhdqlp//hArnFAS38JWMcsC+qX7V0c3XMwTtEjZbnLrRmlTvnBrihlpyqyO/jru
         Jo0UwAielrpNpQq0mjl7kwHVVIrW5UpQs+7yYseS6zwBF9EPbz0546HWdpLAvQxfj2tn
         9LHCzODR+Py4Juu+vrc3xT4pPFsiPFaKZqPETS++Udwrf7yc3u7SUv+3K6cbJLqzMz7q
         d0Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SenRoNEM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id i189si1177561oib.0.2020.07.21.12.54.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 12:54:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id o3so17455198ilo.12
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 12:54:45 -0700 (PDT)
X-Received: by 2002:a92:d843:: with SMTP id h3mr31183810ilq.255.1595361284863;
 Tue, 21 Jul 2020 12:54:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200721041940.4029552-1-maskray@google.com>
In-Reply-To: <20200721041940.4029552-1-maskray@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 21 Jul 2020 21:54:33 +0200
Message-ID: <CA+icZUU1npgQEp9-CK67ZnUQHapW9Q1xtsh2Sqtkup08MaKCyQ@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross compilation
To: Fangrui Song <maskray@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, stable@vger.kernel.org, 
	Jian Cai <jiancai@google.com>, Bill Wendling <morbo@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SenRoNEM;       spf=pass
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

On Tue, Jul 21, 2020 at 6:20 AM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
> $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
> GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
> /usr/bin/ and Clang as of 11 will search for both
> $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
>
> GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
> $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
> $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
>
> To better model how GCC's -B/--prefix takes in effect in practice, newer
> Clang (since
> https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90)
> only searches for $(prefix)$needle. Currently it will find /usr/bin/as
> instead of /usr/bin/aarch64-linux-gnu-as.
>
> Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
> (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
> appropriate cross compiling GNU as (when -no-integrated-as is in
> effect).
>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1099
> ---
> Changes in v2:
> * Updated description to add tags and the llvm-project commit link.
> * Fixed a typo.

Tested-by: Sedat Dilek <sedat.dilek@gmail,com>

- Sedat -

> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index 0b5f8538bde5..3ac83e375b61 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
>  ifneq ($(CROSS_COMPILE),)
>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> -CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)
> +CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
>  GCC_TOOLCHAIN  := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
>  endif
>  ifneq ($(GCC_TOOLCHAIN),)
> --
> 2.28.0.rc0.105.gf9edc3c819-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200721041940.4029552-1-maskray%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU1npgQEp9-CK67ZnUQHapW9Q1xtsh2Sqtkup08MaKCyQ%40mail.gmail.com.
