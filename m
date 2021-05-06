Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHPQZSCAMGQEYZ5RJRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D953374C54
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 02:28:15 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id u3-20020a4ad0c30000b02901fef88716cfsf2013413oor.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 17:28:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620260893; cv=pass;
        d=google.com; s=arc-20160816;
        b=AgsfxU0HSL6m4ocbzFKDqscCjfxUTyeKnxyq4ga8YdyhWBhPiyD9rPZSxGZ7Lt+Gmw
         RARkqY/uzFhGaG6UKPvlM7yz4613xmvxp3sA6H7suXTSp0tGyWI9hc9Y4DJvLYxahGkT
         v3f+C9dMLnxwtNRK6SBP4TTkcUzE7lvXQg/c+yKHDrxWiZabZ8JIAQ30OGiyFBa/+JAI
         5ypAJ+B/YXVdXzGbIXwUFgywXhM5oz46hDWIX3XR0XFPMpYi0iXScLrFUUYWQ04Vbba9
         68vrSqA3UmLtlp8Avv9p9gOvrpXkHMcmiHfME10htFphq6FWaL5AsSy4kRXG4lutVVjK
         tgFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=6LcJf7nYlPMqt+uSwSscsOiZwmBwr7E7zDFw6A9Hba8=;
        b=qGb3xzQmeZDfU7ehzHw0mLSDCU6ZCsq2A2tcT7OOu3KACKOQSUeDPmjCozPnj1/IJI
         izwXO3SGz5HkFQFtWN/AbecgxasJuyf1Df3O+QbPvlLX6Cp54ry5ImvfRCk/Jt1jy4LC
         ya421igG2keY7aPS0UZEVSGC24idq3521YyUyMoTTN7zpAEfOUszfLoq5RHr7DQDazb5
         MNC1lXqbsifF3KfP2/90zYEEDET7neKplS9l5Wzn9RaAj5y10BSPfFhMVix4Qlq6ET+w
         XklUGQaL8fJLpODCANIZW0gpiVC5KKtLzUoGYCQgKew8QfmNJt0sFG9mDylQoWpC6/N/
         JCqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aXMzLTxa;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6LcJf7nYlPMqt+uSwSscsOiZwmBwr7E7zDFw6A9Hba8=;
        b=Z6MydQ79O+XtVa75naESypCJq0NHv8+iUAAuGODIo9E5JXMbv/xF6FQQpYKc9xbFJn
         hi/T12xZfCvArb3V9QrAuv02+lJ8NHypIl/IVhbOfdvvNTftrvCU8l37mUxZHhkvOV92
         JPXMA6fW01v8YfrRkji7YO/LI19KwBz+Q0SXOuMO+OD4djKwGvPBzXSDCLMYJWHA2f8k
         w2KAFHyQ8aCsWvkwHff7MJqJW6W7GtThub90y/UM1UfPsbfrENW63lfX1cUz5Tv3fyDX
         4R/KXad0Bwv2k2EiC/S3l9OXp3PAPilA9xTlimWnn4Xb+zCgtw9YMGqICutzzNB1ZBUn
         wC6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6LcJf7nYlPMqt+uSwSscsOiZwmBwr7E7zDFw6A9Hba8=;
        b=o58NoFmtANmXr37zfikKbaKsfLGZ3g6I851LB1NHtLPqL1AKvhpt6RA0BunqoIn9BF
         k8sI5J2zj65TiQwJb38NP0R+J/tPHTO95DF6Cu6yVS07FYqL6IKMep7LGw59WkAmaO3m
         PP9ZMQhDDEjtZgoNdpSEj1quIuQTSMc7ObMiOjGRBL8LKBUBoNgz61JkSbmZeisqLKa2
         seRiQVfpL3DjKkdFNIdvohZIXpb0EN1+ukoG6Oc6OOGJasYI4wUL2jBDQlCNzxWFgwTs
         OD3UtYeBxv5Rpx61OBkp+aQFiTaK6y2iBll+2F21iklPLc6e477h8+q9NRrYYhCOG0Cz
         nfBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KPfOsDzngJiihPXP3GwR2NzecqokQ8bEnWTNyaGuMQiFnPsVK
	0KvlptPmvxml99Rhx1sh798=
X-Google-Smtp-Source: ABdhPJxYZaj3LunZ34bkzYCmpiEzDVXf31W6d4wRU1Nap9p1UF97aixmCj1xaTknLf4d981n+TBJ9g==
X-Received: by 2002:a05:6830:a:: with SMTP id c10mr1114216otp.21.1620260893801;
        Wed, 05 May 2021 17:28:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:10ce:: with SMTP id s14ls225111ois.0.gmail; Wed, 05
 May 2021 17:28:13 -0700 (PDT)
X-Received: by 2002:aca:3389:: with SMTP id z131mr8773909oiz.11.1620260893440;
        Wed, 05 May 2021 17:28:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620260893; cv=none;
        d=google.com; s=arc-20160816;
        b=qZ57pG0xZ5NlzKzstu/dGAV62ANMrpOoHO4RP2XR1WL0ddUlDhPWweU/yfv/nO1VSl
         F3sJ9BmiUX9rhm7js9Vx4mHxTbeXdCzW3MVA0jWdx6vjbP8xIeFHFCSlQC8N9a+WSL2H
         8ReI99TLIIT0LZWE58PReuAhto5VaPDDpGgXZ0mfNgW9u1vdOWRdwI5JEQe1GvMo2by0
         7hgQa9bAhdnj254WWac35Zs57txhePCSU3pRaTlaUo86HNKsuxROdzDgpYY4T/PlvJtu
         EfqF1SfWs7fWJOYVhQ7n+j83xjhuVG+fayrHNmXFOQumY4pewUSExTR/GbtnVsDbaQ/h
         UXrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=z5X/D0ZCyEkvyvvhijQ+LTzj54MPMU+jM4ZiHPT1m3M=;
        b=woFkkS4lrdslmsouhdWnPEo5+o7ZQhapzQd1S+Gjfo29yonVFEsYu1w5DgWbgftzsz
         qsCR4DTgBbGCS4nQTznmg0dTAOCztM4187UrZch88O9jw4RKOxB0G3bvHvmg+39P/C2N
         fGVqIGW4+lYilY/oC9FlDbXSP/nfW5hAyDnuJZhv3tJDNtQMLESVYaCTjsp1Fqfpc7EG
         a0EE3pmUUr/TOS4sZBNTGSADJd1ljUseG8rQHh9z1uAXfd1SBl+/LIVucU4BGX7bHAy8
         flp+EfBtJACwjCsbjqwWoZBD5pOirrxn2tDHr37K+FzZsHfFy52I6G8roQUPkwbqgKFF
         6lFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aXMzLTxa;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l24si97083otd.5.2021.05.05.17.28.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 17:28:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 81A7E61090;
	Thu,  6 May 2021 00:28:10 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] vmlinux.lds.h: Handle decrypted data section with !SMP
Date: Wed,  5 May 2021 17:14:11 -0700
Message-Id: <20210506001410.1026691-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.1.442.g7e39198978
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aXMzLTxa;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

With x86_64_defconfig and the following configs, there is an orphan
section warning:

CONFIG_SMP=n
CONFIG_AMD_MEM_ENCRYPT=y
CONFIG_HYPERVISOR_GUEST=y
CONFIG_KVM=y
CONFIG_PARAVIRT=y

ld: warning: orphan section `.data..decrypted' from `arch/x86/kernel/cpu/vmware.o' being placed in section `.data..decrypted'
ld: warning: orphan section `.data..decrypted' from `arch/x86/kernel/kvm.o' being placed in section `.data..decrypted'

These sections are created with DEFINE_PER_CPU_DECRYPTED, which
ultimately turns into __PCPU_ATTRS, which in turn has a section
attribute with a value of PER_CPU_BASE_SECTION + the section name. When
CONFIG_SMP is not set, the base section is .data and that is not
currently handled in any linker script.

Add .data..decrypted to PERCPU_DECRYPTED_SECTION, which is included in
PERCPU_INPUT -> PERCPU_SECTION, which is include in the x86 linker
script when either CONFIG_X86_64 or CONFIG_SMP is unset, taking care of
the warning.

Fixes: ac26963a1175 ("percpu: Introduce DEFINE_PER_CPU_DECRYPTED")
Link: https://github.com/ClangBuiltLinux/linux/issues/1360
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

I took the simple fix route with this patch since I highly doubt someone
is actually running a CONFIG_AMD_MEM_ENCRYPT=y + CONFIG_SMP=n kernel. If
this section should actually be in .data, I can respin.

 include/asm-generic/vmlinux.lds.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 40a9c101565e..17325416e2de 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -960,6 +960,7 @@
 #ifdef CONFIG_AMD_MEM_ENCRYPT
 #define PERCPU_DECRYPTED_SECTION					\
 	. = ALIGN(PAGE_SIZE);						\
+	*(.data..decrypted)						\
 	*(.data..percpu..decrypted)					\
 	. = ALIGN(PAGE_SIZE);
 #else

base-commit: 8404c9fbc84b741f66cff7d4934a25dd2c344452
-- 
2.31.1.442.g7e39198978

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210506001410.1026691-1-nathan%40kernel.org.
