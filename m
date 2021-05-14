Return-Path: <clang-built-linux+bncBCTYRTHE4EDRBK637OCAMGQEMEGCQHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AA3381335
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 23:37:49 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id w6-20020a0cdf860000b02901ec995d8822sf439631qvl.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 14:37:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621028268; cv=pass;
        d=google.com; s=arc-20160816;
        b=PrwitJLbPC8SgbAae/O+ipgJh+99p+s0XPhZiIF4OxcfrzH+hecHf9llebYo0LhEaA
         cpVM3hORj8wz04NeCI41i1jroHaQq79gvhcCJiY3plpdTyFcBhLRPrDClERaqsYSNPqJ
         fHFAJKDk6LW1rXJrVccfrKnz9niiEbj8q44tyoCxWFfZtYd5EIjCwOLDhAH98KHrhuXH
         vBscFv1ijjwNBexEDf6+Kg8bDGNE52iJIzBeHM424suIZ8WIkS7PMmSpWv0aauNJUS/e
         i0ag8vRAXciyDF1jYeU/0obG+TldXs3ubrp74YT96ZKg3zkbfUz0CRFS3TKjiIfhhAj2
         w/eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Z5YEFbYhvS1JKoZReNgiySBNnnubUa2pWpxIkHpCkjU=;
        b=yYLDSvx6dU5TabeBjqbkYvOU3qvAfIFoyaeTV/gMp8sHam3mfxtNQWRvlhJJJVE8VG
         sZGvNWeUkll/KhOgptFnKCrugcgJOTOnYddEDLkamQ0iwnOlhPhrDKVLvjSRPX7Mj4V3
         ObluA2bVEa/PqFq6Lrxo7nQAfEua04HKsGBEv5PgMVRmfU/tXey42GR5GAP8eit49Vf4
         aaY3JsE3mJAhQs618cwRAoIZs33xT2u5lELMuia0D1ow9U4xe4jd+zfOxZbSeQN/eoX3
         ZMwJ0vufkJRl4H8nlVqHNOpA0ZwdYG0oFqmCnNKfpDNF8KKz2vybhMKugTm0Jk5G7g2j
         71KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bXVe6XNv;
       spf=pass (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=raj.khem@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z5YEFbYhvS1JKoZReNgiySBNnnubUa2pWpxIkHpCkjU=;
        b=tXCVrCOAZogVwq+X+wnFyxVjqdJAzLZR7aGMAqFZEBMzwxSxquA2EBqz8H173vVmjS
         ExbpAAOTFRc4mSXe8W/L6Fvk81c7U4fsz7XCaCvcnzfZYujvaFUWKPo7/ibq400Ax2m9
         1X0LwzD++/r8HKcsv1/+lZo4PnrHLUk83mXfhfAgclMWQuu6ixmbqOLgRB1j987vmpzi
         pMsSpk5NLbwIirgmar6u0BpqK0FxDWvjAKWr/EWeU7wdpiwMbnYNZa6gBzhvqM08uKIn
         k+Xtnqs5+CV2rNeyJTmEHFJ2sNQLkzi8UfzAh3ZUcdHryCa0y5wMwd78BmsKwxIcMPXk
         pQMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z5YEFbYhvS1JKoZReNgiySBNnnubUa2pWpxIkHpCkjU=;
        b=S68FzHcrpjFPJ6oDv6ey9YfMs6PixV5w5eQu9KcrC+ks8+hR8czNBZgoCzK6vjdTu2
         JySsqi0Q/IJmUqUOgF9HlZki4gguLRHUl/335S66/7k0PoF1T4bybo5lL4BCRcO2yKbY
         PX8p52ID30cXb6wPXwxVvaukyjIbB+N378fDlW21XBVuk319V2OyRaNUvap0r0PSfvAH
         rvPbWaZnMtB9Vof1P4ONCtc0zEkd7bavRvuVTDjvn9Tzg+N7T8qfoUEZWTne1LtB8x9z
         YJUHis1J+W4/LP4aLlj9qyMR3B+gz/LH7Nih8DwQ5KTd481/FOVOCKt1dz5LBVpFV+71
         3hsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z5YEFbYhvS1JKoZReNgiySBNnnubUa2pWpxIkHpCkjU=;
        b=OAo9CX/Vm7EJGbNdOiFvBYqn1lDdNfrZvoD4WNDArIz/ku9dlc72OH4mGqwHuHi6Rc
         wm6pWY3m4e0H0+RJuPGNncovpLpVw6I4IRtlKbsedwHENv834Ozv2HtGHXWiWhhDLb/Y
         h7TgdcUO3nU0OkXr57tRgmwolKrquxI/03Ys4KW4JifuSSKNGzMYrt6+qFXcj+bh8EpX
         G5tJZCJrwb8DjUHQMmtrOLqtkba87c5YWx3ZqCzu848XL7J3vP609Y3PD0jmHZTqgx+f
         90pPpJFC77NHXQs6x5g1PY+gsAFLndf4nAdbITnOg6LZeMS7abKbq6F3mW1wDQVB5K3k
         OMtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WzA5rQRuHg7choGh/+d5YcVNA7sWagmQuBCecK54VT9E/ygwO
	ekaJsrWMZ2k667xq6IImPmc=
X-Google-Smtp-Source: ABdhPJwaoY3TwEaSbhidG202g2weB7YrBgB9snVJFujG4yD3jKzalJhIwbr/BR88hxBGm916+SOeWQ==
X-Received: by 2002:a37:7685:: with SMTP id r127mr44549680qkc.359.1621028267967;
        Fri, 14 May 2021 14:37:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9806:: with SMTP id a6ls6727054qke.9.gmail; Fri, 14 May
 2021 14:37:47 -0700 (PDT)
X-Received: by 2002:a05:620a:408f:: with SMTP id f15mr24823808qko.398.1621028267533;
        Fri, 14 May 2021 14:37:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621028267; cv=none;
        d=google.com; s=arc-20160816;
        b=w21WTi9X0v+mSYMwzzBlL/YzjjEEtyFG/t/0C7sEUdiUom+PKD+8M1qb+petbpDGE5
         zVyxxHp53byv+Fzl+1x+VOdMw5F/QCDg/f263/tErSblJsBtZ5Le5wUTpdBLGlYnDxz+
         f0E7E88PdhJkx2GwKXZz3gOL33V5EepMtJFm45B5rnYUFEV0A37pbGgtJpuPsCqrG/6q
         xVKMcQqxTCELh1z81oZBTfM0Xgpe6GK/l/iPeowlLR+kmIWGUxnSnflUALFHAW9kV4AV
         NcGQBKVlE6KSUEkU6m70yPEqPJRrH5PinFhz6X3LJ9qVRLKSNlCzC3xQsYzFflReb4Xx
         UrpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=v2dT72KZKNqP8FFr0B3YUB03zzy0OGJuHBgaLd96n8k=;
        b=lws/p1G3nB/vYQ1TfXM6VOSzUuz8x5BYtc+qjP6FBpSqG83BdN9WZ3fXHufn791gLS
         BCcjPfSeKbs6IC+BuPPgrMt5b8y4v6z0UxoseFMk8xJt4+DLmo9m01/ym8JpnFFVJdgT
         rGR7JrqFpxcGdkVQmJbsv2eMShsQ26+Yub/r7RjKWX5hcdf1dleVsw5SNc3mC3T0nD4t
         ycfk7jfvFTQXqbpxr3L9f4I09JTVLPXMd++FABdNMFazyOcwW/YCtbup0N40hIy8CFR3
         J6aZdgrqbfU/EGbNtbdZkGAm7xAcdiYWlJPx4B4kv/3TegfzzmPZyC2wpNP0bLSpGC0V
         2iLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bXVe6XNv;
       spf=pass (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=raj.khem@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id d207si528860qkg.5.2021.05.14.14.37.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 14:37:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id o17-20020a17090a9f91b029015cef5b3c50so2319745pjp.4
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 14:37:47 -0700 (PDT)
X-Received: by 2002:a17:90a:886:: with SMTP id v6mr55904894pjc.174.1621028266675;
        Fri, 14 May 2021 14:37:46 -0700 (PDT)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::a7ac])
        by smtp.gmail.com with ESMTPSA id y199sm4590523pfc.191.2021.05.14.14.37.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 14:37:46 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Cc: Khem Raj <raj.khem@gmail.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2] riscv: Use -mno-relax when using lld linker
Date: Fri, 14 May 2021 14:37:41 -0700
Message-Id: <20210514213741.447088-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: raj.khem@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bXVe6XNv;       spf=pass
 (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::102c
 as permitted sender) smtp.mailfrom=raj.khem@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

lld does not implement the RISCV relaxation optimizations like GNU ld
therefore disable it when building with lld, Also pass it to
assembler when using external GNU assembler ( LLVM_IAS != 1 ), this
ensures that relevant assembler option is also enabled along. if these
options are not used then we see following relocations in objects

0000000000000000 R_RISCV_ALIGN     *ABS*+0x0000000000000002

These are then rejected by lld
ld.lld: error: capability.c:(.fixup+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax but the .o is already compiled with -mno-relax

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
---
v2: Use CONFIG_LD_IS_LLD instead of LLVM check

 arch/riscv/Makefile | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 3eb9590a0775..4be020695428 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -38,6 +38,15 @@ else
 	KBUILD_LDFLAGS += -melf32lriscv
 endif
 
+ifeq ($(CONFIG_LD_IS_LLD),y)
+	KBUILD_CFLAGS += -mno-relax
+	KBUILD_AFLAGS += -mno-relax
+ifneq ($(LLVM_IAS),1)
+	KBUILD_CFLAGS += -Wa,-mno-relax
+	KBUILD_AFLAGS += -Wa,-mno-relax
+endif
+endif
+
 # ISA string setting
 riscv-march-$(CONFIG_ARCH_RV32I)	:= rv32ima
 riscv-march-$(CONFIG_ARCH_RV64I)	:= rv64ima
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514213741.447088-1-raj.khem%40gmail.com.
