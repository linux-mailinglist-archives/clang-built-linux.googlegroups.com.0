Return-Path: <clang-built-linux+bncBCS7XUWOUULBBUOQ7OCAMGQEOA3S5TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6903812AE
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 23:14:58 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id g13-20020ac8580d0000b02901e117526d0fsf548818qtg.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 14:14:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621026897; cv=pass;
        d=google.com; s=arc-20160816;
        b=PpQUZAsnUWJmDq0S8t+wYycFD9431y/56fv46wVOc8SEWjdT3uIVX7tyuKMOD/1VDY
         ShfH1vDVqlvV61UmZTmb0OFv3AwsNmJE+yN0sE1JvLrILdcWn4Ush7asQ3yYVTY1ZRTP
         oH3tEsLX7OGxZvqDd92H1V15Ti+Lar5VM4pWuxBRQz2k/7An8JnxcvvbIyJmJ27AdvvE
         no0liiCUQAoDf8ZUlE0oQwtnrV/dCvp3oBCFbxKzWRElJJteS3z52JfsHDkpeLW2RXFq
         mEF5KGYRvbU3DO+b150vMZQCKcpdSZjOBppMwYzKoPHi8uIMHZ4gWvEiV0UKo7s5an1l
         9yVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rc1hH8ThSqdQ5y0HQlP5qeW1JgV2TFRUbYa1C7S8lsE=;
        b=fnduWP27M53DGvZ+Jio9WtPqG6ltRNl9EmvlOc9FfGvziDitqE2bEzVtNsDBG5EUB0
         yH/e3On5KeUWwWzV2pwyoGts68YjoCgpXzT52BVainwr6Z19tNeQcNKfq9GPQdLMvrlc
         qPdbkF1EkkRBJAyXJTvVpHaGFbnx1MSyki7f6MGW5qq5kna8tTV2E0gNU2HGk7u9sYLl
         Y/eq2XjkVfBMrYA1nLLrx33UKF6fWNUJc8TUC8L02PN1lEWQE96/QKkUnkHm08xflrlv
         6PWA0dGCXqR/BwQHog1I42BEEHYBQu+qPlffYltuxaLpZeSLvvi384C8DlA4Ae/uCN9E
         4+6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dPcu/lNC";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rc1hH8ThSqdQ5y0HQlP5qeW1JgV2TFRUbYa1C7S8lsE=;
        b=b45R87NqV0DBhsw5gU4oyZuWrlOQREvMlsx55MYlKZaFkEDJwXfMdgtNK51iETLzeg
         27Le5qpnWIskG6Zur0GTLbyXoZWcjaGiifuq/3DtMRwJehZSQpvdDKDvr4BXmX5P5dY4
         hn1T1Am0Ytxe8jFR4bqbOV74IoMUTaZYrR/RLt0JYPwBeAuS1bx0Wlf5q2yxD+AFER+D
         Sw0Iv5maN89EKWpHcfp5acBQBkTymHOgq1ZOfXTAewAD+wrxPozZF0zjIKqSxwj+myYK
         F3DRrNCr73ov06LB1lOfBzOIXDucc61DSSZOA9Ol+LogI3iNnxAs5uRgF06/yn5Rw828
         ml9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rc1hH8ThSqdQ5y0HQlP5qeW1JgV2TFRUbYa1C7S8lsE=;
        b=MuzfKM4mMzId62F8SYtWGe9/HVxFVIfdLDpXoudj3hO471m4ROxl1D/H24En3YQBD4
         XqMkGm56/jT2yLs9hHJEguS8KzOs7foZe1Zhq3PDjidlD9dHt0GyYdLoDKhUlQG4mQ4q
         GN/5XXTWNXKNZRf6Nwn2EmrUqJARijTZuzUnpSbKCZFQ4IwX1G4rdV9wzXfq14iH0X5c
         +OGkCtUXMZcmyrsvjtKqOBtGRpmEMYup7pr4K2IFYKREzYzz5PZ330+R3+iAV7XKFt2G
         pz9ETigEmuqVByBiZcsZY/XBoSbGYOO/4Yuw26iAaIYfRnEBCvSZbYB2b+sBkDkOQUE+
         qkEQ==
X-Gm-Message-State: AOAM531zbtMIJKdGxtBhw/sJlwmq8OPEvk/QGTpqkA2WGYfGZJKUiHC1
	wwMthmjRYGJWB5t/ii7mgQc=
X-Google-Smtp-Source: ABdhPJzyQplSCC1wiuZRGoh8niTsCRb1Jtk5TQTqrIp/iN8iesVU1ivxrCexPzOk1rgLqUtng+uUiw==
X-Received: by 2002:ac8:7c4b:: with SMTP id o11mr19099779qtv.336.1621026897735;
        Fri, 14 May 2021 14:14:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7e8e:: with SMTP id w14ls5224945qtj.0.gmail; Fri, 14 May
 2021 14:14:57 -0700 (PDT)
X-Received: by 2002:ac8:5ac7:: with SMTP id d7mr23966729qtd.173.1621026897304;
        Fri, 14 May 2021 14:14:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621026897; cv=none;
        d=google.com; s=arc-20160816;
        b=0uI6DfKZKLuNI3aZ9IYRKI6Chge9u2eVmOj+YCe4l8NTkLB3syUH660fudhTETVjLK
         h3eqSq66nSGoiXZ+UqjvS/s+DxTbSkmsxNoRvRrDE/gFqtKe+U+l0XkZW+vncCLVvqkD
         R+abI57OBMBfynVrriBiCklUwGY+7EpT4yK+7S+UKVruKfx79G2ZQv3h3FZ7ZXZ6qivx
         qBDAvqyY9MGUJxcnavsQnmdn/WaG49RkWgHcqo7dzLTS7vVc+cO4dUyUiM6d5zxDO78g
         s5ZOV8l/kfSJcbvs0oaDwCwLYuXza2FWOZ8cITb6E/kqDckPOZr16RG494Ygub/0rtBm
         97xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Z5wGYWWQ2FAumURVk8pKY57C4qbb9PmQYfuNvhI8eZk=;
        b=h6xrCjwdbGUTIm3joR72pmF/my/CMfy1QfNcfZDLklchlNq3erOavByG+6vpU/NR07
         w6gWYjoX6iLXM4xFahNAWZxh3MBjGXWqOoVuClb3a2bq1lFNLd/a8Wqns0b+9Mj8mxB/
         xSZQvaAsBKnWitu7Ii/iqr+9JHWfVfDS5x3Wpywzv3fFHDdkaskt2MVxBpQcQSw+38xA
         H64/I3pHWT/HDyiW6XpIa2H4T0FVI9wxYNZ9Cu5r+ZOb7Fow5np+J1vfJ8oe+N0TIZH+
         zyE/eL09LeRNhPZ/FSmYqqA5rvVr6UdGtk0fIeY0ejqSCbnbpRSLXvI/kvXaUHufqEXB
         N72A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dPcu/lNC";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com. [2607:f8b0:4864:20::b29])
        by gmr-mx.google.com with ESMTPS id c64si695261qke.6.2021.05.14.14.14.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 14:14:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b29 as permitted sender) client-ip=2607:f8b0:4864:20::b29;
Received: by mail-yb1-xb29.google.com with SMTP id i4so791010ybe.2
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 14:14:57 -0700 (PDT)
X-Received: by 2002:a25:11c5:: with SMTP id 188mr63393652ybr.322.1621026896780;
 Fri, 14 May 2021 14:14:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210514205643.383422-1-raj.khem@gmail.com>
In-Reply-To: <20210514205643.383422-1-raj.khem@gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Fri, 14 May 2021 14:14:45 -0700
Message-ID: <CAFP8O3LH3_EdeCDhJ=tmcgcQdThrQTBvpav3cBWP5Tmqa2OkXA@mail.gmail.com>
Subject: Re: [PATCH] riscv: Use -mno-relax when using lld linker
To: Khem Raj <raj.khem@gmail.com>
Cc: linux-riscv@lists.infradead.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="dPcu/lNC";       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b29
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Fri, May 14, 2021 at 1:57 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> lld does not implement the RISCV relaxation optimizations like GNU ld
> therefore disable it when building with LLVM=3D1, Also pass it to
> assembler when using external GNU assembler ( LLVM_IAS !=3D 1 ), this
> ensures that relevant assembler option is also enabled along. if these
> options are not used then we see following relocations in objects
>
> 0000000000000000 R_RISCV_ALIGN     *ABS*+0x0000000000000002
>
> These are then rejected by lld
> ld.lld: error: capability.c:(.fixup+0x0): relocation R_RISCV_ALIGN requir=
es unimplemented linker relaxation; recompile with -mno-relax but the .o is=
 already compiled with -mno-relax

This means -mno-relax should emit .option norelax in the assembly.
I'll try fixing this in Clang 13.

> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/riscv/Makefile | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index 3eb9590a0775..519f133e0d53 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -38,6 +38,15 @@ else
>         KBUILD_LDFLAGS +=3D -melf32lriscv
>  endif
>
> +ifeq ($(LLVM),1)
> +       KBUILD_CFLAGS +=3D -mno-relax
> +       KBUILD_AFLAGS +=3D -mno-relax
> +ifneq ($(LLVM_IAS),1)
> +       KBUILD_CFLAGS +=3D -Wa,-mno-relax
> +       KBUILD_AFLAGS +=3D -Wa,-mno-relax
> +endif
> +endif
> +
>  # ISA string setting
>  riscv-march-$(CONFIG_ARCH_RV32I)       :=3D rv32ima
>  riscv-march-$(CONFIG_ARCH_RV64I)       :=3D rv64ima
> --
> 2.31.1
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/20210514205643.383422-1-raj.khem%40gmail.com.



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3LH3_EdeCDhJ%3DtmcgcQdThrQTBvpav3cBWP5Tmqa2OkXA%40m=
ail.gmail.com.
