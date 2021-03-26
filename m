Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKOK6SBAMGQE7N7TGII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A8B349D2D
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 01:04:58 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id g12sf2131795uan.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 17:04:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616717097; cv=pass;
        d=google.com; s=arc-20160816;
        b=rtnxrIxnUYjXrbG/ahZQXFUE8X/I553mxz+aXy2H525n/iWdt+FaC5hQFqiYXgPby9
         Ya2Pv9TlEjhNUxBvFSLI4x5AYulTWgs+oFVmWoRdYBOmGUfPZG5C2FQK5S4nPbMzugyO
         1kF41/XB3yCsc9iSgREJhUCFGZuMU68sQXsAjUNWabdYWop5T7A3qaiQ4WO1l9yGyoC9
         cYmwBIy6beAW3YH8/xo/DSliUx2gpi8u7q4DIefoe6LAor8x/tVv2ki0SGyy+IGfBhaV
         38zj73UDFIKazWXOjA4jDFNkqPH9hSuxDzJ+48rQDYN+8PKoVFiNGitqL0LBcnHXCcU5
         A8Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=c9W4sAfJGe7VuAW3Aryvt9MxBrp5Z638Z1IwVX5k6VI=;
        b=sqBovihIikgrLQmbPdyPsS3yPd5W7UfSwLJ1QEn2eJbzX/Rrdk4mT8bHXCRufbz2n0
         U4kAIPy1THiah1t4+RHr9fXtO+49wjmXHu8eAfbievhkBTKj2mpMkXfn1GPfaj07ffWw
         pEA1bRJM507qtdBqHvLa3PWKGo4cAsZO7Saoh3fqBdajJK+egcNMnlgfCzg52/zwQSKS
         2AzLoU2Zs6NmvJ+PFEzM+RF7xA/HWAKZEcqOxTAPAp9Lo1PZVBbIiTFP02Twug1kbhiA
         L1SqareHznHvXOU3suo2ypZZcy8SSoo5m1L/bRPZyJ6zUs5rw2yqGHx04K63oKXk3UZ+
         pQuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Dd5XrAQB;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c9W4sAfJGe7VuAW3Aryvt9MxBrp5Z638Z1IwVX5k6VI=;
        b=NqJK511rUBQiSXGs7Yaof8MCenGjvcwfxIpPDLygNmYQFX56OGJD/MXYzJ3gghPB4L
         Xmbd0oaUIYmyr+eUCm/mEg7LthVEWD5n2zs82m1Q4yxmhd5vJlMh5lvowM8L0RvOEoUW
         Tu/pTHqxK3ROOqYkDrJu7Jp8Md+cj7ErF9Eq1M8GbuYEvZ2qaUnxsqcApD1nnz7ZqYgk
         Rd1tPVOuImKxClAEKdlxac+Ff3DIuA1inQm3bAlQd1joKphCJGHVc19En78VRFURCmsF
         1+ePZPuyIqfKmBqzsASTlOapuHUEh30+JY1RE7X410mXCp6+zPYJPXJdo75k7CikIrVz
         bubg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c9W4sAfJGe7VuAW3Aryvt9MxBrp5Z638Z1IwVX5k6VI=;
        b=cZejAQQDeFEpLj5Ihx5V5uovnhUliqYmUyrC8bREOWXUz9E0CTrKarFoNqeSyG7PUm
         fMvATBD4XM5JTSIpSJvnrzi3jE0jj6v8LiflpBIkY1MLaxWsgazdeIZI5eH2KHCFAqRL
         E5OB/zBTxZ55j3bb7OI+xVEbeIq6uADSNv92j1IgugikAtpl+HGg3O4qJfm/2zR4DJPC
         rVEbmy4ba1fwnoy/TYk9XomzCy7Uw8UxZFT+HHEHcH4U7mk+LFKdSvRrBtMSxE7FDmwC
         Nruumi0pENaB1BFnX6Yc+r57cgbwEvoBOEyPv/wy45ikkasuUFxPzWgqvxYQ9TIB3DEo
         8Jvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325MmETNVVcVbr3KTg2Y7DNH6CyCCqV/ZqUnRWnHvKsHTXYU33y
	pd5/ZjXEdlggv+5CFEbSq7c=
X-Google-Smtp-Source: ABdhPJzsZEk6nXKSBzg4/w5gJZuM0veFeKDDvdZs7ix/HeRWXnGSam4CUgs3Nk/ts4LdHdFoFs0Zdw==
X-Received: by 2002:a67:f804:: with SMTP id l4mr7394523vso.35.1616717097645;
        Thu, 25 Mar 2021 17:04:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:150a:: with SMTP id o10ls566689uae.2.gmail; Thu, 25 Mar
 2021 17:04:57 -0700 (PDT)
X-Received: by 2002:a9f:2449:: with SMTP id 67mr6639157uaq.135.1616717096999;
        Thu, 25 Mar 2021 17:04:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616717096; cv=none;
        d=google.com; s=arc-20160816;
        b=QkkXN+z2KPhtIa72w4j6gEUUpHDDrj0IUr50OYHVDEex/ORYG8jox94Jxf42bwCZPD
         n2GdT3Lo6oKb0vP6TvrDu1KtkGW5YSg0vWuP4xPrc2pytdak/Ob2VFqhCm6jKk+2Q6w2
         vPENvA3oT44us+C9wPHH3bM/SjJJy7Ejt6CXDFqwaf67XAKxJmMBbVoaTvkRP+os2iOq
         RyxR9blPUE4k5Pe63O2u4YmeRHASw1YBKUFQYnRD/9xHCMw81QINC8fz6h1Bikw70YA6
         CfedFndje681zEmY21RF30a8uEAqtURDcNvdVbgeQDdvdVZf2AySTm2wO2xbZJ9xXfFP
         z7Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=MuFnCssgTS1wn2iXBZU0bnc+8Wz2A+cROyV2I/FIBAI=;
        b=C3SyWpa5Qo1D5SlmJn33yW3RslJehCxICvttC9x1KClFmSB2Tf5CLWVewGY5QvIkpq
         soPpdA/pIigu1cnv+L7dW16bmYWRYYy0MLSS5OZFJjl0l7jXeXYSWoy+ct+9H6sKd8H2
         MkKXDTfb3u3oLmvmuGYiPZGgu8leKSL3Z9BLWrJ/WlMDWnTW9s8LmvyWdyJqpskmT0WN
         h8A68fmoY6MBjtnGcC5CnWj4mcterlnOqAyw+avp+TuaobvEWL9DhS8UWOxeRRKspbfT
         SPkXnXbjy2qrbd7NrFLTzf81WqVfnasjfaP/jwDqz8GDLQa9ricg9sZ09u9WBp/RWrLR
         4vBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Dd5XrAQB;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w26si421533vse.2.2021.03.25.17.04.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 17:04:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E536761A0A;
	Fri, 26 Mar 2021 00:04:53 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-efi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 0/3] Fix cross compiling x86 with clang
Date: Thu, 25 Mar 2021 17:04:32 -0700
Message-Id: <20210326000435.4785-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Dd5XrAQB;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi all,

This series fixes cross compiling x86 with clang, which was initially
brought up by John here:

https://lore.kernel.org/r/cceb074c-861c-d716-5e19-834a8492f245@gmail.com/

I have picked up that patch and added the same fix in a couple of other
places where it is needed.

I have tested this on an ARM based server with both defconfig and
allmodconfig, where the build now passes.

Please let me know if there are any problems.

Cheers,
Nathan

John Millikin (1):
  x86: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)

Nathan Chancellor (2):
  x86/boot: Add $(CLANG_FLAGS) to compressed KBUILD_CFLAGS
  efi/libstub: Add $(CLANG_FLAGS) to x86 flags

 arch/x86/Makefile                     | 1 +
 arch/x86/boot/compressed/Makefile     | 1 +
 drivers/firmware/efi/libstub/Makefile | 3 ++-
 3 files changed, 4 insertions(+), 1 deletion(-)


base-commit: 0d02ec6b3136c73c09e7859f0d0e4e2c4c07b49b
-- 
2.31.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210326000435.4785-1-nathan%40kernel.org.
